Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_RNCNvXsq_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB7_18MiniBlockSchedulerNtB7_23StructuralPageScheduler10initialize0Bd_:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.av, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48
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
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsjjpCCFGI3ul_14lance_encoding.exit100 unwind label %bb.gn

bb.g:                                             ; preds = %bb.b, %bb.c
  %.val50 = phi ptr [ %.val50.pre, %bb.b ], [ %i.ax, %bb.c ]
  %.val49 = phi ptr [ %.val49.pre, %bb.b ], [ %i.av, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bc = getelementptr i8, ptr %1, i64 48        ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val50, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !invariant.load !75, !noalias !29066, !nonnull !75
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
  br i1 %.not.i55, label %bb.m, label %bb.hi

bb.m:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsjjpCCFGI3ul_14lance_encoding.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.sroa.4.0.copyload) ]
  %i.bu = icmp ult i64 %.sroa.3.sroa.6.0.copyload, 288230376151711744
  call void @llvm.assume(i1 %i.bu)
  %.idx = shl nuw nsw i64 %.sroa.3.sroa.6.0.copyload, 5
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.4.0.copyload, i64 %.idx ; 2 uses
  store ptr %.sroa.3.sroa.4.0.copyload, ptr %i.as, align 8, !alias.scope !29067
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  store ptr %.sroa.3.sroa.4.0.copyload, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !29067
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 %.sroa.3.sroa.2.0.copyload, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !29067
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.bv, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !29067
  call void @llvm.experimental.noalias.scope.decl(metadata !29068)
  call void @llvm.experimental.noalias.scope.decl(metadata !29069)
  call void @llvm.experimental.noalias.scope.decl(metadata !29070)
  %i.bw = icmp eq i64 %.sroa.3.sroa.6.0.copyload, 0
  br i1 %i.bw, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.4.0.copyload, i64 32 ; 4 uses
  store ptr %i.bx, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !29071
  %.sroa.0127.0.copyload = load ptr, ptr %.sroa.3.sroa.4.0.copyload, align 8, !noalias !29071 ; 3 uses
  %.sroa.8128.0..sroa.10.0.copyload.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.4.0.copyload, i64 8
  %.sroa.8128.0.copyload = load ptr, ptr %.sroa.8128.0..sroa.10.0.copyload.sroa_idx, align 8, !noalias !29071 ; 2 uses
  %.sroa.9129.0..sroa.10.0.copyload.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.4.0.copyload, i64 16
  %.sroa.9129.0.copyload = load i64, ptr %.sroa.9129.0..sroa.10.0.copyload.sroa_idx, align 8, !noalias !29071 ; 3 uses
  %.sroa.10130.0..sroa.10.0.copyload.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.4.0.copyload, i64 24
  %.sroa.10130.0.copyload = load ptr, ptr %.sroa.10130.0..sroa.10.0.copyload.sroa_idx, align 8, !noalias !29071 ; 2 uses
  %.not.i43 = icmp eq ptr %.sroa.0127.0.copyload, null
  br i1 %.not.i43, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread, label %bb.n, !prof !79

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread: ; preds = %bb.m, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1233) #66
          to label %.noexc44 unwind label %bb.hb

.noexc44:                                         ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread
  unreachable

bb.n:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 112
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !29072, !noundef !75
  %.not.i57 = icmp eq ptr %i.cb, null
  call void @llvm.experimental.noalias.scope.decl(metadata !29073)
  br i1 %.not.i57, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !29074)
  call void @llvm.experimental.noalias.scope.decl(metadata !29075)
  %i.cc = icmp eq i64 %.sroa.3.sroa.6.0.copyload, 1
  br i1 %i.cc, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.4.0.copyload, i64 64 ; 2 uses
  store ptr %i.cd, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !29076
  %.sroa.0131.0.copyload134 = load ptr, ptr %i.bx, align 8, !noalias !29077
  %.sroa.12135.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.4.0.copyload, i64 40
  %.sroa.12135.0.copyload137 = load ptr, ptr %.sroa.12135.0..sroa_idx136, align 8, !noalias !29077
  %.sroa.15.0..sroa_idx140 = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.4.0.copyload, i64 48
  %.sroa.15.0.copyload141 = load i64, ptr %.sroa.15.0..sroa_idx140, align 8, !noalias !29077
  %.sroa.18.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.4.0.copyload, i64 56
  %.sroa.18.0.copyload145 = load ptr, ptr %.sroa.18.0..sroa_idx144, align 8, !noalias !29077
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  %.sroa.18.0 = phi ptr [ %.sroa.18.0.copyload145, %bb.p ], [ undef, %bb.o ], [ undef, %bb.n ] ; 4 uses
  %.sroa.15.0 = phi i64 [ %.sroa.15.0.copyload141, %bb.p ], [ undef, %bb.o ], [ undef, %bb.n ] ; 4 uses
  %.sroa.12135.0 = phi ptr [ %.sroa.12135.0.copyload137, %bb.p ], [ undef, %bb.o ], [ undef, %bb.n ] ; 4 uses
  %.sroa.0131.0 = phi ptr [ %.sroa.0131.0.copyload134, %bb.p ], [ null, %bb.o ], [ null, %bb.n ] ; 8 uses
  %i.ce = phi ptr [ %i.cd, %bb.p ], [ %i.bx, %bb.o ], [ %i.bx, %bb.n ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29078)
  call void @llvm.experimental.noalias.scope.decl(metadata !29079)
  call void @llvm.experimental.noalias.scope.decl(metadata !29080)
  %i.cf = icmp eq ptr %i.ce, %i.bv
  br i1 %i.cf, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit61, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  store ptr %i.cg, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !29081
  %.sroa.0148.0.copyload = load ptr, ptr %i.ce, align 8, !noalias !29081
  %.sroa.11152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.11152.0.copyload = load ptr, ptr %.sroa.11152.0..sroa_idx, align 8, !noalias !29081
  %.sroa.15155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %.sroa.15155.0.copyload = load i64, ptr %.sroa.15155.0..sroa_idx, align 8, !noalias !29081
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %.sroa.19.0.copyload = load ptr, ptr %.sroa.19.0..sroa_idx, align 8, !noalias !29081
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
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 170
  %i.ci = load i8, ptr %i.ch, align 2, !range !89, !noundef !75
  %i.cj = trunc nuw i8 %i.ci to i1                ; 2 uses
  %..i62 = select i1 %i.cj, i64 4, i64 2          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !29082
  %i.ck = add nsw i64 %..i62, -1
  %i.cl = and i64 %i.ck, %.sroa.9129.0.copyload   ; 2 uses
  store i64 %i.cl, ptr %i.ai, align 8, !noalias !29082
  %.not.i63 = icmp eq i64 %i.cl, 0
  br i1 %.not.i63, label %bb.t, label %bb.u, !prof !78

bb.s:                                             ; preds = %bb.u
  unreachable

bb.t:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !29082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !29082
  invoke void @_RNvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB2_11LanceBuffer10from_bytes(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.ap, i64 noundef %..i62)
          to label %.noexc65 unwind label %bb.af

.noexc65:                                         ; preds = %bb.t
  br i1 %i.cj, label %bb.w, label %bb.v

bb.u:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit61
  invoke void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @826, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2252) #66
          to label %bb.s unwind label %bb.ae, !noalias !29082

bb.v:                                             ; preds = %.noexc65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !29082
  invoke fastcc void @_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer21borrow_to_typed_slicetEB5_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
          to label %bb.z unwind label %bb.x, !noalias !29082

bb.w:                                             ; preds = %.noexc65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !29082
  invoke fastcc void @_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer21borrow_to_typed_slicemEB5_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
          to label %bb.ac unwind label %bb.x, !noalias !29082

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29083)
  call void @llvm.experimental.noalias.scope.decl(metadata !29084)
  call void @llvm.experimental.noalias.scope.decl(metadata !29085)
  call void @llvm.experimental.noalias.scope.decl(metadata !29086)
  %i.cn = load ptr, ptr %i.ah, align 8, !alias.scope !29087, !noalias !29082, !nonnull !75, !noundef !75
  %i.co = atomicrmw add ptr %i.cn, i64 -1 release, align 8, !noalias !29088
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.y, label %.body67

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body67 unwind label %bb.ad, !noalias !29082

bb.z:                                             ; preds = %bb.v
  %i.cq = load <2 x i64>, ptr %i.af, align 16, !noalias !29089
  %.sroa.10171.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.10171.sroa.9.0.copyload = load i64, ptr %.sroa.10171.sroa.9.0..sroa_idx, align 16, !noalias !29089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !29082
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %bb.z
  %.sroa.10171.sroa.9.0 = phi i64 [ %.sroa.10171.sroa.9.0.copyload296, %bb.ac ], [ %.sroa.10171.sroa.9.0.copyload, %bb.z ] ; 3 uses
  %.sroa.7170.0 = phi i64 [ 1, %bb.ac ], [ 0, %bb.z ] ; 2 uses
  %i.cr = phi <2 x i64> [ %i.cv, %bb.ac ], [ %i.cq, %bb.z ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29090)
  call void @llvm.experimental.noalias.scope.decl(metadata !29091)
  call void @llvm.experimental.noalias.scope.decl(metadata !29092)
  call void @llvm.experimental.noalias.scope.decl(metadata !29093)
  %i.cs = load ptr, ptr %i.ah, align 8, !alias.scope !29094, !noalias !29082, !nonnull !75, !noundef !75
  %i.ct = atomicrmw add ptr %i.cs, i64 -1 release, align 8, !noalias !29095
  %i.cu = icmp eq i64 %i.ct, 1
  br i1 %i.cu, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.ag unwind label %bb.af

bb.ac:                                            ; preds = %bb.w
  %i.cv = load <2 x i64>, ptr %i.ag, align 16, !noalias !29089
  %.sroa.10171.sroa.9.0..sroa_idx295 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.10171.sroa.9.0.copyload296 = load i64, ptr %.sroa.10171.sroa.9.0..sroa_idx295, align 16, !noalias !29089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !29082
  br label %bb.aa

bb.ad:                                            ; preds = %bb.ae, %bb.y
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !29082
  unreachable

bb.ae:                                            ; preds = %bb.u
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0127.0.copyload, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !29096, !nonnull !75, !noundef !75
  invoke void %i.cy(ptr noundef %.sroa.10130.0.copyload, ptr noundef %.sroa.8128.0.copyload, i64 noundef %.sroa.9129.0.copyload)
          to label %.body67 unwind label %bb.ad, !noalias !29082, !inline_history !102

bb.af:                                            ; preds = %bb.ab, %bb.t
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.body67

.body67:                                          ; preds = %bb.x, %bb.y, %bb.ae, %bb.af
  %eh.lpad-body68 = phi { ptr, i32 } [ %i.cz, %bb.af ], [ %lpad.thr_comm.split-lp.i, %bb.ae ], [ %i.cm, %bb.y ], [ %i.cm, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.gv

bb.ag:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !29082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  store i64 %.sroa.7170.0, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 7 uses
  store <2 x i64> %i.cr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i64 %.sroa.10171.sroa.9.0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8181.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11191)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.35)
  %i.da = load ptr, ptr %i.by, align 8, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.dc = load i64, ptr %i.db, align 8, !noundef !75 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.de = load i64, ptr %i.dd, align 8, !noundef !75
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dg = load i64, ptr %i.df, align 8, !noundef !75
  %.not.i70 = icmp eq ptr %.sroa.0148.0, null     ; 4 uses
  %spec.select = select i1 %.not.i70, i64 undef, i64 %.sroa.15155.0 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 168
  %i.di = load i16, ptr %i.dh, align 8, !noundef !75
  call void @llvm.experimental.noalias.scope.decl(metadata !29097)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  %i.dj = trunc nuw i64 %.sroa.7170.0 to i1       ; 3 uses
  %i.dk = lshr i64 %.sroa.10171.sroa.9.0, 2       ; 3 uses
  %i.dl = lshr i64 %.sroa.10171.sroa.9.0, 1       ; 3 uses
  %.sroa.03.0.i = select i1 %i.dj, i64 %i.dk, i64 %i.dl ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !29098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !29098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !29098
  store i64 %i.dc, ptr %i.ad, align 8, !noalias !29099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !29099
  store i64 %.sroa.03.0.i, ptr %i.ac, align 8, !noalias !29099
  %i.dm = extractelement <2 x i64> %i.cr, i64 1
  %i.dn = inttoptr i64 %i.dm to ptr               ; 6 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !29100
  %i.do = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !29100 ; 13 uses
  %i.dp = icmp eq ptr %i.do, null                 ; 2 uses
  br i1 %i.dj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.dp, label %.invoke, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i.i, !prof !77

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i.i: ; preds = %bb.ah
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dk
  br label %_RNvMso_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_5Words4iter.exit.i.i

bb.ai:                                            ; preds = %bb.ag
  br i1 %i.dp, label %.invoke, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit1.i.i.i, !prof !77

.invoke:                                          ; preds = %bb.ai, %bb.ah
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #66
          to label %.cont unwind label %bb.fs

.cont:                                            ; preds = %.invoke
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit1.i.i.i: ; preds = %bb.ai
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.dl
  br label %_RNvMso_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_5Words4iter.exit.i.i

_RNvMso_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_5Words4iter.exit.i.i: ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit1.i.i.i, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i.i
  %.sink.i.i.i = phi ptr [ %i.dr, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit1.i.i.i ], [ %i.dq, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i.i ]
  %.sroa.3.0.i.i.i = phi ptr [ @2253, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit1.i.i.i ], [ @2254, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i.i ] ; 13 uses
  store ptr %i.dn, ptr %i.do, align 8, !noalias !29100
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %.sink.i.i.i, ptr %i.ds, align 8, !noalias !29100
  call void @llvm.experimental.noalias.scope.decl(metadata !29101)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !29102
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i.i, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !invariant.load !75, !alias.scope !29101, !noalias !29103, !nonnull !75 ; 2 uses
  %i.dv = invoke { i32, i32 } %i.du(ptr noundef nonnull %i.do)
          to label %bb.aj unwind label %bb.bd, !noalias !29102, !inline_history !28847 ; 2 uses

bb.aj:                                            ; preds = %_RNvMso_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_5Words4iter.exit.i.i
  %i.dw = extractvalue { i32, i32 } %i.dv, 0
  %i.dx = trunc i32 %i.dw to i1
  %i.dy = extractvalue { i32, i32 } %i.dv, 1
  %i.dz = trunc i32 %i.dy to i8
  %i.ea = and i8 %i.dz, 15
  br i1 %i.dx, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !29102
  %i.eb = load ptr, ptr %.sroa.3.0.i.i.i, align 8, !invariant.load !75, !alias.scope !29101, !noalias !29099 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void %i.eb(ptr noundef nonnull %i.do)
          to label %bb.am unwind label %bb.an, !noalias !29102

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i.i, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !range !76, !invariant.load !75, !alias.scope !29101, !noalias !29099 ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB2k_20analyze_value_counts0EE9from_iterB2q_.exit.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.am
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i.i, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !range !93, !invariant.load !75, !alias.scope !29101, !noalias !29099
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.do, i64 noundef %i.ed, i64 noundef range(i64 1, -9223372036854775807) %i.eg) #63, !noalias !29102
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB2k_20analyze_value_counts0EE9from_iterB2q_.exit.i.i

bb.an:                                            ; preds = %bb.al
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i.i, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !range !76, !invariant.load !75, !alias.scope !29101, !noalias !29099 ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %.body74, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.an
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i.i, i64 16
  %i.em = load i64, ptr %i.el, align 8, !range !93, !invariant.load !75, !alias.scope !29101, !noalias !29099
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.do, i64 noundef %i.ej, i64 noundef range(i64 1, -9223372036854775807) %i.em) #63, !noalias !29102
  br label %.body74

bb.ao:                                            ; preds = %bb.aj
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !29104
  %i.en = call noundef dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, 17) 1) #63, !noalias !29104 ; 4 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8) #66
          to label %.noexc.i.i.i unwind label %bb.bd, !noalias !29102

.noexc.i.i.i:                                     ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ao
  store i8 %i.ea, ptr %i.en, align 1, !noalias !29102
  store i64 8, ptr %i.n, align 8, !noalias !29102
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  store ptr %i.en, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !29102
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !29102
  call void @llvm.experimental.noalias.scope.decl(metadata !29105)
  call void @llvm.experimental.noalias.scope.decl(metadata !29106)
  call void @llvm.experimental.noalias.scope.decl(metadata !29107)
  call void @llvm.experimental.noalias.scope.decl(metadata !29108)
  br label %bb.ar

bb.ar:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i, %bb.aq
  %i.ep = phi ptr [ %i.fl, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i ], [ %i.en, %bb.aq ]
  %.sroa.16.0.copyload146.i.i = phi i64 [ %i.fn, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i ], [ 1, %bb.aq ] ; 6 uses
  %i.eq = invoke { i32, i32 } %i.du(ptr noundef nonnull %i.do)
          to label %bb.as unwind label %bb.ay, !noalias !29109, !inline_history !28847 ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.er = extractvalue { i32, i32 } %i.eq, 0
  %i.es = trunc i32 %i.er to i1
  %i.et = extractvalue { i32, i32 } %i.eq, 1
  %i.eu = trunc i32 %i.et to i8
  %i.ev = and i8 %i.eu, 15
  br i1 %i.es, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ew = icmp sgt i64 %.sroa.16.0.copyload146.i.i, -1
  call void @llvm.assume(i1 %i.ew)
  %i.ex = load i64, ptr %i.n, align 8, !range !76, !alias.scope !29110, !noalias !29102, !noundef !75
  %i.ey = icmp eq i64 %.sroa.16.0.copyload146.i.i, %i.ex
  br i1 %i.ey, label %bb.az, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.ez = load ptr, ptr %.sroa.3.0.i.i.i, align 8, !invariant.load !75, !alias.scope !29111, !noalias !29099 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void %i.ez(ptr noundef nonnull %i.do)
          to label %bb.aw unwind label %bb.ax, !noalias !29109

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i.i, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !range !76, !invariant.load !75, !alias.scope !29111, !noalias !29099 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB22_20analyze_value_counts0EE11spec_extendB28_.exit.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.aw
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i.i, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !range !93, !invariant.load !75, !alias.scope !29111, !noalias !29099
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.do, i64 noundef %i.fb, i64 noundef range(i64 1, -9223372036854775807) %i.fe) #63, !noalias !29109
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB22_20analyze_value_counts0EE11spec_extendB28_.exit.i.i.i

bb.ax:                                            ; preds = %bb.av
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i.i, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !range !76, !invariant.load !75, !alias.scope !29111, !noalias !29099 ; 2 uses
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %.body.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i: ; preds = %bb.ax
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i.i, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !range !93, !invariant.load !75, !alias.scope !29111, !noalias !29099
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.do, i64 noundef %i.fh, i64 noundef range(i64 1, -9223372036854775807) %i.fk) #63, !noalias !29109
  br label %.body.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i_crit_edge.i.i.i, %bb.at
  %i.fl = phi ptr [ %.pre.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i_crit_edge.i.i.i ], [ %i.ep, %bb.at ] ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.sroa.16.0.copyload146.i.i
  store i8 %i.ev, ptr %i.fm, align 1, !noalias !29109
  %i.fn = add nuw i64 %.sroa.16.0.copyload146.i.i, 1 ; 2 uses
  store i64 %i.fn, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !29110, !noalias !29102
  br label %bb.ar

bb.ay:                                            ; preds = %bb.az, %bb.ar
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB1b_20analyze_value_counts0EEB1h_(ptr nonnull %i.do, ptr nonnull readonly align 8 dereferenceable(56) %.sroa.3.0.i.i.i) #67
          to label %.body.i.i.i unwind label %bb.ba, !noalias !29112

bb.az:                                            ; preds = %bb.at
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %.sroa.16.0.copyload146.i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i_crit_edge.i.i.i unwind label %bb.ay, !noalias !29113

end_hunk_0
begin_hunk_1_@_RNCNvXsq_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB7_18MiniBlockSchedulerNtB7_23StructuralPageScheduler10initialize0Bd_:bb.a
  %i.kr = load i64, ptr %i.ix, align 8, !alias.scope !29136, !noalias !29126, !noundef !75 ; 3 uses
  %i.ks = load i64, ptr %i.k, align 8, !range !76, !alias.scope !29136, !noalias !29126, !noundef !75
  %i.kt = icmp eq i64 %i.kr, %i.ks
  br i1 %i.kt, label %bb.de, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecmE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit47.i.i

bb.de:                                            ; preds = %bb.dd
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs1akgR21QTtx_7roaring(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecmE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit47.i.i unwind label %bb.db, !noalias !29126

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecmE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit47.i.i: ; preds = %bb.de, %bb.dd
  %i.ku = load ptr, ptr %i.iw, align 8, !alias.scope !29136, !noalias !29126, !nonnull !75, !noundef !75
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.kr
  store i32 %i.kq, ptr %i.kv, align 4, !noalias !29126
  %i.kw = add i64 %i.kr, 1
  br label %bb.da

bb.df:                                            ; preds = %bb.dc
  %i.kx = load ptr, ptr %.sroa.3.0.i.i, align 8, !invariant.load !75, !alias.scope !29125, !noalias !29098 ; 2 uses
  %.not.i.i.i48.i.i = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i48.i.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  invoke void %i.kx(ptr noundef nonnull %i.ic)
          to label %bb.dh unwind label %bb.di, !noalias !29126

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 8
  %i.kz = load i64, ptr %i.ky, align 8, !range !76, !invariant.load !75, !alias.scope !29125, !noalias !29098 ; 2 uses
  %i.la = icmp eq i64 %i.kz, 0
  br i1 %i.la, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB1b_17build_chunk_index0EEB1h_.exit54.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i51.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i51.i.i: ; preds = %bb.dh
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 16
  %i.lc = load i64, ptr %i.lb, align 8, !range !93, !invariant.load !75, !alias.scope !29125, !noalias !29098
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ic, i64 noundef %i.kz, i64 noundef range(i64 1, -9223372036854775807) %i.lc) #63, !noalias !29126
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB1b_17build_chunk_index0EEB1h_.exit54.i.i

bb.di:                                            ; preds = %bb.dg
  %i.ld = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 8
  %i.lf = load i64, ptr %i.le, align 8, !range !76, !invariant.load !75, !alias.scope !29125, !noalias !29098 ; 2 uses
  %i.lg = icmp eq i64 %i.lf, 0
  br i1 %i.lg, label %.body52.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i49.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i49.i.i: ; preds = %bb.di
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 16
  %i.li = load i64, ptr %i.lh, align 8, !range !93, !invariant.load !75, !alias.scope !29125, !noalias !29098
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ic, i64 noundef %i.lf, i64 noundef range(i64 1, -9223372036854775807) %i.li) #63, !noalias !29126
  br label %.body52.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB1b_17build_chunk_index0EEB1h_.exit54.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i51.i.i, %bb.dh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lj, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !29135
  store i64 0, ptr %i.ae, align 8, !alias.scope !29124, !noalias !29098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !29126
  br label %_RINvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB3_10PrefixSums11from_deltasINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtB5_9WordsIterNCNvB5_17build_chunk_index0EEBb_.exit.i

bb.dj:                                            ; preds = %.invoke.i.i
  %i.lk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ll = load ptr, ptr %.sroa.3.0.i.i, align 8, !invariant.load !75, !noalias !29133 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  invoke void %i.ll(ptr noundef nonnull %i.ic)
          to label %bb.dl unwind label %bb.dm, !noalias !29133

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 8
  %i.ln = load i64, ptr %i.lm, align 8, !range !76, !invariant.load !75, !noalias !29133 ; 2 uses
  %i.lo = icmp eq i64 %i.ln, 0
  br i1 %i.lo, label %.body.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.dl
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 16
  %i.lq = load i64, ptr %i.lp, align 8, !range !93, !invariant.load !75, !noalias !29133
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ic, i64 noundef %i.ln, i64 noundef range(i64 1, -9223372036854775807) %i.lq) #63, !noalias !29133
  br label %.body.i

bb.dm:                                            ; preds = %bb.dk
  %i.lr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 8
  %i.lt = load i64, ptr %i.ls, align 8, !range !76, !invariant.load !75, !noalias !29133 ; 2 uses
  %i.lu = icmp eq i64 %i.lt, 0
  br i1 %i.lu, label %.body141.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.dm
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 16
  %i.lw = load i64, ptr %i.lv, align 8, !range !93, !invariant.load !75, !noalias !29133
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ic, i64 noundef %i.lt, i64 noundef range(i64 1, -9223372036854775807) %i.lw) #63, !noalias !29133
  br label %.body141.i

_RINvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB3_10PrefixSums11from_deltasINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtB5_9WordsIterNCNvB5_17build_chunk_index0EEBb_.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB1b_17build_chunk_index0EEB1h_.exit54.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB1b_17build_chunk_index0EEB1h_.exit.i.i
  %i.lx = phi i64 [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB1b_17build_chunk_index0EEB1h_.exit54.i.i ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB1b_17build_chunk_index0EEB1h_.exit.i.i ]
  %.not98.i525 = icmp eq ptr %.sroa.11152.0, null
  %.not98.i = select i1 %.not.i70, i1 true, i1 %.not98.i525
  br i1 %.not98.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %_RINvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB3_10PrefixSums11from_deltasINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtB5_9WordsIterNCNvB5_17build_chunk_index0EEBb_.exit.i
  %i.ly = and i64 %.sroa.15155.0, 7
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %bb.dp, label %bb.ew, !prof !78

bb.do:                                            ; preds = %_RINvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB3_10PrefixSums11from_deltasINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtB5_9WordsIterNCNvB5_17build_chunk_index0EEBb_.exit.i
  %i.ma = trunc nuw i8 %.sroa.23.3221.i to i1
  br i1 %i.ma, label %_RINvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB3_10PrefixSums11from_deltasINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1X_3ops5range5RangejENCNvB5_22flat_value_counts_iter0EEBb_.exit.i, label %bb.fc

bb.dp:                                            ; preds = %bb.dn
  %i.mb = zext i16 %i.di to i64                   ; 2 uses
  %i.mc = add nuw nsw i64 %i.mb, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7186.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !29137)
  %i.md = lshr exact i64 %.sroa.15155.0, 3        ; 2 uses
  %i.me = udiv i64 %i.md, %i.mc                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !29138
  %i.mf = add nuw nsw i64 %i.me, 7                ; 2 uses
  %.sroa.05.0.i.i = lshr i64 %i.mf, 3             ; 4 uses
  %i.mg = and i64 %i.mf, 504
  %i.mh = icmp eq i64 %i.mg, 0
  br i1 %i.mh, label %.split.i.i113.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %reass.sub.i.i.i = and i64 %.sroa.05.0.i.i, 288230376151711680
  %i.mi = add nuw nsw i64 %reass.sub.i.i.i, 64    ; 2 uses
  %i.mj = icmp samesign ult i64 %i.mi, %.sroa.05.0.i.i
  br i1 %i.mj, label %bb.dr, label %.split.thread.i.i.i, !prof !81

bb.dr:                                            ; preds = %bb.dq
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1314, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1316) #66
          to label %.noexc114.i unwind label %bb.ex, !noalias !29098

.noexc114.i:                                      ; preds = %bb.dr
  unreachable

.split.i.i113.i:                                  ; preds = %bb.dp
  %i.mk = icmp eq i64 %.sroa.05.0.i.i, 0
  br i1 %i.mk, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i, label %.split.thread.i.i.i

.split.thread.i.i.i:                              ; preds = %.split.i.i113.i, %bb.dq
  %.sroa.4.010.i.i.i = phi i64 [ %.sroa.05.0.i.i, %.split.i.i113.i ], [ %i.mi, %bb.dq ] ; 3 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !29139
  %i.ml = call noundef align 128 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.sroa.4.010.i.i.i, i64 noundef 128) #63, !noalias !29139 ; 2 uses
  %i.mm = icmp eq ptr %i.ml, null
  br i1 %i.mm, label %bb.ds, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i, !prof !81

bb.ds:                                            ; preds = %.split.thread.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef %.sroa.4.010.i.i.i) #66
          to label %.noexc115.i unwind label %bb.ex, !noalias !29098

.noexc115.i:                                      ; preds = %bb.ds
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i: ; preds = %.split.thread.i.i.i, %.split.i.i113.i
  %.sroa.4.011.i.i.i = phi i64 [ 0, %.split.i.i113.i ], [ %.sroa.4.010.i.i.i, %.split.thread.i.i.i ]
  %.sroa.01.0.i.i.i = phi ptr [ inttoptr (i64 128 to ptr), %.split.i.i113.i ], [ %i.ml, %.split.thread.i.i.i ]
  store i64 128, ptr %i.i, align 16, !noalias !29138
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store i64 %.sroa.4.011.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !29138
  %.sroa.540.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  store ptr %.sroa.01.0.i.i.i, ptr %.sroa.540.0..sroa_idx.i.i, align 16, !noalias !29138
  %.sroa.641.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 6 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.641.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !29138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !29138
  %i.mo = add nuw nsw i64 %i.me, 1                ; 3 uses
  %.not.i.i103.i = icmp eq i64 %i.me, 1152921504606846975
  br i1 %.not.i.i103.i, label %bb.dv, label %bb.dt, !prof !80

bb.dt:                                            ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i
  %i.mp = shl nuw nsw i64 %i.mo, 3                ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !29140
  %i.mq = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.mp, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !29140 ; 4 uses
  %i.mr = icmp eq ptr %i.mq, null
  br i1 %i.mr, label %bb.dv, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i.i

.thread.i.i:                                      ; preds = %bb.eu, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body18.i.i, %bb.eb, %bb.ea, %bb.du
  %.pn11.i.i = phi { ptr, i32 } [ %i.ms, %bb.du ], [ %eh.lpad-body19.i.i, %.body18.i.i ], [ %i.oc, %bb.eb ], [ %i.oc, %bb.ea ], [ %lpad.loopexit.split-lp659, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp659, %bb.eu ]
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %.body117.i unwind label %bb.eh, !noalias !29138

bb.du:                                            ; preds = %bb.dv
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.dv:                                            ; preds = %bb.dt, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i
  %.sroa.10.0.ph.i.i = phi i64 [ %i.mp, %bb.dt ], [ undef, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i ]
  %.sroa.443.0.ph.i.i = phi i64 [ 8, %bb.dt ], [ 0, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.443.0.ph.i.i, i64 %.sroa.10.0.ph.i.i) #66
          to label %bb.ev unwind label %bb.du, !noalias !29138

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %bb.dt
  store i64 %i.mo, ptr %i.h, align 8, !noalias !29138
  %i.mt = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr %i.mq, ptr %i.mt, align 8, !noalias !29138
  %i.mu = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 0, ptr %i.mq, align 8, !noalias !29138
  %invariant.op.i.i = add nsw i64 %.sroa.15155.0, -7
  store i64 1, ptr %i.mu, align 8, !noalias !29138
  %.not.i.not.i = icmp samesign ugt i64 %i.md, %i.mb
  br i1 %.not.i.not.i, label %.lr.ph.i104.preheader.i, label %._crit_edge.thread.i112.i

.lr.ph.i104.preheader.i:                          ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %i.mv = shl nuw nsw i64 %i.mc, 3
  br label %.lr.ph.i104.i

._crit_edge.thread.i112.i:                        ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !29138
  br label %bb.dw

._crit_edge.i109.i:                               ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit30.i.i
  %.sroa.032.0.copyload.pre.i.i = load i64, ptr %i.h, align 8, !noalias !29138 ; 2 uses
  %.sroa.6.0.copyload.pre.i.i = load ptr, ptr %i.mt, align 8, !noalias !29138 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !29138
  call void @llvm.experimental.noalias.scope.decl(metadata !29141)
  call void @llvm.experimental.noalias.scope.decl(metadata !29142)
  %.not.i16.i.i = icmp eq i64 %i.qe, 0
  br i1 %.not.i16.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %._crit_edge.i109.i, %._crit_edge.thread.i112.i
  %.sroa.032.0.copyload107.i.i = phi i64 [ %i.mo, %._crit_edge.thread.i112.i ], [ %.sroa.032.0.copyload.pre.i.i, %._crit_edge.i109.i ] ; 5 uses
  %.sroa.6.0.copyload105.i.i = phi ptr [ %i.mq, %._crit_edge.thread.i112.i ], [ %.sroa.6.0.copyload.pre.i.i, %._crit_edge.i109.i ] ; 11 uses
  %.sroa.7.0.copyload103.i.i = phi i64 [ 1, %._crit_edge.thread.i112.i ], [ %i.qe, %._crit_edge.i109.i ] ; 7 uses
  %i.mw = getelementptr [8 x i8], ptr %.sroa.6.0.copyload105.i.i, i64 %.sroa.7.0.copyload103.i.i
  %i.mx = getelementptr i8, ptr %i.mw, i64 -8
  %i.my = load i64, ptr %i.mx, align 8, !noalias !29143, !noundef !75
  %i.mz = icmp ult i64 %i.my, 4294967296
  br i1 %i.mz, label %bb.dx, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIteryENCNvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB2S_10PrefixSums11from_prefix0EE9from_iterB30_.exit.i.i.i

bb.dx:                                            ; preds = %bb.dw
  %i.na = icmp ult i64 %.sroa.7.0.copyload103.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.na)
  %.idx9.i.i.i = shl nuw nsw i64 %.sroa.7.0.copyload103.i.i, 3 ; 2 uses
  %i.nb = getelementptr i8, ptr %.sroa.6.0.copyload105.i.i, i64 %.idx9.i.i.i ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.7.0.copyload103.i.i, 2 ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !29144
  %i.nc = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.idx.i.i.i, i64 noundef range(i64 1, 17) 4) #63, !noalias !29144 ; 7 uses
  %i.nd = icmp eq ptr %i.nc, null
  br i1 %i.nd, label %bb.dy, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.dx
  %i.ne = add nsw i64 %.idx9.i.i.i, -8            ; 3 uses
  %i.nf = lshr exact i64 %i.ne, 3
  %i.ng = add nuw nsw i64 %i.nf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ne, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader656, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.nh = lshr exact i64 %i.ne, 1
  %i.ni = getelementptr i8, ptr %i.nc, i64 %i.nh
  %i.nj = getelementptr i8, ptr %i.ni, i64 4
  %bound0 = icmp ult ptr %i.nc, %i.nb
  %bound1 = icmp ult ptr %.sroa.6.0.copyload105.i.i, %i.nj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader656, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ng, 4611686018427387900     ; 5 uses
  %i.nk = shl i64 %n.vec, 3
  %i.nl = getelementptr i8, ptr %.sroa.6.0.copyload105.i.i, i64 %i.nk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.nm = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.sroa.6.0.copyload105.i.i, i64 %i.nm ; 2 uses
  %i.nn = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !29145, !noalias !29146
  %wide.load653 = load <2 x i64>, ptr %i.nn, align 8, !alias.scope !29145, !noalias !29146
  %i.no = trunc <2 x i64> %wide.load to <2 x i32>
  %i.np = trunc <2 x i64> %wide.load653 to <2 x i32>
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %index ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store <2 x i32> %i.no, ptr %i.nq, align 4, !alias.scope !29147, !noalias !29148
  store <2 x i32> %i.np, ptr %i.nr, align 4, !alias.scope !29147, !noalias !29148
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ns = icmp eq i64 %index.next, %n.vec
  br i1 %i.ns, label %middle.block, label %vector.body, !llvm.loop !28928

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ng, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader656

.lr.ph.i.i.i.i.i.i.i.i.i.preheader656:            ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph657 = phi ptr [ %.sroa.6.0.copyload105.i.i, %vector.memcheck ], [ %.sroa.6.0.copyload105.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.nl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.dy:                                            ; preds = %bb.dx
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %.idx.i.i.i) #66
          to label %.noexc.i.i.i.i unwind label %bb.ea, !noalias !29149

.noexc.i.i.i.i:                                   ; preds = %bb.dy
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader656, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.nt = phi i64 [ %i.nz, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader656 ] ; 2 uses
  %i.nu = phi ptr [ %i.nw, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph657, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader656 ] ; 2 uses
  %i.nv = load i64, ptr %i.nu, align 8, !noalias !29146, !noundef !75
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 8 ; 2 uses
  %i.nx = trunc i64 %i.nv to i32
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.nt
  store i32 %i.nx, ptr %i.ny, align 4, !noalias !29150
  %i.nz = add nuw nsw i64 %i.nt, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nw, %i.nb
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !28929

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i109.i
  %.sroa.032.0.copyload108.i.i = phi i64 [ %.sroa.032.0.copyload.pre.i.i, %._crit_edge.i109.i ], [ %.sroa.032.0.copyload107.i.i, %middle.block ], [ %.sroa.032.0.copyload107.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.0.copyload106.i.i = phi ptr [ %.sroa.6.0.copyload.pre.i.i, %._crit_edge.i109.i ], [ %.sroa.6.0.copyload105.i.i, %middle.block ], [ %.sroa.6.0.copyload105.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.sroa.7.0.copyload104.i.i = phi i64 [ 0, %._crit_edge.i109.i ], [ %.sroa.7.0.copyload103.i.i, %middle.block ], [ %.sroa.7.0.copyload103.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.0.i21.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %._crit_edge.i109.i ], [ %i.nc, %middle.block ], [ %i.nc, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.42.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i109.i ], [ %n.vec, %middle.block ], [ %i.nz, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.oa = icmp eq i64 %.sroa.032.0.copyload108.i.i, 0
  br i1 %i.oa, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIteryENCNvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB2S_10PrefixSums11from_prefix0EE9from_iterB30_.exit.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ob = shl nuw i64 %.sroa.032.0.copyload108.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload106.i.i, i64 noundef %i.ob, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !29146
  br label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIteryENCNvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB2S_10PrefixSums11from_prefix0EE9from_iterB30_.exit.i.i.i

bb.ea:                                            ; preds = %bb.dy
  %i.oc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.od = icmp eq i64 %.sroa.032.0.copyload107.i.i, 0
  br i1 %i.od, label %.thread.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.oe = shl nuw i64 %.sroa.032.0.copyload107.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload105.i.i, i64 noundef %i.oe, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !29151
  br label %.thread.i.i

.lr.ph.i104.i:                                    ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit30.i.i, %.lr.ph.i104.preheader.i
  %.sroa.0.068.i.i = phi i64 [ %i.py, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit30.i.i ], [ 0, %.lr.ph.i104.preheader.i ]
  %.sroa.02.067.i.i = phi i1 [ %i.pc, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit30.i.i ], [ false, %.lr.ph.i104.preheader.i ]
  %.sroa.06.066.i.i = phi i64 [ %i.of, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit30.i.i ], [ 0, %.lr.ph.i104.preheader.i ] ; 2 uses
  %i.of = add nuw nsw i64 %.sroa.06.066.i.i, 1    ; 2 uses
  %i.og = mul i64 %.sroa.06.066.i.i, %i.mv        ; 5 uses
  %i.oh = or disjoint i64 %i.og, 7
  %or.cond.not.i.i.i = icmp ult i64 %i.oh, %spec.select
  %i.oi = add i64 %i.og, 8                        ; 4 uses
  br i1 %or.cond.not.i.i.i, label %bb.ei, label %.invoke.i105.i, !prof !114

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIteryENCNvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB2S_10PrefixSums11from_prefix0EE9from_iterB30_.exit.i.i.i: ; preds = %bb.dz, %._crit_edge.i.i.i.i.i.i.i.i.i, %bb.dw
  %.sroa.7.0.copyload104.sink.i.i = phi i64 [ %.sroa.032.0.copyload107.i.i, %bb.dw ], [ %.sroa.7.0.copyload104.i.i, %bb.dz ], [ %.sroa.7.0.copyload104.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.10.0.i21.i.i.sink.i.i = phi ptr [ %.sroa.6.0.copyload105.i.i, %bb.dw ], [ %.sroa.10.0.i21.i.i.i.i, %bb.dz ], [ %.sroa.10.0.i21.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.42.0.i.i.i.i.i.i.sink.i.i = phi i64 [ %.sroa.7.0.copyload103.i.i, %bb.dw ], [ %.sroa.42.0.i.i.i.i.i.i.i.i, %bb.dz ], [ %.sroa.42.0.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %storemerge.i.i.i = phi i64 [ 1, %bb.dw ], [ 0, %bb.dz ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.7.0.copyload104.sink.i.i, ptr %i.oj, align 8, !alias.scope !29152, !noalias !29138
  %.sroa.4.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.10.0.i21.i.i.sink.i.i, ptr %.sroa.4.0..sroa_idx4.i.i.i, align 8, !alias.scope !29152, !noalias !29138
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.42.0.i.i.i.i.i.i.sink.i.i, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8, !alias.scope !29152, !noalias !29138
  store i64 %storemerge.i.i.i, ptr %i.g, align 8, !alias.scope !29141, !noalias !29138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !29138
  call void @llvm.experimental.noalias.scope.decl(metadata !29153)
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.540.0..sroa_idx.i.i, align 16, !alias.scope !29153, !noalias !29138, !nonnull !75, !noundef !75 ; 2 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.641.0..sroa_idx.i.i, align 8, !alias.scope !29153, !noalias !29138 ; 2 uses
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.540.0..sroa_idx.i.i, align 16, !alias.scope !29153, !noalias !29138
  store i64 0, ptr %.sroa.641.0..sroa_idx.i.i, align 8, !alias.scope !29153, !noalias !29138
  %i.ok = load i64, ptr %i.mn, align 16, !alias.scope !29153, !noalias !29138, !noundef !75
  store i64 0, ptr %i.mn, align 16, !alias.scope !29153, !noalias !29138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !29154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !29154
  store i64 1, ptr %i.d, align 8, !noalias !29154
  %i.ol = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.ol, align 8, !noalias !29154
  %i.om = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %i.om, align 8, !noalias !29154
  %.sroa.42.0..sroa_idx.i.i110.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i110.i, align 8, !noalias !29154
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !29154
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.on = load <2 x i64>, ptr %i.i, align 16, !alias.scope !29153, !noalias !29138
  store i64 128, ptr %i.i, align 16, !alias.scope !29153, !noalias !29138
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !29153, !noalias !29138
  store <2 x i64> %i.on, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !29154
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !29155
  %i.oo = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !29155 ; 3 uses
  %i.op = icmp eq ptr %i.oo, null
  %i.oq = ptrtoint ptr %.sroa.10.0.i21.i.i.sink.i.i to i64 ; 2 uses
  br i1 %i.op, label %bb.ec, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, !prof !77

bb.ec:                                            ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIteryENCNvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB2S_10PrefixSums11from_prefix0EE9from_iterB30_.exit.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #66
          to label %.noexc.i.i111.i unwind label %bb.ed, !noalias !29154

.noexc.i.i111.i:                                  ; preds = %bb.ec
  unreachable

bb.ed:                                            ; preds = %bb.ec
  %i.or = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d) #67
          to label %.body18.i.i unwind label %bb.ee, !noalias !29154

bb.ee:                                            ; preds = %bb.ed
  %i.os = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !29154
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIteryENCNvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB2S_10PrefixSums11from_prefix0EE9from_iterB30_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.oo, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !29154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29154
  store ptr %i.oo, ptr %i.e, align 8, !noalias !29154
  %i.ot = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %i.ot, align 8, !noalias !29154
  %i.ou = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %i.ou, align 8, !noalias !29154
  invoke void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i64 noundef 0, i64 noundef %i.ok)
          to label %bb.eg unwind label %bb.ef, !noalias !29138

bb.ef:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %.body18.i.i

.body18.i.i:                                      ; preds = %bb.ef, %bb.ed
  %eh.lpad-body19.i.i = phi { ptr, i32 } [ %i.ov, %bb.ef ], [ %i.or, %bb.ed ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_index10PrefixSumsEBL_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g) #67, !noalias !29138
  br label %.thread.i.i

bb.eg:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !29154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7186.i, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !29156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !29138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !29138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !29138
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %bb.ey unwind label %bb.ex, !noalias !29098

bb.eh:                                            ; preds = %.thread.i.i
  %i.ow = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !29138
  unreachable

bb.ei:                                            ; preds = %.lr.ph.i104.i
  %or.cond.not.i21.i.i = icmp ult i64 %i.oi, %invariant.op.i.i
  br i1 %or.cond.not.i21.i.i, label %bb.ek, label %bb.ej, !prof !114

bb.ej:                                            ; preds = %bb.ei
  %i.ox = add i64 %i.og, 16
  br label %.invoke.i105.i

.invoke.i105.i:                                   ; preds = %.lr.ph.i104.i, %bb.ej
  %i.oy = phi i64 [ %i.oi, %bb.ej ], [ %i.og, %.lr.ph.i104.i ]
  %i.oz = phi i64 [ %i.ox, %bb.ej ], [ %i.oi, %.lr.ph.i104.i ]
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.oy, i64 noundef %i.oz, i64 noundef range(i64 0, -9223372036854775808) %spec.select, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1028) #66
          to label %.cont.i108.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !29138

.cont.i108.i:                                     ; preds = %.invoke.i105.i
  unreachable

bb.ek:                                            ; preds = %bb.ei
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.11152.0, i64 %i.og
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %i.pa, align 1, !alias.scope !29157
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.11152.0, i64 %i.oi
  %.sroa.01.0.copyload.i22.i.i = load i64, ptr %i.pb, align 1, !alias.scope !29157
  %i.pc = icmp ne i64 %.sroa.01.0.copyload.i22.i.i, 0 ; 3 uses
  %i.pd = zext i1 %i.pc to i64
  %.neg.i.i = sext i1 %.sroa.02.067.i.i to i64
  %i.pe = load i64, ptr %i.mn, align 16, !alias.scope !29158, !noalias !29138, !noundef !75 ; 3 uses
  %i.pf = add i64 %i.pe, 1                        ; 3 uses
  %i.pg = lshr i64 %i.pf, 3
  %i.ph = and i64 %i.pf, 7
  %.not.i25.i.i = icmp ne i64 %i.ph, 0
  %i.pi = zext i1 %.not.i25.i.i to i64
  %.sroa.0.0.i.i.i = add nuw nsw i64 %i.pg, %i.pi ; 8 uses
  %i.pj = load i64, ptr %.sroa.641.0..sroa_idx.i.i, align 8, !alias.scope !29158, !noalias !29138, !noundef !75 ; 3 uses
  %i.pk = icmp ugt i64 %.sroa.0.0.i.i.i, %i.pj
  br i1 %i.pk, label %bb.el, label %bb.eq

bb.el:                                            ; preds = %bb.ek
  %i.pl = sub nuw nsw i64 %.sroa.0.0.i.i.i, %i.pj
  %i.pm = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !29159, !noalias !29138, !noundef !75 ; 2 uses
  %i.pn = icmp ugt i64 %.sroa.0.0.i.i.i, %i.pm
  br i1 %i.pn, label %bb.em, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i, !prof !81

bb.em:                                            ; preds = %bb.el
  %i.po = and i64 %.sroa.0.0.i.i.i, 63
  %i.pp = icmp eq i64 %i.po, 0
  br i1 %i.pp, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %reass.sub.i.i.i.i = and i64 %.sroa.0.0.i.i.i, 4611686018427387840
  %i.pq = add nuw nsw i64 %reass.sub.i.i.i.i, 64  ; 2 uses
  %i.pr = icmp samesign ult i64 %i.pq, %.sroa.0.0.i.i.i
  br i1 %i.pr, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.sroa.4.0.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %bb.em ], [ %i.pq, %bb.en ]
  %i.ps = shl nuw nsw i64 %i.pm, 1
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ps, i64 %.sroa.4.0.i.i.i.i)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i, i64 noundef %.sroa.0.0.i.i.i.i)
          to label %.noexc27.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !29138

.noexc27.i.i:                                     ; preds = %bb.eo
  %.pre.i26.i.i = load i64, ptr %.sroa.641.0..sroa_idx.i.i, align 8, !alias.scope !29158, !noalias !29138
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i

bb.ep:                                            ; preds = %bb.en
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1314, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1316) #66
          to label %.noexc28.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !29138

.noexc28.i.i:                                     ; preds = %bb.ep
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i: ; preds = %.noexc27.i.i, %bb.el
  %i.pt = phi i64 [ %i.pj, %bb.el ], [ %.pre.i26.i.i, %.noexc27.i.i ]
  %i.pu = load ptr, ptr %.sroa.540.0..sroa_idx.i.i, align 16, !alias.scope !29158, !noalias !29138, !nonnull !75, !noundef !75
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 %i.pt
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.pv, i8 0, i64 %i.pl, i1 false), !noalias !29138
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.641.0..sroa_idx.i.i, align 8, !alias.scope !29158, !noalias !29138
  br label %bb.eq

bb.eq:                                            ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i, %bb.ek
  store i64 %i.pf, ptr %i.mn, align 16, !alias.scope !29158, !noalias !29138
  br i1 %i.pc, label %bb.et, label %bb.er

bb.er:                                            ; preds = %bb.et, %bb.eq
  %i.pw = add i64 %.sroa.0.068.i.i, %.neg.i.i
  %i.px = add i64 %i.pw, %.sroa.01.0.copyload.i.i.i
  %i.py = add i64 %i.px, %i.pd                    ; 2 uses
  %i.pz = load i64, ptr %i.mu, align 8, !alias.scope !29160, !noalias !29138, !noundef !75 ; 3 uses
  %i.qa = load i64, ptr %i.h, align 8, !range !76, !alias.scope !29160, !noalias !29138, !noundef !75
  %i.qb = icmp eq i64 %i.pz, %i.qa
  br i1 %i.qb, label %bb.es, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit30.i.i

bb.es:                                            ; preds = %bb.er
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit30.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !29138

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit30.i.i: ; preds = %bb.es, %bb.er
  %i.qc = load ptr, ptr %i.mt, align 8, !alias.scope !29160, !noalias !29138, !nonnull !75, !noundef !75
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %i.pz
  store i64 %i.py, ptr %i.qd, align 8, !noalias !29138
  %i.qe = add i64 %i.pz, 1                        ; 3 uses
  store i64 %i.qe, ptr %i.mu, align 8, !noalias !29138
  %exitcond.not.i.i = icmp eq i64 %i.of, %i.me
  br i1 %exitcond.not.i.i, label %._crit_edge.i109.i, label %.lr.ph.i104.i

bb.et:                                            ; preds = %bb.eq
  %i.qf = load ptr, ptr %.sroa.540.0..sroa_idx.i.i, align 16, !noalias !29138, !nonnull !75, !noundef !75
  %i.qg = trunc i64 %i.pe to i8
  %i.qh = and i8 %i.qg, 7
  %i.qi = shl nuw i8 1, %i.qh
  %i.qj = lshr i64 %i.pe, 3
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qf, i64 %i.qj ; 2 uses
  %i.ql = load i8, ptr %i.qk, align 1, !noalias !29138, !noundef !75
  %i.qm = or i8 %i.ql, %i.qi
  store i8 %i.qm, ptr %i.qk, align 1, !noalias !29138
  br label %bb.er

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.es, %bb.eo, %bb.ep, %.invoke.i105.i
  %lpad.loopexit.split-lp659 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29161)
  %.val.i.i106.i = load i64, ptr %i.h, align 8, !alias.scope !29161, !noalias !29138 ; 2 uses
  %i.qn = icmp eq i64 %.val.i.i106.i, 0
  br i1 %i.qn, label %.thread.i.i, label %bb.eu

bb.eu:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val1.i.i107.i = load ptr, ptr %i.mt, align 8, !alias.scope !29161, !noalias !29138, !nonnull !75, !noundef !75
  %i.qo = shl nuw i64 %.val.i.i106.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i107.i, i64 noundef %i.qo, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !29162
  br label %.thread.i.i

bb.ev:                                            ; preds = %bb.dv
  unreachable

bb.ew:                                            ; preds = %bb.dn
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2495, i64 noundef 47, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2496) #66
          to label %bb.fb unwind label %bb.ex, !noalias !29098

bb.ex:                                            ; preds = %.invoke328.i, %bb.ew, %bb.eg, %bb.ds, %bb.dr
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %.body117.i

.body117.i:                                       ; preds = %bb.fo, %.loopexit.split-lp.loopexit.split-lp.i129.i, %bb.fk, %.loopexit.split-lp68.loopexit.split-lp.i.i, %bb.ex, %.thread.i.i
  %eh.lpad-body118.i = phi { ptr, i32 } [ %.pn11.i.i, %.thread.i.i ], [ %i.qp, %bb.ex ], [ %lpad.loopexit.split-lp.i.i, %bb.fk ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp68.loopexit.split-lp.i.i ], [ %lpad.loopexit.split-lp83.i.i, %.loopexit.split-lp.loopexit.split-lp.i129.i ], [ %lpad.loopexit.split-lp83.i.i, %bb.fo ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_index10PrefixSumsEBL_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ae) #67, !noalias !29098
  br label %.body.i

bb.ey:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !29138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7186.i, i64 40, i1 false), !noalias !29098
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7186.i)
  %i.qq = trunc nuw i8 %.sroa.23.3221.i to i1
  br i1 %i.qq, label %_RINvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB3_10PrefixSums11from_deltasINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1X_3ops5range5RangejENCNvB5_22flat_value_counts_iter0EEBb_.exit.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %.sroa.8187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.8187.0.copyload = load i8, ptr %.sroa.8187.0..sroa_idx, align 8, !noalias !29163
  %.sroa.11191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11191, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11191.0..sroa_idx, i64 7, i1 false), !noalias !29163
  %.sroa.12194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.qr = load <2 x i64>, ptr %.sroa.12194.0..sroa_idx, align 8, !noalias !29163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.35, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.i, i64 40, i1 false), !noalias !29163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !29098
  br label %_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_index19MiniBlockChunkIndexNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBU_.exit

_RINvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB3_10PrefixSums11from_deltasINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1X_3ops5range5RangejENCNvB5_22flat_value_counts_iter0EEBb_.exit.i: ; preds = %._crit_edge82.i.i, %._crit_edge.i122.i, %bb.ey, %bb.do
  %.sroa.10.sroa.7.0.i = phi i64 [ undef, %._crit_edge.i122.i ], [ undef, %bb.do ], [ undef, %._crit_edge82.i.i ], [ %.sroa.22.3222.i, %bb.ey ] ; 2 uses
  %.sroa.10.sroa.5.0.i = phi i64 [ undef, %._crit_edge.i122.i ], [ undef, %bb.do ], [ undef, %._crit_edge82.i.i ], [ %.sroa.21161.3223.i, %bb.ey ] ; 2 uses
  %.sroa.10.sroa.0.0.i = phi i64 [ %.sroa.9193.8.copyload.i, %._crit_edge.i122.i ], [ undef, %bb.do ], [ %.sroa.9193.8.copyload195.i, %._crit_edge82.i.i ], [ -1, %bb.ey ] ; 2 uses
  %.sroa.9.0.i = phi i64 [ %.sroa.8190.8.copyload.i, %._crit_edge.i122.i ], [ %.sroa.03.0.i, %bb.do ], [ %.sroa.8190.8.copyload192.i, %._crit_edge82.i.i ], [ %.sroa.42.0.i.i.i.i.i.i.sink.i.i, %bb.ey ] ; 2 uses
  %.sroa.8.0.i = phi i64 [ %.sroa.5188.8.copyload.i, %._crit_edge.i122.i ], [ %.sroa.22.3222.i, %bb.do ], [ %.sroa.5188.8.copyload189.i, %._crit_edge82.i.i ], [ %i.oq, %bb.ey ] ; 2 uses
  %.sroa.615.0.i = phi i64 [ 1, %._crit_edge.i122.i ], [ %.sroa.21161.3223.i, %bb.do ], [ 0, %._crit_edge82.i.i ], [ %.sroa.7.0.copyload104.sink.i.i, %bb.ey ] ; 2 uses
  %.sroa.011.0.i = phi i64 [ 3, %._crit_edge.i122.i ], [ 2, %bb.do ], [ 3, %._crit_edge82.i.i ], [ %storemerge.i.i.i, %bb.ey ] ; 2 uses
  %.sroa.8187.0..sroa_idx188 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.8187.0.copyload189 = load i8, ptr %.sroa.8187.0..sroa_idx188, align 8, !noalias !29163 ; 2 uses
  %.sroa.11191.0..sroa_idx192 = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11191, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11191.0..sroa_idx192, i64 7, i1 false), !noalias !29163
  %.sroa.12194.0..sroa_idx195 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.qs = load <2 x i64>, ptr %.sroa.12194.0..sroa_idx195, align 8, !noalias !29163 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.35, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.i, i64 40, i1 false), !noalias !29163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !29098
  %i.qt = icmp eq i64 %.sroa.13151.3228.i, 0
  br i1 %i.qt, label %_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_index19MiniBlockChunkIndexNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBU_.exit, label %bb.fa

bb.fa:                                            ; preds = %_RINvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB3_10PrefixSums11from_deltasINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1X_3ops5range5RangejENCNvB5_22flat_value_counts_iter0EEBb_.exit.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.17.3225.i, i64 noundef %.sroa.13151.3228.i, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !29164
  br label %_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_index19MiniBlockChunkIndexNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBU_.exit

bb.fb:                                            ; preds = %bb.ew
  unreachable

bb.fc:                                            ; preds = %bb.do
  %i.qu = icmp ult i64 %i.dc, 4294967296
  br i1 %i.qu, label %bb.fg, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29165
  %i.qv = shl i64 %i.ij, 3                        ; 3 uses
  %i.qw = icmp samesign ugt i64 %.sroa.03.0.i, 2305843009213693950
  %.not.i.i120.i = icmp ugt i64 %i.qv, 9223372036854775800
  %or.cond.i.i121.i = select i1 %i.qw, i1 true, i1 %.not.i.i120.i, !prof !80
end_hunk_1
