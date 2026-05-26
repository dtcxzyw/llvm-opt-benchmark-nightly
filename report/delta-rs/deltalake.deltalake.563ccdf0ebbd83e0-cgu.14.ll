inline.NumInlined: 4294
inline.NumDeleted: 1503
begin_hunk_0_@_RNvMsn_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable26___pymethod_is_deltatable__:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.78.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7224
  invoke void @_RINvNtNtCs14kWLkQVSKO_14deltalake_core5table7builder15parse_table_uriReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.015.0.copyload, i64 noundef %.sroa.516.0.copyload)
          to label %bb.i unwind label %bb.h, !noalias !7227

.body.i:                                          ; preds = %bb.ac, %bb.v, %bb.h
  %.sroa.023.0.i = phi i8 [ %.sroa.023.1.i, %bb.ac ], [ %.sroa.023.2.ph.i, %bb.v ], [ 1, %bb.h ]
  %.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.ac ], [ %lpad.thr_comm.split-lp.i, %bb.v ], [ %i.al, %bb.h ]
  %i.ai = load ptr, ptr %i.p, align 8, !alias.scope !7221, !noalias !7228, !noundef !12
  %i.aj = icmp ne ptr %i.ai, null
  %i.ak = trunc nuw i8 %.sroa.023.0.i to i1
  %or.cond3.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond3.i, label %bb.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit.i

bb.h:                                             ; preds = %bb.n, %bb.k, %bb.j, %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %bb.g
  %i.am = load i64, ptr %i.n, align 16, !range !42, !noalias !7224, !noundef !12
  %.not.i = icmp eq i64 %i.am, -9223372036854775711
  br i1 %.not.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCseo6ZV82fEK1_3url3UrlNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCseo6ZV82fEK1_3url3UrlNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i unwind label %bb.h, !noalias !7227

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCseo6ZV82fEK1_3url3UrlNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7224
  br label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCseo6ZV82fEK1_3url3UrlNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.028.0.copyload.i = load i64, ptr %i.an, align 8, !noalias !7224 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.78.i, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.4.0..sroa_idx.i, i64 80, i1 false), !noalias !7224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7224
  %.not45.i = icmp eq i64 %.sroa.028.0.copyload.i, -9223372036854775808
  br i1 %.not45.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCseo6ZV82fEK1_3url3UrlNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake.exit.i
  store i64 %.sroa.028.0.copyload.i, ptr %i.h, align 8, !noalias !7224
  %.sroa.78.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.78.0..sroa_idx9.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.78.i, i64 80, i1 false), !noalias !7224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7224
  invoke void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB5_17DeltaTableBuilder8from_url(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.h)
          to label %bb.m unwind label %bb.h, !noalias !7227

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder17DeltaTableBuilderNtNtB18_6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCseo6ZV82fEK1_3url3UrlNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCseo6ZV82fEK1_3url3UrlNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.78.i)
  %i.ao = load ptr, ptr %i.p, align 8, !alias.scope !7221, !noalias !7228, !noundef !12
  %.not47.i = icmp eq ptr %i.ao, null
  br i1 %.not47.i, label %_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable13is_deltatable.exit.thread, label %_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable13is_deltatable.exit

bb.m:                                             ; preds = %bb.k
  %i.ap = load i64, ptr %i.g, align 16, !range !767, !noalias !7224, !noundef !12 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(96) %i.ar)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder17DeltaTableBuilderNtNtB18_6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i unwind label %bb.h, !noalias !7227

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder17DeltaTableBuilderNtNtB18_6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake.exit.thread.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7224
  br label %bb.l

bb.o:                                             ; preds = %bb.m
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.7.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.7.0..sroa_idx5.i, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.430.0..sroa_idx.i, i64 328, i1 false), !noalias !7224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7224
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.78.i)
  store i64 %i.ap, ptr %i.o, align 8, !noalias !7224
  %i.as = load ptr, ptr %i.p, align 8, !alias.scope !7221, !noalias !7228, !noundef !12
  %.not48.i = icmp eq ptr %i.as, null
  br i1 %.not48.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !7228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.k, ptr noundef nonnull align 8 dereferenceable(336) %i.o, i64 336, i1 false), !noalias !7224
  invoke void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB5_17DeltaTableBuilder20with_storage_options(ptr noalias noundef nonnull sret([336 x i8]) align 8 captures(none) dereferenceable(336) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(336) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.m)
          to label %bb.w unwind label %bb.v, !noalias !7227

bb.q:                                             ; preds = %bb.w, %bb.o
  %.sroa.023.1.i = phi i8 [ 0, %bb.w ], [ 1, %bb.o ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7224
  %i.at = invoke noundef i32 @_RNvNtCs2pqxYH9ZEk8_3std7process2id()
          to label %.noexc55.i unwind label %bb.ac, !noalias !7227

.noexc55.i:                                       ; preds = %bb.q
  store i32 %i.at, ptr %i.d, align 4, !noalias !7224
  %i.au = load atomic i32, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID acquire, align 4, !noalias !7229
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i, label %bb.r, !prof !28

bb.r:                                             ; preds = %.noexc55.i
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1y_(ptr noundef nonnull align 4 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d)
          to label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i unwind label %bb.ac, !noalias !7227

_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i: ; preds = %bb.r, %.noexc55.i
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, i64 4), align 4, !noalias !7224, !noundef !12 ; 2 uses
  store i32 %i.aw, ptr %i.c, align 4, !noalias !7224
  %i.ax = load i32, ptr %i.d, align 4, !noalias !7224, !noundef !12
  %.not.i54.i = icmp eq i32 %i.ax, %i.aw
  br i1 %.not.i54.i, label %bb.s, label %bb.u, !prof !28

bb.s:                                             ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  %i.ay = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, i64 80) acquire, align 8, !noalias !7224
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.x, label %bb.t, !prof !28

bb.t:                                             ; preds = %bb.s
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zEB2l_(ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT)
          to label %bb.x unwind label %bb.ac, !noalias !7227

bb.u:                                             ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7224
  store ptr %i.d, ptr %i.b, align 8, !noalias !7224
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !7224
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.ba, align 8, !noalias !7224
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !7224
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @523, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @525) #41
          to label %.noexc58.i unwind label %bb.ac, !noalias !7227

.noexc58.i:                                       ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.z, %bb.x, %bb.p
  %.sroa.023.2.ph.i = phi i8 [ 0, %bb.p ], [ %.sroa.023.1.i, %bb.x ], [ %.sroa.023.1.i, %bb.z ]
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.w:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.o, ptr noundef nonnull align 8 dereferenceable(336) %i.l, i64 336, i1 false), !noalias !7224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7224
  br label %bb.q

bb.x:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.i, ptr noundef nonnull align 8 dereferenceable(336) %i.o, i64 336, i1 false), !noalias !7224
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 616
  store i8 0, ptr %i.bb, align 8, !noalias !7224
  invoke void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1b_13RawDeltaTable13is_deltatables_0EB1b_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.j, ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(624) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @338)
          to label %bb.y unwind label %bb.v, !noalias !7227

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7224
  %i.bc = load i64, ptr %i.j, align 16, !range !42, !noalias !7224, !noundef !12 ; 2 uses
  %.not49.i = icmp eq i64 %i.bc, -9223372036854775711
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.be = load i8, ptr %i.bd, align 8, !noalias !7224 ; 2 uses
  br i1 %.not49.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.335.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.335.0..sroa_idx.i, i64 87, i1 false), !noalias !7224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7224
  store i64 %i.bc, ptr %i.f, align 16, !noalias !7224
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %i.be, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !7224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7224
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.e, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.f)
          to label %bb.ab unwind label %bb.v, !noalias !7227

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7224
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = select i1 %i.bf, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable13is_deltatable.exit.thread

bb.ab:                                            ; preds = %bb.z
  %.sroa.7.sroa.0.0.copyload = load ptr, ptr %i.e, align 8, !noalias !7232
  %.sroa.7.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.sroa.2, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.sroa.2.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7224
  %i.bh = load ptr, ptr %i.p, align 8, !alias.scope !7221, !noalias !7228, !noundef !12
  %i.bi = icmp ne ptr %i.bh, null
  %i.bj = trunc nuw i8 %.sroa.023.1.i to i1
  %or.cond.i = and i1 %i.bi, %i.bj
  br i1 %or.cond.i, label %_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable13is_deltatable.exit.thread39, label %_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable13is_deltatable.exit.thread34

_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable13is_deltatable.exit.thread39: ; preds = %bb.ab
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p), !noalias !7233
  br label %_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable13is_deltatable.exit.thread34

bb.ac:                                            ; preds = %bb.u, %bb.t, %bb.r, %bb.q
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder17DeltaTableBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(336) %i.o) #39
          to label %.body.i unwind label %bb.ad, !noalias !7227

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !7233
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ae, %.body.i
  resume { ptr, i32 } %.pn.i

bb.ae:                                            ; preds = %.body.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ad, !noalias !7233

_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable13is_deltatable.exit: ; preds = %bb.l
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p), !noalias !7233
  br label %_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable13is_deltatable.exit.thread

_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable13is_deltatable.exit.thread34: ; preds = %bb.ab, %_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable13is_deltatable.exit.thread39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload, ptr %i.bl, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.529.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.sroa.2, i64 48, i1 false)
  br label %bb.af

_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable13is_deltatable.exit.thread: ; preds = %bb.aa, %bb.l, %_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable13is_deltatable.exit
  %.sroa.422.133 = phi ptr [ @_Py_FalseStruct, %_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable13is_deltatable.exit ], [ %i.bg, %bb.aa ], [ @_Py_FalseStruct, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bm = call noundef nonnull ptr @_RNvXsk_NtCsgbCypRs12E4_4pyo38instanceINtB5_8BorrowedNtNtNtB7_5types3any5PyAnyEINtB5_11BoundObjectBO_E10into_boundCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %.sroa.422.133), !noalias !7234
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %i.bn, align 8
  br label %bb.af

bb.af:                                            ; preds = %_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable13is_deltatable.exit.thread, %_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable13is_deltatable.exit.thread34
  %storemerge = phi i64 [ 0, %_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable13is_deltatable.exit.thread ], [ 1, %_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable13is_deltatable.exit.thread34 ]
  store i64 %storemerge, ptr %0, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.b, %bb.f, %bb.d, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsn_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable26___pymethod_merge_execute__(ptr dead_on_unwind noalias noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 7 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 11 uses
  %i.f = alloca [8 x i8], align 8                 ; 11 uses
  %i.g = alloca [64 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr null, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @448, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.h, i64 noundef 1)
  %i.j = load i64, ptr %i.g, align 8, !range !11, !noundef !12
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 1, ptr %0, align 8
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr null, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke fastcc void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument19extract_pyclass_refNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEB1a_(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef align 8 dereferenceable(8) %i.e)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.l, %bb.k, %bb.h, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %i.e, align 8, !alias.scope !7237, !noundef !12
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEEEB1W_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEEEB1W_.exit unwind label %bb.w

bb.f:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.c, align 8, !range !11, !noundef !12
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.016.0.copyload = load ptr, ptr %i.s, align 8 ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.219.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.517.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument16extract_argumentQNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderKb0_EB1a_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @446, i64 noundef 13)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.h
  %i.t = load i64, ptr %i.b, align 8, !range !11, !noundef !12
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.022.0.copyload = load ptr, ptr %i.v, align 8 ; 2 uses
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.225.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.523.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2v_13RawDeltaTable13merge_execute0EB2v_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, ptr noalias noundef nonnull align 16 dereferenceable(1056) %.sroa.022.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.016.0.copyload)
          to label %_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable13merge_execute.exit unwind label %bb.d

_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable13merge_execute.exit: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = load i64, ptr %i.d, align 8, !range !11, !noundef !12
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.x, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable13merge_execute.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.z = invoke noundef nonnull ptr @_RNvXs4_NtNtNtCsgbCypRs12E4_4pyo311conversions3std6stringNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtBb_10conversion12IntoPyObject13into_pyobject(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.n unwind label %bb.d

bb.m:                                             ; preds = %_RNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable13merge_execute.exit
  %.sroa.041.0.copyload = load ptr, ptr %i.y, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.544.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.542.0..sroa_idx, i64 48, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sink = phi ptr [ %.sroa.041.0.copyload, %bb.m ], [ %i.z, %bb.l ]
  %storemerge = phi i64 [ 1, %bb.m ], [ 0, %bb.l ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.aa, align 8
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ab = load ptr, ptr %i.e, align 8, !alias.scope !7240, !noundef !12
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEEEB1W_.exit32, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEEEB1W_.exit32 unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEEEB1W_.exit: ; preds = %bb.d, %bb.e, %bb.q
  %.pn = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.n, %bb.e ], [ %i.n, %bb.d ]
  %i.ad = load ptr, ptr %i.f, align 8, !alias.scope !7243, !noundef !12
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEEEB1W_.exit
  invoke void @_RNvXse_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB17_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit unwind label %bb.w

bb.q:                                             ; preds = %bb.u, %bb.o
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEEEB1W_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEEEB1W_.exit32: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ag = load ptr, ptr %i.f, align 8, !alias.scope !7246, !noundef !12
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit34, label %bb.r
end_hunk_0
begin_hunk_1_@_RNvMsn_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable31___pymethod_dataset_partitions__:bb.a
  %i.do = atomicrmw sub ptr %i.dn, i64 1 release, align 8, !noalias !7703
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit56.i

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit56.i unwind label %bb.aj, !noalias !7675

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit56.i: ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7671
  br label %bb.az

bb.az:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit56.i, %bb.al
  %.sroa.018.6.i = phi i8 [ 1, %bb.al ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit56.i ] ; 2 uses
  %i.dq = load i64, ptr %i.p, align 8, !range !62, !noalias !7671, !noundef !12
  %.not42.i = icmp eq i64 %i.dq, -9223372036854775808
  br i1 %.not42.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit80.i, label %bb.bt

.loopexit.i:                                      ; preds = %bb.bx
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body81.i

.loopexit.split-lp.i:                             ; preds = %bb.by
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body81.i

.body81.i:                                        ; preds = %bb.cc, %.loopexit.split-lp.i, %.loopexit.i
  %eh.lpad-body82.i = phi { ptr, i32 } [ %i.fl, %bb.cc ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.k) #39
          to label %.body59.i unwind label %bb.bq, !noalias !7675

._crit_edge.i:                                    ; preds = %bb.ce, %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !7671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7671
  br label %bb.ap

.lr.ph.i:                                         ; preds = %bb.av, %bb.ce
  %.sroa.022.096.i = phi i64 [ %i.dr, %bb.ce ], [ 0, %bb.av ] ; 4 uses
  %i.dr = add nuw nsw i64 %.sroa.022.096.i, 1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7671
  %i.ds = load ptr, ptr %i.m, align 8, !noalias !7671, !nonnull !12, !noundef !12 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load i64, ptr %i.dt, align 8, !noalias !7675, !noundef !12 ; 2 uses
  %i.dv = icmp ult i64 %.sroa.022.096.i, %i.du
  br i1 %i.dv, label %bb.bx, label %bb.by

bb.ba:                                            ; preds = %bb.bi, %bb.bb
  %.pn.i = phi { ptr, i32 } [ %i.dw, %bb.bb ], [ %i.ej, %bb.bi ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.l) #39
          to label %.body59.i unwind label %bb.bq, !noalias !7675

bb.bb:                                            ; preds = %bb.bj, %bb.ap
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.bc:                                            ; preds = %bb.ap
  %i.dx = load i64, ptr %i.f, align 8, !range !11, !noalias !7671, !noundef !12
  %i.dy = trunc nuw i64 %i.dx to i1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %i.dy, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.512.i, ptr noundef nonnull align 8 dereferenceable(56) %i.dz, i64 56, i1 false), !noalias !7671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7671
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ea, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.512.i, i64 56, i1 false), !noalias !7676
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.512.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7671
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.bf unwind label %bb.be, !noalias !7675

bb.be:                                            ; preds = %bb.bd
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body59.i unwind label %bb.bg, !noalias !7675

bb.bf:                                            ; preds = %bb.bd
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit61.i unwind label %bb.at, !noalias !7675

bb.bg:                                            ; preds = %bb.be
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !7675
  unreachable

bb.bh:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.512.i, ptr noundef nonnull align 8 dereferenceable(32) %i.dz, i64 32, i1 false), !noalias !7671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.512.i, i64 32, i1 false), !noalias !7671
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !7671, !nonnull !12, !noundef !12 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !noalias !7671, !noundef !12
  %i.eh = getelementptr inbounds nuw [40 x i8], ptr %i.ee, i64 %i.eg
  store ptr %i.s, ptr %i.h, align 8, !noalias !7671
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ee, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !7671
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.eh, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx.i, align 8, !noalias !7671
  %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr null, ptr %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx.sroa_idx.i, align 8, !noalias !7671
  %.sroa.510.sroa.7.0..sroa.510.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr null, ptr %.sroa.510.sroa.7.0..sroa.510.0..sroa_idx.sroa_idx.i, align 8, !noalias !7671
  %i.ei = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store ptr %i.a, ptr %i.ei, align 8, !noalias !7671
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr %i.m, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !7671
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store ptr %i.l, ptr %.sroa.515.0..sroa_idx.i, align 8, !noalias !7671
  invoke void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_10filter_map9FilterMapINtNtB2_7flatten7FlatMapINtNtNtB6_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBR_INtNtNtB6_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB41_14LogDataHandler4iter00ENCB3V_0ENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5K_13RawDeltaTable18dataset_partitionss_0ENCB5E_s0_0ETNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB6_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB86_5types3any5PyAnyEEEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB86_3err5PyErrENCINvXso_B9a_IB98_INtNtB77_3vec3VecB72_EB9U_EINtNtNtB4_6traits7collect12FromIteratorIB98_B72_B9U_EE9from_iterBQ_E0Bav_EB5K_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.h)
          to label %bb.bj unwind label %bb.bi, !noalias !7669

bb.bi:                                            ; preds = %bb.bh
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.g) #39
          to label %bb.ba unwind label %bb.bq, !noalias !7675

bb.bj:                                            ; preds = %bb.bh
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.g)
          to label %bb.bk unwind label %bb.bb, !noalias !7675

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.512.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7671
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.bm unwind label %bb.bl, !noalias !7675

bb.bl:                                            ; preds = %bb.bk
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body59.i unwind label %bb.bn, !noalias !7675

bb.bm:                                            ; preds = %bb.bk
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit67.i unwind label %bb.at, !noalias !7675

bb.bn:                                            ; preds = %bb.bl
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !7675
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit67.i: ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7671
  call void @llvm.experimental.noalias.scope.decl(metadata !7704)
  call void @llvm.experimental.noalias.scope.decl(metadata !7707)
  %i.em = load ptr, ptr %i.m, align 8, !alias.scope !7710, !noalias !7671, !nonnull !12, !noundef !12
  %i.en = atomicrmw sub ptr %i.em, i64 1 release, align 8, !noalias !7711
  %i.eo = icmp eq i64 %i.en, 1
  br i1 %i.eo, label %bb.bo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit69.i

bb.bo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit67.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit69.i unwind label %bb.aj, !noalias !7675

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit69.i: ; preds = %bb.bo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit67.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7671
  %i.ep = load ptr, ptr %i.s, align 8, !alias.scope !7712, !noalias !7671, !noundef !12
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.cj, label %bb.bp

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit69.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %bb.cj unwind label %bb.s, !noalias !7675

bb.bq:                                            ; preds = %bb.ci, %bb.ch, %bb.bi, %bb.ba, %.body81.i, %bb.as, %bb.ad, %.body.i
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !7675
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit61.i: ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7671
  call void @llvm.experimental.noalias.scope.decl(metadata !7715)
  call void @llvm.experimental.noalias.scope.decl(metadata !7718)
  %i.es = load ptr, ptr %i.m, align 8, !alias.scope !7721, !noalias !7671, !nonnull !12, !noundef !12
  %i.et = atomicrmw sub ptr %i.es, i64 1 release, align 8, !noalias !7722
  %i.eu = icmp eq i64 %i.et, 1
  br i1 %i.eu, label %bb.br, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit73.i

bb.br:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit61.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit73.i unwind label %bb.aj, !noalias !7675

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit73.i: ; preds = %bb.br, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit61.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7671
  %i.ev = load i64, ptr %i.p, align 8, !range !62, !noalias !7671, !noundef !12
  %i.ew = icmp ne i64 %i.ev, -9223372036854775808
  %i.ex = trunc nuw i8 %.sroa.016.2.i to i1
  %or.cond.i = and i1 %i.ew, %i.ex
  br i1 %or.cond.i, label %bb.bt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit80.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit80.i: ; preds = %bb.bv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit73.i, %bb.az
  %.sroa.018.7.i = phi i8 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit73.i ], [ %.sroa.018.6.i, %bb.az ], [ %.sroa.018.8.i, %bb.bv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7671
  %i.ey = load ptr, ptr %i.s, align 8, !alias.scope !7723, !noalias !7671, !noundef !12
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECs7p2uQeJxui2_9deltalake.exit75.i, label %bb.bs

bb.bs:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit80.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECs7p2uQeJxui2_9deltalake.exit75.i unwind label %bb.s, !noalias !7675

bb.bt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit73.i, %bb.az
  %.sroa.018.8.i = phi i8 [ %.sroa.018.6.i, %bb.az ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit73.i ] ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.bv unwind label %bb.bu, !noalias !7675

bb.bu:                                            ; preds = %bb.bt
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body78.i unwind label %bb.bw, !noalias !7675

bb.bv:                                            ; preds = %bb.bt
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit80.i unwind label %bb.ae, !noalias !7675

bb.bw:                                            ; preds = %bb.bu
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !7675
  unreachable

bb.bx:                                            ; preds = %.lr.ph.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !7675, !nonnull !12, !noundef !12
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %.sroa.022.096.i
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !7675, !nonnull !12, !noundef !12
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fh)
          to label %bb.ca unwind label %.loopexit.i, !noalias !7675

bb.by:                                            ; preds = %.lr.ph.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.022.096.i, i64 noundef %i.du, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @346) #40
          to label %bb.bz unwind label %.loopexit.split-lp.i, !noalias !7675

bb.bz:                                            ; preds = %bb.by
  unreachable

bb.ca:                                            ; preds = %bb.bx
  %i.fi = load i64, ptr %i.di, align 8, !alias.scope !7726, !noalias !7729, !noundef !12 ; 3 uses
  %i.fj = load i64, ptr %i.k, align 8, !range !237, !alias.scope !7726, !noalias !7729, !noundef !12
  %i.fk = icmp eq i64 %i.fi, %i.fj
  br i1 %i.fk, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2pqxYH9ZEk8_3std(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.ce unwind label %bb.cc, !noalias !7731

bb.cc:                                            ; preds = %bb.cb
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #39
          to label %.body81.i unwind label %bb.cd, !noalias !7675

bb.cd:                                            ; preds = %bb.cc
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !7675
  unreachable

bb.ce:                                            ; preds = %bb.cb, %bb.ca
  %i.fn = load ptr, ptr %i.dh, align 8, !alias.scope !7726, !noalias !7729, !nonnull !12, !noundef !12
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %i.fi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !7675
  %i.fp = add i64 %i.fi, 1
  store i64 %i.fp, ptr %i.di, align 8, !alias.scope !7726, !noalias !7729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7671
  %exitcond.not.i = icmp eq i64 %i.dr, %.sroa.0.0.i.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECs7p2uQeJxui2_9deltalake.exit75.i: ; preds = %bb.bs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit80.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !7671
  %i.fq = trunc nuw i8 %.sroa.018.7.i to i1
  br i1 %i.fq, label %bb.cf, label %.thread71

bb.cf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECs7p2uQeJxui2_9deltalake.exit53.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECs7p2uQeJxui2_9deltalake.exit75.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7732)
  call void @llvm.experimental.noalias.scope.decl(metadata !7735)
  call void @llvm.experimental.noalias.scope.decl(metadata !7738)
  %i.fr = load ptr, ptr %i.t, align 8, !alias.scope !7741, !noalias !7671, !nonnull !12, !noundef !12
  %i.fs = atomicrmw sub ptr %i.fr, i64 1 release, align 8, !noalias !7742
  %i.ft = icmp eq i64 %i.fs, 1
  br i1 %i.ft, label %bb.cg, label %.thread71

bb.cg:                                            ; preds = %bb.cf
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t) #42
          to label %.thread71 unwind label %.body

bb.ch:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.p) #39
          to label %.body78.i unwind label %bb.bq, !noalias !7675

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECs7p2uQeJxui2_9deltalake.exit53.i: ; preds = %bb.ah, %bb.ag, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !7671
  br label %bb.cf

.thread.i:                                        ; preds = %bb.aa, %.body.i, %.body49.i
  %.pn4588.i = phi { ptr, i32 } [ %.pn45.i, %.body49.i ], [ %eh.lpad-body.i, %.body.i ], [ %i.by, %bb.aa ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7743)
  call void @llvm.experimental.noalias.scope.decl(metadata !7746)
  call void @llvm.experimental.noalias.scope.decl(metadata !7749)
  %i.fu = load ptr, ptr %i.t, align 8, !alias.scope !7752, !noalias !7671, !nonnull !12, !noundef !12
  %i.fv = atomicrmw sub ptr %i.fu, i64 1 release, align 8, !noalias !7753
  %i.fw = icmp eq i64 %i.fv, 1
  br i1 %i.fw, label %bb.ci, label %.body.thread

bb.ci:                                            ; preds = %.thread.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t) #42
          to label %.body.thread unwind label %bb.bq, !noalias !7675

.thread71:                                        ; preds = %bb.cf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECs7p2uQeJxui2_9deltalake.exit75.i, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  br label %bb.ck

bb.cj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit69.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !7671
  %.pre = load i64, ptr %i.aa, align 8, !range !11
  %i.fx = trunc nuw i64 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  br i1 %i.fx, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.thread71, %bb.cj
  %i.fy = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.047.0.copyload = load ptr, ptr %i.fy, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.548.0..sroa_idx, i64 48, i1 false)
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  %i.fz = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.fz, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7754
  invoke void @_RINvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1n_5types3any5PyAnyEEENtNtB1n_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtNtB8_3vec3VecB3_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.u)
          to label %.noexc37 unwind label %bb.e

.noexc37:                                         ; preds = %bb.cl
  %i.ga = load i64, ptr %i.b, align 8, !range !11, !noalias !7754, !noundef !12
  %i.gb = trunc nuw i64 %i.ga to i1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.8.copyload44 = load ptr, ptr %i.gc, align 8, !noalias !7758 ; 2 uses
  br i1 %i.gb, label %.thread, label %bb.cn

.thread:                                          ; preds = %.noexc37
  %.sroa.10.8..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.8..sroa_idx46, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7754
  br label %bb.cm

bb.cm:                                            ; preds = %.thread, %bb.ck
  %.sroa.5.0 = phi ptr [ %.sroa.047.0.copyload, %bb.ck ], [ %.sroa.5.8.copyload44, %.thread ]
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.gd, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.550.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10, i64 48, i1 false)
  br label %bb.co

bb.cn:                                            ; preds = %.noexc37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7754
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.8.copyload44, ptr %i.ge, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %storemerge = phi i64 [ 0, %bb.cn ], [ 1, %bb.cm ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.gf = load ptr, ptr %i.ab, align 8, !alias.scope !7759, !noundef !12
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEEEB1W_.exit38, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEEEB1W_.exit38

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEEEB1W_.exit38: ; preds = %bb.co, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEEEB1W_.exit42, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEEEB1W_.exit38
end_hunk_1
