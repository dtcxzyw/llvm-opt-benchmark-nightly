inline.NumInlined: 5547
inline.NumDeleted: 1701
begin_hunk_0_@_RINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4listINtB3_10OwnedTasksINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEE4bindNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveINtNtB18_3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEE0EB2C_:bb.a
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %i.h, 1
  ret { ptr, ptr } %i.k

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB21_5ErrorEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBW_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemIBS_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtBW_6marker4SendEL_EENtNtCs7p2uQeJxui2_9deltalake5error11PythonErrorENCNvMs9_NtB5U_5queryNtB6K_14PyQueryBuilder7execute0EB5U_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [3168 x i8], align 16             ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = tail call { i64, ptr } @_RNvMs3_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1
  store i64 %i.h, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.j, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !27
  %i.k = invoke noundef i32 @_RNvNtCs2pqxYH9ZEk8_3std7process2id()
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.a
  store i32 %i.k, ptr %i.c, align 4, !noalias !27
  %i.l = load atomic i32, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID acquire, align 4, !noalias !28
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i, label %bb.b, !prof !31

bb.b:                                             ; preds = %.noexc
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1y_(ptr noundef nonnull align 4 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c)
          to label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i unwind label %bb.h

_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i: ; preds = %bb.b, %.noexc
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, i64 4), align 4, !noalias !27, !noundef !4 ; 2 uses
  store i32 %i.n, ptr %i.b, align 4, !noalias !27
  %i.o = load i32, ptr %i.c, align 4, !noalias !27, !noundef !4
  %.not.i.i = icmp eq i32 %i.o, %i.n
  br i1 %.not.i.i, label %bb.c, label %bb.e, !prof !31

bb.c:                                             ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  %i.p = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, i64 80) acquire, align 8, !noalias !27
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_RNvNtCs7p2uQeJxui2_9deltalake5utils2rt.exit.i, label %bb.d, !prof !31

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zEB2l_(ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT)
          to label %_RNvNtCs7p2uQeJxui2_9deltalake5utils2rt.exit.i unwind label %bb.h

bb.e:                                             ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27
  store ptr %i.c, ptr %i.a, align 8, !noalias !27
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.r, align 8, !noalias !27
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !27
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @193, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195) #45
          to label %.noexc5 unwind label %bb.h

.noexc5:                                          ; preds = %bb.e
  unreachable

_RNvNtCs7p2uQeJxui2_9deltalake5utils2rt.exit.i:   ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !27
  %i.s = load ptr, ptr %1, align 8, !alias.scope !25, !noalias !22, !nonnull !4, !align !32, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !25, !noalias !22, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !25, !noalias !22, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.s, ptr %i.x, align 16, !noalias !27
  store ptr %i.u, ptr %i.d, align 16, !noalias !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.w, ptr %i.y, align 8, !noalias !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 25
  store i8 0, ptr %i.z, align 1, !noalias !27
  invoke void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNCNvMs9_NtCs7p2uQeJxui2_9deltalake5queryNtB1d_14PyQueryBuilder7execute00EB1f_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(3168) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100)
          to label %.noexc6 unwind label %bb.h

.noexc6:                                          ; preds = %_RNvNtCs7p2uQeJxui2_9deltalake5utils2rt.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !27
  %i.aa = load i64, ptr %i.e, align 8, !range !33, !noalias !27, !noundef !4
  %.not.i = icmp eq i64 %i.aa, 20
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc6
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !25
  br label %bb.i

bb.g:                                             ; preds = %.noexc6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load <2 x ptr>, ptr %i.ab, align 8, !noalias !27
  store <2 x ptr> %i.ad, ptr %i.ac, align 8, !alias.scope !22, !noalias !25
  br label %bb.i

bb.h:                                             ; preds = %_RNvNtCs7p2uQeJxui2_9deltalake5utils2rt.exit.i, %bb.e, %bb.d, %bb.b, %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state13SuspendAttachECs7p2uQeJxui2_9deltalake.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i64 [ -9223372036854775707, %bb.g ], [ -9223372036854775709, %bb.f ]
  store i64 %.sink.i, ptr %0, align 16, !alias.scope !22, !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !27
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.j:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state13SuspendAttachECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.h
  resume { ptr, i32 } %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB1y_6string6StringENtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2N_13RawDeltaTable5files0EB2N_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [96 x i8], align 16               ; 6 uses
  %i.g = alloca [96 x i8], align 16               ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [96 x i8], align 16               ; 7 uses
  %.sroa.637.i = alloca [24 x i8], align 8        ; 6 uses
  %.sroa.631.i = alloca [24 x i8], align 8        ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [64 x i8], align 8                ; 9 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [96 x i8], align 16               ; 7 uses
  %.sroa.66.i = alloca [24 x i8], align 8         ; 6 uses
  %.sroa.6.i = alloca [24 x i8], align 8          ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 12 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.s = invoke { i64, ptr } @_RNvMs3_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttach3new()
          to label %bb.b unwind label %bb.av      ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.t = extractvalue { i64, ptr } %i.s, 0
  %i.u = extractvalue { i64, ptr } %i.s, 1
  store i64 %i.t, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.u, ptr %i.v, align 8
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.423.0.copyload = load ptr, ptr %.sroa.423.0..sroa_idx, align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775808
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !37
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !37
  invoke void @_RNvCs7p2uQeJxui2_9deltalake25convert_partition_filters(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.p, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1)
          to label %.noexc unwind label %bb.at

.noexc:                                           ; preds = %bb.c
  %i.w = load i64, ptr %i.p, align 16, !range !39, !noalias !37, !noundef !4 ; 2 uses
  %.not114.i = icmp eq i64 %i.w, -9223372036854775711
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.66.i, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !37
  br i1 %.not114.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.423.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !37
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.423.0.copyload, i64 136
  %i.z = load ptr, ptr %i.y, align 8, !noalias !37, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noundef nonnull align 8 %i.aa)
          to label %.noexc3 unwind label %bb.at

.noexc3:                                          ; preds = %bb.d
  %i.ab = load i64, ptr %i.l, align 8, !range !3, !noalias !37, !noundef !4
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.q, label %bb.v

bb.e:                                             ; preds = %.noexc
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.349.0..sroa_idx.i, i64 64, i1 false), !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.66.i, i64 24, i1 false), !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.i)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !37
  store i64 %i.w, ptr %i.g, align 16, !noalias !37
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ad, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.g)
          to label %.noexc4 unwind label %bb.at

.noexc4:                                          ; preds = %bb.e
  store i64 1, ptr %0, align 8, !alias.scope !34, !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %.noexc5

bb.f:                                             ; preds = %.noexc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.423.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.66.i, i64 24, i1 false), !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !37
  invoke void @_RINvMCs7p2uQeJxui2_9deltalakeNtB3_13RawDeltaTable10with_tableINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENCNCNvMsl_B3_Br_5files00EB3_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.423.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q)
          to label %bb.h unwind label %bb.g, !noalias !37

bb.g:                                             ; preds = %bb.l, %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.q) #43
          to label %.body unwind label %bb.p, !noalias !37

bb.h:                                             ; preds = %bb.f
  %i.af = load i64, ptr %i.m, align 8, !range !3, !noalias !37, !noundef !4
  %i.ag = trunc nuw i64 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.063.0.copyload.i = load i64, ptr %i.ah, align 8, !noalias !37 ; 3 uses
  %.sroa.564.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.564.0.copyload.i = load ptr, ptr %.sroa.564.0..sroa_idx.i, align 8, !noalias !37 ; 4 uses
  %.sroa.665.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.665.0.copyload.i = load i64, ptr %.sroa.665.0..sroa_idx.i, align 8, !noalias !37 ; 3 uses
  br i1 %i.ag, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.sroa.766.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.470.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.766.0..sroa_idx.i, i64 32, i1 false), !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !37
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.063.0.copyload.i, ptr %i.ai, align 8, !alias.scope !34, !noalias !40
  %.sroa.268.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.564.0.copyload.i, ptr %.sroa.268.0..sroa_idx.i, align 8, !alias.scope !34, !noalias !40
  %.sroa.369.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.665.0.copyload.i, ptr %.sroa.369.0..sroa_idx.i, align 8, !alias.scope !34, !noalias !40
  store i64 1, ptr %0, align 8, !alias.scope !34, !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !37
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.j, !noalias !37

bb.j:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body unwind label %bb.k, !noalias !37

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !37
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.noexc5 unwind label %bb.at

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !37
  %i.al = icmp ult i64 %.sroa.665.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %.sroa.564.0.copyload.i, i64 %.sroa.665.0.copyload.i
  %i.an = icmp sgt i64 %.sroa.063.0.copyload.i, -1
  call void @llvm.assume(i1 %i.an)
  store ptr %.sroa.564.0.copyload.i, ptr %i.n, align 8, !noalias !37
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.564.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !37
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.063.0.copyload.i, ptr %.sroa.612.0..sroa_idx.i, align 8, !noalias !37
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.am, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !37
  invoke void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3c_13RawDeltaTable5files0s_0ENtNtB6_6string6StringEB3c_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.n)
          to label %bb.m unwind label %bb.g, !noalias !37

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !40
  store i64 0, ptr %0, align 8, !alias.scope !34, !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !37
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterEECs7p2uQeJxui2_9deltalake.exit126.i unwind label %bb.n, !noalias !37

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body unwind label %bb.o, !noalias !37

bb.o:                                             ; preds = %bb.n
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !37
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterEECs7p2uQeJxui2_9deltalake.exit126.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.noexc6 unwind label %bb.at

.noexc6:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterEECs7p2uQeJxui2_9deltalake.exit126.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state13SuspendAttachECs7p2uQeJxui2_9deltalake.exit15

.noexc5:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterEECs7p2uQeJxui2_9deltalake.exit.i, %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state13SuspendAttachECs7p2uQeJxui2_9deltalake.exit15

bb.p:                                             ; preds = %.body.i, %bb.w, %bb.g
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !37
  unreachable

bb.q:                                             ; preds = %.noexc3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !37
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !37, !nonnull !4, !align !32, !noundef !4 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.av = load i8, ptr %i.au, align 8, !range !5, !noalias !37, !noundef !4 ; 3 uses
  store ptr %i.at, ptr %i.h, align 8, !noalias !37
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 %i.av, ptr %i.aw, align 8, !noalias !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !41
  store i64 0, ptr %i.c, align 8, !noalias !41
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !41
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !41
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.ax, align 8, !noalias !41
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !41
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !41
  store ptr %i.c, ptr %i.b, align 8, !noalias !41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @506, ptr %i.ay, align 8, !noalias !41
  %i.az = invoke noundef zeroext i1 @_RNvXs0_NtNtCs2pqxYH9ZEk8_3std4sync6poisonINtB5_11PoisonErrorINtNtB5_5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.s unwind label %bb.r, !noalias !45

bb.r:                                             ; preds = %bb.t, %bb.q
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #43
          to label %.body.i unwind label %bb.u, !noalias !45

bb.s:                                             ; preds = %bb.q
  br i1 %i.az, label %bb.t, label %bb.ak, !prof !9

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @507, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @157, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @509) #42
          to label %.noexc.i.i unwind label %bb.r, !noalias !45

.noexc.i.i:                                       ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !45
  unreachable

bb.v:                                             ; preds = %.noexc3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !37, !nonnull !4, !align !32, !noundef !4 ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bf = load i8, ptr %i.be, align 8, !range !5, !noalias !37, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !37
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.631.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.637.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !37
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  invoke void @_RNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB5_10DeltaTable13get_file_uris(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bg)
          to label %bb.x unwind label %bb.w, !noalias !37

bb.w:                                             ; preds = %bb.z, %bb.y, %bb.v
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.bd, i8 %i.bf) #43
          to label %.body unwind label %bb.p, !noalias !37

bb.x:                                             ; preds = %bb.v
  %i.bi = load i64, ptr %i.i, align 16, !range !39, !noalias !37, !noundef !4 ; 2 uses
  %.not113.i = icmp eq i64 %i.bi, -9223372036854775711
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.637.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false), !noalias !37
  br i1 %.not113.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.376.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.343.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.343.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.376.0..sroa_idx.i, i64 64, i1 false), !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.631.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.637.i, i64 24, i1 false), !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.637.i)
  %.sroa.242.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.242.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.631.i, i64 24, i1 false), !noalias !37
  store i64 %i.bi, ptr %i.f, align 16, !noalias !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !37
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.e, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.f)
          to label %bb.af unwind label %bb.w, !noalias !37

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !37
end_hunk_0
begin_hunk_1_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs7p2uQeJxui2_9deltalake13RawDeltaTableNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNvB1v_18write_to_deltalake0EB1v_:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %i.i, i64 88, i1 false), !noalias !72
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 1136
  store i8 0, ptr %i.az, align 8, !noalias !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !72
  invoke void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNvMNtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB1a_5table10DeltaTable33try_from_url_with_storage_options0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.e, ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1144) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89)
          to label %bb.q unwind label %bb.l, !noalias !74

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !72
  %i.ba = load i64, ptr %i.e, align 16, !range !3, !noalias !72, !noundef !4
  %i.bb = trunc nuw i64 %i.ba to i1
  br i1 %i.bb, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.bd, ptr noundef nonnull align 16 dereferenceable(96) %i.bc, i64 96, i1 false), !noalias !75
  store i64 -9223372036854775808, ptr %0, align 16, !alias.scope !67, !noalias !75
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.s, !noalias !74

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.l)
          to label %.body34.i unwind label %bb.t, !noalias !74

bb.t:                                             ; preds = %bb.s
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !74
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.r
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.d, !noalias !74

bb.u:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.520.i)
  %.sroa.520.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.520.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %.sroa.520.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 120, i1 false), !noalias !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !72
  store i64 1, ptr %i.d, align 8, !noalias !72
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.bh, align 8, !noalias !72
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 0, ptr %i.bi, align 8, !noalias !72
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i8 0, ptr %.sroa.419.0..sroa_idx.i, align 4, !noalias !72
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(123) %.sroa.520.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(123) %.sroa.520.i, i64 123, i1 false), !noalias !72
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !79
  %i.bj = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1697) 144, i64 noundef range(i64 8, 17) 8) #41, !noalias !79 ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.v, label %bb.y, !prof !9

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #42
          to label %.noexc37.i unwind label %bb.w, !noalias !74

.noexc37.i:                                       ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.bm)
          to label %.body.i unwind label %bb.x, !noalias !74

bb.x:                                             ; preds = %bb.w
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !74
  unreachable

bb.y:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(144) %i.d, i64 144, i1 false), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !72
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.520.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef nonnull align 8 dereferenceable(88) %i.l, i64 88, i1 false), !noalias !72
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !noalias !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(136) %i.h, i64 136, i1 false), !noalias !75
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.bj, ptr %.sroa.27.0..sroa_idx.i, align 8, !alias.scope !67, !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !72
  br label %bb.ab

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !72
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %bb.ab unwind label %bb.aa

bb.z:                                             ; preds = %bb.o, %.body.i, %.body34.i
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !74
  unreachable

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit.i, %bb.c, %bb.b
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body34.i, %bb.aa
  %eh.lpad-body = phi { ptr, i32 } [ %i.bq, %bb.aa ], [ %.pn29.i, %.body34.i ]
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state13SuspendAttachECs7p2uQeJxui2_9deltalake.exit unwind label %bb.ac

bb.ab:                                            ; preds = %bb.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.ac:                                            ; preds = %.body
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state13SuspendAttachECs7p2uQeJxui2_9deltalake.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtNtCs7p2uQeJxui2_9deltalake5error11PythonErrorENCNvMsg_NtB2d_10filesystemNtB33_22DeltaFileSystemHandler13get_file_infos_0EB2d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(200) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = tail call { i64, ptr } @_RNvMs3_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = extractvalue { i64, ptr } %i.f, 1
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val3 = load ptr, ptr %i.k, align 8            ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !85
  %i.l = invoke noundef i32 @_RNvNtCs2pqxYH9ZEk8_3std7process2id()
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.a
  store i32 %i.l, ptr %i.c, align 4, !noalias !85
  %i.m = load atomic i32, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID acquire, align 4, !noalias !87
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i, label %bb.b, !prof !31

bb.b:                                             ; preds = %.noexc
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1y_(ptr noundef nonnull align 4 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c)
          to label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i unwind label %bb.h

_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i: ; preds = %bb.b, %.noexc
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, i64 4), align 4, !noalias !85, !noundef !4 ; 2 uses
  store i32 %i.o, ptr %i.b, align 4, !noalias !85
  %i.p = load i32, ptr %i.c, align 4, !noalias !85, !noundef !4
  %.not.i.i = icmp eq i32 %i.p, %i.o
  br i1 %.not.i.i, label %bb.c, label %bb.e, !prof !31

bb.c:                                             ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  %i.q = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, i64 80) acquire, align 8, !noalias !85
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_RNvNtCs7p2uQeJxui2_9deltalake5utils2rt.exit.i, label %bb.d, !prof !31

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zEB2l_(ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT)
          to label %_RNvNtCs7p2uQeJxui2_9deltalake5utils2rt.exit.i unwind label %bb.h

bb.e:                                             ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85
  store ptr %i.c, ptr %i.a, align 8, !noalias !85
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !85
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.s, align 8, !noalias !85
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !85
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @193, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195) #45
          to label %.noexc6 unwind label %bb.h

.noexc6:                                          ; preds = %bb.e
  unreachable

_RNvNtCs7p2uQeJxui2_9deltalake5utils2rt.exit.i:   ; preds = %bb.d, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val3) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !85
  %i.t = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !90, !invariant.load !4, !noalias !85
  %i.v = add nsw i64 %i.u, -1
  %i.w = and i64 %i.v, -16
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.val3, i64 152
  %i.aa = load ptr, ptr %i.z, align 8, !invariant.load !4, !noalias !85, !nonnull !4
  %i.ab = invoke { ptr, ptr } %i.aa(ptr noundef nonnull %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) dereferenceable_or_null(24) %2) #47
          to label %.noexc7 unwind label %bb.h, !inline_history !91 ; 2 uses

.noexc7:                                          ; preds = %_RNvNtCs7p2uQeJxui2_9deltalake5utils2rt.exit.i
  %i.ac = extractvalue { ptr, ptr } %i.ab, 0
  %i.ad = extractvalue { ptr, ptr } %i.ab, 1
  invoke void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB18_6future6future6Futurep6OutputINtNtB18_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB3b_5ErrorENtNtB18_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, ptr noundef nonnull %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110)
          to label %.noexc8 unwind label %bb.h

.noexc8:                                          ; preds = %.noexc7
  %i.ae = load i64, ptr %i.d, align 8, !range !92, !noalias !85, !noundef !4
  %.not.i = icmp eq i64 %i.ae, -9223372036854775790
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.af, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !noalias !93
  br label %bb.i

bb.g:                                             ; preds = %.noexc8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 48, i1 false), !noalias !93
  br label %bb.i

bb.h:                                             ; preds = %.noexc7, %_RNvNtCs7p2uQeJxui2_9deltalake5utils2rt.exit.i, %bb.e, %bb.d, %bb.b, %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state13SuspendAttachECs7p2uQeJxui2_9deltalake.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i64 [ -9223372036854775707, %bb.g ], [ -9223372036854775711, %bb.f ]
  store i64 %.sink.i, ptr %0, align 16, !alias.scope !82, !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !85
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.j:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state13SuspendAttachECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.h
  resume { ptr, i32 } %i.ah
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1v_5ErrorENCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB2u_22DeltaFileSystemHandler13get_file_infos0_0EB2w_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(200) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = tail call { i64, ptr } @_RNvMs3_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0
  %i.g = extractvalue { i64, ptr } %i.e, 1
  store i64 %i.f, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val3 = load ptr, ptr %i.j, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !94
  %i.k = invoke noundef i32 @_RNvNtCs2pqxYH9ZEk8_3std7process2id()
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  store i32 %i.k, ptr %i.c, align 4, !noalias !94
  %i.l = load atomic i32, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID acquire, align 4, !noalias !98
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i, label %bb.b, !prof !31

bb.b:                                             ; preds = %.noexc
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1y_(ptr noundef nonnull align 4 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c)
          to label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i unwind label %bb.f

_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i: ; preds = %bb.b, %.noexc
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, i64 4), align 4, !noalias !94, !noundef !4 ; 2 uses
  store i32 %i.n, ptr %i.b, align 4, !noalias !94
  %i.o = load i32, ptr %i.c, align 4, !noalias !94, !noundef !4
  %.not.i.i = icmp eq i32 %i.o, %i.n
  br i1 %.not.i.i, label %bb.c, label %bb.e, !prof !31

bb.c:                                             ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  %i.p = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, i64 80) acquire, align 8, !noalias !94
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_RNvNtCs7p2uQeJxui2_9deltalake5utils2rt.exit.i, label %bb.d, !prof !31

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zEB2l_(ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT)
          to label %_RNvNtCs7p2uQeJxui2_9deltalake5utils2rt.exit.i unwind label %bb.f

bb.e:                                             ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !94
  store ptr %i.c, ptr %i.a, align 8, !noalias !94
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !94
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.r, align 8, !noalias !94
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !94
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @193, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195) #45
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %bb.e
  unreachable

_RNvNtCs7p2uQeJxui2_9deltalake5utils2rt.exit.i:   ; preds = %bb.d, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val3) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !94
  %i.s = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !90, !invariant.load !4, !noalias !94
  %i.u = add nsw i64 %i.t, -1
  %i.v = and i64 %i.u, -16
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.val3, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !invariant.load !4, !noalias !94, !nonnull !4
  %i.aa = invoke { ptr, ptr } %i.z(ptr noundef nonnull %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #47
          to label %.noexc7 unwind label %bb.f, !inline_history !101 ; 2 uses

.noexc7:                                          ; preds = %_RNvNtCs7p2uQeJxui2_9deltalake5utils2rt.exit.i
  %i.ab = extractvalue { ptr, ptr } %i.aa, 0
  %i.ac = extractvalue { ptr, ptr } %i.aa, 1
  invoke void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB18_6future6future6Futurep6OutputINtNtB18_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB3b_5ErrorENtNtB18_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109)
          to label %_RNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB7_22DeltaFileSystemHandler13get_file_infos0_0B9_.exit unwind label %bb.f

bb.f:                                             ; preds = %.noexc7, %_RNvNtCs7p2uQeJxui2_9deltalake5utils2rt.exit.i, %bb.e, %bb.d, %bb.b, %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state13SuspendAttachECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

_RNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB7_22DeltaFileSystemHandler13get_file_infos0_0B9_.exit: ; preds = %.noexc7
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state13SuspendAttachECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f
  resume { ptr, i32 } %i.ad
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2J_13RawDeltaTable11add_columns0EB2J_(ptr dead_on_unwind noalias noundef writable sret([120 x i8]) align 8 captures(address) dereferenceable(120) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [128 x i8], align 16              ; 6 uses
  %i.h = alloca [56 x i8], align 8                ; 6 uses
  %i.i = alloca [176 x i8], align 8               ; 4 uses
  %i.j = alloca [176 x i8], align 8               ; 5 uses
  %i.k = alloca [64 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 12 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = alloca [176 x i8], align 8               ; 4 uses
  %i.o = alloca [88 x i8], align 8                ; 5 uses
  %i.p = alloca [88 x i8], align 8                ; 4 uses
  %i.q = alloca [176 x i8], align 8               ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [120 x i8], align 8               ; 4 uses
  %i.t = alloca [176 x i8], align 8               ; 12 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [120 x i8], align 8               ; 6 uses
  %i.w = alloca [112 x i8], align 8               ; 12 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.y = invoke { i64, ptr } @_RNvMs3_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttach3new()
          to label %bb.b unwind label %bb.bi      ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.z = extractvalue { i64, ptr } %i.y, 0
  %i.aa = extractvalue { i64, ptr } %i.y, 1
  store i64 %i.z, ptr %i.x, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.w, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !107
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 88 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !105, !noalias !102, !nonnull !4, !align !32, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !107, !nonnull !4, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noundef nonnull align 8 %i.ag)
          to label %bb.e unwind label %bb.d, !noalias !107

bb.c:                                             ; preds = %.thread105.i
  br i1 %.sroa.024.3109.i, label %.thread.i, label %.body

bb.d:                                             ; preds = %bb.f, %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.e:                                             ; preds = %bb.b
  %i.ai = load i64, ptr %i.u, align 8, !range !3, !noalias !107, !noundef !4
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !107, !nonnull !4, !align !32, !noundef !4 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.an = load i8, ptr %i.am, align 8, !range !5, !noalias !107, !noundef !4 ; 3 uses
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = trunc nuw i8 %i.an to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !107
  invoke void @_RINvNtCs7p2uQeJxui2_9deltalake5error9to_rt_errINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBL_5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEEEB4_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.h, ptr noundef nonnull align 8 %i.al, i1 noundef zeroext %i.ao)
          to label %bb.bd unwind label %bb.d, !noalias !107

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !107
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  invoke fastcc void @_RNvXs3_NtCs14kWLkQVSKO_14deltalake_core5tableNtB5_10DeltaTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(120) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ap)
          to label %bb.i unwind label %bb.h, !noalias !107

bb.h:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.al, i8 %i.an) #43
          to label %.thread.i unwind label %bb.bb, !noalias !107

bb.i:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.as = trunc nuw i8 %i.an to i1
  br i1 %i.as, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !107
  %i.au = and i64 %i.at, 9223372036854775807
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.k, !prof !31

bb.k:                                             ; preds = %bb.j
  %i.aw = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #46
          to label %.noexc.i unwind label %bb.bc, !noalias !107

.noexc.i:                                         ; preds = %bb.k
  br i1 %i.aw, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc.i
  store atomic i8 1, ptr %i.ar monotonic, align 4, !noalias !107
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.l, %.noexc.i, %bb.j, %bb.i
  %i.ax = atomicrmw xchg ptr %i.al, i32 0 release, align 4, !noalias !107
  %i.ay = icmp eq i32 %i.ax, 2
  br i1 %i.ay, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i, !prof !9

bb.m:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.bc, !noalias !107

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.m, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.s, ptr noundef nonnull align 8 dereferenceable(120) %i.v, i64 120, i1 false), !noalias !107
  invoke void @_RNvMNtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB4_5table10DeltaTable11add_columns(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %i.s)
          to label %bb.n unwind label %.thread135.i, !noalias !107

.thread135.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i
  %lpad.thr_comm.split-lp137.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !107
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !105, !noalias !102, !nonnull !4, !align !32, !noundef !4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !107, !nonnull !4, !noundef !4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !noalias !107, !noundef !4
  %i.bf = getelementptr inbounds nuw [96 x i8], ptr %i.bc, i64 %i.be
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2x_5slice4iter4IterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCNCNvMsl_B3H_NtB3H_13RawDeltaTable11add_columns00EE9from_iterB3H_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bf)
          to label %bb.o unwind label %.thread119.i, !noalias !107

.thread119.i:                                     ; preds = %bb.au, %bb.at, %bb.as, %bb.aq, %bb.ap, %bb.ao, %bb.aa, %bb.x, %bb.n
  %.sroa.024.4.ph.i = phi i1 [ false, %bb.as ], [ false, %bb.aq ], [ false, %bb.ap ], [ true, %bb.n ], [ false, %bb.x ], [ false, %bb.aa ], [ false, %bb.ao ], [ false, %bb.au ], [ false, %bb.at ]
  %lpad.thr_comm117.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread105.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.q, ptr noundef nonnull align 8 dereferenceable(176) %i.t, i64 176, i1 false), !noalias !107
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !113
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !115, !noalias !118
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.44.0.copyload.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !alias.scope !115, !noalias !118, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.55.0.copyload.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !alias.scope !115, !noalias !118 ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs3gECBqE52CY_10pyo3_arrow6export22Arro3RecordBatchReaderNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2S_13RawDeltaTable16deletion_vectors0EB2S_:bb.a
  store i64 %.sroa.3187.0.copyload.i, ptr %.sroa.640.sroa.8.0..sroa.640.0..sroa_idx41.sroa_idx.i, align 8, !noalias !483
  %.sroa.842.0..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.sroa.6103.0.copyload.i, ptr %.sroa.842.0..sroa_idx43.i, align 16, !noalias !483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !483
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.e)
          to label %bb.am unwind label %bb.t, !noalias !480

bb.am:                                            ; preds = %bb.al
  %.sroa.537.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !noalias !483
  %.sroa.537.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.537.sroa.7.0.copyload.i = load ptr, ptr %.sroa.537.sroa.7.0..sroa_idx.i, align 8, !noalias !483
  %.sroa.537.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.537.sroa.8.0.copyload.i = load i64, ptr %.sroa.537.sroa.8.0..sroa_idx.i, align 8, !noalias !483
  %.sroa.537.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.4115.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4115.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.537.sroa.9.0..sroa_idx.i, i64 32, i1 false), !noalias !485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !483
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.537.sroa.0.0.copyload.i, ptr %i.bz, align 8, !alias.scope !480, !noalias !485
  %.sroa.2113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.537.sroa.7.0.copyload.i, ptr %.sroa.2113.0..sroa_idx.i, align 8, !alias.scope !480, !noalias !485
  %.sroa.3114.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.537.sroa.8.0.copyload.i, ptr %.sroa.3114.0..sroa_idx.i, align 8, !alias.scope !480, !noalias !485
  store i64 1, ptr %0, align 8, !alias.scope !480, !noalias !485
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %bb.am
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(168) %i.u)
          to label %bb.aq unwind label %bb.k, !noalias !480

bb.ao:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.630.i, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !483
  %i.ca = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.832.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.832.0..sroa_idx33.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false), !noalias !483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !483
  store i64 -9223372036854775709, ptr %i.g, align 16, !noalias !483
  %.sroa.630.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.630.0..sroa_idx31.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.630.i, i64 24, i1 false), !noalias !483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !483
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.g)
          to label %bb.ap unwind label %bb.t, !noalias !480

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.527.i, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !483
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.630.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.525.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.527.i, i64 56, i1 false), !noalias !483
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.527.i)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cb, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.525.i, i64 56, i1 false), !noalias !485
  store i64 1, ptr %0, align 8, !alias.scope !480, !noalias !485
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.525.i)
  br label %bb.an

bb.aq:                                            ; preds = %bb.as, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !483
  br label %bb.at

bb.ar:                                            ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.5.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(40) %i.av, i64 40, i1 false), !noalias !483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !483
  store i64 -9223372036854775709, ptr %i.i, align 16, !noalias !483
  %.sroa.5.sroa.5.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.5.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.5.sroa.7.i, i64 40, i1 false), !noalias !483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !483
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.h, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.i)
          to label %bb.as unwind label %bb.k, !noalias !480

bb.as:                                            ; preds = %bb.ar
  %.sroa.615.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8, !noalias !483
  %.sroa.615.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.615.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.615.sroa.7.0..sroa_idx.i, i64 40, i1 false), !noalias !483
  %.sroa.615.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.615.sroa.8.0.copyload.i = load i64, ptr %.sroa.615.sroa.8.0..sroa_idx.i, align 8, !noalias !483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !483
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.5.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.69.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.615.sroa.7.i, i64 40, i1 false), !noalias !483
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615.sroa.7.i)
  %.sroa.2176.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2176.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.69.sroa.7.i, i64 40, i1 false), !noalias !485
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.615.sroa.0.0.copyload.i, ptr %i.cc, align 8, !alias.scope !480, !noalias !485
  %.sroa.3177.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.615.sroa.8.0.copyload.i, ptr %.sroa.3177.0..sroa_idx.i, align 8, !alias.scope !480, !noalias !485
  store i64 1, ptr %0, align 8, !alias.scope !480, !noalias !485
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.sroa.7.i)
  br label %bb.aq

bb.at:                                            ; preds = %bb.av, %bb.aq
  %.sroa.064.6.i = phi i8 [ 1, %bb.av ], [ 0, %bb.aq ] ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.w)
          to label %bb.aw unwind label %bb.h, !noalias !480

bb.au:                                            ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.v, i64 96, i1 false), !noalias !483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !483
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.j, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.k)
          to label %bb.av unwind label %bb.k, !noalias !480

bb.av:                                            ; preds = %bb.au
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !noalias !485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !483
  store i64 1, ptr %0, align 8, !alias.scope !480, !noalias !485
  br label %bb.at

bb.aw:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !483
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.x)
          to label %bb.ax unwind label %bb.e, !noalias !480

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !483
  %i.ce = trunc nuw i8 %.sroa.064.6.i to i1
  br i1 %i.ce, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.az, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !483
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(120) %i.aa)
          to label %.noexc4 unwind label %bb.bd

.noexc4:                                          ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !483
  br label %bb.be

bb.az:                                            ; preds = %bb.ax
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %bb.ay unwind label %bb.bb, !noalias !480

bb.ba:                                            ; preds = %bb.bc, %bb.bb, %bb.d
  %.pn143.i = phi { ptr, i32 } [ %i.cf, %bb.bb ], [ %.pn141.i, %bb.bc ], [ %.pn141.i, %bb.d ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(120) %i.aa) #43
          to label %.body unwind label %bb.ak, !noalias !480

bb.bb:                                            ; preds = %bb.az
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.bc:                                            ; preds = %bb.d
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %bb.ba unwind label %bb.ak, !noalias !480

bb.bd:                                            ; preds = %bb.ay, %bb.ai, %bb.a
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ba, %bb.bd
  %eh.lpad-body = phi { ptr, i32 } [ %i.cg, %bb.bd ], [ %.pn143.i, %bb.ba ]
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state13SuspendAttachECs7p2uQeJxui2_9deltalake.exit unwind label %bb.bf

bb.be:                                            ; preds = %.noexc4, %.noexc3, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  ret void

bb.bf:                                            ; preds = %.body
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state13SuspendAttachECs7p2uQeJxui2_9deltalake.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs3gECBqE52CY_10pyo3_arrow6export22Arro3RecordBatchReaderNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2S_13RawDeltaTable8load_cdfs1_0EB2S_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = invoke { i64, ptr } @_RNvMs3_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttach3new()
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  store i64 %i.c, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8
  %i.f = invoke { ptr, ptr } @_RNvNtCs7p2uQeJxui2_9deltalake6reader24convert_stream_to_reader(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state13SuspendAttachECs7p2uQeJxui2_9deltalake.exit4 unwind label %bb.c ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.thread unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state13SuspendAttachECs7p2uQeJxui2_9deltalake.exit4: ; preds = %bb.b
  %i.h = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = extractvalue { ptr, ptr } %i.f, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !alias.scope !493, !noalias !496
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !493, !noalias !496
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.i, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !493, !noalias !496
  store i64 0, ptr %0, align 8, !alias.scope !493, !noalias !496
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.c, %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

.thread:                                          ; preds = %bb.c, %bb.e
  %.pn7 = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.l, %bb.e ]
  resume { ptr, i32 } %.pn7

bb.e:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBO_13RawDeltaTable8load_cdfs1_0EBO_(ptr nonnull %1, ptr nonnull %2) #43
          to label %.thread unwind label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2v_13RawDeltaTable13merge_execute0EB2v_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef align 16 dereferenceable(1056) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [120 x i8], align 8               ; 14 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = tail call { i64, ptr } @_RNvMs3_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1
  store i64 %i.h, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.j, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs7p2uQeJxui2_9deltalake5mergeNtB2_14PyMergeBuilder7execute(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull align 16 dereferenceable(1056) %1)
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.a
  %i.k = load i64, ptr %i.a, align 16, !range !55, !noalias !501, !noundef !4 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.n, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.m)
          to label %.noexc3 unwind label %bb.v

.noexc3:                                          ; preds = %bb.b
  store i64 1, ptr %0, align 8, !alias.scope !498, !noalias !504
  br label %bb.w

bb.c:                                             ; preds = %.noexc
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.sroa.614.sroa.0.0.copyload.i = load i64, ptr %.sroa.614.0..sroa_idx.i, align 16, !noalias !501
  %.sroa.614.sroa.5.0..sroa.614.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.614.sroa.5.0..sroa.614.0..sroa_idx.sroa_idx.i, i64 24, i1 false), !noalias !501
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx.i, i64 104, i1 false), !noalias !501
  store i64 %i.k, ptr %i.e, align 8, !noalias !501
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store i64 %.sroa.614.sroa.0.0.copyload.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !501
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !501
  invoke void @_RNvMCs7p2uQeJxui2_9deltalakeNtB2_13RawDeltaTable9set_state(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.e unwind label %bb.d, !noalias !498

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #43
          to label %.body.i unwind label %bb.n, !noalias !498

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !501
  %i.q = load i64, ptr %i.c, align 8, !range !3, !noalias !501, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %i.t, i64 56, i1 false), !noalias !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !501
  store i64 1, ptr %0, align 8, !alias.scope !498, !noalias !504
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.g, !noalias !498

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.h, !noalias !498

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !498
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.o, !noalias !498

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.614.sroa.5.0..sroa.614.0..sroa_idx.sroa_idx.i, i64 24, i1 false), !noalias !504
  store i64 0, ptr %0, align 8, !alias.scope !498, !noalias !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !501
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.l unwind label %bb.j, !noalias !498

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !511, !noalias !501, !nonnull !4, !noundef !4
  %i.z = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !512
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.k, label %.body

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.x) #46
          to label %.body unwind label %bb.n, !noalias !498

bb.l:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !513)
  call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !519, !noalias !501, !nonnull !4, !noundef !4
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !520
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit23.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit23.i unwind label %bb.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit23.i: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !501
  br label %bb.w

bb.n:                                             ; preds = %bb.u, %bb.q, %.body.i, %bb.k, %bb.d
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !498
  unreachable

.body.i:                                          ; preds = %bb.o, %bb.g, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.ag, %bb.o ], [ %i.u, %bb.g ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.e) #43
          to label %bb.t unwind label %bb.n, !noalias !498

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !501
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.r unwind label %bb.p, !noalias !498

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !527, !noalias !501, !nonnull !4, !noundef !4
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !528
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.q, label %.body

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai) #46
          to label %.body unwind label %bb.n, !noalias !498

end_hunk_2
begin_hunk_3_@_RINvNtCs6Po7BT7Nknu_5alloc3str17join_generic_copyehNtNtB4_6string6StringECs7p2uQeJxui2_9deltalake:bb.a
  %.sroa.05.4.val = load ptr, ptr %i.br, align 8, !nonnull !4, !noundef !4
  %i.bs = getelementptr i8, ptr %.sroa.05.4307, i64 16
  %.sroa.05.4.val68 = load i64, ptr %i.bs, align 8, !noundef !4 ; 5 uses
  %.not.i113 = icmp ult i64 %.sroa.26.5306, 4
  br i1 %.not.i113, label %.invoke, label %bb.s, !prof !9

bb.s:                                             ; preds = %.lr.ph308
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.028.5305, i64 4 ; 2 uses
  %i.bu = add nsw i64 %.sroa.26.5306, -4          ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull %.sroa.028.5305, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.t:                                             ; preds = %bb.s
  %.not.i119 = icmp ugt i64 %.sroa.05.4.val68, %i.bu
  br i1 %.not.i119, label %.invoke, label %bb.u, !prof !9

bb.u:                                             ; preds = %bb.t
  invoke void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull %i.bt, i64 noundef %.sroa.05.4.val68, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.4.val, i64 noundef %.sroa.05.4.val68, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26)
          to label %.preheader204 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.preheader:                                       ; preds = %bb.x
  %i.bv = sub nuw nsw i64 %i.cc, %.sroa.05.5.val67 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sroa.05.5.val67
  %i.bx = icmp eq ptr %i.by, %i.c
  br i1 %i.bx, label %.loopexit, label %.lr.ph333

.lr.ph333:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.05.5332 = phi ptr [ %i.by, %.preheader ], [ %i.e, %.preheader.preheader ] ; 3 uses
  %.sroa.26.6331 = phi i64 [ %i.bv, %.preheader ], [ %i.ag, %.preheader.preheader ] ; 2 uses
  %.sroa.028.6330 = phi ptr [ %i.bw, %.preheader ], [ %i.af, %.preheader.preheader ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.05.5332, i64 24 ; 2 uses
  %i.bz = getelementptr i8, ptr %.sroa.05.5332, i64 8
  %.sroa.05.5.val = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4
  %i.ca = getelementptr i8, ptr %.sroa.05.5332, i64 16
  %.sroa.05.5.val67 = load i64, ptr %i.ca, align 8, !noundef !4 ; 5 uses
  %.not.i125 = icmp ugt i64 %4, %.sroa.26.6331
  br i1 %.not.i125, label %.invoke, label %bb.v, !prof !9

bb.v:                                             ; preds = %.lr.ph333
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.028.6330, i64 %4 ; 2 uses
  %i.cc = sub nuw nsw i64 %.sroa.26.6331, %4      ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull %.sroa.028.6330, i64 noundef %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26)
          to label %bb.w unwind label %.loopexit185

bb.w:                                             ; preds = %bb.v
  %.not.i131 = icmp ugt i64 %.sroa.05.5.val67, %i.cc
  br i1 %.not.i131, label %.invoke, label %bb.x, !prof !9

.invoke:                                          ; preds = %bb.t, %.lr.ph308, %bb.q, %.lr.ph313, %bb.n, %.lr.ph318, %bb.k, %.lr.ph323, %bb.h, %bb.w, %.lr.ph333
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @153, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #45
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %bb.w
  invoke void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull %i.cb, i64 noundef %.sroa.05.5.val67, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.5.val, i64 noundef %.sroa.05.5.val67, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26)
          to label %.preheader unwind label %.loopexit185

bb.y:                                             ; preds = %bb.ab, %.loopexit
  ret void

bb.z:                                             ; preds = %.loopexit.split-lp
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.aa:                                            ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi

bb.ab:                                            ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cf, align 8
  br label %bb.y
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBM_5types3any5PyAnyEj2_ECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.val7 = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call void @_Py_DecRef(ptr noundef nonnull %.val7) #41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7.1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  tail call void @_Py_DecRef(ptr noundef nonnull %.val7.1) #41
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBM_5types3any5PyAnyEj4_ECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.val7 = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call void @_Py_DecRef(ptr noundef nonnull %.val7) #41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7.1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  tail call void @_Py_DecRef(ptr noundef nonnull %.val7.1) #41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val7.2 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_Py_DecRef(ptr noundef nonnull %.val7.2) #41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val7.3 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  tail call void @_Py_DecRef(ptr noundef nonnull %.val7.3) #41
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsgvKtmFgitAz_12thread_local5EntryINtNtB4_4cell7RefCellINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !5, !alias.scope !2172, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_RNvXCsgvKtmFgitAz_12thread_localINtB2_5EntryINtNtCsbvkFyIu7lgC_4core4cell7RefCellINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterEEENtNtNtBL_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterEEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RNvXCsgvKtmFgitAz_12thread_localINtB2_5EntryINtNtCsbvkFyIu7lgC_4core4cell7RefCellINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterEEENtNtNtBL_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit

_RNvXCsgvKtmFgitAz_12thread_localINtB2_5EntryINtNtCsbvkFyIu7lgC_4core4cell7RefCellINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterEEENtNtNtBL_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterEEECs7p2uQeJxui2_9deltalake.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsgvKtmFgitAz_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry5stack9SpanStackEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !5, !alias.scope !2175, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_RNvXCsgvKtmFgitAz_12thread_localINtB2_5EntryINtNtCsbvkFyIu7lgC_4core4cell7RefCellNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry5stack9SpanStackEENtNtNtBL_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry5stack9ContextIdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry5stack9SpanStackEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry5stack9ContextIdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry5stack9ContextIdEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry5stack9ContextIdEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry5stack9SpanStackEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry5stack9ContextIdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RNvXCsgvKtmFgitAz_12thread_localINtB2_5EntryINtNtCsbvkFyIu7lgC_4core4cell7RefCellNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry5stack9SpanStackEENtNtNtBL_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit

_RNvXCsgvKtmFgitAz_12thread_localINtB2_5EntryINtNtCsbvkFyIu7lgC_4core4cell7RefCellNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry5stack9SpanStackEENtNtNtBL_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry5stack9SpanStackEECs7p2uQeJxui2_9deltalake.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2g_5ErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2g_5ErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #41
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2g_5ErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2y6mmZ7bjoM_12tracing_core8metadata11LevelFilterENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1t_5types3any5PyAnyENtNtB1t_3err5PyErrEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !165, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2178)
  %i.c = icmp eq i64 %i.a, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !2178, !nonnull !4, !noundef !4
  tail call void @_Py_DecRef(ptr noundef nonnull %.val.i) #41, !noalias !2178
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs7p2uQeJxui2_9deltalake13PyTransactionEEEB1B_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !133, !noundef !4
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs7p2uQeJxui2_9deltalake13PyTransactionEEB1f_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCs7p2uQeJxui2_9deltalake13PyTransactionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs7p2uQeJxui2_9deltalake13PyTransactionEEB1f_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCs7p2uQeJxui2_9deltalake13PyTransactionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtCs7p2uQeJxui2_9deltalake13PyTransactionEEB1m_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtCs7p2uQeJxui2_9deltalake13PyTransactionEEB1m_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs7p2uQeJxui2_9deltalake13PyTransactionEEB1f_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCs7p2uQeJxui2_9deltalake13PyTransactionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !133, !noundef !4
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !133, !noundef !4
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !133, !noundef !4
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs7p2uQeJxui2_9deltalake.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake:bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecjEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecjEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecxEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecxEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2242, !nonnull !4, !noundef !4
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !2242
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #46
  br label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit

_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2245)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2245, !nonnull !4, !noundef !4
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !2245
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #46
  br label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit

_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2248)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2248, !nonnull !4, !noundef !4
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !2248
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #46
  br label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit

_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2251)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2251, !nonnull !4, !noundef !4
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !2251
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #46
  br label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit

_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2254)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2254, !nonnull !4, !noundef !4
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !2254
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #46
  br label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit

_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2257)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2257, !nonnull !4, !noundef !4
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !2257
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceE9drop_slowCsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) #46
  br label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit

_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #41
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #41
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsEECs7p2uQeJxui2_9deltalake(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i64, ptr %.0.val, align 8, !range !133, !alias.scope !2260, !noundef !4
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15IlikeSelectItemEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(352) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15IlikeSelectItemECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(352) %.0.val)
          to label %.body.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15IlikeSelectItemECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(352) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15IlikeSelectItemEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15IlikeSelectItemECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query17ExcludeSelectItemEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(64) %i.f) #43
          to label %bb.f unwind label %bb.o

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15IlikeSelectItemEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15IlikeSelectItemECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query17ExcludeSelectItemEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(64) %i.g)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.g, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.i, %bb.g ], [ %eh.lpad-body.i, %.body.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query16ExceptSelectItemEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(88) %i.h) #43
          to label %bb.i unwind label %bb.o

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15IlikeSelectItemEECs7p2uQeJxui2_9deltalake.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15IlikeSelectItemEECs7p2uQeJxui2_9deltalake.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query16ExceptSelectItemEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(88) %i.j)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.f
  %.pn2.i = phi { ptr, i32 } [ %i.l, %bb.j ], [ %.pn.i, %bb.f ]
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 112
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr24PlannedReplaceSelectItemEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.k) #43
          to label %bb.l unwind label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 112
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr24PlannedReplaceSelectItemEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.m)
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.i
  %.pn4.i = phi { ptr, i32 } [ %i.o, %bb.m ], [ %.pn2.i, %bb.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 224
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query16RenameSelectItemEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(128) %i.n) #43
          to label %bb.q unwind label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 224
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query16RenameSelectItemEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(128) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsECs7p2uQeJxui2_9deltalake.exit unwind label %bb.p

bb.o:                                             ; preds = %bb.l, %bb.i, %bb.f, %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.n
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 352, i64 noundef 8) #41
  ret void

bb.q:                                             ; preds = %bb.p, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.p ], [ %.pn4.i, %bb.l ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 352, i64 noundef 8) #41
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 112, i64 noundef 16) #41
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 112, i64 noundef 16) #41
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #41
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #41
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef 16) #41
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef 16) #41
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeEECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 21 uses
  %i.b = load i8, ptr %i.a, align 8, !range !2265, !alias.scope !2266, !noundef !4
  switch i8 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeECs7p2uQeJxui2_9deltalake.exit [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 82, label %bb.i
end_hunk_4
begin_hunk_5_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBO_13RawDeltaTable6delete0EBO_:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyWriterPropertiesEEB14_.exit4: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !165, !alias.scope !2662, !noundef !4
  %i.q = icmp eq i64 %i.p, 2
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEEB14_.exit6, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyWriterPropertiesEEB14_.exit4
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEBI_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.o)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEEB14_.exit6

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEEB14_.exit6: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyWriterPropertiesEEB14_.exit4, %bb.j
  ret void

bb.k:                                             ; preds = %bb.h, %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEEB14_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyWriterPropertiesEEB14_.exit, %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBO_13RawDeltaTable6update0EBO_(ptr noalias noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !165, !alias.scope !2665, !noundef !4
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyWriterPropertiesEEB14_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs7p2uQeJxui2_9deltalake18PyWriterPropertiesEBI_(ptr noalias noundef nonnull align 8 dereferenceable(264) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyWriterPropertiesEEB14_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 392
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyWriterPropertiesEEB14_.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit6 unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.d
  %.pn = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #43
          to label %.body unwind label %bb.k

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyWriterPropertiesEEB14_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit6: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyWriterPropertiesEEB14_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !range !133, !alias.scope !2668, !noundef !4
  %i.j = icmp eq i64 %i.i, -9223372036854775808
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit6
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.i

.body:                                            ; preds = %bb.i, %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit
  %.pn2 = phi { ptr, i32 } [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit ], [ %i.p, %bb.i ], [ %i.k, %bb.f ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !165, !alias.scope !2671, !noundef !4
  %i.o = icmp eq i64 %i.n, 2
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEEB14_.exit, label %bb.h

bb.h:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEBI_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEEB14_.exit unwind label %bb.k

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !range !165, !alias.scope !2674, !noundef !4
  %i.s = icmp eq i64 %i.r, 2
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEEB14_.exit9, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEBI_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.q)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEEB14_.exit9

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEEB14_.exit9: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit, %bb.j
  ret void

bb.k:                                             ; preds = %bb.h, %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEEB14_.exit: ; preds = %.body, %bb.h
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBO_13RawDeltaTable6vacuum0EBO_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !165, !alias.scope !2677, !noundef !4
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEEB14_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEBI_(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEEB14_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.d) #43
          to label %common.resume unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEEB14_.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !range !133, !alias.scope !2680, !noundef !4
  %i.g = icmp eq i64 %i.f, -9223372036854775808
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEEECs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEEB14_.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.c, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.d
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEEB14_.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs7p2uQeJxui2_9deltalake.exit.i
  ret void

bb.g:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBO_13RawDeltaTable8load_cdfs1_0EBO_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1X_6marker4SendEL_ENtNtNtB1X_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit4.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #41
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1X_6marker4SendEL_ENtNtNtB1X_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1X_6marker4SendEL_ENtNtNtB1X_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit4.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs_NtCsjyY8HP3IvQ6_12object_store6uploadINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBN_15MultipartUploadEL_EB1Y_8complete0ECs7p2uQeJxui2_9deltalake(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !2683, !noundef !4
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !4, !align !32, !noundef !4 ; 5 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #41
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #41
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesEBI_(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2684, !noundef !4
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs7p2uQeJxui2_9deltalake13PyTransactionEEEB1B_(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
          to label %common.resume unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !range !133, !alias.scope !2687, !noundef !4
  %i.h = icmp eq i64 %i.g, -9223372036854775808
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs7p2uQeJxui2_9deltalake13PyTransactionEEEB1B_.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCs7p2uQeJxui2_9deltalake13PyTransactionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs7p2uQeJxui2_9deltalake13PyTransactionEEB1f_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCs7p2uQeJxui2_9deltalake13PyTransactionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs7p2uQeJxui2_9deltalake13PyTransactionEEB1f_.exit.i: ; preds = %bb.d
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCs7p2uQeJxui2_9deltalake13PyTransactionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs7p2uQeJxui2_9deltalake13PyTransactionEEEB1B_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs7p2uQeJxui2_9deltalake13PyTransactionEEEB1B_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs7p2uQeJxui2_9deltalake13PyTransactionEEB1f_.exit.i
  ret void

bb.g:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs7p2uQeJxui2_9deltalake18PyWriterPropertiesEBI_(ptr noalias noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !133, !alias.scope !2690, !noundef !4
  %i.c = icmp eq i64 %i.b, -9223372036854775808
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEB14_(ptr noalias noundef align 8 dereferenceable(96) %i.g) #43
          to label %bb.f unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEB14_(ptr noalias noundef align 8 dereferenceable(96) %i.h)
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %bb.h, %.body
  %.pn = phi { ptr, i32 } [ %i.l, %bb.h ], [ %eh.lpad-body, %.body ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2693, !noundef !4
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_NtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEEEB2F_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEENtNtNtB1w_3ops4drop4Drop4dropB25_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_NtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEEEB2F_.exit unwind label %bb.k

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !2696, !noundef !4
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_NtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEEEB2F_.exit3, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEENtNtNtB1w_3ops4drop4Drop4dropB25_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_NtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEEEB2F_.exit3

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_NtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEEEB2F_.exit3: ; preds = %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %bb.g, %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_NtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEEEB2F_.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !2699, !noundef !4 ; 6 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775800
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775802
  %i.d = icmp ugt i64 %i.a, -9223372036854775803
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.k
    i64 2, label %bb.n
    i64 3, label %bb.am
    i64 4, label %bb.at
    i64 5, label %bb.az
    i64 6, label %bb.bc
    i64 7, label %bb.bf
    i64 8, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit
    i64 9, label %bb.bi
    i64 10, label %bb.bl
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

common.resume:                                    ; preds = %bb.cx, %bb.cy, %bb.cr, %bb.cs, %bb.cl, %bb.cm, %bb.cf, %bb.cg, %bb.bz, %bb.ca, %.body58, %.body53, %.body48, %.body43, %.body38, %.body, %bb.bs, %bb.bt, %bb.ax, %bb.ay, %bb.ar, %bb.as, %bb.s, %bb.ab, %bb.ae, %.body8.i, %.body11.i, %.body.i, %bb.ak, %bb.i, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.ga, %bb.cr ], [ %i.g, %bb.c ], [ %i.q, %bb.i ], [ %i.be, %bb.ak ], [ %i.bp, %bb.ar ], [ %i.cd, %bb.ax ], [ %i.dj, %bb.bs ], [ %eh.lpad-body59, %.body58 ], [ %i.eb, %bb.bz ], [ %i.es, %bb.cf ], [ %i.fj, %bb.cl ], [ %i.q, %bb.j ], [ %eh.lpad-body12.i, %.body11.i ], [ %i.ah, %bb.s ], [ %i.ap, %bb.ab ], [ %i.as, %bb.ae ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body9.i, %.body8.i ], [ %i.bp, %bb.as ], [ %i.cd, %bb.ay ], [ %i.dj, %bb.bt ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body39, %.body38 ], [ %eh.lpad-body44, %.body43 ], [ %eh.lpad-body49, %.body48 ], [ %eh.lpad-body54, %.body53 ], [ %i.eb, %bb.ca ], [ %i.es, %bb.cg ], [ %i.fj, %bb.cm ], [ %i.ga, %bb.cs ], [ %i.gr, %bb.cy ], [ %i.gr, %bb.cx ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val27 = load ptr, ptr %i.i, align 8           ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val28 = load ptr, ptr %i.j, align 8, !nonnull !4, !align !32, !noundef !4 ; 5 uses
  %i.k = load ptr, ptr %.val28, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  invoke void %i.k(ptr noundef nonnull %.val27)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val28, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val28, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val28, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val28, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #41
  br label %common.resume

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit32 unwind label %bb.bo

bb.n:                                             ; preds = %bb.a
  %i.z = icmp ne i64 %i.a, -9223372036854775807
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = xor i64 %i.a, -9223372036854775808
  %i.ab = icmp slt i64 %i.a, 0
  %i.ac = select i1 %i.ab, i64 %i.aa, i64 1
  switch i64 %i.ac, label %bb.o [
    i64 0, label %bb.r
    i64 1, label %bb.u
    i64 2, label %bb.x
    i64 3, label %bb.aa
    i64 4, label %bb.ad
  ]

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.aj

bb.r:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit5.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit5.i: ; preds = %bb.r
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.u:                                             ; preds = %bb.n
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i7.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %.body8.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i7.i: ; preds = %bb.u
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit10.i unwind label %bb.ag

bb.x:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body11.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.x
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ai

bb.aa:                                            ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs7p2uQeJxui2_9deltalake.exit15.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs7p2uQeJxui2_9deltalake.exit15.i: ; preds = %bb.aa
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.ad:                                            ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit18.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %common.resume unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit18.i: ; preds = %bb.ad
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.ag:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i7.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i

.body8.i:                                         ; preds = %bb.ag, %bb.v
  %eh.lpad-body9.i = phi { ptr, i32 } [ %i.au, %bb.ag ], [ %i.aj, %bb.v ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.av) #43
          to label %common.resume unwind label %bb.ah

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit10.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i7.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.aw)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.ah:                                            ; preds = %.body.i, %.body11.i, %.body8.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i

.body11.i:                                        ; preds = %bb.ai, %bb.y
  %eh.lpad-body12.i = phi { ptr, i32 } [ %i.ay, %bb.ai ], [ %i.am, %bb.y ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i = load ptr, ptr %i.az, align 8, !alias.scope !2700, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr nonnull %.val2.i) #43
          to label %common.resume unwind label %bb.ah

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.ba, align 8, !alias.scope !2700, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr nonnull %.val.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.aj, %bb.p
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bb, %bb.aj ], [ %i.ae, %bb.p ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc) #43
          to label %common.resume unwind label %bb.ah

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit21.i unwind label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %common.resume unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit21.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.am:                                            ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val29 = load ptr, ptr %i.bg, align 8, !noundef !4 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val30 = load ptr, ptr %i.bh, align 8          ; 6 uses
  %i.bi = icmp eq ptr %.val29, null
  br i1 %i.bi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val30) ]
  %i.bj = load ptr, ptr %.val30, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void %i.bj(ptr noundef nonnull %.val29)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.bk = getelementptr inbounds nuw i8, ptr %.val30, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bn = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef range(i64 1, 0) %i.bl, i64 noundef range(i64 1, 536870913) %i.bo) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.ar:                                            ; preds = %bb.ao
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val30, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %common.resume, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bt = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef range(i64 1, 0) %i.br, i64 noundef range(i64 1, 536870913) %i.bu) #41
  br label %common.resume

bb.at:                                            ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val25 = load ptr, ptr %i.bv, align 8          ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val26 = load ptr, ptr %i.bw, align 8, !nonnull !4, !align !32, !noundef !4 ; 5 uses
  %i.bx = load ptr, ptr %.val26, align 8, !invariant.load !4 ; 2 uses
  %.not.i33 = icmp eq ptr %i.bx, null
  br i1 %.not.i33, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  invoke void %i.bx(ptr noundef nonnull %.val25)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.by = getelementptr inbounds nuw i8, ptr %.val26, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25, i64 noundef range(i64 1, 0) %i.bz, i64 noundef range(i64 1, 536870913) %i.cc) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.ax:                                            ; preds = %bb.au
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val26, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %common.resume, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ch = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25, i64 noundef range(i64 1, 0) %i.cf, i64 noundef range(i64 1, 536870913) %i.ci) #41
  br label %common.resume

bb.az:                                            ; preds = %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i37 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cj)
          to label %.body38 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i37: ; preds = %bb.az
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit40 unwind label %bb.bv

bb.bc:                                            ; preds = %bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i42 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %.body43 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i42: ; preds = %bb.bc
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit45 unwind label %bb.cb

bb.bf:                                            ; preds = %bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i47 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %.body48 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i47: ; preds = %bb.bf
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit50 unwind label %bb.ch

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.cw, %bb.cv, %bb.cq, %bb.cp, %bb.ck, %bb.cj, %bb.ce, %bb.cd, %bb.by, %bb.bx, %bb.br, %bb.bq, %bb.aw, %bb.av, %bb.aq, %bb.ap, %bb.am, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit21.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs7p2uQeJxui2_9deltalake.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit10.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit18.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs7p2uQeJxui2_9deltalake.exit15.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit5.i, %bb.h, %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit, %bb.a
  ret void

bb.bi:                                            ; preds = %bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i52 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %.body53 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i52: ; preds = %bb.bi
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit55 unwind label %bb.cn

bb.bl:                                            ; preds = %bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i57 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cv)
          to label %.body58 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i57: ; preds = %bb.bl
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit60 unwind label %bb.ct

bb.bo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.bo
  %eh.lpad-body = phi { ptr, i32 } [ %i.cy, %bb.bo ], [ %i.x, %bb.l ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val23 = load ptr, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val24 = load ptr, ptr %i.da, align 8, !nonnull !4, !align !32, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake(ptr %.val23, ptr nonnull %.val24) #43
          to label %common.resume unwind label %bb.bu

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit32: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val21 = load ptr, ptr %i.db, align 8          ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val22 = load ptr, ptr %i.dc, align 8, !nonnull !4, !align !32, !noundef !4 ; 5 uses
  %i.dd = load ptr, ptr %.val22, align 8, !invariant.load !4 ; 2 uses
  %.not.i61 = icmp eq ptr %i.dd, null
  br i1 %.not.i61, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  invoke void %i.dd(ptr noundef nonnull %.val21)
          to label %bb.bq unwind label %bb.bs

bb.bq:                                            ; preds = %bb.bp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit32
  %i.de = getelementptr inbounds nuw i8, ptr %.val22, i64 8
  %i.df = load i64, ptr %i.de, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef range(i64 1, 0) %i.df, i64 noundef range(i64 1, 536870913) %i.di) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.bs:                                            ; preds = %bb.bp
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.val22, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %common.resume, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.dn = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef range(i64 1, 0) %i.dl, i64 noundef range(i64 1, 536870913) %i.do) #41
  br label %common.resume

bb.bu:                                            ; preds = %.body, %.body38, %.body43, %.body48, %.body53, %.body58
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.bv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i37
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body38

.body38:                                          ; preds = %bb.ba, %bb.bv
  %eh.lpad-body39 = phi { ptr, i32 } [ %i.dq, %bb.bv ], [ %i.ck, %bb.ba ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val19 = load ptr, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val20 = load ptr, ptr %i.ds, align 8, !nonnull !4, !align !32, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake(ptr %.val19, ptr nonnull %.val20) #43
          to label %common.resume unwind label %bb.bu

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit40: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i37
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val17 = load ptr, ptr %i.dt, align 8          ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val18 = load ptr, ptr %i.du, align 8, !nonnull !4, !align !32, !noundef !4 ; 5 uses
  %i.dv = load ptr, ptr %.val18, align 8, !invariant.load !4 ; 2 uses
  %.not.i64 = icmp eq ptr %i.dv, null
  br i1 %.not.i64, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit40
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  invoke void %i.dv(ptr noundef nonnull %.val17)
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %bb.bw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit40
  %i.dw = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef range(i64 1, 0) %i.dx, i64 noundef range(i64 1, 536870913) %i.ea) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.bz:                                            ; preds = %bb.bw
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %common.resume, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ef = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef range(i64 1, 0) %i.ed, i64 noundef range(i64 1, 536870913) %i.eg) #41
  br label %common.resume

bb.cb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i42
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body43

.body43:                                          ; preds = %bb.bd, %bb.cb
  %eh.lpad-body44 = phi { ptr, i32 } [ %i.eh, %bb.cb ], [ %i.cn, %bb.bd ]
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val15 = load ptr, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val16 = load ptr, ptr %i.ej, align 8, !nonnull !4, !align !32, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake(ptr %.val15, ptr nonnull %.val16) #43
          to label %common.resume unwind label %bb.bu

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit45: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i42
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val13 = load ptr, ptr %i.ek, align 8          ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val14 = load ptr, ptr %i.el, align 8, !nonnull !4, !align !32, !noundef !4 ; 5 uses
  %i.em = load ptr, ptr %.val14, align 8, !invariant.load !4 ; 2 uses
  %.not.i67 = icmp eq ptr %i.em, null
  br i1 %.not.i67, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit45
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  invoke void %i.em(ptr noundef nonnull %.val13)
          to label %bb.cd unwind label %bb.cf

bb.cd:                                            ; preds = %bb.cc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit45
  %i.en = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.er = load i64, ptr %i.eq, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef range(i64 1, 0) %i.eo, i64 noundef range(i64 1, 536870913) %i.er) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.cf:                                            ; preds = %bb.cc
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %common.resume, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ew = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef range(i64 1, 0) %i.eu, i64 noundef range(i64 1, 536870913) %i.ex) #41
  br label %common.resume

bb.ch:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i47
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body48

.body48:                                          ; preds = %bb.bg, %bb.ch
  %eh.lpad-body49 = phi { ptr, i32 } [ %i.ey, %bb.ch ], [ %i.cq, %bb.bg ]
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val11 = load ptr, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val12 = load ptr, ptr %i.fa, align 8, !nonnull !4, !align !32, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake(ptr %.val11, ptr nonnull %.val12) #43
          to label %common.resume unwind label %bb.bu

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit50: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i47
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val9 = load ptr, ptr %i.fb, align 8           ; 5 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val10 = load ptr, ptr %i.fc, align 8, !nonnull !4, !align !32, !noundef !4 ; 5 uses
  %i.fd = load ptr, ptr %.val10, align 8, !invariant.load !4 ; 2 uses
  %.not.i70 = icmp eq ptr %i.fd, null
  br i1 %.not.i70, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit50
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  invoke void %i.fd(ptr noundef nonnull %.val9)
          to label %bb.cj unwind label %bb.cl

bb.cj:                                            ; preds = %bb.ci, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit50
  %i.fe = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef range(i64 1, 0) %i.ff, i64 noundef range(i64 1, 536870913) %i.fi) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.cl:                                            ; preds = %bb.ci
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %common.resume, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.fn = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef range(i64 1, 0) %i.fl, i64 noundef range(i64 1, 536870913) %i.fo) #41
  br label %common.resume

bb.cn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i52
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body53

.body53:                                          ; preds = %bb.bj, %bb.cn
  %eh.lpad-body54 = phi { ptr, i32 } [ %i.fp, %bb.cn ], [ %i.ct, %bb.bj ]
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val7 = load ptr, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val8 = load ptr, ptr %i.fr, align 8, !nonnull !4, !align !32, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake(ptr %.val7, ptr nonnull %.val8) #43
          to label %common.resume unwind label %bb.bu

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit55: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i52
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5 = load ptr, ptr %i.fs, align 8           ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val6 = load ptr, ptr %i.ft, align 8, !nonnull !4, !align !32, !noundef !4 ; 5 uses
  %i.fu = load ptr, ptr %.val6, align 8, !invariant.load !4 ; 2 uses
  %.not.i73 = icmp eq ptr %i.fu, null
  br i1 %.not.i73, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit55
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void %i.fu(ptr noundef nonnull %.val5)
          to label %bb.cp unwind label %bb.cr

bb.cp:                                            ; preds = %bb.co, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit55
  %i.fv = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.fw, i64 noundef range(i64 1, 536870913) %i.fz) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.cr:                                            ; preds = %bb.co
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %common.resume, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ge = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.gc, i64 noundef range(i64 1, 536870913) %i.gf) #41
  br label %common.resume

bb.ct:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i57
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body58

.body58:                                          ; preds = %bb.bm, %bb.ct
  %eh.lpad-body59 = phi { ptr, i32 } [ %i.gg, %bb.ct ], [ %i.cw, %bb.bm ]
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3 = load ptr, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val4 = load ptr, ptr %i.gi, align 8, !nonnull !4, !align !32, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake(ptr %.val3, ptr nonnull %.val4) #43
          to label %common.resume unwind label %bb.bu

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit60: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i57
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.gj, align 8            ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2 = load ptr, ptr %i.gk, align 8, !nonnull !4, !align !32, !noundef !4 ; 5 uses
  %i.gl = load ptr, ptr %.val2, align 8, !invariant.load !4 ; 2 uses
  %.not.i76 = icmp eq ptr %i.gl, null
  br i1 %.not.i76, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit60
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.gl(ptr noundef nonnull %.val)
          to label %bb.cv unwind label %bb.cx

bb.cv:                                            ; preds = %bb.cu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit60
  %i.gm = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.gq = load i64, ptr %i.gp, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.gn, i64 noundef range(i64 1, 536870913) %i.gq) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.cx:                                            ; preds = %bb.cu
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %common.resume, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.gv = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.gt, i64 noundef range(i64 1, 536870913) %i.gw) #41
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !133, !alias.scope !2703, !noundef !4
  %i.c = icmp eq i64 %i.b, -9223372036854775808
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %0) #43
          to label %bb.d unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %0)
          to label %bb.g unwind label %bb.f

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.d, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2709)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !2712, !nonnull !4, !noundef !4
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !2712
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit unwind label %bb.i

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEECs7p2uQeJxui2_9deltalake.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEECs7p2uQeJxui2_9deltalake.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2716)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2719, !nonnull !4, !noundef !4
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !2719
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit3

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit3

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit3: ; preds = %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.e, %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol14DeltaOperationECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(408) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !2720, !noundef !4 ; 3 uses
  %i.b = icmp ne i64 %i.a, 3
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %i.d = icmp samesign ugt i64 %i.a, 1
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.k
    i64 1, label %bb.n
    i64 2, label %bb.q
    i64 3, label %bb.u
    i64 4, label %bb.y
    i64 5, label %bb.ac
    i64 6, label %bb.af
    i64 7, label %bb.ai
    i64 8, label %bb.al
    i64 9, label %bb.ap
    i64 10, label %bb.as
    i64 11, label %bb.at
    i64 12, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations21update_table_metadata19TableMetadataUpdateECs7p2uQeJxui2_9deltalake.exit
    i64 13, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations21update_table_metadata19TableMetadataUpdateECs7p2uQeJxui2_9deltalake.exit
    i64 14, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations21update_table_metadata19TableMetadataUpdateECs7p2uQeJxui2_9deltalake.exit
    i64 15, label %bb.ax
    i64 16, label %bb.ba
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !range !133, !alias.scope !2721, !noundef !4
  %i.h = icmp eq i64 %i.g, -9223372036854775808
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %.body.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.i, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #43
          to label %common.resume unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !range !133, !alias.scope !2726, !noundef !4
  %i.o = icmp eq i64 %i.n, -9223372036854775808
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations21update_table_metadata19TableMetadataUpdateECs7p2uQeJxui2_9deltalake.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i2.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

common.resume:                                    ; preds = %bb.bz, %bb.bk, %bb.be, %.body9, %.body45, %bb.bb, %bb.ay, %bb.av, %bb.aq, %bb.aj, %bb.ag, %bb.ad, %bb.aa, %bb.w, %bb.l, %.body.i, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %bb.bk ], [ %eh.lpad-body.i, %.body.i ], [ %i.t, %bb.l ], [ %i.ag, %bb.w ], [ %i.al, %bb.aa ], [ %i.ao, %bb.ad ], [ %i.ar, %bb.ag ], [ %i.au, %bb.aj ], [ %i.bc, %bb.aq ], [ %i.bi, %bb.av ], [ %i.bl, %bb.ay ], [ %i.bo, %bb.bb ], [ %.pn4, %.body45 ], [ %i.p, %bb.h ], [ %.pn6, %bb.be ], [ %eh.lpad-body10, %.body9 ], [ %i.cw, %bb.bz ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i2.i: ; preds = %bb.g
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations21update_table_metadata19TableMetadataUpdateECs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %.body.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume unwind label %bb.m

end_hunk_5
begin_hunk_6_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs7p2uQeJxui2_9deltalake:bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4m0Tg8nAduX_20datafusion_execution6config13SessionConfigECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2854)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2857, !nonnull !4, !noundef !4
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !2857
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEECs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1D_3AnyNtNtB4_6marker4SyncNtB2E_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtNtCs4m0Tg8nAduX_20datafusion_execution6config8IdHasherEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1D_3AnyNtNtB4_6marker4SyncNtB2E_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtNtCs4m0Tg8nAduX_20datafusion_execution6config8IdHasherEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !2858, !noundef !4
  switch i64 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.h
    i64 3, label %bb.k
    i64 5, label %bb.n
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.q, %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.s, %bb.l, %bb.i, %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.l ], [ %i.c, %bb.c ], [ %i.f, %bb.f ], [ %i.i, %bb.i ], [ %i.v, %bb.s ], [ %i.v, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit3 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit3: ; preds = %bb.e
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit5 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit5: ; preds = %bb.h
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.k:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit7 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit7: ; preds = %bb.k
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.n:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.n, align 8             ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.o, align 8, !nonnull !4, !align !32, !noundef !4 ; 5 uses
  %i.p = load ptr, ptr %.val1, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.p(ptr noundef nonnull %.val)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.q = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.t = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.r:                                             ; preds = %bb.o
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %common.resume, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #41
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7p2uQeJxui2_9deltalake10filesystem8FsConfigEBK_(ptr noalias noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
  ret void

bb.e:                                             ; preds = %.body
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame11WindowFrameECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(176) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i128, ptr %0, align 16, !range !2859, !alias.scope !2860, !noundef !4
  %cond.i = icmp eq i128 %i.a, 1
  br i1 %cond.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame16WindowFrameBoundECs7p2uQeJxui2_9deltalake.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame16WindowFrameBoundECs7p2uQeJxui2_9deltalake.exit unwind label %bb.b

bb.b:                                             ; preds = %.sink.split.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i128, ptr %i.d, align 16, !range !2859, !alias.scope !2863, !noundef !4
  %cond.i1 = icmp eq i128 %i.e, 1
  br i1 %cond.i1, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame16WindowFrameBoundECs7p2uQeJxui2_9deltalake.exit4, label %.sink.split.i2

.sink.split.i2:                                   ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame16WindowFrameBoundECs7p2uQeJxui2_9deltalake.exit4 unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame16WindowFrameBoundECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %.sink.split.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i128, ptr %i.g, align 16, !range !2859, !alias.scope !2866, !noundef !4
  %cond.i5 = icmp eq i128 %i.h, 1
  br i1 %cond.i5, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame16WindowFrameBoundECs7p2uQeJxui2_9deltalake.exit7, label %.sink.split.i6

.sink.split.i6:                                   ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame16WindowFrameBoundECs7p2uQeJxui2_9deltalake.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame16WindowFrameBoundECs7p2uQeJxui2_9deltalake.exit7

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame16WindowFrameBoundECs7p2uQeJxui2_9deltalake.exit7: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame16WindowFrameBoundECs7p2uQeJxui2_9deltalake.exit, %.sink.split.i6
  ret void

bb.c:                                             ; preds = %.sink.split.i2
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame16WindowFrameBoundECs7p2uQeJxui2_9deltalake.exit4: ; preds = %bb.b, %.sink.split.i2
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr15execution_props14ExecutionPropsECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2872)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2875, !nonnull !4, !noundef !4
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !2875
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common5alias14AliasGeneratorEECs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common5alias14AliasGeneratorE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common5alias14AliasGeneratorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2876)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !2876, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !2879
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common5alias14AliasGeneratorEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2884)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2884, !noundef !4 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs7p2uQeJxui2_9deltalake.exit4, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common5alias14AliasGeneratorEECs7p2uQeJxui2_9deltalake.exit
  %i.m = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !2887
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs7p2uQeJxui2_9deltalake.exit4

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs7p2uQeJxui2_9deltalake.exit4 unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.c, %bb.e, %bb.i
  %.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.d, %bb.e ], [ %i.d, %bb.c ], [ %i.d, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !2892, !noundef !4
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1J_11VarProviderNtNtB4_6marker4SyncNtB3w_4SendEL_EEEECs7p2uQeJxui2_9deltalake.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs7p2uQeJxui2_9deltalake.exit
end_hunk_6
begin_hunk_7_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs7p2uQeJxui2_9deltalake:bb.a
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs7p2uQeJxui2_9deltalake.exit

bb.k:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3219)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !3222, !nonnull !4, !noundef !4
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !3222
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs7p2uQeJxui2_9deltalake.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs7p2uQeJxui2_9deltalake.exit

bb.m:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3226)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !3229, !nonnull !4, !noundef !4
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !3229
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs7p2uQeJxui2_9deltalake.exit

bb.n:                                             ; preds = %bb.m
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs7p2uQeJxui2_9deltalake.exit

bb.o:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3233)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !3236, !nonnull !4, !noundef !4
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !3236
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs7p2uQeJxui2_9deltalake.exit

bb.p:                                             ; preds = %bb.o
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs7p2uQeJxui2_9deltalake.exit

bb.q:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3243)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !3246, !nonnull !4, !noundef !4
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !3246
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs7p2uQeJxui2_9deltalake.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSIBx_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ae) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs7p2uQeJxui2_9deltalake.exit

bb.s:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3253)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !3256, !nonnull !4, !noundef !4
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !3256
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs7p2uQeJxui2_9deltalake.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSTaIBx_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs7p2uQeJxui2_9deltalake.exit

bb.u:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3257)
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !3257, !nonnull !4, !noundef !4 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.x unwind label %.body, !noalias !3257, !inline_history !3260

.body:                                            ; preds = %bb.u
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef 24, i64 noundef 8) #41, !noalias !3257, !inline_history !3260
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ap) #43
          to label %common.resume unwind label %bb.z

bb.v:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3264)
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !3267, !nonnull !4, !noundef !4
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !3267
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs7p2uQeJxui2_9deltalake.exit

bb.w:                                             ; preds = %bb.v
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs7p2uQeJxui2_9deltalake.exit

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef 24, i64 noundef 8) #41, !noalias !3257, !inline_history !3260
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3268)
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !3268, !nonnull !4, !noundef !4 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs7p2uQeJxui2_9deltalake.exit10 unwind label %bb.y, !noalias !3268, !inline_history !3260

common.resume:                                    ; preds = %.body, %bb.ab, %bb.aa, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.y ], [ %i.ao, %.body ], [ %i.ay, %bb.ab ], [ %i.ay, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

bb.y:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.av, i64 noundef 24, i64 noundef 8) #41, !noalias !3268, !inline_history !3260
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs7p2uQeJxui2_9deltalake.exit10: ; preds = %bb.x
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.av, i64 noundef 24, i64 noundef 8) #41, !noalias !3268, !inline_history !3260
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs7p2uQeJxui2_9deltalake.exit

bb.z:                                             ; preds = %bb.ab, %.body
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.aa:                                            ; preds = %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3274)
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !3277, !nonnull !4, !noundef !4
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !noalias !3277
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.ab, label %common.resume

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.az) #46
          to label %common.resume unwind label %bb.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3281)
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !3284, !nonnull !4, !noundef !4
  %i.bf = atomicrmw sub ptr %i.be, i64 1 release, align 8, !noalias !3284
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs7p2uQeJxui2_9deltalake.exit

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs7p2uQeJxui2_9deltalake.exit
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bd) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs7p2uQeJxui2_9deltalake.exit
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3291)
  %i.a = load i64, ptr %0, align 8, !range !3, !alias.scope !3294, !noundef !4
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo33err9err_state10PyErrStateECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3295)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3298, !noundef !4
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !3298 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !3298, !nonnull !4, !align !32, !noundef !4 ; 5 uses
  %i.h = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !4, !noalias !3298 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g, !noalias !3298

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !191, !invariant.load !4, !noalias !3298 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo33err9err_state10PyErrStateECs7p2uQeJxui2_9deltalake.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !90, !invariant.load !4, !noalias !3298
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #41, !noalias !3298
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo33err9err_state10PyErrStateECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !191, !invariant.load !4, !noalias !3298 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %common.resume.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !90, !invariant.load !4, !noalias !3298
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #41, !noalias !3298
  br label %common.resume.i.i.i.i

common.resume.i.i.i.i:                            ; preds = %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, %bb.h, %bb.g
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.n, %bb.h ], [ %.pn.i.i.i.i.i, %bb.k ], [ %.pn.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.i:                                             ; preds = %bb.b
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types10typeobject6PyTypeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtB7_10exceptions15PyBaseExceptionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i unwind label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtB7_10exceptions15PyBaseExceptionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECs7p2uQeJxui2_9deltalake.exit2.i.i.i.i.i unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.l, %bb.j
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.z, %bb.l ], [ %i.t, %bb.j ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !3299, !noundef !4
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %common.resume.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types9traceback11PyTracebackENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %common.resume.i.i.i.i unwind label %bb.n

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECs7p2uQeJxui2_9deltalake.exit2.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !3304, !noundef !4
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo33err9err_state10PyErrStateECs7p2uQeJxui2_9deltalake.exit, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECs7p2uQeJxui2_9deltalake.exit2.i.i.i.i.i
  tail call void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types9traceback11PyTracebackENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo33err9err_state10PyErrStateECs7p2uQeJxui2_9deltalake.exit

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo33err9err_state10PyErrStateECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.e, %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECs7p2uQeJxui2_9deltalake.exit2.i.i.i.i.i, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !165, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3310)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3313, !nonnull !4, !noundef !4
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !3313
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceE9drop_slowCsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3317)
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !3320, !nonnull !4, !noundef !4
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !3320
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit3.sink.split, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit3

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3324)
  %i.i = load ptr, ptr %i.b, align 8, !alias.scope !3327, !nonnull !4, !noundef !4
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !3327
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit5

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceE9drop_slowCsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit5 unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit3.sink.split: ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit12, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit5
  %.sink = phi ptr [ %i.q, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit5 ], [ %i.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit12 ], [ %i.b, %bb.d ]
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceE9drop_slowCsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sink) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit3

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit3: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit3.sink.split, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit12, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit5, %bb.d
  ret void

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3331)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !3334, !nonnull !4, !noundef !4
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !3334
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit7

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceE9drop_slowCsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit7 unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit5: ; preds = %bb.e, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3338)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !3341, !nonnull !4, !noundef !4
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !3341
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit3.sink.split, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit3

bb.i:                                             ; preds = %bb.m, %bb.k, %bb.h
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit7: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit10, %bb.m, %bb.g, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.l, %bb.h ], [ %.pn, %bb.m ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit10 ]
  resume { ptr, i32 } %.pn.pn

bb.j:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3345)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !3348, !nonnull !4, !noundef !4
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !3348
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit10

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceE9drop_slowCsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit10 unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3352)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !3355, !nonnull !4, !noundef !4
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !3355
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit12

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceE9drop_slowCsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit12 unwind label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit10: ; preds = %bb.j, %bb.k, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.n ], [ %i.v, %bb.k ], [ %i.v, %bb.j ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3359)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !3362, !nonnull !4, !noundef !4
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !3362
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs7p2uQeJxui2_9deltalake.exit7
end_hunk_7
begin_hunk_8_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionECs7p2uQeJxui2_9deltalake:bb.a
bb.br:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit21.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs7p2uQeJxui2_9deltalake.exit24.i unwind label %bb.bs

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.bs, %bb.bp, %.body18.i
  %.pn4.i30 = phi { ptr, i32 } [ %i.dp, %bb.bs ], [ %.pn2.i29, %bb.bp ], [ %.pn2.i29, %.body18.i ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.do) #43
          to label %.body27.i unwind label %bb.cb

bb.bs:                                            ; preds = %bb.br
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs7p2uQeJxui2_9deltalake.exit24.i: ; preds = %bb.br, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit21.i
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.dr = load i64, ptr %i.dq, align 8, !range !133, !alias.scope !4252, !noundef !4
  %i.ds = icmp eq i64 %i.dr, -9223372036854775808
  br i1 %i.ds, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit30.i, label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs7p2uQeJxui2_9deltalake.exit24.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i26.i unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %.body27.i unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i26.i: ; preds = %bb.bt
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit30.i unwind label %bb.bw

.body27.i:                                        ; preds = %bb.bw, %bb.bu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs7p2uQeJxui2_9deltalake.exit.i
  %.pn6.i31 = phi { ptr, i32 } [ %.pn4.i30, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs7p2uQeJxui2_9deltalake.exit.i ], [ %i.dw, %bb.bw ], [ %i.dt, %bb.bu ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.cb

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i26.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body27.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit30.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i26.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs7p2uQeJxui2_9deltalake.exit24.i
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs7p2uQeJxui2_9deltalake.exit33.i unwind label %bb.bx

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.bx, %.body27.i
  %.pn8.i = phi { ptr, i32 } [ %i.dz, %bb.bx ], [ %.pn6.i31, %.body27.i ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy) #43
          to label %common.resume unwind label %bb.cb

bb.bx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit30.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs7p2uQeJxui2_9deltalake.exit33.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit30.i
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.eb = load i64, ptr %i.ea, align 8, !range !133, !alias.scope !4255, !noundef !4
  %i.ec = icmp eq i64 %i.eb, -9223372036854775808
  br i1 %i.ec, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddECs7p2uQeJxui2_9deltalake.exit, label %bb.by

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs7p2uQeJxui2_9deltalake.exit33.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ea)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i35.i unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ea)
          to label %common.resume unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i35.i: ; preds = %bb.by
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ea)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddECs7p2uQeJxui2_9deltalake.exit

bb.cb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs7p2uQeJxui2_9deltalake.exit.i, %.body27.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs7p2uQeJxui2_9deltalake.exit.i, %bb.bp, %.body12.i, %.body.i26
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i35.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs7p2uQeJxui2_9deltalake.exit33.i, %bb.ay, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions24DeletionVectorDescriptorECs7p2uQeJxui2_9deltalake.exit.i.i16, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit9.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i18.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions24DeletionVectorDescriptorEECs7p2uQeJxui2_9deltalake.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionECs7p2uQeJxui2_9deltalake.exit, %bb.j, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions14DomainMetadataECs7p2uQeJxui2_9deltalake.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4261)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4264, !nonnull !4, !noundef !4
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !4264
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotEECs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %0) #43
          to label %common.resume unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotEECs7p2uQeJxui2_9deltalake.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.e, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotEECs7p2uQeJxui2_9deltalake.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs7p2uQeJxui2_9deltalake.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs7p2uQeJxui2_9deltalake.exit
    i64 1, label %bb.c
  ], !prof !4265

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !4, !align !32, !noundef !4 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !90, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #41
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #41
  resume { ptr, i32 } %i.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http3uri6scheme6SchemeECs7p2uQeJxui2_9deltalake(i8 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %switch.i = icmp ult i8 %.0.val, 2
  br i1 %switch.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http3uri6scheme7Scheme2ECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4272)
  %i.a = load ptr, ptr %.8.val, align 8, !alias.scope !4275, !nonnull !4, !align !32, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !noalias !4275, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4275, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !4275, !noundef !4
  invoke void %i.c(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.f, i64 noundef %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4j34XAPZOn0_4http8byte_str7ByteStrEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.c, !inline_history !2788

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 32, i64 noundef 8) #41
  resume { ptr, i32 } %i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4j34XAPZOn0_4http8byte_str7ByteStrEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 32, i64 noundef 8) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http3uri6scheme7Scheme2ECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http3uri6scheme7Scheme2ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4j34XAPZOn0_4http8byte_str7ByteStrEECs7p2uQeJxui2_9deltalake.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val2 = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.d = shl nuw nsw i64 %.val2, 2
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef 2) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECs7p2uQeJxui2_9deltalake.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.e

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECs7p2uQeJxui2_9deltalake.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

.body:                                            ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.i, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.h) #43
          to label %common.resume unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECs7p2uQeJxui2_9deltalake.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.g ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECs7p2uQeJxui2_9deltalake.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  ret void

bb.i:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(1680) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 984
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscYNcALI69lp_20datafusion_optimizer8analyzer8AnalyzerECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.e) #43
          to label %bb.e unwind label %bb.bm

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 984
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscYNcALI69lp_20datafusion_optimizer8analyzer8AnalyzerECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.f)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %eh.lpad-body, %.body ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1032
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner11ExprPlannerEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.g) #43
          to label %.body42 unwind label %bb.bm

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner11ExprPlannerEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
end_hunk_8
begin_hunk_9_@_RINvNtNtCsgbCypRs12E4_4pyo35types5tuple16array_into_tupleKj2_ECs7p2uQeJxui2_9deltalake:bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBM_5types3any5PyAnyEj2_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %0) #43
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCsgbCypRs12E4_4pyo35types5tuple16array_into_tupleKj4_ECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  %i.b = tail call noundef ptr @PyTuple_New(i64 noundef 4) #41 ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgbCypRs12E4_4pyo33err17panic_after_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #42
          to label %bb.c unwind label %bb.f

.lr.ph.preheader:                                 ; preds = %bb.a
  %.sroa.01.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %.sroa.01.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 4, ptr %.sroa.01.sroa.2.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %.sroa.01.sroa.3.0..sroa_idx, align 8, !alias.scope !5507, !nonnull !4, !noundef !4
  %i.e = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.b, i64 noundef 0, ptr noundef nonnull %i.d) #41 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !5507, !nonnull !4, !noundef !4
  %i.h = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull %i.g) #41 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !5507, !nonnull !4, !noundef !4
  %i.k = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.b, i64 noundef 2, ptr noundef nonnull %i.j) #41 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !5507, !nonnull !4, !noundef !4
  %i.n = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.b, i64 noundef 3, ptr noundef nonnull %i.m) #41 ; 0 uses
  store i64 4, ptr %i.a, align 8
  store i64 4, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1B_5types3any5PyAnyEEj4_NtB4_11PartialDrop12partial_dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.01.sroa.3.0..sroa_idx, i64 noundef 4, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtB4_5array4iter8IntoIterINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1Z_5types3any5PyAnyEKj4_EEECs7p2uQeJxui2_9deltalake.exit21 unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %.lr.ph.preheader
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %i.b) #41
  br label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtB4_5array4iter8IntoIterINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1Z_5types3any5PyAnyEKj4_EEECs7p2uQeJxui2_9deltalake.exit21: ; preds = %.lr.ph.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b

bb.e:                                             ; preds = %bb.f, %bb.d
  %.pn1924 = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.o, %bb.d ]
  resume { ptr, i32 } %.pn1924

bb.f:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBM_5types3any5PyAnyEj4_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0) #43
  br label %bb.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtCsgbCypRs12E4_4pyo35types7capsule18capsule_destructorNtNtCs9kEa9DYq95x_14datafusion_ffi14table_provider17FFI_TableProviderNCINvMB2_NtB2_9PyCapsule3newBX_E0ECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [224 x i8], align 8               ; 2 uses
  %i.b = alloca [232 x i8], align 8               ; 9 uses
  %i.c = tail call noundef ptr @PyCapsule_GetName(ptr noundef %0) #41
  %i.d = tail call noundef ptr @PyCapsule_GetPointer(ptr noundef %0, ptr noundef %i.c) #41 ; 5 uses
  %i.e = tail call noundef ptr @PyCapsule_GetContext(ptr noundef %0) #41
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.a, ptr noundef nonnull align 8 dereferenceable(224) %i.d, i64 224, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %.val = load ptr, ptr %i.f, align 8, !noundef !4 ; 3 uses
  %i.g = getelementptr i8, ptr %i.d, i64 232
  %.val3 = load i64, ptr %i.g, align 8            ; 2 uses
  %i.h = icmp eq ptr %.val, null
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %.val, align 1
  %i.i = icmp eq i64 %.val3, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val3, i64 noundef 1) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 240, i64 noundef 8) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.b, ptr noundef nonnull align 8 dereferenceable(224) %i.a, i64 224, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store ptr %i.e, ptr %i.j, align 8
  invoke void @_RNvXs1_NtCs9kEa9DYq95x_14datafusion_ffi14table_providerNtB5_17FFI_TableProviderNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(224) %i.b)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9kEa9DYq95x_14datafusion_ffi5proto23logical_extension_codec25FFI_LogicalExtensionCodecECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(144) %i.l) #43
          to label %.critedge.body unwind label %bb.h

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  invoke void @_RNvXs1_NtNtCs9kEa9DYq95x_14datafusion_ffi5proto23logical_extension_codecNtB5_25FFI_LogicalExtensionCodecNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9kEa9DYq95x_14datafusion_ffi14table_provider17FFI_TableProviderECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  invoke void @_RNvXs1_NtNtCs9kEa9DYq95x_14datafusion_ffi9execution17task_ctx_providerNtB5_23FFI_TaskContextProviderNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %.critedge.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9kEa9DYq95x_14datafusion_ffi14table_provider17FFI_TableProviderECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  invoke void @_RNvXs1_NtNtCs9kEa9DYq95x_14datafusion_ffi9execution17task_ctx_providerNtB5_23FFI_TaskContextProviderNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %_RNCINvMNtNtCsgbCypRs12E4_4pyo35types7capsuleNtB5_9PyCapsule3newNtNtCs9kEa9DYq95x_14datafusion_ffi14table_provider17FFI_TableProviderE0Cs7p2uQeJxui2_9deltalake.exit unwind label %.critedge

.critedge:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9kEa9DYq95x_14datafusion_ffi14table_provider17FFI_TableProviderECs7p2uQeJxui2_9deltalake.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.critedge.body

_RNCINvMNtNtCsgbCypRs12E4_4pyo35types7capsuleNtB5_9PyCapsule3newNtNtCs9kEa9DYq95x_14datafusion_ffi14table_provider17FFI_TableProviderE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9kEa9DYq95x_14datafusion_ffi14table_provider17FFI_TableProviderECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

.critedge.body:                                   ; preds = %.critedge, %bb.f, %bb.d
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #49
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtCsgbCypRs12E4_4pyo35types7capsule18capsule_destructorNtNtCsfYVtenZkBsn_12arrow_schema3ffi15FFI_ArrowSchemaNCINvMB2_NtB2_9PyCapsule3newBX_E0ECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 2 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  %i.c = tail call noundef ptr @PyCapsule_GetName(ptr noundef %0) #41
  %i.d = tail call noundef ptr @PyCapsule_GetPointer(ptr noundef %0, ptr noundef %i.c) #41 ; 5 uses
  %i.e = tail call noundef ptr @PyCapsule_GetContext(ptr noundef %0) #41
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.val = load ptr, ptr %i.f, align 8, !noundef !4 ; 3 uses
  %i.g = getelementptr i8, ptr %i.d, i64 80
  %.val3 = load i64, ptr %i.g, align 8            ; 2 uses
  %i.h = icmp eq ptr %.val, null
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %.val, align 1
  %i.i = icmp eq i64 %.val3, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val3, i64 noundef 1) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 88, i64 noundef 8) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.e, ptr %i.j, align 8
  invoke void @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema3ffiNtB4_15FFI_ArrowSchemaNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %_RNCINvMNtNtCsgbCypRs12E4_4pyo35types7capsuleNtB5_9PyCapsule3newNtNtCsfYVtenZkBsn_12arrow_schema3ffi15FFI_ArrowSchemaE0Cs7p2uQeJxui2_9deltalake.exit unwind label %.critedge

.critedge:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #49
  unreachable

_RNCINvMNtNtCsgbCypRs12E4_4pyo35types7capsuleNtB5_9PyCapsule3newNtNtCsfYVtenZkBsn_12arrow_schema3ffi15FFI_ArrowSchemaE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCskQDtHcQtBkN_5tokio4util4wake12drop_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %1 = sub nsw i64 0, %i.b
  %2 = getelementptr inbounds i8, ptr %0, i64 %1  ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.c = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !5514
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEE9drop_slowB32_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCskQDtHcQtBkN_5tokio4util4wake12drop_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %1 = sub nsw i64 0, %i.b
  %2 = getelementptr inbounds i8, ptr %0, i64 %1  ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.c = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !5519
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCskQDtHcQtBkN_5tokio4util4wake12wake_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %1 = sub nsw i64 0, %i.b
  %2 = getelementptr inbounds i8, ptr %0, i64 %1  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  invoke fastcc void @_RNvXs5_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEENtNtB7_4wake4Wake11wake_by_refCs7p2uQeJxui2_9deltalake(ptr nonnull %2)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !5524
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEE9drop_slowB32_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !5529
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RNvXs5_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEENtNtB7_4wake4Wake4wakeCs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEE9drop_slowB32_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #46
  br label %_RNvXs5_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEENtNtB7_4wake4Wake4wakeCs7p2uQeJxui2_9deltalake.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c

_RNvXs5_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEENtNtB7_4wake4Wake4wakeCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCskQDtHcQtBkN_5tokio4util4wake12wake_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %1 = sub nsw i64 0, %i.b
  %2 = getelementptr inbounds i8, ptr %0, i64 %1  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  invoke fastcc void @_RNvXs5_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEENtNtB7_4wake4Wake11wake_by_refCs7p2uQeJxui2_9deltalake(ptr nonnull %2)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !5534
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !5539
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RNvXs5_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEENtNtB7_4wake4Wake4wakeCs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #46
  br label %_RNvXs5_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEENtNtB7_4wake4Wake4wakeCs7p2uQeJxui2_9deltalake.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c

_RNvXs5_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEENtNtB7_4wake4Wake4wakeCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RINvNtNtCskQDtHcQtBkN_5tokio4util4wake13clone_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %1 = sub nsw i64 0, %i.a
  %2 = getelementptr inbounds i8, ptr %0, i64 %1
  %i.b = atomicrmw add ptr %2, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEE25increment_strong_count_inCs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEE25increment_strong_count_inCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  %i.d = insertvalue { ptr, ptr } { ptr @20, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RINvNtNtCskQDtHcQtBkN_5tokio4util4wake13clone_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %1 = sub nsw i64 0, %i.a
  %2 = getelementptr inbounds i8, ptr %0, i64 %1
  %i.b = atomicrmw add ptr %2, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE25increment_strong_count_inCs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE25increment_strong_count_inCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  %i.d = insertvalue { ptr, ptr } { ptr @21, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCskQDtHcQtBkN_5tokio4util4wake19wake_by_ref_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %1 = sub nsw i64 0, %i.a
  %2 = getelementptr inbounds i8, ptr %0, i64 %1
  tail call fastcc void @_RNvXs5_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEENtNtB7_4wake4Wake11wake_by_refCs7p2uQeJxui2_9deltalake(ptr nonnull %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCskQDtHcQtBkN_5tokio4util4wake19wake_by_ref_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %1 = sub nsw i64 0, %i.a
  %2 = getelementptr inbounds i8, ptr %0, i64 %1
  tail call fastcc void @_RNvXs5_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEENtNtB7_4wake4Wake11wake_by_refCs7p2uQeJxui2_9deltalake(ptr nonnull %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCINvNtB5_5utils18find_exprs_in_exprNCINvB2Q_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB3W_5slice4iter4IterBK_EINtNtB3W_6option4IterBK_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = load i64, ptr %1, align 16, !range !413, !noundef !4 ; 3 uses
  %i.i = icmp ne i64 %i.h, 35
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.h, -4
  %i.k = icmp samesign ugt i64 %i.h, 3
  %i.l = select i1 %i.k, i64 %i.j, i64 31
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.o
    i64 1, label %bb.c
    i64 2, label %bb.c
    i64 3, label %bb.c
    i64 4, label %bb.d
    i64 5, label %bb.q
    i64 6, label %bb.q
    i64 7, label %bb.e
    i64 8, label %bb.e
    i64 9, label %bb.e
    i64 10, label %bb.e
    i64 11, label %bb.e
    i64 12, label %bb.e
    i64 13, label %bb.e
    i64 14, label %bb.e
    i64 15, label %bb.e
    i64 16, label %bb.e
    i64 17, label %bb.f
    i64 18, label %bb.g
    i64 19, label %bb.h
    i64 20, label %bb.h
    i64 21, label %bb.i
    i64 22, label %bb.j
    i64 23, label %bb.k
    i64 24, label %bb.l
    i64 25, label %bb.c
    i64 26, label %bb.m
    i64 27, label %bb.c
    i64 28, label %bb.c
    i64 29, label %bb.n
    i64 30, label %bb.c
    i64 31, label %bb.c
    i64 32, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.m, align 8
  store i64 20, ptr %0, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.n, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.o, ptr %i.p, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3V_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB52_5slice4iter4IterB1q_EINtNtB52_6option4IterB1q_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.p

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.q, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %i.u, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_BQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3Y_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB55_5slice4iter4IterB1q_EINtNtB55_6option4IterB1q_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.w, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.x, ptr %i.z, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEERINtNtB1y_3vec3VecTB1t_B1t_EEBQ_EINtB6_20TreeNodeRefContainerB22_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB22_NCINvNtB26_5utils18find_exprs_in_exprNCINvB51_17find_window_exprsINtNtNtNtBW_4iter8adapters5chain5ChainINtNtNtBW_5slice4iter4IterB22_EINtBU_4IterB22_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCINvNtB1q_5utils18find_exprs_in_exprNCINvB3G_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB4N_5slice4iter4IterB1m_EINtNtB4N_6option4IterB1m_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ab, ptr %i.c, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ad, ptr %i.af, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EERIBS_NtB1q_4SortEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB58_17find_window_exprsINtNtNtNtB2e_4iter8adapters5chain5ChainINtNtNtB2e_5slice4iter4IterB1o_EINtB2c_4IterB1o_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, <4 x i64> <i64 176, i64 200, i64 224, i64 248>
  store <4 x ptr> %i.ai, ptr %i.b, align 8
  call void @_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_RIBS_NtB1q_4SortERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB5b_17find_window_exprsINtNtNtNtB2y_4iter8adapters5chain5ChainINtNtNtB2y_5slice4iter4IterB1o_EINtB2w_4IterB1o_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtBW_3vec3VecB1q_EEINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB4e_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB5l_5slice4iter4IterB1q_EINtNtB5l_6option4IterB1q_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !165, !noundef !4
  %i.ao = icmp eq i64 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.ao, label %bb.r, label %bb.s

bb.o:                                             ; preds = %bb.a, %bb.m, %bb.h, %bb.e
  %.sink = phi i64 [ 88, %bb.a ], [ 64, %bb.m ], [ 8, %bb.e ], [ 32, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4
  tail call void @_RINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB1k_5utils18find_exprs_in_exprNCINvB24_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB3b_5slice4iter4IterB1g_EINtNtB3b_6option4IterB1g_EEE0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.o, %bb.r, %bb.s, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.q, %bb.d, %bb.c
  ret void

bb.q:                                             ; preds = %bb.a, %bb.a
  %.sroa.02.0 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.03.0 = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.02.0, ptr %i.f, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.03.0, ptr %i.as, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3V_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB52_5slice4iter4IterB1q_EINtNtB52_6option4IterB1q_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.r:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBQ_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEINtB6_17TreeNodeContainerB1q_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3L_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB4S_5slice4iter4IterB1q_EINtNtB4S_6option4IterB1q_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.s:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCINvNtB1q_5utils18find_exprs_in_exprNCINvB3G_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB4N_5slice4iter4IterB1m_EINtNtB4N_6option4IterB1m_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCINvNtB5_5utils18find_exprs_in_exprNCINvB2Q_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB3Z_5slice4iter4IterNtBM_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
end_hunk_9
begin_hunk_10_@_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  %i.fb = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !5699, !noalias !5702, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !5710
  store i64 %i.fc, ptr %i.aw, align 8, !noalias !5710
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef 8) #47, !noalias !5699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !5710
  tail call void @_RINvYTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB4_ENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.fa, i64 noundef %i.fc, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !5699, !inline_history !5709
  %i.fd = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !5699, !noalias !5702, !align !2181, !noundef !4 ; 2 uses
  %i.ff = icmp ne ptr %i.fe, null                 ; 2 uses
  %i.fg = zext i1 %i.ff to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !5715
  store i64 %i.fg, ptr %i.ax, align 8, !noalias !5715
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ax, i64 noundef 8) #47, !noalias !5699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !5715
  br i1 %i.ff, label %tailrecurse.backedge, label %common.ret

common.ret:                                       ; preds = %bb.bc, %bb.bb, %bb.aj, %bb.ai, %bb.af, %bb.t, %_RINvXs8_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_5AliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit, %_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit, %bb.h, %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit, %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit1, %_RINvXs2L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit10, %_RINvXs2U_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_8SubqueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit, %_RINvXs2U_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_8SubqueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit15, %_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit2, %bb.ap, %bb.g, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i, %bb.x, %bb.ak, %bb.al, %bb.am, %_RINvXs3z_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24PlannedReplaceSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit, %.lr.ph.i, %.lr.ph90, %.lr.ph72, %.lr.ph70, %.lr.ph, %bb.q, %bb.s, %bb.r
  ret void

bb.r:                                             ; preds = %tailrecurse
  %i.fh = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5720)
  %i.fi = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !5720, !noalias !5723, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.fj, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5720, !inline_history !5725
  tail call fastcc void @_RINvXs7_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fh, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !5725
  br label %common.ret

bb.s:                                             ; preds = %tailrecurse
  %i.fk = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5726)
  %i.fl = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !5726, !noalias !5729, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.fm, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5726, !inline_history !5731
  tail call fastcc void @_RINvXs7_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fk, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !5731
  br label %common.ret

bb.t:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5732)
  %i.fn = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !alias.scope !5732, !noalias !5735, !nonnull !4, !noundef !4 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5737)
  %i.fq = load ptr, ptr %i.fp, align 8, !alias.scope !5737, !noalias !5740, !nonnull !4, !noundef !4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !5737, !noalias !5740, !nonnull !4, !align !32, !noundef !4 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !range !90, !invariant.load !4, !noalias !5742
  %i.fv = add nsw i64 %i.fu, -1
  %i.fw = and i64 %i.fv, -16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  %i.ga = load ptr, ptr %i.fz, align 8, !invariant.load !4, !noalias !5742, !nonnull !4
  tail call void %i.ga(ptr noundef nonnull %i.fy, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @67) #47, !noalias !5743, !inline_history !5744
  %i.gb = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !alias.scope !5732, !noalias !5735, !nonnull !4, !noundef !4 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ge = load i64, ptr %i.gd, align 8, !alias.scope !5732, !noalias !5735, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5745
  store i64 %i.ge, ptr %i.au, align 8, !noalias !5745
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef 8) #47, !noalias !5732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5745
  %.idx101 = mul nuw nsw i64 %i.ge, 112
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.idx101
  %i.gg = icmp eq i64 %i.ge, 0
  br i1 %i.gg, label %common.ret, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.t, %.lr.ph90
  %.sroa.0.0.i89 = phi ptr [ %i.gh, %.lr.ph90 ], [ %i.gc, %bb.t ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i89, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i89, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5732, !inline_history !5750
  %i.gi = icmp eq ptr %i.gh, %i.gf
  br i1 %i.gi, label %common.ret, label %.lr.ph90

bb.u:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5751)
  %i.gj = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.gk = load ptr, ptr %i.gj, align 8, !alias.scope !5751, !noalias !5754, !nonnull !4, !noundef !4 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5756)
  %i.gm = load ptr, ptr %i.gl, align 8, !alias.scope !5756, !noalias !5759, !nonnull !4, !noundef !4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !alias.scope !5756, !noalias !5759, !nonnull !4, !align !32, !noundef !4 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = load i64, ptr %i.gp, align 8, !range !90, !invariant.load !4, !noalias !5761
  %i.gr = add nsw i64 %i.gq, -1
  %i.gs = and i64 %i.gr, -16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 48
  %i.gw = load ptr, ptr %i.gv, align 8, !invariant.load !4, !noalias !5761, !nonnull !4
  tail call void %i.gw(ptr noundef nonnull %i.gu, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @67) #47, !noalias !5762, !inline_history !5763
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5764)
  %i.gx = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !5764, !noalias !5767, !nonnull !4, !noundef !4 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !5764, !noalias !5767, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5769
  store i64 %i.ha, ptr %i.at, align 8, !noalias !5769
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.at, i64 noundef 8) #47, !noalias !5764, !inline_history !5774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5769
  %.idx99 = mul nuw nsw i64 %i.ha, 112
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.idx99
  %i.hc = icmp eq i64 %i.ha, 0
  br i1 %i.hc, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.u, %.lr.ph86
  %.sroa.0.0.i.i85 = phi ptr [ %i.hd, %.lr.ph86 ], [ %i.gy, %bb.u ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i85, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i.i85, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5764, !inline_history !5775
  %i.he = icmp eq ptr %i.hd, %i.hb
  br i1 %i.he, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i, label %.lr.ph86

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.lr.ph86, %bb.u
  %i.hf = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.hg = load i8, ptr %i.hf, align 8, !range !5, !alias.scope !5764, !noalias !5767, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !5776
  store i8 %i.hg, ptr %i.as, align 1, !noalias !5776
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef 1) #47, !noalias !5764, !inline_history !5774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !5776
  %i.hh = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.hi = load ptr, ptr %i.hh, align 8, !alias.scope !5764, !noalias !5767, !align !2181, !noundef !4 ; 2 uses
  %i.hj = icmp ne ptr %i.hi, null                 ; 2 uses
  %i.hk = zext i1 %i.hj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !5779
  store i64 %i.hk, ptr %i.ar, align 8, !noalias !5779
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef 8) #47, !noalias !5764, !inline_history !5774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !5779
  br i1 %i.hj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.hi, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5764, !inline_history !5774
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i
  %i.hl = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.hm = load ptr, ptr %i.hl, align 8, !alias.scope !5764, !noalias !5767, !nonnull !4, !noundef !4 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.ho = load i64, ptr %i.hn, align 8, !alias.scope !5764, !noalias !5767, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !5784
  store i64 %i.ho, ptr %i.aq, align 8, !noalias !5784
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef 8) #47, !noalias !5764, !inline_history !5774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !5784
  %.idx100 = shl nuw nsw i64 %i.ho, 7
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 %.idx100
  %i.hq = icmp eq i64 %i.ho, 0
  br i1 %i.hq, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i, label %.lr.ph88

.lr.ph88:                                         ; preds = %bb.w, %.lr.ph88
  %.sroa.0.0.i1.i87 = phi ptr [ %i.hr, %.lr.ph88 ], [ %i.hm, %bb.w ] ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i87, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5789)
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %.sroa.0.0.i1.i87, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5764, !inline_history !5792
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i87, i64 112
  %i.ht = load i8, ptr %i.hs, align 16, !range !5, !alias.scope !5789, !noalias !5793, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5795
  store i8 %i.ht, ptr %i.l, align 1, !noalias !5795
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 1) #47, !noalias !5764, !inline_history !5792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5795
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i87, i64 113
  %i.hv = load i8, ptr %i.hu, align 1, !range !5, !alias.scope !5789, !noalias !5793, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5798
  store i8 %i.hv, ptr %i.k, align 1, !noalias !5798
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 1) #47, !noalias !5764, !inline_history !5792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5798
  %i.hw = icmp eq ptr %i.hr, %i.hp
  br i1 %i.hw, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i, label %.lr.ph88

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.lr.ph88, %bb.w
  %i.hx = getelementptr inbounds nuw i8, ptr %.tr, i64 65
  %i.hy = load i8, ptr %i.hx, align 1, !range !137, !alias.scope !5764, !noalias !5767, !noundef !4 ; 2 uses
  %i.hz = icmp ne i8 %i.hy, 2                     ; 2 uses
  %i.ia = zext i1 %i.hz to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !5801
  store i64 %i.ia, ptr %i.ap, align 8, !noalias !5801
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef 8) #47, !noalias !5764, !inline_history !5774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !5801
  br i1 %i.hz, label %bb.x, label %common.ret

bb.x:                                             ; preds = %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i
  %i.ib = zext nneg i8 %i.hy to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !5806
  store i64 %i.ib, ptr %i.ao, align 8, !noalias !5806
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef 8) #47, !noalias !5764, !inline_history !5774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !5806
  br label %common.ret

bb.y:                                             ; preds = %tailrecurse
  %i.ic = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !nonnull !4, !noundef !4 ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5813)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 272
  %.val.i = load i64, ptr %i.ie, align 8, !range !3, !alias.scope !5813, !noalias !5816, !noundef !4
  %i.if = getelementptr i8, ptr %i.id, i64 280
  %.val1.i = load ptr, ptr %i.if, align 8, !alias.scope !5813, !noalias !5816 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !5818
  store i64 %.val.i, ptr %i.ac, align 8, !noalias !5818
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 8) #47, !noalias !5813
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ], !noalias !5813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !5818
  %i.ig = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !noalias !5825, !nonnull !4, !noundef !4
  %i.ii = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !noalias !5825, !nonnull !4, !align !32, !noundef !4 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = load i64, ptr %i.ik, align 8, !range !90, !invariant.load !4, !noalias !5825
  %i.im = add nsw i64 %i.il, -1
  %i.in = and i64 %i.im, -16
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 48
  %i.ir = load ptr, ptr %i.iq, align 8, !invariant.load !4, !noalias !5825, !nonnull !4
  tail call void %i.ir(ptr noundef nonnull %i.ip, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @67) #47, !noalias !5813, !inline_history !5826
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5827)
  %i.is = getelementptr inbounds nuw i8, ptr %i.id, i64 184
  %i.it = load ptr, ptr %i.is, align 8, !alias.scope !5827, !noalias !5830, !nonnull !4, !noundef !4 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.id, i64 192
  %i.iv = load i64, ptr %i.iu, align 16, !alias.scope !5827, !noalias !5830, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !5832
  store i64 %i.iv, ptr %i.an, align 8, !noalias !5832
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef 8) #47, !noalias !5827, !inline_history !5837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !5832
  %.idx96 = mul nuw nsw i64 %i.iv, 112
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 %.idx96
  %i.ix = icmp eq i64 %i.iv, 0
  br i1 %i.ix, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i5, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.y, %.lr.ph80
  %.sroa.0.0.i.i479 = phi ptr [ %i.iy, %.lr.ph80 ], [ %i.it, %bb.y ] ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i479, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i.i479, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5827, !inline_history !5838
  %i.iz = icmp eq ptr %i.iy, %i.iw
  br i1 %i.iz, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i5, label %.lr.ph80

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i5: ; preds = %.lr.ph80, %bb.y
  %i.ja = getelementptr inbounds nuw i8, ptr %i.id, i64 208
  %i.jb = load ptr, ptr %i.ja, align 16, !alias.scope !5827, !noalias !5830, !nonnull !4, !noundef !4 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.id, i64 216
  %i.jd = load i64, ptr %i.jc, align 8, !alias.scope !5827, !noalias !5830, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !5839
  store i64 %i.jd, ptr %i.am, align 8, !noalias !5839
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef 8) #47, !noalias !5827, !inline_history !5837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !5839
  %.idx97 = mul nuw nsw i64 %i.jd, 112
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 %.idx97
  %i.jf = icmp eq i64 %i.jd, 0
  br i1 %i.jf, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit2.i, label %.lr.ph82

.lr.ph82:                                         ; preds = %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i5, %.lr.ph82
  %.sroa.0.0.i1.i681 = phi ptr [ %i.jg, %.lr.ph82 ], [ %i.jb, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i5 ] ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i681, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i1.i681, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5827, !inline_history !5838
  %i.jh = icmp eq ptr %i.jg, %i.je
  br i1 %i.jh, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit2.i, label %.lr.ph82

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit2.i: ; preds = %.lr.ph82, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i5
  %i.ji = getelementptr inbounds nuw i8, ptr %i.id, i64 232
  %i.jj = load ptr, ptr %i.ji, align 8, !alias.scope !5827, !noalias !5830, !nonnull !4, !noundef !4 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.id, i64 240
  %i.jl = load i64, ptr %i.jk, align 16, !alias.scope !5827, !noalias !5830, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !5844
  store i64 %i.jl, ptr %i.al, align 8, !noalias !5844
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef 8) #47, !noalias !5827, !inline_history !5837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !5844
  %.idx98 = shl nuw nsw i64 %i.jl, 7
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 %.idx98
  %i.jn = icmp eq i64 %i.jl, 0
  br i1 %i.jn, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i7, label %.lr.ph84

.lr.ph84:                                         ; preds = %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit2.i, %.lr.ph84
  %.sroa.0.0.i3.i83 = phi ptr [ %i.jo, %.lr.ph84 ], [ %i.jj, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit2.i ] ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.i83, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5849)
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %.sroa.0.0.i3.i83, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5827, !inline_history !5852
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.i83, i64 112
  %i.jq = load i8, ptr %i.jp, align 16, !range !5, !alias.scope !5849, !noalias !5853, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5855
  store i8 %i.jq, ptr %i.j, align 1, !noalias !5855
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 1) #47, !noalias !5827, !inline_history !5852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5855
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.i83, i64 113
  %i.js = load i8, ptr %i.jr, align 1, !range !5, !alias.scope !5849, !noalias !5853, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5858
  store i8 %i.js, ptr %i.i, align 1, !noalias !5858
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 1) #47, !noalias !5827, !inline_history !5852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5858
  %i.jt = icmp eq ptr %i.jo, %i.jm
  br i1 %i.jt, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i7, label %.lr.ph84

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i7: ; preds = %.lr.ph84, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5861)
  %i.ju = getelementptr inbounds nuw i8, ptr %i.id, i64 161
  %i.jv = load i8, ptr %i.ju, align 1, !range !137, !alias.scope !5864, !noalias !5865, !noundef !4
  %i.jw = zext nneg i8 %i.jv to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !5867
  store i64 %i.jw, ptr %i.ak, align 8, !noalias !5867
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef 8) #47, !noalias !5864, !inline_history !5837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !5867
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5872)
  %i.jx = load i128, ptr %i.id, align 16, !range !2859, !alias.scope !5875, !noalias !5876, !noundef !4 ; 2 uses
  %i.jy = trunc nuw nsw i128 %i.jx to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !5878
  store i64 %i.jy, ptr %i.aj, align 8, !noalias !5878
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef 8) #47, !noalias !5875, !inline_history !5837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !5878
  %i.jz = icmp eq i128 %i.jx, 1
  br i1 %i.jz, label %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i.i, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i7
  %i.ka = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  tail call void @_RINvXs2_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ka, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !5837
  br label %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i.i

_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.sink.split.i.i.i, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i7
  %i.kb = getelementptr inbounds nuw i8, ptr %i.id, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5883)
  %i.kc = load i128, ptr %i.kb, align 16, !range !2859, !alias.scope !5886, !noalias !5887, !noundef !4 ; 2 uses
  %i.kd = trunc nuw nsw i128 %i.kc to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !5889
  store i64 %i.kd, ptr %i.ai, align 8, !noalias !5889
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef 8) #47, !noalias !5883, !inline_history !5837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !5889
  %i.ke = icmp eq i128 %i.kc, 1
  br i1 %i.ke, label %_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i, label %.sink.split.i1.i.i

.sink.split.i1.i.i:                               ; preds = %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.id, i64 96
  tail call void @_RINvXs2_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.kf, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !5837
  br label %_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i

_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.sink.split.i1.i.i, %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.id, i64 160
  %i.kh = load i8, ptr %i.kg, align 16, !range !5, !alias.scope !5864, !noalias !5865, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !5894
  store i8 %i.kh, ptr %i.ah, align 1, !noalias !5894
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef 1) #47, !inline_history !5837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !5894
  %i.ki = getelementptr inbounds nuw i8, ptr %i.id, i64 248 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !alias.scope !5827, !noalias !5830, !align !2181, !noundef !4
  %i.kk = icmp ne ptr %i.kj, null                 ; 2 uses
  %i.kl = zext i1 %i.kk to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !5897
  store i64 %i.kl, ptr %i.ag, align 8, !noalias !5897
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef 8) #47, !inline_history !5837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !5897
  br i1 %i.kk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i
  %i.km = load ptr, ptr %i.ki, align 8, !alias.scope !5827, !noalias !5830, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.km, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !5837
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.id, i64 257 ; 2 uses
  %i.ko = load i8, ptr %i.kn, align 1, !range !137, !alias.scope !5827, !noalias !5830, !noundef !4
  %i.kp = icmp ne i8 %i.ko, 2                     ; 2 uses
  %i.kq = zext i1 %i.kp to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !5902
  store i64 %i.kq, ptr %i.af, align 8, !noalias !5902
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef 8) #47, !inline_history !5837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !5902
  br i1 %i.kp, label %bb.ab, label %_RINvXs2L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.ab:                                            ; preds = %bb.aa
  %.val.i8 = load i8, ptr %i.kn, align 1, !range !5, !alias.scope !5827, !noalias !5830, !noundef !4
  %i.kr = zext nneg i8 %.val.i8 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !5907
  store i64 %i.kr, ptr %i.ae, align 8, !noalias !5907
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef 8) #47, !inline_history !5837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !5907
  br label %_RINvXs2L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

_RINvXs2L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.aa, %bb.ab
  %i.ks = getelementptr inbounds nuw i8, ptr %i.id, i64 256
  %i.kt = load i8, ptr %i.ks, align 16, !range !5, !alias.scope !5827, !noalias !5830, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !5914
  store i8 %i.kt, ptr %i.ad, align 1, !noalias !5914
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef 1) #47, !inline_history !5837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !5914
  br label %common.ret

bb.ac:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5917)
  %i.ku = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.kv = load ptr, ptr %i.ku, align 8, !alias.scope !5917, !noalias !5920, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.kv, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !5917, !inline_history !5922
  %i.kw = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8, !alias.scope !5917, !noalias !5920, !nonnull !4, !noundef !4 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.kz = load i64, ptr %i.ky, align 8, !alias.scope !5917, !noalias !5920, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !5923
  store i64 %i.kz, ptr %i.aa, align 8, !noalias !5923
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 8) #47, !noalias !5917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !5923
  %.idx95 = mul nuw nsw i64 %i.kz, 112
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 %.idx95
  %i.lb = icmp eq i64 %i.kz, 0
  br i1 %i.lb, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit10, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.ac, %.lr.ph78
end_hunk_10
begin_hunk_11_@_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !10651, !noalias !10654, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !10682
  store i64 %i.dv, ptr %i.am, align 8, !noalias !10682
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef 8) #47, !noalias !10651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !10682
  br label %common.ret

bb.i:                                             ; preds = %tailrecurse
  %i.dw = getelementptr inbounds nuw i8, ptr %.tr, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10685)
  %i.dx = getelementptr inbounds nuw i8, ptr %.tr, i64 152
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !10685, !noalias !10688, !nonnull !4, !noundef !4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.dz, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10685, !inline_history !10690
  %i.ea = getelementptr inbounds nuw i8, ptr %.tr, i64 160
  %i.eb = load ptr, ptr %i.ea, align 16, !alias.scope !10685, !noalias !10688, !nonnull !4, !noundef !4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.ec, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10685, !inline_history !10690
  %i.ed = getelementptr inbounds nuw i8, ptr %.tr, i64 136
  %i.ee = load ptr, ptr %i.ed, align 8, !alias.scope !10685, !noalias !10688, !nonnull !4, !noundef !4 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.tr, i64 144
  %i.eg = load i64, ptr %i.ef, align 16, !alias.scope !10685, !noalias !10688, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !10691
  store i64 %i.eg, ptr %i.af, align 8, !noalias !10691
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef 8) #47, !noalias !10685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !10691
  %.idx83 = mul nuw nsw i64 %i.eg, 224
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.idx83
  %i.ei = icmp eq i64 %i.eg, 0
  br i1 %i.ei, label %_RINvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB4_ENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph70

.lr.ph70:                                         ; preds = %bb.i, %.lr.ph70
  %.sroa.0.0.i1369 = phi ptr [ %i.ej, %.lr.ph70 ], [ %i.ee, %bb.i ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1369, i64 224 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1369, i64 112
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(224) %.sroa.0.0.i1369, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10685, !inline_history !10696
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ek, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10685, !inline_history !10696
  %i.el = icmp eq ptr %i.ej, %i.eh
  br i1 %i.el, label %_RINvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB4_ENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph70

_RINvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB4_ENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit: ; preds = %.lr.ph70, %bb.i
  %i.em = load i64, ptr %i.dw, align 16, !range !4407, !alias.scope !10685, !noalias !10688, !noundef !4
  %i.en = icmp ne i64 %i.em, 37                   ; 2 uses
  %i.eo = zext i1 %i.en to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !10697
  store i64 %i.eo, ptr %i.ag, align 8, !noalias !10697
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef 8) #47, !noalias !10685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !10697
  br i1 %i.en, label %bb.j, label %_RINvXs2O_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_4JoinNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %_RINvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB4_ENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.dw, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !10690
  br label %_RINvXs2O_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_4JoinNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

_RINvXs2O_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_4JoinNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB4_ENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit, %bb.j
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr, i64 178
  %i.eq = load i8, ptr %i.ep, align 2, !range !5426, !alias.scope !10685, !noalias !10688, !noundef !4
  %i.er = zext nneg i8 %i.eq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !10702
  store i64 %i.er, ptr %i.ah, align 8, !noalias !10702
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !10702
  %i.es = getelementptr inbounds nuw i8, ptr %.tr, i64 176
  %i.et = load i8, ptr %i.es, align 16, !range !5, !alias.scope !10685, !noalias !10688, !noundef !4
  %i.eu = zext nneg i8 %i.et to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !10707
  store i64 %i.eu, ptr %i.ai, align 8, !noalias !10707
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !10707
  %i.ev = getelementptr inbounds nuw i8, ptr %.tr, i64 168
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !10685, !noalias !10688, !nonnull !4, !noundef !4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ex, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !10690
  %i.ey = getelementptr inbounds nuw i8, ptr %.tr, i64 177
  %i.ez = load i8, ptr %i.ey, align 1, !range !5, !alias.scope !10685, !noalias !10688, !noundef !4
  %i.fa = zext nneg i8 %i.ez to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !10712
  store i64 %i.fa, ptr %i.aj, align 8, !noalias !10712
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !10712
  br label %common.ret

bb.k:                                             ; preds = %tailrecurse
  %i.fb = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10717)
  %i.fc = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !10717, !noalias !10720, !nonnull !4, !noundef !4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.fe, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10717, !inline_history !10722
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10723)
  %i.ff = load i64, ptr %i.fb, align 8, !range !5285, !alias.scope !10723, !noalias !10726, !noundef !4 ; 3 uses
  %i.fg = icmp ne i64 %i.ff, -9223372036854775807
  tail call void @llvm.assume(i1 %i.fg)
  %i.fh = xor i64 %i.ff, -9223372036854775808
  %i.fi = icmp slt i64 %i.ff, 0
  %i.fj = select i1 %i.fi, i64 %i.fh, i64 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !10728
  store i64 %i.fj, ptr %i.ae, align 8, !noalias !10728
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef 8) #47, !noalias !10723, !inline_history !10733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !10728
  switch i64 %i.fj, label %bb.l [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.fk = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !10723, !noalias !10726, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !10734
  store i64 %i.fl, ptr %i.ad, align 8, !noalias !10734
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef 8) #47, !noalias !10723, !inline_history !10733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !10734
  br label %common.ret

bb.n:                                             ; preds = %bb.k
  %i.fm = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !10723, !noalias !10726, !nonnull !4, !noundef !4 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !10723, !noalias !10726, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !10737
  store i64 %i.fp, ptr %i.ac, align 8, !noalias !10737
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 8) #47, !noalias !10723, !inline_history !10733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !10737
  %.idx82 = mul nuw nsw i64 %i.fp, 112
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.idx82
  %i.fr = icmp eq i64 %i.fp, 0
  br i1 %i.fr, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.n, %.lr.ph68
  %.sroa.0.0.i.i1467 = phi ptr [ %i.fs, %.lr.ph68 ], [ %i.fn, %bb.n ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i1467, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i.i1467, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10723, !inline_history !10742
  %i.ft = icmp eq ptr %i.fs, %i.fq
  br i1 %i.ft, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i, label %.lr.ph68

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.lr.ph68, %bb.n
  %i.fu = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !10723, !noalias !10726, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !10743
  store i64 %i.fv, ptr %i.ab, align 8, !noalias !10743
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 8) #47, !noalias !10723, !inline_history !10733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !10743
  br label %common.ret

bb.o:                                             ; preds = %bb.k
  %i.fw = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !10723, !noalias !10726, !nonnull !4, !noundef !4 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.fz = load i64, ptr %i.fy, align 8, !alias.scope !10723, !noalias !10726, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !10746
  store i64 %i.fz, ptr %i.aa, align 8, !noalias !10746
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 8) #47, !noalias !10723, !inline_history !10733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10746
  %.idx81 = mul nuw nsw i64 %i.fz, 112
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.idx81
  %i.gb = icmp eq i64 %i.fz, 0
  br i1 %i.gb, label %common.ret, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.o, %.lr.ph66
  %.sroa.0.0.i1.i65 = phi ptr [ %i.gc, %.lr.ph66 ], [ %i.fx, %bb.o ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i65, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i1.i65, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10723, !inline_history !10742
  %i.gd = icmp eq ptr %i.gc, %i.ga
  br i1 %i.gd, label %common.ret, label %.lr.ph66

bb.p:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10751)
  %i.ge = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !alias.scope !10751, !noalias !10754, !nonnull !4, !noundef !4
  %i.gg = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.gh = load i64, ptr %i.gg, align 8, !alias.scope !10751, !noalias !10754, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !10756
  store i64 %i.gh, ptr %i.au, align 8, !noalias !10756
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef 8) #47, !noalias !10751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !10756
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.gf, i64 noundef %i.gh, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !10751
  %i.gi = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.gj = load ptr, ptr %i.gi, align 8, !alias.scope !10751, !noalias !10754, !nonnull !4, !noundef !4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gk, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !10751
  br label %common.ret

bb.q:                                             ; preds = %tailrecurse
  %i.gl = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @_RINvXsh_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.gl, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret

bb.r:                                             ; preds = %tailrecurse
  %i.gm = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %.val = load ptr, ptr %i.gm, align 8            ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val1 = load i8, ptr %i.gn, align 8, !range !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !10761
  store i8 %.val1, ptr %i.at, align 1, !noalias !10761
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.at, i64 noundef 1) #47
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !10761
  %i.go = getelementptr inbounds nuw i8, ptr %.val, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.go, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret

bb.s:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10766)
  %i.gp = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.gq = load ptr, ptr %i.gp, align 8, !alias.scope !10766, !noalias !10769, !nonnull !4, !noundef !4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.gr, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10766, !inline_history !5978
  %i.gs = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !alias.scope !10766, !noalias !10769, !nonnull !4, !noundef !4 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.gv = load i64, ptr %i.gu, align 8, !alias.scope !10766, !noalias !10769, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !10771
  store i64 %i.gv, ptr %i.as, align 8, !noalias !10771
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef 8) #47, !noalias !10766, !inline_history !5978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !10771
  %.idx = mul nuw nsw i64 %i.gv, 112
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx
  %i.gx = icmp eq i64 %i.gv, 0
  br i1 %i.gx, label %common.ret, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %.lr.ph
  %.sroa.0.0.i.i64 = phi ptr [ %i.gy, %.lr.ph ], [ %i.gt, %bb.s ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i64, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i.i64, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10766, !inline_history !10776
  %i.gz = icmp eq ptr %i.gy, %i.gw
  br i1 %i.gz, label %common.ret, label %.lr.ph

bb.t:                                             ; preds = %tailrecurse
  %i.ha = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10777)
  %i.hb = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.hc = load ptr, ptr %i.hb, align 8, !alias.scope !10777, !noalias !10780, !nonnull !4, !noundef !4
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.hd, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10777, !inline_history !10782
  tail call fastcc void @_RINvXsi_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ha, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !10782
  %i.he = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !10777, !noalias !10780, !nonnull !4, !noundef !4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.hg, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !10777, !inline_history !10782
  br label %common.ret

bb.u:                                             ; preds = %tailrecurse
  %i.hh = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10783)
  %i.hi = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.hj = load ptr, ptr %i.hi, align 16, !alias.scope !10783, !noalias !10786, !align !2181, !noundef !4 ; 2 uses
  %i.hk = icmp ne ptr %i.hj, null                 ; 2 uses
  %i.hl = zext i1 %i.hk to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !10788
  store i64 %i.hl, ptr %i.y, align 8, !noalias !10788
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 8) #47, !noalias !10783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !10788
  br i1 %i.hk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.hj, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10783, !inline_history !10793
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.hm = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !10783, !noalias !10786, !align !2181, !noundef !4 ; 2 uses
  %i.ho = icmp ne ptr %i.hn, null                 ; 2 uses
  %i.hp = zext i1 %i.ho to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !10794
  store i64 %i.hp, ptr %i.z, align 8, !noalias !10794
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 8) #47, !noalias !10783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10794
  br i1 %i.ho, label %bb.x, label %tailrecurse.backedge

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.hn, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10783, !inline_history !10793
  br label %tailrecurse.backedge

bb.y:                                             ; preds = %tailrecurse
  %i.hq = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10799)
  %i.hr = load i64, ptr %i.hq, align 8, !range !4752, !alias.scope !10799, !noalias !10802, !noundef !4 ; 3 uses
  %i.hs = icmp ne i64 %i.hr, -9223372036854775804
  tail call void @llvm.assume(i1 %i.hs)
  %i.ht = xor i64 %i.hr, -9223372036854775808
  %i.hu = icmp slt i64 %i.hr, 0
  %i.hv = select i1 %i.hu, i64 %i.ht, i64 4       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !10804
  store i64 %i.hv, ptr %i.x, align 8, !noalias !10804
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 8) #47, !noalias !10799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !10804
  switch i64 %i.hv, label %bb.z [
    i64 0, label %bb.aa
    i64 1, label %bb.ab
    i64 2, label %bb.ac
    i64 3, label %bb.ad
    i64 4, label %bb.ae
    i64 5, label %bb.af
    i64 6, label %bb.ag
  ]

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.hw = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val.i = load i8, ptr %i.hw, align 8, !range !5, !alias.scope !10799, !noalias !10802, !noundef !4
  %i.hx = getelementptr inbounds nuw i8, ptr %.tr, i64 17
  %.val1.i = load i8, ptr %i.hx, align 1, !alias.scope !10799, !noalias !10802
  tail call fastcc void @_RINvXsx_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_16TransactionStartNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(i8 %.val.i, i8 %.val1.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10799, !inline_history !10809
  br label %common.ret

bb.ab:                                            ; preds = %bb.y
  %i.hy = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val2.i = load i8, ptr %i.hy, align 8, !range !5, !alias.scope !10799, !noalias !10802, !noundef !4
  %i.hz = getelementptr inbounds nuw i8, ptr %.tr, i64 17
  %.val3.i = load i8, ptr %i.hz, align 1, !alias.scope !10799, !noalias !10802
  tail call fastcc void @_RINvXsE_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_14TransactionEndNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(i8 %.val2.i, i8 %.val3.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10799, !inline_history !10809
  br label %common.ret

bb.ac:                                            ; preds = %bb.y
  %i.ia = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call fastcc void @_RINvXsL_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_11SetVariableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ia, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !10809
  br label %common.ret

bb.ad:                                            ; preds = %bb.y
  %i.ib = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %.val4.i = load ptr, ptr %i.ib, align 8, !alias.scope !10799, !noalias !10802, !nonnull !4, !noundef !4
  %i.ic = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %.val5.i = load i64, ptr %i.ic, align 8, !alias.scope !10799, !noalias !10802, !noundef !4
  tail call fastcc void @_RINvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_13ResetVariableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr %.val4.i, i64 %.val5.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10799, !inline_history !10809
  br label %common.ret

bb.ae:                                            ; preds = %bb.y
  tail call fastcc void @_RINvXsZ_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_7PrepareNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.hq, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !10809
  br label %common.ret

bb.af:                                            ; preds = %bb.y
  %i.id = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call fastcc void @_RINvXs16_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB7_7ExecuteNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.id, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !10809
  br label %common.ret

bb.ag:                                            ; preds = %bb.y
  %i.ie = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %.val6.i = load ptr, ptr %i.ie, align 8, !alias.scope !10799, !noalias !10802, !nonnull !4, !noundef !4
  %i.if = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %.val7.i = load i64, ptr %i.if, align 8, !alias.scope !10799, !noalias !10802, !noundef !4
  tail call fastcc void @_RINvXs1d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB7_10DeallocateNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr %.val6.i, i64 %.val7.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10799, !inline_history !10809
  br label %common.ret

bb.ah:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10810)
  %i.ig = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8, !alias.scope !10810, !noalias !10813, !nonnull !4, !noundef !4
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ii, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !10810
  %i.ij = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !alias.scope !10810, !noalias !10813, !nonnull !4, !noundef !4
  %i.il = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.im = load i64, ptr %i.il, align 8, !alias.scope !10810, !noalias !10813, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !10815
  store i64 %i.im, ptr %i.ar, align 8, !noalias !10815
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef 8) #47, !noalias !10810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !10815
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ik, i64 noundef %i.im, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !10810
  br label %common.ret

bb.ai:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10820)
  %i.in = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.io = load i8, ptr %i.in, align 8, !range !5, !alias.scope !10820, !noalias !10823, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !10825
  store i8 %i.io, ptr %i.t, align 1, !noalias !10825
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef 1) #47, !noalias !10820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !10825
  %i.ip = getelementptr inbounds nuw i8, ptr %.tr, i64 50
  %i.iq = load i8, ptr %i.ip, align 2, !range !2683, !alias.scope !10820, !noalias !10823, !noundef !4
  %i.ir = zext nneg i8 %i.iq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !10828
  store i64 %i.ir, ptr %i.u, align 8, !noalias !10828
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 8) #47, !noalias !10820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !10828
  %i.is = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.it = load ptr, ptr %i.is, align 8, !alias.scope !10820, !noalias !10823, !nonnull !4, !noundef !4
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.iu, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !10820, !inline_history !10833
  %i.iv = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !alias.scope !10820, !noalias !10823, !nonnull !4, !noundef !4
  %i.ix = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.iy = load i64, ptr %i.ix, align 8, !alias.scope !10820, !noalias !10823, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !10834
  store i64 %i.iy, ptr %i.v, align 8, !noalias !10834
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef 8) #47, !noalias !10820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !10834
  tail call void @_RINvYNtNtCsjhHCjzi9uUI_17datafusion_common7display15StringifiedPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.iw, i64 noundef %i.iy, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !10820, !inline_history !10833
  %i.iz = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.ja = load ptr, ptr %i.iz, align 8, !alias.scope !10820, !noalias !10823, !nonnull !4, !noundef !4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.jb, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !10820, !inline_history !10833
  %i.jc = getelementptr inbounds nuw i8, ptr %.tr, i64 49
  %i.jd = load i8, ptr %i.jc, align 1, !range !5, !alias.scope !10820, !noalias !10823, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !10839
end_hunk_11
begin_hunk_12_@_RINvXsj_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_23StageLoadSelectItemKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = load i64, ptr %0, align 8, !range !13391, !noundef !4 ; 5 uses
  %i.j = icmp eq i64 %i.i, 74                     ; 2 uses
  %i.k = zext i1 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13392
  store i64 %i.k, ptr %i.h, align 8, !noalias !13392
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13392
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13397)
  %i.m = load i64, ptr %i.l, align 8, !range !133, !alias.scope !13397, !noalias !13400, !noundef !4
  %i.n = icmp ne i64 %i.m, -9223372036854775808   ; 2 uses
  %i.o = zext i1 %i.n to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13402
  store i64 %i.o, ptr %i.g, align 8, !noalias !13402
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8) #47, !noalias !13397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13402
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = load i32, ptr %i.p, align 8, !alias.scope !13397, !noalias !13400, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13407
  store i32 %i.q, ptr %i.f, align 4, !noalias !13407
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 4) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13407
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !133, !alias.scope !13397, !noalias !13400, !noundef !4
  %i.t = icmp ne i64 %i.s, -9223372036854775808   ; 2 uses
  %i.u = zext i1 %i.t to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13412
  store i64 %i.u, ptr %i.e, align 8, !noalias !13412
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13412
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !range !133, !alias.scope !13397, !noalias !13400, !noundef !4
  %i.x = icmp ne i64 %i.w, -9223372036854775808   ; 2 uses
  %i.y = zext i1 %i.x to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13417
  store i64 %i.y, ptr %i.d, align 8, !noalias !13417
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13417
  br i1 %i.x, label %bb.g, label %_RINvXst_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_19StageLoadSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %_RINvXst_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_19StageLoadSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %bb.a
  %i.z = icmp ne i64 %i.i, 72
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nsw i64 %i.i, -70
  %i.ab = icmp samesign ugt i64 %i.i, 69
  %i.ac = select i1 %i.ab, i64 %i.aa, i64 2       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13422
  store i64 %i.ac, ptr %i.a, align 8, !noalias !13422
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #47, !noalias !13429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13422
  switch i64 %i.ac, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.o
  ]

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !13430
  br label %_RINvXst_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_19StageLoadSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.k:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !13430
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !13430
  br label %_RINvXst_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_19StageLoadSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.l:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13431)
  %i.ah = icmp ne i64 %i.i, 69                    ; 2 uses
  %i.ai = zext i1 %i.ah to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13434
  store i64 %i.ai, ptr %i.c, align 8, !noalias !13434
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #47, !noalias !13431, !inline_history !13440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13434
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(744) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !13440
  br label %_RINvXs3T_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.n:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.aj, align 8, !alias.scope !13431, !noalias !13441, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load i64, ptr %i.ak, align 8, !alias.scope !13431, !noalias !13441, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13442
  store i64 %.val1.i, ptr %i.b, align 8, !noalias !13442
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #47, !noalias !13431, !inline_history !13440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13442
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !13431, !inline_history !13440
  br label %_RINvXs3T_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

_RINvXs3T_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.m, %bb.n
  tail call fastcc void @_RINvXs4n_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_25WildcardAdditionalOptionsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !13430
  br label %_RINvXst_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_19StageLoadSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

bb.o:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvXs4n_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_25WildcardAdditionalOptionsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !13430
  br label %_RINvXst_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_19StageLoadSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit

_RINvXst_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_19StageLoadSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.o, %_RINvXs3T_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_31SelectItemQualifiedWildcardKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit, %bb.k, %bb.j, %bb.g, %bb.f
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RINvXsjv_NtCs4lawaffTVVK_9sqlparser3astNtB7_17AnalyzeFormatKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(i8 %.0.val, i8 %.1.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = trunc nuw i8 %.0.val to i1
  %i.e = zext nneg i8 %.0.val to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13451
  store i64 %i.e, ptr %i.c, align 8, !noalias !13451
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13451
  %i.f = zext nneg i8 %.1.val to i64              ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13456
  store i64 %i.f, ptr %i.b, align 8, !noalias !13456
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13456
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13461
  store i64 %i.f, ptr %i.a, align 8, !noalias !13461
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13461
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsk_NtNtCs4tdlwR1I4n2_7parquet4file8metadataNtB6_8KeyValueNtNtBa_14parquet_thrift11WriteThrift12write_thriftQQINtNtB8_6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.9 = alloca [22 x i8], align 2            ; 3 uses
  %.sroa.10 = alloca [22 x i8], align 2           ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val38 = load ptr, ptr %i.e, align 8           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val39 = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13466
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE17write_field_beginCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 8, i16 noundef 1, i16 noundef 0), !noalias !13470
  %i.g = load i64, ptr %i.d, align 8, !range !1777, !noalias !13466, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.g, 8
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.0.copyload = load i16, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !13471
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.10, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.10.0..sroa_idx, i64 22, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13466
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val38) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13466
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE11write_bytesCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val38, i64 noundef %.val39), !noalias !13470
  %i.h = load i64, ptr %i.c, align 8, !range !1777, !noalias !13466, !noundef !4 ; 2 uses
  %.not1.i = icmp eq i64 %i.h, 8
  br i1 %.not1.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.7.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.0.copyload45 = load i16, ptr %.sroa.7.0..sroa_idx44, align 8, !noalias !13471
  %.sroa.10.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.10, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.10.0..sroa_idx46, i64 22, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13466
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.7.0.ph = phi i16 [ %.sroa.7.0.copyload, %bb.b ], [ %.sroa.7.0.copyload45, %bb.d ]
  %.sroa.0.0.ph = phi i64 [ %i.g, %bb.b ], [ %i.h, %bb.d ]
  store i64 %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.7.0.ph, ptr %.sroa.224.0..sroa_idx, align 8
  %.sroa.325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.325.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.10, i64 22, i1 false)
  br label %bb.n

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13466
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !range !133, !noundef !4
  %.not35 = icmp eq i64 %i.j, -9223372036854775808
  br i1 %.not35, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val37 = load i64, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13472
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE17write_field_beginCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 8, i16 noundef 2, i16 noundef 1), !noalias !13476
  %i.m = load i64, ptr %i.b, align 8, !range !1777, !noalias !13472, !noundef !4 ; 2 uses
  %.not.i40 = icmp eq i64 %i.m, 8
  br i1 %.not.i40, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.749.0.copyload = load i16, ptr %.sroa.749.0..sroa_idx, align 8, !noalias !13477
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.9, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.9.0..sroa_idx, i64 22, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13472
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13472
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE11write_bytesCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val37), !noalias !13476
  %i.n = load i64, ptr %i.a, align 8, !range !1777, !noalias !13472, !noundef !4 ; 2 uses
  %.not1.i41 = icmp eq i64 %i.n, 8
  br i1 %.not1.i41, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.749.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.749.0.copyload51 = load i16, ptr %.sroa.749.0..sroa_idx50, align 8, !noalias !13477
  %.sroa.9.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.9, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.9.0..sroa_idx52, i64 22, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13472
  br label %bb.l

bb.k:                                             ; preds = %bb.m, %bb.f
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 0)
  br label %bb.n

bb.l:                                             ; preds = %bb.j, %bb.h
  %.sroa.749.0.ph = phi i16 [ %.sroa.749.0.copyload, %bb.h ], [ %.sroa.749.0.copyload51, %bb.j ]
  %.sroa.047.0.ph = phi i64 [ %i.m, %bb.h ], [ %i.n, %bb.j ]
  store i64 %.sroa.047.0.ph, ptr %0, align 8
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.749.0.ph, ptr %.sroa.233.0..sroa_idx, align 8
  %.sroa.334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.334.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.9, i64 22, i1 false)
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13472
  br label %bb.k

bb.n:                                             ; preds = %bb.e, %bb.l, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXsl_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_23StageLoadSelectItemKindNtNtBa_7visitor8VisitMut5visitINtB1B_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2u_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(744) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13391, !noundef !4
  %i.b = icmp eq i64 %i.a, 74
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call noundef zeroext i1 @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.d, label %_RINvXsv_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_19StageLoadSelectItemNtNtBa_7visitor8VisitMut5visitINtB1x_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = tail call noundef zeroext i1 @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.f, label %_RINvXsv_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_19StageLoadSelectItemNtNtBa_7visitor8VisitMut5visitINtB1x_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake.exit.thread, label %_RINvXsv_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_19StageLoadSelectItemNtNtBa_7visitor8VisitMut5visitINtB1x_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake.exit

_RINvXsv_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_19StageLoadSelectItemNtNtBa_7visitor8VisitMut5visitINtB1x_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = tail call noundef zeroext i1 @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.h, label %_RINvXsv_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_19StageLoadSelectItemNtNtBa_7visitor8VisitMut5visitINtB1x_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake.exit.thread, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RINvXs45_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_10SelectItemNtNtB9_7visitor8VisitMut5visitINtB12_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1V_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(744) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.i, label %_RINvXsv_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_19StageLoadSelectItemNtNtBa_7visitor8VisitMut5visitINtB1x_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake.exit.thread, label %bb.e

bb.e:                                             ; preds = %_RINvXsv_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_19StageLoadSelectItemNtNtBa_7visitor8VisitMut5visitINtB1x_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake.exit, %bb.d
  br label %_RINvXsv_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_19StageLoadSelectItemNtNtBa_7visitor8VisitMut5visitINtB1x_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake.exit.thread

_RINvXsv_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_19StageLoadSelectItemNtNtBa_7visitor8VisitMut5visitINtB1x_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.b, %bb.c, %_RINvXsv_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_19StageLoadSelectItemNtNtBa_7visitor8VisitMut5visitINtB1x_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake.exit, %bb.d, %bb.e
  %.sroa.0.0 = phi i1 [ true, %bb.d ], [ false, %bb.e ], [ true, %_RINvXsv_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_19StageLoadSelectItemNtNtBa_7visitor8VisitMut5visitINtB1x_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake.exit ], [ true, %bb.c ], [ true, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsm_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerNtB6_4ExprE14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implB1X_NCINvNtB8_5utils18find_exprs_in_exprNCINvB3g_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB4m_5slice4iter4IterB1X_EINtNtB4m_6option4IterB1X_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !noalias !13478
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQQNCNCNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB2g_5utils18find_exprs_in_exprNCINvB30_17find_window_exprsINtNtNtNtBb_4iter8adapters5chain5ChainINtNtNtBb_5slice4iter4IterB2c_EINtNtBb_6option4IterB2c_EEE0E0E000INtB7_5FnMutTRB2c_EE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsm_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerNtB6_4ExprE14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implB1X_NCINvNtB8_5utils18find_exprs_in_exprNCINvB3g_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB4p_5slice4iter4IterBI_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5G_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !noalias !13483
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQQNCNCNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB2g_5utils18find_exprs_in_exprNCINvB30_20find_aggregate_exprsINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtB2e_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5i_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000INtB7_5FnMutTRB2c_EE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsm_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerNtB6_4ExprE14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implB1X_NCINvNtB8_5utils18find_exprs_in_exprNCINvB3g_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB4h_INtNtNtB4p_5slice4iter4IterB1X_EINtNtB4p_6option4IterB1X_EEB5J_EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !noalias !13488
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQQNCNCNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB2g_5utils18find_exprs_in_exprNCINvB30_20find_aggregate_exprsINtNtNtNtBb_4iter8adapters5chain5ChainIB42_INtNtNtBb_5slice4iter4IterB2c_EINtNtBb_6option4IterB2c_EEB5d_EE0E0E000INtB7_5FnMutTRB2c_EE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsm_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerNtB6_4ExprE14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implB1X_NCINvNtB8_5utils18find_exprs_in_exprNCINvB3g_20find_aggregate_exprsRSB1X_E0E0E000ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !noalias !13493
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQQNCNCNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB2g_5utils18find_exprs_in_exprNCINvB30_20find_aggregate_exprsRSB2c_E0E0E000INtB7_5FnMutTRB2c_EE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsm_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerNtB6_4ExprE14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implB1X_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3i_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !noalias !13498
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQQNCNCNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB32_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000INtB7_5FnMutTRB2c_EE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXsnE_NtCs4lawaffTVVK_9sqlparser3astNtB7_21CreateServerStatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.i, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13503
  store i64 %.val3, ptr %i.g, align 8, !noalias !13503
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13503
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2, i64 noundef %.val3, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = load i8, ptr %i.j, align 8, !range !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13512
  store i8 %i.k, ptr %i.f, align 1, !noalias !13512
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13512
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !133, !noundef !4
  %i.n = icmp ne i64 %i.m, -9223372036854775808   ; 2 uses
  %i.o = zext i1 %i.n to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13515
  store i64 %i.o, ptr %i.e, align 8, !noalias !13515
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13515
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !range !133, !noundef !4
  %i.r = icmp ne i64 %i.q, -9223372036854775808   ; 2 uses
  %i.s = zext i1 %i.r to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13520
  store i64 %i.s, ptr %i.d, align 8, !noalias !13520
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13520
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1 = load i64, ptr %i.u, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13525
  store i64 %.val1, ptr %i.c, align 8, !noalias !13525
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13525
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.w = load i64, ptr %i.v, align 8, !range !133, !noundef !4
  %i.x = icmp ne i64 %i.w, -9223372036854775808   ; 2 uses
  %i.y = zext i1 %i.x to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13534
  store i64 %i.y, ptr %i.b, align 8, !noalias !13534
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13534
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184
end_hunk_12
begin_hunk_13_@_RNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvMsl_NtCs7p2uQeJxui2_9deltalake5errorNtB44_17CommitFailedError15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B46_:bb.a
          cleanup
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !14815)
  %i.l = load i64, ptr %i.c, align 8, !range !3, !alias.scope !14815, !noalias !14818, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.d, label %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsl_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_17CommitFailedError15type_object_raw0BS_E0E0B3i_.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14820
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.n, i64 56, i1 false), !noalias !14818
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 40, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @155, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #42
          to label %bb.f unwind label %bb.e, !noalias !14821

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #43
          to label %bb.h unwind label %bb.g, !noalias !14821

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !14821
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %bb.h ], [ %i.x, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.o, %bb.e ]
  call void @_Py_DecRef(ptr noundef nonnull %i.j) #41, !noalias !14812
  br label %common.resume

_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsl_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_17CommitFailedError15type_object_raw0BS_E0E0B3i_.exit: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !14815, !noalias !14818, !nonnull !4, !noundef !4 ; 2 uses
  call void @_Py_DecRef(ptr noundef nonnull %i.j) #41, !noalias !14812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14812
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !align !32, !noundef !4 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !noundef !4 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !14822, !noundef !4
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.i:                                             ; preds = %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsl_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_17CommitFailedError15type_object_raw0BS_E0E0B3i_.exit
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types10typeobject6PyTypeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge unwind label %bb.j

._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge: ; preds = %bb.i
  %.pre = load ptr, ptr %i.t, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.t, align 8, !noundef !4
  store ptr %i.r, ptr %i.y, align 8
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge, %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsl_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_17CommitFailedError15type_object_raw0BS_E0E0B3i_.exit
  %i.z = phi ptr [ %.pre, %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge ], [ %i.u, %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsl_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_17CommitFailedError15type_object_raw0BS_E0E0B3i_.exit ]
  store ptr %i.r, ptr %i.z, align 8
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvMsr_NtCs7p2uQeJxui2_9deltalake5errorNtB44_19SchemaMismatchError15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B46_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !align !32, !noundef !4 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14825
  store i64 %.sroa.5.sroa.0.0.copyload, ptr %i.d, align 8, !noalias !14825
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.5.sroa.4.0.copyload, ptr %i.f, align 8, !noalias !14825
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d), !noalias !14825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14825
  %i.g = call { ptr, i64 } @_RNvCs8qYbsySkclr_8pyo3_ffi32__cstr_from_utf8_with_nul_checked(ptr noalias noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 30), !noalias !14825 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14825
  %i.j = call noundef ptr @_RNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB5_10DeltaError15type_object_raw(), !noalias !14825 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call void @_Py_IncRef(ptr noundef nonnull %i.j) #41, !noalias !14825
  store ptr %i.j, ptr %i.b, align 8, !noalias !14825
  invoke void @_RNvMs1_NtCsgbCypRs12E4_4pyo33errNtB5_5PyErr8new_type(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.i, ptr noalias noundef readonly captures(address, read_provenance) null, i64 undef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.b, ptr noundef null)
          to label %bb.c unwind label %bb.b, !noalias !14825

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !14828)
  %i.l = load i64, ptr %i.c, align 8, !range !3, !alias.scope !14828, !noalias !14831, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.d, label %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsr_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_19SchemaMismatchError15type_object_raw0BS_E0E0B3i_.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14833
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.n, i64 56, i1 false), !noalias !14831
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 40, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @155, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #42
          to label %bb.f unwind label %bb.e, !noalias !14834

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #43
          to label %bb.h unwind label %bb.g, !noalias !14834

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !14834
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %bb.h ], [ %i.x, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.o, %bb.e ]
  call void @_Py_DecRef(ptr noundef nonnull %i.j) #41, !noalias !14825
  br label %common.resume

_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsr_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_19SchemaMismatchError15type_object_raw0BS_E0E0B3i_.exit: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !14828, !noalias !14831, !nonnull !4, !noundef !4 ; 2 uses
  call void @_Py_DecRef(ptr noundef nonnull %i.j) #41, !noalias !14825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14825
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !align !32, !noundef !4 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !noundef !4 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !14835, !noundef !4
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.i:                                             ; preds = %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsr_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_19SchemaMismatchError15type_object_raw0BS_E0E0B3i_.exit
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types10typeobject6PyTypeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge unwind label %bb.j

._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge: ; preds = %bb.i
  %.pre = load ptr, ptr %i.t, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.t, align 8, !noundef !4
  store ptr %i.r, ptr %i.y, align 8
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge, %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsr_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_19SchemaMismatchError15type_object_raw0BS_E0E0B3i_.exit
  %i.z = phi ptr [ %.pre, %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types10typeobject6PyTypeEEECs7p2uQeJxui2_9deltalake.exit_crit_edge ], [ %i.u, %_RNCINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBX_5types10typeobject6PyTypeEE11get_or_initNCINvNtNtBX_4sync9once_lock26init_once_cell_py_attachedNCNvMsr_NtCs7p2uQeJxui2_9deltalake5errorNtB3g_19SchemaMismatchError15type_object_raw0BS_E0E0B3i_.exit ]
  store ptr %i.r, ptr %i.z, align 8
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBW_5types6string8PyStringEE10initializeNCINvMs4_NtBa_4syncINtB2j_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvMs7_B37_NtB37_8Interned3get0BR_E0E0NtNvMs4_B2j_IB2u_pE11get_or_init4VoidE0Cs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !32, !noundef !4 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.sroa.5.0.copyload = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.5.sroa.6.0.copyload = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14838
  store i64 %.sroa.5.sroa.5.0.copyload, ptr %i.a, align 8, !noalias !14838
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.sroa.6.0.copyload, ptr %i.c, align 8, !noalias !14838
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !14838
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14838
  %i.d = call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString6intern(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload, i64 noundef %.sroa.5.sroa.4.0.copyload), !noalias !14838 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !32, !noundef !4 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !4 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !14843, !noundef !4
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types6string8PyStringEEECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types6string8PyStringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types6string8PyStringEEECs7p2uQeJxui2_9deltalake.exit_crit_edge unwind label %bb.c

._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types6string8PyStringEEECs7p2uQeJxui2_9deltalake.exit_crit_edge: ; preds = %bb.b
  %.pre = load ptr, ptr %i.f, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types6string8PyStringEEECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.f, align 8, !noundef !4
  store ptr %i.d, ptr %i.k, align 8
  resume { ptr, i32 } %i.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types6string8PyStringEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types6string8PyStringEEECs7p2uQeJxui2_9deltalake.exit_crit_edge, %bb.a
  %i.l = phi ptr [ %.pre, %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types6string8PyStringEEECs7p2uQeJxui2_9deltalake.exit_crit_edge ], [ %i.g, %bb.a ]
  store ptr %i.d, ptr %i.l, align 8
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB9_13RawDeltaTable5write0s_0B9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1697) 16, i64 noundef range(i64 8, 17) 8) #41 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #42
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store ptr @84, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 39, ptr %i.c, align 8
  store i64 1, ptr %0, align 8
  %.sroa.03.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.03.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.03.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.03.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @85, ptr %.sroa.03.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 3, ptr %.sroa.54.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs_NtCsjyY8HP3IvQ6_12object_store6uploadINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB6_15MultipartUploadEL_EB1h_8complete0Cs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 2 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !2683, !noundef !4
  switch i8 %i.d, label %default.unreachable9 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !align !32, !noundef !4 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !align !32, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !4, !nonnull !4
  %i.k = invoke { ptr, ptr } %i.j(ptr noundef nonnull %i.f)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.b
  %i.m = extractvalue { ptr, ptr } %i.k, 0
  %i.n = extractvalue { ptr, ptr } %i.k, 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.n, ptr %i.p, align 8
  br label %bb.g

.body:                                            ; preds = %bb.p, %bb.o, %bb.h, %bb.c
  %.pn2 = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.r, %bb.h ], [ %i.ac, %bb.o ], [ %i.ac, %bb.p ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn2

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #45
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #45
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %1, i64 16
  %.val4 = load ptr, ptr %i.s, align 8, !nonnull !4, !align !32, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val, ptr nonnull %.val4) #43
          to label %.body unwind label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.b, align 8, !range !14846, !noundef !4
  %i.u = icmp eq i64 %i.t, -9223372036854775789
  br i1 %i.u, label %bb.j, label %bb.k

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, %bb.j
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit ], [ 3, %bb.j ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775789, ptr %0, align 8
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val5 = load ptr, ptr %i.q, align 8            ; 5 uses
  %i.v = getelementptr i8, ptr %1, i64 16
  %.val6 = load ptr, ptr %i.v, align 8, !nonnull !4, !align !32, !noundef !4 ; 5 uses
  %i.w = load ptr, ptr %.val6, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void %i.w(ptr noundef nonnull %.val5)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !90, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !191, !invariant.load !4 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !90, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #41
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  br label %common.ret

bb.q:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtBb_5types17GenericStringTypexEENtB9_5Array9into_data6vtableCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull captures(address) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataINtNtCsbvkFyIu7lgC_4core7convert4FromINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypexEEE4fromCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtBf_10exceptions12PyValueErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14847
  %i.c = load ptr, ptr @PyExc_ValueError, align 8, !noalias !14847, !nonnull !4, !noundef !4 ; 3 uses
  tail call void @_Py_IncRef(ptr noundef nonnull %i.c) #41, !noalias !14847
  store ptr %i.c, ptr %i.b, align 8, !noalias !14847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14847
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.d = invoke noundef nonnull ptr @_RNvXs4_NtNtNtCsgbCypRs12E4_4pyo311conversions3std6stringNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtBb_10conversion12IntoPyObject13into_pyobject(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions12PyValueErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.b, !noalias !14847

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %bb.d unwind label %bb.c, !noalias !14847

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !14847
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions12PyValueErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14847
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %i.d, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtBf_10exceptions12PyValueErrorReE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14850
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !noalias !14850, !nonnull !4, !noundef !4 ; 3 uses
  tail call void @_Py_IncRef(ptr noundef nonnull %i.e) #41, !noalias !14850
  store ptr %i.e, ptr %i.a, align 8, !noalias !14850
  %i.f = invoke noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d)
          to label %_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions12PyValueErrorReE0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.g

_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions12PyValueErrorReE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14850
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.f, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtBf_10exceptions13PySystemErrorReE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14853
  %i.e = load ptr, ptr @PyExc_SystemError, align 8, !noalias !14853, !nonnull !4, !noundef !4 ; 3 uses
  tail call void @_Py_IncRef(ptr noundef nonnull %i.e) #41, !noalias !14853
  store ptr %i.e, ptr %i.a, align 8, !noalias !14853
  %i.f = invoke noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d)
          to label %_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions13PySystemErrorReE0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.g

_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions13PySystemErrorReE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14853
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.f, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtBf_10exceptions14PyRuntimeErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14856
  %i.c = load ptr, ptr @PyExc_RuntimeError, align 8, !noalias !14856, !nonnull !4, !noundef !4 ; 3 uses
  tail call void @_Py_IncRef(ptr noundef nonnull %i.c) #41, !noalias !14856
  store ptr %i.c, ptr %i.b, align 8, !noalias !14856
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.d = invoke noundef nonnull ptr @_RNvXs4_NtNtNtCsgbCypRs12E4_4pyo311conversions3std6stringNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtBb_10conversion12IntoPyObject13into_pyobject(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions14PyRuntimeErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.b, !noalias !14856

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %bb.d unwind label %bb.c, !noalias !14856

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !14856
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions14PyRuntimeErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14856
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %i.d, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtBf_10exceptions9PyIOErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14859
  %i.c = load ptr, ptr @PyExc_IOError, align 8, !noalias !14859, !nonnull !4, !noundef !4 ; 3 uses
  tail call void @_Py_IncRef(ptr noundef nonnull %i.c) #41, !noalias !14859
  store ptr %i.c, ptr %i.b, align 8, !noalias !14859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.d = invoke noundef nonnull ptr @_RNvXs4_NtNtNtCsgbCypRs12E4_4pyo311conversions3std6stringNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtBb_10conversion12IntoPyObject13into_pyobject(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions9PyIOErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.b, !noalias !14859

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %bb.d unwind label %bb.c, !noalias !14859

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !14859
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions9PyIOErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14859
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %i.d, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtCs7p2uQeJxui2_9deltalake5error18DeltaProtocolErrorReE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableBV_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14862
  %i.e = tail call noundef ptr @_RNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB5_18DeltaProtocolError15type_object_raw(), !noalias !14862 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  tail call void @_Py_IncRef(ptr noundef nonnull %i.e) #41, !noalias !14862
  store ptr %i.e, ptr %i.a, align 8, !noalias !14862
  %i.f = invoke noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d)
          to label %_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtCs7p2uQeJxui2_9deltalake5error18DeltaProtocolErrorReE0BQ_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.g

_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtCs7p2uQeJxui2_9deltalake5error18DeltaProtocolErrorReE0BQ_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14862
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.f, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtBd_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB4b_10DeltaError15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_once6vtableB4d_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB44_10DeltaError15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B46_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %0) ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtBd_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvMs9_NtCs7p2uQeJxui2_9deltalake5errorNtB4b_18TableNotFoundError15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_once6vtableB4d_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvMs9_NtCs7p2uQeJxui2_9deltalake5errorNtB44_18TableNotFoundError15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B46_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %0) ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtBd_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB4b_18DeltaProtocolError15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_once6vtableB4d_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB44_18DeltaProtocolError15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B46_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %0) ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtBd_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvMsl_NtCs7p2uQeJxui2_9deltalake5errorNtB4b_17CommitFailedError15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_once6vtableB4d_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvMsl_NtCs7p2uQeJxui2_9deltalake5errorNtB44_17CommitFailedError15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B46_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %0) ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtBd_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvMsr_NtCs7p2uQeJxui2_9deltalake5errorNtB4b_19SchemaMismatchError15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_once6vtableB4d_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtB8_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvMsr_NtCs7p2uQeJxui2_9deltalake5errorNtB44_19SchemaMismatchError15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B46_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %0) ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtBd_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB11_5types6string8PyStringEE10initializeNCINvMs4_NtBf_4syncINtB2p_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvMs7_B3d_NtB3d_8Interned3get0BW_E0E0NtNvMs4_B2p_IB2A_pE11get_or_init4VoidE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !alias.scope !14865, !nonnull !4, !align !32, !noundef !4 ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !14868 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.sroa.5.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14868
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.sroa.5.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14868
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %.sroa.5.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14868
  store ptr null, ptr %.val, align 8, !noalias !14868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14871
  store i64 %.sroa.5.sroa.5.0.copyload.i.i, ptr %i.a, align 8, !noalias !14871
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.sroa.6.0.copyload.i.i, ptr %i.c, align 8, !noalias !14871
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !14871
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14871
  %i.d = call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString6intern(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload.i.i, i64 noundef %.sroa.5.sroa.4.0.copyload.i.i), !noalias !14871 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.e = load ptr, ptr %.val1, align 8, !noalias !14868, !noundef !4 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !14876, !noalias !14868, !noundef !4
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RNvYNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtBb_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBZ_5types6string8PyStringEE10initializeNCINvMs4_NtBd_4syncINtB2m_8OnceCellBU_E11get_or_initNCINvNtNtBZ_4sync9once_lock26init_once_cell_py_attachedNCNvMs7_B3a_NtB3a_8Interned3get0BU_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceCs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types6string8PyStringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types6string8PyStringEEECs7p2uQeJxui2_9deltalake.exit_crit_edge.i.i unwind label %bb.c, !noalias !14868

._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types6string8PyStringEEECs7p2uQeJxui2_9deltalake.exit_crit_edge.i.i: ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %.val1, align 8, !noalias !14868
  br label %_RNvYNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtBb_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBZ_5types6string8PyStringEE10initializeNCINvMs4_NtBd_4syncINtB2m_8OnceCellBU_E11get_or_initNCINvNtNtBZ_4sync9once_lock26init_once_cell_py_attachedNCNvMs7_B3a_NtB3a_8Interned3get0BU_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceCs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %.val1, align 8, !noalias !14868, !noundef !4
  store ptr %i.d, ptr %i.i, align 8, !noalias !14868
  resume { ptr, i32 } %i.h

_RNvYNCINvMs2_NtCshEQ9D8FWP38_9once_cell3impINtBb_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBZ_5types6string8PyStringEE10initializeNCINvMs4_NtBd_4syncINtB2m_8OnceCellBU_E11get_or_initNCINvNtNtBZ_4sync9once_lock26init_once_cell_py_attachedNCNvMs7_B3a_NtB3a_8Interned3get0BU_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types6string8PyStringEEECs7p2uQeJxui2_9deltalake.exit_crit_edge.i.i
  %i.j = phi ptr [ %.pre.i.i, %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtB17_5types6string8PyStringEEECs7p2uQeJxui2_9deltalake.exit_crit_edge.i.i ], [ %i.e, %bb.a ]
  store ptr %i.d, ptr %i.j, align 8, !noalias !14868
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE10bind_innerCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %1, ptr %i.e, align 8
  store ptr %2, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !range !14879, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noalias !14880, !nonnull !4, !align !32, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load i64, ptr %i.k, align 8, !noalias !14880, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !range !14879, !noalias !14880, !noundef !4 ; 3 uses
  %i.o = load ptr, ptr %0, align 8, !noalias !14880, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !14880, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i64, ptr %i.r, align 8, !noalias !14880, !noundef !4
  %i.t = and i64 %i.s, %i.n                       ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.q
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.t ; 10 uses
  %i.w = cmpxchg weak ptr %i.v, i8 0, i8 1 acquire monotonic, align 1, !noalias !14880
  %i.x = extractvalue { i8, i1 } %i.w, 1
  br i1 %i.x, label %bb.e, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.y = invoke noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.v, i64 undef, i32 noundef 1000000000)
          to label %bb.e unwind label %bb.c       ; 0 uses

.body:                                            ; preds = %bb.d, %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECs7p2uQeJxui2_9deltalake.exit.i, %bb.c
  %.pn = phi { ptr, i32 } [ %i.z, %bb.c ], [ %i.aa, %bb.d ], [ %i.au, %bb.m ], [ %i.au, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECs7p2uQeJxui2_9deltalake.exit.i ]
  %.sroa.02.0 = phi i1 [ true, %bb.c ], [ %.sroa.02.1, %bb.d ], [ false, %bb.m ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECs7p2uQeJxui2_9deltalake.exit.i ]
  invoke void @_RNvXsd_NtNtCskQDtHcQtBkN_5tokio7runtime4taskINtB5_4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.q, %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util12sharded_list10ShardGuardINtNtNtBN_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB1H_9scheduler14current_thread6HandleEENtNtB1F_4core6HeaderEECs7p2uQeJxui2_9deltalake.exit
  %.sroa.02.1 = phi i1 [ false, %bb.l ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util12sharded_list10ShardGuardINtNtNtBN_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB1H_9scheduler14current_thread6HandleEENtNtB1F_4core6HeaderEECs7p2uQeJxui2_9deltalake.exit ], [ true, %bb.q ]
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load atomic i8, ptr %i.ad acquire, align 8
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.v, ptr %i.c, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ab, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ac, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i64 %i.n, ptr %.sroa.9.0..sroa_idx, align 8
  %i.ag = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ag, ptr %i.b, align 8, !noalias !14883
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !14883, !nonnull !4, !align !32, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !14883, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !range !14879, !noalias !14883, !noundef !4 ; 2 uses
  store i64 %i.am, ptr %i.a, align 8, !noalias !14883
  %i.an = icmp eq i64 %i.am, %i.n
  br i1 %i.an, label %bb.i, label %bb.h, !prof !31

bb.g:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECs7p2uQeJxui2_9deltalake.exit.i

bb.h:                                             ; preds = %bb.f
  invoke void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.9.0..sroa_idx, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #42
          to label %bb.j unwind label %bb.n

bb.i:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  invoke void @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtNtB9_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB18_9scheduler14current_thread6HandleEENtNtB16_4core6HeaderE10push_frontCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull %i.ag)
          to label %bb.k unwind label %bb.g, !noalias !14883

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aq = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8, !noalias !14883 ; 0 uses
  %i.ar = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !noalias !14883 ; 0 uses
  %i.as = cmpxchg ptr %i.v, i8 1, i8 0 release monotonic, align 1, !noalias !14883
  %i.at = extractvalue { i8, i1 } %i.as, 1
  br i1 %i.at, label %bb.r, label %bb.l, !prof !31

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.v, i1 noundef zeroext false)
          to label %bb.r unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.n, %bb.g
  %i.au = phi { ptr, i32 } [ %i.ao, %bb.g ], [ %i.ax, %bb.n ] ; 2 uses
  %i.av = cmpxchg ptr %i.v, i8 1, i8 0 release monotonic, align 1
  %i.aw = extractvalue { i8, i1 } %i.av, 1
  br i1 %i.aw, label %.body, label %bb.m, !prof !31

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.v, i1 noundef zeroext false)
          to label %.body unwind label %bb.o

bb.n:                                             ; preds = %bb.h
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsd_NtNtCskQDtHcQtBkN_5tokio7runtime4taskINtB5_4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.p:                                             ; preds = %bb.e
  %i.az = cmpxchg ptr %i.v, i8 1, i8 0 release monotonic, align 1
  %i.ba = extractvalue { i8, i1 } %i.az, 1
  br i1 %i.ba, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util12sharded_list10ShardGuardINtNtNtBN_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB1H_9scheduler14current_thread6HandleEENtNtB1F_4core6HeaderEECs7p2uQeJxui2_9deltalake.exit, label %bb.q, !prof !31

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.v, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util12sharded_list10ShardGuardINtNtNtBN_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB1H_9scheduler14current_thread6HandleEENtNtB1F_4core6HeaderEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.d

bb.r:                                             ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bb = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECs7p2uQeJxui2_9deltalake.exit12

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECs7p2uQeJxui2_9deltalake.exit12: ; preds = %bb.s, %bb.r
  %.sroa.0.0 = phi ptr [ %i.bb, %bb.r ], [ null, %bb.s ]
  ret ptr %.sroa.0.0

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util12sharded_list10ShardGuardINtNtNtBN_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB1H_9scheduler14current_thread6HandleEENtNtB1F_4core6HeaderEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.p, %bb.q
  %i.bc = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask8shutdown(ptr noundef nonnull %i.bc)
          to label %bb.s unwind label %bb.d

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util12sharded_list10ShardGuardINtNtNtBN_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB1H_9scheduler14current_thread6HandleEENtNtB1F_4core6HeaderEECs7p2uQeJxui2_9deltalake.exit
  call void @_RNvXsd_NtNtCskQDtHcQtBkN_5tokio7runtime4taskINtB5_4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECs7p2uQeJxui2_9deltalake.exit12

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %.body
  br i1 %.sroa.02.0, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBL_9scheduler14current_thread6HandleEEECs7p2uQeJxui2_9deltalake.exit

bb.t:                                             ; preds = %bb.u, %.body
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable
end_hunk_13
begin_hunk_14_@_RNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_15IdleNotifiedSetINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEE11insert_idleCs7p2uQeJxui2_9deltalake:bb.a
  store i64 1, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 1, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15013
  %i.k = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1697) 56, i64 noundef range(i64 8, 17) 8) #41, !noalias !15013 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %bb.j, !prof !9

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #42
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !15016
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.e, label %common.resume

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot5MutexINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEE9drop_slowB3I_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #46
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

common.resume:                                    ; preds = %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit, %bb.e, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.m, %bb.d ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit ], [ %.pn, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.o, %bb.p, %bb.i
  %.pn = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.ac, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15024)
  %i.q = load ptr, ptr %i.b, align 8, !alias.scope !15027, !nonnull !4, !noundef !4
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !15027
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %common.resume

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEE9drop_slowB32_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #46
          to label %common.resume unwind label %bb.s

bb.i:                                             ; preds = %bb.r, %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.k, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 6 uses
  %i.v = cmpxchg weak ptr %i.u, i8 0, i8 1 acquire monotonic, align 1
  %i.w = extractvalue { i8, i1 } %i.v, 1
  br i1 %i.w, label %bb.l, label %bb.k, !prof !31

bb.k:                                             ; preds = %bb.j
  %i.x = invoke noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.u, i64 undef, i32 noundef 1000000000)
          to label %bb.l unwind label %bb.i       ; 0 uses

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.y = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  invoke void @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB13_E10push_frontCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull %i.y)
          to label %bb.q unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = cmpxchg ptr %i.u, i8 1, i8 0 release monotonic, align 1
  %i.ae = extractvalue { i8, i1 } %i.ad, 1
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit, label %bb.p, !prof !31

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.u, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.s

bb.q:                                             ; preds = %bb.m
  %i.af = cmpxchg ptr %i.u, i8 1, i8 0 release monotonic, align 1
  %i.ag = extractvalue { i8, i1 } %i.af, 1
  br i1 %i.ag, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit13, label %bb.r, !prof !31

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.u, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit13 unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit13: ; preds = %bb.q, %bb.r
  %i.ah = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = insertvalue { ptr, ptr } poison, ptr %i.ah, 0
  %i.aj = insertvalue { ptr, ptr } %i.ai, ptr %0, 1
  ret { ptr, ptr } %i.aj

bb.s:                                             ; preds = %bb.p, %bb.h
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_15IdleNotifiedSetINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEE12pop_notifiedCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 8 uses
  %i.g = cmpxchg weak ptr %i.f, i8 0, i8 1 acquire monotonic, align 1
  %i.h = extractvalue { i8, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c, !prof !31

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.o, %bb.n, %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit20
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.ar, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit20 ], [ null, %bb.n ], [ null, %bb.o ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %0, 1
  ret { ptr, ptr } %i.j

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.f, i64 undef, i32 noundef 1000000000) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !align !32, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre31 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !noundef !4
  %i.r = icmp eq ptr %i.p, %i.q
  %.not11 = icmp eq ptr %.pre, %i.m
  %or.cond = select i1 %i.r, i1 %.not11, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.s = phi ptr [ %.pre31, %._crit_edge ], [ %i.p, %bb.e ]
  %i.t = load ptr, ptr %.pre, align 8, !nonnull !4, !noundef !4
  %i.u = invoke { ptr, ptr } %i.t(ptr noundef %i.s)
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.w = invoke noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB13_E8pop_backCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %bb.l unwind label %bb.h       ; 5 uses

.noexc18:                                         ; preds = %bb.s, %bb.r
  br i1 %.sroa.08.1, label %.thread, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit22

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.i:                                             ; preds = %bb.f
  %i.y = extractvalue { ptr, ptr } %i.u, 0        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %2 = extractvalue { ptr, ptr } %i.u, 1          ; 2 uses
  %.val16 = load ptr, ptr %i.l, align 8, !align !32, !noundef !4 ; 2 uses
  %i.z = icmp eq ptr %.val16, null
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs7p2uQeJxui2_9deltalake.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %i.e, i64 64      ; 2 uses
  %.val17 = load ptr, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.val16, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4
  invoke void %i.ac(ptr noundef %.val17)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.k, !inline_history !15028

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.l, align 8
  store ptr %2, ptr %i.aa, align 8
  br label %.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.i, %bb.j
  store ptr %i.y, ptr %i.l, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %2, ptr %i.ae, align 8
  br label %bb.g

bb.l:                                             ; preds = %bb.g
  %.not12 = icmp eq ptr %i.w, null
  br i1 %.not12, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.w, ptr %i.a, align 8
  %i.af = atomicrmw add ptr %i.w, i64 1 monotonic, align 8
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.q, label %bb.p

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = cmpxchg ptr %i.f, i8 1, i8 0 release monotonic, align 1
  %i.ai = extractvalue { i8, i1 } %i.ah, 1
  br i1 %i.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit, label %bb.o, !prof !31

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit

bb.p:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  invoke void @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB13_E10push_frontCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull %i.w)
          to label %bb.t unwind label %bb.r

bb.q:                                             ; preds = %bb.m
  tail call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.u, %bb.p
  %.sroa.08.1 = phi i1 [ false, %bb.u ], [ true, %bb.p ]
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15032)
  %i.al = load ptr, ptr %i.a, align 8, !alias.scope !15035, !nonnull !4, !noundef !4
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !15035
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.s, label %.noexc18

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEE9drop_slowB32_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #46
          to label %.noexc18 unwind label %bb.v

bb.t:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store i8 1, ptr %i.ao, align 1
  %i.ap = cmpxchg ptr %i.f, i8 1, i8 0 release monotonic, align 1
  %i.aq = extractvalue { i8, i1 } %i.ap, 1
  br i1 %i.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit20, label %bb.u, !prof !31

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit20 unwind label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit20: ; preds = %bb.t, %bb.u
  %i.ar = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit

bb.v:                                             ; preds = %bb.w, %bb.s
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit22: ; preds = %.thread, %bb.w, %.noexc18
  %.pn29 = phi { ptr, i32 } [ %i.ak, %.noexc18 ], [ %.pn30, %bb.w ], [ %.pn30, %.thread ]
  resume { ptr, i32 } %.pn29

.thread:                                          ; preds = %bb.k, %bb.h, %.noexc18
  %.pn30 = phi { ptr, i32 } [ %i.ak, %.noexc18 ], [ %i.ad, %bb.k ], [ %i.x, %bb.h ] ; 2 uses
  %i.at = cmpxchg ptr %i.f, i8 1, i8 0 release monotonic, align 1
  %i.au = extractvalue { i8, i1 } %i.at, 1
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit22, label %bb.w, !prof !31

bb.w:                                             ; preds = %.thread
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit22 unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_15IdleNotifiedSetINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEE11insert_idleCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.g = atomicrmw add ptr %i.f, i64 1 monotonic, align 8
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 1, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15036
  %i.k = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1697) 56, i64 noundef range(i64 8, 17) 8) #41, !noalias !15036 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %bb.j, !prof !9

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #42
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !15039
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.e, label %common.resume

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot5MutexINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #46
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

common.resume:                                    ; preds = %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit, %bb.e, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.m, %bb.d ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit ], [ %.pn, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.o, %bb.p, %bb.i
  %.pn = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.ac, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15047)
  %i.q = load ptr, ptr %i.b, align 8, !alias.scope !15050, !nonnull !4, !noundef !4
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !15050
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %common.resume

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #46
          to label %common.resume unwind label %bb.s

bb.i:                                             ; preds = %bb.r, %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.k, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 6 uses
  %i.v = cmpxchg weak ptr %i.u, i8 0, i8 1 acquire monotonic, align 1
  %i.w = extractvalue { i8, i1 } %i.v, 1
  br i1 %i.w, label %bb.l, label %bb.k, !prof !31

bb.k:                                             ; preds = %bb.j
  %i.x = invoke noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.u, i64 undef, i32 noundef 1000000000)
          to label %bb.l unwind label %bb.i       ; 0 uses

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.y = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  invoke void @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E10push_frontCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull %i.y)
          to label %bb.q unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = cmpxchg ptr %i.u, i8 1, i8 0 release monotonic, align 1
  %i.ae = extractvalue { i8, i1 } %i.ad, 1
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit, label %bb.p, !prof !31

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.u, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.s

bb.q:                                             ; preds = %bb.m
  %i.af = cmpxchg ptr %i.u, i8 1, i8 0 release monotonic, align 1
  %i.ag = extractvalue { i8, i1 } %i.af, 1
  br i1 %i.ag, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit13, label %bb.r, !prof !31

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.u, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit13 unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit13: ; preds = %bb.q, %bb.r
  %i.ah = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = insertvalue { ptr, ptr } poison, ptr %i.ah, 0
  %i.aj = insertvalue { ptr, ptr } %i.ai, ptr %0, 1
  ret { ptr, ptr } %i.aj

bb.s:                                             ; preds = %bb.p, %bb.h
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_15IdleNotifiedSetINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEE12pop_notifiedCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 8 uses
  %i.g = cmpxchg weak ptr %i.f, i8 0, i8 1 acquire monotonic, align 1
  %i.h = extractvalue { i8, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c, !prof !31

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.o, %bb.n, %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit20
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.ar, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit20 ], [ null, %bb.n ], [ null, %bb.o ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %0, 1
  ret { ptr, ptr } %i.j

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.f, i64 undef, i32 noundef 1000000000) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !align !32, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre31 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !noundef !4
  %i.r = icmp eq ptr %i.p, %i.q
  %.not11 = icmp eq ptr %.pre, %i.m
  %or.cond = select i1 %i.r, i1 %.not11, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.s = phi ptr [ %.pre31, %._crit_edge ], [ %i.p, %bb.e ]
  %i.t = load ptr, ptr %.pre, align 8, !nonnull !4, !noundef !4
  %i.u = invoke { ptr, ptr } %i.t(ptr noundef %i.s)
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.w = invoke noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E8pop_backCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %bb.l unwind label %bb.h       ; 5 uses

.noexc18:                                         ; preds = %bb.s, %bb.r
  br i1 %.sroa.08.1, label %.thread, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit22

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.i:                                             ; preds = %bb.f
  %i.y = extractvalue { ptr, ptr } %i.u, 0        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %2 = extractvalue { ptr, ptr } %i.u, 1          ; 2 uses
  %.val16 = load ptr, ptr %i.l, align 8, !align !32, !noundef !4 ; 2 uses
  %i.z = icmp eq ptr %.val16, null
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs7p2uQeJxui2_9deltalake.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %i.e, i64 64      ; 2 uses
  %.val17 = load ptr, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.val16, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4
  invoke void %i.ac(ptr noundef %.val17)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.k, !inline_history !15028

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.l, align 8
  store ptr %2, ptr %i.aa, align 8
  br label %.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.i, %bb.j
  store ptr %i.y, ptr %i.l, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %2, ptr %i.ae, align 8
  br label %bb.g

bb.l:                                             ; preds = %bb.g
  %.not12 = icmp eq ptr %i.w, null
  br i1 %.not12, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.w, ptr %i.a, align 8
  %i.af = atomicrmw add ptr %i.w, i64 1 monotonic, align 8
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.q, label %bb.p

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = cmpxchg ptr %i.f, i8 1, i8 0 release monotonic, align 1
  %i.ai = extractvalue { i8, i1 } %i.ah, 1
  br i1 %i.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit, label %bb.o, !prof !31

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit

bb.p:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  invoke void @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E10push_frontCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull %i.w)
          to label %bb.t unwind label %bb.r

bb.q:                                             ; preds = %bb.m
  tail call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.u, %bb.p
  %.sroa.08.1 = phi i1 [ false, %bb.u ], [ true, %bb.p ]
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15054)
  %i.al = load ptr, ptr %i.a, align 8, !alias.scope !15057, !nonnull !4, !noundef !4
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !15057
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.s, label %.noexc18

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #46
          to label %.noexc18 unwind label %bb.v

bb.t:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store i8 1, ptr %i.ao, align 1
  %i.ap = cmpxchg ptr %i.f, i8 1, i8 0 release monotonic, align 1
  %i.aq = extractvalue { i8, i1 } %i.ap, 1
  br i1 %i.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit20, label %bb.u, !prof !31

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit20 unwind label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit20: ; preds = %bb.t, %bb.u
  %i.ar = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit

bb.v:                                             ; preds = %bb.w, %bb.s
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit22: ; preds = %.thread, %bb.w, %.noexc18
  %.pn29 = phi { ptr, i32 } [ %i.ak, %.noexc18 ], [ %.pn30, %bb.w ], [ %.pn30, %.thread ]
  resume { ptr, i32 } %.pn29

.thread:                                          ; preds = %bb.k, %bb.h, %.noexc18
  %.pn30 = phi { ptr, i32 } [ %i.ak, %.noexc18 ], [ %i.ad, %bb.k ], [ %i.x, %bb.h ] ; 2 uses
  %i.at = cmpxchg ptr %i.f, i8 1, i8 0 release monotonic, align 1
  %i.au = extractvalue { i8, i1 } %i.at, 1
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit22, label %bb.w, !prof !31

bb.w:                                             ; preds = %.thread
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit22 unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_20EntryInOneOfTheListsINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEE6removeCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0, ptr noalias noundef align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.d, align 8
  %i.g = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  %i.i = cmpxchg weak ptr %i.h, i8 0, i8 1 acquire monotonic, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !31

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.i, %bb.j, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.v, %bb.j ], [ %i.v, %bb.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !15058)
  call void @llvm.experimental.noalias.scope.decl(metadata !15061)
  call void @llvm.experimental.noalias.scope.decl(metadata !15064)
  %i.k = load ptr, ptr %i.b, align 8, !alias.scope !15067, !nonnull !4, !noundef !4
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !15067
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEE9drop_slowB32_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.r

bb.c:                                             ; preds = %bb.p, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.a
  %i.o = invoke noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.h, i64 undef, i32 noundef 1000000000)
          to label %bb.e unwind label %bb.c       ; 0 uses

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.p = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !range !137, !noundef !4
  store i8 2, ptr %i.q, align 1
  switch i8 %i.r, label %default.unreachable12 [
    i8 0, label %bb.h
    i8 1, label %bb.f
    i8 2, label %bb.g
  ], !prof !15068

default.unreachable12:                            ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #42
          to label %bb.o unwind label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i64 [ 40, %bb.f ], [ 24, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = invoke noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB13_E6removeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull %i.t)
          to label %bb.k unwind label %bb.i       ; 3 uses

bb.i:                                             ; preds = %bb.m, %bb.n, %bb.h, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = cmpxchg ptr %i.h, i8 1, i8 0 release monotonic, align 1
  %i.x = extractvalue { i8, i1 } %i.w, 1
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit, label %bb.j, !prof !31

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.h, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.r

bb.k:                                             ; preds = %bb.h
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.n, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
  store ptr %i.u, ptr %i.a, align 8
  %i.y = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !15069
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit

bb.m:                                             ; preds = %bb.l
end_hunk_14
begin_hunk_15_@_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_20EntryInOneOfTheListsINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEE6removeCs7p2uQeJxui2_9deltalake:bb.a
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEE9drop_slowB32_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake.exit10

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake.exit10: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit9, %bb.q
  ret ptr %i.ae

bb.r:                                             ; preds = %bb.j, %bb.b
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit, %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_20EntryInOneOfTheListsINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEE6removeCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0, ptr noalias noundef align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.d, align 8
  %i.g = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  %i.i = cmpxchg weak ptr %i.h, i8 0, i8 1 acquire monotonic, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !31

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.i, %bb.j, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.v, %bb.j ], [ %i.v, %bb.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !15081)
  call void @llvm.experimental.noalias.scope.decl(metadata !15084)
  call void @llvm.experimental.noalias.scope.decl(metadata !15087)
  %i.k = load ptr, ptr %i.b, align 8, !alias.scope !15090, !nonnull !4, !noundef !4
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !15090
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.r

bb.c:                                             ; preds = %bb.p, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.a
  %i.o = invoke noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.h, i64 undef, i32 noundef 1000000000)
          to label %bb.e unwind label %bb.c       ; 0 uses

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.p = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !range !137, !noundef !4
  store i8 2, ptr %i.q, align 1
  switch i8 %i.r, label %default.unreachable12 [
    i8 0, label %bb.h
    i8 1, label %bb.f
    i8 2, label %bb.g
  ], !prof !15068

default.unreachable12:                            ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #42
          to label %bb.o unwind label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i64 [ 40, %bb.f ], [ 24, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = invoke noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E6removeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull %i.t)
          to label %bb.k unwind label %bb.i       ; 3 uses

bb.i:                                             ; preds = %bb.m, %bb.n, %bb.h, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = cmpxchg ptr %i.h, i8 1, i8 0 release monotonic, align 1
  %i.x = extractvalue { i8, i1 } %i.w, 1
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit, label %bb.j, !prof !31

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.h, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.r

bb.k:                                             ; preds = %bb.h
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.n, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
  store ptr %i.u, ptr %i.a, align 8
  %i.y = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !15091
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.i

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #42
          to label %bb.o unwind label %bb.i

bb.o:                                             ; preds = %bb.n, %bb.g
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = cmpxchg ptr %i.h, i8 1, i8 0 release monotonic, align 1
  %i.ab = extractvalue { i8, i1 } %i.aa, 1
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit9, label %bb.p, !prof !31

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.h, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit9 unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit9: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit, %bb.p
  %i.ac = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4
  %i.af = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !15096
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs7p2uQeJxui2_9deltalake.exit10

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit9
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs7p2uQeJxui2_9deltalake.exit10

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs7p2uQeJxui2_9deltalake.exit10: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit9, %bb.q
  ret ptr %i.ae

bb.r:                                             ; preds = %bb.j, %bb.b
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit, %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef align 8 ptr @_RNvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB5_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types10typeobject6PyTypeEE3getCs7p2uQeJxui2_9deltalake(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) %0) unnamed_addr #8 {
bb.a:
  %i.a = load atomic ptr, ptr %0 acquire, align 8
  %i.b = icmp eq ptr %i.a, inttoptr (i64 2 to ptr)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %spec.select
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef align 8 ptr @_RNvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB5_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getCs7p2uQeJxui2_9deltalake(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) %0) unnamed_addr #8 {
bb.a:
  %i.a = load atomic ptr, ptr %0 acquire, align 8
  %i.b = icmp eq ptr %i.a, inttoptr (i64 2 to ptr)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %spec.select
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE12insert_entryCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !4
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = invoke { ptr, i64 } @_RINvMs8_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECs7p2uQeJxui2_9deltalake()
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %3 = extractvalue { ptr, i64 } %i.k, 1          ; 2 uses
  store ptr %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %3, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %3, ptr %i.n, align 8
  store ptr %i.l, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @_RNvMsu_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB19_4LeafE16push_with_handleCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !4
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.u = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.v = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  store ptr %i.u, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load <2 x i64>, ptr %i.t, align 8
  store <2 x i64> %i.w, ptr %.sroa.4.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.v, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RINvMsN_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs6_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.f:                                             ; preds = %bb.h, %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %2) #43
          to label %bb.h unwind label %bb.f

.critedge9:                                       ; preds = %bb.h
  resume { ptr, i32 } %i.ab

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #43
          to label %.critedge9 unwind label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map5entryINtB5_11VacantEntryjINtNtBd_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE12insert_entryCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.h = invoke { ptr, i64 } @_RINvMs8_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedjINtNtBc_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECs7p2uQeJxui2_9deltalake()
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %3 = extractvalue { ptr, i64 } %i.h, 1          ; 2 uses
  store ptr %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %3, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.k, align 8
  store ptr %i.i, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !4
  call void @_RNvMsu_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutjINtNtBb_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB19_4LeafE16push_with_handleCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.m, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = phi ptr [ %.pre, %bb.e ], [ %i.g, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !4
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.t = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  store ptr %i.s, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load <2 x i64>, ptr %i.r, align 8
  store <2 x i64> %i.u, ptr %.sroa.4.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.t, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_RINvMsN_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjINtNtBc_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs6_NtNtB8_3map5entryINtB3M_11VacantEntryjB1E_E12insert_entry0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.x, ptr noundef nonnull %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y)
  %.pre = load ptr, ptr %1, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !15103
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs7p2uQeJxui2_9deltalake.exit9

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs7p2uQeJxui2_9deltalake.exit9 unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs7p2uQeJxui2_9deltalake.exit9: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.aa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs7_NtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE6insertCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_RNvMsS_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %2) #43
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs7_NtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE8into_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs7_NtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryjINtNtBd_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE6insertCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = invoke { ptr, ptr } @_RNvMsS_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjINtNtBb_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !15108
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.b, 1        ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  store ptr %1, ptr %i.f, align 8
  ret ptr %i.g

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs7_NtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryjINtNtBd_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE8into_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjINtNtBb_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0)
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionE8push_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(272) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !191, !noundef !4
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw [272 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.g, ptr noundef nonnull align 8 dereferenceable(272) %1, i64 272, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(272) %1) #43
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericStringTypexEE5valueCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = lshr i64 %i.e, 3                         ; 2 uses
  %i.g = add nsw i64 %i.f, -1                     ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  br i1 %i.h, label %bb.c, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
end_hunk_15
begin_hunk_16_@_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypexEENtB7_5Array7to_dataCs7p2uQeJxui2_9deltalake:bb.a
  %i.l = atomicrmw add ptr %i.k, i64 1 monotonic, align 8, !noalias !15284
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !15282, !noalias !15279, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !15282, !noalias !15279, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !15282, !noalias !15279, !noundef !4 ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_RNvXNtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB2_16GenericByteArrayINtNtB6_5types17GenericStringTypexEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit, label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw add ptr %i.s, i64 1 monotonic, align 8, !noalias !15284
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !15282, !noalias !15279, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.y = load <2 x i64>, ptr %i.x, align 8, !alias.scope !15282, !noalias !15279
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aa = load <2 x i64>, ptr %i.z, align 8, !alias.scope !15282, !noalias !15279
  br label %_RNvXNtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB2_16GenericByteArrayINtNtB6_5types17GenericStringTypexEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

_RNvXNtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB2_16GenericByteArrayINtNtB6_5types17GenericStringTypexEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.g
  %.sroa.53.sroa.0.sroa.0.sroa.0.0.i = phi ptr [ %i.w, %bb.g ], [ undef, %bb.d ]
  %i.ab = phi <2 x i64> [ %i.y, %bb.g ], [ undef, %bb.d ]
  %i.ac = phi <2 x i64> [ %i.aa, %bb.g ], [ undef, %bb.d ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i8 25, i64 24, i1 false), !alias.scope !15279, !noalias !15282
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %i.ad, align 8, !alias.scope !15279, !noalias !15282
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.g, ptr %.sroa.412.0..sroa_idx.i, align 8, !alias.scope !15279, !noalias !15282
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.i, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !15279, !noalias !15282
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.k, ptr %i.ae, align 8, !alias.scope !15279, !noalias !15282
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !15279, !noalias !15282
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.q, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !15279, !noalias !15282
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.s, ptr %i.af, align 8, !alias.scope !15279, !noalias !15282
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %.sroa.53.sroa.0.sroa.0.sroa.0.0.i, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !15279, !noalias !15282
  %.sroa.53.sroa.0.sroa.0.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store <2 x i64> %i.ab, ptr %.sroa.53.sroa.0.sroa.0.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !15279, !noalias !15282
  %.sroa.53.sroa.0.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store <2 x i64> %i.ac, ptr %.sroa.53.sroa.0.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !15279, !noalias !15282
  call void @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataINtNtCsbvkFyIu7lgC_4core7convert4FromINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypexEEE4fromCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypexEENtB7_5Array8is_emptyCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ult i64 %i.b, 16
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypexEENtB7_5Array9data_typeCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(120) %0) unnamed_addr #11 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypexEENtB7_5Array9into_dataCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataINtNtCsbvkFyIu7lgC_4core7convert4FromINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypexEEE4fromCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters10filter_map19filter_map_try_foldNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1N_EuINtNtB9_12control_flow11ControlFlowIB3Q_TB37_INtNtBb_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB4Z_5types3any5PyAnyEEEEENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6a_13RawDeltaTable18dataset_partitionss_0NCINvNtBV_3map12map_try_foldB36_INtNtBb_6result6ResultB4t_NtNtB4Z_3err5PyErrEuB3P_NCB64_s0_0NCINvXBV_INtBV_12GenericShuntINtB7l_3MapINtBT_9FilterMapINtNtBV_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB9e_INtNtB9_5range5RangejENCNCNvMs1_NtB1R_8log_dataNtBc0_14LogDataHandler4iter00ENCBbU_0EB62_EB8A_EIB7N_NtNtBb_7convert10InfallibleB8c_EENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvNvBdD_12try_for_each4callB4t_B4o_NcNtB4o_5Break0E0B4o_E0E0E0INtB7_5FnMutTuB1N_EE8call_mutB6a_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.83.i.i = alloca [16 x i8], align 8       ; 5 uses
  %.sroa.11.i.i = alloca [24 x i8], align 8       ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.412.i = alloca [64 x i8], align 8        ; 8 uses
  %i.e = alloca [72 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = load ptr, ptr %1, align 8, !nonnull !4, !align !32, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15288)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.412.i)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !15288, !noalias !15290, !nonnull !4, !align !32, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(48) %2, i64 48, i1 false), !noalias !15293
  %.val.i = load ptr, ptr %i.j, align 8, !noalias !15292 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15294
  invoke void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView4path(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h)
          to label %bb.c unwind label %bb.b, !noalias !15298

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !15294, !nonnull !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !15294 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15294
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.o, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.e unwind label %bb.d, !noalias !15298

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.f) #43
          to label %bb.x unwind label %bb.v, !noalias !15298

bb.e:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.d, align 8, !range !3, !noalias !15294, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !133, !noalias !15294, !noundef !4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.g, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.u, align 8, !noalias !15294
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #42
          to label %bb.w unwind label %bb.d, !noalias !15298

bb.g:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !noalias !15294, !nonnull !4, !noundef !4 ; 2 uses
  %i.x = icmp ule i64 %i.o, %i.t
  call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15294
  %.not5.i.i = icmp eq i64 %i.o, 0
  br i1 %.not5.i.i, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.l, %bb.g
  store i64 %i.t, ptr %i.g, align 8, !noalias !15294
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !15294
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.o, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !15294
  %i.y = load i64, ptr %i.f, align 8, !range !133, !alias.scope !15299, !noalias !15294, !noundef !4
  %i.z = icmp eq i64 %i.y, -9223372036854775808
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.j, !noalias !15298

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.thread.i.i unwind label %bb.k, !noalias !15298

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !15298
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %.body.thread11.i.i, !noalias !15298

bb.l:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %i.m, i64 %i.o, i1 false), !noalias !15298
  br label %bb.h

.body.thread11.i.i:                               ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15294
  %i.ac = load ptr, ptr %.val.i, align 8, !noalias !15294, !noundef !4
  %.not6.i.i = icmp eq ptr %i.ac, null
  br i1 %.not6.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.ad = invoke noundef zeroext i1 @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12contains_keyBO_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.o unwind label %.body.thread11.i.i, !noalias !15298

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7p2uQeJxui2_9deltalake.exit.i.i
  %.sroa.011.0.copyload.i = load i64, ptr %i.g, align 8, !noalias !15294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.412.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !15292
  %.sroa.412.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.412.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.412.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !15292
  br label %_RNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB7_13RawDeltaTable18dataset_partitionss_0B7_.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !15294
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !15298
  br i1 %i.ad, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i unwind label %bb.q, !noalias !15298

bb.q:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %.body.i.i.i unwind label %bb.r, !noalias !15298

bb.r:                                             ; preds = %bb.q
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !15298
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i8.i.i unwind label %bb.s, !noalias !15298

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.s, %bb.q
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.s ], [ %i.af, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.ae) #43
          to label %common.resume.i unwind label %bb.t, !noalias !15298

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i8.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.ae), !noalias !15298
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEECs7p2uQeJxui2_9deltalake.exit.i.i

bb.t:                                             ; preds = %.body.i.i.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !15298
  unreachable

bb.u:                                             ; preds = %bb.o
  %.sroa.0.0.copyload5.i = load i64, ptr %i.e, align 8, !noalias !15302
  %.sroa.7.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.412.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx7.i, i64 64, i1 false), !noalias !15292
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEECs7p2uQeJxui2_9deltalake.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i8.i.i
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload5.i, %bb.u ], [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i8.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15294
  br label %_RNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB7_13RawDeltaTable18dataset_partitionss_0B7_.exit.i

.body.thread.i.i:                                 ; preds = %.body.thread11.i.i, %bb.j
  %eh.lpad-body7.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.body.thread11.i.i ], [ %i.aa, %bb.j ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #43
          to label %bb.x unwind label %bb.v, !noalias !15298

bb.v:                                             ; preds = %bb.x, %.body.thread.i.i, %bb.d
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !15298
  unreachable

bb.w:                                             ; preds = %bb.f
  unreachable

common.resume.i:                                  ; preds = %bb.ai, %bb.ac, %bb.z, %bb.x, %.body.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %.pn.ph.i.i, %bb.x ], [ %i.be, %bb.ai ], [ %i.ay, %bb.ac ], [ %i.at, %bb.z ]
  resume { ptr, i32 } %common.resume.op.i

bb.x:                                             ; preds = %.body.thread.i.i, %bb.d, %bb.b
  %.pn.ph.i.i = phi { ptr, i32 } [ %i.k, %bb.b ], [ %eh.lpad-body7.i.i, %.body.thread.i.i ], [ %i.p, %bb.d ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h) #43
          to label %common.resume.i unwind label %bb.v, !noalias !15298

_RNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB7_13RawDeltaTable18dataset_partitionss_0B7_.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.n
  %.sroa.0.1.i = phi i64 [ %.sroa.011.0.copyload.i, %bb.n ], [ %.sroa.0.0.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEECs7p2uQeJxui2_9deltalake.exit.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15292
  %.not.i = icmp eq i64 %.sroa.0.1.i, -9223372036854775808
  br i1 %.not.i, label %bb.aj, label %bb.y

bb.y:                                             ; preds = %_RNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB7_13RawDeltaTable18dataset_partitionss_0B7_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val2.i = load ptr, ptr %i.ak, align 8, !alias.scope !15288, !noalias !15290 ; 12 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.val3.i = load ptr, ptr %i.al, align 8, !alias.scope !15288, !noalias !15290, !nonnull !4, !align !32, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15303)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.83.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15306
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.412.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 48, i1 false), !noalias !15292
  %i.an = getelementptr i8, ptr %.val3.i, i64 8
  %.val.i.i = load ptr, ptr %i.an, align 8, !noalias !15306, !nonnull !4, !align !32, !noundef !4
  %i.ao = getelementptr i8, ptr %.val3.i, i64 16
  %.val2.i.i = load ptr, ptr %i.ao, align 8, !noalias !15306, !nonnull !4, !align !32, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15308
  store i64 %.sroa.0.1.i, ptr %i.c, align 8, !noalias !15312
  %.sroa.5.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx9.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.412.i, i64 16, i1 false), !noalias !15292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15308
  %i.ap = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !15308, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noalias !15308, !noundef !4
  invoke void @_RNvCs7p2uQeJxui2_9deltalake28filestats_to_expression_next(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aq, i64 noundef %i.as, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.aa unwind label %bb.z, !noalias !15308

bb.z:                                             ; preds = %bb.y
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #43
          to label %common.resume.i unwind label %bb.ae, !noalias !15308

bb.aa:                                            ; preds = %bb.y
  %i.au = load i64, ptr %i.a, align 8, !range !3, !noalias !15308, !noundef !4
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.07.0.copyload.i.i.i = load ptr, ptr %i.aw, align 8, !noalias !15308 ; 2 uses
  br i1 %i.av, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %.sroa.58.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.83.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !15313
  %.sroa.10.16..sroa.58.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.10.16.copyload.i.i = load ptr, ptr %.sroa.10.16..sroa.58.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !15313 ; 2 uses
  %.sroa.11.16..sroa.58.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.16..sroa.58.0..sroa_idx.i.sroa_idx.i.i, i64 24, i1 false), !noalias !15306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15308
  %i.ax = ptrtoint ptr %.sroa.07.0.copyload.i.i.i to i64 ; 2 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.af unwind label %bb.ac, !noalias !15308

bb.ac:                                            ; preds = %bb.ab
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i unwind label %bb.ad, !noalias !15308

bb.ad:                                            ; preds = %bb.ac
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !15308
  unreachable

bb.ae:                                            ; preds = %bb.z
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !15308
  unreachable

bb.af:                                            ; preds = %bb.ab
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !15308
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15306
  %i.bb = load i64, ptr %.val2.i, align 8, !range !3, !alias.scope !15314, !noalias !15317, !noundef !4
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsgbCypRs12E4_4pyo33err5PyErrEEECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bd = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsgbCypRs12E4_4pyo33err5PyErrEEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.ai, !noalias !15317

bb.ah:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15306
  call void @llvm.experimental.noalias.scope.decl(metadata !15321)
  call void @llvm.experimental.noalias.scope.decl(metadata !15322)
  %.sroa.421.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.421.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.412.i, i64 16, i1 false), !noalias !15323
  %.sroa.5.sroa.6.0..sroa.421.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.07.0.copyload.i.i.i, ptr %.sroa.5.sroa.6.0..sroa.421.0..sroa_idx.i.sroa_idx.i.i, align 8, !alias.scope !15324, !noalias !15325
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEINtNtBa_6result6ResultTB10_INtNtBa_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB3O_5types3any5PyAnyEEENtNtB3O_3err5PyErrEuINtNtNtBa_3ops12control_flow11ControlFlowIB5a_B3i_EENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB67_13RawDeltaTable18dataset_partitionss0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_10filter_map9FilterMapINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB7I_INtNtB5e_5range5RangejENCNCNvMs1_NtB1G_8log_dataNtBaI_14LogDataHandler4iter00ENCBaC_0ENCB61_s_0EB5Z_EIB2X_NtNtBa_7convert10InfallibleB4P_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBcq_12try_for_each4callB3i_B5O_NcNtB5O_5Break0E0B5O_E0E0B67_.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.be = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %.val2.i, align 8, !noalias !15317
  store i64 %i.ax, ptr %i.bd, align 8, !noalias !15317
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.83.i.i, i64 16, i1 false), !noalias !15306
  %.sroa.5.sroa.6.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val2.i, i64 32
  store ptr %.sroa.10.16.copyload.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.sroa_idx.i.i, align 8, !noalias !15326
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val2.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.i.i, i64 24, i1 false), !noalias !15306
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsgbCypRs12E4_4pyo33err5PyErrEEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.ag, %bb.af
  store i64 1, ptr %.val2.i, align 8, !noalias !15317
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  store i64 %i.ax, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !noalias !15317
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.83.i.i, i64 16, i1 false), !noalias !15306
  %.sroa.5.sroa.6.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val2.i, i64 32
  store ptr %.sroa.10.16.copyload.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx.i.sroa_idx.i.i, align 8, !noalias !15326
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val2.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.i.i, i64 24, i1 false), !noalias !15306
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEINtNtBa_6result6ResultTB10_INtNtBa_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB3O_5types3any5PyAnyEEENtNtB3O_3err5PyErrEuINtNtNtBa_3ops12control_flow11ControlFlowIB5a_B3i_EENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB67_13RawDeltaTable18dataset_partitionss0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_10filter_map9FilterMapINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB7I_INtNtB5e_5range5RangejENCNCNvMs1_NtB1G_8log_dataNtBaI_14LogDataHandler4iter00ENCBaC_0ENCB61_s_0EB5Z_EIB2X_NtNtBa_7convert10InfallibleB4P_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBcq_12try_for_each4callB3i_B5O_NcNtB5O_5Break0E0B5O_E0E0B67_.exit.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEINtNtBa_6result6ResultTB10_INtNtBa_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB3O_5types3any5PyAnyEEENtNtB3O_3err5PyErrEuINtNtNtBa_3ops12control_flow11ControlFlowIB5a_B3i_EENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB67_13RawDeltaTable18dataset_partitionss0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_10filter_map9FilterMapINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB7I_INtNtB5e_5range5RangejENCNCNvMs1_NtB1G_8log_dataNtBaI_14LogDataHandler4iter00ENCBaC_0ENCB61_s_0EB5Z_EIB2X_NtNtBa_7convert10InfallibleB4P_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBcq_12try_for_each4callB3i_B5O_NcNtB5O_5Break0E0B5O_E0E0B67_.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsgbCypRs12E4_4pyo33err5PyErrEEECs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.ah
  %storemerge.i.i.i = phi i64 [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsgbCypRs12E4_4pyo33err5PyErrEEECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.0.1.i, %bb.ah ]
  store i64 %storemerge.i.i.i, ptr %0, align 8, !alias.scope !15327, !noalias !15328
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.83.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i)
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1e_EuINtNtNtBa_3ops12control_flow11ControlFlowIB3h_TB2y_INtNtBa_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB4w_5types3any5PyAnyEEEEENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5H_13RawDeltaTable18dataset_partitionss_0NCINvNtB6_3map12map_try_foldB2x_INtNtBa_6result6ResultB40_NtNtB4w_3err5PyErrEuB3g_NCB5B_s0_0NCINvXB6_INtB6_12GenericShuntINtB6S_3MapINtB4_9FilterMapINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB8L_INtNtB3l_5range5RangejENCNCNvMs1_NtB1i_8log_dataNtBby_14LogDataHandler4iter00ENCBbs_0EB5z_EB87_EIB7k_NtNtBa_7convert10InfallibleB7J_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBdb_12try_for_each4callB40_B3V_NcNtB3V_5Break0E0B3V_E0E0E0B5H_.exit

bb.aj:                                            ; preds = %_RNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB7_13RawDeltaTable18dataset_partitionss_0B7_.exit.i
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !15329, !noalias !15323
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1e_EuINtNtNtBa_3ops12control_flow11ControlFlowIB3h_TB2y_INtNtBa_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB4w_5types3any5PyAnyEEEEENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5H_13RawDeltaTable18dataset_partitionss_0NCINvNtB6_3map12map_try_foldB2x_INtNtBa_6result6ResultB40_NtNtB4w_3err5PyErrEuB3g_NCB5B_s0_0NCINvXB6_INtB6_12GenericShuntINtB6S_3MapINtB4_9FilterMapINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB8L_INtNtB3l_5range5RangejENCNCNvMs1_NtB1i_8log_dataNtBby_14LogDataHandler4iter00ENCBbs_0EB5z_EB87_EIB7k_NtNtBa_7convert10InfallibleB7J_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBdb_12try_for_each4callB40_B3V_NcNtB3V_5Break0E0B3V_E0E0E0B5H_.exit

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1e_EuINtNtNtBa_3ops12control_flow11ControlFlowIB3h_TB2y_INtNtBa_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB4w_5types3any5PyAnyEEEEENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5H_13RawDeltaTable18dataset_partitionss_0NCINvNtB6_3map12map_try_foldB2x_INtNtBa_6result6ResultB40_NtNtB4w_3err5PyErrEuB3g_NCB5B_s0_0NCINvXB6_INtB6_12GenericShuntINtB6S_3MapINtB4_9FilterMapINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB8L_INtNtB3l_5range5RangejENCNCNvMs1_NtB1i_8log_dataNtBby_14LogDataHandler4iter00ENCBbs_0EB5z_EB87_EIB7k_NtNtBa_7convert10InfallibleB7J_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBdb_12try_for_each4callB40_B3V_NcNtB3V_5Break0E0B3V_E0E0E0B5H_.exit: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEINtNtBa_6result6ResultTB10_INtNtBa_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB3O_5types3any5PyAnyEEENtNtB3O_3err5PyErrEuINtNtNtBa_3ops12control_flow11ControlFlowIB5a_B3i_EENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB67_13RawDeltaTable18dataset_partitionss0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_10filter_map9FilterMapINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB7I_INtNtB5e_5range5RangejENCNCNvMs1_NtB1G_8log_dataNtBaI_14LogDataHandler4iter00ENCBaC_0ENCB61_s_0EB5Z_EIB2X_NtNtBa_7convert10InfallibleB4P_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBcq_12try_for_each4callB3i_B5O_NcNtB5O_5Break0E0B5O_E0E0B67_.exit.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.412.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1b_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_5AliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d) #47
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !range !2165, !noundef !4
  %.not = icmp eq i64 %i.f, 3
  %i.g = load i64, ptr %1, align 8, !range !2165, !noundef !4
  %i.h = icmp eq i64 %i.g, 3                      ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.f, label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.i = tail call fastcc noundef zeroext i1 @_RNvXsg_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) #47
  br i1 %i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load i64, ptr %i.l, align 8, !noundef !4
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.r, ptr nonnull %i.p, i64 %i.k)
  %i.s = icmp eq i32 %bcmp, 0
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !noundef !4 ; 3 uses
  %.not6 = icmp eq ptr %i.u, null                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !noundef !4 ; 3 uses
  %i.x = icmp eq ptr %i.w, null                   ; 2 uses
  %brmerge = or i1 %.not6, %i.x
  %.mux = and i1 %.not6, %i.x
  br i1 %brmerge, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.j, %bb.a, %bb.d, %bb.g, %bb.c, %bb.f, %bb.k
  %.sroa.0.0.shrunk = phi i1 [ %.mux, %bb.h ], [ %i.ab, %bb.k ], [ false, %bb.a ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.g ], [ false, %bb.d ], [ true, %bb.j ]
  ret i1 %.sroa.0.0.shrunk

bb.j:                                             ; preds = %bb.h
  %i.y = icmp eq ptr %i.u, %i.w
  br i1 %i.y, label %bb.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ab = tail call noundef zeroext i1 @_RNvXs1t_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringB18_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
  br label %bb.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1e_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB6_15TriggerExecBodyNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val = load i8, ptr %i.a, align 8, !range !5, !noundef !4
  %.val1 = load i8, ptr %i.b, align 8, !range !5, !noundef !4
  %i.c = icmp eq i8 %.val, %.val1
  br i1 %i.c, label %bb.b, label %_RNvXst4_NtCs4lawaffTVVK_9sqlparser3astNtB6_12FunctionDescNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15335)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.d, align 8, !alias.scope !15332, !noalias !15335, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4.i = load i64, ptr %i.e, align 8, !alias.scope !15335, !noalias !15332, !noundef !4
  %i.f = icmp eq i64 %.val2.i, %.val4.i
  br i1 %i.f, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXst4_NtCs4lawaffTVVK_9sqlparser3astNtB6_12FunctionDescNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.g, align 8, !alias.scope !15335, !noalias !15332, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !15332, !noalias !15335, !nonnull !4, !noundef !4
  %i.i = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %.val.i, ptr noundef nonnull %.val3.i, i64 noundef %.val2.i), !noalias !15337
  br i1 %i.i, label %bb.c, label %_RNvXst4_NtCs4lawaffTVVK_9sqlparser3astNtB6_12FunctionDescNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !range !133, !alias.scope !15332, !noalias !15335, !noundef !4
  %.not.i = icmp eq i64 %i.k, -9223372036854775808 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !range !133, !alias.scope !15335, !noalias !15332, !noundef !4
  %i.n = icmp eq i64 %i.m, -9223372036854775808   ; 2 uses
  %brmerge.i = or i1 %.not.i, %i.n
  %.mux.i = and i1 %.not.i, %i.n
  br i1 %brmerge.i, label %_RNvXst4_NtCs4lawaffTVVK_9sqlparser3astNtB6_12FunctionDescNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !15332, !noalias !15335, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !15335, !noalias !15332, !noundef !4
  %i.s = icmp eq i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %_RNvXst4_NtCs4lawaffTVVK_9sqlparser3astNtB6_12FunctionDescNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !15335, !noalias !15332, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !15332, !noalias !15335, !nonnull !4, !noundef !4
  %i.x = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.w, ptr noundef nonnull %i.u, i64 noundef %i.p), !noalias !15337
  br label %_RNvXst4_NtCs4lawaffTVVK_9sqlparser3astNtB6_12FunctionDescNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXst4_NtCs4lawaffTVVK_9sqlparser3astNtB6_12FunctionDescNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.e, %bb.d, %bb.c, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.x, %bb.e ], [ %.mux.i, %bb.c ], [ false, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1g_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_10BinaryExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b) #47
  br i1 %i.c, label %bb.b, label %bb.d

end_hunk_16
begin_hunk_17_@_RNvXs1v_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a

bb.al:                                            ; preds = %bb.ak
  br i1 %i.cp, label %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.an

bb.am:                                            ; preds = %bb.ak
  br i1 %i.cp, label %bb.ap, label %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.an:                                            ; preds = %bb.al
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 1272
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !4
  %i.cu = icmp eq i64 %i.cr, %i.ct
  br i1 %i.cu, label %bb.ao, label %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 1264
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !4, !noundef !4
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !4, !noundef !4
  %i.cz = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cw, i64 noundef %i.cr)
  br i1 %i.cz, label %bb.ap, label %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !range !2196, !noundef !4
  %.not21 = icmp eq i64 %i.db, -9223372036854775807
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 1328 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !range !2196, !noundef !4
  %i.de = icmp eq i64 %i.dd, -9223372036854775807 ; 2 uses
  br i1 %.not21, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.de, label %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.as

bb.ar:                                            ; preds = %bb.ap
  br i1 %i.de, label %bb.at, label %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.as:                                            ; preds = %bb.aq
  %i.df = tail call fastcc noundef zeroext i1 @_RNvXseL_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12FormatClauseNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.da, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dc) #47
  br i1 %i.df, label %bb.at, label %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !4 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.dj = load i64, ptr %i.di, align 8, !noundef !4
  %i.dk = icmp eq i64 %i.dh, %i.dj
  br i1 %i.dk, label %bb.au, label %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.o, %bb.l, %bb.j, %bb.u, %bb.r, %bb.n, %_RNvXsb5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11OrderByKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.q, %bb.e, %bb.d, %bb.as, %bb.ao, %bb.aj, %bb.ad, %bb.z, %bb.v, %_RNvXsbf_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.at, %bb.c, %bb.f, %bb.i, %bb.y, %bb.ac, %bb.af, %bb.ai, %bb.am, %bb.ar, %bb.b, %bb.h, %bb.x, %bb.ab, %bb.ae, %bb.ah, %bb.al, %bb.an, %bb.aq, %bb.au
  %.sroa.0.0 = phi i1 [ %i.dp, %bb.au ], [ false, %bb.c ], [ false, %bb.aq ], [ false, %bb.an ], [ false, %bb.al ], [ false, %bb.ah ], [ false, %bb.ae ], [ false, %bb.ab ], [ false, %bb.x ], [ false, %bb.h ], [ false, %bb.b ], [ false, %bb.ar ], [ false, %bb.am ], [ false, %bb.ai ], [ false, %bb.af ], [ false, %bb.ac ], [ false, %bb.y ], [ false, %bb.i ], [ false, %bb.f ], [ false, %bb.at ], [ false, %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.as ], [ false, %_RNvXsbf_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.e ], [ false, %bb.v ], [ false, %bb.z ], [ false, %bb.ad ], [ false, %bb.aj ], [ false, %bb.ao ], [ false, %bb.d ], [ false, %bb.q ], [ false, %_RNvXsb5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11OrderByKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.n ], [ false, %bb.r ], [ false, %bb.u ], [ false, %bb.j ], [ false, %bb.l ], [ false, %bb.o ]
  ret i1 %.sroa.0.0

bb.au:                                            ; preds = %bb.at
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %i.dm = load ptr, ptr %i.dl, align 8, !nonnull !4, !noundef !4
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !4, !noundef !4
  %i.dp = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query12PipeOperatorINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.do, ptr noundef nonnull %i.dm, i64 noundef %i.dh)
  br label %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs22_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7TryCastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d) #47
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #47
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs25_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !5, !noundef !4
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.i, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.j) #47
  br i1 %i.k, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.e

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.a ], [ %i.bd, %bb.k ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.g ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15707)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !15704, !noalias !15707, !nonnull !4, !noundef !4 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !15707, !noalias !15704, !nonnull !4, !noundef !4 ; 4 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15712)
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !15709, !noalias !15714, !noundef !4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !15712, !noalias !15715, !noundef !4
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ac = load ptr, ptr %i.aa, align 8, !alias.scope !15712, !noalias !15715, !nonnull !4, !noundef !4
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !15709, !noalias !15714, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af, i64 noundef %i.w), !noalias !15716
  br i1 %i.ag, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aj = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ai), !noalias !15717
  br i1 %i.aj, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !15704, !noalias !15707, !noundef !4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !15707, !noalias !15704, !noundef !4
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !15707, !noalias !15704, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !15704, !noalias !15707, !nonnull !4, !noundef !4
  %i.at = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq, i64 noundef %i.al), !noalias !15717
  br i1 %i.at, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !15704, !noalias !15707, !noundef !4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !15707, !noalias !15704, !noundef !4
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !15707, !noalias !15704, !nonnull !4, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !15704, !noalias !15707, !nonnull !4, !noundef !4
  %i.bd = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.ba, i64 noundef %i.av), !noalias !15717
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2B_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14WindowFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val = load i64, ptr %i.a, align 16, !range !3, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val1 = load ptr, ptr %i.c, align 8            ; 4 uses
  %.val2 = load i64, ptr %i.b, align 16, !range !3, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.val3 = load ptr, ptr %i.d, align 8            ; 4 uses
  %i.e = icmp eq i64 %.val, %.val2
  br i1 %i.e, label %bb.b, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1), "nonnull"(ptr %.val3) ]
  %2 = trunc nuw i64 %.val to i1
  %i.f = icmp eq ptr %.val1, %.val3               ; 2 uses
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.f, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.i = tail call noundef zeroext i1 @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr4udafNtB2_12AggregateUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
  br i1 %i.i, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.l = tail call noundef zeroext i1 @_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr4udwfNtB4_9WindowUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k)
  br i1 %i.l, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.c, %bb.d, %bb.e, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15721)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.n = load i8, ptr %i.m, align 16, !range !5, !alias.scope !15718, !noalias !15721, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.p = load i8, ptr %i.o, align 16, !range !5, !alias.scope !15721, !noalias !15718, !noundef !4
  %i.q = icmp eq i8 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.s = load i64, ptr %i.r, align 16, !alias.scope !15718, !noalias !15721, !noundef !4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.u = load i64, ptr %i.t, align 16, !alias.scope !15721, !noalias !15718, !noundef !4
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.g, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !15721, !noalias !15718, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !15718, !noalias !15721, !nonnull !4, !noundef !4
  %.not16.not = icmp eq i64 %i.s, 0
  br i1 %.not16.not, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.aa = add nuw i64 %.sroa.01.0.i617, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.sroa.01.0.i617 = phi i64 [ %i.aa, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [112 x i8], ptr %i.z, i64 %.sroa.01.0.i617
  %i.ac = getelementptr inbounds nuw [112 x i8], ptr %i.x, i64 %.sroa.01.0.i617
  %i.ad = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ab, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ac) #47, !noalias !15723, !inline_history !15724
  br i1 %i.ad, label %bb.h, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !15718, !noalias !15721, !noundef !4 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !15721, !noalias !15718, !noundef !4
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.i, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ak = load ptr, ptr %i.aj, align 16, !alias.scope !15721, !noalias !15718, !nonnull !4, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.am = load ptr, ptr %i.al, align 16, !alias.scope !15718, !noalias !15721, !nonnull !4, !noundef !4
  %.not1218.not = icmp eq i64 %i.af, 0
  br i1 %.not1218.not, label %._crit_edge22, label %.lr.ph21

bb.j:                                             ; preds = %.lr.ph21
  %i.an = add nuw i64 %.sroa.01.0.i519, 1         ; 2 uses
  %exitcond29.not = icmp eq i64 %i.an, %i.af
  br i1 %exitcond29.not, label %._crit_edge22, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.i, %bb.j
  %.sroa.01.0.i519 = phi i64 [ %i.an, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [112 x i8], ptr %i.am, i64 %.sroa.01.0.i519
  %i.ap = getelementptr inbounds nuw [112 x i8], ptr %i.ak, i64 %.sroa.01.0.i519
  %i.aq = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ao, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ap) #47, !noalias !15723, !inline_history !15724
  br i1 %i.aq, label %bb.j, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

._crit_edge22:                                    ; preds = %bb.j, %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.as = load i64, ptr %i.ar, align 16, !alias.scope !15718, !noalias !15721, !noundef !4 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.au = load i64, ptr %i.at, align 16, !alias.scope !15721, !noalias !15718, !noundef !4
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.k, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %._crit_edge22
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !15721, !noalias !15718, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !15718, !noalias !15721, !nonnull !4, !noundef !4
  %.not1323.not = icmp eq i64 %i.as, 0
  br i1 %.not1323.not, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph26

bb.l:                                             ; preds = %_RNvXs29_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.ba = add nuw i64 %.sroa.01.0.i24, 1          ; 2 uses
  %exitcond30.not = icmp eq i64 %i.ba, %i.as
  br i1 %exitcond30.not, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.k, %bb.l
  %.sroa.01.0.i24 = phi i64 [ %i.ba, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [128 x i8], ptr %i.az, i64 %.sroa.01.0.i24 ; 3 uses
  %i.bc = getelementptr inbounds nuw [128 x i8], ptr %i.ax, i64 %.sroa.01.0.i24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15728)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  %i.be = load i8, ptr %i.bd, align 16, !range !5, !alias.scope !15725, !noalias !15730, !noundef !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  %i.bg = load i8, ptr %i.bf, align 16, !range !5, !alias.scope !15728, !noalias !15731, !noundef !4
  %i.bh = icmp eq i8 %i.be, %i.bg
  br i1 %i.bh, label %bb.m, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %.lr.ph26
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 113
  %i.bj = load i8, ptr %i.bi, align 1, !range !5, !alias.scope !15725, !noalias !15730, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 113
  %i.bl = load i8, ptr %i.bk, align 1, !range !5, !alias.scope !15728, !noalias !15731, !noundef !4
  %i.bm = icmp eq i8 %i.bj, %i.bl
  br i1 %i.bm, label %_RNvXs29_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs29_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.m
  %i.bn = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.bb, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.bc) #47, !noalias !15723, !inline_history !15732
  br i1 %i.bn, label %bb.l, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.l, %bb.k
  %i.bo = tail call fastcc noundef zeroext i1 @_RNvXs9_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_11WindowFrameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %1) #47, !inline_history !15733
  br i1 %i.bo, label %bb.n, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !15718, !noalias !15721, !align !2181, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !15721, !noalias !15718, !align !2181, !noundef !4 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null                 ; 2 uses
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.bt, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.q

bb.p:                                             ; preds = %bb.n
  br i1 %i.bt, label %bb.r, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.o
  %i.bu = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.bq, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.bs) #47, !inline_history !15733
  br i1 %i.bu, label %bb.r, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 257
  %i.bw = load i8, ptr %i.bv, align 1, !range !137, !alias.scope !15718, !noalias !15721, !noundef !4 ; 2 uses
  %.not5.i = icmp eq i8 %i.bw, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 257
  %i.by = load i8, ptr %i.bx, align 1, !range !137, !alias.scope !15721, !noalias !15718, !noundef !4 ; 2 uses
  br i1 %.not5.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = icmp eq i8 %i.bw, %i.by
  br label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.r
  %i.ca = icmp eq i8 %i.by, 2
  br label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %.lr.ph, %.lr.ph21, %.lr.ph26, %bb.m, %_RNvXs29_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.s, %bb.a, %bb.t, %bb.p, %bb.o, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit, %._crit_edge22, %._crit_edge, %bb.f, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, %bb.q, %bb.e, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %bb.e ], [ false, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.q ], [ false, %.lr.ph21 ], [ %i.bz, %bb.s ], [ %i.ca, %bb.t ], [ false, %bb.o ], [ false, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit ], [ false, %._crit_edge22 ], [ false, %._crit_edge ], [ false, %bb.f ], [ false, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread ], [ false, %bb.p ], [ false, %bb.a ], [ false, %.lr.ph26 ], [ false, %_RNvXs29_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.m ], [ false, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %.not4.not = icmp eq i64 %i.b, 0
  br i1 %.not4.not, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph

bb.c:                                             ; preds = %_RNvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit
  %i.j = add nuw i64 %.sroa.01.0.i5, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %i.b
  br i1 %exitcond.not, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph

end_hunk_17
begin_hunk_18_@_RNvXs4_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_15IdleNotifiedSetINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEENtNtNtB21_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake:bb.a
  br i1 %.not.i8.i, label %_RINvNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set16move_to_new_listINtNtNtNtB6_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEECs7p2uQeJxui2_9deltalake.exit12.i, label %.lr.ph.i7.i

_RINvNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set16move_to_new_listINtNtNtNtB6_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEECs7p2uQeJxui2_9deltalake.exit12.i: ; preds = %.noexc11.i, %.noexc9.i
  %i.x = cmpxchg ptr %i.h, i8 1, i8 0 release monotonic, align 1, !noalias !16046
  %i.y = extractvalue { i8, i1 } %i.x, 1
  br i1 %i.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit14.i.preheader, label %bb.f, !prof !31

bb.f:                                             ; preds = %_RINvNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set16move_to_new_listINtNtNtNtB6_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEECs7p2uQeJxui2_9deltalake.exit12.i
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.h, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit14.i.preheader unwind label %.loopexit.split-lp.i, !noalias !16046

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit14.i.preheader: ; preds = %bb.f, %_RINvNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set16move_to_new_listINtNtNtNtB6_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEECs7p2uQeJxui2_9deltalake.exit12.i
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit14.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit14.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit14.i.preheader, %_RNvMNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2u_3mem4dropB1H_EE8pop_nextCs7p2uQeJxui2_9deltalake.exit.i
  %i.z = invoke noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E8pop_backCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc16.i unwind label %.loopexit.i, !noalias !16046 ; 5 uses

.noexc16.i:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit14.i
  %.not.i15.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i15.not.i, label %bb.m, label %bb.g

bb.g:                                             ; preds = %.noexc16.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16049
  store ptr %i.z, ptr %i.b, align 8, !noalias !16049
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !16046, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16049
  store ptr %i.ab, ptr %i.a, align 8, !noalias !16049
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEENtNtNtB1c_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.j unwind label %bb.h, !noalias !16046

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !16052
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.i, label %.body.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #46
          to label %.body.i unwind label %bb.l, !noalias !16046

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16049
  %i.af = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !16057
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.k, label %_RNvMNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2u_3mem4dropB1H_EE8pop_nextCs7p2uQeJxui2_9deltalake.exit.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #46
          to label %_RNvMNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2u_3mem4dropB1H_EE8pop_nextCs7p2uQeJxui2_9deltalake.exit.i unwind label %.loopexit.i, !noalias !16046

bb.l:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !16046
  unreachable

_RNvMNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2u_3mem4dropB1H_EE8pop_nextCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16049
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECs7p2uQeJxui2_9deltalake.exit14.i

bb.m:                                             ; preds = %.noexc16.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtBP_15IdleNotifiedSetpE5drain10AllEntriesINtNtNtNtBT_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB4_3mem4dropB2i_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.c), !noalias !16046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16046
  br label %_RINvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB6_15IdleNotifiedSetINtNtNtNtBa_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEE5drainINvNtB22_3mem4dropB1f_EECs7p2uQeJxui2_9deltalake.exit

bb.n:                                             ; preds = %bb.e, %.body.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !16046
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %.pn.i

_RINvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB6_15IdleNotifiedSetINtNtNtNtBa_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEE5drainINvNtB22_3mem4dropB1f_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16065)
  %i.f = load ptr, ptr %0, align 8, !alias.scope !16065, !noalias !16062, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !16065, !noalias !16062, !noundef !4
  %i.i = add i64 %i.h, 1
  call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, i64 noundef %i.i), !noalias !16065
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.c, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !16062, !noalias !16065
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16067)
  %i.j = icmp eq i64 %i.c, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !16067, !noalias !16070 ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !alias.scope !16067, !noalias !16070, !nonnull !4 ; 2 uses
  br i1 %i.j, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.b
  %i.o = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !16067
  %i.p = extractvalue { ptr, ptr } %i.o, 0
  %.not.us.not.i.not = icmp eq ptr %i.p, null
  br label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_3all5checkTRBV_B32_ENCNvXs4_B6_INtB6_7HashMapBV_BV_ENtNtB1J_3cmp9PartialEq2eq0E0INtNtNtB1J_3ops12control_flow11ControlFlowuEECs7p2uQeJxui2_9deltalake.exit

.split.i:                                         ; preds = %bb.b, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6Po7BT7Nknu_5alloc6string6StringB1c_ENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB22_7HashMapB1d_B1d_ENtNtBe_3cmp9PartialEq2eq0E0Cs7p2uQeJxui2_9deltalake.exit.i
  %i.q = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.q, 0        ; 4 uses
  %.not.not.not.i = icmp eq ptr %i.r, null        ; 4 uses
  br i1 %.not.not.not.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_3all5checkTRBV_B32_ENCNvXs4_B6_INtB6_7HashMapBV_BV_ENtNtB1J_3cmp9PartialEq2eq0E0INtNtNtB1J_3ops12control_flow11ControlFlowuEECs7p2uQeJxui2_9deltalake.exit, label %bb.c

bb.c:                                             ; preds = %.split.i
  %i.s = extractvalue { ptr, ptr } %i.q, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val7.i = load ptr, ptr %i.t, align 8          ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 16
  %.val8.i = load i64, ptr %i.u, align 8          ; 2 uses
  %i.v = call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16072)
  %i.w = lshr i64 %i.v, 57
  %i.x = trunc nuw nsw i64 %i.w to i8
  %i.y = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !16075, !noalias !16082 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !16075, !noalias !16082, !nonnull !4
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.au, %bb.e ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.v, %bb.c ], [ %i.av, %bb.e ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.m ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i22.i.i.i.i.i = load <16 x i8>, ptr %i.ac, align 1, !noalias !16085 ; 2 uses
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i.i.i.i.i, %i.z
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not.i.not28.i.i.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i.not28.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i
  %.sroa.06.0.i29.i.i.i.i.i = phi i16 [ %i.at, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i ], [ %i.ae, %bb.d ] ; 3 uses
  %i.af = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i29.i.i.i.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.m
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [48 x i8], ptr %i.n, i64 %i.aj ; 4 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -32
  %.val3.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !16091, !noalias !16094, !noundef !4
  %i.am = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i
  br i1 %i.am, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i, !prof !16098

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.an = getelementptr i8, ptr %i.ak, i64 -40
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.an, align 8, !noalias !16099, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i.i.i.i.i, ptr nonnull readonly %.val2.i.i.i.i.i.i, i64 %.val1.i.i.i.i.i.i.i.i), !noalias !16100
  %i.ao = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %bb.f, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i, !prof !16104

._crit_edge.i.i.i.i.i:                            ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i, %bb.d
  %i.ap = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i.i.i.i.i, splat (i8 -1)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %i.ar = icmp eq i16 %i.aq, 0
  br i1 %i.ar, label %bb.e, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_3all5checkTRBV_B32_ENCNvXs4_B6_INtB6_7HashMapBV_BV_ENtNtB1J_3cmp9PartialEq2eq0E0INtNtNtB1J_3ops12control_flow11ControlFlowuEECs7p2uQeJxui2_9deltalake.exit, !prof !9

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i: ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.as = add i16 %.sroa.06.0.i29.i.i.i.i.i, -1
  %i.at = and i16 %i.as, %.sroa.06.0.i29.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.at, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.au = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.av = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.au
  br label %bb.d

bb.f:                                             ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16105)
  %i.aw = getelementptr i8, ptr %i.ak, i64 -8
  %.val7.i.i.i.i = load i64, ptr %i.aw, align 8, !alias.scope !16105, !noundef !4
  %i.ax = icmp eq i64 %.val8.i, %.val7.i.i.i.i
  br i1 %i.ax, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6Po7BT7Nknu_5alloc6string6StringB1c_ENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB22_7HashMapB1d_B1d_ENtNtBe_3cmp9PartialEq2eq0E0Cs7p2uQeJxui2_9deltalake.exit.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_3all5checkTRBV_B32_ENCNvXs4_B6_INtB6_7HashMapBV_BV_ENtNtB1J_3cmp9PartialEq2eq0E0INtNtNtB1J_3ops12control_flow11ControlFlowuEECs7p2uQeJxui2_9deltalake.exit

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6Po7BT7Nknu_5alloc6string6StringB1c_ENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB22_7HashMapB1d_B1d_ENtNtBe_3cmp9PartialEq2eq0E0Cs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i) ]
  %i.ay = getelementptr i8, ptr %i.ak, i64 -16
  %.val6.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !16105, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val7.i, ptr nonnull readonly %.val6.i.i.i.i, i64 %.val8.i), !noalias !16105
  %.not10.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %.not10.i, label %.split.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_3all5checkTRBV_B32_ENCNvXs4_B6_INtB6_7HashMapBV_BV_ENtNtB1J_3cmp9PartialEq2eq0E0INtNtNtB1J_3ops12control_flow11ControlFlowuEECs7p2uQeJxui2_9deltalake.exit

_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_3all5checkTRBV_B32_ENCNvXs4_B6_INtB6_7HashMapBV_BV_ENtNtB1J_3cmp9PartialEq2eq0E0INtNtNtB1J_3ops12control_flow11ControlFlowuEECs7p2uQeJxui2_9deltalake.exit: ; preds = %.split.i, %bb.f, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6Po7BT7Nknu_5alloc6string6StringB1c_ENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB22_7HashMapB1d_B1d_ENtNtBe_3cmp9PartialEq2eq0E0Cs7p2uQeJxui2_9deltalake.exit.i, %._crit_edge.i.i.i.i.i, %.split.us.i
  %.not14.i = phi i1 [ false, %._crit_edge.i.i.i.i.i ], [ %.not.us.not.i.not, %.split.us.i ], [ %.not.not.not.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6Po7BT7Nknu_5alloc6string6StringB1c_ENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB22_7HashMapB1d_B1d_ENtNtBe_3cmp9PartialEq2eq0E0Cs7p2uQeJxui2_9deltalake.exit.i ], [ %.not.not.not.i, %bb.f ], [ %.not.not.not.i, %.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_3all5checkTRBV_B32_ENCNvXs4_B6_INtB6_7HashMapBV_BV_ENtNtB1J_3cmp9PartialEq2eq0E0INtNtNtB1J_3ops12control_flow11ControlFlowuEECs7p2uQeJxui2_9deltalake.exit
  %.sroa.0.0 = phi i1 [ %.not14.i, %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_3all5checkTRBV_B32_ENCNvXs4_B6_INtB6_7HashMapBV_BV_ENtNtB1J_3cmp9PartialEq2eq0E0INtNtNtB1J_3ops12control_flow11ControlFlowuEECs7p2uQeJxui2_9deltalake.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16111)
  %i.f = load ptr, ptr %0, align 8, !alias.scope !16111, !noalias !16108, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !16111, !noalias !16108, !noundef !4
  %i.i = add i64 %i.h, 1
  call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, i64 noundef %i.i), !noalias !16111
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.c, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !16108, !noalias !16111
  %i.j = icmp eq i64 %i.c, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !nonnull !4   ; 2 uses
  br i1 %i.j, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b
  %i.o = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.p = extractvalue { ptr, ptr } %i.o, 0
  %.not.i.not.us = icmp eq ptr %i.p, null
  br label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECs7p2uQeJxui2_9deltalake.exit

.split:                                           ; preds = %bb.b, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE6map_orbNCNCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB1L_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBJ_ENtNtB5_3cmp9PartialEq2eq00ECs7p2uQeJxui2_9deltalake.exit
  %i.q = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.q, 0        ; 4 uses
  %.not.i.not = icmp eq ptr %i.r, null            ; 3 uses
  br i1 %.not.i.not, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECs7p2uQeJxui2_9deltalake.exit, label %bb.c

bb.c:                                             ; preds = %.split
  %i.s = extractvalue { ptr, ptr } %i.q, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r), !noalias !16113 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16120), !noalias !16113
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !16123, !noalias !16126 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !16123, !noalias !16126, !nonnull !4
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.as, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.t, %bb.c ], [ %i.at, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.m    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i22.i.i = load <16 x i8>, ptr %i.aa, align 1, !noalias !16129 ; 2 uses
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i.i, %i.x
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not.i.not28.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i
  %.sroa.06.0.i29.i.i = phi i16 [ %i.ar, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i ], [ %i.ac, %bb.d ] ; 3 uses
  %i.ad = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i29.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.01.0.i.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.m
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [144 x i8], ptr %i.n, i64 %i.ah ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 -128
  %.val3.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !16135, !noalias !16138, !noundef !4
  %i.ak = icmp eq i64 %.val1.i.i.i.i.i, %.val3.i.i.i
  br i1 %i.ak, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i, !prof !16098

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.lr.ph.i.i
  %i.al = getelementptr i8, ptr %i.ai, i64 -136
  %.val2.i.i.i = load ptr, ptr %i.al, align 8, !noalias !16142, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %.val1.i.i.i.i.i), !noalias !16143
  %i.am = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE6map_orbNCNCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB1L_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBJ_ENtNtB5_3cmp9PartialEq2eq00ECs7p2uQeJxui2_9deltalake.exit, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i, !prof !16104

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i, %bb.d
  %i.an = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i.i, splat (i8 -1)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %bb.e, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECs7p2uQeJxui2_9deltalake.exit, !prof !9

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i, %.lr.ph.i.i
  %i.aq = add i16 %.sroa.06.0.i29.i.i, -1
  %i.ar = and i16 %i.aq, %.sroa.06.0.i29.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.as = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.at = add i64 %.sroa.01.0.i.i.i, %i.as
  br label %bb.d

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE6map_orbNCNCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB1L_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBJ_ENtNtB5_3cmp9PartialEq2eq00ECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ai, i64 -112
  %i.av = call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.s, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) dereferenceable_or_null(112) %i.au) #47, !noalias !16147, !inline_history !16148
  br i1 %i.av, label %.split, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECs7p2uQeJxui2_9deltalake.exit

_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECs7p2uQeJxui2_9deltalake.exit: ; preds = %.split, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE6map_orbNCNCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB1L_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBJ_ENtNtB5_3cmp9PartialEq2eq00ECs7p2uQeJxui2_9deltalake.exit, %._crit_edge.i.i, %.split.us
  %.not.i.not13 = phi i1 [ %.not.i.not.us, %.split.us ], [ false, %._crit_edge.i.i ], [ %.not.i.not, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE6map_orbNCNCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB1L_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBJ_ENtNtB5_3cmp9PartialEq2eq00ECs7p2uQeJxui2_9deltalake.exit ], [ %.not.i.not, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECs7p2uQeJxui2_9deltalake.exit
  %.sroa.0.0 = phi i1 [ %.not.i.not13, %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECs7p2uQeJxui2_9deltalake.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16152)
  %i.f = load ptr, ptr %0, align 8, !alias.scope !16152, !noalias !16149, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !16152, !noalias !16149, !noundef !4
  %i.i = add i64 %i.h, 1
  call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, i64 noundef %i.i), !noalias !16152
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.c, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !16149, !noalias !16152
  %i.j = icmp eq i64 %i.c, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !16154, !noalias !16157 ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !alias.scope !16154, !noalias !16157, !nonnull !4 ; 2 uses
  %i.o = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.o, 0        ; 2 uses
  %.not.us.not.i = icmp eq ptr %i.p, null         ; 2 uses
  br i1 %i.j, label %.split.us.i, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.b
  br i1 %.not.us.not.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph

.split.us.i:                                      ; preds = %bb.b
  br i1 %.not.us.not.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs7p2uQeJxui2_9deltalake.exit, label %bb.c

bb.c:                                             ; preds = %.split.us.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16159)
  call void @llvm.experimental.noalias.scope.decl(metadata !16162)
  call void @llvm.experimental.noalias.scope.decl(metadata !16164)
  call void @llvm.experimental.noalias.scope.decl(metadata !16167)
  br label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs7p2uQeJxui2_9deltalake.exit

.lr.ph:                                           ; preds = %.split.i.preheader, %.split.backedge.i
  %i.q = phi ptr [ %i.by, %.split.backedge.i ], [ %i.p, %.split.i.preheader ] ; 3 uses
  %i.r = phi { ptr, ptr } [ %i.bx, %.split.backedge.i ], [ %i.o, %.split.i.preheader ]
  %i.s = extractvalue { ptr, ptr } %i.r, 1        ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16159)
  call void @llvm.experimental.noalias.scope.decl(metadata !16162)
  call void @llvm.experimental.noalias.scope.decl(metadata !16164)
  call void @llvm.experimental.noalias.scope.decl(metadata !16167)
  %i.t = call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q), !noalias !16169 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16170)
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !16173, !noalias !16176 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !16173, !noalias !16176, !nonnull !4
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph
end_hunk_18
begin_hunk_19_@_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4
  %i.an = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.am, ptr noundef nonnull %i.ak, i64 noundef %i.af)
  br label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXseh_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectIntoNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !5, !noundef !4
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.g = load i8, ptr %i.f, align 1, !range !5, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.i = load i8, ptr %i.h, align 1, !range !5, !noundef !4
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.l = load i8, ptr %i.k, align 2, !range !5, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.n = load i8, ptr %i.m, align 2, !range !5, !noundef !4
  %i.o = icmp eq i8 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.q, align 8, !noundef !4
  %i.r = icmp eq i64 %.val1, %.val3
  br i1 %i.r, label %bb.e, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4
  %i.u = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %.val, ptr noundef nonnull %.val2, i64 noundef %.val1)
  br label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.e, %bb.d, %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ %i.u, %bb.e ], [ false, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsf5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_9ForClauseNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #13 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !2275, !noundef !4 ; 2 uses
  %i.b = add nsw i64 %i.a, -4
  %i.c = icmp samesign ugt i64 %i.a, 3
  %i.d = select i1 %i.c, i64 %i.b, i64 2          ; 2 uses
  %i.e = load i64, ptr %1, align 8, !range !2275, !noundef !4 ; 2 uses
  %i.f = add nsw i64 %i.e, -4
  %i.g = icmp samesign ugt i64 %i.e, 3
  %i.h = select i1 %i.g, i64 %i.f, i64 2
  %i.i = icmp eq i64 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.e
    i64 2, label %bb.j
    i64 0, label %bb.c
  ]

.sink.split:                                      ; preds = %bb.o, %bb.i
  %.sink16 = phi i64 [ 16, %bb.i ], [ 40, %bb.o ] ; 2 uses
  %.sink13 = phi i64 [ %i.aj, %bb.i ], [ %i.bj, %bb.o ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.sink16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sink16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.m, ptr nonnull %i.k, i64 %.sink13)
  %i.n = icmp eq i32 %bcmp, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.n, %bb.h, %.sink.split, %bb.o, %bb.j, %bb.k, %bb.l, %bb.m, %bb.i, %bb.e, %bb.f, %bb.g, %bb.b, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.m ], [ %i.n, %.sink.split ], [ false, %bb.e ], [ false, %bb.l ], [ true, %bb.b ], [ false, %bb.a ], [ %.mux18, %bb.n ], [ false, %bb.f ], [ false, %bb.j ], [ %.mux, %bb.h ], [ false, %bb.i ], [ false, %bb.o ], [ false, %bb.k ], [ false, %bb.g ]
  ret i1 %.sroa.0.0.shrunk

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.p = load i8, ptr %i.o, align 1, !range !5, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.r = load i8, ptr %i.q, align 1, !range !5, !noundef !4
  %i.s = icmp eq i8 %i.p, %i.r
  br i1 %i.s, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.u = load i8, ptr %i.t, align 2, !range !5, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.w = load i8, ptr %i.v, align 2, !range !5, !noundef !4
  %i.x = icmp eq i8 %i.u, %i.w
  br i1 %i.x, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i8, ptr %i.y, align 8, !range !5, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i8, ptr %i.aa, align 8, !range !5, !noundef !4
  %i.ac = icmp eq i8 %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.c

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !133, !noundef !4
  %.not7 = icmp eq i64 %i.ae, -9223372036854775808 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !133, !noundef !4
  %i.ah = icmp eq i64 %i.ag, -9223372036854775808 ; 2 uses
  %brmerge = or i1 %.not7, %i.ah
  %.mux = and i1 %.not7, %i.ah
  br i1 %brmerge, label %bb.c, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !noundef !4
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %.sink.split, label %bb.c

bb.j:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load i8, ptr %i.an, align 8, !range !5, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aq = load i8, ptr %i.ap, align 8, !range !5, !noundef !4
  %i.ar = icmp eq i8 %i.ao, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.c

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.at = load i8, ptr %i.as, align 1, !range !5, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.av = load i8, ptr %i.au, align 1, !range !5, !noundef !4
  %i.aw = icmp eq i8 %i.at, %i.av
  br i1 %i.aw, label %bb.l, label %bb.c

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.ay = load i8, ptr %i.ax, align 2, !range !5, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.ba = load i8, ptr %i.az, align 2, !range !5, !noundef !4
  %i.bb = icmp eq i8 %i.ay, %i.ba
  br i1 %i.bb, label %bb.m, label %bb.c

bb.m:                                             ; preds = %bb.l
  %i.bc = tail call fastcc noundef zeroext i1 @_RNvXsff_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #47
  br i1 %i.bc, label %bb.n, label %bb.c

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !range !133, !noundef !4
  %.not = icmp eq i64 %i.be, -9223372036854775808 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !range !133, !noundef !4
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808 ; 2 uses
  %brmerge17 = or i1 %.not, %i.bh
  %.mux18 = and i1 %.not, %i.bh
  br i1 %brmerge17, label %bb.c, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !4
  %i.bm = icmp eq i64 %i.bj, %i.bl
  br i1 %i.bm, label %.sink.split, label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCsbvkFyIu7lgC_4core3fmtbNtB5_5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCsbvkFyIu7lgC_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %2, 24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16758)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2k_13SliceContains14slice_contains0ECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load i64, ptr %i.b, align 8, !alias.scope !16758, !noalias !16761, !noundef !4 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i.i = load ptr, ptr %3, align 8, !alias.scope !16758, !noalias !16761, !nonnull !4
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs7p2uQeJxui2_9deltalake.exit.backedge.i, %.lr.ph.i
  %i.c = phi ptr [ %1, %.lr.ph.i ], [ %i.d, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs7p2uQeJxui2_9deltalake.exit.backedge.i ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val4.i = load i64, ptr %i.e, align 8, !noalias !16763, !noundef !4
  %i.f = icmp eq i64 %.val4.i, %.val3.i.i
  br i1 %i.f, label %bb.c, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs7p2uQeJxui2_9deltalake.exit.backedge.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.c, i64 8
  %.val3.i = load ptr, ptr %i.g, align 8, !noalias !16763, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val3.i, ptr nonnull readonly %.val2.i.i, i64 %.val3.i.i), !noalias !16763
  %i.h = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.h, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2k_13SliceContains14slice_contains0ECs7p2uQeJxui2_9deltalake.exit, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs7p2uQeJxui2_9deltalake.exit.backedge.i

_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs7p2uQeJxui2_9deltalake.exit.backedge.i: ; preds = %bb.c, %bb.b
  %.not8.i = icmp eq ptr %i.d, %i.a
  br i1 %.not8.i, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2k_13SliceContains14slice_contains0ECs7p2uQeJxui2_9deltalake.exit, label %bb.b

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2k_13SliceContains14slice_contains0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs7p2uQeJxui2_9deltalake.exit.backedge.i, %bb.a
  %.lcssa.i = phi i1 [ false, %bb.a ], [ false, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs7p2uQeJxui2_9deltalake.exit.backedge.i ], [ true, %bb.c ]
  ret i1 %.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtB5_13SliceContains14slice_containsCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %1, i64 noundef range(i64 0, 82351536043346213) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %2, 112
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not.not.not.i.not.not.not1.not = icmp eq i64 %2, 0
  br i1 %.not.not.not.i.not.not.not1.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2r_13SliceContains14slice_contains0ECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.b = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %0) #47, !noalias !16764 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.d, %i.a
  %or.cond = select i1 %i.c, i1 true, i1 %.not.not.not.i.not.not.not.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2r_13SliceContains14slice_contains0ECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2r_13SliceContains14slice_contains0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %.lr.ph, %bb.a
  %.not.not.not.i.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %i.c, %.lr.ph ]
  ret i1 %.not.not.not.i.not.not.not.lcssa
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsff_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #13 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !2165, !noundef !4 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !2165, !noundef !4
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

.sink.split:                                      ; preds = %bb.g, %bb.f
  %.sink12 = phi i64 [ %i.t, %bb.f ], [ %i.y, %bb.g ]
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.g, ptr nonnull %i.e, i64 %.sink12)
  %i.h = icmp eq i32 %bcmp, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.d, %.sink.split, %bb.g, %bb.f, %bb.c, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ %.mux, %bb.d ], [ %i.h, %.sink.split ], [ true, %bb.c ], [ false, %bb.g ], [ %.mux15, %bb.e ], [ false, %bb.f ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.a
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.d
    i64 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !133, !noundef !4
  %.not6 = icmp eq i64 %i.j, -9223372036854775808 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !133, !noundef !4
  %i.m = icmp eq i64 %i.l, -9223372036854775808   ; 2 uses
  %brmerge = or i1 %.not6, %i.m
  %.mux = and i1 %.not6, %i.m
  br i1 %brmerge, label %bb.b, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !133, !noundef !4
  %.not = icmp eq i64 %i.o, -9223372036854775808  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !133, !noundef !4
  %i.r = icmp eq i64 %i.q, -9223372036854775808   ; 2 uses
  %brmerge14 = or i1 %.not, %i.r
  %.mux15 = and i1 %.not, %i.r
  br i1 %brmerge14, label %bb.b, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !noundef !4
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %.sink.split, label %bb.b

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !noundef !4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %.sink.split, label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsgN_NtCs4lawaffTVVK_9sqlparser3astNtB6_12GrantObjectsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12804, !noundef !4 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !12804, !noundef !4
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  %i.h = icmp eq i64 %i.e, %i.g                   ; 28 uses
  switch i64 %i.a, label %default.unreachable89 [
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
  ]

_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.l, ptr noundef nonnull %i.j, i64 noundef %i.e)
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit: ; preds = %.lr.ph, %.lr.ph52, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split, %bb.ah, %bb.af, %bb.ad, %bb.ac, %bb.ag, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit38, %bb.ae, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.u ], [ false, %bb.a ], [ true, %bb.ah ], [ false, %bb.c ], [ false, %bb.v ], [ false, %bb.d ], [ true, %bb.af ], [ false, %bb.e ], [ false, %bb.w ], [ false, %bb.f ], [ false, %bb.ag ], [ false, %bb.g ], [ false, %bb.x ], [ false, %bb.h ], [ %i.m, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split ], [ false, %bb.i ], [ false, %bb.y ], [ false, %bb.j ], [ false, %bb.t ], [ false, %bb.k ], [ false, %bb.z ], [ false, %bb.l ], [ %i.ae, %.lr.ph52 ], [ false, %bb.m ], [ false, %bb.aa ], [ false, %bb.n ], [ false, %bb.ac ], [ false, %bb.o ], [ false, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.p ], [ false, %bb.ab ], [ false, %bb.q ], [ false, %bb.ad ], [ false, %bb.r ], [ false, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit38 ], [ false, %bb.s ], [ false, %bb.ae ], [ %i.ar, %.lr.ph ]
  ret i1 %.sroa.0.0.shrunk

default.unreachable89:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  br i1 %i.h, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.h, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.h, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.h, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.b
  br i1 %i.h, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %bb.b
  br i1 %i.h, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.i:                                             ; preds = %bb.b
  br i1 %i.h, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %bb.b
  br i1 %i.h, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.k:                                             ; preds = %bb.b
  br i1 %i.h, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.sink.split, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit
end_hunk_19
begin_hunk_20_@_RNvXsg_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.oc = load ptr, ptr %i.ob, align 16, !alias.scope !16856, !noalias !16853, !nonnull !4, !noundef !4 ; 6 uses
  %i.od = icmp eq ptr %i.oa, %i.oc
  br i1 %i.od, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16861)
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oa, i64 64
  %i.of = load ptr, ptr %i.oe, align 8, !alias.scope !16858, !noalias !16863, !nonnull !4, !noundef !4 ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 64
  %i.oh = load ptr, ptr %i.og, align 8, !alias.scope !16861, !noalias !16864, !nonnull !4, !noundef !4 ; 4 uses
  %i.oi = icmp eq ptr %i.of, %i.oh
  br i1 %i.oi, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16868)
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  %i.ok = load i64, ptr %i.oj, align 8, !alias.scope !16865, !noalias !16870, !noundef !4 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  %i.om = load i64, ptr %i.ol, align 8, !alias.scope !16868, !noalias !16871, !noundef !4
  %i.on = icmp eq i64 %i.ok, %i.om
  br i1 %i.on, label %bb.cl, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cl:                                            ; preds = %bb.ck
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.op = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %i.oq = load ptr, ptr %i.oo, align 8, !alias.scope !16868, !noalias !16871, !nonnull !4, !noundef !4
  %i.or = load ptr, ptr %i.op, align 8, !alias.scope !16865, !noalias !16870, !nonnull !4, !noundef !4
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.ou = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.os, ptr noundef nonnull %i.ot, i64 noundef %i.ok), !noalias !16872
  br i1 %i.ou, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i16, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i16: ; preds = %bb.cl
  %i.ov = getelementptr inbounds nuw i8, ptr %i.of, i64 32
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oh, i64 32
  %i.ox = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ov, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ow), !noalias !16873
  br i1 %i.ox, label %bb.cm, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cm:                                            ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i16, %bb.cj
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oa, i64 32
  %i.oz = load i64, ptr %i.oy, align 8, !alias.scope !16858, !noalias !16863, !noundef !4 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oc, i64 32
  %i.pb = load i64, ptr %i.pa, align 8, !alias.scope !16861, !noalias !16864, !noundef !4
  %i.pc = icmp eq i64 %i.oz, %i.pb
  br i1 %i.pc, label %bb.cn, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cn:                                            ; preds = %bb.cm
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oc, i64 24
  %i.pe = load ptr, ptr %i.pd, align 8, !alias.scope !16861, !noalias !16864, !nonnull !4, !noundef !4
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oa, i64 24
  %i.pg = load ptr, ptr %i.pf, align 8, !alias.scope !16858, !noalias !16863, !nonnull !4, !noundef !4
  %i.ph = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.pg, ptr noundef nonnull %i.pe, i64 noundef %i.oz), !noalias !16873
  br i1 %i.ph, label %bb.co, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.co:                                            ; preds = %bb.cn
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oa, i64 56
  %i.pj = load i64, ptr %i.pi, align 8, !alias.scope !16858, !noalias !16863, !noundef !4 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.oc, i64 56
  %i.pl = load i64, ptr %i.pk, align 8, !alias.scope !16861, !noalias !16864, !noundef !4
  %i.pm = icmp eq i64 %i.pj, %i.pl
  br i1 %i.pm, label %bb.cp, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cp:                                            ; preds = %bb.co
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oc, i64 48
  %i.po = load ptr, ptr %i.pn, align 8, !alias.scope !16861, !noalias !16864, !nonnull !4, !noundef !4
  %i.pp = getelementptr inbounds nuw i8, ptr %i.oa, i64 48
  %i.pq = load ptr, ptr %i.pp, align 8, !alias.scope !16858, !noalias !16863, !nonnull !4, !noundef !4
  %i.pr = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.pq, ptr noundef nonnull %i.po, i64 noundef %i.pj), !noalias !16873
  br label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cq:                                            ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16877)
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.pt = load i8, ptr %i.ps, align 8, !range !5, !alias.scope !16874, !noalias !16877, !noundef !4
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.pv = load i8, ptr %i.pu, align 8, !range !5, !alias.scope !16877, !noalias !16874, !noundef !4
  %i.pw = icmp eq i8 %i.pt, %i.pv
  br i1 %i.pw, label %bb.cr, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cr:                                            ; preds = %bb.cq
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pz = tail call fastcc noundef zeroext i1 @_RNvXsg_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.py, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.px) #47
  br i1 %i.pz, label %bb.cs, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cs:                                            ; preds = %bb.cr
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.qb = load ptr, ptr %i.qa, align 16, !alias.scope !16874, !noalias !16877, !nonnull !4, !noundef !4 ; 6 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.qd = load ptr, ptr %i.qc, align 16, !alias.scope !16877, !noalias !16874, !nonnull !4, !noundef !4 ; 6 uses
  %i.qe = icmp eq ptr %i.qb, %i.qd
  br i1 %i.qe, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16882)
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qb, i64 64
  %i.qg = load ptr, ptr %i.qf, align 8, !alias.scope !16879, !noalias !16884, !nonnull !4, !noundef !4 ; 4 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qd, i64 64
  %i.qi = load ptr, ptr %i.qh, align 8, !alias.scope !16882, !noalias !16885, !nonnull !4, !noundef !4 ; 4 uses
  %i.qj = icmp eq ptr %i.qg, %i.qi
  br i1 %i.qj, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16889)
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  %i.ql = load i64, ptr %i.qk, align 8, !alias.scope !16886, !noalias !16891, !noundef !4 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  %i.qn = load i64, ptr %i.qm, align 8, !alias.scope !16889, !noalias !16892, !noundef !4
  %i.qo = icmp eq i64 %i.ql, %i.qn
  br i1 %i.qo, label %bb.cv, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cv:                                            ; preds = %bb.cu
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  %i.qr = load ptr, ptr %i.qp, align 8, !alias.scope !16889, !noalias !16892, !nonnull !4, !noundef !4
  %i.qs = load ptr, ptr %i.qq, align 8, !alias.scope !16886, !noalias !16891, !nonnull !4, !noundef !4
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %i.qv = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.qt, ptr noundef nonnull %i.qu, i64 noundef %i.ql), !noalias !16893
  br i1 %i.qv, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i18, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i18: ; preds = %bb.cv
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qg, i64 32
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qi, i64 32
  %i.qy = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qx), !noalias !16894
  br i1 %i.qy, label %bb.cw, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cw:                                            ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i18, %bb.ct
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qb, i64 32
  %i.ra = load i64, ptr %i.qz, align 8, !alias.scope !16879, !noalias !16884, !noundef !4 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qd, i64 32
  %i.rc = load i64, ptr %i.rb, align 8, !alias.scope !16882, !noalias !16885, !noundef !4
  %i.rd = icmp eq i64 %i.ra, %i.rc
  br i1 %i.rd, label %bb.cx, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cx:                                            ; preds = %bb.cw
  %i.re = getelementptr inbounds nuw i8, ptr %i.qd, i64 24
  %i.rf = load ptr, ptr %i.re, align 8, !alias.scope !16882, !noalias !16885, !nonnull !4, !noundef !4
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qb, i64 24
  %i.rh = load ptr, ptr %i.rg, align 8, !alias.scope !16879, !noalias !16884, !nonnull !4, !noundef !4
  %i.ri = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.rh, ptr noundef nonnull %i.rf, i64 noundef %i.ra), !noalias !16894
  br i1 %i.ri, label %bb.cy, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cy:                                            ; preds = %bb.cx
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qb, i64 56
  %i.rk = load i64, ptr %i.rj, align 8, !alias.scope !16879, !noalias !16884, !noundef !4 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qd, i64 56
  %i.rm = load i64, ptr %i.rl, align 8, !alias.scope !16882, !noalias !16885, !noundef !4
  %i.rn = icmp eq i64 %i.rk, %i.rm
  br i1 %i.rn, label %bb.cz, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cz:                                            ; preds = %bb.cy
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qd, i64 48
  %i.rp = load ptr, ptr %i.ro, align 8, !alias.scope !16882, !noalias !16885, !nonnull !4, !noundef !4
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qb, i64 48
  %i.rr = load ptr, ptr %i.rq, align 8, !alias.scope !16879, !noalias !16884, !nonnull !4, !noundef !4
  %i.rs = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.rr, ptr noundef nonnull %i.rp, i64 noundef %i.rk), !noalias !16894
  br label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.da:                                            ; preds = %bb.b
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16898)
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.rw = load i8, ptr %i.rv, align 16, !range !5, !alias.scope !16895, !noalias !16898, !noundef !4
  %i.rx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ry = load i8, ptr %i.rx, align 16, !range !5, !alias.scope !16898, !noalias !16895, !noundef !4
  %i.rz = icmp eq i8 %i.rw, %i.ry
  br i1 %i.rz, label %bb.db, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.db:                                            ; preds = %bb.da
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.sb = load i8, ptr %i.sa, align 1, !range !5, !alias.scope !16895, !noalias !16898, !noundef !4
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.sd = load i8, ptr %i.sc, align 1, !range !5, !alias.scope !16898, !noalias !16895, !noundef !4
  %i.se = icmp eq i8 %i.sb, %i.sd
  br i1 %i.se, label %bb.dc, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dc:                                            ; preds = %bb.db
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16903)
  %i.sf = load ptr, ptr %i.rt, align 8, !alias.scope !16905, !noalias !16906, !noundef !4 ; 2 uses
  %i.sg = icmp ne ptr %i.sf, null                 ; 2 uses
  %i.sh = load ptr, ptr %i.ru, align 8, !alias.scope !16906, !noalias !16905, !noundef !4 ; 3 uses
  %i.si = icmp eq ptr %i.sh, null                 ; 3 uses
  %not..i.i = xor i1 %i.si, true
  %i.sj = xor i1 %i.sg, %i.si
  br i1 %i.sj, label %bb.dd, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.sg, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sh) ]
  tail call void @llvm.assume(i1 %not..i.i)
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.sl = load i64, ptr %i.sk, align 16, !alias.scope !16905, !noalias !16906, !noundef !4 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sn = load i64, ptr %i.sm, align 16, !alias.scope !16906, !noalias !16905, !noundef !4
  %i.so = icmp eq i64 %i.sl, %i.sn
  br i1 %i.so, label %bb.dg, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.df:                                            ; preds = %bb.dd
  tail call void @llvm.assume(i1 %i.si)
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.sq = load i64, ptr %i.sp, align 8, !alias.scope !16905, !noalias !16906, !noundef !4 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ss = load i64, ptr %i.sr, align 8, !alias.scope !16906, !noalias !16905, !noundef !4
  %i.st = icmp eq i64 %i.sq, %i.ss
  br i1 %i.st, label %_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dg:                                            ; preds = %bb.de
  %i.su = getelementptr inbounds nuw i8, ptr %i.sh, i64 16
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  %bcmp8.i.i = tail call i32 @bcmp(ptr nonnull %i.sv, ptr nonnull %i.su, i64 %i.sl), !noalias !16907
  %i.sw = icmp eq i32 %bcmp8.i.i, 0
  br i1 %i.sw, label %bb.dh, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dh:                                            ; preds = %bb.dg
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.sy = load i64, ptr %i.sx, align 16, !alias.scope !16905, !noalias !16906, !noundef !4 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ta = load i64, ptr %i.sz, align 16, !alias.scope !16906, !noalias !16905, !noundef !4
  %i.tb = icmp eq i64 %i.sy, %i.ta
  br i1 %i.tb, label %_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.dh, %bb.df
  %.sink.i.i = phi i64 [ 8, %bb.df ], [ 16, %bb.dh ] ; 2 uses
  %.sink14.i.i = phi i64 [ %i.sq, %bb.df ], [ %i.sy, %bb.dh ]
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ru, i64 %.sink.i.i
  %i.td = load ptr, ptr %i.tc, align 8, !alias.scope !16906, !noalias !16905, !nonnull !4, !noundef !4
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.tf = getelementptr inbounds nuw i8, ptr %i.rt, i64 %.sink.i.i
  %i.tg = load ptr, ptr %i.tf, align 8, !alias.scope !16905, !noalias !16906, !nonnull !4, !noundef !4
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  %bcmp9.i.i = tail call i32 @bcmp(ptr nonnull %i.th, ptr nonnull %i.te, i64 %.sink14.i.i), !noalias !16907
  %i.ti = icmp eq i32 %bcmp9.i.i, 0
  br i1 %i.ti, label %bb.di, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.di:                                            ; preds = %_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.tk = load ptr, ptr %i.tj, align 8, !alias.scope !16895, !noalias !16898, !nonnull !4, !noundef !4 ; 6 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.tm = load ptr, ptr %i.tl, align 8, !alias.scope !16898, !noalias !16895, !nonnull !4, !noundef !4 ; 6 uses
  %i.tn = icmp eq ptr %i.tk, %i.tm
  br i1 %i.tn, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16911)
  %i.to = getelementptr inbounds nuw i8, ptr %i.tk, i64 64
  %i.tp = load ptr, ptr %i.to, align 8, !alias.scope !16908, !noalias !16913, !nonnull !4, !noundef !4 ; 4 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tm, i64 64
  %i.tr = load ptr, ptr %i.tq, align 8, !alias.scope !16911, !noalias !16914, !nonnull !4, !noundef !4 ; 4 uses
  %i.ts = icmp eq ptr %i.tp, %i.tr
  br i1 %i.ts, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16918)
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tp, i64 24
  %i.tu = load i64, ptr %i.tt, align 8, !alias.scope !16915, !noalias !16920, !noundef !4 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tr, i64 24
  %i.tw = load i64, ptr %i.tv, align 8, !alias.scope !16918, !noalias !16921, !noundef !4
  %i.tx = icmp eq i64 %i.tu, %i.tw
  br i1 %i.tx, label %bb.dl, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dl:                                            ; preds = %bb.dk
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %i.ua = load ptr, ptr %i.ty, align 8, !alias.scope !16918, !noalias !16921, !nonnull !4, !noundef !4
  %i.ub = load ptr, ptr %i.tz, align 8, !alias.scope !16915, !noalias !16920, !nonnull !4, !noundef !4
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  %i.ue = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.uc, ptr noundef nonnull %i.ud, i64 noundef %i.tu), !noalias !16922
  br i1 %i.ue, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i20, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i20: ; preds = %bb.dl
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tp, i64 32
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tr, i64 32
  %i.uh = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.uf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ug), !noalias !16923
  br i1 %i.uh, label %bb.dm, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dm:                                            ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i20, %bb.dj
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  %i.uj = load i64, ptr %i.ui, align 8, !alias.scope !16908, !noalias !16913, !noundef !4 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tm, i64 32
  %i.ul = load i64, ptr %i.uk, align 8, !alias.scope !16911, !noalias !16914, !noundef !4
  %i.um = icmp eq i64 %i.uj, %i.ul
  br i1 %i.um, label %bb.dn, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dn:                                            ; preds = %bb.dm
  %i.un = getelementptr inbounds nuw i8, ptr %i.tm, i64 24
  %i.uo = load ptr, ptr %i.un, align 8, !alias.scope !16911, !noalias !16914, !nonnull !4, !noundef !4
  %i.up = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  %i.uq = load ptr, ptr %i.up, align 8, !alias.scope !16908, !noalias !16913, !nonnull !4, !noundef !4
  %i.ur = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.uq, ptr noundef nonnull %i.uo, i64 noundef %i.uj), !noalias !16923
  br i1 %i.ur, label %bb.do, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.do:                                            ; preds = %bb.dn
  %i.us = getelementptr inbounds nuw i8, ptr %i.tk, i64 56
  %i.ut = load i64, ptr %i.us, align 8, !alias.scope !16908, !noalias !16913, !noundef !4 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.tm, i64 56
  %i.uv = load i64, ptr %i.uu, align 8, !alias.scope !16911, !noalias !16914, !noundef !4
  %i.uw = icmp eq i64 %i.ut, %i.uv
  br i1 %i.uw, label %bb.dp, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dp:                                            ; preds = %bb.do
  %i.ux = getelementptr inbounds nuw i8, ptr %i.tm, i64 48
  %i.uy = load ptr, ptr %i.ux, align 8, !alias.scope !16911, !noalias !16914, !nonnull !4, !noundef !4
  %i.uz = getelementptr inbounds nuw i8, ptr %i.tk, i64 48
  %i.va = load ptr, ptr %i.uz, align 8, !alias.scope !16908, !noalias !16913, !nonnull !4, !noundef !4
  %i.vb = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.va, ptr noundef nonnull %i.uy, i64 noundef %i.ut), !noalias !16923
  br label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dq:                                            ; preds = %bb.b
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.vd = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16927)
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.vf = load i8, ptr %i.ve, align 16, !range !5, !alias.scope !16924, !noalias !16927, !noundef !4
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.vh = load i8, ptr %i.vg, align 16, !range !5, !alias.scope !16927, !noalias !16924, !noundef !4
  %i.vi = icmp eq i8 %i.vf, %i.vh
  br i1 %i.vi, label %bb.dr, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dr:                                            ; preds = %bb.dq
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.vk = load i8, ptr %i.vj, align 1, !range !5, !alias.scope !16924, !noalias !16927, !noundef !4
  %i.vl = getelementptr inbounds nuw i8, ptr %1, i64 289
  %i.vm = load i8, ptr %i.vl, align 1, !range !5, !alias.scope !16927, !noalias !16924, !noundef !4
  %i.vn = icmp eq i8 %i.vk, %i.vm
  br i1 %i.vn, label %bb.ds, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ds:                                            ; preds = %bb.dr
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.vp = load i64, ptr %i.vo, align 16, !alias.scope !16924, !noalias !16927, !noundef !4 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.vr = load i64, ptr %i.vq, align 16, !alias.scope !16927, !noalias !16924, !noundef !4
  %i.vs = icmp eq i64 %i.vp, %i.vr
  br i1 %i.vs, label %bb.dt, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dt:                                            ; preds = %bb.ds
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.vu = load ptr, ptr %i.vt, align 8, !alias.scope !16927, !noalias !16924, !nonnull !4, !noundef !4
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.vw = load ptr, ptr %i.vv, align 8, !alias.scope !16924, !noalias !16927, !nonnull !4, !noundef !4
  %bcmp.i22 = tail call i32 @bcmp(ptr nonnull %i.vw, ptr nonnull %i.vu, i64 %i.vp), !noalias !16929, !inline_history !16930
  %i.vx = icmp eq i32 %bcmp.i22, 0
  br i1 %i.vx, label %bb.du, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.du:                                            ; preds = %bb.dt
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.vz = load i64, ptr %i.vy, align 8, !range !133, !alias.scope !16924, !noalias !16927, !noundef !4
  %.not.i23 = icmp eq i64 %i.vz, -9223372036854775808
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.wb = load i64, ptr %i.wa, align 8, !range !133, !alias.scope !16927, !noalias !16924, !noundef !4
  %i.wc = icmp eq i64 %i.wb, -9223372036854775808 ; 2 uses
  br i1 %.not.i23, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  br i1 %i.wc, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.dx

bb.dw:                                            ; preds = %bb.du
  br i1 %i.wc, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.thread, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dx:                                            ; preds = %bb.dv
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.we = load i64, ptr %i.wd, align 8, !alias.scope !16924, !noalias !16927, !noundef !4 ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.wg = load i64, ptr %i.wf, align 8, !alias.scope !16927, !noalias !16924, !noundef !4
  %i.wh = icmp eq i64 %i.we, %i.wg
  br i1 %i.wh, label %bb.dy, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dy:                                            ; preds = %bb.dx
  %i.wi = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.wj = load ptr, ptr %i.wi, align 16, !alias.scope !16927, !noalias !16924, !nonnull !4, !noundef !4
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.wl = load ptr, ptr %i.wk, align 16, !alias.scope !16924, !noalias !16927, !nonnull !4, !noundef !4
  %.not35.not = icmp eq i64 %i.we, 0
  br i1 %.not35.not, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

bb.dz:                                            ; preds = %.lr.ph
  %i.wm = add nuw i64 %.sroa.01.0.i3036, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.wm, %i.we
  br i1 %exitcond.not, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.dy, %bb.dz
  %.sroa.01.0.i3036 = phi i64 [ %i.wm, %bb.dz ], [ 0, %bb.dy ] ; 3 uses
  %i.wn = getelementptr inbounds nuw [208 x i8], ptr %i.wl, i64 %.sroa.01.0.i3036
  %i.wo = getelementptr inbounds nuw [208 x i8], ptr %i.wj, i64 %.sroa.01.0.i3036
  %i.wp = tail call fastcc noundef zeroext i1 @_RNvXs1h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(208) %i.wn, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(208) %i.wo) #47, !noalias !16929, !inline_history !16931
  br i1 %i.wp, label %bb.dz, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.dz, %bb.dy, %bb.dw
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.wr = load i8, ptr %i.wq, align 16, !range !2194, !alias.scope !16924, !noalias !16927, !noundef !4
  %.not8.i = icmp eq i8 %i.wr, 41
end_hunk_20
