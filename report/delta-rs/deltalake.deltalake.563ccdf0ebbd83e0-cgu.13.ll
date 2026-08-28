Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.13?download=true
inline.NumInlined: 5997
inline.NumDeleted: 1809
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvYNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace9BoxedSpanNtNtNtB9_5trace4span4Span9add_eventINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !19, !noalias !14815, !nonnull !19
  call void %i.i(ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.e, i32 noundef range(i32 0, 1000000000) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !inline_history !14819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.c) #48
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

.critedge:                                        ; preds = %bb.e
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCskFSgV2vI2Ct_13opentelemetry6common8KeyValueEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %2) #48
          to label %.critedge unwind label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB4_ENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #1 {
bb.a:
  %.idx = shl nuw nsw i64 %1, 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14820)
  %i.e = load ptr, ptr %.sroa.0.03, align 8, !alias.scope !14820, !noalias !14823, !nonnull !19, !noundef !19
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(72) %2) #52, !noalias !14820, !inline_history !14825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14826)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !14826, !noalias !14829, !nonnull !19, !noundef !19
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(72) %2) #52, !noalias !14826, !inline_history !14825
  %i.g = icmp eq ptr %i.c, %i.a
  br i1 %i.g, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB5_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1V_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtBb_16delta_datafusion14table_provider4next4scan6replayINtB3D_14ScanFileStreamINtNtB1Z_3pin3PinINtNtB2B_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1Z_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBb_6errors15DeltaTableErrorENtNtB1Z_6marker4SendEL_EEEB5D_9poll_nexts_0Es_0Cs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(328) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [272 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.a, ptr noundef nonnull align 8 dereferenceable(264) %i.d, i64 264, i1 false)
  invoke void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNCINvMNtNtNtB1D_6kernel8snapshot6streamINtB2E_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtB11_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB45_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB1D_16delta_datafusion14table_provider4next4scan6replayINtB5y_14ScanFileStreamINtNtB11_3pin3PinINtNtB4w_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataB1z_ENtNtB11_6marker4SendEL_EEEB7z_9poll_nexts_0Es_00ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(272) %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !14831)
  call void @llvm.experimental.noalias.scope.decl(metadata !14834)
  %i.f = load i64, ptr %1, align 8, !range !98, !alias.scope !14837, !noundef !19
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs7p2uQeJxui2_9deltalake.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14838)
  call void @llvm.experimental.noalias.scope.decl(metadata !14841)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !14844, !nonnull !19, !noundef !19
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !14844
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #51
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs7p2uQeJxui2_9deltalake.exit unwind label %bb.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !14845)
  call void @llvm.experimental.noalias.scope.decl(metadata !14848)
  %i.l = load i64, ptr %1, align 8, !range !98, !alias.scope !14851, !noundef !19
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs7p2uQeJxui2_9deltalake.exit3, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14852)
  call void @llvm.experimental.noalias.scope.decl(metadata !14855)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !14858, !nonnull !19, !noundef !19
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !14858
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs7p2uQeJxui2_9deltalake.exit3

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n) #51
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs7p2uQeJxui2_9deltalake.exit3 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.b) #48
          to label %bb.j unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs7p2uQeJxui2_9deltalake.exit3: ; preds = %bb.f, %bb.e, %bb.g
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.b)
  ret void

bb.i:                                             ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs7p2uQeJxui2_9deltalake.exit, %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs7p2uQeJxui2_9deltalake.exit, %bb.h
  %.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs7p2uQeJxui2_9deltalake.exit ]
  resume { ptr, i32 } %.pn

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.b, %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.b) #48
          to label %bb.j unwind label %bb.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextEE10initializeNCINvB1a_11get_or_initNCNvCs7p2uQeJxui2_9deltalake41fallback_datafusion_task_context_provider0E0zE0E0B3W_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !19, !align !20, !noundef !19 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !align !20, !noundef !19 ; 2 uses
  store ptr null, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !114

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !14859
  %i.g = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 64, i64 noundef range(i64 1, 129) 8) #46, !noalias !14859 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_RNCINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB5_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextEE10initializeNCINvB4_11get_or_initNCNvCs7p2uQeJxui2_9deltalake41fallback_datafusion_task_context_provider0E0zE0B3a_.exit, !prof !28

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #47
          to label %.noexc.i.i.i unwind label %bb.d

.noexc.i.i.i:                                     ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #48
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i

_RNCINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB5_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextEE10initializeNCINvB4_11get_or_initNCNvCs7p2uQeJxui2_9deltalake41fallback_datafusion_task_context_provider0E0zE0B3a_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.d, align 8
  ret void

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtNtBa_6poison6rwlock6RwLockNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace20GlobalTracerProviderEE10initializeNCINvB1a_11get_or_initNCNvB2d_22global_tracer_provider0E0zE0E0Cs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !20, !noundef !19 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !20, !noundef !19 ; 4 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !14862
  %i.c = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 16, i64 noundef range(i64 1, 129) 8) #46, !noalias !14862 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %_RNCINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB5_8OnceLockINtNtNtB7_6poison6rwlock6RwLockNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace20GlobalTracerProviderEE10initializeNCINvB4_11get_or_initNCNvB1s_22global_tracer_provider0E0zE0Cs7p2uQeJxui2_9deltalake.exit, !prof !28

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #47, !noalias !14862
  unreachable

_RNCINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB5_8OnceLockINtNtNtB7_6poison6rwlock6RwLockNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace20GlobalTracerProviderEE10initializeNCINvB4_11get_or_initNCNvB1s_22global_tracer_provider0E0zE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  store i64 1, ptr %i.c, align 8, !noalias !14869
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !14869
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.b, i8 0, i64 9, i1 false)
  %.sroa.617.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %.sroa.617.0..sroa_idx.i, align 8
  %.sroa.718.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @93, ptr %.sroa.718.0..sroa_idx.i, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB1a_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zE0E0B39_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !19, !align !20, !noundef !19 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !align !20, !noundef !19 ; 2 uses
  store ptr null, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.h, label %bb.b, !prof !114

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14870
  call void @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB2_7Runtime3new(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.b), !noalias !14870
  call void @llvm.experimental.noalias.scope.decl(metadata !14875)
  %i.e = load i64, ptr %i.b, align 8, !range !644, !alias.scope !14875, !noalias !14878, !noundef !19
  %i.f = icmp eq i64 %i.e, 2
  br i1 %i.f, label %bb.c, label %_RNCINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB5_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB4_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zE0B2n_.exit, !prof !114

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14880
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !14875, !noalias !14878, !nonnull !19, !noundef !19
  store ptr %i.h, ptr %i.a, align 8, !noalias !14880
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 33, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @97, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #47
          to label %bb.e unwind label %bb.d, !noalias !14880

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #48
          to label %bb.g unwind label %bb.f, !noalias !14880

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !14880
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i

_RNCINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB5_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB4_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zE0B2n_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14870
  ret void

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockbE10initializeNCINvB1a_11get_or_initNCNvB1a_10try_insert0E0zE0E0Cs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !20, !noundef !19 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14884)
  %i.b = load i8, ptr %.sroa.0.0.copyload, align 1, !range !75, !alias.scope !14887, !noundef !19 ; 2 uses
  store i8 2, ptr %.sroa.0.0.copyload, align 1, !alias.scope !14887
  %.not.i.i.i = icmp eq i8 %i.b, 2
  br i1 %.not.i.i.i, label %bb.c, label %_RNCINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB5_8OnceLockbE10initializeNCINvB4_11get_or_initNCNvB4_10try_insert0E0zE0Cs7p2uQeJxui2_9deltalake.exit, !prof !114

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #50, !noalias !14887
  unreachable

_RNCINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB5_8OnceLockbE10initializeNCINvB4_11get_or_initNCNvB4_10try_insert0E0zE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  store i8 %i.b, ptr %.sroa.5.sroa.0.0.copyload, align 1
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockmE10initializeNCINvB1a_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zE0E0B2m_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !20, !noundef !19 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !114

bb.b:                                             ; preds = %bb.a
  %.val.i = load i32, ptr %.sroa.0.0.copyload, align 4, !noundef !19
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  store i32 %.val.i, ptr %.sroa.5.sroa.0.0.copyload, align 4
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB6_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3m_5error5ErrorEEs_0Cs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(176) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(112) %i.d, i64 112, i1 false)
  invoke void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2a_5error5ErrorENCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB3p_8protocol11checkpoints21create_checkpoint_for000BW_Es_00ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !14888)
  call void @llvm.experimental.noalias.scope.decl(metadata !14891)
  %i.f = load i64, ptr %1, align 8, !range !98, !alias.scope !14894, !noundef !19
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs7p2uQeJxui2_9deltalake.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14895)
  call void @llvm.experimental.noalias.scope.decl(metadata !14898)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !14901, !nonnull !19, !noundef !19
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !14901
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #51
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs7p2uQeJxui2_9deltalake.exit unwind label %bb.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !14902)
  call void @llvm.experimental.noalias.scope.decl(metadata !14905)
  %i.l = load i64, ptr %1, align 8, !range !98, !alias.scope !14908, !noundef !19
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs7p2uQeJxui2_9deltalake.exit3, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14909)
  call void @llvm.experimental.noalias.scope.decl(metadata !14912)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !14915, !nonnull !19, !noundef !19
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !14915
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs7p2uQeJxui2_9deltalake.exit3

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n) #51
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs7p2uQeJxui2_9deltalake.exit3 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.b) #48
          to label %bb.j unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs7p2uQeJxui2_9deltalake.exit3: ; preds = %bb.f, %bb.e, %bb.g
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.b)
  ret void

bb.i:                                             ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs7p2uQeJxui2_9deltalake.exit, %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs7p2uQeJxui2_9deltalake.exit, %bb.h
  %.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs7p2uQeJxui2_9deltalake.exit ]
  resume { ptr, i32 } %.pn

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.b, %bb.d
end_hunk_0
begin_hunk_1_@_RNCNvXs_NtCsjyY8HP3IvQ6_12object_store6uploadINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB6_15MultipartUploadEL_EB1h_8complete0Cs7p2uQeJxui2_9deltalake:bb.a
  %i.a = alloca [72 x i8], align 8                ; 2 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !3235, !noundef !19
  switch i8 %i.d, label %default.unreachable9 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !19, !align !20, !noundef !19 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !19, !noundef !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !19, !align !20, !noundef !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !19, !nonnull !19
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
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #50
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #50
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
  %.val4 = load ptr, ptr %i.s, align 8, !nonnull !19, !align !20, !noundef !19
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val, ptr nonnull %.val4) #48
          to label %.body unwind label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.b, align 8, !range !851, !noundef !19
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
  %.val6 = load ptr, ptr %i.v, align 8, !nonnull !19, !align !20, !noundef !19 ; 5 uses
  %i.w = load ptr, ptr %.val6, align 8, !invariant.load !19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void %i.w(ptr noundef nonnull %.val5)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !45, !invariant.load !19 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !46, !invariant.load !19
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !45, !invariant.load !19 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !46, !invariant.load !19
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #46
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  br label %common.ret

bb.q:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextEE10initializeNCINvB1f_11get_or_initNCNvCs7p2uQeJxui2_9deltalake41fallback_datafusion_task_context_provider0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB41_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !19, !align !20, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15146)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !15146, !noalias !15149, !align !20, !noundef !19 ; 2 uses
  store ptr null, ptr %i.c, align 8, !alias.scope !15146, !noalias !15149
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.g, label %bb.b, !prof !114

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15152
  call void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b), !noalias !15152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15152
  store i64 1, ptr %i.a, align 8, !noalias !15152
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8, !noalias !15152
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !15152
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15153
  %i.g = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 64, i64 noundef range(i64 1, 129) 8) #46, !noalias !15153 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextEE10initializeNCINvB1d_11get_or_initNCNvCs7p2uQeJxui2_9deltalake41fallback_datafusion_task_context_provider0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3Z_.exit, !prof !28

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #47
          to label %.noexc.i.i.i.i.i unwind label %bb.d, !noalias !15152

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #48
          to label %bb.f unwind label %bb.e, !noalias !15152

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !15152
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #50, !noalias !15152
  unreachable

_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextEE10initializeNCINvB1d_11get_or_initNCNvCs7p2uQeJxui2_9deltalake41fallback_datafusion_task_context_provider0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3Z_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !15152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15152
  store ptr %i.g, ptr %i.d, align 8, !noalias !15152
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtNtBf_6poison6rwlock6RwLockNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace20GlobalTracerProviderEE10initializeNCINvB1f_11get_or_initNCNvB2i_22global_tracer_provider0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !20, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15156)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !15156, !noalias !15159, !align !20, !noundef !19 ; 4 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !15156, !noalias !15159
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15162
  %i.c = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 16, i64 noundef range(i64 1, 129) 8) #46, !noalias !15162 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtNtBd_6poison6rwlock6RwLockNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace20GlobalTracerProviderEE10initializeNCINvB1d_11get_or_initNCNvB2g_22global_tracer_provider0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs7p2uQeJxui2_9deltalake.exit, !prof !28

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #47, !noalias !15162
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #50, !noalias !15169
  unreachable

_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtNtBd_6poison6rwlock6RwLockNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace20GlobalTracerProviderEE10initializeNCINvB1d_11get_or_initNCNvB2g_22global_tracer_provider0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  store i64 1, ptr %i.c, align 8, !noalias !15170
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !15170
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.b, i8 0, i64 9, i1 false), !noalias !15169
  %.sroa.617.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %.sroa.617.0..sroa_idx.i.i.i, align 8, !noalias !15169
  %.sroa.718.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @93, ptr %.sroa.718.0..sroa_idx.i.i.i, align 8, !noalias !15169
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB1f_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB3e_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !19, !align !20, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15171)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !15171, !noalias !15174, !align !20, !noundef !19 ; 2 uses
  store ptr null, ptr %i.c, align 8, !alias.scope !15171, !noalias !15174
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.h, label %bb.b, !prof !114

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15177
  call void @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB2_7Runtime3new(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.b), !noalias !15177
  call void @llvm.experimental.noalias.scope.decl(metadata !15182)
  %i.e = load i64, ptr %i.b, align 8, !range !644, !alias.scope !15182, !noalias !15185, !noundef !19
  %i.f = icmp eq i64 %i.e, 2
  br i1 %i.f, label %bb.c, label %_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB1d_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3c_.exit, !prof !114

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15187
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !15182, !noalias !15185, !nonnull !19, !noundef !19
  store ptr %i.h, ptr %i.a, align 8, !noalias !15187
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 33, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @97, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #47
          to label %bb.e unwind label %bb.d, !noalias !15187

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #48
          to label %bb.g unwind label %bb.f, !noalias !15187

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !15187
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #50, !noalias !15188
  unreachable

_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB1d_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3c_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !15188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15177
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockbE10initializeNCINvB1f_11get_or_initNCNvB1f_10try_insert0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !20, !noundef !19 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15189)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !alias.scope !15189, !noalias !15192 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !15189, !noalias !15192 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !15189, !noalias !15192
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15198)
  %i.b = load i8, ptr %.sroa.0.0.copyload.i.i, align 1, !range !75, !alias.scope !15201, !noalias !15202, !noundef !19 ; 2 uses
  store i8 2, ptr %.sroa.0.0.copyload.i.i, align 1, !alias.scope !15201, !noalias !15202
  %.not.i.i.i.i.i = icmp eq i8 %i.b, 2
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockbE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs7p2uQeJxui2_9deltalake.exit, !prof !114

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #50, !noalias !15203
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #50, !noalias !15202
  unreachable

_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockbE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  store i8 %i.b, ptr %.sroa.5.sroa.0.0.copyload.i.i, align 1, !noalias !15202
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockmE10initializeNCINvB1f_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2r_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !20, !noundef !19 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15204)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !alias.scope !15204, !noalias !15207 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !15204, !noalias !15207 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !15204, !noalias !15207
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.b, label %_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockmE10initializeNCINvB1d_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2p_.exit, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #50, !noalias !15210
  unreachable

_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockmE10initializeNCINvB1d_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zE0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2p_.exit: ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %.sroa.0.0.copyload.i.i, align 4, !noalias !15210, !noundef !19
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  store i32 %.val.i.i.i, ptr %.sroa.5.sroa.0.0.copyload.i.i, align 4, !noalias !15210
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE10initializeCs7p2uQeJxui2_9deltalake(ptr noundef nonnull returned align 8 %0) unnamed_addr #2 {
bb.a:
  tail call void @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eager7destroyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateECs7p2uQeJxui2_9deltalake)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCs7p2uQeJxui2_9deltalake(ptr noundef nonnull returned align 8 %0) unnamed_addr #2 {
bb.a:
  tail call void @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eager7destroyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextECs7p2uQeJxui2_9deltalake)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !19 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @99, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %4, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %1, ptr %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx.sroa_idx, align 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15211
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 256, i64 noundef range(i64 1, 129) 128) #46, !noalias !15211 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !28

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #47
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1R_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEINtNtB1R_4sync3ArcNtNtNtBN_9scheduler14current_thread6HandleEEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #48
end_hunk_1
begin_hunk_2_@_RNvXs2_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1s_8Snapshot12commit_infos0s0_00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !16488, !noalias !16491
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !16488, !noalias !16491
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !16488, !noalias !16491
  %i.px = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store i8 -128, ptr %i.px, align 8, !alias.scope !16488, !noalias !16491
  invoke void @_RINvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB6_12DeserializerNtNtB8_4read9SliceReadE9into_iterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.p)
          to label %bb.ej unwind label %bb.eh, !noalias !16307

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !16303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !16303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.q, i64 80, i1 false), !noalias !16303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !16303
  %.sroa.386.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.489.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.494.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 11 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 6 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 15 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 4 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 5 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 8 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.m, i64 192 ; 9 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 5 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.m, i64 152 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 5 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.m, i64 216 ; 6 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 5 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 5 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.m, i64 168 ; 5 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 4 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.m, i64 120 ; 4 uses
  br label %bb.ek

bb.ek:                                            ; preds = %.noexc, %bb.ej
  invoke void @_RNvXsj_NtCseqDwI8vvjGQ_10serde_json2deINtB5_18StreamDeserializerNtNtB7_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.o)
          to label %bb.en unwind label %bb.em, !noalias !16307

bb.el:                                            ; preds = %.body, %bb.em
  %.pn8.pn.i = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.qn, %bb.em ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtBL_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(80) %i.o) #48
          to label %.body29.i unwind label %bb.s, !noalias !16307

bb.em:                                            ; preds = %bb.ek
  %i.qn = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.en:                                            ; preds = %bb.ek
  %i.qo = load i64, ptr %i.n, align 8, !range !3736, !noalias !16303, !noundef !19 ; 7 uses
  %.not7.i = icmp eq i64 %i.qo, 11
  br i1 %.not7.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %.sroa.386.0.copyload.i = load ptr, ptr %.sroa.386.0..sroa_idx.i, align 8, !noalias !16303 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !16303
  %i.qp = icmp eq i64 %i.qo, 10
  br i1 %i.qp, label %bb.iq, label %bb.fa

bb.ep:                                            ; preds = %bb.en
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtBL_4read9SliceReadEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.eq, !noalias !16307

bb.eq:                                            ; preds = %bb.ep
  %i.qq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.o)
          to label %.body29.i unwind label %bb.er, !noalias !16307

bb.er:                                            ; preds = %bb.eq
  %i.qr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !16307
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtBL_4read9SliceReadEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.ep
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtBL_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.es, !noalias !16307

.body29.i:                                        ; preds = %bb.fd, %bb.es, %bb.eq, %bb.el
  %.pn11.i = phi { ptr, i32 } [ %.pn8.pn.i, %bb.el ], [ %i.qq, %bb.eq ], [ %i.qs, %bb.es ], [ %i.ru, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !16303
  br label %bb.is

bb.es:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtBL_4read9SliceReadEECs7p2uQeJxui2_9deltalake.exit.i42.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtBL_4read9SliceReadEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %.body29.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtBL_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtBL_4read9SliceReadEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !16303
  call void @llvm.experimental.noalias.scope.decl(metadata !16493)
  call void @llvm.experimental.noalias.scope.decl(metadata !16496)
  %i.qt = load ptr, ptr %i.s, align 8, !alias.scope !16499, !noalias !16303, !nonnull !19, !align !20, !noundef !19
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 32
  %i.qv = load ptr, ptr %i.qu, align 8, !noalias !16500, !nonnull !19, !noundef !19
  %i.qw = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.qx = load ptr, ptr %.sroa.483.0..sroa_idx.i, align 8, !alias.scope !16499, !noalias !16303, !noundef !19
  %i.qy = load i64, ptr %i.pv, align 8, !alias.scope !16499, !noalias !16303, !noundef !19
  invoke void %i.qv(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qw, ptr noundef %i.qx, i64 noundef %i.qy)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.eu, !noalias !16307, !inline_history !3286

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7p2uQeJxui2_9deltalake.exit52.i: ; preds = %bb.h, %bb.p, %bb.q, %bb.d, %.body25.i, %bb.ee, %bb.is, %bb.eu
  %.pn14.pn.i = phi { ptr, i32 } [ %.pn11.pn.i, %bb.is ], [ %i.rd, %bb.eu ], [ %i.z, %bb.d ], [ %i.pt, %bb.ee ], [ %eh.lpad-body26.i, %.body25.i ], [ %i.ae, %bb.h ], [ %i.aq, %bb.p ], [ %i.aq, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !16303
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16501)
  call void @llvm.experimental.noalias.scope.decl(metadata !16504)
  %i.ra = load ptr, ptr %i.qz, align 8, !alias.scope !16507, !noalias !16303, !nonnull !19, !noundef !19
  %i.rb = atomicrmw sub ptr %i.ra, i64 1 release, align 8, !noalias !16508
  %i.rc = icmp eq i64 %i.rb, 1
  br i1 %i.rc, label %bb.et, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.et:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7p2uQeJxui2_9deltalake.exit52.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.qz) #51
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.s, !noalias !16307

bb.eu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtBL_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEECs7p2uQeJxui2_9deltalake.exit46.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtBL_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEECs7p2uQeJxui2_9deltalake.exit.i
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7p2uQeJxui2_9deltalake.exit52.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtBL_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !16303
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16509)
  call void @llvm.experimental.noalias.scope.decl(metadata !16512)
  %i.rf = load ptr, ptr %i.re, align 8, !alias.scope !16515, !noalias !16303, !nonnull !19, !noundef !19
  %i.rg = atomicrmw sub ptr %i.rf, i64 1 release, align 8, !noalias !16516
  %i.rh = icmp eq i64 %i.rg, 1
  br i1 %i.rh, label %bb.ev, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit35.i

bb.ev:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7p2uQeJxui2_9deltalake.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.re) #51
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit35.i unwind label %bb.ew, !noalias !16307

bb.ew:                                            ; preds = %bb.ev
  %i.ri = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #48
          to label %.body37.i unwind label %bb.s, !noalias !16307

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit35.i: ; preds = %bb.ev, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.ex, !noalias !16307

bb.ex:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit35.i
  %i.rj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body37.i unwind label %bb.ey, !noalias !16307

bb.ey:                                            ; preds = %bb.ex
  %i.rk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !16307
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit35.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB8_8Snapshot12commit_infos0s0_00Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.ez, !noalias !16307

.body37.i:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i, %bb.iu, %bb.it, %bb.ez, %bb.ex, %bb.ew
  %.pn17.i = phi { ptr, i32 } [ %i.ri, %bb.ew ], [ %i.wh, %bb.it ], [ %.pn14.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i ], [ %i.rj, %bb.ex ], [ %i.rl, %bb.ez ], [ %i.wi, %bb.iu ]
  store i8 2, ptr %i.v, align 8, !noalias !16303
  resume { ptr, i32 } %.pn17.i

bb.ez:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i54.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %.body37.i

bb.fa:                                            ; preds = %bb.eo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.489.0..sroa_idx.i, i64 256, i1 false), !noalias !16303
  store i64 %i.qo, ptr %i.m, align 8, !noalias !16303
  store ptr %.sroa.386.0.copyload.i, ptr %.sroa.494.0..sroa_idx.i, align 8, !noalias !16303
  %i.rm = icmp ne i64 %i.qo, 4
  call void @llvm.assume(i1 %i.rm)
  %i.rn = icmp eq i64 %i.qo, 8
  br i1 %i.rn, label %bb.fb, label %bb.fg

bb.fb:                                            ; preds = %bb.fa
  %i.ro = ptrtoint ptr %.sroa.386.0.copyload.i to i64
  %i.rp = load <2 x i64>, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !16303
  %.sroa.4127.0.copyload.i = load i64, ptr %i.pz, align 8, !noalias !16303
  %.sroa.5128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.5128.0.copyload.i = load ptr, ptr %.sroa.5128.0..sroa_idx.i, align 8, !noalias !16303
  %i.rq = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.i, ptr noundef nonnull align 8 dereferenceable(24) %i.rq, i64 24, i1 false), !noalias !16303
  %i.rr = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.14109.i, ptr noundef nonnull align 8 dereferenceable(32) %i.rr, i64 32, i1 false), !noalias !16303
  %i.rs = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.15.i, ptr noundef nonnull align 8 dereferenceable(160) %i.rs, i64 160, i1 false), !noalias !16303
  br label %bb.fc

bb.fc:                                            ; preds = %bb.iq, %bb.fb
  %.sroa.095.2.i = phi i64 [ 3, %bb.iq ], [ %i.ro, %bb.fb ]
  %.sroa.12.2.i = phi ptr [ undef, %bb.iq ], [ %.sroa.5128.0.copyload.i, %bb.fb ]
  %.sroa.9102.sroa.0.2.i = phi i64 [ %i.vp, %bb.iq ], [ %.sroa.4127.0.copyload.i, %bb.fb ]
  %i.rt = phi <2 x i64> [ <i64 undef, i64 -9223372036854775739>, %bb.iq ], [ %i.rp, %bb.fb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !16303
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtBL_4read9SliceReadEECs7p2uQeJxui2_9deltalake.exit.i42.i unwind label %bb.fd, !noalias !16307

bb.fd:                                            ; preds = %bb.fc
  %i.ru = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.o)
          to label %.body29.i unwind label %bb.fe, !noalias !16307

bb.fe:                                            ; preds = %bb.fd
  %i.rv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !16307
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtBL_4read9SliceReadEECs7p2uQeJxui2_9deltalake.exit.i42.i: ; preds = %bb.fc
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtBL_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEECs7p2uQeJxui2_9deltalake.exit46.i unwind label %bb.es, !noalias !16307

bb.ff:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionECs7p2uQeJxui2_9deltalake.exit.i.invoke, %bb.ip, %bb.ik, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEECs7p2uQeJxui2_9deltalake.exit.i2.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8MetadataECs7p2uQeJxui2_9deltalake.exit.i
  %i.rw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i4, %bb.fl, %.body29.i.i, %.body.i5.i, %bb.gt, %.body14.i14.i, %bb.hn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit7.i.i, %bb.ib, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit.i36.i, %bb.ii, %bb.in, %bb.ff
  %eh.lpad-body = phi { ptr, i32 } [ %i.rw, %bb.ff ], [ %.pn.i37.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit.i36.i ], [ %eh.lpad-body.i.i, %.body.i.i4 ], [ %.pn8.i.i2, %.body29.i.i ], [ %eh.lpad-body.i6.i, %.body.i5.i ], [ %.pn6.i15.i, %.body14.i14.i ], [ %.pn2.i27.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit7.i.i ], [ %i.sc, %bb.fl ], [ %i.tk, %bb.gt ], [ %i.ui, %bb.hn ], [ %i.va, %bb.ib ], [ %.pn.i37.i, %bb.ii ], [ %i.vm, %bb.in ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !16303
  br label %bb.el

.noexc:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionECs7p2uQeJxui2_9deltalake.exit.i.invoke, %bb.ip, %bb.ik, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEECs7p2uQeJxui2_9deltalake.exit.i2.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8MetadataECs7p2uQeJxui2_9deltalake.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit2.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit9.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions24DeletionVectorDescriptorEECs7p2uQeJxui2_9deltalake.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !16303
  br label %bb.ek

bb.fg:                                            ; preds = %bb.fa
  %i.rx = add nsw i64 %i.qo, -2
  %.inv.i = icmp samesign ult i64 %i.qo, 2
  %i.ry = select i1 %.inv.i, i64 2, i64 %i.rx
  switch i64 %i.ry, label %bb.fh [
    i64 0, label %bb.fo
    i64 1, label %bb.gn
    i64 2, label %bb.gw
    i64 3, label %bb.hq
    i64 4, label %bb.ie
    i64 5, label %bb.im
    i64 6, label %bb.ip
  ]

bb.fh:                                            ; preds = %bb.fg
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %.sroa.494.0..sroa_idx.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i5 unwind label %bb.fi, !noalias !16307

bb.fi:                                            ; preds = %bb.fh
  %i.rz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %.sroa.494.0..sroa_idx.i)
          to label %.body.i.i4 unwind label %bb.fj, !noalias !16307

bb.fj:                                            ; preds = %bb.fi
  %i.sa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !16307
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i5: ; preds = %bb.fh
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %.sroa.494.0..sroa_idx.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i6 unwind label %bb.fk, !noalias !16307

bb.fk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i5
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i4

.body.i.i4:                                       ; preds = %bb.fk, %bb.fi
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.sb, %bb.fk ], [ %i.rz, %bb.fi ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pz) #48
          to label %.body unwind label %bb.fn, !noalias !16307

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i6: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i5
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionECs7p2uQeJxui2_9deltalake.exit.i.invoke unwind label %bb.fl, !noalias !16307

bb.fl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i6
  %i.sc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pz)
          to label %.body unwind label %bb.fm, !noalias !16307

bb.fm:                                            ; preds = %bb.fl
  %i.sd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !16307
  unreachable

bb.fn:                                            ; preds = %.body.i.i4
  %i.se = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !16307
  unreachable

bb.fo:                                            ; preds = %bb.fg
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.py)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i3.i unwind label %bb.fp, !noalias !16307

bb.fp:                                            ; preds = %bb.fo
  %i.sf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.py)
          to label %.body.i1.i unwind label %bb.fq, !noalias !16307

bb.fq:                                            ; preds = %bb.fp
  %i.sg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !16307
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i3.i: ; preds = %bb.fo
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.py)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i4.i unwind label %bb.fr, !noalias !16307

bb.fr:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i3.i
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1.i

.body.i1.i:                                       ; preds = %bb.fr, %bb.fp
  %eh.lpad-body.i2.i = phi { ptr, i32 } [ %i.sh, %bb.fr ], [ %i.sf, %bb.fp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qk) #48
          to label %.body10.i.i unwind label %bb.gm, !noalias !16307

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i4.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i3.i
  %i.si = load i64, ptr %i.qk, align 8, !range !645, !alias.scope !16517, !noalias !16307, !noundef !19
  %i.sj = icmp eq i64 %i.si, -9223372036854775808
  br i1 %i.sj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.fs

bb.fs:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i4.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.ft, !noalias !16307

bb.ft:                                            ; preds = %bb.fs
  %i.sk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qk)
          to label %.body10.i.i unwind label %bb.fu, !noalias !16307

bb.fu:                                            ; preds = %bb.ft
  %i.sl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !16307
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.fs
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.fv, !noalias !16307

.body10.i.i:                                      ; preds = %bb.fv, %bb.ft, %.body.i1.i
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i2.i, %.body.i1.i ], [ %i.sm, %bb.fv ], [ %i.sk, %bb.ft ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qd) #48
          to label %.body14.i.i unwind label %bb.gm, !noalias !16307

bb.fv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %.body10.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i4.i
  %i.sn = load i64, ptr %i.qd, align 8, !range !645, !alias.scope !16524, !noalias !16307, !noundef !19
  %i.so = icmp eq i64 %i.sn, -9223372036854775808
  br i1 %i.so, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit17.i.i, label %bb.fw

bb.fw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i13.i.i unwind label %bb.fx, !noalias !16307

bb.fx:                                            ; preds = %bb.fw
  %i.sp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qd)
          to label %.body14.i.i unwind label %bb.fy, !noalias !16307

bb.fy:                                            ; preds = %bb.fx
  %i.sq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !16307
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i13.i.i: ; preds = %bb.fw
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit17.i.i unwind label %bb.fz, !noalias !16307

.body14.i.i:                                      ; preds = %bb.fz, %bb.fx, %.body10.i.i
  %.pn2.i.i1 = phi { ptr, i32 } [ %.pn.i.i, %.body10.i.i ], [ %i.sr, %bb.fz ], [ %i.sp, %bb.fx ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions6FormatECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.ql) #48
          to label %.body20.i.i unwind label %bb.gm, !noalias !16307

bb.fz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i13.i.i
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i.i
end_hunk_2
begin_hunk_3_@_RNvXs2_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1s_8Snapshot12commit_infos0s0_00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i30.i: ; preds = %bb.hq
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i31.i unwind label %bb.ht, !noalias !16307

bb.ht:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i30.i
  %i.un = landingpad { ptr, i32 }
          cleanup
  br label %.body.i23.i

.body.i23.i:                                      ; preds = %bb.ht, %bb.hr
  %eh.lpad-body.i24.i = phi { ptr, i32 } [ %i.un, %bb.ht ], [ %i.ul, %bb.hr ] ; 2 uses
  %i.uo = load ptr, ptr %i.qc, align 8, !alias.scope !16549, !noalias !16307, !noundef !19
  %i.up = icmp eq ptr %i.uo, null
  br i1 %i.up, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit.i25.i, label %bb.hu

bb.hu:                                            ; preds = %.body.i23.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.qc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit.i25.i unwind label %bb.id, !noalias !16307

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i31.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i30.i
  %i.uq = load ptr, ptr %i.qc, align 8, !alias.scope !16554, !noalias !16307, !noundef !19
  %i.ur = icmp eq ptr %i.uq, null
  br i1 %i.ur, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit5.i.i, label %bb.hv

bb.hv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i31.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.qc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit5.i.i unwind label %bb.hx, !noalias !16307

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit.i25.i: ; preds = %bb.hx, %bb.hu, %.body.i23.i
  %.pn.i26.i = phi { ptr, i32 } [ %i.uu, %bb.hx ], [ %eh.lpad-body.i24.i, %bb.hu ], [ %eh.lpad-body.i24.i, %.body.i23.i ] ; 2 uses
  %i.us = load ptr, ptr %i.qd, align 8, !alias.scope !16557, !noalias !16307, !noundef !19
  %i.ut = icmp eq ptr %i.us, null
  br i1 %i.ut, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit7.i.i, label %bb.hw

bb.hw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit.i25.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.qd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit7.i.i unwind label %bb.id, !noalias !16307

bb.hx:                                            ; preds = %bb.hv
  %i.uu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit.i25.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit5.i.i: ; preds = %bb.hv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i31.i
  %i.uv = load ptr, ptr %i.qd, align 8, !alias.scope !16560, !noalias !16307, !noundef !19
  %i.uw = icmp eq ptr %i.uv, null
  br i1 %i.uw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit9.i.i, label %bb.hy

bb.hy:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit5.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.qd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit9.i.i unwind label %bb.hz, !noalias !16307

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit7.i.i: ; preds = %bb.hz, %bb.hw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit.i25.i
  %.pn2.i27.i = phi { ptr, i32 } [ %i.ux, %bb.hz ], [ %.pn.i26.i, %bb.hw ], [ %.pn.i26.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit.i25.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions24DeletionVectorDescriptorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.qe) #48
          to label %.body unwind label %bb.id, !noalias !16307

bb.hz:                                            ; preds = %bb.hy
  %i.ux = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit7.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit9.i.i: ; preds = %bb.hy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit5.i.i
  %i.uy = load i64, ptr %i.qe, align 8, !range !645, !alias.scope !16563, !noalias !16307, !noundef !19
  %i.uz = icmp eq i64 %i.uy, -9223372036854775808
  br i1 %i.uz, label %.noexc, label %bb.ia

bb.ia:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit9.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.qe)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionECs7p2uQeJxui2_9deltalake.exit.i.invoke unwind label %bb.ib, !noalias !16307

bb.ib:                                            ; preds = %bb.ia
  %i.va = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.qe)
          to label %.body unwind label %bb.ic, !noalias !16307

bb.ic:                                            ; preds = %bb.ib
  %i.vb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !16307
  unreachable

bb.id:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBH_B1X_EEEECs7p2uQeJxui2_9deltalake.exit7.i.i, %bb.hw, %bb.hu
  %i.vc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !16307
  unreachable

bb.ie:                                            ; preds = %bb.fg
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(136) %.sroa.494.0..sroa_idx.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i39.i unwind label %bb.if, !noalias !16307

bb.if:                                            ; preds = %bb.ie
  %i.vd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(136) %.sroa.494.0..sroa_idx.i)
          to label %.body.i34.i unwind label %bb.ig, !noalias !16307

bb.ig:                                            ; preds = %bb.if
  %i.ve = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !16307
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i39.i: ; preds = %bb.ie
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(136) %.sroa.494.0..sroa_idx.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i40.i unwind label %bb.ih, !noalias !16307

bb.ih:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i39.i
  %i.vf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i34.i

.body.i34.i:                                      ; preds = %bb.ih, %bb.if
  %eh.lpad-body.i35.i = phi { ptr, i32 } [ %i.vf, %bb.ih ], [ %i.vd, %bb.if ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.pz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit.i36.i unwind label %bb.il, !noalias !16307

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i40.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i39.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.pz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit2.i.i unwind label %bb.ij, !noalias !16307

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit.i36.i: ; preds = %bb.ij, %.body.i34.i
  %.pn.i37.i = phi { ptr, i32 } [ %i.vi, %bb.ij ], [ %eh.lpad-body.i35.i, %.body.i34.i ] ; 2 uses
  %i.vg = load ptr, ptr %i.qa, align 8, !alias.scope !16566, !noalias !16307, !noundef !19
  %i.vh = icmp eq ptr %i.vg, null
  br i1 %i.vh, label %.body, label %bb.ii

bb.ii:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit.i36.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.qa)
          to label %.body unwind label %bb.il, !noalias !16307

bb.ij:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i40.i
  %i.vi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit.i36.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit2.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i40.i
  %i.vj = load ptr, ptr %i.qa, align 8, !alias.scope !16571, !noalias !16307, !noundef !19
  %i.vk = icmp eq ptr %i.vj, null
  br i1 %i.vk, label %.noexc, label %bb.ik

bb.ik:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit2.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.qa)
          to label %.noexc unwind label %bb.ff

bb.il:                                            ; preds = %bb.ii, %.body.i34.i
  %i.vl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !16307
  unreachable

bb.im:                                            ; preds = %bb.fg
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.py)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionECs7p2uQeJxui2_9deltalake.exit.i.invoke unwind label %bb.in, !noalias !16307

bb.in:                                            ; preds = %bb.im
  %i.vm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.py)
          to label %.body unwind label %bb.io, !noalias !16307

bb.io:                                            ; preds = %bb.in
  %i.vn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !16307
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionECs7p2uQeJxui2_9deltalake.exit.i.invoke: ; preds = %bb.im, %bb.ia, %bb.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i6
  %i.vo = phi ptr [ %i.qe, %bb.ia ], [ %i.qj, %bb.hm ], [ %i.pz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i6 ], [ %i.py, %bb.im ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.vo)
          to label %.noexc unwind label %bb.ff

bb.ip:                                            ; preds = %bb.fg
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(256) %.sroa.494.0..sroa_idx.i)
          to label %.noexc unwind label %bb.ff

bb.iq:                                            ; preds = %bb.eo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.386.0.copyload.i) ]
  %i.vp = ptrtoint ptr %.sroa.386.0.copyload.i to i64
  br label %bb.fc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtBL_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEECs7p2uQeJxui2_9deltalake.exit46.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtBL_4read9SliceReadEECs7p2uQeJxui2_9deltalake.exit.i42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !16303
  call void @llvm.experimental.noalias.scope.decl(metadata !16574)
  call void @llvm.experimental.noalias.scope.decl(metadata !16577)
  %i.vq = load ptr, ptr %i.s, align 8, !alias.scope !16580, !noalias !16303, !nonnull !19, !align !20, !noundef !19
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 32
  %i.vs = load ptr, ptr %i.vr, align 8, !noalias !16581, !nonnull !19, !noundef !19
  %i.vt = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.vu = load ptr, ptr %.sroa.483.0..sroa_idx.i, align 8, !alias.scope !16580, !noalias !16303, !noundef !19
  %i.vv = load i64, ptr %i.pv, align 8, !alias.scope !16580, !noalias !16303, !noundef !19
  invoke void %i.vs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.vt, ptr noundef %i.vu, i64 noundef %i.vv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7p2uQeJxui2_9deltalake.exit48.i unwind label %bb.eu, !noalias !16307, !inline_history !3286

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7p2uQeJxui2_9deltalake.exit48.i: ; preds = %bb.r, %bb.eg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtBL_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEECs7p2uQeJxui2_9deltalake.exit46.i
  %.sroa.095.3.i = phi i64 [ %.sroa.095.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtBL_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEECs7p2uQeJxui2_9deltalake.exit46.i ], [ 3, %bb.eg ], [ 3, %bb.r ]
  %.sroa.12.3.i = phi ptr [ %.sroa.12.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtBL_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEECs7p2uQeJxui2_9deltalake.exit46.i ], [ %.sroa.3.0.i.i, %bb.eg ], [ %.sroa.2113.0.copyload.i, %bb.r ]
  %.sroa.9102.sroa.0.3.i = phi i64 [ %.sroa.9102.sroa.0.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtBL_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEECs7p2uQeJxui2_9deltalake.exit46.i ], [ %.sroa.051.0.i.i, %bb.eg ], [ %.sroa.0112.0.copyload.i, %bb.r ]
  %i.vw = phi <2 x i64> [ %i.rt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtBL_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEECs7p2uQeJxui2_9deltalake.exit46.i ], [ <i64 undef, i64 -9223372036854775743>, %bb.eg ], [ <i64 undef, i64 -9223372036854775743>, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !16303
  %i.vx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16582)
  call void @llvm.experimental.noalias.scope.decl(metadata !16585)
  %i.vy = load ptr, ptr %i.vx, align 8, !alias.scope !16588, !noalias !16303, !nonnull !19, !noundef !19
  %i.vz = atomicrmw sub ptr %i.vy, i64 1 release, align 8, !noalias !16589
  %i.wa = icmp eq i64 %i.vz, 1
  br i1 %i.wa, label %bb.ir, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit50.i

bb.ir:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7p2uQeJxui2_9deltalake.exit48.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.vx) #51
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit50.i unwind label %bb.it, !noalias !16307

bb.is:                                            ; preds = %.body29.i, %bb.eh
  %.pn11.pn.i = phi { ptr, i32 } [ %.pn11.i, %.body29.i ], [ %i.pu, %bb.eh ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16590)
  call void @llvm.experimental.noalias.scope.decl(metadata !16593)
  %i.wb = load ptr, ptr %i.s, align 8, !alias.scope !16596, !noalias !16303, !nonnull !19, !align !20, !noundef !19
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 32
  %i.wd = load ptr, ptr %i.wc, align 8, !noalias !16597, !nonnull !19, !noundef !19
  %i.we = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.wf = load ptr, ptr %.sroa.483.0..sroa_idx.i, align 8, !alias.scope !16596, !noalias !16303, !noundef !19
  %i.wg = load i64, ptr %i.pv, align 8, !alias.scope !16596, !noalias !16303, !noundef !19
  invoke void %i.wd(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.we, ptr noundef %i.wf, i64 noundef %i.wg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7p2uQeJxui2_9deltalake.exit52.i unwind label %bb.s, !noalias !16307, !inline_history !3286

bb.it:                                            ; preds = %bb.ir
  %i.wh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #48
          to label %.body37.i unwind label %bb.s, !noalias !16307

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit50.i: ; preds = %bb.ir, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7p2uQeJxui2_9deltalake.exit48.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i54.i unwind label %bb.iu, !noalias !16307

bb.iu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit50.i
  %i.wi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body37.i unwind label %bb.iv, !noalias !16307

bb.iv:                                            ; preds = %bb.iu
  %i.wj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !16307
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i54.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit50.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB8_8Snapshot12commit_infos0s0_00Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.ez, !noalias !16307

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.et, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7p2uQeJxui2_9deltalake.exit52.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #48
          to label %.body37.i unwind label %bb.s, !noalias !16307

_RNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB8_8Snapshot12commit_infos0s0_00Cs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.k, %bb.ec
  %.sink.i.ph = phi i8 [ 3, %bb.k ], [ 4, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !16303
  store i8 %.sink.i.ph, ptr %i.v, align 8, !noalias !16303
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14109.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1172.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  br label %bb.iw

_RNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB8_8Snapshot12commit_infos0s0_00Cs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i54.i
  %.sroa.095.1.i = phi i64 [ %.sroa.095.3.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i54.i ], [ 2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.sroa.12.1.i = phi ptr [ %.sroa.12.3.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i54.i ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i ]
  %.sroa.9102.sroa.0.1.i = phi i64 [ %.sroa.9102.sroa.0.3.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i54.i ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i ]
  %i.wk = phi <2 x i64> [ %i.vw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i54.i ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.i, i64 24, i1 false), !noalias !16598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.12, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.14109.i, i64 32, i1 false), !noalias !16598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.13, ptr noundef nonnull align 16 dereferenceable(160) %.sroa.15.i, i64 160, i1 false), !noalias !16598
  store i8 1, ptr %i.v, align 8, !noalias !16303
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14109.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1172.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %i.wl = icmp eq i64 %.sroa.095.1.i, 4
  br i1 %i.wl, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %_RNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB8_8Snapshot12commit_infos0s0_00Cs7p2uQeJxui2_9deltalake.exit.thread, %_RNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB8_8Snapshot12commit_infos0s0_00Cs7p2uQeJxui2_9deltalake.exit
  store i64 4, ptr %0, align 16
  br label %bb.iy

bb.ix:                                            ; preds = %_RNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB8_8Snapshot12commit_infos0s0_00Cs7p2uQeJxui2_9deltalake.exit
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, i64 24, i1 false)
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.0.sroa.9.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.12, i64 32, i1 false)
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.0.sroa.10.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(160) %.sroa.13, i64 160, i1 false)
  store i64 %.sroa.095.1.i, ptr %0, align 16
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.wk, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9102.sroa.0.1.i, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.12.1.i, ptr %.sroa.0.sroa.7.0..sroa_idx, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.u, ptr %.sroa.4.0..sroa_idx, align 16
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11193, !noundef !19 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775804
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 4          ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !11193, !noundef !19 ; 3 uses
  %i.g = icmp ne i64 %i.f, -9223372036854775804
  tail call void @llvm.assume(i1 %i.g)
  %i.h = xor i64 %i.f, -9223372036854775808
  %i.i = icmp slt i64 %i.f, 0
  %i.j = select i1 %i.i, i64 %i.h, i64 4
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.j
    i64 4, label %bb.l
    i64 5, label %bb.r
    i64 6, label %bb.v
  ]

_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.a, %bb.e, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ %.sroa.0.0.i, %bb.d ], [ %.sroa.0.0.i17, %bb.e ], [ false, %bb.a ], [ false, %bb.h ], [ false, %bb.j ], [ true, %bb.p ], [ false, %bb.t ], [ %i.as, %bb.i ], [ false, %bb.g ], [ false, %bb.f ], [ %i.ay, %bb.k ], [ false, %bb.m ], [ %i.ca, %bb.q ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.o ], [ %i.cu, %bb.u ], [ false, %bb.s ], [ false, %bb.r ], [ %i.da, %bb.w ], [ false, %bb.v ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load <2 x i8>, ptr %i.l, align 8
  %i.o = load <2 x i8>, ptr %i.m, align 8
  %i.p = icmp eq <2 x i8> %i.n, %i.o              ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 0
  %i.r = extractelement <2 x i1> %i.p, i64 1
  %.sroa.0.0.i = select i1 %i.q, i1 %i.r, i1 false
  br label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load <2 x i8>, ptr %i.s, align 8
  %i.v = load <2 x i8>, ptr %i.t, align 8
  %i.w = icmp eq <2 x i8> %i.u, %i.v              ; 2 uses
  %i.x = extractelement <2 x i1> %i.w, i64 0
  %i.y = extractelement <2 x i1> %i.w, i64 1
  %.sroa.0.0.i17 = select i1 %i.y, i1 %i.x, i1 false
  br label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16602)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !16599, !noalias !16602, !noundef !19 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !16602, !noalias !16599, !noundef !19
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !16602, !noalias !16599, !nonnull !19, !noundef !19
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !16599, !noalias !16602, !nonnull !19, !noundef !19
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.ah, ptr nonnull %i.af, i64 %i.aa), !noalias !16604
  %i.ai = icmp eq i32 %bcmp.i, 0
  br i1 %i.ai, label %bb.h, label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !16599, !noalias !16602, !noundef !19 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !16602, !noalias !16599, !noundef !19
  %i.an = icmp eq i64 %i.ak, %i.am
  br i1 %i.an, label %bb.i, label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !16602, !noalias !16599, !nonnull !19, !noundef !19
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !16599, !noalias !16602, !nonnull !19, !noundef !19
  %bcmp4.i = tail call i32 @bcmp(ptr nonnull %i.ar, ptr nonnull %i.ap, i64 %i.ak), !noalias !16604
  %i.as = icmp eq i32 %bcmp4.i, 0
  br label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val10 = load i64, ptr %i.at, align 8, !noundef !19 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val12 = load i64, ptr %i.au, align 8, !noundef !19
  %i.av = icmp eq i64 %.val10, %.val12
  br i1 %i.av, label %bb.k, label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11 = load ptr, ptr %i.aw, align 8, !nonnull !19, !noundef !19
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9 = load ptr, ptr %i.ax, align 8, !nonnull !19, !noundef !19
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val9, ptr nonnull readonly %.val11, i64 %.val10)
  %i.ay = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16608)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !16605, !noalias !16608, !noundef !19 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !16608, !noalias !16605, !noundef !19
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.m, label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !16608, !noalias !16605, !nonnull !19, !noundef !19
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !16605, !noalias !16608, !nonnull !19, !noundef !19
  %bcmp.i20 = tail call i32 @bcmp(ptr nonnull %i.bh, ptr nonnull %i.bf, i64 %i.ba), !noalias !16610, !inline_history !16611
  %i.bi = icmp eq i32 %bcmp.i20, 0
  br i1 %i.bi, label %bb.n, label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !16605, !noalias !16608, !noundef !19 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !16608, !noalias !16605, !noundef !19
  %i.bn = icmp eq i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.o, label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !16608, !noalias !16605, !nonnull !19, !noundef !19
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !16605, !noalias !16608, !nonnull !19, !noundef !19
  %i.bs = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bp, i64 noundef %i.bk), !noalias !16610, !inline_history !16611
  br i1 %i.bs, label %bb.p, label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !16605, !noalias !16608, !nonnull !19, !noundef !19 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !16608, !noalias !16605, !nonnull !19, !noundef !19 ; 2 uses
  %i.bx = icmp eq ptr %i.bu, %i.bw
  br i1 %i.bx, label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ca = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.by, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.bz) #52, !noalias !16610, !inline_history !16611
  br label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16615)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !16612, !noalias !16615, !noundef !19 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !16615, !noalias !16612, !noundef !19
  %i.cf = icmp eq i64 %i.cc, %i.ce
  br i1 %i.cf, label %bb.s, label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !16615, !noalias !16612, !nonnull !19, !noundef !19
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !16612, !noalias !16615, !nonnull !19, !noundef !19
  %bcmp.i22 = tail call i32 @bcmp(ptr nonnull %i.cj, ptr nonnull %i.ch, i64 %i.cc), !noalias !16617
  %i.ck = icmp eq i32 %bcmp.i22, 0
  br i1 %i.ck, label %bb.t, label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !16612, !noalias !16615, !noundef !19 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !16615, !noalias !16612, !noundef !19
  %i.cp = icmp eq i64 %i.cm, %i.co
  br i1 %i.cp, label %bb.u, label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

end_hunk_3
