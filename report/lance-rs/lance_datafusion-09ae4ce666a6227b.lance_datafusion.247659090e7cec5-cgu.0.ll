Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datafusion-09ae4ce666a6227b.lance_datafusion.247659090e7cec5-cgu.0?download=true
inline.NumInlined: 35549
inline.NumDeleted: 12223
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion4execNtB5_11OneShotExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan7execute:bb.a
  unreachable

.body.i:                                          ; preds = %bb.h, %bb.g
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEEEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #73
          to label %.body unwind label %bb.o, !noalias !98074

bb.j:                                             ; preds = %_RNvXs0_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB5_11PoisonErrorINtNtB5_5mutex10MutexGuardINtNtCscI6d9CVNmLh_4core6option6OptionINtNtB1r_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB1r_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB1r_6marker4SendEL_EEEEENtNtB1r_3fmt7Display3fmtCsc85D0lJ81Z_16lance_datafusion.exit.i.i
  %.sroa.4.8.copyload = load ptr, ptr %i.c, align 8
  %.sroa.6.8.copyload = load i8, ptr %.sroa.42.0..sroa_idx.i.i, align 8
  %.sroa.763.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.763, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.763.8..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !98075
  br i1 %i.t, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !98078
  %i.ab = and i64 %i.aa, 9223372036854775807
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.l, !prof !332

bb.l:                                             ; preds = %bb.k
  %i.ad = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc49 unwind label %.thread, !noalias !98078

.noexc49:                                         ; preds = %bb.l
  br i1 %i.ad, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc49
  store atomic i8 1, ptr %i.r monotonic, align 4, !noalias !98078
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.m, %.noexc49, %bb.k, %bb.j
  %i.ae = atomicrmw xchg ptr %i.f, i32 0 release, align 4, !noalias !98078
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %bb.n, label %bb.ad, !prof !327

bb.n:                                             ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %i.f)
          to label %bb.ad unwind label %.thread, !noalias !98078

bb.o:                                             ; preds = %.body.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !98074
  unreachable

bb.p:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noundef !326 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8            ; 4 uses
  store ptr null, ptr %i.ah, align 8
  %i.al = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.al, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.an = and i64 %i.am, 9223372036854775807
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.r, !prof !332

bb.r:                                             ; preds = %bb.q
  %i.ap = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc51 unwind label %bb.u

.noexc51:                                         ; preds = %bb.r
  br i1 %i.ap, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc51
  store atomic i8 1, ptr %i.r monotonic, align 4
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.s, %.noexc51, %bb.q, %bb.p
  %i.aq = atomicrmw xchg ptr %i.f, i32 0 release, align 4
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %bb.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEEEECsc85D0lJ81Z_16lance_datafusion.exit, !prof !327

bb.t:                                             ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEEEECsc85D0lJ81Z_16lance_datafusion.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not42 = icmp eq ptr %i.ai, null
  br i1 %.not42, label %.body, label %bb.ab

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEEEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.t
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEEEECsc85D0lJ81Z_16lance_datafusion.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ak, ptr %i.au, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.x

bb.w:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEEEECsc85D0lJ81Z_16lance_datafusion.exit
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !98079
  %i.av = tail call noundef dereferenceable_or_null(37) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 37, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !98079 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98081)
  %i.ax = load ptr, ptr %i.e, align 8, !alias.scope !98082, !nonnull !326, !noundef !326
  %i.ay = atomicrmw add ptr %i.ax, i64 -1 release, align 8, !noalias !98082
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit53.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit53

bb.y:                                             ; preds = %bb.w
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 37) #72
          to label %bb.aa unwind label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.l, %bb.n, %bb.y
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.av, ptr noundef nonnull align 1 dereferenceable(37) @1311, i64 37, i1 false)
  store i64 9, ptr %0, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 37, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 37, ptr %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  br label %bb.x

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit53.sink.split: ; preds = %bb.x, %bb.ad
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextE9drop_slowCs5E8EBwPtAkp_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit53

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit53: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit53.sink.split, %bb.ad, %bb.x
  ret void

bb.aa:                                            ; preds = %bb.y
  unreachable

bb.ab:                                            ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsc85D0lJ81Z_16lance_datafusion(ptr nonnull %i.ai, ptr nonnull %i.ak) #73
          to label %.body unwind label %bb.ac

bb.ac:                                            ; preds = %bb.d, %bb.ab
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.ad:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.633.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.763, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.763)
  store i64 9, ptr %0, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.8.copyload, ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.6.8.copyload, ptr %.sroa.532.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !98083)
  call void @llvm.experimental.noalias.scope.decl(metadata !98084)
  %i.bc = load ptr, ptr %i.e, align 8, !alias.scope !98085, !nonnull !326, !noundef !326
  %i.bd = atomicrmw add ptr %i.bc, i64 -1 release, align 8, !noalias !98085
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit53.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit53

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %.body, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion4execNtB5_11OneShotExecNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlan8children(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #38 !guid !98086 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider10udaf_names(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(2920) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !98125 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2368
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98126)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !98126, !nonnull !326, !noundef !326 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.e, align 16, !noalias !98127
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2392
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !98126, !noundef !326 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98128)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !98129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98129
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.l = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.b ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !98130
  %i.n = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -512 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.n to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %.sroa.6.0 = phi ptr [ %i.k, %bb.b ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  %.sroa.018.0.copyload.i = phi ptr [ %i.e, %bb.b ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %i.j, %bb.b ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [32 x i8], ptr %.sroa.018.0.copyload.i, i64 %i.u
  %i.w = add nsw i64 %i.g, -1                     ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -32
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x), !noalias !98131
  %.pr.i = load i64, ptr %i.b, align 8, !noalias !98129 ; 4 uses
  %.not.i = icmp eq i64 %.pr.i, -1
  br i1 %.not.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.e

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !98128
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !alias.scope !98128
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8, !alias.scope !98128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98129
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

bb.c:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = icmp eq i64 %.pr.i, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !98132
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.e:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !98129 ; 3 uses
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !98129
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.g, i64 4) ; 3 uses
  %i.ac = mul i64 %.sroa.0.0.i.i, 24              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.g, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.f, !prof !328

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !98133
  %i.ae = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ac, i64 noundef range(i64 1, 17) 8) #71, !noalias !98133 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.g ], [ 0, %bb.e ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ac) #72
          to label %.noexc.i unwind label %bb.c, !noalias !98129

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.ae, %bb.g ] ; 5 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.f ], [ %.sroa.0.0.i.i, %bb.g ] ; 2 uses
  %i.ag = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.ag)
  store i64 %.pr.i, ptr %.sroa.10.0.i.i, align 8, !noalias !98129
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !98129
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !98129
  store i64 %.sroa.4.0.i.i, ptr %i.c, align 8, !noalias !98129
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !98129
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !98129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98129
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98135)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98136
  %i.ah = icmp eq i64 %i.w, 0
  br i1 %i.ah, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.lr.ph.i.i.i
  %i.ai = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.ba, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ]
  %i.aj = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.bc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 4 uses
  %.lcssa26.i.i.i = phi ptr [ %.sroa.6.0, %.lr.ph.i.i.i ], [ %.lcssa25.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %i.ak = phi i16 [ %i.t, %.lr.ph.i.i.i ], [ %i.at, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.val1722.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i ], [ %i.aw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.lcssa152021.i.i.i = phi ptr [ %.sroa.018.0.copyload.i, %.lr.ph.i.i.i ], [ %.lcssa1519.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i
  %i.al = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa26.i.i.i, %bb.j ] ; 2 uses
  %i.am = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa152021.i.i.i, %bb.j ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.al, align 16, !noalias !98137
  %i.an = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -512 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.an to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.j
  %.lcssa25.i.i.i = phi ptr [ %.lcssa26.i.i.i, %bb.j ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa1519.i.i.i = phi ptr [ %.lcssa152021.i.i.i, %bb.j ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.ak, %bb.j ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.aq = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = and i16 %i.aq, %.lcssa.i.i.i.i.i.i.i
  %i.au = sub nsw i64 0, %i.as
  %i.av = getelementptr inbounds [32 x i8], ptr %.lcssa1519.i.i.i, i64 %i.au
  %i.aw = add i64 %.val1722.i.i.i, -1             ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -32
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %.noexc6.i unwind label %bb.o, !noalias !98138

.noexc6.i:                                        ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.pr.i.i.i = load i64, ptr %i.a, align 8, !noalias !98136 ; 4 uses
  %.not.i.i5.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not.i.i5.i, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.noexc6.i
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !98136 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !98136
  %i.ay = load i64, ptr %i.c, align 8, !range !333, !alias.scope !98139, !noalias !98129, !noundef !326
  %i.az = icmp eq i64 %i.aj, %i.ay
  br i1 %i.az, label %bb.n, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i, %bb.k
  %i.ba = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i ], [ %i.ai, %bb.k ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.aj ; 3 uses
  store i64 %.pr.i.i.i, ptr %i.bb, align 8, !noalias !98136
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !98136
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !98136
  %i.bc = add nuw nsw i64 %i.aj, 1                ; 2 uses
  store i64 %i.bc, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !98139, !noalias !98129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98136
  %i.bd = icmp eq i64 %i.aw, 0
  br i1 %i.bd, label %.loopexit.i, label %bb.j

bb.l:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.bf, label %.body.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %.pr.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !98140
  br label %.body.i

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.aj, i64 noundef %.val1722.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i unwind label %bb.l, !noalias !98141

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i: ; preds = %bb.n
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !98139, !noalias !98129
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

bb.o:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.m, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %i.be, %bb.m ], [ %i.be, %bb.l ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #73, !noalias !98129
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

.loopexit.i:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.noexc6.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !98142
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.body.i, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.aa, %bb.c ], [ %i.aa, %bb.d ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !98129
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider10udwf_names(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(2920) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !98181 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2416
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98182)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !98182, !nonnull !326, !noundef !326 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.e, align 16, !noalias !98183
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2440
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !98182, !noundef !326 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98184)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !98185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98185
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.l = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.b ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !98186
  %i.n = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -512 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.n to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %.sroa.6.0 = phi ptr [ %i.k, %bb.b ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  %.sroa.018.0.copyload.i = phi ptr [ %i.e, %bb.b ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %i.j, %bb.b ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [32 x i8], ptr %.sroa.018.0.copyload.i, i64 %i.u
  %i.w = add nsw i64 %i.g, -1                     ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -32
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x), !noalias !98187
  %.pr.i = load i64, ptr %i.b, align 8, !noalias !98185 ; 4 uses
  %.not.i = icmp eq i64 %.pr.i, -1
  br i1 %.not.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.e

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !98184
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !alias.scope !98184
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8, !alias.scope !98184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98185
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

bb.c:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = icmp eq i64 %.pr.i, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !98188
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.e:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !98185 ; 3 uses
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !98185
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.g, i64 4) ; 3 uses
  %i.ac = mul i64 %.sroa.0.0.i.i, 24              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.g, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.f, !prof !328

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !98189
  %i.ae = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ac, i64 noundef range(i64 1, 17) 8) #71, !noalias !98189 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.g ], [ 0, %bb.e ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ac) #72
          to label %.noexc.i unwind label %bb.c, !noalias !98185

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.ae, %bb.g ] ; 5 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.f ], [ %.sroa.0.0.i.i, %bb.g ] ; 2 uses
  %i.ag = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.ag)
  store i64 %.pr.i, ptr %.sroa.10.0.i.i, align 8, !noalias !98185
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !98185
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !98185
  store i64 %.sroa.4.0.i.i, ptr %i.c, align 8, !noalias !98185
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !98185
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !98185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98185
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98191)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98192
  %i.ah = icmp eq i64 %i.w, 0
  br i1 %i.ah, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.lr.ph.i.i.i
  %i.ai = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.ba, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ]
  %i.aj = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.bc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 4 uses
  %.lcssa26.i.i.i = phi ptr [ %.sroa.6.0, %.lr.ph.i.i.i ], [ %.lcssa25.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %i.ak = phi i16 [ %i.t, %.lr.ph.i.i.i ], [ %i.at, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.val1722.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i ], [ %i.aw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.lcssa152021.i.i.i = phi ptr [ %.sroa.018.0.copyload.i, %.lr.ph.i.i.i ], [ %.lcssa1519.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i
  %i.al = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa26.i.i.i, %bb.j ] ; 2 uses
  %i.am = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa152021.i.i.i, %bb.j ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.al, align 16, !noalias !98193
  %i.an = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -512 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.an to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.j
  %.lcssa25.i.i.i = phi ptr [ %.lcssa26.i.i.i, %bb.j ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa1519.i.i.i = phi ptr [ %.lcssa152021.i.i.i, %bb.j ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.ak, %bb.j ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.aq = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = and i16 %i.aq, %.lcssa.i.i.i.i.i.i.i
  %i.au = sub nsw i64 0, %i.as
  %i.av = getelementptr inbounds [32 x i8], ptr %.lcssa1519.i.i.i, i64 %i.au
  %i.aw = add i64 %.val1722.i.i.i, -1             ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -32
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %.noexc6.i unwind label %bb.o, !noalias !98194

.noexc6.i:                                        ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.pr.i.i.i = load i64, ptr %i.a, align 8, !noalias !98192 ; 4 uses
  %.not.i.i5.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not.i.i5.i, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.noexc6.i
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !98192 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !98192
  %i.ay = load i64, ptr %i.c, align 8, !range !333, !alias.scope !98195, !noalias !98185, !noundef !326
  %i.az = icmp eq i64 %i.aj, %i.ay
  br i1 %i.az, label %bb.n, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i, %bb.k
  %i.ba = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i ], [ %i.ai, %bb.k ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.aj ; 3 uses
  store i64 %.pr.i.i.i, ptr %i.bb, align 8, !noalias !98192
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !98192
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !98192
  %i.bc = add nuw nsw i64 %i.aj, 1                ; 2 uses
  store i64 %i.bc, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !98195, !noalias !98185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98192
  %i.bd = icmp eq i64 %i.aw, 0
  br i1 %i.bd, label %.loopexit.i, label %bb.j

bb.l:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.bf, label %.body.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %.pr.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !98196
  br label %.body.i

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.aj, i64 noundef %.val1722.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i unwind label %bb.l, !noalias !98197

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i: ; preds = %bb.n
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !98195, !noalias !98185
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

bb.o:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.m, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %i.be, %bb.m ], [ %i.be, %bb.l ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #73, !noalias !98185
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

.loopexit.i:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.noexc6.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !98198
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.body.i, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.aa, %bb.c ], [ %i.aa, %bb.d ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !98185
  ret void
}

; Function Attrs: nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define noundef ptr @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider15get_window_meta(ptr noalias noundef readonly align 8 captures(none) dereferenceable(2920) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #39 personality ptr @rust_eh_personality !guid !98215 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98216)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !98216, !noundef !326
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2448
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !98216, !noundef !326
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2456
  %.val5.i = load i64, ptr %i.f, align 8, !alias.scope !98216, !noundef !326
  %i.g = tail call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneReECsc85D0lJ81Z_16lance_datafusion(i64 %.val.i, i64 %.val5.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !98216 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98218)
  %i.h = lshr i64 %i.g, 57
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !98219, !noundef !326 ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8, !alias.scope !98219, !nonnull !326, !noundef !326 ; 2 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.d ]
  %.pn.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.ah, %bb.d ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.k    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !98220 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.n
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not33.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i
  %.sroa.06.0.i34.i.i = phi i16 [ %i.af, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.i, %i.s
  %i.u = and i64 %i.t, %i.k
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.v ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -16
  %.val4.i.i.i = load i64, ptr %i.x, align 8, !noalias !98221, !noundef !326
  %i.y = icmp eq i64 %2, %.val4.i.i.i
  br i1 %i.y, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, !prof !342

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %.lr.ph.i.i
  %i.z = getelementptr i8, ptr %i.w, i64 -24
  %.val3.i.i.i = load ptr, ptr %i.z, align 8, !noalias !98221, !nonnull !326, !noundef !326
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %1, ptr nonnull readonly %.val3.i.i.i, i64 %2), !alias.scope !98222, !noalias !98223
  %i.aa = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aa, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, !prof !343

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, %bb.c
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit.thread, !prof !327

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i, %.lr.ph.i.i
  %i.ae = add i16 %.sroa.06.0.i34.i.i, -1
  %i.af = and i16 %i.ae, %.sroa.06.0.i34.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ag = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ah = add i64 %.sroa.01.0.i.i.i, %i.ag
  br label %bb.c

_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !326, !noundef !326 ; 2 uses
  %i.ak = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %bb.e, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit.thread

_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit.thread: ; preds = %._crit_edge.i.i, %bb.a, %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit
  %.sroa.0.0 = phi ptr [ %i.aj, %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit ], [ null, %bb.a ], [ null, %._crit_edge.i.i ]
  ret ptr %.sroa.0.0

bb.e:                                             ; preds = %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udwf9WindowUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider16get_table_source(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !98226 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs_NtCs2bHstFFhpHt_17datafusion_common15table_referenceNtB4_14TableReferenceNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @1314, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit unwind label %bb.b, !noalias !98227

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(56) %2) #73
          to label %bb.d unwind label %bb.c

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 4, ptr %0, align 8
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(56) %2)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}
end_hunk_0
begin_hunk_1_@_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider17get_function_meta:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider17get_variable_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias nonnull readonly align 8 captures(none) %2, i64 range(i64 0, 384307168202282326) %3) unnamed_addr #38 !guid !98288 {
bb.a:
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define noundef ptr @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider18get_aggregate_meta(ptr noalias noundef readonly align 8 captures(none) dereferenceable(2920) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #39 personality ptr @rust_eh_personality !guid !98305 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98306)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2392
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !98306, !noundef !326
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2368
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2400
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !98306, !noundef !326
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %.val5.i = load i64, ptr %i.f, align 8, !alias.scope !98306, !noundef !326
  %i.g = tail call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneReECsc85D0lJ81Z_16lance_datafusion(i64 %.val.i, i64 %.val5.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !98306 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98308)
  %i.h = lshr i64 %i.g, 57
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2376
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !98309, !noundef !326 ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8, !alias.scope !98309, !nonnull !326, !noundef !326 ; 2 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.d ]
  %.pn.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.ah, %bb.d ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.k    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !98310 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.n
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not33.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i
  %.sroa.06.0.i34.i.i = phi i16 [ %i.af, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.i, %i.s
  %i.u = and i64 %i.t, %i.k
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.v ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -16
  %.val4.i.i.i = load i64, ptr %i.x, align 8, !noalias !98311, !noundef !326
  %i.y = icmp eq i64 %2, %.val4.i.i.i
  br i1 %i.y, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, !prof !342

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %.lr.ph.i.i
  %i.z = getelementptr i8, ptr %i.w, i64 -24
  %.val3.i.i.i = load ptr, ptr %i.z, align 8, !noalias !98311, !nonnull !326, !noundef !326
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %1, ptr nonnull readonly %.val3.i.i.i, i64 %2), !alias.scope !98312, !noalias !98313
  %i.aa = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aa, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, !prof !343

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, %bb.c
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit.thread, !prof !327

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i, %.lr.ph.i.i
  %i.ae = add i16 %.sroa.06.0.i34.i.i, -1
  %i.af = and i16 %i.ae, %.sroa.06.0.i34.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ag = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ah = add i64 %.sroa.01.0.i.i.i, %i.ag
  br label %bb.c

_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !326, !noundef !326 ; 2 uses
  %i.ak = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %bb.e, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit.thread

_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit.thread: ; preds = %._crit_edge.i.i, %bb.a, %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit
  %.sroa.0.0 = phi ptr [ %i.aj, %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit ], [ null, %bb.a ], [ null, %._crit_edge.i.i ]
  ret ptr %.sroa.0.0

bb.e:                                             ; preds = %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr4udaf12AggregateUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define noundef ptr @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider21get_higher_order_meta(ptr noalias noundef readonly align 8 captures(none) dereferenceable(2920) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #39 personality ptr @rust_eh_personality !guid !98330 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98331)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2344
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !98331, !noundef !326
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2352
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !98331, !noundef !326
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %.val5.i = load i64, ptr %i.f, align 8, !alias.scope !98331, !noundef !326
  %i.g = tail call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneReECsc85D0lJ81Z_16lance_datafusion(i64 %.val.i, i64 %.val5.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !98331 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98333)
  %i.h = lshr i64 %i.g, 57
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !98334, !noundef !326 ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8, !alias.scope !98334, !nonnull !326, !noundef !326 ; 2 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.d ]
  %.pn.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.ah, %bb.d ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.k    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !98335 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.n
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not33.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i
  %.sroa.06.0.i34.i.i = phi i16 [ %i.af, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.i, %i.s
  %i.u = and i64 %i.t, %i.k
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.v ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -16
  %.val4.i.i.i = load i64, ptr %i.x, align 8, !noalias !98336, !noundef !326
  %i.y = icmp eq i64 %2, %.val4.i.i.i
  br i1 %i.y, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, !prof !342

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %.lr.ph.i.i
  %i.z = getelementptr i8, ptr %i.w, i64 -24
  %.val3.i.i.i = load ptr, ptr %i.z, align 8, !noalias !98336, !nonnull !326, !noundef !326
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %1, ptr nonnull readonly %.val3.i.i.i, i64 %2), !alias.scope !98337, !noalias !98338
  %i.aa = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aa, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, !prof !343

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, %bb.c
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit.thread, !prof !327

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i, %.lr.ph.i.i
  %i.ae = add i16 %.sroa.06.0.i34.i.i, -1
  %i.af = and i16 %i.ae, %.sroa.06.0.i34.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ag = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ah = add i64 %.sroa.01.0.i.i.i, %i.ag
  br label %bb.c

_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBW_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0Csc85D0lJ81Z_16lance_datafusion.exit.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !326, !noundef !326 ; 2 uses
  %i.ak = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %bb.e, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit.thread

_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit.thread: ; preds = %._crit_edge.i.i, %bb.a, %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit
  %.sroa.0.0 = phi ptr [ %i.aj, %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit ], [ null, %bb.a ], [ null, %._crit_edge.i.i ]
  ret ptr %.sroa.0.0

bb.e:                                             ; preds = %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc85D0lJ81Z_16lance_datafusion.exit
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider27higher_order_function_names(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(2920) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !98377 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2320
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98378)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !98378, !nonnull !326, !noundef !326 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.e, align 16, !noalias !98379
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2344
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !98378, !noundef !326 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98380)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !98381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98381
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.l = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.b ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !98382
  %i.n = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -512 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.n to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %.sroa.6.0 = phi ptr [ %i.k, %bb.b ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  %.sroa.018.0.copyload.i = phi ptr [ %i.e, %bb.b ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %i.j, %bb.b ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [32 x i8], ptr %.sroa.018.0.copyload.i, i64 %i.u
  %i.w = add nsw i64 %i.g, -1                     ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -32
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x), !noalias !98383
  %.pr.i = load i64, ptr %i.b, align 8, !noalias !98381 ; 4 uses
  %.not.i = icmp eq i64 %.pr.i, -1
  br i1 %.not.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.e

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !98380
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !alias.scope !98380
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8, !alias.scope !98380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98381
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

bb.c:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = icmp eq i64 %.pr.i, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !98384
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.e:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !98381 ; 3 uses
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !98381
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.g, i64 4) ; 3 uses
  %i.ac = mul i64 %.sroa.0.0.i.i, 24              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.g, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.f, !prof !328

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !98385
  %i.ae = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ac, i64 noundef range(i64 1, 17) 8) #71, !noalias !98385 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.g ], [ 0, %bb.e ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ac) #72
          to label %.noexc.i unwind label %bb.c, !noalias !98381

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.ae, %bb.g ] ; 5 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.f ], [ %.sroa.0.0.i.i, %bb.g ] ; 2 uses
  %i.ag = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.ag)
  store i64 %.pr.i, ptr %.sroa.10.0.i.i, align 8, !noalias !98381
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !98381
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !98381
  store i64 %.sroa.4.0.i.i, ptr %i.c, align 8, !noalias !98381
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !98381
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !98381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98381
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98387)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98388
  %i.ah = icmp eq i64 %i.w, 0
  br i1 %i.ah, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.lr.ph.i.i.i
  %i.ai = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.ba, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ]
  %i.aj = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.bc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 4 uses
  %.lcssa26.i.i.i = phi ptr [ %.sroa.6.0, %.lr.ph.i.i.i ], [ %.lcssa25.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %i.ak = phi i16 [ %i.t, %.lr.ph.i.i.i ], [ %i.at, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.val1722.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i ], [ %i.aw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.lcssa152021.i.i.i = phi ptr [ %.sroa.018.0.copyload.i, %.lr.ph.i.i.i ], [ %.lcssa1519.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i
  %i.al = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa26.i.i.i, %bb.j ] ; 2 uses
  %i.am = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa152021.i.i.i, %bb.j ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.al, align 16, !noalias !98389
  %i.an = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -512 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.an to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.j
  %.lcssa25.i.i.i = phi ptr [ %.lcssa26.i.i.i, %bb.j ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa1519.i.i.i = phi ptr [ %.lcssa152021.i.i.i, %bb.j ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.ak, %bb.j ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.aq = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = and i16 %i.aq, %.lcssa.i.i.i.i.i.i.i
  %i.au = sub nsw i64 0, %i.as
  %i.av = getelementptr inbounds [32 x i8], ptr %.lcssa1519.i.i.i, i64 %i.au
  %i.aw = add i64 %.val1722.i.i.i, -1             ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -32
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %.noexc6.i unwind label %bb.o, !noalias !98390

.noexc6.i:                                        ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.pr.i.i.i = load i64, ptr %i.a, align 8, !noalias !98388 ; 4 uses
  %.not.i.i5.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not.i.i5.i, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.noexc6.i
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !98388 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !98388
  %i.ay = load i64, ptr %i.c, align 8, !range !333, !alias.scope !98391, !noalias !98381, !noundef !326
  %i.az = icmp eq i64 %i.aj, %i.ay
  br i1 %i.az, label %bb.n, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i, %bb.k
  %i.ba = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i ], [ %i.ai, %bb.k ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.aj ; 3 uses
  store i64 %.pr.i.i.i, ptr %i.bb, align 8, !noalias !98388
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !98388
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !98388
  %i.bc = add nuw nsw i64 %i.aj, 1                ; 2 uses
  store i64 %i.bc, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !98391, !noalias !98381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98388
  %i.bd = icmp eq i64 %i.aw, 0
  br i1 %i.bd, label %.loopexit.i, label %bb.j

bb.l:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.bf, label %.body.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %.pr.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !98392
  br label %.body.i

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.aj, i64 noundef %.val1722.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i unwind label %bb.l, !noalias !98393

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i: ; preds = %bb.n
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !98391, !noalias !98381
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

bb.o:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.m, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %i.be, %bb.m ], [ %i.be, %bb.l ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #73, !noalias !98381
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

.loopexit.i:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.noexc6.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !98394
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.body.i, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.aa, %bb.c ], [ %i.aa, %bb.d ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function14HigherOrderUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !98381
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider7options(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(2920) %0) unnamed_addr #7 !guid !98395 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_20LanceContextProviderNtNtCs1Jc0oVeks7E_15datafusion_expr7planner15ContextProvider9udf_names(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(2920) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !98434 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98435)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !98435, !nonnull !326, !noundef !326 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.e, align 16, !noalias !98436
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2296
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !98435, !noundef !326 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98437)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !98438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98438
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.l = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.b ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !98439
  %i.n = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -512 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.n to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %.sroa.6.0 = phi ptr [ %i.k, %bb.b ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  %.sroa.018.0.copyload.i = phi ptr [ %i.e, %bb.b ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %i.j, %bb.b ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [32 x i8], ptr %.sroa.018.0.copyload.i, i64 %i.u
  %i.w = add nsw i64 %i.g, -1                     ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -32
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x), !noalias !98440
  %.pr.i = load i64, ptr %i.b, align 8, !noalias !98438 ; 4 uses
  %.not.i = icmp eq i64 %.pr.i, -1
  br i1 %.not.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.e

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !98437
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !alias.scope !98437
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8, !alias.scope !98437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98438
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

bb.c:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = icmp eq i64 %.pr.i, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !98441
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.e:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !98438 ; 3 uses
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !98438
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.g, i64 4) ; 3 uses
  %i.ac = mul i64 %.sroa.0.0.i.i, 24              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.g, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.f, !prof !328

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !98442
  %i.ae = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ac, i64 noundef range(i64 1, 17) 8) #71, !noalias !98442 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.g ], [ 0, %bb.e ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ac) #72
          to label %.noexc.i unwind label %bb.c, !noalias !98438

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.ae, %bb.g ] ; 5 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.f ], [ %.sroa.0.0.i.i, %bb.g ] ; 2 uses
  %i.ag = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.ag)
  store i64 %.pr.i, ptr %.sroa.10.0.i.i, align 8, !noalias !98438
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !98438
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !98438
  store i64 %.sroa.4.0.i.i, ptr %i.c, align 8, !noalias !98438
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !98438
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !98438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98438
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98444)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98445
  %i.ah = icmp eq i64 %i.w, 0
  br i1 %i.ah, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.lr.ph.i.i.i
  %i.ai = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.ba, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ]
  %i.aj = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.bc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 4 uses
  %.lcssa26.i.i.i = phi ptr [ %.sroa.6.0, %.lr.ph.i.i.i ], [ %.lcssa25.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %i.ak = phi i16 [ %i.t, %.lr.ph.i.i.i ], [ %i.at, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.val1722.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i ], [ %i.aw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.lcssa152021.i.i.i = phi ptr [ %.sroa.018.0.copyload.i, %.lr.ph.i.i.i ], [ %.lcssa1519.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i
  %i.al = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa26.i.i.i, %bb.j ] ; 2 uses
  %i.am = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa152021.i.i.i, %bb.j ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.al, align 16, !noalias !98446
  %i.an = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -512 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.an to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.j
  %.lcssa25.i.i.i = phi ptr [ %.lcssa26.i.i.i, %bb.j ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa1519.i.i.i = phi ptr [ %.lcssa152021.i.i.i, %bb.j ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.ak, %bb.j ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.aq = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = and i16 %i.aq, %.lcssa.i.i.i.i.i.i.i
  %i.au = sub nsw i64 0, %i.as
  %i.av = getelementptr inbounds [32 x i8], ptr %.lcssa1519.i.i.i, i64 %i.au
  %i.aw = add i64 %.val1722.i.i.i, -1             ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -32
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %.noexc6.i unwind label %bb.o, !noalias !98447

.noexc6.i:                                        ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.pr.i.i.i = load i64, ptr %i.a, align 8, !noalias !98445 ; 4 uses
  %.not.i.i5.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not.i.i5.i, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.noexc6.i
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !98445 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !98445
  %i.ay = load i64, ptr %i.c, align 8, !range !333, !alias.scope !98448, !noalias !98438, !noundef !326
  %i.az = icmp eq i64 %i.aj, %i.ay
  br i1 %i.az, label %bb.n, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i, %bb.k
  %i.ba = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i ], [ %i.ai, %bb.k ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.aj ; 3 uses
  store i64 %.pr.i.i.i, ptr %i.bb, align 8, !noalias !98445
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !98445
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !98445
  %i.bc = add nuw nsw i64 %i.aj, 1                ; 2 uses
  store i64 %i.bc, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !98448, !noalias !98438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98445
  %i.bd = icmp eq i64 %i.aw, 0
  br i1 %i.bd, label %.loopexit.i, label %bb.j

bb.l:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.bf, label %.body.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %.pr.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !98449
  br label %.body.i

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.aj, i64 noundef %.val1722.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i unwind label %bb.l, !noalias !98450

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i: ; preds = %bb.n
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !98448, !noalias !98438
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

bb.o:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.m, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %i.be, %bb.m ], [ %i.be, %bb.l ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #73, !noalias !98438
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i

.loopexit.i:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.noexc6.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !98451
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.body.i, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.aa, %bb.c ], [ %i.aa, %bb.d ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_INtNtB6_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEEE9from_iterCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1X_4sync3ArcNtNtCs1Jc0oVeks7E_15datafusion_expr3udf9ScalarUDFEEENtNtNtB8_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !98438
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs1_NtCsc85D0lJ81Z_16lance_datafusion9dataframeNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameNtB5_12DataFrameExt15group_by_stream(ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(336) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !98454 {
bb.a:
  %i.a = alloca [1776 x i8], align 16             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.a, ptr noundef nonnull align 16 dereferenceable(336) %0, i64 336, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store ptr %1, ptr %i.b, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1760
  store i8 0, ptr %i.d, align 16
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !98455
  %i.e = tail call noundef align 16 dereferenceable_or_null(1776) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 1776, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !98455 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXs1_NtCsc85D0lJ81Z_16lance_datafusion9dataframeNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameNtBM_12DataFrameExt15group_by_stream0E3newBO_.exit, !prof !327

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 1776) #72
          to label %.noexc unwind label %bb.c, !noalias !98455

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXs1_NtCsc85D0lJ81Z_16lance_datafusion9dataframeNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameNtBJ_12DataFrameExt15group_by_stream0EBL_(ptr noundef nonnull align 16 dereferenceable(1776) %i.a) #73
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXs1_NtCsc85D0lJ81Z_16lance_datafusion9dataframeNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameNtBM_12DataFrameExt15group_by_stream0E3newBO_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1776) %i.e, ptr noundef nonnull align 16 dereferenceable(1776) %i.a, i64 1776, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @1320, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtCscTsYlPPaaMf_22datafusion_expr_common6dyn_eqNtNtCsc85D0lJ81Z_16lance_datafusion7planner14CastListF16UdfNtB5_7DynHash8dyn_hashBU_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %2) unnamed_addr #0 !guid !98478 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !326, !noalias !98479, !nonnull !326
  tail call void %i.d(ptr noundef nonnull %1, i64 noundef -4266729591828681060), !noalias !98479, !inline_history !243
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98481)
  call fastcc void @_RINvXsA_NtCscTsYlPPaaMf_22datafusion_expr_common9signatureNtB6_13TypeSignatureNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1g_6HasherEL_ECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i8, ptr %i.e, align 8, !range !402, !alias.scope !98482, !noundef !326
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !326, !noalias !98483, !nonnull !326 ; 2 uses
  tail call void %i.i(ptr noundef nonnull %1, i64 noundef %i.g), !noalias !98483, !inline_history !98466
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !range !345, !alias.scope !98482, !noundef !326
  %i.l = icmp ne i64 %i.k, -1                     ; 2 uses
  %i.m = zext i1 %i.l to i64
  tail call void %i.i(ptr noundef nonnull %1, i64 noundef %i.m), !noalias !98484, !inline_history !98466
  br i1 %i.l, label %bb.b, label %_RINvXs9_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB6_14CastListF16UdfNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB18_6HasherEL_EB8_.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !98482, !nonnull !326, !noundef !326 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !98482, !noundef !326 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !326, !noalias !98485, !nonnull !326
  tail call void %i.s(ptr noundef nonnull %1, i64 noundef %i.q), !noalias !98485, !inline_history !98471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98486)
  %.idx.i.i.i = mul nuw nsw i64 %i.q, 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i
  %i.u = icmp eq i64 %i.q, 0
  br i1 %i.u, label %_RINvXs9_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB6_14CastListF16UdfNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB18_6HasherEL_EB8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !326, !noalias !98487, !nonnull !326
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.0.01.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.x, %bb.c ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 24 ; 2 uses
  %i.y = getelementptr i8, ptr %.sroa.0.01.i.i.i, i64 8
  %.sroa.0.0.val.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !98486, !noalias !98488, !nonnull !326, !noundef !326
  %i.z = getelementptr i8, ptr %.sroa.0.01.i.i.i, i64 16
  %.sroa.0.0.val3.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !98486, !noalias !98488, !noundef !326
  tail call void %i.w(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.val.i.i.i, i64 noundef %.sroa.0.0.val3.i.i.i), !noalias !98489, !inline_history !98477
  %i.aa = icmp eq ptr %i.x, %i.t
  br i1 %i.aa, label %_RINvXs9_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB6_14CastListF16UdfNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB18_6HasherEL_EB8_.exit, label %bb.c

_RINvXs9_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB6_14CastListF16UdfNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB18_6HasherEL_EB8_.exit: ; preds = %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtCscTsYlPPaaMf_22datafusion_expr_common6dyn_eqNtNtNtCsdS3zsMIHox4_20datafusion_functions4core8getfield12GetFieldFuncNtB5_7DynHash8dyn_hashCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %2) unnamed_addr #0 !guid !98512 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !326, !noalias !98513, !nonnull !326
  tail call void %i.d(ptr noundef nonnull %1, i64 noundef 4913738849653309957), !noalias !98513, !inline_history !243
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98515)
  call fastcc void @_RINvXsA_NtCscTsYlPPaaMf_22datafusion_expr_common9signatureNtB6_13TypeSignatureNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1g_6HasherEL_ECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i8, ptr %i.e, align 8, !range !402, !alias.scope !98516, !noundef !326
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !326, !noalias !98517, !nonnull !326 ; 2 uses
  tail call void %i.i(ptr noundef nonnull %1, i64 noundef %i.g), !noalias !98517, !inline_history !98500
end_hunk_1
begin_hunk_2_@_RNvXs4m_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_13AlterOperatorNtNtCscI6d9CVNmLh_4core5clone5Clone5clone:bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeEECsc85D0lJ81Z_16lance_datafusion.exit

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.g:                                             ; preds = %bb.r, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.r ], [ %i.q, %bb.i ] ; 2 uses
  %i.o = load i8, ptr %i.e, align 8, !range !382, !alias.scope !108651, !noundef !326
  %i.p = icmp eq i8 %i.o, -1
  br i1 %i.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeEECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeEECsc85D0lJ81Z_16lance_datafusion.exit unwind label %bb.s, !inline_history !453

bb.i:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.j:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108652)
  %i.s = load i64, ptr %i.r, align 8, !range !468, !alias.scope !108652, !noundef !326 ; 3 uses
  %i.t = tail call i64 @llvm.usub.sat.i64(i64 %i.s, i64 -9223372036854775806)
  switch i64 %i.t, label %default.unreachable [
    i64 0, label %bb.k
    i64 1, label %bb.p
    i64 2, label %bb.q
  ]

default.unreachable:                              ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108653)
  %i.u = icmp slt i64 %i.s, 0
  %i.v = add i64 %i.s, -9223372036854775807
  %i.w = select i1 %i.u, i64 %i.v, i64 0
  switch i64 %i.w, label %bb.l [
    i64 0, label %bb.m
    i64 1, label %_RNvXs4w_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i64 2, label %bb.n
    i64 3, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i), !noalias !108654
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.r)
          to label %.noexc8 unwind label %bb.r, !noalias !108655

.noexc8:                                          ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.y = load i32, ptr %i.x, align 8, !range !548, !alias.scope !108653, !noalias !108656, !noundef !326
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !108655
  %.sroa.012.0.copyload = load i64, ptr %.sroa.0.i, align 8, !noalias !108657
  %.sroa.7.0..sroa.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa.0.i.sroa_idx, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.813, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i), !noalias !108654
  br label %_RNvXs4w_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.n:                                             ; preds = %bb.k
  br label %_RNvXs4w_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.o:                                             ; preds = %bb.k
  br label %_RNvXs4w_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.p:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108658)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !108659
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108660), !noalias !108656
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !108661, !noalias !108656, !nonnull !326, !noundef !326
  %i.ae = load i64, ptr %i.ab, align 8, !alias.scope !108661, !noalias !108656, !noundef !326
  invoke fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ad, i64 noundef %i.ae)
          to label %.noexc4 unwind label %bb.r, !noalias !108662, !inline_history !108644

.noexc4:                                          ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !108659
  br label %_RNvXs4w_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.q:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !108663
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108664)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !108664, !noalias !108656, !nonnull !326, !noundef !326
  %i.ai = load i64, ptr %i.af, align 8, !alias.scope !108664, !noalias !108656, !noundef !326
  invoke fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl14OperatorOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ah, i64 noundef %i.ai)
          to label %.noexc5 unwind label %bb.r, !noalias !108665, !inline_history !108647

.noexc5:                                          ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !108663
  br label %_RNvXs4w_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.r:                                             ; preds = %bb.m, %bb.p, %bb.q
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d) #73
          to label %bb.g unwind label %bb.s

_RNvXs4w_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit: ; preds = %bb.k, %.noexc8, %bb.n, %bb.o, %.noexc5, %.noexc4
  %.sroa.8.sroa.4.0 = phi i32 [ undef, %.noexc5 ], [ undef, %.noexc4 ], [ %i.y, %.noexc8 ], [ undef, %bb.o ], [ undef, %bb.n ], [ undef, %bb.k ]
  %.sroa.0.0 = phi i64 [ -9223372036854775804, %.noexc5 ], [ -9223372036854775805, %.noexc4 ], [ %.sroa.012.0.copyload, %.noexc8 ], [ -9223372036854775806, %bb.o ], [ -9223372036854775807, %bb.n ], [ -9223372036854775808, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0, ptr %i.am, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.813, i64 24, i1 false)
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.sroa.8.sroa.4.0, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.s:                                             ; preds = %bb.h, %bb.r, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeEECsc85D0lJ81Z_16lance_datafusion.exit
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.t:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeEECsc85D0lJ81Z_16lance_datafusion.exit
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs4o_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_13AlterOperatorNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %1) unnamed_addr #1 !guid !108704 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108708)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !108709, !noundef !326 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !108710, !noundef !326
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %_RNvXs4R_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

_RNvXs4R_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !108710, !nonnull !326, !noundef !326
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !108709, !nonnull !326, !noundef !326
  %i.j = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion(ptr noundef %i.i, ptr noundef %i.g, i64 noundef %i.b), !noalias !108711, !inline_history !236
  br i1 %i.j, label %bb.b, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %_RNvXs4R_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !range !382, !noundef !326
  %.not = icmp eq i8 %i.l, -1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !range !382, !noundef !326
  %i.o = icmp eq i8 %i.n, -1                      ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.o, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %.split

bb.d:                                             ; preds = %bb.b
  br i1 %i.o, label %bb.e, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

.split:                                           ; preds = %bb.c
  %i.p = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCs40MM8ukkVQd_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m)
  br i1 %i.p, label %bb.e, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.split, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.s = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCs40MM8ukkVQd_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r)
  br i1 %i.s, label %bb.f, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108713)
  %i.v = load i64, ptr %i.t, align 8, !range !468, !alias.scope !108712, !noundef !326
  %i.w = tail call i64 @llvm.usub.sat.i64(i64 %i.v, i64 -9223372036854775806) ; 2 uses
  %i.x = load i64, ptr %i.u, align 8, !range !468, !alias.scope !108713, !noundef !326 ; 2 uses
  %i.y = tail call i64 @llvm.usub.sat.i64(i64 %i.x, i64 -9223372036854775806)
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  switch i64 %i.w, label %default.unreachable [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 2, label %bb.j
  ]

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp ult i64 %i.x, -9223372036854775805
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = tail call fastcc noundef zeroext i1 @_RNvXs2W_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_5OwnerNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.u), !inline_history !108675
  br label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = tail call fastcc noundef zeroext i1 @_RNvXs4R_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad), !inline_history !108675
  br label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !108712, !noundef !326 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !108713, !noundef !326
  %i.aj = icmp eq i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.k, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !108713, !nonnull !326, !noundef !326
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !108712, !nonnull !326, !noundef !326
  %.not89.not = icmp eq i64 %i.ag, 0
  br i1 %.not89.not, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %_RNvXs4I_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_14OperatorOptionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread6
  %.sroa.01.0.i10 = phi i64 [ %i.cr, %_RNvXs4I_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_14OperatorOptionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread6 ], [ 0, %bb.k ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %.sroa.01.0.i10 ; 11 uses
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %.sroa.01.0.i10 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108715)
  %i.aq = load i64, ptr %i.ao, align 8, !range !502, !alias.scope !108714, !noalias !108716, !noundef !326 ; 2 uses
  %i.ar = load i64, ptr %i.ap, align 8, !range !502, !alias.scope !108715, !noalias !108716, !noundef !326
  %i.as = icmp eq i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.l, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %.lr.ph
  switch i64 %i.aq, label %_RNvXs4I_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_14OperatorOptionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread6 [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.o
    i64 3, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !345, !alias.scope !108714, !noalias !108716, !noundef !326
  %.not2.i = icmp eq i64 %i.au, -1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !range !345, !alias.scope !108715, !noalias !108716, !noundef !326
  %i.ax = icmp eq i64 %i.aw, -1                   ; 2 uses
  br i1 %.not2.i, label %.split37, label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !345, !alias.scope !108714, !noalias !108716, !noundef !326
  %.not.i = icmp eq i64 %i.az, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !345, !alias.scope !108715, !noalias !108716, !noundef !326
  %i.bc = icmp eq i64 %i.bb, -1                   ; 2 uses
  br i1 %.not.i, label %.split38, label %bb.s

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108717), !noalias !108716
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108718), !noalias !108716
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108719), !noalias !108716
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108720), !noalias !108716
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !108721, !noalias !108716, !noundef !326 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !108722, !noalias !108716, !noundef !326
  %i.bh = icmp eq i64 %i.be, %i.bg
  br i1 %i.bh, label %.split36, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

.split36:                                         ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !108722, !noalias !108716, !nonnull !326, !noundef !326
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !108721, !noalias !108716, !nonnull !326, !noundef !326
  %i.bm = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion(ptr noundef %i.bl, ptr noundef %i.bj, i64 noundef %i.be), !noalias !108723, !inline_history !108685
  br i1 %i.bm, label %_RNvXs4I_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_14OperatorOptionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread6, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108724), !noalias !108716
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108725), !noalias !108716
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108726), !noalias !108716
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108727), !noalias !108716
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !108728, !noalias !108716, !noundef !326 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !108729, !noalias !108716, !noundef !326
  %i.br = icmp eq i64 %i.bo, %i.bq
  br i1 %i.br, label %.split35, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

.split35:                                         ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !108729, !noalias !108716, !nonnull !326, !noundef !326
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !108728, !noalias !108716, !nonnull !326, !noundef !326
  %i.bw = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion(ptr noundef %i.bv, ptr noundef %i.bt, i64 noundef %i.bo), !noalias !108730, !inline_history !108685
  br i1 %i.bw, label %_RNvXs4I_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_14OperatorOptionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread6, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.m
  br i1 %i.ax, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.r

.split37:                                         ; preds = %bb.m
  br i1 %i.ax, label %_RNvXs4I_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_14OperatorOptionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread6, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108731), !noalias !108716
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108732), !noalias !108716
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108733), !noalias !108716
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108734), !noalias !108716
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !108735, !noalias !108716, !noundef !326 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !108736, !noalias !108716, !noundef !326
  %i.cb = icmp eq i64 %i.by, %i.ca
  br i1 %i.cb, label %.split34, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

.split34:                                         ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !108736, !noalias !108716, !nonnull !326, !noundef !326
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !108735, !noalias !108716, !nonnull !326, !noundef !326
  %i.cg = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion(ptr noundef %i.cf, ptr noundef %i.cd, i64 noundef %i.by), !noalias !108737, !inline_history !108685
  br i1 %i.cg, label %_RNvXs4I_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_14OperatorOptionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread6, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.n
  br i1 %i.bc, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.t

.split38:                                         ; preds = %bb.n
  br i1 %i.bc, label %_RNvXs4I_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_14OperatorOptionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread6, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108738), !noalias !108716
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108739), !noalias !108716
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108740), !noalias !108716
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108741), !noalias !108716
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !108742, !noalias !108716, !noundef !326 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !108743, !noalias !108716, !noundef !326
  %i.cl = icmp eq i64 %i.ci, %i.ck
  br i1 %i.cl, label %_RNvXs4I_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_14OperatorOptionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

_RNvXs4I_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_14OperatorOptionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit: ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !108743, !noalias !108716, !nonnull !326, !noundef !326
  %i.co = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !108742, !noalias !108716, !nonnull !326, !noundef !326
  %i.cq = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion(ptr noundef %i.cp, ptr noundef %i.cn, i64 noundef %i.ci), !noalias !108744, !inline_history !108685
  br i1 %i.cq, label %_RNvXs4I_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_14OperatorOptionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread6, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

_RNvXs4I_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_14OperatorOptionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread6: ; preds = %.split38, %.split37, %.split36, %.split35, %.split34, %bb.l, %_RNvXs4I_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_14OperatorOptionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit
  %i.cr = add nuw i64 %.sroa.01.0.i10, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.cr, %i.ag
  br i1 %exitcond.not, label %_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %.lr.ph

_RNvXs4y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXs4I_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_14OperatorOptionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, %_RNvXs4I_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_14OperatorOptionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread6, %.lr.ph, %bb.p, %bb.r, %bb.q, %bb.s, %bb.o, %bb.t, %.split34, %.split35, %.split36, %.split37, %.split38, %bb.k, %bb.a, %bb.j, %bb.i, %bb.h, %bb.f, %.split, %bb.d, %_RNvXs4R_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, %bb.c, %bb.e
  %.sroa.0.0 = phi i1 [ false, %.split ], [ false, %bb.e ], [ false, %bb.c ], [ false, %_RNvXs4R_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit ], [ false, %bb.d ], [ false, %bb.a ], [ %i.ab, %bb.h ], [ %i.ae, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ true, %bb.k ], [ false, %.split38 ], [ false, %.split37 ], [ false, %.split36 ], [ false, %.split35 ], [ false, %.split34 ], [ false, %bb.o ], [ false, %bb.s ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.p ], [ false, %.lr.ph ], [ true, %_RNvXs4I_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_14OperatorOptionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread6 ], [ false, %_RNvXs4I_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_14OperatorOptionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit ], [ false, %bb.t ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs4z_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_25WildcardAdditionalOptionsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(448) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(448) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !108820 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [328 x i8], align 8               ; 5 uses
  %.sroa.058 = alloca [392 x i8], align 8         ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i.i = alloca [56 x i8], align 8        ; 5 uses
  %.sroa.8.i = alloca [60 x i8], align 4          ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [88 x i8], align 8                ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 7 uses
  %i.l = alloca [128 x i8], align 8               ; 12 uses
  %.sroa.547 = alloca [24 x i8], align 8          ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [56 x i8], align 8            ; 4 uses
  %i.n = alloca [128 x i8], align 8               ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 360
  call fastcc void @_RNvXsj_NtCs40MM8ukkVQd_9sqlparser9tokenizerNtB5_5TokenNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !range !345, !noundef !326
  %.not = icmp eq i64 %i.u, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %_RNvXs4J_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_15IlikeSelectItemNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %_RNvXs4J_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_15IlikeSelectItemNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.copyload, %_RNvXs4J_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_15IlikeSelectItemNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit ], [ undef, %bb.a ]
  %.sroa.6.0 = phi ptr [ %.sroa.6.0.copyload, %_RNvXs4J_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_15IlikeSelectItemNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit ], [ undef, %bb.a ] ; 3 uses
  %.sroa.0.061 = phi i64 [ %.sroa.0.0.copyload, %_RNvXs4J_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_15IlikeSelectItemNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit ], [ -1, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.v = load i64, ptr %1, align 8, !range !355, !noundef !326 ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvXsa_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB5_18TrackConsumersPoolNtB5_13FairSpillPoolENtB7_10MemoryPool8registerCsc85D0lJ81Z_16lance_datafusion:bb.a

bb.o:                                             ; preds = %bb.n
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !115653
  %i.bp = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %.not.i23.i.i.i = icmp ne i16 %i.bq, 0
  %i.br = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bq, i1 true)
  %i.bs = zext nneg i16 %i.br to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i23.i.i.i)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bs
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !115657
  br label %_RNvMs3_NtCsJGrEYE2um7_9hashbrown3mapINtB5_7HashMapjNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerE6insertCsc85D0lJ81Z_16lance_datafusion.exit.thread

_RNvMs3_NtCsJGrEYE2um7_9hashbrown3mapINtB5_7HashMapjNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerE6insertCsc85D0lJ81Z_16lance_datafusion.exit.thread: ; preds = %bb.n, %bb.o
  %i.bt = phi i8 [ %.pre.i, %bb.o ], [ %i.bn, %bb.n ]
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.bs, %bb.o ], [ %.sroa.4.121.i.i.i, %bb.n ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115658)
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.3.0.i.ph.i.i
  %i.bv = and i8 %i.bt, 1
  %i.bw = zext nneg i8 %i.bv to i64
  %i.bx = add i64 %.sroa.3.0.i.ph.i.i, -16
  %i.by = and i64 %i.bx, %.val7.i.i
  store i8 %i.ak, ptr %i.bu, align 1, !noalias !115657
  %i.bz = getelementptr i8, ptr %.val.i.i, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  store i8 %i.ak, ptr %i.ca, align 1, !noalias !115657
  %i.cb = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !115659
  %i.cc = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bw, i64 0
  %i.cd = sub <2 x i64> %i.cb, %i.cc
  store <2 x i64> %i.cd, ptr %i.ae, align 8, !alias.scope !115659
  %i.ce = sub nsw i64 0, %.sroa.3.0.i.ph.i.i
  %i.cf = getelementptr inbounds [56 x i8], ptr %.val.i.i, i64 %i.ce ; 6 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -56
  store i64 %i.h, ptr %i.cg, align 8, !noalias !115660
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.cf, i64 -48
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !115661
  %.sroa.617.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds i8, ptr %i.cf, i64 -40
  store ptr %i.s, ptr %.sroa.617.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !115661
  %.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds i8, ptr %i.cf, i64 -32
  store i64 %i.l, ptr %.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !115661
  %.sroa.9.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds i8, ptr %i.cf, i64 -24
  %.sroa.11.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds i8, ptr %i.cf, i64 -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa.4.0..sroa_idx.i.sroa_idx, i8 0, i64 16, i1 false)
  store i8 %i.u, ptr %.sroa.11.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !115661
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerEECsc85D0lJ81Z_16lance_datafusion.exit

bb.p:                                             ; preds = %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.m, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !115662
  br label %.body

bb.r:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %i.j, i64 %i.l, i1 false)
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc85D0lJ81Z_16lance_datafusion.exit.thread31

_RNvMs3_NtCsJGrEYE2um7_9hashbrown3mapINtB5_7HashMapjNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerE6insertCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %.lr.ph.i.i.i
  %i.ci = getelementptr inbounds i8, ptr %i.aw, i64 -48 ; 2 uses
  %.sroa.013.0.copyload = load i64, ptr %i.ci, align 8, !noalias !115663 ; 2 uses
  %.sroa.5.0..sroa_idx14 = getelementptr inbounds i8, ptr %i.aw, i64 -40 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx14, align 8, !noalias !115663 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.aw, i64 -32
  store i64 %i.l, ptr %i.ci, align 8, !noalias !115664
  store ptr %i.s, ptr %.sroa.5.0..sroa_idx14, align 8, !noalias !115664
  store i64 %i.l, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !115664
  %.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %i.aw, i64 -24
  %.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %i.aw, i64 -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  store i8 %i.u, ptr %.sroa.11.0..sroa_idx, align 8, !noalias !115664
  %.0.val.off.i = add i64 %.sroa.013.0.copyload, -1
  %switch.i = icmp ult i64 %.0.val.off.i, -2
  br i1 %switch.i, label %bb.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerEECsc85D0lJ81Z_16lance_datafusion.exit

bb.s:                                             ; preds = %_RNvMs3_NtCsJGrEYE2um7_9hashbrown3mapINtB5_7HashMapjNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerE6insertCsc85D0lJ81Z_16lance_datafusion.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.013.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !115665
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerEECsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.s, %_RNvMs3_NtCsJGrEYE2um7_9hashbrown3mapINtB5_7HashMapjNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerE6insertCsc85D0lJ81Z_16lance_datafusion.exit, %_RNvMs3_NtCsJGrEYE2um7_9hashbrown3mapINtB5_7HashMapjNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerE6insertCsc85D0lJ81Z_16lance_datafusion.exit.thread
  %i.cj = cmpxchg ptr %i.b, i8 1, i8 0 release monotonic, align 1
  %i.ck = extractvalue { i8, i1 } %i.cj, 1
  br i1 %i.ck, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api5mutex10MutexGuardNtNtCslnBYTBsvsQk_11parking_lot9raw_mutex8RawMutexINtNtCsJGrEYE2um7_9hashbrown3map7HashMapjNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerEEECsc85D0lJ81Z_16lance_datafusion.exit12, label %bb.t, !prof !332

bb.t:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerEECsc85D0lJ81Z_16lance_datafusion.exit
  tail call void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.b, i1 noundef zeroext false)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api5mutex10MutexGuardNtNtCslnBYTBsvsQk_11parking_lot9raw_mutex8RawMutexINtNtCsJGrEYE2um7_9hashbrown3map7HashMapjNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerEEECsc85D0lJ81Z_16lance_datafusion.exit12

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api5mutex10MutexGuardNtNtCslnBYTBsvsQk_11parking_lot9raw_mutex8RawMutexINtNtCsJGrEYE2um7_9hashbrown3map7HashMapjNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerEEECsc85D0lJ81Z_16lance_datafusion.exit12: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerEECsc85D0lJ81Z_16lance_datafusion.exit, %bb.t
  ret void

bb.u:                                             ; preds = %bb.h
  unreachable

bb.v:                                             ; preds = %bb.g
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api5mutex10MutexGuardNtNtCslnBYTBsvsQk_11parking_lot9raw_mutex8RawMutexINtNtCsJGrEYE2um7_9hashbrown3map7HashMapjNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerEEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %.body, %bb.g
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvXsa_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB5_18TrackConsumersPoolNtB5_13FairSpillPoolENtB7_10MemoryPool8reservedCsc85D0lJ81Z_16lance_datafusion(ptr noundef nonnull align 8 %0) unnamed_addr #0 !guid !115666 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef i64 @_RNvXs4_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolNtB5_13FairSpillPoolNtB7_10MemoryPool8reserved(ptr noundef nonnull align 8 %i.a)
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsa_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB5_18TrackConsumersPoolNtB5_13FairSpillPoolENtB7_10MemoryPool8try_growCsc85D0lJ81Z_16lance_datafusion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !115825 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.0.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 11 uses
  %i.q = alloca [24 x i8], align 8                ; 10 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 3 uses
  %i.s = alloca [40 x i8], align 8                ; 12 uses
  %i.t = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs4_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolNtB5_13FairSpillPoolNtB7_10MemoryPool8try_grow(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.t, ptr noundef nonnull align 8 %i.u, ptr noundef nonnull align 8 %2, i64 noundef %3)
  %i.v = load i64, ptr %i.t, align 8, !range !331, !noundef !326
  %.not = icmp eq i64 %i.v, -1
  br i1 %.not, label %bb.bz, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115827)
  %i.w = load i64, ptr %i.s, align 8, !range !427, !alias.scope !115827, !noundef !326 ; 2 uses
  %i.x = icmp eq i64 %i.w, 11
  br i1 %i.x, label %bb.c, label %bb.bn

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !alias.scope !115827 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !115827, !nonnull !326, !noundef !326 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !115827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !115828
  %i.z = load ptr, ptr %2, align 8, !noalias !115828, !nonnull !326, !noundef !326 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !115828, !nonnull !326, !noundef !326
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !115828, !noundef !326
  %i.ae = load i64, ptr %1, align 8, !range !354, !noalias !115828, !noundef !326 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !115829
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.ag = cmpxchg weak ptr %i.af, i8 0, i8 1 acquire monotonic, align 1, !noalias !115829
  %i.ah = extractvalue { i8, i1 } %i.ag, 1
  br i1 %i.ah, label %.noexc.i, label %bb.d, !prof !332

bb.d:                                             ; preds = %bb.c
  %i.ai = invoke noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.af, i64 undef, i32 noundef -1)
          to label %.noexc.i unwind label %bb.bp, !noalias !115829 ; 0 uses

bb.e:                                             ; preds = %._crit_edge18.i.i.i.i.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.body.i.i.i.i, %bb.n, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %i.bp, %bb.l ], [ %i.bl, %bb.i ], [ %i.bl, %bb.h ], [ %i.bp, %bb.k ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.bt, %bb.m ], [ %i.bt, %bb.n ] ; 2 uses
  %i.ak = cmpxchg ptr %i.af, i8 1, i8 0 release monotonic, align 1, !noalias !115829
  %i.al = extractvalue { i8, i1 } %i.ak, 1
  br i1 %i.al, label %.body.i, label %bb.f, !prof !332

bb.f:                                             ; preds = %.body.i.i
  invoke void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.af, i1 noundef zeroext false)
          to label %.body.i unwind label %bb.bm, !noalias !115829

.noexc.i:                                         ; preds = %bb.d, %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115830)
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !115830, !noalias !115829, !nonnull !326, !noundef !326 ; 4 uses
  %.val4.i.i.i = load <16 x i8>, ptr %i.an, align 16, !noalias !115831
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !115830, !noalias !115829, !noundef !326 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115833)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !115834
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCsJGrEYE2um7_9hashbrown3map4IterjNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerENCNvMs9_B1A_INtB1A_18TrackConsumersPoolNtB1A_13FairSpillPoolE10report_top0ENtNtNtB9_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %.noexc.i
  %i.ar = icmp sgt <16 x i8> %.val4.i.i.i, splat (i8 -1)
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %.not11.i.i.i.i.i.i = icmp eq i16 %i.as, 0
  br i1 %.not11.i.i.i.i.i.i, label %.lr.ph.i.i.i5.i.i.i, label %._crit_edge18.i.i.i.i.i.i

.lr.ph.i.i.i5.i.i.i:                              ; preds = %bb.g, %.lr.ph.i.i.i5.i.i.i
  %i.au = phi ptr [ %i.ay, %.lr.ph.i.i.i5.i.i.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.av = phi ptr [ %i.ax, %.lr.ph.i.i.i5.i.i.i ], [ %i.an, %bb.g ]
  %.val9.i.i.i.i.i.i = load <16 x i8>, ptr %i.au, align 16, !noalias !115835
  %i.aw = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i, splat (i8 -1)
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -896 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.aw to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i5.i.i.i, label %._crit_edge18.i.i.i.i.i.i

._crit_edge18.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i5.i.i.i, %bb.g
  %.sroa.6.0.i.i = phi ptr [ %i.at, %bb.g ], [ %i.ay, %.lr.ph.i.i.i5.i.i.i ] ; 2 uses
  %.sroa.055.0.copyload.i.i.i.i = phi ptr [ %i.an, %bb.g ], [ %i.ax, %.lr.ph.i.i.i5.i.i.i ] ; 3 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %i.as, %bb.g ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i5.i.i.i ] ; 3 uses
  %i.az = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.ba = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.bb = zext nneg i16 %i.ba to i64
  %i.bc = and i16 %i.az, %.lcssa.i.i.i.i.i.i      ; 2 uses
  %i.bd = sub nsw i64 0, %i.bb
  %i.be = getelementptr inbounds [56 x i8], ptr %.sroa.055.0.copyload.i.i.i.i, i64 %i.bd ; 3 uses
  %i.bf = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -56
  %i.bh = getelementptr inbounds i8, ptr %i.be, i64 -48 ; 3 uses
  %.val.i.i.i.i = load i64, ptr %i.bg, align 8, !noalias !115836, !noundef !326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !115837
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh)
          to label %.noexc5.i.i unwind label %bb.e, !noalias !115837

.noexc5.i.i:                                      ; preds = %._crit_edge18.i.i.i.i.i.i
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 -8
  %i.bj = load i8, ptr %i.bi, align 8, !range !338, !noalias !115837, !noundef !326
  %i.bk = invoke noundef i64 @_RNvMs6_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolNtB5_15TrackedConsumer4peak(ptr noundef nonnull align 8 %i.bh)
          to label %bb.j unwind label %bb.h, !noalias !115837

bb.h:                                             ; preds = %.noexc5.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115838), !noalias !115833
  %.val.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !115838, !noalias !115837 ; 2 uses
  %i.bm = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.bm, label %.body.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !115838, !noalias !115837, !nonnull !326, !noundef !326
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !115839
  br label %.body.i.i

bb.j:                                             ; preds = %.noexc5.i.i
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !115837 ; 6 uses
  %.sroa.5.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5.0.copyload3.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !115837 ; 5 uses
  %.sroa.6.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6.0.copyload5.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i.i.i.i, align 8, !noalias !115837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !115837
  %i.bo = invoke noundef i64 @_RNvMs6_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolNtB5_15TrackedConsumer8reserved(ptr noundef nonnull align 8 %i.bh)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCsJGrEYE2um7_9hashbrown3map4IterjNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerENCNvMs9_B1A_INtB1A_18TrackConsumersPoolNtB1A_13FairSpillPoolE10report_top0ENtNtNtB9_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i unwind label %bb.k, !noalias !115837

bb.k:                                             ; preds = %bb.j
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, 0
  br i1 %i.bq, label %.body.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload3.i.i.i.i.i) ], !noalias !115833
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload3.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !115840
  br label %.body.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCsJGrEYE2um7_9hashbrown3map4IterjNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerENCNvMs9_B1A_INtB1A_18TrackConsumersPoolNtB1A_13FairSpillPoolE10report_top0ENtNtNtB9_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %bb.j
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCsJGrEYE2um7_9hashbrown3map4IterjNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerENCNvMs9_B1A_INtB1A_18TrackConsumersPoolNtB1A_13FairSpillPoolE10report_top0ENtNtNtB9_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i.i, label %bb.o

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCsJGrEYE2um7_9hashbrown3map4IterjNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerENCNvMs9_B1A_INtB1A_18TrackConsumersPoolNtB1A_13FairSpillPoolE10report_top0ENtNtNtB9_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCsJGrEYE2um7_9hashbrown3map4IterjNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerENCNvMs9_B1A_INtB1A_18TrackConsumersPoolNtB1A_13FairSpillPoolE10report_top0ENtNtNtB9_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.noexc.i
  store i64 0, ptr %i.q, align 8, !alias.scope !115841, !noalias !115829
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.br, align 8, !alias.scope !115841, !noalias !115829
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %i.bs, align 8, !alias.scope !115841, !noalias !115829
  br label %bb.ai

bb.m:                                             ; preds = %bb.r
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, 0
  br i1 %i.bu, label %.body.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload3.i.i.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload3.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !115842
  br label %.body.i.i

bb.o:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCsJGrEYE2um7_9hashbrown3map4IterjNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerENCNvMs9_B1A_INtB1A_18TrackConsumersPoolNtB1A_13FairSpillPoolE10report_top0ENtNtNtB9_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ap, i64 4) ; 3 uses
  %i.bv = mul i64 %.sroa.0.0.i.i.i.i.i, 56        ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %i.ap, 164703072086692425
  br i1 %or.cond.i.i.i.i.i.i, label %bb.r, label %bb.p, !prof !328

bb.p:                                             ; preds = %bb.o
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !115843
  %i.bx = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bv, i64 noundef range(i64 1, 17) 8) #71, !noalias !115843 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.o
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.q ], [ 0, %bb.o ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.bv) #72
          to label %.noexc.i.i.i.i unwind label %bb.m, !noalias !115834

.noexc.i.i.i.i:                                   ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.p
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.p ], [ %i.bx, %bb.q ] ; 9 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %bb.p ], [ %.sroa.0.0.i.i.i.i.i, %bb.q ] ; 2 uses
  %i.bz = icmp ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.bz)
  %.sroa.554.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 16
  store i64 %.sroa.6.0.copyload5.i.i.i.i.i, ptr %.sroa.554.0..sroa_idx.i.i.i.i, align 8, !noalias !115834
  %.sroa.9.16..sroa.554.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 24
  store i64 %.val.i.i.i.i, ptr %.sroa.9.16..sroa.554.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !115834
  %.sroa.10.16..sroa.554.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 32
  store i8 %i.bj, ptr %.sroa.10.16..sroa.554.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !115834
  %.sroa.116.16..sroa.554.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 40
  store i64 %i.bk, ptr %.sroa.116.16..sroa.554.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !115834
  %.sroa.12.16..sroa.554.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 48
  store i64 %i.bo, ptr %.sroa.12.16..sroa.554.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !115834
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i, ptr %.sroa.10.0.i.i.i.i.i, align 8, !noalias !115834
  %.sroa.453.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 8
  store ptr %.sroa.5.0.copyload3.i.i.i.i.i, ptr %.sroa.453.0..sroa_idx.i.i.i.i, align 8, !noalias !115834
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.m, align 8, !noalias !115834
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !115834
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !115834
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115845)
  %i.ca = icmp eq i64 %i.bf, 0
  br i1 %i.ca, label %.noexc8.thread.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not11.i.i.i13.i.i.i.i = icmp eq i16 %i.bc, 0
  br i1 %.not11.i.i.i13.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i, label %._crit_edge18.i.i.i14.i.i.i.i

.lr.ph.i.i.i34.i.i.i.i:                           ; preds = %bb.t, %.lr.ph.i.i.i34.i.i.i.i
  %i.cb = phi ptr [ %i.cf, %.lr.ph.i.i.i34.i.i.i.i ], [ %.sroa.6.0.i.i, %bb.t ] ; 2 uses
  %i.cc = phi ptr [ %i.ce, %.lr.ph.i.i.i34.i.i.i.i ], [ %.sroa.055.0.copyload.i.i.i.i, %bb.t ]
  %.val9.i.i.i37.i.i.i.i = load <16 x i8>, ptr %i.cb, align 16, !noalias !115846
  %i.cd = icmp sgt <16 x i8> %.val9.i.i.i37.i.i.i.i, splat (i8 -1)
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 -896 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %.cast.i.i.i38.i.i.i.i = bitcast <16 x i1> %i.cd to i16 ; 2 uses
  %.not.i.i.i39.i.i.i.i = icmp eq i16 %.cast.i.i.i38.i.i.i.i, 0
  br i1 %.not.i.i.i39.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i, label %._crit_edge18.i.i.i14.i.i.i.i

._crit_edge18.i.i.i14.i.i.i.i:                    ; preds = %.lr.ph.i.i.i34.i.i.i.i, %bb.t
  %.sroa.9.3.i.i.i.i = phi ptr [ %.sroa.6.0.i.i, %bb.t ], [ %i.cf, %.lr.ph.i.i.i34.i.i.i.i ]
  %.sroa.055.3.i.i.i.i = phi ptr [ %.sroa.055.0.copyload.i.i.i.i, %bb.t ], [ %i.ce, %.lr.ph.i.i.i34.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i16.i.i.i.i = phi i16 [ %i.bc, %bb.t ], [ %.cast.i.i.i38.i.i.i.i, %.lr.ph.i.i.i34.i.i.i.i ] ; 3 uses
  %i.cg = add i16 %.lcssa.i.i.i16.i.i.i.i, -1
  %i.ch = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i16.i.i.i.i, i1 true)
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = and i16 %i.cg, %.lcssa.i.i.i16.i.i.i.i
  %i.ck = sub nsw i64 0, %i.ci
  %i.cl = getelementptr inbounds [56 x i8], ptr %.sroa.055.3.i.i.i.i, i64 %i.ck ; 3 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -56
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 -48 ; 3 uses
  %.val.i17.i.i.i.i = load i64, ptr %i.cm, align 8, !noalias !115847, !noundef !326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !115848
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cn)
          to label %.noexc41.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !115848

.noexc41.i.i.i.i:                                 ; preds = %._crit_edge18.i.i.i14.i.i.i.i
  %i.co = getelementptr inbounds i8, ptr %i.cl, i64 -8
  %i.cp = load i8, ptr %i.co, align 8, !range !338, !noalias !115848, !noundef !326
  %i.cq = invoke noundef i64 @_RNvMs6_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolNtB5_15TrackedConsumer4peak(ptr noundef nonnull align 8 %i.cn)
          to label %bb.w unwind label %bb.u, !noalias !115848

bb.u:                                             ; preds = %.noexc41.i.i.i.i
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115849), !noalias !115850
  %.val.i.i.i18.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !115849, !noalias !115848 ; 2 uses
  %i.cs = icmp eq i64 %.val.i.i.i18.i.i.i.i, 0
  br i1 %i.cs, label %.body.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val1.i.i.i19.i.i.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !115849, !noalias !115848, !nonnull !326, !noundef !326
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i19.i.i.i.i, i64 noundef %.val.i.i.i18.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !115851
  br label %.body.i.i.i.i

bb.w:                                             ; preds = %.noexc41.i.i.i.i
  %.sroa.0.0.copyload1.i.i22.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !115848 ; 4 uses
  %.sroa.5.0..sroa_idx2.i.i23.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5.0.copyload3.i.i24.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i.i23.i.i.i.i, align 8, !noalias !115848 ; 3 uses
  %.sroa.6.0..sroa_idx4.i.i25.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload5.i.i26.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i25.i.i.i.i, align 8, !noalias !115848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !115848
  %i.cu = invoke noundef i64 @_RNvMs6_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolNtB5_15TrackedConsumer8reserved(ptr noundef nonnull align 8 %i.cn)
          to label %.noexc8.i.i.i.i unwind label %bb.x, !noalias !115848

bb.x:                                             ; preds = %bb.w
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = icmp eq i64 %.sroa.0.0.copyload1.i.i22.i.i.i.i, 0
  br i1 %i.cw, label %.body.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload3.i.i24.i.i.i.i) ], !noalias !115850
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload3.i.i24.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i22.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !115852
  br label %.body.i.i.i.i

.noexc8.i.i.i.i:                                  ; preds = %bb.w
  %.not16.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i22.i.i.i.i, -1
  br i1 %.not16.i.i.i.i.i.i, label %.noexc8.thread.i.i.i.i, label %.lr.ph.i.i.preheader.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %.noexc8.i.i.i.i
  %.sroa.5.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc9.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i
  %i.cx = phi ptr [ %i.dc, %.noexc9.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i ]
  %.sroa.16.0.i.i.i.i = phi i8 [ %i.du, %.noexc9.i.i.i.i ], [ %i.cp, %.lr.ph.i.i.preheader.i.i.i.i ]
  %.sroa.14.0.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %.noexc9.i.i.i.i ], [ %.val.i17.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i ]
  %.sroa.11.0.i.i.i.i = phi i64 [ %.sroa.6.0.copyload5.i.i.i.i.i.i, %.noexc9.i.i.i.i ], [ %.sroa.6.0.copyload5.i.i26.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i ]
  %.sroa.8.0.i.i.i.i = phi ptr [ %.sroa.5.0.copyload3.i.i.i.i.i.i, %.noexc9.i.i.i.i ], [ %.sroa.5.0.copyload3.i.i24.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i ] ; 3 uses
  %.sroa.1758.0.in.i.i.i.i = phi i64 [ %.sroa.1758.0.i.i.i.i, %.noexc9.i.i.i.i ], [ %i.bf, %.lr.ph.i.i.preheader.i.i.i.i ] ; 2 uses
  %.sroa.1356.0.i.i.i.i = phi i16 [ %i.do, %.noexc9.i.i.i.i ], [ %i.cj, %.lr.ph.i.i.preheader.i.i.i.i ] ; 2 uses
  %.sroa.9.0.i.i.i.i = phi ptr [ %.sroa.9.1.i.i.i.i, %.noexc9.i.i.i.i ], [ %.sroa.9.3.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i ] ; 2 uses
  %.sroa.055.0.i.i.i.i = phi ptr [ %.sroa.055.1.i.i.i.i, %.noexc9.i.i.i.i ], [ %.sroa.055.3.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i ] ; 2 uses
  %.sroa.1863.0.i.i.i.i = phi i64 [ %i.dv, %.noexc9.i.i.i.i ], [ %i.cq, %.lr.ph.i.i.preheader.i.i.i.i ]
  %.sroa.20.0.i.i.i.i = phi i64 [ %i.dy, %.noexc9.i.i.i.i ], [ %i.cu, %.lr.ph.i.i.preheader.i.i.i.i ]
  %i.cy = phi i64 [ %i.de, %.noexc9.i.i.i.i ], [ 1, %.lr.ph.i.i.preheader.i.i.i.i ] ; 4 uses
  %i.cz = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i.i.i, %.noexc9.i.i.i.i ], [ %.sroa.0.0.copyload1.i.i22.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i ] ; 3 uses
  %.sroa.1758.0.i.i.i.i = add i64 %.sroa.1758.0.in.i.i.i.i, -1 ; 2 uses
  %i.da = load i64, ptr %i.m, align 8, !range !333, !alias.scope !115850, !noalias !115834, !noundef !326
  %i.db = icmp eq i64 %i.cy, %i.da
  br i1 %i.db, label %bb.ah, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTTjNtNtB6_6string6StringbjEjEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTTjNtNtB6_6string6StringbjEjEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTTjNtNtB6_6string6StringbjEjEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.dc = phi ptr [ %.pre.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTTjNtNtB6_6string6StringbjEjEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i.i.i ], [ %i.cx, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [56 x i8], ptr %i.dc, i64 %i.cy ; 7 uses
  %.sroa.514.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i64 %.sroa.11.0.i.i.i.i, ptr %.sroa.514.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !115853
  %.sroa.14.16..sroa.514.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store i64 %.sroa.14.0.i.i.i.i, ptr %.sroa.14.16..sroa.514.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !115853
  %.sroa.16.16..sroa.514.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  store i8 %.sroa.16.0.i.i.i.i, ptr %.sroa.16.16..sroa.514.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !115853
  %.sroa.1863.16..sroa.514.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  store i64 %.sroa.1863.0.i.i.i.i, ptr %.sroa.1863.16..sroa.514.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !115853
  %.sroa.20.16..sroa.514.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  store i64 %.sroa.20.0.i.i.i.i, ptr %.sroa.20.16..sroa.514.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !115853
  store i64 %i.cz, ptr %i.dd, align 8, !noalias !115853
  %.sroa.413.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %.sroa.8.0.i.i.i.i, ptr %.sroa.413.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !115853
  %i.de = add nuw nsw i64 %i.cy, 1                ; 2 uses
  store i64 %i.de, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !115850, !noalias !115834
  %i.df = icmp eq i64 %.sroa.1758.0.i.i.i.i, 0
  br i1 %i.df, label %.noexc8.thread.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTTjNtNtB6_6string6StringbjEjEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i
  %.not11.i.i.i.i.i.i.i = icmp eq i16 %.sroa.1356.0.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge18.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i.i
  %i.dg = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.9.0.i.i.i.i, %bb.z ] ; 2 uses
  %i.dh = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.055.0.i.i.i.i, %bb.z ]
  %.val9.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.dg, align 16, !noalias !115854
  %i.di = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i, splat (i8 -1)
  %i.dj = getelementptr inbounds i8, ptr %i.dh, i64 -896 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.di to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge18.i.i.i.i.i.i.i

._crit_edge18.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.z
  %.sroa.9.1.i.i.i.i = phi ptr [ %.sroa.9.0.i.i.i.i, %bb.z ], [ %i.dk, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.055.1.i.i.i.i = phi ptr [ %.sroa.055.0.i.i.i.i, %bb.z ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.1356.0.i.i.i.i, %bb.z ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.dl = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.dm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.dn = zext nneg i16 %i.dm to i64
  %i.do = and i16 %i.dl, %.lcssa.i.i.i.i.i.i.i
  %i.dp = sub nsw i64 0, %i.dn
  %i.dq = getelementptr inbounds [56 x i8], ptr %.sroa.055.1.i.i.i.i, i64 %i.dp ; 3 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -56
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 -48 ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.dr, align 8, !noalias !115855, !noundef !326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !115856
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ds)
          to label %.noexc10.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !115856

.noexc10.i.i.i.i:                                 ; preds = %._crit_edge18.i.i.i.i.i.i.i
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 -8
  %i.du = load i8, ptr %i.dt, align 8, !range !338, !noalias !115856, !noundef !326
  %i.dv = invoke noundef i64 @_RNvMs6_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolNtB5_15TrackedConsumer4peak(ptr noundef nonnull align 8 %i.ds)
          to label %bb.ac unwind label %bb.aa, !noalias !115856

bb.aa:                                            ; preds = %.noexc10.i.i.i.i
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115857), !noalias !115850
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !115857, !noalias !115856 ; 2 uses
  %i.dx = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.dx, label %.body.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i.i, align 8, !alias.scope !115857, !noalias !115856, !nonnull !326, !noundef !326
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !115858
  br label %.body.i.i.i.i

bb.ac:                                            ; preds = %.noexc10.i.i.i.i
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !115856 ; 4 uses
  %.sroa.5.0.copyload3.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !115856 ; 3 uses
  %.sroa.6.0.copyload5.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i.i.i.i.i, align 8, !noalias !115856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !115856
  %i.dy = invoke noundef i64 @_RNvMs6_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolNtB5_15TrackedConsumer8reserved(ptr noundef nonnull align 8 %i.ds)
          to label %.noexc9.i.i.i.i unwind label %bb.ad, !noalias !115856

bb.ad:                                            ; preds = %bb.ac
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, 0
  br i1 %i.ea, label %.body.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload3.i.i.i.i.i.i) ], !noalias !115850
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload3.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !115859
  br label %.body.i.i.i.i

.noexc9.i.i.i.i:                                  ; preds = %bb.ac
  %.not.i.i7.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, -1
  br i1 %.not.i.i7.i.i.i.i, label %.noexc8.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ah
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = icmp eq i64 %i.cz, 0
  br i1 %i.ec, label %.body.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.i.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.i.i.i.i, i64 noundef %i.cz, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !115860
  br label %.body.i.i.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.cy, i64 noundef range(i64 1, 0) %.sroa.1758.0.in.i.i.i.i, i64 noundef 8, i64 noundef 56)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTTjNtNtB6_6string6StringbjEjEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i.i.i unwind label %bb.af, !noalias !115861

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTTjNtNtB6_6string6StringbjEjEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.ah
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !115850, !noalias !115834
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTTjNtNtB6_6string6StringbjEjEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge18.i.i.i.i.i.i.i, %._crit_edge18.i.i.i14.i.i.i.i
  %lpad.loopexit.split-lp147 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.v, %bb.u
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.eb, %bb.af ], [ %i.eb, %bb.ag ], [ %i.dz, %bb.ae ], [ %i.dw, %bb.ab ], [ %i.dw, %bb.aa ], [ %i.dz, %bb.ad ], [ %i.cv, %bb.y ], [ %i.cr, %bb.v ], [ %i.cr, %bb.u ], [ %i.cv, %bb.x ], [ %lpad.loopexit.split-lp147, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTTjNtNtBG_6string6StringbjEjEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.m) #73, !noalias !115834
  br label %.body.i.i

.noexc8.thread.i.i.i.i:                           ; preds = %.noexc9.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTTjNtNtB6_6string6StringbjEjEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i, %.noexc8.i.i.i.i, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !115862
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc8.thread.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCsJGrEYE2um7_9hashbrown3map4IterjNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerENCNvMs9_B1A_INtB1A_18TrackConsumersPoolNtB1A_13FairSpillPoolE10report_top0ENtNtNtB9_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !115834
  %i.ed = cmpxchg ptr %i.af, i8 1, i8 0 release monotonic, align 1, !noalias !115829
  %i.ee = extractvalue { i8, i1 } %i.ed, 1
  br i1 %i.ee, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api5mutex10MutexGuardNtNtCslnBYTBsvsQk_11parking_lot9raw_mutex8RawMutexINtNtCsJGrEYE2um7_9hashbrown3map7HashMapjNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerEEECsc85D0lJ81Z_16lance_datafusion.exit7.i.i, label %bb.aj, !prof !332

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.af, i1 noundef zeroext false)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api5mutex10MutexGuardNtNtCslnBYTBsvsQk_11parking_lot9raw_mutex8RawMutexINtNtCsJGrEYE2um7_9hashbrown3map7HashMapjNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerEEECsc85D0lJ81Z_16lance_datafusion.exit7.i.i unwind label %bb.ak, !noalias !115829

.body14.i.i:                                      ; preds = %.body17.i.i, %.body.i.i12.i.i, %bb.ak
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body18.i.i, %.body17.i.i ], [ %i.ef, %bb.ak ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i, %.body.i.i12.i.i ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTTjNtNtBG_6string6StringbjEjEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.q) #73, !noalias !115829
  br label %.body.i

bb.ak:                                            ; preds = %bb.ar, %bb.am, %bb.aj
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api5mutex10MutexGuardNtNtCslnBYTBsvsQk_11parking_lot9raw_mutex8RawMutexINtNtCsJGrEYE2um7_9hashbrown3map7HashMapjNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerEEECsc85D0lJ81Z_16lance_datafusion.exit7.i.i: ; preds = %bb.aj, %bb.ai
  %i.eg = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !115829, !nonnull !326, !noundef !326 ; 11 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !noalias !115829, !noundef !326 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115863)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !115864
  %i.ek = icmp samesign ult i64 %i.ej, 2
  br i1 %i.ek, label %.loopexit36.i.i, label %bb.al, !prof !332

bb.al:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api5mutex10MutexGuardNtNtCslnBYTBsvsQk_11parking_lot9raw_mutex8RawMutexINtNtCsJGrEYE2um7_9hashbrown3map7HashMapjNtNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4pool15TrackedConsumerEEECsc85D0lJ81Z_16lance_datafusion.exit7.i.i
  %i.el = icmp samesign ult i64 %i.ej, 21
  br i1 %i.el, label %bb.an, label %bb.am, !prof !332

bb.am:                                            ; preds = %bb.al
  invoke void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable14driftsort_mainTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB16_5sliceSBZ_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2M_18TrackConsumersPoolNtB2M_13FairSpillPoolE10report_tops_0E0INtNtB16_3vec3VecBZ_EECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 %i.eh, i64 noundef range(i64 0, 164703072086692426) %i.ej, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.loopexit36.thread.i.i unwind label %bb.ak, !noalias !115829

.loopexit36.thread.i.i:                           ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !115864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !115829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !115829
  %i.em = icmp ult i64 %i.ej, 164703072086692426
  tail call void @llvm.assume(i1 %i.em)
  %.sroa.0.0.i1192.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ej, i64 range(i64 1, 0) %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !115865
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.ej, 56
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.idx.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB1f_5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2W_18TrackConsumersPoolNtB2W_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i, %bb.an
  %.sroa.0.04.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i9.i.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB1f_5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2W_18TrackConsumersPoolNtB2W_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i ], [ %.sroa.0.01.i.i.i.i.i, %bb.an ] ; 7 uses
  %.pn3.i.i.i.i.i = phi ptr [ %.sroa.0.04.i.i.i.i.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB1f_5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2W_18TrackConsumersPoolNtB2W_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i ], [ %i.eh, %bb.an ] ; 2 uses
  %i.eo = getelementptr i8, ptr %.pn3.i.i.i.i.i, i64 104
  %.val9.i.i.i.i8.i.i = load i64, ptr %i.eo, align 8, !alias.scope !115866, !noalias !115829, !noundef !326 ; 3 uses
  %i.ep = getelementptr i8, ptr %.pn3.i.i.i.i.i, i64 48
  %.val10.i.i.i.i.i.i = load i64, ptr %i.ep, align 8, !alias.scope !115866, !noalias !115829, !noundef !326
  %i.eq = icmp ult i64 %.val10.i.i.i.i.i.i, %.val9.i.i.i.i8.i.i
  br i1 %i.eq, label %bb.ao, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB1f_5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2W_18TrackConsumersPoolNtB2W_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.04.i.i.i.i.i, i64 48, i1 false), !noalias !115867
  %.sroa.0.0.i.i.i.i.i.i134 = getelementptr inbounds i8, ptr %.sroa.0.04.i.i.i.i.i, i64 -56 ; 3 uses
end_hunk_3
begin_hunk_4_@_RNvXsn_NtNtCs40MM8ukkVQd_9sqlparser3ast5valueNtB5_5ValueNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.u, align 8
  %i.af = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5383, i64 noundef 18, ptr noundef nonnull %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.z

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %0, ptr %i.t, align 8
  %i.ag = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5388, i64 noundef 18, ptr noundef nonnull %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5387)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.z

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.s, align 8
  %i.ai = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5385, i64 noundef 24, ptr noundef nonnull %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.z

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.r, align 8
  %i.ak = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5386, i64 noundef 24, ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.z

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.q, align 8
  %i.am = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5401, i64 noundef 20, ptr noundef nonnull %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.z

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.p, align 8
  %i.ao = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5402, i64 noundef 20, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.z

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.o, align 8
  %i.aq = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5389, i64 noundef 29, ptr noundef nonnull %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.z

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.n, align 8
  %i.as = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5390, i64 noundef 29, ptr noundef nonnull %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.z

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.m, align 8
  %i.au = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5391, i64 noundef 35, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.l, align 8
  %i.aw = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5392, i64 noundef 35, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.z

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.k, align 8
  %i.ay = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5393, i64 noundef 28, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.z

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.j, align 8
  %i.ba = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5394, i64 noundef 28, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.z

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.i, align 8
  %i.bc = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5395, i64 noundef 34, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.z

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.h, align 8
  %i.be = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5396, i64 noundef 34, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.z

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.g, align 8
  %i.bg = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5397, i64 noundef 21, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.z

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.f, align 8
  %i.bi = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5399, i64 noundef 27, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5398)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.z

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %i.e, align 8
  %i.bk = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5400, i64 noundef 35, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5398)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.z

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %i.d, align 8
  %i.bm = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5403, i64 noundef 16, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.z

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.c, align 8
  %i.bo = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5384, i64 noundef 18, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.z

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bp, ptr %i.b, align 8
  %i.bq = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1725, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1067)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.z

bb.x:                                             ; preds = %bb.a
  %i.br = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1724, i64 noundef 4)
  br label %bb.z

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bs, ptr %i.a, align 8
  %i.bt = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1176, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.ad, %bb.c ], [ %i.af, %bb.d ], [ %i.ag, %bb.e ], [ %i.ai, %bb.f ], [ %i.ak, %bb.g ], [ %i.am, %bb.h ], [ %i.ao, %bb.i ], [ %i.aq, %bb.j ], [ %i.as, %bb.k ], [ %i.au, %bb.l ], [ %i.aw, %bb.m ], [ %i.ay, %bb.n ], [ %i.ba, %bb.o ], [ %i.bc, %bb.p ], [ %i.be, %bb.q ], [ %i.bg, %bb.r ], [ %i.bi, %bb.s ], [ %i.bk, %bb.t ], [ %i.bm, %bb.u ], [ %i.bo, %bb.v ], [ %i.bq, %bb.w ], [ %i.br, %bb.x ], [ %i.bt, %bb.y ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsn_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers17key_value_optionsNtB5_14KeyValueOptionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #1 !guid !123839 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !326 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !326
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXsx_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers17key_value_optionsNtB5_18KeyValueOptionKindNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !326, !noundef !326
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !326, !noundef !326
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.i, ptr nonnull %i.g, i64 %i.b)
  %i.j = icmp eq i32 %bcmp, 0
  br i1 %i.j, label %bb.c, label %_RNvXsx_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers17key_value_optionsNtB5_18KeyValueOptionKindNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123841)
  %i.m = load i64, ptr %i.k, align 8, !range !547, !alias.scope !123840, !noundef !326
  %i.n = tail call i64 @llvm.usub.sat.i64(i64 %i.m, i64 -9223372036854775786) ; 2 uses
  %i.o = load i64, ptr %i.l, align 8, !range !547, !alias.scope !123841, !noundef !326 ; 2 uses
  %i.p = tail call i64 @llvm.usub.sat.i64(i64 %i.o, i64 -9223372036854775786)
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %bb.d, label %_RNvXsx_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers17key_value_optionsNtB5_18KeyValueOptionKindNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  switch i64 %i.n, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ult i64 %i.o, -9223372036854775785
  tail call void @llvm.assume(i1 %i.r)
  %i.s = tail call noundef zeroext i1 @_RNvXNtNtCs40MM8ukkVQd_9sqlparser3ast5valueNtB2_13ValueWithSpanNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.l), !inline_history !123834
  br label %_RNvXsx_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers17key_value_optionsNtB5_18KeyValueOptionKindNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !123840, !noundef !326 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !123841, !noundef !326
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %bb.j, label %_RNvXsx_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers17key_value_optionsNtB5_18KeyValueOptionKindNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !123840, !nonnull !326, !noundef !326 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !123841, !nonnull !326, !noundef !326 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123843)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !123842, !noalias !123844, !noundef !326 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !123843, !noalias !123844, !noundef !326
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %_RNvXsx_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers17key_value_optionsNtB5_18KeyValueOptionKindNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !123843, !noalias !123844, !nonnull !326, !noundef !326
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !123842, !noalias !123844, !nonnull !326, !noundef !326
  %.not3.not = icmp eq i64 %i.ad, 0
  br i1 %.not3.not, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %i.al = add nuw i64 %.sroa.01.0.i.i4, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %i.ad
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.sroa.01.0.i.i4 = phi i64 [ %i.al, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.ak, i64 %.sroa.01.0.i.i4
  %i.an = getelementptr inbounds nuw [104 x i8], ptr %i.ai, i64 %.sroa.01.0.i.i4
  %i.ao = tail call fastcc noundef zeroext i1 @_RNvXsn_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers17key_value_optionsNtB5_14KeyValueOptionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.an), !noalias !123845, !inline_history !123838
  br i1 %i.ao, label %bb.i, label %_RNvXsx_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers17key_value_optionsNtB5_18KeyValueOptionKindNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

._crit_edge:                                      ; preds = %bb.i, %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.aq = load i8, ptr %i.ap, align 8, !range !338, !alias.scope !123842, !noalias !123844, !noundef !326
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.as = load i8, ptr %i.ar, align 8, !range !338, !alias.scope !123843, !noalias !123844, !noundef !326
  %i.at = icmp eq i8 %i.aq, %i.as
  br label %_RNvXsx_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers17key_value_optionsNtB5_18KeyValueOptionKindNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !123841, !nonnull !326, !noundef !326
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !123840, !nonnull !326, !noundef !326
  %i.ay = icmp eq i64 %i.u, 0
  br i1 %i.ay, label %_RNvXsx_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers17key_value_optionsNtB5_18KeyValueOptionKindNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.sroa.01.05.i = phi i64 [ %i.bc, %.lr.ph.i ], [ 0, %bb.j ] ; 3 uses
  %i.az = getelementptr inbounds nuw [80 x i8], ptr %i.ax, i64 %.sroa.01.05.i
  %i.ba = getelementptr inbounds nuw [80 x i8], ptr %i.av, i64 %.sroa.01.05.i
  %i.bb = tail call noundef zeroext i1 @_RNvXNtNtCs40MM8ukkVQd_9sqlparser3ast5valueNtB2_13ValueWithSpanNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ba), !noalias !123844 ; 2 uses
  %i.bc = add nuw i64 %.sroa.01.05.i, 1           ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.bc, %i.u
  %or.cond.not = select i1 %i.bb, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_RNvXsx_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers17key_value_optionsNtB5_18KeyValueOptionKindNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

_RNvXsx_NtNtNtCs40MM8ukkVQd_9sqlparser3ast7helpers17key_value_optionsNtB5_18KeyValueOptionKindNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit: ; preds = %.lr.ph, %.lr.ph.i, %bb.f, %bb.e, %bb.c, %bb.g, %._crit_edge, %bb.j, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.s, %bb.e ], [ %i.bb, %.lr.ph.i ], [ false, %bb.c ], [ false, %bb.f ], [ %i.at, %._crit_edge ], [ false, %bb.g ], [ true, %bb.j ], [ false, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsng_NtCs40MM8ukkVQd_9sqlparser3astNtB6_18HiveLoadDataFormatNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(656) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(656) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !123846 {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [328 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 328
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.c)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.b) #73
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 328, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.e, ptr noundef nonnull align 8 dereferenceable(328) %i.a, i64 328, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsni_NtCs40MM8ukkVQd_9sqlparser3astNtB6_18HiveLoadDataFormatNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(656) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(656) %1) unnamed_addr #1 !guid !123847 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXs7N_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.d = tail call fastcc noundef zeroext i1 @_RNvXs7N_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsnz_NtCs40MM8ukkVQd_9sqlparser3astNtB6_13HiveDelimiterNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !123848 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !403, !noundef !326 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsnz_NtCs40MM8ukkVQd_9sqlparser3astNtB6_13HiveDelimiterNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsnz_NtCs40MM8ukkVQd_9sqlparser3astNtB6_13HiveDelimiterNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt.4340, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXso_NtCs2bHstFFhpHt_17datafusion_common6scalarNtB5_11ScalarValueNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !123860 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i128, ptr %1, align 16, !range !429, !noundef !326 ; 3 uses
  %i.s = icmp ne i128 %i.r, 10
  tail call void @llvm.assume(i1 %i.s)
  %i.t = trunc nuw nsw i128 %i.r to i64
  %i.u = add nsw i64 %i.t, -2
  %i.v = icmp samesign ugt i128 %i.r, 1
  %i.w = select i1 %i.v, i64 %i.u, i64 8
  switch i64 %i.w, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
    i64 19, label %bb.v
    i64 20, label %bb.w
    i64 21, label %bb.x
    i64 22, label %bb.y
    i64 23, label %bb.z
    i64 24, label %bb.aa
    i64 25, label %bb.ab
    i64 26, label %bb.ac
    i64 27, label %bb.ad
    i64 28, label %bb.ae
    i64 29, label %bb.af
    i64 30, label %bb.ag
    i64 31, label %bb.ah
    i64 32, label %bb.ai
    i64 33, label %bb.aj
    i64 34, label %bb.ak
    i64 35, label %bb.al
    i64 36, label %bb.am
    i64 37, label %bb.an
    i64 38, label %bb.ao
    i64 39, label %bb.ap
end_hunk_4
