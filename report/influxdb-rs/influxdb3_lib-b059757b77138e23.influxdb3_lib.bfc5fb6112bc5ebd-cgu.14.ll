Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.14?download=true
inline.NumInlined: 7854
inline.NumDeleted: 3329
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvMs_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufwriterINtB4_9BufWriterQINtNtCscdodAO9FK5_5alloc3vec3VechEE9flush_bufCsgsNUVCRJO2f_13influxdb3_lib
define internal fastcc noundef ptr @_RNvMs_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufwriterINtB4_9BufWriterQINtNtCscdodAO9FK5_5alloc3vec3VechEE9flush_bufCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %.not3.not = icmp eq i64 %i.d, 0
  br i1 %.not3.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  store i8 1, ptr %i.f, align 8
  %i.h = invoke { ptr, i64 } @_RNvMNvMs_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufwriterINtB7_9BufWriterpE9flush_bufNtB2_8BufGuard9remaining(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NvMs_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufwriterINtB9_9BufWriterpE9flush_bufNtB4_8BufGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMs_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufwriterINtBI_9BufWriterpE9flush_buf8BufGuardECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.j = extractvalue { ptr, i64 } %i.h, 0
  %i.k = extractvalue { ptr, i64 } %i.h, 1        ; 5 uses
  %.val = load ptr, ptr %i.g, align 8, !nonnull !4, !align !76, !noundef !4 ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef range(i64 0, -9223372036854775808) %i.k)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !16539, !noalias !16544, !noundef !4 ; 3 uses
  %i.n = icmp sgt i64 %i.m, -1
  call void @llvm.assume(i1 %i.n)
  %.not.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc
  store i64 %i.m, ptr %i.l, align 8, !alias.scope !16539, !noalias !16544
  store i8 0, ptr %i.f, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.a, %bb.e
  %.sroa.0.1 = phi ptr [ @403, %bb.e ], [ null, %bb.a ], [ null, %bb.f ]
  call void @_RNvXs_NvMs_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufwriterINtB9_9BufWriterpE9flush_bufNtB4_8BufGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.1

bb.f:                                             ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !16539, !noalias !16544, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %i.j, i64 range(i64 0, -9223372036854775808) %i.k, i1 false)
  %.pre.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !16539, !noalias !16544
  %i.r = add i64 %.pre.i.i.i, %i.k
  store i64 %i.r, ptr %i.l, align 8, !alias.scope !16539, !noalias !16544
  store i8 0, ptr %i.f, align 8
  %i.s = load i64, ptr %i.b, align 8, !noundef !4
  %i.t = add i64 %i.s, %i.k                       ; 2 uses
  store i64 %i.t, ptr %i.b, align 8
  %i.u = load ptr, ptr %i.a, align 8, !nonnull !4, !align !76, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !4 ; 2 uses
  %i.x = icmp sgt i64 %i.w, -1
  call void @llvm.assume(i1 %i.x)
  %.not = icmp ult i64 %i.t, %i.w
  br i1 %.not, label %bb.b, label %._crit_edge

bb.g:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMs_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufwriterINtBI_9BufWriterpE9flush_buf8BufGuardECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.i
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsaPYpPPxBPjS_8smallvecINtB5_8SmallVecAINtNtCs4DT25d3JcKH_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E21reserve_one_uncheckedCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(648) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !16548, !noalias !16551, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !16548, !noalias !16551
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsaPYpPPxBPjS_8smallvecINtB5_8SmallVecAINtNtCs4DT25d3JcKH_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E8try_growCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(648) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsaPYpPPxBPjS_8smallvec10infallibleuECsgsNUVCRJO2f_13influxdb3_lib.exit
    i64 0, label %bb.e
  ], !prof !16553

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #44
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #44
  unreachable

_RINvCsaPYpPPxBPjS_8smallvec10infallibleuECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @408) #44
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsaPYpPPxBPjS_8smallvecINtB5_8SmallVecAINtNtCs4DT25d3JcKH_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E8try_growCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(648) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 8 uses
  %i.d = icmp ult i64 %i.c, 17                    ; 2 uses
  %i.e = icmp ugt i64 %i.c, 16
  %i.f = load ptr, ptr %0, align 8, !alias.scope !16554, !noalias !16557, !nonnull !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !68

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @409, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @410) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 17
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = mul i64 %1, 40                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 230584300921369395
  br i1 %or.cond.not, label %bb.m, label %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayINtNtCs4DT25d3JcKH_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !16559

_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayINtNtCs4DT25d3JcKH_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayINtNtCs4DT25d3JcKH_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.k = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.c, 230584300921369395
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayINtNtCs4DT25d3JcKH_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit45, !prof !16559

bb.h:                                             ; preds = %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayINtNtCs4DT25d3JcKH_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #47 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayINtNtCs4DT25d3JcKH_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit45: ; preds = %bb.g
  %i.n = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.k, i64 noundef 8, i64 noundef %i.j) #47 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayINtNtCs4DT25d3JcKH_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayINtNtCs4DT25d3JcKH_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = mul nuw nsw i64 %i.c, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = mul i64 %.val, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.q, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.r = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.c, 230584300921369395
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsaPYpPPxBPjS_8smallvec10deallocateINtNtCs4DT25d3JcKH_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !16559

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16560
  store i64 0, ptr %i.a, align 8, !noalias !16560
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %i.s, align 8, !noalias !16560
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @366, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @365, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #44, !noalias !16560
  unreachable

_RINvCsaPYpPPxBPjS_8smallvec10deallocateINtNtCs4DT25d3JcKH_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.r, i64 noundef 8) #47
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayINtNtCs4DT25d3JcKH_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit45, %bb.h, %_RINvCsaPYpPPxBPjS_8smallvec10deallocateINtNtCs4DT25d3JcKH_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsaPYpPPxBPjS_8smallvec10deallocateINtNtCs4DT25d3JcKH_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayINtNtCs4DT25d3JcKH_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit45 ], [ %i.k, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsaPYpPPxBPjS_8smallvec10deallocateINtNtCs4DT25d3JcKH_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayINtNtCs4DT25d3JcKH_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsaPYpPPxBPjS_8smallvecINtB5_8SmallVecANtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter9directive15StaticDirectivej8_E21reserve_one_uncheckedCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(456) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !16563, !noalias !16566, !noundef !4 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 8
  %i.e = load ptr, ptr %0, align 8, !alias.scope !16563, !noalias !16566, !nonnull !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !16563, !noalias !16566 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16568)
  %i.n = icmp ult i64 %i.c, 9                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !68

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @409, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @410) #44, !noalias !16568
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 8
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsaPYpPPxBPjS_8smallvec10infallibleuECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsaPYpPPxBPjS_8smallvec10infallibleuECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul nuw nsw i64 %i.m, 56                 ; 3 uses
  %or.cond.not.i = icmp ugt i64 %.sroa.02.0, 164703072086692424
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter9directive15StaticDirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit.i, !prof !16559

_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter9directive15StaticDirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter9directive15StaticDirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.c, 164703072086692425
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter9directive15StaticDirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit45.i, !prof !16559

bb.j:                                             ; preds = %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter9directive15StaticDirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !16568
  %i.q = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #47, !noalias !16568 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter9directive15StaticDirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 56
  %i.t = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #47, !noalias !16568 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter9directive15StaticDirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter9directive15StaticDirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !16568
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !16568
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !16568
  br label %_RINvCsaPYpPPxBPjS_8smallvec10infallibleuECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul nuw nsw i64 %i.c, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 dereferenceable(456) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul i64 %i.g, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(456) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !16568
  %i.x = mul i64 %.sink.i.i, 56                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.c, 164703072086692425
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsaPYpPPxBPjS_8smallvec10deallocateNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter9directive15StaticDirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit.i, !prof !16559

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16571
  store i64 0, ptr %i.a, align 8, !noalias !16571
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !16571
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @366, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @365, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #44, !noalias !16571
  unreachable

_RINvCsaPYpPPxBPjS_8smallvec10deallocateNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter9directive15StaticDirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.m
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #47, !noalias !16568
  br label %_RINvCsaPYpPPxBPjS_8smallvec10infallibleuECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.o:                                             ; preds = %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter9directive15StaticDirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #44
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #44
  unreachable

_RINvCsaPYpPPxBPjS_8smallvec10infallibleuECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvCsaPYpPPxBPjS_8smallvec10deallocateNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter9directive15StaticDirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @408) #44
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsaPYpPPxBPjS_8smallvecINtB5_8SmallVecANtNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter3env9directive9Directivej8_E21reserve_one_uncheckedCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(648) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !16574, !noalias !16577, !noundef !4 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 8
  %i.e = load ptr, ptr %0, align 8, !alias.scope !16574, !noalias !16577, !nonnull !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !16574, !noalias !16577 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16579)
  %i.n = icmp ult i64 %i.c, 9                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !68

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @409, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @410) #44, !noalias !16579
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 8
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsaPYpPPxBPjS_8smallvec10infallibleuECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsaPYpPPxBPjS_8smallvec10infallibleuECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul nuw nsw i64 %i.m, 80                 ; 3 uses
  %or.cond.not.i = icmp ugt i64 %.sroa.02.0, 115292150460684696
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayNtNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter3env9directive9DirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit.i, !prof !16559

_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayNtNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter3env9directive9DirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayNtNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter3env9directive9DirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.c, 115292150460684697
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayNtNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter3env9directive9DirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit45.i, !prof !16559

bb.j:                                             ; preds = %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayNtNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter3env9directive9DirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !16579
  %i.q = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #47, !noalias !16579 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayNtNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter3env9directive9DirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 80
  %i.t = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #47, !noalias !16579 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayNtNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter3env9directive9DirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayNtNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter3env9directive9DirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !16579
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !16579
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !16579
  br label %_RINvCsaPYpPPxBPjS_8smallvec10infallibleuECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul nuw nsw i64 %i.c, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 dereferenceable(648) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul i64 %i.g, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(648) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !16579
  %i.x = mul i64 %.sink.i.i, 80                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.c, 115292150460684697
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsaPYpPPxBPjS_8smallvec10deallocateNtNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter3env9directive9DirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit.i, !prof !16559

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16582
  store i64 0, ptr %i.a, align 8, !noalias !16582
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !16582
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @366, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @365, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #44, !noalias !16582
  unreachable

_RINvCsaPYpPPxBPjS_8smallvec10deallocateNtNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter3env9directive9DirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.m
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #47, !noalias !16579
  br label %_RINvCsaPYpPPxBPjS_8smallvec10infallibleuECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.o:                                             ; preds = %_RINvCsaPYpPPxBPjS_8smallvec12layout_arrayNtNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter3env9directive9DirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #44
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #44
  unreachable

_RINvCsaPYpPPxBPjS_8smallvec10infallibleuECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvCsaPYpPPxBPjS_8smallvec10deallocateNtNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter3env9directive9DirectiveECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @408) #44
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNCNvCsgsNUVCRJO2f_13influxdb3_lib10serve_main016handle_init_logs(i8 noundef range(i8 -1, 3) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %.not = icmp eq i8 %0, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %0, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs7_CsbnJmvbfkfSm_8troggingNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  call void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio7__eprint(ptr noundef nonnull @413, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvNtCs2AWtUsOyxgP_3std7process4exit(i32 noundef 1) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCsuxFxh2mtOX_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #16 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCsuxFxh2mtOX_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @55, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCsuxFxh2mtOX_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyNtNtCsbakdBCgU4AF_16influxdb3_server4http15ShutdownTriggerNtB2_3Any7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @421, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsjWl3uGiVprL_18influxdb3_commands6common8DataTypeENtB2_3Any7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @422, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs6Pdji9zeuGA_6backon5retryNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore16get_with_retries0s_0INtB2_9RetryableRNtNtNtB4_7backoff11exponential18ExponentialBuilderNtB1c_9GetResultNtB1c_5ErrorNCNCBx_s_00Bv_E5retryCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXs1_NtNtCs6Pdji9zeuGA_6backon7backoff11exponentialRNtB5_18ExponentialBuilderNtNtB7_3api14BackoffBuilder5build(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr @_RNvYNCNvMs_NtCs6Pdji9zeuGA_6backon5retryINtB9_5RetryNtNtNtBb_7backoff11exponential18ExponentialBackoffNtCs1LivM9IBWqb_12object_store9GetResultNtB1E_5ErrorNCNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB1E_11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore16get_with_retries0s_00NCB2w_s_0NtNtBb_5sleep12TokioSleeperFG_RL0_B2g_EbFG_RL0_B2g_NtNtCs4NRVxsYgnAr_4core4time8DurationEuFG_RL0_B2g_INtNtB6h_6option6OptionB6d_EEB71_E3new0INtNtNtB6h_3ops8function6FnOnceTRB2g_EE9call_onceCsgsNUVCRJO2f_13influxdb3_lib, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr @_RNvYNCNvMs_NtCs6Pdji9zeuGA_6backon5retryINtB9_5RetryNtNtNtBb_7backoff11exponential18ExponentialBackoffNtCs1LivM9IBWqb_12object_store9GetResultNtB1E_5ErrorNCNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB1E_11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore16get_with_retries0s_00NCB2w_s_0NtNtBb_5sleep12TokioSleeperFG_RL0_B2g_EbFG_RL0_B2g_NtNtCs4NRVxsYgnAr_4core4time8DurationEuFG_RL0_B2g_INtNtB6h_6option6OptionB6d_EEB71_E3news_0INtNtNtB6h_3ops8function6FnOnceTRB2g_B6d_EE9call_onceCsgsNUVCRJO2f_13influxdb3_lib, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr @_RNvYNCNvMs_NtCs6Pdji9zeuGA_6backon5retryINtB9_5RetryNtNtNtBb_7backoff11exponential18ExponentialBackoffNtCs1LivM9IBWqb_12object_store9GetResultNtB1E_5ErrorNCNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB1E_11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore16get_with_retries0s_00NCB2w_s_0NtNtBb_5sleep12TokioSleeperFG_RL0_B2g_EbFG_RL0_B2g_NtNtCs4NRVxsYgnAr_4core4time8DurationEuFG_RL0_B2g_INtNtB6h_6option6OptionB6d_EEB71_E3news0_0INtNtNtB6h_3ops8function6FnOnceTRB2g_B71_EE9call_onceCsgsNUVCRJO2f_13influxdb3_lib, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 2, ptr %i.f, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs6Pdji9zeuGA_6backon5retryNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore16put_with_retries00INtB2_9RetryableRNtNtNtB4_7backoff11exponential18ExponentialBuilderNtB1c_9PutResultNtB1c_5ErrorNCNCBx_00Bv_E5retryCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([280 x i8]) align 8 captures(none) dereferenceable(280) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXs1_NtNtCs6Pdji9zeuGA_6backon7backoff11exponentialRNtB5_18ExponentialBuilderNtNtB7_3api14BackoffBuilder5build(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr @_RNvYNCNvMs_NtCs6Pdji9zeuGA_6backon5retryINtB9_5RetryNtNtNtBb_7backoff11exponential18ExponentialBackoffNtCs1LivM9IBWqb_12object_store9PutResultNtB1E_5ErrorNCNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB1E_11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore16put_with_retries000NCB2w_0NtNtBb_5sleep12TokioSleeperFG_RL0_B2g_EbFG_RL0_B2g_NtNtCs4NRVxsYgnAr_4core4time8DurationEuFG_RL0_B2g_INtNtB6d_6option6OptionB69_EEB6X_E3new0INtNtNtB6d_3ops8function6FnOnceTRB2g_EE9call_onceCsgsNUVCRJO2f_13influxdb3_lib, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr @_RNvYNCNvMs_NtCs6Pdji9zeuGA_6backon5retryINtB9_5RetryNtNtNtBb_7backoff11exponential18ExponentialBackoffNtCs1LivM9IBWqb_12object_store9PutResultNtB1E_5ErrorNCNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB1E_11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore16put_with_retries000NCB2w_0NtNtBb_5sleep12TokioSleeperFG_RL0_B2g_EbFG_RL0_B2g_NtNtCs4NRVxsYgnAr_4core4time8DurationEuFG_RL0_B2g_INtNtB6d_6option6OptionB69_EEB6X_E3news_0INtNtNtB6d_3ops8function6FnOnceTRB2g_B69_EE9call_onceCsgsNUVCRJO2f_13influxdb3_lib, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr @_RNvYNCNvMs_NtCs6Pdji9zeuGA_6backon5retryINtB9_5RetryNtNtNtBb_7backoff11exponential18ExponentialBackoffNtCs1LivM9IBWqb_12object_store9PutResultNtB1E_5ErrorNCNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB1E_11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore16put_with_retries000NCB2w_0NtNtBb_5sleep12TokioSleeperFG_RL0_B2g_EbFG_RL0_B2g_NtNtCs4NRVxsYgnAr_4core4time8DurationEuFG_RL0_B2g_INtNtB6d_6option6OptionB69_EEB6X_E3news0_0INtNtNtB6d_3ops8function6FnOnceTRB2g_B6X_EE9call_onceCsgsNUVCRJO2f_13influxdb3_lib, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 2, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs6Pdji9zeuGA_6backon5retryNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore23raw_delete_with_retries0s_0INtB2_9RetryableRNtNtNtB4_7backoff11exponential18ExponentialBuilderuNtB1c_5ErrorNCNCBx_s_00Bv_E5retryCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXs1_NtNtCs6Pdji9zeuGA_6backon7backoff11exponentialRNtB5_18ExponentialBuilderNtNtB7_3api14BackoffBuilder5build(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr @_RNvYNCNvMs_NtCs6Pdji9zeuGA_6backon5retryINtB9_5RetryNtNtNtBb_7backoff11exponential18ExponentialBackoffuNtCs1LivM9IBWqb_12object_store5ErrorNCNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB1F_11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore23raw_delete_with_retries0s_00NCB2h_s_0NtNtBb_5sleep12TokioSleeperFG_RL0_B1D_EbFG_RL0_B1D_NtNtCs4NRVxsYgnAr_4core4time8DurationEuFG_RL0_B1D_INtNtB69_6option6OptionB65_EEB6T_E3new0INtNtNtB69_3ops8function6FnOnceTRB1D_EE9call_onceCsgsNUVCRJO2f_13influxdb3_lib, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr @_RNvYNCNvMs_NtCs6Pdji9zeuGA_6backon5retryINtB9_5RetryNtNtNtBb_7backoff11exponential18ExponentialBackoffuNtCs1LivM9IBWqb_12object_store5ErrorNCNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB1F_11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore23raw_delete_with_retries0s_00NCB2h_s_0NtNtBb_5sleep12TokioSleeperFG_RL0_B1D_EbFG_RL0_B1D_NtNtCs4NRVxsYgnAr_4core4time8DurationEuFG_RL0_B1D_INtNtB69_6option6OptionB65_EEB6T_E3news_0INtNtNtB69_3ops8function6FnOnceTRB1D_B65_EE9call_onceCsgsNUVCRJO2f_13influxdb3_lib, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr @_RNvYNCNvMs_NtCs6Pdji9zeuGA_6backon5retryINtB9_5RetryNtNtNtBb_7backoff11exponential18ExponentialBackoffuNtCs1LivM9IBWqb_12object_store5ErrorNCNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB1F_11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore23raw_delete_with_retries0s_00NCB2h_s_0NtNtBb_5sleep12TokioSleeperFG_RL0_B1D_EbFG_RL0_B1D_NtNtCs4NRVxsYgnAr_4core4time8DurationEuFG_RL0_B1D_INtNtB69_6option6OptionB65_EEB6T_E3news0_0INtNtNtB69_3ops8function6FnOnceTRB1D_B6T_EE9call_onceCsgsNUVCRJO2f_13influxdb3_lib, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 2, ptr %i.f, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtCs2AWtUsOyxgP_3std2io17default_write_fmtINtB2_7AdapterINtNvMs_NtCs8rTCm43AEA0_12tokio_rustls6commonINtB16_6StreamppE8write_io6WriterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEENtNtCs4NRVxsYgnAr_4core3fmt5Write9write_strCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !76, !noundef !4
  %i.b = tail call noundef ptr @_RNvYINtNvMs_NtCs8rTCm43AEA0_12tokio_rustls6commonINtBa_6StreamppE8write_io6WriterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io5Write9write_allCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !16585, !noundef !4
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  ret i1 %.not

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %i.b, ptr %i.c, align 8
  resume { ptr, i32 } %i.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.b, %bb.c
  store ptr %i.b, ptr %i.c, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtCs2AWtUsOyxgP_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCs4NRVxsYgnAr_4core3fmt5Write9write_strCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef ptr @_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !16588, !noundef !4
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
end_hunk_0
