Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_cache-873b4e3417b63821.influxdb3_cache.d4363e94e8c1e8df-cgu.08?download=true
inline.NumInlined: 713
inline.NumDeleted: 269
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs4_NtNtCs6ePPILGZvJ2_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int32TypeENtB7_5Array13logical_nullsCsidB8gjke19X_15influxdb3_cache:bb.a

bb.c:                                             ; preds = %bb.b
  %reass.sub.i = and i64 %.sroa.012.0, 1152921504606846912
  %i.r = add nuw nsw i64 %reass.sub.i, 64         ; 2 uses
  %i.s = icmp samesign ult i64 %i.r, %.sroa.012.0
  br i1 %i.s, label %bb.d, label %.split.thread.i, !prof !7

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #30
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  unreachable

.split.i:                                         ; preds = %bb.b
  %i.t = icmp eq i64 %.sroa.012.0, 0
  br i1 %i.t, label %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit, label %.split.thread.i

.split.thread.i:                                  ; preds = %.split.i, %bb.c
  %.sroa.4.010.i = phi i64 [ %.sroa.012.0, %.split.i ], [ %i.r, %bb.c ] ; 3 uses
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !2447
  %i.u = call noundef align 128 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %.sroa.4.010.i, i64 noundef 128) #32, !noalias !2447 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit, !prof !7

bb.e:                                             ; preds = %.split.thread.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef %.sroa.4.010.i) #30
          to label %.noexc24 unwind label %bb.m

.noexc24:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !noundef !4 ; 3 uses
  %.not17 = icmp eq ptr %i.x, null
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.x, ptr %0, align 8
  %.sroa.06.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %.sroa.06.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.ae, ptr %.sroa.06.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.06.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load <2 x i64>, ptr %i.ad, align 8
  store <2 x i64> %i.af, ptr %.sroa.06.sroa.5.0..sroa_idx, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferECsidB8gjke19X_15influxdb3_cache.exit34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsidB8gjke19X_15influxdb3_cache.exit: ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %eh.lpad-body, %.body ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2448)
  call void @llvm.experimental.noalias.scope.decl(metadata !2449)
  call void @llvm.experimental.noalias.scope.decl(metadata !2450)
  call void @llvm.experimental.noalias.scope.decl(metadata !2451)
  call void @llvm.experimental.noalias.scope.decl(metadata !2452)
  %i.ag = load ptr, ptr %i.f, align 8, !alias.scope !2453, !nonnull !4, !noundef !4
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !2453
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferECsidB8gjke19X_15influxdb3_cache.exit

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsidB8gjke19X_15influxdb3_cache.exit
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferECsidB8gjke19X_15influxdb3_cache.exit unwind label %bb.ai

bb.m:                                             ; preds = %bb.ab, %bb.e, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsidB8gjke19X_15influxdb3_cache.exit

_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit: ; preds = %.split.thread.i, %.split.i
  %.sroa.4.011.i = phi i64 [ 0, %.split.i ], [ %.sroa.4.010.i, %.split.thread.i ] ; 3 uses
  %.sroa.01.0.i = phi ptr [ inttoptr (i64 128 to ptr), %.split.i ], [ %i.u, %.split.thread.i ] ; 2 uses
  store i64 128, ptr %i.e, align 16
  %.sroa.4.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %.sroa.4.011.i, ptr %.sroa.4.0..sroa_idx37, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 6 uses
  store ptr %.sroa.01.0.i, ptr %.sroa.538.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.am = load ptr, ptr %i.al, align 8, !noundef !4
  %.not19 = icmp eq ptr %i.am, null
  br i1 %.not19, label %._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  invoke void @_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder13append_buffer(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al)
          to label %bb.w unwind label %bb.v

._crit_edge.i:                                    ; preds = %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  %i.an = and i64 %i.l, 7                         ; 2 uses
  %.not.i = icmp ne i64 %i.an, 0                  ; 2 uses
  %i.ao = zext i1 %.not.i to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.m, %i.ao      ; 8 uses
  %.not44 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not44, label %bb.t, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ap = icmp samesign ugt i64 %.sroa.0.0.i, %.sroa.4.011.i
  br i1 %i.ap, label %bb.p, label %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, !prof !7

bb.p:                                             ; preds = %bb.o
  %i.aq = and i64 %.sroa.0.0.i, 63
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %reass.sub.i.i = and i64 %.sroa.0.0.i, 1152921504606846912
  %i.as = add nuw nsw i64 %reass.sub.i.i, 64      ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %.sroa.0.0.i
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.4.0.i.i = phi i64 [ %.sroa.0.0.i, %bb.p ], [ %i.as, %bb.q ]
  %i.au = shl nuw nsw i64 %.sroa.4.011.i, 1
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.au, i64 %.sroa.4.0.i.i)
  invoke void @_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, i64 noundef %.sroa.0.0.i.i)
          to label %.noexc27 unwind label %bb.v

.noexc27:                                         ; preds = %bb.r
  %.pre11.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2454
  %.pre = load ptr, ptr %.sroa.538.0..sroa_idx, align 16, !alias.scope !2454
  br label %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #30
          to label %.noexc28 unwind label %bb.v

.noexc28:                                         ; preds = %bb.s
  unreachable

_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i: ; preds = %.noexc27, %bb.o
  %i.av = phi ptr [ %.sroa.01.0.i, %bb.o ], [ %.pre, %.noexc27 ]
  %i.aw = phi i64 [ 0, %bb.o ], [ %.pre11.i, %.noexc27 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ax, i8 -1, i64 %.sroa.0.0.i, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, %._crit_edge.i
  store i64 %.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2454
  br i1 %.not.i, label %bb.u, label %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

bb.u:                                             ; preds = %bb.t
  %i.ay = load ptr, ptr %.sroa.538.0..sroa_idx, align 16, !alias.scope !2454, !nonnull !4, !noundef !4
  %i.az = trunc nuw nsw i64 %i.an to i8
  %notmask9.i = shl nsw i8 -1, %i.az
  %i.ba = xor i8 %notmask9.i, -1
  %i.bb = getelementptr i8, ptr %i.ay, i64 %i.m   ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !4
  %i.bd = and i8 %i.bc, %i.ba
  store i8 %i.bd, ptr %i.bb, align 1
  br label %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit: ; preds = %bb.t, %bb.u
  store i64 %i.l, ptr %i.ak, align 16, !alias.scope !2454
  br label %bb.w

bb.v:                                             ; preds = %bb.ah, %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesEE3newCsidB8gjke19X_15influxdb3_cache.exit.i, %bb.s, %bb.r, %bb.aa, %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.y, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.v ], [ %i.bs, %bb.y ]
  invoke void @_RNvXs6_NtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsidB8gjke19X_15influxdb3_cache.exit unwind label %bb.ai

bb.w:                                             ; preds = %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx = and i64 %i.k, -4                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx
  %i.bi = icmp samesign eq i64 %.idx, 0
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.pre48 = load i64, ptr %i.bj, align 8
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.ae, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !2455)
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.538.0..sroa_idx, align 16, !alias.scope !2455, !noalias !2456, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2455, !noalias !2456 ; 2 uses
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.538.0..sroa_idx, align 16, !alias.scope !2455, !noalias !2456
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2455, !noalias !2456
  %i.bm = load i64, ptr %i.ak, align 16, !alias.scope !2455, !noalias !2456, !noundef !4
  store i64 0, ptr %i.ak, align 16, !alias.scope !2455, !noalias !2456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2457
  store i64 1, ptr %i.a, align 8, !noalias !2457
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bn, align 8, !noalias !2457
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %i.bo, align 8, !noalias !2457
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2457
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !2457
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bp = load <2 x i64>, ptr %i.e, align 16, !alias.scope !2455, !noalias !2456
  store i64 128, ptr %i.e, align 16, !alias.scope !2455, !noalias !2456
  store i64 0, ptr %.sroa.4.0..sroa_idx37, align 8, !alias.scope !2455, !noalias !2456
  store <2 x i64> %i.bp, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !2457
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !2458
  %i.bq = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #32, !noalias !2458 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.x, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesEE3newCsidB8gjke19X_15influxdb3_cache.exit.i, !prof !7

bb.x:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #30
          to label %.noexc.i unwind label %bb.y, !noalias !2457

.noexc.i:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #33
          to label %.body unwind label %bb.z, !noalias !2457

bb.z:                                             ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2457
  unreachable

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesEE3newCsidB8gjke19X_15influxdb3_cache.exit.i: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !2457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2457
  store ptr %i.bq, ptr %i.b, align 8, !noalias !2457
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.bu, align 8, !noalias !2457
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %i.bv, align 8, !noalias !2457
  invoke void @_RNvMs_NtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.bm)
          to label %bb.aa unwind label %bb.v

bb.aa:                                            ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesEE3newCsidB8gjke19X_15influxdb3_cache.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2457
  invoke void @_RNvXs0_NtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4nullNtB5_10NullBufferINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtB7_7boolean13BooleanBufferE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXs6_NtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsidB8gjke19X_15influxdb3_cache.exit33 unwind label %bb.m

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsidB8gjke19X_15influxdb3_cache.exit33: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !2459)
  call void @llvm.experimental.noalias.scope.decl(metadata !2460)
  call void @llvm.experimental.noalias.scope.decl(metadata !2461)
  call void @llvm.experimental.noalias.scope.decl(metadata !2462)
  call void @llvm.experimental.noalias.scope.decl(metadata !2463)
  %i.bw = load ptr, ptr %i.f, align 8, !alias.scope !2464, !nonnull !4, !noundef !4
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !2464
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferECsidB8gjke19X_15influxdb3_cache.exit34

bb.ac:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsidB8gjke19X_15influxdb3_cache.exit33
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferECsidB8gjke19X_15influxdb3_cache.exit34

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferECsidB8gjke19X_15influxdb3_cache.exit34: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsidB8gjke19X_15influxdb3_cache.exit33, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.ad:                                            ; preds = %.lr.ph, %bb.ae
  %2 = phi i64 [ %.pre48, %.lr.ph ], [ %3, %bb.ae ] ; 3 uses
  %.sroa.0.046 = phi ptr [ %i.bg, %.lr.ph ], [ %i.bz, %bb.ae ] ; 2 uses
  %.sroa.7.045 = phi i64 [ 0, %.lr.ph ], [ %i.ca, %bb.ae ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.046, i64 4 ; 2 uses
  %i.ca = add nuw nsw i64 %.sroa.7.045, 1
  %i.cb = load i32, ptr %.sroa.0.046, align 4, !noundef !4
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = icmp ugt i64 %2, %i.cc
  br i1 %i.cd, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, %bb.ad, %bb.af
  %3 = phi i64 [ %.pre47, %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit ], [ %2, %bb.ad ], [ %2, %bb.af ]
  %i.ce = icmp eq ptr %i.bz, %i.bh
  br i1 %i.ce, label %._crit_edge, label %bb.ad

bb.af:                                            ; preds = %bb.ad
  %i.cf = load ptr, ptr %i.bk, align 8, !noundef !4
  %i.cg = load i64, ptr %i.bl, align 8, !noundef !4
  %i.ch = add i64 %i.cg, %i.cc                    ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !4
  %i.cl = trunc i64 %i.ch to i8
  %i.cm = and i8 %i.cl, 7
  %i.cn = shl nuw i8 1, %i.cm
  %i.co = and i8 %i.cn, %i.ck
  %.not21 = icmp eq i8 %i.co, 0
  br i1 %.not21, label %bb.ag, label %bb.ae

bb.ag:                                            ; preds = %bb.af
  %.val23 = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !4 ; 2 uses
  %i.cp = lshr i64 %.sroa.7.045, 3                ; 3 uses
  %i.cq = icmp ult i64 %i.cp, %.val23
  br i1 %i.cq, label %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cp, i64 noundef %.val23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #30
          to label %.noexc35 unwind label %bb.v

.noexc35:                                         ; preds = %bb.ah
  unreachable

_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit: ; preds = %bb.ag
  %.val = load ptr, ptr %.sroa.538.0..sroa_idx, align 16, !nonnull !4, !noundef !4
  %i.cr = trunc i64 %.sroa.7.045 to i8
  %i.cs = and i8 %i.cr, 7
  %i.ct = shl nuw i8 1, %i.cs
  %i.cu = xor i8 %i.ct, -1
  %i.cv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cp ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !noundef !4
  %i.cx = and i8 %i.cw, %i.cu
  store i8 %i.cx, ptr %i.cv, align 1
  %.pre47 = load i64, ptr %i.bj, align 8
  br label %bb.ae

bb.ai:                                            ; preds = %.body, %bb.l
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferECsidB8gjke19X_15influxdb3_cache.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsidB8gjke19X_15influxdb3_cache.exit, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs6ePPILGZvJ2_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int32TypeENtB7_5Array13shrink_to_fitCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(144) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXs1_NtNtCs6ePPILGZvJ2_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array13shrink_to_fitCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_RNvXNtCs6ePPILGZvJ2_11arrow_array5arrayINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB2_5ArrayEL_EB19_13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs4_NtNtCs6ePPILGZvJ2_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int32TypeENtB7_5Array18logical_null_countCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_RNvXNtCs6ePPILGZvJ2_11arrow_array5arrayINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB2_5ArrayEL_EB19_13logical_nulls(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
  %i.g = load ptr, ptr %i.c, align 8, !noundef !4
  %.not9 = icmp eq ptr %i.g, null                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.r, label %bb.l

bb.c:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 3 uses
  %i.l = lshr i64 %i.k, 2                         ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2525)
  %i.m = icmp ult i64 %i.k, 4
  br i1 %i.m, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !2525, !noalias !2526, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !2525, !noalias !2527 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !2525, !noalias !2527 ; 3 uses
  %i.t = icmp eq i64 %i.l, 1
  br i1 %i.t, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.l, 4611686018427387902
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs6ePPILGZvJ2_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0CsidB8gjke19X_15influxdb3_cache.exit.i.i.1, %.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.new ], [ %i.ax, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs6ePPILGZvJ2_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0CsidB8gjke19X_15influxdb3_cache.exit.i.i.1 ] ; 3 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.new ], [ %i.aw, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs6ePPILGZvJ2_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0CsidB8gjke19X_15influxdb3_cache.exit.i.i.1 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs6ePPILGZvJ2_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0CsidB8gjke19X_15influxdb3_cache.exit.i.i.1 ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %.val13.i.i = load i32, ptr %i.u, align 4, !alias.scope !2528, !noalias !2529, !noundef !4
  %i.v = sext i32 %.val13.i.i to i64              ; 2 uses
  %i.w = icmp ugt i64 %i.o, %i.v
  br i1 %i.w, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs6ePPILGZvJ2_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0CsidB8gjke19X_15influxdb3_cache.exit.i.i, label %.loopexit36, !prof !16

.loopexit36:                                      ; preds = %bb.f, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs6ePPILGZvJ2_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0CsidB8gjke19X_15influxdb3_cache.exit.i.i, %.epil.preheader
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #30
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.loopexit36
  unreachable

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs6ePPILGZvJ2_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0CsidB8gjke19X_15influxdb3_cache.exit.i.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.val13.i.i.1 = load i32, ptr %i.y, align 4, !alias.scope !2528, !noalias !2529, !noundef !4
  %i.z = sext i32 %.val13.i.i.1 to i64            ; 2 uses
  %i.aa = icmp ugt i64 %i.o, %i.z
  br i1 %i.aa, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs6ePPILGZvJ2_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0CsidB8gjke19X_15influxdb3_cache.exit.i.i.1, label %.loopexit36, !prof !16

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs6ePPILGZvJ2_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0CsidB8gjke19X_15influxdb3_cache.exit.i.i.1: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs6ePPILGZvJ2_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0CsidB8gjke19X_15influxdb3_cache.exit.i.i
  %i.ab = add i64 %i.s, %i.v                      ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !2530, !noundef !4
  %i.af = xor i8 %i.ae, -1
  %i.ag = trunc i64 %i.ab to i8
  %i.ah = and i8 %i.ag, 7
  %i.ai = lshr i8 %i.af, %i.ah
  %i.aj = and i8 %i.ai, 1
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = add i64 %.sroa.02.0.i.i, %i.ak
  %i.am = add i64 %i.s, %i.z                      ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !2530, !noundef !4
  %i.aq = trunc i64 %i.am to i8
  %i.ar = and i8 %i.aq, 7
  %i.as = xor i8 %i.ap, -1
  %i.at = lshr i8 %i.as, %i.ar
  %i.au = and i8 %i.at, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = add i64 %i.al, %i.av                    ; 3 uses
  %i.ax = add nuw nsw i64 %.sroa.04.0.i.i, 2      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferECsidB8gjke19X_15influxdb3_cache.exit20, %bb.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferECsidB8gjke19X_15influxdb3_cache.exit13
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferECsidB8gjke19X_15influxdb3_cache.exit20 ], [ %i.do, %bb.r ], [ %.sroa.0.0.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferECsidB8gjke19X_15influxdb3_cache.exit13 ], [ 0, %bb.c ]
  ret i64 %.sroa.0.0

bb.h:                                             ; preds = %.loopexit36
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2531)
  call void @llvm.experimental.noalias.scope.decl(metadata !2532)
  call void @llvm.experimental.noalias.scope.decl(metadata !2533)
  call void @llvm.experimental.noalias.scope.decl(metadata !2534)
  call void @llvm.experimental.noalias.scope.decl(metadata !2535)
  %i.az = load ptr, ptr %i.b, align 8, !alias.scope !2536, !nonnull !4, !noundef !4
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !2536
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferECsidB8gjke19X_15influxdb3_cache.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferECsidB8gjke19X_15influxdb3_cache.exit unwind label %bb.k

.loopexit.loopexit.unr-lcssa:                     ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs6ePPILGZvJ2_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0CsidB8gjke19X_15influxdb3_cache.exit.i.i.1
  %i.bc = and i64 %i.k, 4
  %lcmp.mod.not = icmp eq i64 %i.bc, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %bb.e
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.ax, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.aw, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod35 = trunc i64 %i.l to i1
  call void @llvm.assume(i1 %lcmp.mod35)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.04.0.i.i.epil.init
  %.val13.i.i.epil = load i32, ptr %i.bd, align 4, !alias.scope !2528, !noalias !2529, !noundef !4
  %i.be = sext i32 %.val13.i.i.epil to i64        ; 2 uses
  %i.bf = icmp ugt i64 %i.o, %i.be
  br i1 %i.bf, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs6ePPILGZvJ2_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0CsidB8gjke19X_15influxdb3_cache.exit.i.i.epil, label %.loopexit36, !prof !16

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs6ePPILGZvJ2_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0CsidB8gjke19X_15influxdb3_cache.exit.i.i.epil: ; preds = %.epil.preheader
  %i.bg = add i64 %i.s, %i.be                     ; 2 uses
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !2530, !noundef !4
  %i.bk = trunc i64 %i.bg to i8
  %i.bl = and i8 %i.bk, 7
  %i.bm = xor i8 %i.bj, -1
  %i.bn = lshr i8 %i.bm, %i.bl
  %i.bo = and i8 %i.bn, 1
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = add i64 %.sroa.02.0.i.i.epil.init, %i.bp
  br label %.loopexit

.loopexit:                                        ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs6ePPILGZvJ2_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0CsidB8gjke19X_15influxdb3_cache.exit.i.i.epil, %.loopexit.loopexit.unr-lcssa, %bb.d
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.d ], [ %i.aw, %.loopexit.loopexit.unr-lcssa ], [ %i.bq, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRljjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs6ePPILGZvJ2_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int32TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EE0E0CsidB8gjke19X_15influxdb3_cache.exit.i.i.epil ] ; 2 uses
  %i.br = icmp ule i64 %.sroa.0.0.i.i, %i.l
  call void @llvm.assume(i1 %i.br)
  call void @llvm.experimental.noalias.scope.decl(metadata !2537)
  call void @llvm.experimental.noalias.scope.decl(metadata !2538)
  call void @llvm.experimental.noalias.scope.decl(metadata !2539)
  call void @llvm.experimental.noalias.scope.decl(metadata !2540)
  call void @llvm.experimental.noalias.scope.decl(metadata !2541)
  %i.bs = load ptr, ptr %i.b, align 8, !alias.scope !2542, !nonnull !4, !noundef !4
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !noalias !2542
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferECsidB8gjke19X_15influxdb3_cache.exit13

bb.j:                                             ; preds = %.loopexit
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferECsidB8gjke19X_15influxdb3_cache.exit13

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferECsidB8gjke19X_15influxdb3_cache.exit13: ; preds = %.loopexit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.k:                                             ; preds = %bb.t, %bb.i
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
