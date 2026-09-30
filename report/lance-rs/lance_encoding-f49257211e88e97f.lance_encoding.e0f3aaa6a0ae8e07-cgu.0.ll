Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_RNCNvXsq_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB7_18MiniBlockSchedulerNtB7_23StructuralPageScheduler10initialize0Bd_:bb.a
  store ptr %i.ax, ptr %i.az, align 8
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1232) #66
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1232) #66
  unreachable

bb.f:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %.val47 = load ptr, ptr %i.bb, align 8
  %.val48 = load ptr, ptr %i.bc, align 8, !nonnull !75, !align !95, !noundef !75
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsjjpCCFGI3ul_14lance_encoding(ptr %.val47, ptr nonnull %.val48) #67
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsjjpCCFGI3ul_14lance_encoding.exit100 unwind label %bb.gu

bb.g:                                             ; preds = %bb.b, %bb.c
  %.val50 = phi ptr [ %.val50.pre, %bb.b ], [ %i.ax, %bb.c ]
  %.val49 = phi ptr [ %.val49.pre, %bb.b ], [ %i.av, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bc = getelementptr i8, ptr %1, i64 48        ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val50, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !invariant.load !75, !noalias !29517, !nonnull !75
  invoke void %i.be(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ar, ptr noundef nonnull %.val49, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsjjpCCFGI3ul_14lance_encoding.exit unwind label %bb.f, !inline_history !38

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.g
  %i.bf = load i8, ptr %i.ar, align 8, !range !94, !noundef !75 ; 3 uses
  %i.bg = icmp eq i8 %i.bf, -2
  br i1 %i.bg, label %bb.h, label %bb.i

common.ret:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsjjpCCFGI3ul_14lance_encoding.exit94, %bb.h
  %storemerge = phi i8 [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsjjpCCFGI3ul_14lance_encoding.exit94 ], [ 3, %bb.h ]
  store i8 %storemerge, ptr %i.at, align 8
  ret void

bb.h:                                             ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsjjpCCFGI3ul_14lance_encoding.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  store i8 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %common.ret

bb.i:                                             ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsjjpCCFGI3ul_14lance_encoding.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx, i64 7, i1 false)
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.3.sroa.2.0.copyload = load i64, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.3.sroa.4.0.copyload = load ptr, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 14 uses
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.3.sroa.6.0.copyload = load i64, ptr %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.bh = load <2 x i64>, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %.sroa.5.sroa.3.0.copyload = load i64, ptr %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %.val = load ptr, ptr %i.bb, align 8            ; 5 uses
  %.val46 = load ptr, ptr %i.bc, align 8, !nonnull !75, !align !95, !noundef !75 ; 5 uses
  %i.bi = load ptr, ptr %.val46, align 8, !invariant.load !75 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.bi(ptr noundef nonnull %.val)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.val46, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !76, !invariant.load !75 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsjjpCCFGI3ul_14lance_encoding.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %.val46, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !range !93, !invariant.load !75
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) %i.bn) #63
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsjjpCCFGI3ul_14lance_encoding.exit

bb.l:                                             ; preds = %bb.j
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val46, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !76, !invariant.load !75 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsjjpCCFGI3ul_14lance_encoding.exit100, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %.val46, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !93, !invariant.load !75
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) %i.bt) #63
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsjjpCCFGI3ul_14lance_encoding.exit100

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.k
  %.not.i55 = icmp eq i8 %i.bf, -1
  br i1 %.not.i55, label %bb.m, label %bb.hp

bb.m:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsjjpCCFGI3ul_14lance_encoding.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.sroa.4.0.copyload) ]
  %i.bu = icmp ult i64 %.sroa.3.sroa.6.0.copyload, 288230376151711744
  call void @llvm.assume(i1 %i.bu)
  %.idx = shl nuw nsw i64 %.sroa.3.sroa.6.0.copyload, 5
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.4.0.copyload, i64 %.idx ; 2 uses
  store ptr %.sroa.3.sroa.4.0.copyload, ptr %i.as, align 8, !alias.scope !29518
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  store ptr %.sroa.3.sroa.4.0.copyload, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !29518
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 %.sroa.3.sroa.2.0.copyload, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !29518
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.bv, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !29518
  call void @llvm.experimental.noalias.scope.decl(metadata !29519)
  call void @llvm.experimental.noalias.scope.decl(metadata !29520)
  call void @llvm.experimental.noalias.scope.decl(metadata !29521)
  %i.bw = icmp eq i64 %.sroa.3.sroa.6.0.copyload, 0
  br i1 %i.bw, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.4.0.copyload, i64 32 ; 4 uses
  store ptr %i.bx, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !29522, !noalias !29523
  %.sroa.0127.0.copyload = load ptr, ptr %.sroa.3.sroa.4.0.copyload, align 8, !noalias !29522 ; 3 uses
  %.sroa.8128.0..sroa.10.0.copyload.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.4.0.copyload, i64 8
  %.sroa.8128.0.copyload = load ptr, ptr %.sroa.8128.0..sroa.10.0.copyload.sroa_idx, align 8, !noalias !29522 ; 2 uses
  %.sroa.9129.0..sroa.10.0.copyload.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.4.0.copyload, i64 16
  %.sroa.9129.0.copyload = load i64, ptr %.sroa.9129.0..sroa.10.0.copyload.sroa_idx, align 8, !noalias !29522 ; 3 uses
  %.sroa.10130.0..sroa.10.0.copyload.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.4.0.copyload, i64 24
  %.sroa.10130.0.copyload = load ptr, ptr %.sroa.10130.0..sroa.10.0.copyload.sroa_idx, align 8, !noalias !29522 ; 2 uses
  %.not.i43 = icmp eq ptr %.sroa.0127.0.copyload, null
  br i1 %.not.i43, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread, label %bb.n, !prof !79

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread: ; preds = %bb.m, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1233) #66
          to label %.noexc44 unwind label %.thread526

.noexc44:                                         ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread
  unreachable

.thread526:                                       ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding.exit102

bb.n:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 112
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !29524, !noundef !75
  %.not.i57 = icmp eq ptr %i.cc, null
  call void @llvm.experimental.noalias.scope.decl(metadata !29525)
  br i1 %.not.i57, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !29526)
  call void @llvm.experimental.noalias.scope.decl(metadata !29527)
  %i.cd = icmp eq i64 %.sroa.3.sroa.6.0.copyload, 1
  br i1 %i.cd, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.4.0.copyload, i64 64 ; 2 uses
  store ptr %i.ce, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !29528, !noalias !29529
  %.sroa.0131.0.copyload134 = load ptr, ptr %i.bx, align 8, !noalias !29530
  %.sroa.12135.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.4.0.copyload, i64 40
  %.sroa.12135.0.copyload137 = load ptr, ptr %.sroa.12135.0..sroa_idx136, align 8, !noalias !29530
  %.sroa.15.0..sroa_idx140 = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.4.0.copyload, i64 48
  %.sroa.15.0.copyload141 = load i64, ptr %.sroa.15.0..sroa_idx140, align 8, !noalias !29530
  %.sroa.18.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.4.0.copyload, i64 56
  %.sroa.18.0.copyload145 = load ptr, ptr %.sroa.18.0..sroa_idx144, align 8, !noalias !29530
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  %.sroa.18.0 = phi ptr [ %.sroa.18.0.copyload145, %bb.p ], [ undef, %bb.o ], [ undef, %bb.n ] ; 4 uses
  %.sroa.15.0 = phi i64 [ %.sroa.15.0.copyload141, %bb.p ], [ undef, %bb.o ], [ undef, %bb.n ] ; 4 uses
  %.sroa.12135.0 = phi ptr [ %.sroa.12135.0.copyload137, %bb.p ], [ undef, %bb.o ], [ undef, %bb.n ] ; 4 uses
  %.sroa.0131.0 = phi ptr [ %.sroa.0131.0.copyload134, %bb.p ], [ null, %bb.o ], [ null, %bb.n ] ; 8 uses
  %i.cf = phi ptr [ %i.ce, %bb.p ], [ %i.bx, %bb.o ], [ %i.bx, %bb.n ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29531)
  call void @llvm.experimental.noalias.scope.decl(metadata !29532)
  call void @llvm.experimental.noalias.scope.decl(metadata !29533)
  %i.cg = icmp eq ptr %i.cf, %i.bv
  br i1 %i.cg, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit61, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  store ptr %i.ch, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !29534, !noalias !29535
  %.sroa.0148.0.copyload = load ptr, ptr %i.cf, align 8, !noalias !29534
  %.sroa.11152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.11152.0.copyload = load ptr, ptr %.sroa.11152.0..sroa_idx, align 8, !noalias !29534
  %.sroa.15155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.15155.0.copyload = load i64, ptr %.sroa.15155.0..sroa_idx, align 8, !noalias !29534
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %.sroa.19.0.copyload = load ptr, ptr %.sroa.19.0..sroa_idx, align 8, !noalias !29534
  br label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit61

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit61: ; preds = %bb.r, %bb.q
  %.sroa.19.0 = phi ptr [ undef, %bb.q ], [ %.sroa.19.0.copyload, %bb.r ] ; 3 uses
  %.sroa.15155.0 = phi i64 [ undef, %bb.q ], [ %.sroa.15155.0.copyload, %bb.r ] ; 7 uses
  %.sroa.11152.0 = phi ptr [ undef, %bb.q ], [ %.sroa.11152.0.copyload, %bb.r ] ; 6 uses
  %.sroa.0148.0 = phi ptr [ null, %bb.q ], [ %.sroa.0148.0.copyload, %bb.r ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr %.sroa.0127.0.copyload, ptr %i.ap, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %.sroa.8128.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %.sroa.9129.0.copyload, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %.sroa.10130.0.copyload, ptr %.sroa.9.0..sroa_idx, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 170
  %i.cj = load i8, ptr %i.ci, align 2, !range !89, !noundef !75
  %i.ck = trunc nuw i8 %i.cj to i1                ; 2 uses
  %..i62 = select i1 %i.ck, i64 4, i64 2          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !29536
  %i.cl = add nsw i64 %..i62, -1
  %i.cm = and i64 %i.cl, %.sroa.9129.0.copyload   ; 2 uses
  store i64 %i.cm, ptr %i.ai, align 8, !noalias !29536
  %.not.i63 = icmp eq i64 %i.cm, 0
  br i1 %.not.i63, label %bb.t, label %bb.u, !prof !78

bb.s:                                             ; preds = %bb.u
  unreachable

bb.t:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !29536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !29536
  invoke void @_RNvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB2_11LanceBuffer10from_bytes(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.ap, i64 noundef %..i62)
          to label %.noexc65 unwind label %bb.af

.noexc65:                                         ; preds = %bb.t
  br i1 %i.ck, label %bb.w, label %bb.v

bb.u:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit61
  invoke void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @826, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2252) #66
          to label %bb.s unwind label %bb.ae, !noalias !29536

bb.v:                                             ; preds = %.noexc65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !29536
  invoke fastcc void @_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer21borrow_to_typed_slicetEB5_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
          to label %bb.z unwind label %bb.x, !noalias !29536

bb.w:                                             ; preds = %.noexc65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !29536
  invoke fastcc void @_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer21borrow_to_typed_slicemEB5_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
          to label %bb.ac unwind label %bb.x, !noalias !29536

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29537)
  call void @llvm.experimental.noalias.scope.decl(metadata !29538)
  call void @llvm.experimental.noalias.scope.decl(metadata !29539)
  call void @llvm.experimental.noalias.scope.decl(metadata !29540)
  %i.co = load ptr, ptr %i.ah, align 8, !alias.scope !29541, !noalias !29536, !nonnull !75, !noundef !75
  %i.cp = atomicrmw sub ptr %i.co, i64 1 release, align 8, !noalias !29542
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.y, label %.body67

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body67 unwind label %bb.ad, !noalias !29536

bb.z:                                             ; preds = %bb.v
  %i.cr = load <2 x i64>, ptr %i.af, align 16, !noalias !29543
  %.sroa.10171.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.10171.sroa.9.0.copyload = load i64, ptr %.sroa.10171.sroa.9.0..sroa_idx, align 16, !noalias !29543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !29536
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %bb.z
  %.sroa.10171.sroa.9.0 = phi i64 [ %.sroa.10171.sroa.9.0.copyload296, %bb.ac ], [ %.sroa.10171.sroa.9.0.copyload, %bb.z ] ; 3 uses
  %.sroa.7170.0 = phi i64 [ 1, %bb.ac ], [ 0, %bb.z ] ; 2 uses
  %i.cs = phi <2 x i64> [ %i.cw, %bb.ac ], [ %i.cr, %bb.z ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29544)
  call void @llvm.experimental.noalias.scope.decl(metadata !29545)
  call void @llvm.experimental.noalias.scope.decl(metadata !29546)
  call void @llvm.experimental.noalias.scope.decl(metadata !29547)
  %i.ct = load ptr, ptr %i.ah, align 8, !alias.scope !29548, !noalias !29536, !nonnull !75, !noundef !75
  %i.cu = atomicrmw sub ptr %i.ct, i64 1 release, align 8, !noalias !29549
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.ag unwind label %bb.af

bb.ac:                                            ; preds = %bb.w
  %i.cw = load <2 x i64>, ptr %i.ag, align 16, !noalias !29543
  %.sroa.10171.sroa.9.0..sroa_idx295 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.10171.sroa.9.0.copyload296 = load i64, ptr %.sroa.10171.sroa.9.0..sroa_idx295, align 16, !noalias !29543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !29536
  br label %bb.aa

bb.ad:                                            ; preds = %bb.ae, %bb.y
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !29536
  unreachable

bb.ae:                                            ; preds = %bb.u
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0127.0.copyload, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !29550, !nonnull !75, !noundef !75
  invoke void %i.cz(ptr noundef %.sroa.10130.0.copyload, ptr noundef %.sroa.8128.0.copyload, i64 noundef %.sroa.9129.0.copyload)
          to label %.body67 unwind label %bb.ad, !noalias !29536, !inline_history !102

bb.af:                                            ; preds = %bb.ab, %bb.t
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body67

.body67:                                          ; preds = %bb.x, %bb.y, %bb.ae, %bb.af
  %eh.lpad-body68 = phi { ptr, i32 } [ %i.da, %bb.af ], [ %lpad.thr_comm.split-lp.i, %bb.ae ], [ %i.cn, %bb.y ], [ %i.cn, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.hc

bb.ag:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !29536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  store i64 %.sroa.7170.0, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 7 uses
  store <2 x i64> %i.cs, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i64 %.sroa.10171.sroa.9.0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8181.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11191)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.35)
  %i.db = load ptr, ptr %i.bz, align 8, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !75 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.df = load i64, ptr %i.de, align 8, !noundef !75
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !75
  %.not.i70 = icmp eq ptr %.sroa.0148.0, null     ; 4 uses
  %spec.select = select i1 %.not.i70, i64 undef, i64 %.sroa.15155.0 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 168
  %i.dj = load i16, ptr %i.di, align 8, !noundef !75
  call void @llvm.experimental.noalias.scope.decl(metadata !29551)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  %i.dk = trunc nuw i64 %.sroa.7170.0 to i1       ; 3 uses
  %i.dl = lshr i64 %.sroa.10171.sroa.9.0, 2       ; 3 uses
  %i.dm = lshr i64 %.sroa.10171.sroa.9.0, 1       ; 3 uses
  %.sroa.03.0.i = select i1 %i.dk, i64 %i.dl, i64 %i.dm ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !29552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !29552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !29552
  store i64 %i.dd, ptr %i.ad, align 8, !noalias !29553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !29553
  store i64 %.sroa.03.0.i, ptr %i.ac, align 8, !noalias !29553
  %i.dn = extractelement <2 x i64> %i.cs, i64 1
  %i.do = inttoptr i64 %i.dn to ptr               ; 6 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !29554
  %i.dp = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !29554 ; 13 uses
  %i.dq = icmp eq ptr %i.dp, null                 ; 2 uses
  br i1 %i.dk, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.dq, label %.invoke, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i.i, !prof !77

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i.i: ; preds = %bb.ah
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dl
  br label %_RNvMso_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_5Words4iter.exit.i.i

bb.ai:                                            ; preds = %bb.ag
  br i1 %i.dq, label %.invoke, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit1.i.i.i, !prof !77

.invoke:                                          ; preds = %bb.ai, %bb.ah
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #66
          to label %.cont unwind label %bb.fz

.cont:                                            ; preds = %.invoke
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit1.i.i.i: ; preds = %bb.ai
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.dm
  br label %_RNvMso_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_5Words4iter.exit.i.i

_RNvMso_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_5Words4iter.exit.i.i: ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit1.i.i.i, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i.i
  %.sink.i.i.i = phi ptr [ %i.ds, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit1.i.i.i ], [ %i.dr, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i.i ]
  %.sroa.3.0.i.i.i = phi ptr [ @2253, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit1.i.i.i ], [ @2254, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i.i ] ; 13 uses
  store ptr %i.do, ptr %i.dp, align 8, !noalias !29554
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %.sink.i.i.i, ptr %i.dt, align 8, !noalias !29554
  call void @llvm.experimental.noalias.scope.decl(metadata !29555)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !29556
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i.i, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !invariant.load !75, !alias.scope !29555, !noalias !29557, !nonnull !75 ; 2 uses
  %i.dw = invoke { i32, i32 } %i.dv(ptr noundef nonnull %i.dp)
          to label %bb.ak unwind label %bb.aj, !noalias !29556, !inline_history !29298 ; 2 uses

bb.aj:                                            ; preds = %_RNvMso_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_5Words4iter.exit.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ak:                                            ; preds = %_RNvMso_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_5Words4iter.exit.i.i
  %i.dy = extractvalue { i32, i32 } %i.dw, 0
  %i.dz = trunc i32 %i.dy to i1
  %i.ea = extractvalue { i32, i32 } %i.dw, 1
  %i.eb = trunc i32 %i.ea to i8
  %i.ec = and i8 %i.eb, 15
  br i1 %i.dz, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !29556
  %i.ed = load ptr, ptr %.sroa.3.0.i.i.i, align 8, !invariant.load !75, !alias.scope !29555, !noalias !29558 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void %i.ed(ptr noundef nonnull %i.dp)
          to label %bb.an unwind label %bb.ao, !noalias !29556

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i.i, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !range !76, !invariant.load !75, !alias.scope !29555, !noalias !29558 ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB2k_20analyze_value_counts0EE9from_iterB2q_.exit.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.an
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i.i, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !range !93, !invariant.load !75, !alias.scope !29555, !noalias !29558
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dp, i64 noundef %i.ef, i64 noundef range(i64 1, -9223372036854775807) %i.ei) #63, !noalias !29556
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB2k_20analyze_value_counts0EE9from_iterB2q_.exit.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i.i, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !range !76, !invariant.load !75, !alias.scope !29555, !noalias !29558 ; 2 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %.body74, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.ao
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i.i, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !range !93, !invariant.load !75, !alias.scope !29555, !noalias !29558
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dp, i64 noundef %i.el, i64 noundef range(i64 1, -9223372036854775807) %i.eo) #63, !noalias !29556
  br label %.body74

bb.ap:                                            ; preds = %bb.ar
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.aq:                                            ; preds = %bb.ak
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !29559
  %i.eq = call noundef dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, 17) 1) #63, !noalias !29559 ; 4 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8) #66
          to label %.noexc.i.i.i unwind label %bb.ap, !noalias !29556

.noexc.i.i.i:                                     ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq
  store i8 %i.ec, ptr %i.eq, align 1, !noalias !29556
  store i64 8, ptr %i.n, align 8, !noalias !29556
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  store ptr %i.eq, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !29556
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !29556
  call void @llvm.experimental.noalias.scope.decl(metadata !29560)
  call void @llvm.experimental.noalias.scope.decl(metadata !29561)
  call void @llvm.experimental.noalias.scope.decl(metadata !29562)
  call void @llvm.experimental.noalias.scope.decl(metadata !29563)
  br label %bb.at

bb.at:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i, %bb.as
  %i.es = phi ptr [ %i.fp, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i ], [ %i.eq, %bb.as ]
  %.sroa.16.0.copyload146.i.i = phi i64 [ %i.fr, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i ], [ 1, %bb.as ] ; 6 uses
  %i.et = invoke { i32, i32 } %i.dv(ptr noundef nonnull %i.dp)
          to label %bb.aw unwind label %bb.av, !noalias !29564, !inline_history !29298 ; 2 uses

bb.au:                                            ; preds = %bb.bc, %bb.av
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.fs, %bb.bc ], [ %i.eu, %bb.av ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB1b_20analyze_value_counts0EEB1h_(ptr nonnull %i.dp, ptr nonnull readonly align 8 dereferenceable(56) %.sroa.3.0.i.i.i) #67
          to label %.body.i.i.i unwind label %bb.be, !noalias !29565

bb.av:                                            ; preds = %bb.at
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.aw:                                            ; preds = %bb.at
  %i.ev = extractvalue { i32, i32 } %i.et, 0
  %i.ew = trunc i32 %i.ev to i1
  %i.ex = extractvalue { i32, i32 } %i.et, 1
  %i.ey = trunc i32 %i.ex to i8
  %i.ez = and i8 %i.ey, 15
  br i1 %i.ew, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fa = icmp sgt i64 %.sroa.16.0.copyload146.i.i, -1
  call void @llvm.assume(i1 %i.fa)
  %i.fb = load i64, ptr %i.n, align 8, !range !76, !alias.scope !29566, !noalias !29567, !noundef !75
  %i.fc = icmp eq i64 %.sroa.16.0.copyload146.i.i, %i.fb
  br i1 %i.fc, label %bb.bd, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.fd = load ptr, ptr %.sroa.3.0.i.i.i, align 8, !invariant.load !75, !alias.scope !29568, !noalias !29565 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  invoke void %i.fd(ptr noundef nonnull %i.dp)
          to label %bb.ba unwind label %bb.bb, !noalias !29564

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i.i, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !range !76, !invariant.load !75, !alias.scope !29568, !noalias !29565 ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB22_20analyze_value_counts0EE11spec_extendB28_.exit.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ba
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i.i, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !range !93, !invariant.load !75, !alias.scope !29568, !noalias !29565
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dp, i64 noundef %i.ff, i64 noundef range(i64 1, -9223372036854775807) %i.fi) #63, !noalias !29564
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB22_20analyze_value_counts0EE11spec_extendB28_.exit.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i.i, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !range !76, !invariant.load !75, !alias.scope !29568, !noalias !29565 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %.body.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i: ; preds = %bb.bb
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i.i, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !range !93, !invariant.load !75, !alias.scope !29568, !noalias !29565
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dp, i64 noundef %i.fl, i64 noundef range(i64 1, -9223372036854775807) %i.fo) #63, !noalias !29564
end_hunk_0
begin_hunk_1_@_RNCNvXsq_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB7_18MiniBlockSchedulerNtB7_23StructuralPageScheduler10initialize0Bd_:bb.a
  %i.ku = load i64, ptr %i.ja, align 8, !alias.scope !29590, !noalias !29580, !noundef !75 ; 3 uses
  %i.kv = load i64, ptr %i.k, align 8, !range !76, !alias.scope !29590, !noalias !29580, !noundef !75
  %i.kw = icmp eq i64 %i.ku, %i.kv
  br i1 %i.kw, label %bb.di, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecmE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit47.i.i

bb.di:                                            ; preds = %bb.dh
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs1akgR21QTtx_7roaring(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecmE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit47.i.i unwind label %bb.df, !noalias !29580

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecmE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit47.i.i: ; preds = %bb.di, %bb.dh
  %i.kx = load ptr, ptr %i.iz, align 8, !alias.scope !29590, !noalias !29580, !nonnull !75, !noundef !75
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.ku
  store i32 %i.kt, ptr %i.ky, align 4, !noalias !29580
  %i.kz = add i64 %i.ku, 1
  br label %bb.de

bb.dj:                                            ; preds = %bb.dg
  %i.la = load ptr, ptr %.sroa.3.0.i.i, align 8, !invariant.load !75, !alias.scope !29579, !noalias !29587 ; 2 uses
  %.not.i.i.i48.i.i = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i48.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  invoke void %i.la(ptr noundef nonnull %i.if)
          to label %bb.dl unwind label %bb.dm, !noalias !29580

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 8
  %i.lc = load i64, ptr %i.lb, align 8, !range !76, !invariant.load !75, !alias.scope !29579, !noalias !29587 ; 2 uses
  %i.ld = icmp eq i64 %i.lc, 0
  br i1 %i.ld, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB1b_17build_chunk_index0EEB1h_.exit54.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i51.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i51.i.i: ; preds = %bb.dl
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 16
  %i.lf = load i64, ptr %i.le, align 8, !range !93, !invariant.load !75, !alias.scope !29579, !noalias !29587
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.if, i64 noundef %i.lc, i64 noundef range(i64 1, -9223372036854775807) %i.lf) #63, !noalias !29580
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB1b_17build_chunk_index0EEB1h_.exit54.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.lg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 8
  %i.li = load i64, ptr %i.lh, align 8, !range !76, !invariant.load !75, !alias.scope !29579, !noalias !29587 ; 2 uses
  %i.lj = icmp eq i64 %i.li, 0
  br i1 %i.lj, label %.body52.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i49.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i49.i.i: ; preds = %bb.dm
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 16
  %i.ll = load i64, ptr %i.lk, align 8, !range !93, !invariant.load !75, !alias.scope !29579, !noalias !29587
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.if, i64 noundef %i.li, i64 noundef range(i64 1, -9223372036854775807) %i.ll) #63, !noalias !29580
  br label %.body52.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB1b_17build_chunk_index0EEB1h_.exit54.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i51.i.i, %bb.dl
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lm, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !29589
  store i64 0, ptr %i.ae, align 8, !alias.scope !29578, !noalias !29589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !29580
  br label %_RINvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB3_10PrefixSums11from_deltasINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtB5_9WordsIterNCNvB5_17build_chunk_index0EEBb_.exit.i

bb.dn:                                            ; preds = %.invoke.i.i
  %i.ln = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lo = load ptr, ptr %.sroa.3.0.i.i, align 8, !invariant.load !75, !noalias !29587 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  invoke void %i.lo(ptr noundef nonnull %i.if)
          to label %bb.dp unwind label %bb.dq, !noalias !29587

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 8
  %i.lq = load i64, ptr %i.lp, align 8, !range !76, !invariant.load !75, !noalias !29587 ; 2 uses
  %i.lr = icmp eq i64 %i.lq, 0
  br i1 %i.lr, label %.body.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.dp
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 16
  %i.lt = load i64, ptr %i.ls, align 8, !range !93, !invariant.load !75, !noalias !29587
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.if, i64 noundef %i.lq, i64 noundef range(i64 1, -9223372036854775807) %i.lt) #63, !noalias !29587
  br label %.body.i

bb.dq:                                            ; preds = %bb.do
  %i.lu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 8
  %i.lw = load i64, ptr %i.lv, align 8, !range !76, !invariant.load !75, !noalias !29587 ; 2 uses
  %i.lx = icmp eq i64 %i.lw, 0
  br i1 %i.lx, label %.body145.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.dq
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 16
  %i.lz = load i64, ptr %i.ly, align 8, !range !93, !invariant.load !75, !noalias !29587
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.if, i64 noundef %i.lw, i64 noundef range(i64 1, -9223372036854775807) %i.lz) #63, !noalias !29587
  br label %.body145.i

_RINvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB3_10PrefixSums11from_deltasINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtB5_9WordsIterNCNvB5_17build_chunk_index0EEBb_.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB1b_17build_chunk_index0EEB1h_.exit54.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB1b_17build_chunk_index0EEB1h_.exit.i.i
  %i.ma = phi i64 [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB1b_17build_chunk_index0EEB1h_.exit54.i.i ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB1b_17build_chunk_index0EEB1h_.exit.i.i ]
  %.not98.i531 = icmp eq ptr %.sroa.11152.0, null
  %.not98.i = select i1 %.not.i70, i1 true, i1 %.not98.i531
  br i1 %.not98.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %_RINvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB3_10PrefixSums11from_deltasINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtB5_9WordsIterNCNvB5_17build_chunk_index0EEBb_.exit.i
  %i.mb = and i64 %.sroa.15155.0, 7
  %i.mc = icmp eq i64 %i.mb, 0
  br i1 %i.mc, label %bb.dt, label %bb.fb, !prof !78

bb.ds:                                            ; preds = %_RINvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB3_10PrefixSums11from_deltasINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtB5_9WordsIterNCNvB5_17build_chunk_index0EEBb_.exit.i
  %i.md = trunc nuw i8 %.sroa.23.3225.i to i1
  br i1 %i.md, label %_RINvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB3_10PrefixSums11from_deltasINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1X_3ops5range5RangejENCNvB5_22flat_value_counts_iter0EEBb_.exit.i, label %bb.fh

bb.dt:                                            ; preds = %bb.dr
  %i.me = zext i16 %i.dj to i64                   ; 2 uses
  %i.mf = add nuw nsw i64 %i.me, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7190.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !29591)
  %i.mg = lshr exact i64 %.sroa.15155.0, 3        ; 2 uses
  %i.mh = udiv i64 %i.mg, %i.mf                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !29592
  %i.mi = add nuw nsw i64 %i.mh, 7                ; 2 uses
  %.sroa.05.0.i.i = lshr i64 %i.mi, 3             ; 4 uses
  %i.mj = and i64 %i.mi, 504
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %.split.i.i113.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %reass.sub.i.i.i = and i64 %.sroa.05.0.i.i, 288230376151711680
  %i.ml = add nuw nsw i64 %reass.sub.i.i.i, 64    ; 2 uses
  %i.mm = icmp samesign ult i64 %i.ml, %.sroa.05.0.i.i
  br i1 %i.mm, label %bb.dv, label %.split.thread.i.i.i, !prof !81

bb.dv:                                            ; preds = %bb.du
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1314, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1316) #66
          to label %.noexc114.i unwind label %bb.fc, !noalias !29552

.noexc114.i:                                      ; preds = %bb.dv
  unreachable

.split.i.i113.i:                                  ; preds = %bb.dt
  %i.mn = icmp eq i64 %.sroa.05.0.i.i, 0
  br i1 %i.mn, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i, label %.split.thread.i.i.i

.split.thread.i.i.i:                              ; preds = %.split.i.i113.i, %bb.du
  %.sroa.4.010.i.i.i = phi i64 [ %.sroa.05.0.i.i, %.split.i.i113.i ], [ %i.ml, %bb.du ] ; 3 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !29593
  %i.mo = call noundef align 128 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.sroa.4.010.i.i.i, i64 noundef 128) #63, !noalias !29593 ; 2 uses
  %i.mp = icmp eq ptr %i.mo, null
  br i1 %i.mp, label %bb.dw, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i, !prof !81

bb.dw:                                            ; preds = %.split.thread.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef %.sroa.4.010.i.i.i) #66
          to label %.noexc115.i unwind label %bb.fc, !noalias !29552

.noexc115.i:                                      ; preds = %bb.dw
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i: ; preds = %.split.thread.i.i.i, %.split.i.i113.i
  %.sroa.4.011.i.i.i = phi i64 [ 0, %.split.i.i113.i ], [ %.sroa.4.010.i.i.i, %.split.thread.i.i.i ]
  %.sroa.01.0.i.i.i = phi ptr [ inttoptr (i64 128 to ptr), %.split.i.i113.i ], [ %i.mo, %.split.thread.i.i.i ]
  store i64 128, ptr %i.i, align 16, !noalias !29592
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store i64 %.sroa.4.011.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !29592
  %.sroa.540.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  store ptr %.sroa.01.0.i.i.i, ptr %.sroa.540.0..sroa_idx.i.i, align 16, !noalias !29592
  %.sroa.641.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 6 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.641.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !29592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !29592
  %i.mr = add nuw nsw i64 %i.mh, 1                ; 3 uses
  %.not.i.i103.i = icmp eq i64 %i.mh, 1152921504606846975
  br i1 %.not.i.i103.i, label %bb.dz, label %bb.dx, !prof !80

bb.dx:                                            ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i
  %i.ms = shl nuw nsw i64 %i.mr, 3                ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !29594
  %i.mt = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ms, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !29594 ; 4 uses
  %i.mu = icmp eq ptr %i.mt, null
  br i1 %i.mu, label %bb.dz, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i.i

.thread.i.i:                                      ; preds = %bb.ez, %bb.ey, %.body18.i.i, %bb.ef, %bb.ee, %bb.dy
  %.pn11.i.i = phi { ptr, i32 } [ %i.mv, %bb.dy ], [ %eh.lpad-body19.i.i, %.body18.i.i ], [ %i.of, %bb.ef ], [ %i.of, %bb.ee ], [ %lpad.phi.i.i, %bb.ey ], [ %lpad.phi.i.i, %bb.ez ]
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %.body117.i unwind label %bb.el, !noalias !29592

bb.dy:                                            ; preds = %bb.dz
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.dz:                                            ; preds = %bb.dx, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i
  %.sroa.10.0.ph.i.i = phi i64 [ %i.ms, %bb.dx ], [ undef, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i ]
  %.sroa.443.0.ph.i.i = phi i64 [ 8, %bb.dx ], [ 0, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.443.0.ph.i.i, i64 %.sroa.10.0.ph.i.i) #66
          to label %bb.fa unwind label %bb.dy, !noalias !29592

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %bb.dx
  store i64 %i.mr, ptr %i.h, align 8, !noalias !29592
  %i.mw = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr %i.mt, ptr %i.mw, align 8, !noalias !29592
  %i.mx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 0, ptr %i.mt, align 8, !noalias !29592
  %invariant.op.i.i = add nsw i64 %.sroa.15155.0, -7
  store i64 1, ptr %i.mx, align 8, !noalias !29592
  %.not.i.not.i = icmp samesign ugt i64 %i.mg, %i.me
  br i1 %.not.i.not.i, label %.lr.ph.i104.preheader.i, label %._crit_edge.thread.i112.i

.lr.ph.i104.preheader.i:                          ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %i.my = shl nuw nsw i64 %i.mf, 3
  br label %.lr.ph.i104.i

._crit_edge.thread.i112.i:                        ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !29592
  br label %bb.ea

._crit_edge.i109.i:                               ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit30.i.i
  %.sroa.032.0.copyload.pre.i.i = load i64, ptr %i.h, align 8, !noalias !29592 ; 2 uses
  %.sroa.6.0.copyload.pre.i.i = load ptr, ptr %i.mw, align 8, !noalias !29592 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !29592
  call void @llvm.experimental.noalias.scope.decl(metadata !29595)
  call void @llvm.experimental.noalias.scope.decl(metadata !29596)
  %.not.i16.i.i = icmp eq i64 %i.qh, 0
  br i1 %.not.i16.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %._crit_edge.i109.i, %._crit_edge.thread.i112.i
  %.sroa.032.0.copyload106.i.i = phi i64 [ %i.mr, %._crit_edge.thread.i112.i ], [ %.sroa.032.0.copyload.pre.i.i, %._crit_edge.i109.i ] ; 5 uses
  %.sroa.6.0.copyload104.i.i = phi ptr [ %i.mt, %._crit_edge.thread.i112.i ], [ %.sroa.6.0.copyload.pre.i.i, %._crit_edge.i109.i ] ; 11 uses
  %.sroa.7.0.copyload102.i.i = phi i64 [ 1, %._crit_edge.thread.i112.i ], [ %i.qh, %._crit_edge.i109.i ] ; 7 uses
  %i.mz = getelementptr [8 x i8], ptr %.sroa.6.0.copyload104.i.i, i64 %.sroa.7.0.copyload102.i.i
  %i.na = getelementptr i8, ptr %i.mz, i64 -8
  %i.nb = load i64, ptr %i.na, align 8, !noalias !29597, !noundef !75
  %i.nc = icmp ult i64 %i.nb, 4294967296
  br i1 %i.nc, label %bb.eb, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIteryENCNvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB2S_10PrefixSums11from_prefix0EE9from_iterB30_.exit.i.i.i

bb.eb:                                            ; preds = %bb.ea
  %i.nd = icmp ult i64 %.sroa.7.0.copyload102.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.nd)
  %.idx9.i.i.i = shl nuw nsw i64 %.sroa.7.0.copyload102.i.i, 3 ; 2 uses
  %i.ne = getelementptr i8, ptr %.sroa.6.0.copyload104.i.i, i64 %.idx9.i.i.i ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.7.0.copyload102.i.i, 2 ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !29598
  %i.nf = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.idx.i.i.i, i64 noundef range(i64 1, 17) 4) #63, !noalias !29598 ; 7 uses
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %bb.ec, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.eb
  %i.nh = add nsw i64 %.idx9.i.i.i, -8            ; 3 uses
  %i.ni = lshr exact i64 %i.nh, 3
  %i.nj = add nuw nsw i64 %i.ni, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.nh, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader665, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.nk = lshr exact i64 %i.nh, 1
  %i.nl = getelementptr i8, ptr %i.nf, i64 %i.nk
  %i.nm = getelementptr i8, ptr %i.nl, i64 4
  %bound0 = icmp ult ptr %i.nf, %i.ne
  %bound1 = icmp ult ptr %.sroa.6.0.copyload104.i.i, %i.nm
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader665, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.nj, 4611686018427387900     ; 5 uses
  %i.nn = shl i64 %n.vec, 3
  %i.no = getelementptr i8, ptr %.sroa.6.0.copyload104.i.i, i64 %i.nn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.np = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.sroa.6.0.copyload104.i.i, i64 %i.np ; 2 uses
  %i.nq = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !29599, !noalias !29600
  %wide.load662 = load <2 x i64>, ptr %i.nq, align 8, !alias.scope !29599, !noalias !29600
  %i.nr = trunc <2 x i64> %wide.load to <2 x i32>
  %i.ns = trunc <2 x i64> %wide.load662 to <2 x i32>
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %index ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  store <2 x i32> %i.nr, ptr %i.nt, align 4, !alias.scope !29601, !noalias !29602
  store <2 x i32> %i.ns, ptr %i.nu, align 4, !alias.scope !29601, !noalias !29602
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nv = icmp eq i64 %index.next, %n.vec
  br i1 %i.nv, label %middle.block, label %vector.body, !llvm.loop !29379

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.nj, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader665

.lr.ph.i.i.i.i.i.i.i.i.i.preheader665:            ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph666 = phi ptr [ %.sroa.6.0.copyload104.i.i, %vector.memcheck ], [ %.sroa.6.0.copyload104.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.no, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.ec:                                            ; preds = %bb.eb
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %.idx.i.i.i) #66
          to label %.noexc.i.i.i.i unwind label %bb.ee, !noalias !29603

.noexc.i.i.i.i:                                   ; preds = %bb.ec
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader665, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.nw = phi i64 [ %i.oc, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader665 ] ; 2 uses
  %i.nx = phi ptr [ %i.nz, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph666, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader665 ] ; 2 uses
  %i.ny = load i64, ptr %i.nx, align 8, !noalias !29600, !noundef !75
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 8 ; 2 uses
  %i.oa = trunc i64 %i.ny to i32
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.nw
  store i32 %i.oa, ptr %i.ob, align 4, !noalias !29604
  %i.oc = add nuw nsw i64 %i.nw, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nz, %i.ne
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !29380

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i109.i
  %.sroa.032.0.copyload107.i.i = phi i64 [ %.sroa.032.0.copyload.pre.i.i, %._crit_edge.i109.i ], [ %.sroa.032.0.copyload106.i.i, %middle.block ], [ %.sroa.032.0.copyload106.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.0.copyload105.i.i = phi ptr [ %.sroa.6.0.copyload.pre.i.i, %._crit_edge.i109.i ], [ %.sroa.6.0.copyload104.i.i, %middle.block ], [ %.sroa.6.0.copyload104.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.sroa.7.0.copyload103.i.i = phi i64 [ 0, %._crit_edge.i109.i ], [ %.sroa.7.0.copyload102.i.i, %middle.block ], [ %.sroa.7.0.copyload102.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.0.i21.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %._crit_edge.i109.i ], [ %i.nf, %middle.block ], [ %i.nf, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.42.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i109.i ], [ %n.vec, %middle.block ], [ %i.oc, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.od = icmp eq i64 %.sroa.032.0.copyload107.i.i, 0
  br i1 %i.od, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIteryENCNvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB2S_10PrefixSums11from_prefix0EE9from_iterB30_.exit.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.oe = shl nuw i64 %.sroa.032.0.copyload107.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload105.i.i, i64 noundef %i.oe, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !29600
  br label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIteryENCNvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB2S_10PrefixSums11from_prefix0EE9from_iterB30_.exit.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.of = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.og = icmp eq i64 %.sroa.032.0.copyload106.i.i, 0
  br i1 %i.og, label %.thread.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.oh = shl nuw i64 %.sroa.032.0.copyload106.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload104.i.i, i64 noundef %i.oh, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !29605
  br label %.thread.i.i

.lr.ph.i104.i:                                    ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit30.i.i, %.lr.ph.i104.preheader.i
  %.sroa.0.068.i.i = phi i64 [ %i.qb, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit30.i.i ], [ 0, %.lr.ph.i104.preheader.i ]
  %.sroa.02.067.i.i = phi i1 [ %i.pf, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit30.i.i ], [ false, %.lr.ph.i104.preheader.i ]
  %.sroa.06.066.i.i = phi i64 [ %i.oi, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit30.i.i ], [ 0, %.lr.ph.i104.preheader.i ] ; 2 uses
  %i.oi = add nuw nsw i64 %.sroa.06.066.i.i, 1    ; 2 uses
  %i.oj = mul i64 %.sroa.06.066.i.i, %i.my        ; 5 uses
  %i.ok = or disjoint i64 %i.oj, 7
  %or.cond.not.i.i.i = icmp ult i64 %i.ok, %spec.select
  %i.ol = add i64 %i.oj, 8                        ; 4 uses
  br i1 %or.cond.not.i.i.i, label %bb.em, label %.invoke.i105.i, !prof !114

.invoke.i105.i:                                   ; preds = %.lr.ph.i104.i, %bb.en
  %i.om = phi i64 [ %i.ol, %bb.en ], [ %i.oj, %.lr.ph.i104.i ]
  %i.on = phi i64 [ %i.pc, %bb.en ], [ %i.ol, %.lr.ph.i104.i ]
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.om, i64 noundef %i.on, i64 noundef range(i64 0, -9223372036854775808) %spec.select, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1028) #66
          to label %.cont.i108.i unwind label %.loopexit.split-lp.i.i, !noalias !29592

.cont.i108.i:                                     ; preds = %.invoke.i105.i
  unreachable

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIteryENCNvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB2S_10PrefixSums11from_prefix0EE9from_iterB30_.exit.i.i.i: ; preds = %bb.ed, %._crit_edge.i.i.i.i.i.i.i.i.i, %bb.ea
  %.sroa.7.0.copyload103.sink.i.i = phi i64 [ %.sroa.032.0.copyload106.i.i, %bb.ea ], [ %.sroa.7.0.copyload103.i.i, %bb.ed ], [ %.sroa.7.0.copyload103.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.10.0.i21.i.i.sink.i.i = phi ptr [ %.sroa.6.0.copyload104.i.i, %bb.ea ], [ %.sroa.10.0.i21.i.i.i.i, %bb.ed ], [ %.sroa.10.0.i21.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.42.0.i.i.i.i.i.i.sink.i.i = phi i64 [ %.sroa.7.0.copyload102.i.i, %bb.ea ], [ %.sroa.42.0.i.i.i.i.i.i.i.i, %bb.ed ], [ %.sroa.42.0.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %storemerge.i.i.i = phi i64 [ 1, %bb.ea ], [ 0, %bb.ed ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.7.0.copyload103.sink.i.i, ptr %i.oo, align 8, !alias.scope !29606, !noalias !29592
  %.sroa.4.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.10.0.i21.i.i.sink.i.i, ptr %.sroa.4.0..sroa_idx4.i.i.i, align 8, !alias.scope !29606, !noalias !29592
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.42.0.i.i.i.i.i.i.sink.i.i, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8, !alias.scope !29606, !noalias !29592
  store i64 %storemerge.i.i.i, ptr %i.g, align 8, !alias.scope !29595, !noalias !29607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !29592
  call void @llvm.experimental.noalias.scope.decl(metadata !29608)
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.540.0..sroa_idx.i.i, align 16, !alias.scope !29608, !noalias !29609, !nonnull !75, !noundef !75 ; 2 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.641.0..sroa_idx.i.i, align 8, !alias.scope !29608, !noalias !29609 ; 2 uses
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.540.0..sroa_idx.i.i, align 16, !alias.scope !29608, !noalias !29609
  store i64 0, ptr %.sroa.641.0..sroa_idx.i.i, align 8, !alias.scope !29608, !noalias !29609
  %i.op = load i64, ptr %i.mq, align 16, !alias.scope !29608, !noalias !29609, !noundef !75
  store i64 0, ptr %i.mq, align 16, !alias.scope !29608, !noalias !29609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !29610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !29610
  store i64 1, ptr %i.d, align 8, !noalias !29610
  %i.oq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.oq, align 8, !noalias !29610
  %i.or = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %i.or, align 8, !noalias !29610
  %.sroa.42.0..sroa_idx.i.i110.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i110.i, align 8, !noalias !29610
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !29610
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.os = load <2 x i64>, ptr %i.i, align 16, !alias.scope !29608, !noalias !29609
  store i64 128, ptr %i.i, align 16, !alias.scope !29608, !noalias !29609
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !29608, !noalias !29609
  store <2 x i64> %i.os, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !29610
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !29611
  %i.ot = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !29611 ; 3 uses
  %i.ou = icmp eq ptr %i.ot, null
  %i.ov = ptrtoint ptr %.sroa.10.0.i21.i.i.sink.i.i to i64 ; 2 uses
  br i1 %i.ou, label %bb.eg, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, !prof !77

bb.eg:                                            ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIteryENCNvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB2S_10PrefixSums11from_prefix0EE9from_iterB30_.exit.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #66
          to label %.noexc.i.i111.i unwind label %bb.eh, !noalias !29610

.noexc.i.i111.i:                                  ; preds = %bb.eg
  unreachable

bb.eh:                                            ; preds = %bb.eg
  %i.ow = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d) #67
          to label %.body18.i.i unwind label %bb.ei, !noalias !29610

bb.ei:                                            ; preds = %bb.eh
  %i.ox = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !29610
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIteryENCNvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB2S_10PrefixSums11from_prefix0EE9from_iterB30_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ot, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !29610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29610
  store ptr %i.ot, ptr %i.e, align 8, !noalias !29610
  %i.oy = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %i.oy, align 8, !noalias !29610
  %i.oz = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %i.oz, align 8, !noalias !29610
  invoke void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i64 noundef 0, i64 noundef %i.op)
          to label %bb.ek unwind label %bb.ej, !noalias !29592

bb.ej:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %.body18.i.i

.body18.i.i:                                      ; preds = %bb.ej, %bb.eh
  %eh.lpad-body19.i.i = phi { ptr, i32 } [ %i.pa, %bb.ej ], [ %i.ow, %bb.eh ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_index10PrefixSumsEBL_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g) #67, !noalias !29592
  br label %.thread.i.i

bb.ek:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !29610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7190.i, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !29612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !29592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !29592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !29592
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %bb.fd unwind label %bb.fc, !noalias !29552

bb.el:                                            ; preds = %.thread.i.i
  %i.pb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !29592
  unreachable

bb.em:                                            ; preds = %.lr.ph.i104.i
  %or.cond.not.i21.i.i = icmp ult i64 %i.ol, %invariant.op.i.i
  br i1 %or.cond.not.i21.i.i, label %bb.eo, label %bb.en, !prof !114

bb.en:                                            ; preds = %bb.em
  %i.pc = add i64 %i.oj, 16
  br label %.invoke.i105.i

bb.eo:                                            ; preds = %bb.em
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.11152.0, i64 %i.oj
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %i.pd, align 1, !alias.scope !29613, !noalias !29614
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.11152.0, i64 %i.ol
  %.sroa.01.0.copyload.i22.i.i = load i64, ptr %i.pe, align 1, !alias.scope !29613, !noalias !29614
  %i.pf = icmp ne i64 %.sroa.01.0.copyload.i22.i.i, 0 ; 3 uses
  %i.pg = zext i1 %i.pf to i64
  %.neg.i.i = sext i1 %.sroa.02.067.i.i to i64
  %i.ph = load i64, ptr %i.mq, align 16, !alias.scope !29615, !noalias !29592, !noundef !75 ; 3 uses
  %i.pi = add i64 %i.ph, 1                        ; 3 uses
  %i.pj = lshr i64 %i.pi, 3
  %i.pk = and i64 %i.pi, 7
  %.not.i25.i.i = icmp ne i64 %i.pk, 0
  %i.pl = zext i1 %.not.i25.i.i to i64
  %.sroa.0.0.i.i.i = add nuw nsw i64 %i.pj, %i.pl ; 8 uses
  %i.pm = load i64, ptr %.sroa.641.0..sroa_idx.i.i, align 8, !alias.scope !29615, !noalias !29592, !noundef !75 ; 3 uses
  %i.pn = icmp ugt i64 %.sroa.0.0.i.i.i, %i.pm
  br i1 %i.pn, label %bb.ep, label %bb.eu

bb.ep:                                            ; preds = %bb.eo
  %i.po = sub nuw nsw i64 %.sroa.0.0.i.i.i, %i.pm
  %i.pp = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !29616, !noalias !29592, !noundef !75 ; 2 uses
  %i.pq = icmp ugt i64 %.sroa.0.0.i.i.i, %i.pp
  br i1 %i.pq, label %bb.eq, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i, !prof !81

bb.eq:                                            ; preds = %bb.ep
  %i.pr = and i64 %.sroa.0.0.i.i.i, 63
  %i.ps = icmp eq i64 %i.pr, 0
  br i1 %i.ps, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %reass.sub.i.i.i.i = and i64 %.sroa.0.0.i.i.i, 4611686018427387840
  %i.pt = add nuw nsw i64 %reass.sub.i.i.i.i, 64  ; 2 uses
  %i.pu = icmp samesign ult i64 %i.pt, %.sroa.0.0.i.i.i
  br i1 %i.pu, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.sroa.4.0.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %bb.eq ], [ %i.pt, %bb.er ]
  %i.pv = shl nuw nsw i64 %i.pp, 1
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.pv, i64 %.sroa.4.0.i.i.i.i)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i, i64 noundef %.sroa.0.0.i.i.i.i)
          to label %.noexc27.i.i unwind label %.loopexit.i.i, !noalias !29592

.noexc27.i.i:                                     ; preds = %bb.es
  %.pre.i26.i.i = load i64, ptr %.sroa.641.0..sroa_idx.i.i, align 8, !alias.scope !29615, !noalias !29592
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i

bb.et:                                            ; preds = %bb.er
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1314, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1316) #66
          to label %.noexc28.i.i unwind label %.loopexit.split-lp.i.i, !noalias !29592

.noexc28.i.i:                                     ; preds = %bb.et
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i: ; preds = %.noexc27.i.i, %bb.ep
  %i.pw = phi i64 [ %i.pm, %bb.ep ], [ %.pre.i26.i.i, %.noexc27.i.i ]
  %i.px = load ptr, ptr %.sroa.540.0..sroa_idx.i.i, align 16, !alias.scope !29615, !noalias !29592, !nonnull !75, !noundef !75
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.pw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.py, i8 0, i64 %i.po, i1 false), !noalias !29592
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.641.0..sroa_idx.i.i, align 8, !alias.scope !29615, !noalias !29592
  br label %bb.eu

bb.eu:                                            ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i, %bb.eo
  store i64 %i.pi, ptr %i.mq, align 16, !alias.scope !29615, !noalias !29592
  br i1 %i.pf, label %bb.ex, label %bb.ev

bb.ev:                                            ; preds = %bb.ex, %bb.eu
  %i.pz = add i64 %.sroa.0.068.i.i, %.neg.i.i
  %i.qa = add i64 %i.pz, %.sroa.01.0.copyload.i.i.i
  %i.qb = add i64 %i.qa, %i.pg                    ; 2 uses
  %i.qc = load i64, ptr %i.mx, align 8, !alias.scope !29617, !noalias !29592, !noundef !75 ; 3 uses
  %i.qd = load i64, ptr %i.h, align 8, !range !76, !alias.scope !29617, !noalias !29592, !noundef !75
  %i.qe = icmp eq i64 %i.qc, %i.qd
  br i1 %i.qe, label %bb.ew, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit30.i.i

bb.ew:                                            ; preds = %bb.ev
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit30.i.i unwind label %.loopexit.i.i, !noalias !29592

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit30.i.i: ; preds = %bb.ew, %bb.ev
  %i.qf = load ptr, ptr %i.mw, align 8, !alias.scope !29617, !noalias !29592, !nonnull !75, !noundef !75
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %i.qc
  store i64 %i.qb, ptr %i.qg, align 8, !noalias !29592
  %i.qh = add i64 %i.qc, 1                        ; 3 uses
  store i64 %i.qh, ptr %i.mx, align 8, !noalias !29592
  %exitcond.not.i.i = icmp eq i64 %i.oi, %i.mh
  br i1 %exitcond.not.i.i, label %._crit_edge.i109.i, label %.lr.ph.i104.i

bb.ex:                                            ; preds = %bb.eu
  %i.qi = load ptr, ptr %.sroa.540.0..sroa_idx.i.i, align 16, !noalias !29592, !nonnull !75, !noundef !75
  %i.qj = trunc i64 %i.ph to i8
  %i.qk = and i8 %i.qj, 7
  %i.ql = shl nuw i8 1, %i.qk
  %i.qm = lshr i64 %i.ph, 3
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.qm ; 2 uses
  %i.qo = load i8, ptr %i.qn, align 1, !noalias !29592, !noundef !75
  %i.qp = or i8 %i.qo, %i.ql
  store i8 %i.qp, ptr %i.qn, align 1, !noalias !29592
  br label %bb.ev

.loopexit.i.i:                                    ; preds = %bb.ew, %bb.es
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

.loopexit.split-lp.i.i:                           ; preds = %bb.et, %.invoke.i105.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.ey:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29618)
  %.val.i.i106.i = load i64, ptr %i.h, align 8, !alias.scope !29618, !noalias !29592 ; 2 uses
  %i.qq = icmp eq i64 %.val.i.i106.i, 0
  br i1 %i.qq, label %.thread.i.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %.val1.i.i107.i = load ptr, ptr %i.mw, align 8, !alias.scope !29618, !noalias !29592, !nonnull !75, !noundef !75
  %i.qr = shl nuw i64 %.val.i.i106.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i107.i, i64 noundef %i.qr, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !29619
  br label %.thread.i.i

bb.fa:                                            ; preds = %bb.dz
  unreachable

bb.fb:                                            ; preds = %bb.dr
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2495, i64 noundef 47, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2496) #66
          to label %bb.fg unwind label %bb.fc, !noalias !29552

bb.fc:                                            ; preds = %.invoke334.i, %bb.fb, %bb.ek, %bb.dw, %bb.dv
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %.body117.i

.body117.i:                                       ; preds = %bb.fu, %bb.ft, %bb.fp, %bb.fo, %bb.fc, %.thread.i.i
  %eh.lpad-body118.i = phi { ptr, i32 } [ %.pn11.i.i, %.thread.i.i ], [ %i.qs, %bb.fc ], [ %lpad.loopexit69.i.i, %bb.fp ], [ %lpad.loopexit69.i.i, %bb.fo ], [ %lpad.loopexit.i130.i, %bb.ft ], [ %lpad.loopexit.i130.i, %bb.fu ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_index10PrefixSumsEBL_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ae) #67, !noalias !29552
  br label %.body.i

bb.fd:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !29592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7190.i, i64 40, i1 false), !noalias !29552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7190.i)
  %i.qt = trunc nuw i8 %.sroa.23.3225.i to i1
  br i1 %i.qt, label %_RINvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB3_10PrefixSums11from_deltasINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1X_3ops5range5RangejENCNvB5_22flat_value_counts_iter0EEBb_.exit.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %.sroa.8187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.8187.0.copyload = load i8, ptr %.sroa.8187.0..sroa_idx, align 8, !noalias !29620
  %.sroa.11191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11191, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11191.0..sroa_idx, i64 7, i1 false), !noalias !29620
  %.sroa.12194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.qu = load <2 x i64>, ptr %.sroa.12194.0..sroa_idx, align 8, !noalias !29620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.35, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.i, i64 40, i1 false), !noalias !29620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !29552
  br label %_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_index19MiniBlockChunkIndexNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBU_.exit

_RINvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB3_10PrefixSums11from_deltasINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1X_3ops5range5RangejENCNvB5_22flat_value_counts_iter0EEBb_.exit.i: ; preds = %._crit_edge82.i.i, %._crit_edge.i122.i, %bb.fd, %bb.ds
  %.sroa.10.sroa.7.0.i = phi i64 [ undef, %._crit_edge.i122.i ], [ undef, %bb.ds ], [ undef, %._crit_edge82.i.i ], [ %.sroa.22.3226.i, %bb.fd ] ; 2 uses
  %.sroa.10.sroa.5.0.i = phi i64 [ undef, %._crit_edge.i122.i ], [ undef, %bb.ds ], [ undef, %._crit_edge82.i.i ], [ %.sroa.21165.3227.i, %bb.fd ] ; 2 uses
  %.sroa.10.sroa.0.0.i = phi i64 [ %.sroa.9197.8.copyload.i, %._crit_edge.i122.i ], [ undef, %bb.ds ], [ %.sroa.9197.8.copyload199.i, %._crit_edge82.i.i ], [ -1, %bb.fd ] ; 2 uses
  %.sroa.9.0.i = phi i64 [ %.sroa.8194.8.copyload.i, %._crit_edge.i122.i ], [ %.sroa.03.0.i, %bb.ds ], [ %.sroa.8194.8.copyload196.i, %._crit_edge82.i.i ], [ %.sroa.42.0.i.i.i.i.i.i.sink.i.i, %bb.fd ] ; 2 uses
  %.sroa.8.0.i = phi i64 [ %.sroa.5192.8.copyload.i, %._crit_edge.i122.i ], [ %.sroa.22.3226.i, %bb.ds ], [ %.sroa.5192.8.copyload193.i, %._crit_edge82.i.i ], [ %i.ov, %bb.fd ] ; 2 uses
  %.sroa.615.0.i = phi i64 [ 1, %._crit_edge.i122.i ], [ %.sroa.21165.3227.i, %bb.ds ], [ 0, %._crit_edge82.i.i ], [ %.sroa.7.0.copyload103.sink.i.i, %bb.fd ] ; 2 uses
  %.sroa.011.0.i = phi i64 [ 3, %._crit_edge.i122.i ], [ 2, %bb.ds ], [ 3, %._crit_edge82.i.i ], [ %storemerge.i.i.i, %bb.fd ] ; 2 uses
  %.sroa.8187.0..sroa_idx188 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.8187.0.copyload189 = load i8, ptr %.sroa.8187.0..sroa_idx188, align 8, !noalias !29620 ; 2 uses
  %.sroa.11191.0..sroa_idx192 = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11191, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11191.0..sroa_idx192, i64 7, i1 false), !noalias !29620
  %.sroa.12194.0..sroa_idx195 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.qv = load <2 x i64>, ptr %.sroa.12194.0..sroa_idx195, align 8, !noalias !29620 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.35, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.i, i64 40, i1 false), !noalias !29620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !29552
  %i.qw = icmp eq i64 %.sroa.13155.3232.i, 0
  br i1 %i.qw, label %_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_index19MiniBlockChunkIndexNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBU_.exit, label %bb.ff

bb.ff:                                            ; preds = %_RINvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB3_10PrefixSums11from_deltasINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1X_3ops5range5RangejENCNvB5_22flat_value_counts_iter0EEBb_.exit.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.17.3229.i, i64 noundef %.sroa.13155.3232.i, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !29621
  br label %_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_index19MiniBlockChunkIndexNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBU_.exit

bb.fg:                                            ; preds = %bb.fb
  unreachable

bb.fh:                                            ; preds = %bb.ds
  %i.qx = icmp ult i64 %i.dd, 4294967296
  br i1 %i.qx, label %bb.fl, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29622
  %i.qy = shl i64 %i.im, 3                        ; 3 uses
  %i.qz = icmp samesign ugt i64 %.sroa.03.0.i, 2305843009213693950
  %.not.i.i120.i = icmp ugt i64 %i.qy, 9223372036854775800
  %or.cond.i.i121.i = select i1 %i.qz, i1 true, i1 %.not.i.i120.i, !prof !80
end_hunk_1
