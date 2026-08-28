Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.12?download=true
inline.NumInlined: 8307
inline.NumDeleted: 3471
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtB2d_9Persister14load_snapshots012get_snapshot0EE3newCsgsNUVCRJO2f_13influxdb3_lib:bb.a
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNvNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtB2Z_9Persister14load_snapshots012get_snapshot0EEEE3newCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.e, ptr noundef nonnull align 8 dereferenceable(216) %i.b, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.j, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !18668
  %i.m = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9793) 64, i64 noundef range(i64 8, 129) 8) #28, !noalias !18668 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB16_15futures_ordered12OrderWrapperNCNvNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtB3q_9Persister14load_snapshots012get_snapshot0EEEE3newCsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !192

bb.e:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNvNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtB2Z_9Persister14load_snapshots012get_snapshot0EEEE3newCsgsNUVCRJO2f_13influxdb3_lib.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #37
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1k_15futures_ordered12OrderWrapperNCNvNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtB3E_9Persister14load_snapshots012get_snapshot0EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #36
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB16_15futures_ordered12OrderWrapperNCNvNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtB3q_9Persister14load_snapshots012get_snapshot0EEEE3newCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperNCNvNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtB2Z_9Persister14load_snapshots012get_snapshot0EEEE3newCsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.r, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtB2d_9Persister14load_snapshots012get_snapshot0EE4pushCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(144) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [216 x i8], align 8               ; 12 uses
  %i.b = alloca [152 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 144, i1 false)
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.f = invoke noundef nonnull ptr @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBM_15futures_ordered12OrderWrapperNCNvNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtB35_9Persister14load_snapshots012get_snapshot0EEE9downgradeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperNCNvNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtB2j_9Persister14load_snapshots012get_snapshot0EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.b)
          to label %common.resume unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = ptrtoint ptr %i.h to i64
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(152) %i.b, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.k, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 209
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !18671
  %i.l = tail call noundef align 8 dereferenceable_or_null(216) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9793) 216, i64 noundef range(i64 8, 129) 8) #28, !noalias !18671 ; 8 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.g, !prof !192

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 216) #37
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1k_15futures_ordered12OrderWrapperNCNvNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtB3d_9Persister14load_snapshots012get_snapshot0EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 dereferenceable(216) %i.a) #36
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.l, ptr noundef nonnull align 8 dereferenceable(216) %i.a, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.p monotonic, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = atomicrmw xchg ptr %i.r, ptr %i.q acq_rel, align 8 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !3, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.z = load atomic ptr, ptr %i.y acquire, align 8
  %.not.i = icmp eq ptr %i.z, %i.x
  br i1 %.not.i, label %bb.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 176
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !3
  %i.ac = add i64 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  store atomic ptr %i.s, ptr %i.ae release, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  store ptr %i.q, ptr %i.af, align 8
  br label %bb.k

.critedge.i:                                      ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  store i64 1, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  store atomic ptr null, ptr %i.ah release, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge.i
  %i.ai = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  store atomic ptr null, ptr %i.aj monotonic, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.al = atomicrmw xchg ptr %i.ak, ptr %i.q acq_rel, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 184
  store atomic ptr %i.q, ptr %i.am release, align 8
  ret void

bb.l:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE12release_taskCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = atomicrmw xchg ptr %i.b, i8 1 seq_cst, align 1
  %i.d = icmp eq i8 %i.c, 0                       ; 2 uses
  %.sroa.0.0.sroa.speculated = load ptr, ptr %i.a, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.sroa.speculated, i64 24 ; 3 uses
  %.val = load ptr, ptr %i.e, align 8, !noundef !3 ; 4 uses
  %i.f = getelementptr i8, ptr %.sroa.0.0.sroa.speculated, i64 32
  %.val6 = load ptr, ptr %i.f, align 8            ; 6 uses
  %i.g = icmp eq ptr %.val, null
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.h = load ptr, ptr %.val6, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.h(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !962, !invariant.load !3 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !963, !invariant.load !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #28
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !962, !invariant.load !3 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !963, !invariant.load !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #28
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g
  store ptr null, ptr %i.e, align 8
  br i1 %i.d, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEECsgsNUVCRJO2f_13influxdb3_lib.exit7

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.e, %bb.d, %bb.a
  store ptr null, ptr %i.e, align 8
  br i1 %i.d, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.i, %bb.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEECsgsNUVCRJO2f_13influxdb3_lib.exit
  ret void

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEECsgsNUVCRJO2f_13influxdb3_lib.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18677)
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !18680, !nonnull !3, !noundef !3
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !18680
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1V_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1V_6marker4SendEL_EEEE9drop_slowB3m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEECsgsNUVCRJO2f_13influxdb3_lib.exit7: ; preds = %bb.j, %bb.k, %.body
  resume { ptr, i32 } %i.n

bb.j:                                             ; preds = %.body
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18684)
  %i.w = load ptr, ptr %i.a, align 8, !alias.scope !18687, !nonnull !3, !noundef !3
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !18687
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEECsgsNUVCRJO2f_13influxdb3_lib.exit7

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1V_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1V_6marker4SendEL_EEEE9drop_slowB3m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEECsgsNUVCRJO2f_13influxdb3_lib.exit7 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE8is_emptyCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a monotonic, align 8
  %i.c = icmp eq ptr %i.b, null
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB1u_6marker4SendEL_EEE12release_taskCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = atomicrmw xchg ptr %i.b, i8 1 seq_cst, align 1
  %i.d = icmp eq i8 %i.c, 0                       ; 2 uses
  %.sroa.0.0.sroa.speculated = load ptr, ptr %i.a, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.sroa.speculated, i64 24 ; 3 uses
  %.val = load ptr, ptr %i.e, align 8, !noundef !3 ; 4 uses
  %i.f = getelementptr i8, ptr %.sroa.0.0.sroa.speculated, i64 32
  %.val6 = load ptr, ptr %i.f, align 8            ; 6 uses
  %i.g = icmp eq ptr %.val, null
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB4_6marker4SendEL_EEEECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.h = load ptr, ptr %.val6, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.h(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !962, !invariant.load !3 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB4_6marker4SendEL_EEEECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !963, !invariant.load !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #28
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB4_6marker4SendEL_EEEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !962, !invariant.load !3 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !963, !invariant.load !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #28
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g
  store ptr null, ptr %i.e, align 8
  br i1 %i.d, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB4_6marker4SendEL_EEEEECsgsNUVCRJO2f_13influxdb3_lib.exit7

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB4_6marker4SendEL_EEEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.e, %bb.d, %bb.a
  store ptr null, ptr %i.e, align 8
  br i1 %i.d, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB4_6marker4SendEL_EEEEECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB4_6marker4SendEL_EEEEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.i, %bb.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB4_6marker4SendEL_EEEECsgsNUVCRJO2f_13influxdb3_lib.exit
  ret void

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB4_6marker4SendEL_EEEECsgsNUVCRJO2f_13influxdb3_lib.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18691)
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !18694, !nonnull !3, !noundef !3
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !18694
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB4_6marker4SendEL_EEEEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1V_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB1V_6marker4SendEL_EEEE9drop_slowB3m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB4_6marker4SendEL_EEEEECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB4_6marker4SendEL_EEEEECsgsNUVCRJO2f_13influxdb3_lib.exit7: ; preds = %bb.j, %bb.k, %.body
  resume { ptr, i32 } %i.n

bb.j:                                             ; preds = %.body
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18698)
  %i.w = load ptr, ptr %i.a, align 8, !alias.scope !18701, !nonnull !3, !noundef !3
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !18701
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB4_6marker4SendEL_EEEEECsgsNUVCRJO2f_13influxdb3_lib.exit7

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1V_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB1V_6marker4SendEL_EEEE9drop_slowB3m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB4_6marker4SendEL_EEEEECsgsNUVCRJO2f_13influxdb3_lib.exit7 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB1u_6marker4SendEL_EEE8is_emptyCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a monotonic, align 8
  %i.c = icmp eq ptr %i.b, null
  ret i1 %i.c
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvNtCsjWl3uGiVprL_18influxdb3_commands5write7command000E28atomic_load_head_and_len_allCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1760
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.e
  %.sroa.0.0 = phi i64 [ %i.m, %bb.e ], [ 0, %bb.a ]
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %.sroa.0.0, 1
  ret { ptr, i64 } %i.j

bb.d:                                             ; preds = %bb.d, %bb.b
  %i.k = load atomic ptr, ptr %i.h acquire, align 8
  %.not = icmp eq ptr %i.k, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1776
  %i.m = load i64, ptr %i.l, align 8, !noundef !3
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvNtCsjWl3uGiVprL_18influxdb3_commands5write7command000E3newCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [1816 x i8], align 8              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1776
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1808
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i8 0, i64 32, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1809
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !18702
  %i.e = tail call noundef align 8 dereferenceable_or_null(1816) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9793) 1816, i64 noundef range(i64 8, 129) 8) #28, !noalias !18702 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvNtCsjWl3uGiVprL_18influxdb3_commands5write7command000EEE3newCsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !192

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1816) #37
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvNtCsjWl3uGiVprL_18influxdb3_commands5write7command000EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 dereferenceable(1816) %i.b) #36
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvNtCsjWl3uGiVprL_18influxdb3_commands5write7command000EEE3newCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1816) %i.e, ptr noundef nonnull align 8 dereferenceable(1816) %i.b, i64 1816, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.j, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !18705
  %i.m = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9793) 64, i64 noundef range(i64 8, 129) 8) #28, !noalias !18705 ; 3 uses
end_hunk_0
