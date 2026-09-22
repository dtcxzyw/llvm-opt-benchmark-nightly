Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_reqwest_client-732c24861560a46e.lance_namespace_reqwest_client.13bd7863b837ad8b-cgu.0?download=true
inline.NumInlined: 526
inline.NumDeleted: 236
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0Cs1H4IRjoHvx7_30lance_namespace_reqwest_client:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.030.i, i64 4
  %i.ak = icmp ult ptr %i.ai, %i.ag
  br i1 %i.ak, label %.lr.ph.i, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCscI6d9CVNmLh_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.d, %.preheader9.split
  %.sroa.015.0.copyload.i = load i32, ptr %i.ag, align 1, !alias.scope !617, !noalias !618
  %.sroa.017.0.copyload.i = load i32, ptr %i.i, align 1, !alias.scope !618, !noalias !617
  %i.al = icmp eq i32 %.sroa.015.0.copyload.i, %.sroa.017.0.copyload.i
  br i1 %i.al, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern14small_slice_eq.exit.thread6, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern14small_slice_eq.exit.thread

_RNvNtNtCscI6d9CVNmLh_4core3str7pattern14small_slice_eq.exit.thread6: ; preds = %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern14small_slice_eq.exit.thread, %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %.preheader.us, %.lr.ph.2, %bb.b, %bb.c, %bb.a
  %.sroa.03.0 = phi i1 [ true, %.lr.ph.2 ], [ false, %bb.a ], [ %exitcond.not.i.us23, %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %bb.c ], [ true, %bb.b ], [ %exitcond.not.i.us23, %.preheader.us ], [ false, %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern14small_slice_eq.exit.thread ], [ true, %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern14small_slice_eq.exit ]
  ret i1 %.sroa.03.0

_RNvNtNtCscI6d9CVNmLh_4core3str7pattern14small_slice_eq.exit.thread: ; preds = %.lr.ph.i, %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern14small_slice_eq.exit
  %i.am = shl nuw i16 1, %i.ab
  %i.an = xor i16 %i.am, -1
  %i.ao = and i16 %.sroa.0.011, %i.an             ; 2 uses
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern14small_slice_eq.exit.thread6, label %.preheader9.split
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client4apis13configurationNtB2_13Configuration3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXs_NtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client4apis13configurationNtB4_13ConfigurationNtNtCscI6d9CVNmLh_4core7default7Default7default(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models11boost_queryNtB2_10BoostQuery3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !623
  %i.b = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #25, !noalias !623 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e, !prof !4

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #29
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models9fts_query8FtsQueryEBH_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1) #27
          to label %.thread unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  store ptr %i.b, ptr %i.a, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !624
  %i.f = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #25, !noalias !624 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.i, !prof !4

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #29
          to label %.noexc6 unwind label %bb.g

.noexc6:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models9fts_query8FtsQueryEBH_(ptr noalias noundef nonnull align 8 dereferenceable(40) %2) #27
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

.body:                                            ; preds = %bb.g
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models9fts_query8FtsQueryEEB1g_(ptr noalias noundef align 8 dereferenceable(8) %i.a) #27
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.k, align 8
  store i32 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.j:                                             ; preds = %.thread, %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.k:                                             ; preds = %.body, %.thread
  %.pn10 = phi { ptr, i32 } [ %i.d, %.thread ], [ %i.h, %.body ]
  resume { ptr, i32 } %.pn10

.thread:                                          ; preds = %bb.c
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models9fts_query8FtsQueryEBH_(ptr noalias noundef align 8 dereferenceable(40) %2) #27
          to label %bb.k unwind label %bb.j
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models14fragment_statsNtB2_13FragmentStats3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !627
  %i.a = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #25, !noalias !627 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #29, !noalias !627
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %3, i64 56, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.d, align 8
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models15partition_fieldNtB2_14PartitionField3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.010.0.copyload = load i64, ptr %2, align 8 ; 3 uses
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.512.0.copyload = load ptr, ptr %.sroa.512.0..sroa_idx, align 8 ; 3 uses
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.615.0.copyload = load i64, ptr %.sroa.615.0..sroa_idx, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !632
  %i.a = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef 8) #25, !noalias !632 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.e, !prof !4

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #29
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models20json_arrow_data_type17JsonArrowDataTypeEBH_(ptr noalias noundef nonnull align 8 dereferenceable(64) %3) #27
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx6, align 8
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx8, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.010.0.copyload, ptr %i.e, align 8
  %.sroa.512.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.512.0.copyload, ptr %.sroa.512.0..sroa_idx13, align 8
  %.sroa.615.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.615.0.copyload, ptr %.sroa.615.0..sroa_idx16, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.a, ptr %i.h, align 8
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit: ; preds = %bb.c
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models19partition_transform18PartitionTransformEEEB1C_(ptr null) #27
  %i.i = icmp eq i64 %.sroa.010.0.copyload, 0
  br i1 %i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit
  %4 = shl nuw i64 %.sroa.010.0.copyload, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.512.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.512.0.copyload, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 4) #25
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit: ; preds = %bb.f, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit
  %i.j = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !633
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit: ; preds = %bb.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_fieldNtB2_14JsonArrowField3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i1 noundef zeroext %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !638
  %i.a = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef 8) #25, !noalias !638 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.f, !prof !4

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #29
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models20json_arrow_data_type17JsonArrowDataTypeEBH_(ptr noalias noundef nonnull align 8 dereferenceable(64) %3) #27
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

.body:                                            ; preds = %bb.c
  %i.e = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.e, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !639
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.f, align 8
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx4, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = zext i1 %2 to i8
  store i8 %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.i, align 8
  ret void

bb.g:                                             ; preds = %bb.e, %.body
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models19query_table_requestNtB2_17QueryTableRequest3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -1, ptr %i.a, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !642
  %i.b = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #25, !noalias !642 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #29
          to label %.noexc unwind label %.body

.noexc:                                           ; preds = %bb.b
  unreachable

.body:                                            ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models26query_table_request_vector23QueryTableRequestVectorEBH_(ptr noalias noundef nonnull align 8 dereferenceable(48) %2) #27
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models35query_table_request_full_text_query30QueryTableRequestFullTextQueryEEEB1C_(ptr null) #27
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit13 unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 -1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr null, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 %1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.b, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 -1, ptr %i.u, align 8
  store i64 0, ptr %0, align 8
  store <4 x i8> splat (i8 2), ptr %i.h, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %.body
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit13: ; preds = %.body
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models27query_table_request_columns24QueryTableRequestColumnsEEEB1C_(ptr null) #27
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models8identity8IdentityEEEB1C_(ptr null) #27
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models20structured_fts_queryNtB2_18StructuredFtsQuery3new(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !645
  %i.a = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #25, !noalias !645 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models9fts_query8FtsQueryE3newBK_.exit, !prof !4

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #29
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models9fts_query8FtsQueryEBH_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) #27
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models9fts_query8FtsQueryE3newBK_.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models24get_table_stats_responseNtB2_21GetTableStatsResponse3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !648
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #25, !noalias !648 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d, !prof !4

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #29
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models19commit_table_result17CommitTableResultE8grow_oneBS_:bb.a
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !672
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !672
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !672
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !672, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !672, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !672
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !672, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !672
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !672
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !672
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCskpEw9nXJLNc_10serde_core7private7content7ContentE8grow_oneCs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !675
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !675
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !675
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !675, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !675, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !675
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !675, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !675
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !675
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !675
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EE8grow_oneCs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !678
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !678
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 48), !noalias !678
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !678, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !678, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !678
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !678, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !678
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !678
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !678
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskpEw9nXJLNc_10serde_core7private7content7ContentBN_EE8grow_oneCs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !681
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !681
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 64), !noalias !681
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !681, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !681, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !681
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !681, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !681
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !681
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !681
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE4growCs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !3 ; 4 uses
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE8grow_oneCs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.b = load i64, ptr %0, align 8, !range !10, !alias.scope !684, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !684, !noundef !3 ; 2 uses
  %i.e = sub i64 %i.a, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !684, !noundef !3 ; 3 uses
  %.not.i = icmp ugt i64 %i.g, %i.e
  br i1 %.not.i, label %bb.b, label %_RNvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE24handle_capacity_increaseCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit

bb.b:                                             ; preds = %bb.a
  %i.h = sub i64 %i.a, %i.g                       ; 4 uses
  %i.i = sub i64 %i.d, %i.h                       ; 3 uses
  %i.j = icmp ule i64 %i.h, %i.i
  %i.k = sub nsw i64 %i.b, %i.a
  %.not2.i = icmp ult i64 %i.k, %i.i
  %or.cond.i = select i1 %i.j, i1 true, i1 %.not2.i
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 %i.b, %i.h                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !684, !nonnull !3, !noundef !3 ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.g
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.l
  %i.q = shl i64 %i.h, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.o, i64 %i.q, i1 false), !noalias !684
  store i64 %i.l, ptr %i.f, align 8, !alias.scope !684
  br label %_RNvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE24handle_capacity_increaseCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !684, !nonnull !3, !noundef !3 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.a
  %i.u = shl i64 %i.i, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !noalias !684
  br label %_RNvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE24handle_capacity_increaseCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit

_RNvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE24handle_capacity_increaseCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 257) %3) unnamed_addr #8 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !8
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #25
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.j = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #25
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %storemerge14 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.n, align 8
  store i64 %storemerge14, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 48, 121) %2, ptr noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val16 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val17 = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.c = add i64 %.val17, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val16, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.i = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val16, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val16, i64 %.27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.w = lshr i64 %.pre13, 3
  %i.x = mul nuw i64 %i.w, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.04.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !3
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg12 = mul i64 %2, %.neg
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg12 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %.val15 = load i64, ptr %i.b, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i = and i64 %.val15, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !687
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i19, label %._crit_edge.i18, !prof !6

._crit_edge.i18:                                  ; preds = %.lr.ph.i19, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i19 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i19 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val15                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !3
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.g:                                             ; preds = %._crit_edge.i18
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i19:                                       ; preds = %bb.f, %.lr.ph.i19
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i19 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i19 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val15           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !687
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i19, label %._crit_edge.i18, !prof !7

_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i18
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i18 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val15
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !13

bb.h:                                             ; preds = %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg13 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg14 = mul i64 %2, %.neg13
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg14 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !3
  %i.bm = lshr i64 %i.aj, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val15
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.bu = lshr i64 %i.aj, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val15, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !3
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
end_hunk_1
begin_hunk_2_@_RNvNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client4apis17parse_deep_object:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5170.0..sroa_idx171 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6173.0..sroa_idx174 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %.lr.ph232
  %i.au = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph232 ], [ %i.dk, %.loopexit ] ; 4 uses
  %i.av = phi i64 [ 0, %.lr.ph232 ], [ %i.dl, %.loopexit ] ; 13 uses
  %.sroa.5.0178230 = phi ptr [ null, %.lr.ph232 ], [ %.sroa.07.0.i.i.i, %.loopexit ] ; 2 uses
  %.sroa.14.0229 = phi i64 [ %i.af, %.lr.ph232 ], [ %.sroa.78.0.i.i.i, %.loopexit ] ; 6 uses
  %.sroa.22.0228 = phi i64 [ %i.ac, %.lr.ph232 ], [ %i.aw, %.loopexit ]
  %.sroa.9.0227 = phi i64 [ %i.ag, %.lr.ph232 ], [ 0, %.loopexit ] ; 2 uses
  %i.aw = add i64 %.sroa.22.0228, -1              ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.5.0178230, null
  br i1 %.not.i.i, label %bb.d, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ax = inttoptr i64 %.sroa.9.0227 to ptr       ; 3 uses
  %i.ay = icmp eq i64 %.sroa.14.0229, 0
  br i1 %i.ay, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter = and i64 %.sroa.14.0229, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ax, %.lr.ph.i.i.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.ba, %.lr.ph.i.i.prol ], [ %.sroa.14.0229, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 632
  %i.ba = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.az, align 8, !noalias !743, !nonnull !3, !noundef !3 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !692

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %i.ax, %.lr.ph.i.i.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %.sroa.14.0229, %.lr.ph.i.i.preheader ], [ %i.ba, %.lr.ph.i.i.prol ]
  %i.bb = icmp ult i64 %.sroa.14.0229, 8
  br i1 %i.bb, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.bk, %.lr.ph.i.i ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 632
  %.sroa.013.0.i.i = load ptr, ptr %i.bc, align 8, !noalias !743, !nonnull !3, !noundef !3
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 632
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.bd, align 8, !noalias !743, !nonnull !3, !noundef !3
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 632
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.be, align 8, !noalias !743, !nonnull !3, !noundef !3
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 632
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.bf, align 8, !noalias !743, !nonnull !3, !noundef !3
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 632
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.bg, align 8, !noalias !743, !nonnull !3, !noundef !3
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 632
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.bh, align 8, !noalias !743, !nonnull !3, !noundef !3
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 632
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.bi, align 8, !noalias !743, !nonnull !3, !noundef !3
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 632
  %i.bk = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.bj, align 8, !noalias !743, !nonnull !3, !noundef !3 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i, label %.lr.ph.i.i

_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.59.0.copyload.i.i = phi i64 [ %.sroa.14.0229, %bb.c ], [ 0, %bb.d ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i = phi i64 [ %.sroa.9.0227, %bb.c ], [ 0, %bb.d ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %.sroa.5.0178230, %bb.c ], [ %i.ax, %bb.d ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 626
  %i.bn = load i16, ptr %i.bm, align 2, !noalias !745, !noundef !3
  %i.bo = zext i16 %i.bn to i64
  %i.bp = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.bo
  br i1 %i.bp, label %bb.g, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i, %bb.e
  %.sroa.0.022.i.i.i.i = phi ptr [ %i.br, %bb.e ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i = phi i64 [ %i.bt, %bb.e ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 352
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !746, !noundef !3 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.e
  %i.bs = zext i16 %i.bv to i64
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bt = add i64 %.sroa.5.021.i.i.i.i, 1         ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 624
  %i.bv = load i16, ptr %i.bu, align 8, !noalias !746 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 626
  %i.bx = load i16, ptr %i.bw, align 2, !noalias !745, !noundef !3
  %i.by = icmp ult i16 %i.bv, %i.bx
  br i1 %i.by, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #29
          to label %.noexc.i.i unwind label %bb.j, !noalias !747

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.bs, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i ] ; 6 uses
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bt, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i = phi ptr [ %i.br, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i ] ; 5 uses
  %i.bz = icmp eq i64 %.sroa.7.0.ph.i.i.i, 0
  br i1 %i.bz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ca = add nuw nsw i64 %.sroa.10.0.ph.i.i.i, 1
  br label %.loopexit194

bb.i:                                             ; preds = %bb.g
  %i.cb = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i, i64 640
  %i.cd = getelementptr [8 x i8], ptr %i.cc, i64 %.sroa.10.0.ph.i.i.i ; 2 uses
  %xtraiter330 = and i64 %.sroa.7.0.ph.i.i.i, 7   ; 2 uses
  %lcmp.mod331.not = icmp eq i64 %xtraiter330, 0
  br i1 %lcmp.mod331.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.prol = phi ptr [ %i.ce, %.prol.preheader ], [ %i.cd, %bb.i ]
  %.sroa.019.0.in.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i, %bb.i ]
  %prol.iter332 = phi i64 [ %prol.iter332.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.prol, align 8, !noalias !748, !nonnull !3, !noundef !3 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.prol, i64 632 ; 2 uses
  %prol.iter332.next = add i64 %prol.iter332, 1   ; 2 uses
  %prol.iter332.cmp.not = icmp eq i64 %prol.iter332.next, %xtraiter330
  br i1 %prol.iter332.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !706

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.unr = phi ptr [ %i.cd, %bb.i ], [ %i.ce, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader ]
  %i.cf = icmp ult i64 %.sroa.7.0.ph.i.i.i, 8
  br i1 %i.cf, label %.loopexit194, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i = phi ptr [ %i.co, %.new ], [ %.sroa.017.0.in.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i, align 8, !noalias !748, !nonnull !3, !noundef !3
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i, i64 632
  %.sroa.017.0.i.i.i.i.1 = load ptr, ptr %i.cg, align 8, !noalias !748, !nonnull !3, !noundef !3
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.1, i64 632
  %.sroa.017.0.i.i.i.i.2 = load ptr, ptr %i.ch, align 8, !noalias !748, !nonnull !3, !noundef !3
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.2, i64 632
  %.sroa.017.0.i.i.i.i.3 = load ptr, ptr %i.ci, align 8, !noalias !748, !nonnull !3, !noundef !3
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.3, i64 632
  %.sroa.017.0.i.i.i.i.4 = load ptr, ptr %i.cj, align 8, !noalias !748, !nonnull !3, !noundef !3
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.4, i64 632
  %.sroa.017.0.i.i.i.i.5 = load ptr, ptr %i.ck, align 8, !noalias !748, !nonnull !3, !noundef !3
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.5, i64 632
  %.sroa.017.0.i.i.i.i.6 = load ptr, ptr %i.cl, align 8, !noalias !748, !nonnull !3, !noundef !3
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.6, i64 632
  %.sroa.019.0.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.7 = load ptr, ptr %i.cm, align 8, !noalias !748, !nonnull !3, !noundef !3 ; 2 uses
  %i.cn = icmp eq i64 %.sroa.019.0.i.i.i.i.7, 0
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.7, i64 632
  br i1 %i.cn, label %.loopexit194, label %.new

bb.j:                                             ; preds = %bb.f
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit193, %.loopexit.split-lp.loopexit, %bb.ao, %.body139, %bb.ad, %bb.ac, %bb.v, %bb.u, %bb.p, %bb.o, %bb.s, %bb.ar
  %.pn89 = phi { ptr, i32 } [ %.pn87, %bb.v ], [ %.pn, %bb.ad ], [ %i.fn, %bb.ar ], [ %i.dc, %bb.p ], [ %i.dg, %bb.s ], [ %lpad.phi201, %bb.ao ], [ %i.dc, %bb.o ], [ %.pn87, %bb.u ], [ %.pn, %bb.ac ], [ %lpad.phi201, %.body139 ], [ %lpad.loopexit, %.loopexit193 ], [ %lpad.loopexit195, %.loopexit.split-lp.loopexit ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef align 8 dereferenceable(24) %i.s) #27
  resume { ptr, i32 } %.pn89

.loopexit193:                                     ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.n, %bb.l, %bb.k
  %lpad.loopexit195 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit194:                                     ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.78.0.i.i.i = phi i64 [ %i.ca, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.7, %.new ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i, i64 360
  %i.cr = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %.sroa.10.0.ph.i.i.i
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.cs, ptr %i.r, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.0.ph.i.i.i) ]
  %i.cu = load i8, ptr %i.ct, align 8, !range !742, !noundef !3
  switch i8 %i.cu, label %bb.k [
    i8 3, label %bb.l
    i8 4, label %bb.m
    i8 5, label %bb.n
  ]

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

bb.k:                                             ; preds = %.loopexit194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.t, ptr %i.d, align 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs1H4IRjoHvx7_30lance_namespace_reqwest_client, ptr %.sroa.442.0..sroa_idx, align 8
  store ptr %i.r, ptr %i.aq, align 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs40k4W9msRzi_5alloc6string6StringNtB6_7Display3fmtCs1H4IRjoHvx7_30lance_namespace_reqwest_client, ptr %.sroa.480.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @5, ptr noundef nonnull %i.d)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit unwind label %.loopexit.split-lp.loopexit

bb.l:                                             ; preds = %.loopexit194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.t, ptr %i.h, align 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs1H4IRjoHvx7_30lance_namespace_reqwest_client, ptr %.sroa.446.0..sroa_idx, align 8
  store ptr %i.r, ptr %i.ao, align 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs40k4W9msRzi_5alloc6string6StringNtB6_7Display3fmtCs1H4IRjoHvx7_30lance_namespace_reqwest_client, ptr %.sroa.474.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @5, ptr noundef nonnull %i.h)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit100 unwind label %.loopexit.split-lp.loopexit

bb.m:                                             ; preds = %.loopexit194
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !3 ; 2 uses
  %.idx = shl nuw nsw i64 %i.cy, 5
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx
  %i.da = icmp eq i64 %i.cy, 0
  br i1 %i.da, label %.loopexit, label %.lr.ph

bb.n:                                             ; preds = %.loopexit194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.t, ptr %i.o, align 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs1H4IRjoHvx7_30lance_namespace_reqwest_client, ptr %.sroa.450.0..sroa_idx, align 8
  store ptr %i.r, ptr %i.ah, align 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs40k4W9msRzi_5alloc6string6StringNtB6_7Display3fmtCs1H4IRjoHvx7_30lance_namespace_reqwest_client, ptr %.sroa.454.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull @5, ptr noundef nonnull %i.o)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit102 unwind label %.loopexit.split-lp.loopexit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit100: ; preds = %bb.l
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.0159.0.copyload = load i64, ptr %i.i, align 8 ; 3 uses
  %.sroa.5161.0.copyload = load ptr, ptr %.sroa.5161.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.db)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit100
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = icmp eq i64 %.sroa.0159.0.copyload, 0
  br i1 %i.dd, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5161.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5161.0.copyload, i64 noundef %.sroa.0159.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !749
  br label %.body

bb.q:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit100
  store i64 %.sroa.0159.0.copyload, ptr %i.j, align 8
  store ptr %.sroa.5161.0.copyload, ptr %.sroa.5161.0..sroa_idx162, align 8
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx164, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !750)
  %i.de = load i64, ptr %i.s, align 8, !range !10, !alias.scope !750, !noalias !751, !noundef !3
  %i.df = icmp eq i64 %i.av, %i.de
  br i1 %i.df, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EE8grow_oneCs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.t unwind label %bb.s, !noalias !751

bb.s:                                             ; preds = %bb.r
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.j) #27, !noalias !750
  br label %.body

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.dh = load ptr, ptr %i.x, align 8, !alias.scope !750, !noalias !751, !nonnull !3, !noundef !3 ; 2 uses
  %i.di = getelementptr inbounds nuw [48 x i8], ptr %i.dh, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.di, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.j, i64 48, i1 false), !noalias !750
  %i.dj = add i64 %i.av, 1                        ; 2 uses
  store i64 %i.dj, ptr %i.y, align 8, !alias.scope !750, !noalias !751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.loopexit

.loopexit:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit114, %bb.m, %bb.as, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit138, %bb.t
  %i.dk = phi ptr [ %i.dh, %bb.t ], [ %i.au, %bb.m ], [ %i.fo, %bb.as ], [ %i.fc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit138 ], [ %i.eg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit114 ]
  %i.dl = phi i64 [ %i.dj, %bb.t ], [ %i.av, %bb.m ], [ %i.fq, %bb.as ], [ %i.fe, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit138 ], [ %i.ei, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit114 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.dm = icmp eq i64 %i.aw, 0
  br i1 %i.dm, label %._crit_edge, label %bb.c

.lr.ph:                                           ; preds = %bb.m, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit114
  %i.dn = phi i64 [ %i.ei, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit114 ], [ %i.av, %bb.m ] ; 5 uses
  %i.do = phi ptr [ %i.eg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit114 ], [ %i.au, %bb.m ]
  %.sroa.0152.0225 = phi ptr [ %i.dp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit114 ], [ %i.cw, %bb.m ] ; 2 uses
  %.sroa.7.0224 = phi i64 [ %i.dq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit114 ], [ 0, %bb.m ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0152.0225, i64 32 ; 2 uses
  %i.dq = add nuw nsw i64 %.sroa.7.0224, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %.sroa.7.0224, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.t, ptr %i.k, align 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs1H4IRjoHvx7_30lance_namespace_reqwest_client, ptr %.sroa.460.0..sroa_idx, align 8
  store ptr %i.r, ptr %i.ak, align 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs40k4W9msRzi_5alloc6string6StringNtB6_7Display3fmtCs1H4IRjoHvx7_30lance_namespace_reqwest_client, ptr %.sroa.464.0..sroa_idx, align 8
  store ptr %i.n, ptr %i.al, align 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.468.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @6, ptr noundef nonnull %i.k)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit105 unwind label %.loopexit193

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit105: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.0154.0.copyload = load i64, ptr %i.l, align 8 ; 4 uses
  %.sroa.5155.0.copyload = load ptr, ptr %.sroa.5155.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.8156.0.copyload = load i64, ptr %.sroa.8156.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client4apis17parse_deep_object(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.5155.0.copyload, i64 noundef %.sroa.8156.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0152.0225)
          to label %bb.x unwind label %bb.w

bb.u:                                             ; preds = %bb.z, %bb.w
  %.pn87 = phi { ptr, i32 } [ %i.ds, %bb.w ], [ %i.ef, %bb.z ] ; 2 uses
  %i.dr = icmp eq i64 %.sroa.0154.0.copyload, 0
  br i1 %i.dr, label %.body, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5155.0.copyload, i64 noundef %.sroa.0154.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !752
  br label %.body

bb.w:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit105
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.x:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit105
  %i.dt = load ptr, ptr %i.am, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.du = load i64, ptr %i.an, align 8, !noundef !3 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !753)
  %i.dv = load i64, ptr %i.s, align 8, !range !10, !alias.scope !754, !noundef !3
  %i.dw = sub i64 %i.dv, %i.dn
  %i.dx = icmp ugt i64 %i.du, %i.dw
  br i1 %i.dx, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.thread.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i, !prof !4

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.thread.i: ; preds = %bb.x
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.dn, i64 noundef %i.du, i64 noundef 8, i64 noundef 48)
          to label %.noexc109 unwind label %bb.z

.noexc109:                                        ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.thread.i
  %i.dy = load i64, ptr %i.y, align 8, !alias.scope !753, !noundef !3 ; 2 uses
  %i.dz = icmp ult i64 %i.dy, 192153584101141163
  call void @llvm.assume(i1 %i.dz)
  br label %bb.y

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i: ; preds = %bb.x
  %i.ea = icmp ult i64 %i.dn, 192153584101141163
  call void @llvm.assume(i1 %i.ea)
  %.not.i = icmp eq i64 %i.du, 0
  br i1 %.not.i, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i, label %bb.y

bb.y:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i, %.noexc109
  %i.eb = phi i64 [ %i.dy, %.noexc109 ], [ %i.dn, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i ] ; 2 uses
  %i.ec = load ptr, ptr %i.x, align 8, !alias.scope !753, !nonnull !3, !noundef !3 ; 2 uses
  %i.ed = getelementptr inbounds nuw [48 x i8], ptr %i.ec, i64 %i.eb
  %i.ee = mul i64 %i.du, 48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ed, ptr nonnull readonly align 8 %i.dt, i64 %i.ee, i1 false), !noalias !753
  br label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i

bb.z:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.thread.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef align 8 dereferenceable(24) %i.m) #27
  br label %bb.u

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i, %bb.y
  %i.eg = phi ptr [ %i.ec, %bb.y ], [ %i.do, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i ] ; 2 uses
  %i.eh = phi i64 [ %i.eb, %bb.y ], [ %i.dn, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i ]
end_hunk_2
