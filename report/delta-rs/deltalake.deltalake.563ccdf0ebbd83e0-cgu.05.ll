inline.NumInlined: 6674
inline.NumDeleted: 2611
begin_hunk_0_@_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCINvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtB19_15DeltaTableState19transaction_versionNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs7p2uQeJxui2_9deltalake:bb.a
bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB3_13CurrentThread8block_onNCINvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtB1A_15DeltaTableState19transaction_versionNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noundef nonnull align 8 %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(200) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle10EnterGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.b) #37
          to label %bb.s unwind label %bb.p, !noalias !536

bb.f:                                             ; preds = %bb.d, %bb.o
  invoke void @_RNvXs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime7context7currentNtB5_15SetCurrentGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !536

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #37
          to label %bb.s unwind label %bb.n, !noalias !536

bb.h:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %i.k = load i64, ptr %i.b, align 8, !range !15, !alias.scope !540, !noalias !530, !noundef !4 ; 2 uses
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !554, !noalias !530, !nonnull !4, !noundef !4
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !555
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #38
  br label %bb.r

bb.l:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !556)
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %i.r = load ptr, ptr %i.m, align 8, !alias.scope !562, !noalias !530, !nonnull !4, !noundef !4
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !563
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #38
  br label %bb.r

bb.n:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !536
  unreachable

bb.o:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !530
  br label %bb.f

bb.p:                                             ; preds = %bb.q, %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !564
  unreachable

bb.q:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtBM_15DeltaTableState19transaction_versionNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 dereferenceable(200) %i.c) #37
          to label %bb.s unwind label %bb.p, !noalias !565

bb.r:                                             ; preds = %bb.k, %bb.m, %bb.l, %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.s:                                             ; preds = %bb.q, %bb.g, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.i, %bb.e ], [ %lpad.thr_comm.split-lp.i, %bb.q ]
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1f_13RawDeltaTable5files000EB1f_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [96 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !569
  invoke void @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB2_7Runtime5enter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %1)
          to label %bb.b unwind label %bb.q, !noalias !569

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !range !3, !noalias !569, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false)
  invoke void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2k_13RawDeltaTable5files000E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtCsgbCypRs12E4_4pyo33err5PyErrEEB2k_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %bb.o unwind label %bb.e, !noalias !572

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB3_13CurrentThread8block_onNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1G_13RawDeltaTable5files000EB1G_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noundef nonnull align 8 %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle10EnterGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.b) #37
          to label %bb.t unwind label %bb.p, !noalias !573

bb.f:                                             ; preds = %bb.d, %bb.o
  invoke void @_RNvXs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime7context7currentNtB5_15SetCurrentGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !573

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #37
          to label %bb.t unwind label %bb.n, !noalias !573

bb.h:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !574)
  %i.k = load i64, ptr %i.b, align 8, !range !15, !alias.scope !577, !noalias !569, !noundef !4 ; 2 uses
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !585)
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !591, !noalias !569, !nonnull !4, !noundef !4
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !592
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #38
  br label %bb.s

bb.l:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !593)
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.r = load ptr, ptr %i.m, align 8, !alias.scope !599, !noalias !569, !nonnull !4, !noundef !4
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !600
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #38
  br label %bb.s

bb.n:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !573
  unreachable

bb.o:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !569
  br label %bb.f

bb.p:                                             ; preds = %bb.r, %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !601
  unreachable

bb.q:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.x = load i8, ptr %i.w, align 8, !range !602, !alias.scope !566, !noalias !603, !noundef !4
  %cond.i.i = icmp eq i8 %i.x, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.z = load i8, ptr %i.y, align 8, !range !602
  %cond.i.i.i = icmp eq i8 %i.z, 3
  %or.cond.i = select i1 %cond.i.i, i1 %cond.i.i.i, i1 false
  br i1 %or.cond.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB49_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.aa)
          to label %bb.t unwind label %bb.p, !noalias !603

bb.s:                                             ; preds = %bb.k, %bb.m, %bb.l, %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.g, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.r ], [ %i.i, %bb.e ], [ %i.j, %bb.g ], [ %lpad.thr_comm.split-lp.i, %bb.q ]
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNCNvMs9_NtCs7p2uQeJxui2_9deltalake5queryNtB1d_14PyQueryBuilder7execute00EB1f_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(3168) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3168 x i8], align 16             ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [3168 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3168) %i.c, ptr noundef nonnull align 16 dereferenceable(3168) %2, i64 3168, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !604
  invoke void @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB2_7Runtime5enter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %1)
          to label %bb.b unwind label %bb.q, !noalias !604

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !range !3, !noalias !604, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3168) %i.a, ptr noundef nonnull align 16 dereferenceable(3168) %2, i64 3168, i1 false)
  invoke void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onNCNCNvMs9_NtCs7p2uQeJxui2_9deltalake5queryNtB2i_14PyQueryBuilder7execute00E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB3r_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemIB3n_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB3r_6marker4SendEL_EEB70_EEB2k_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, i1 noundef zeroext true, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(3168) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %bb.o unwind label %bb.e, !noalias !609

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB3_13CurrentThread8block_onNCNCNvMs9_NtCs7p2uQeJxui2_9deltalake5queryNtB1E_14PyQueryBuilder7execute00EB1G_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull align 8 %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(3168) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle10EnterGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.b) #37
          to label %bb.s unwind label %bb.p, !noalias !610

bb.f:                                             ; preds = %bb.d, %bb.o
  invoke void @_RNvXs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime7context7currentNtB5_15SetCurrentGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !610

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #37
          to label %bb.s unwind label %bb.n, !noalias !610

bb.h:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.k = load i64, ptr %i.b, align 8, !range !15, !alias.scope !614, !noalias !604, !noundef !4 ; 2 uses
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !628, !noalias !604, !nonnull !4, !noundef !4
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !629
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #38
  br label %bb.r

bb.l:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.r = load ptr, ptr %i.m, align 8, !alias.scope !636, !noalias !604, !nonnull !4, !noundef !4
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !637
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #38
  br label %bb.r

bb.n:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !610
  unreachable

bb.o:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !604
  br label %bb.f

bb.p:                                             ; preds = %bb.q, %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !638
  unreachable

bb.q:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs9_NtCs7p2uQeJxui2_9deltalake5queryNtBQ_14PyQueryBuilder7execute00EBS_(ptr noundef nonnull align 16 dereferenceable(3168) %i.c) #37
          to label %bb.s unwind label %bb.p, !noalias !639

bb.r:                                             ; preds = %bb.k, %bb.m, %bb.l, %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.s:                                             ; preds = %bb.q, %bb.g, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.i, %bb.e ], [ %lpad.thr_comm.split-lp.i, %bb.q ]
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1d_13RawDeltaTable12compact_logs00EB1d_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !640
  invoke void @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB2_7Runtime5enter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %1)
          to label %bb.b unwind label %bb.q, !noalias !640

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !range !3, !noalias !640, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %2, i64 48, i1 false), !noalias !645
  invoke void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2i_13RawDeltaTable12compact_logs00E0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB2i_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %bb.o unwind label %bb.e, !noalias !646

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB3_13CurrentThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1E_13RawDeltaTable12compact_logs00EB1E_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noundef nonnull align 8 %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle10EnterGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.b) #37
          to label %bb.s unwind label %bb.p, !noalias !647

bb.f:                                             ; preds = %bb.o, %bb.d
  invoke void @_RNvXs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime7context7currentNtB5_15SetCurrentGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !647

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #37
          to label %bb.s unwind label %bb.n, !noalias !647

bb.h:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %i.j = load i64, ptr %i.b, align 8, !range !15, !alias.scope !651, !noalias !640, !noundef !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 2
  br i1 %i.k, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !659)
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !665, !noalias !640, !nonnull !4, !noundef !4
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !666
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  fence acquire
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB17_16sort_unstable_byNCNCNvNtB19_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake:bb.a
  %i.ax = tail call i32 @memcmp(ptr nonnull readonly %.val.i9.i.i, ptr nonnull readonly %.val2.i.pre.i.i, i64 %spec.store.select.i.i.i13.i.i), !noalias !8978 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp eq i32 %i.ax, 0
  %i.ba = sub i64 %.val1.i10.i.i, %.val3.i.pre.i.i
  %spec.select.i.i.i14.i.i = select i1 %i.az, i64 %i.ba, i64 %i.ay
  %i.bb = getelementptr inbounds nuw [48 x i8], ptr %i.al, i64 %.sroa.19.035.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.016.034.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.bb, i64 48, i1 false), !alias.scope !8974, !noalias !8975
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.036.i.i, i64 48, i1 false), !alias.scope !8974, !noalias !8975
  %spec.select.i.i.lobit.i15.i.i = lshr i64 %spec.select.i.i.i14.i.i, 63
  %i.bc = add i64 %spec.select.i.i.lobit.i15.i.i, %.sroa.19.035.i.i ; 2 uses
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.036.i.i, i64 48 ; 3 uses
  %i.bd = icmp ult ptr %.sroa.11.0.i.i, %i.an
  br i1 %i.bd, label %.lr.ph.i.i, label %.preheader.i.i

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB1x_16sort_unstable_byNCNCNvNtB1z_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8968
  %.not7.i = icmp ult i64 %i.au, %.sroa.15.080122
  br i1 %.not7.i, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelection12split_at_mutCs7p2uQeJxui2_9deltalake.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB1x_16sort_unstable_byNCNCNvNtB1z_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelection12split_at_mutCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB1x_16sort_unstable_byNCNCNvNtB1z_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit.i
  tail call void @_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelection14swap_uncheckedCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %.sroa.0.081121, i64 noundef range(i64 33, 192153584101141163) %.sroa.15.080122, i64 noundef 0, i64 noundef %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28)
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.081121, i64 %i.au ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bg = xor i64 %i.au, -1
  %i.bh = add i64 %.sroa.15.080122, %i.bg
  tail call fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB17_16sort_unstable_byNCNCNvNtB19_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %.sroa.0.081121, i64 noundef %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %.sroa.023.079123, i32 noundef %i.f, ptr noalias noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.h:                                             ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot12choose_pivotNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB15_16sort_unstable_byNCNCNvNtB17_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 %i.aj ; 2 uses
  %i.bj = getelementptr i8, ptr %.sroa.023.079123, i64 8
  %.sroa.023.0.val = load ptr, ptr %i.bj, align 8, !nonnull !4, !noundef !4
  %i.bk = getelementptr i8, ptr %.sroa.023.079123, i64 16
  %.sroa.023.0.val34 = load i64, ptr %i.bk, align 8, !noundef !4 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bi, i64 8
  %.val = load ptr, ptr %i.bl, align 8, !nonnull !4, !noundef !4
  %i.bm = getelementptr i8, ptr %i.bi, i64 16
  %.val35 = load i64, ptr %i.bm, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.023.0.val34, i64 %.val35)
  %i.bn = tail call i32 @memcmp(ptr nonnull readonly %.sroa.023.0.val, ptr nonnull readonly %.val, i64 %spec.store.select.i.i) ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp eq i32 %i.bn, 0
  %i.bq = sub i64 %.sroa.023.0.val34, %.val35
  %spec.select.i.i = select i1 %i.bp, i64 %i.bq, i64 %i.bo
  %i.br = icmp slt i64 %spec.select.i.i, 0
  br i1 %i.br, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8979)
  tail call void @_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelection14swap_uncheckedCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %.sroa.0.081121, i64 noundef range(i64 33, 192153584101141163) %.sroa.15.080122, i64 noundef 0, i64 noundef range(i64 0, 192153584101141162) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27)
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 48 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8985)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8987
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.bs, i64 48, i1 false), !noalias !8985
  %i.bt = mul nuw nsw i64 %.sroa.15.080122, 48
  %i.bu = getelementptr i8, ptr %.sroa.0.081121, i64 %i.bt ; 2 uses
  %.sroa.11.032.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 96
  %.phi.trans.insert.i.i43 = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 8
  %.val2.i.pre.i.i44 = load ptr, ptr %.phi.trans.insert.i.i43, align 8, !alias.scope !8988, !noalias !8982 ; 2 uses
  %.phi.trans.insert43.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 16
  %.val3.i.pre.i.i45 = load i64, ptr %.phi.trans.insert43.i.i, align 8, !alias.scope !8988, !noalias !8982 ; 4 uses
  br label %.lr.ph.i.i46

.preheader.i.i50:                                 ; preds = %.lr.ph.i.i46, %.preheader.i.i50
  %.sroa.015.1.i.i = phi ptr [ %.sroa.11.1.i.i51, %.preheader.i.i50 ], [ %.sroa.11.035.i.i, %.lr.ph.i.i46 ]
  %.sroa.11.1.i.i51 = phi ptr [ %.sroa.11.1.sroa.gep26.i.i, %.preheader.i.i50 ], [ %.sroa.11.0.i.i49, %.lr.ph.i.i46 ] ; 6 uses
  %.sroa.19.1.i.i52 = phi i64 [ %i.cd, %.preheader.i.i50 ], [ %i.cn, %.lr.ph.i.i46 ] ; 2 uses
  %i.bv = icmp eq ptr %.sroa.11.1.i.i51, %i.bu    ; 4 uses
  %.sroa.01.0.i.i53 = select i1 %i.bv, ptr %i.a, ptr %.sroa.11.1.i.i51
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i54.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bv, ptr %i.a, ptr %.sroa.11.1.i.i51
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i54.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i54.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.val.i.i.i56 = load ptr, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i54.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !8989, !nonnull !4, !noundef !4
  %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bv, ptr %i.a, ptr %.sroa.11.1.i.i51
  %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  %.val1.i.i.i57 = load i64, ptr %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !8989, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.pre.i.i45, i64 %.val1.i.i.i57)
  %i.bw = tail call i32 @memcmp(ptr nonnull readonly %.val2.i.pre.i.i44, ptr nonnull readonly %.val.i.i.i56, i64 %spec.store.select.i.i.i.i.i.i), !noalias !8992 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = icmp eq i32 %i.bw, 0
  %i.bz = sub i64 %.val3.i.pre.i.i45, %.val1.i.i.i57
  %spec.select.i.i.i.i.i.i = select i1 %i.by, i64 %i.bz, i64 %i.bx
  %i.ca = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1
  %i.cb = getelementptr inbounds nuw [48 x i8], ptr %i.bs, i64 %.sroa.19.1.i.i52 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.015.1.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.cb, i64 48, i1 false), !alias.scope !8993, !noalias !8989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cb, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.01.0.i.i53, i64 48, i1 false), !noalias !8989
  %i.cc = zext i1 %i.ca to i64
  %i.cd = add i64 %.sroa.19.1.i.i52, %i.cc        ; 4 uses
  %.sroa.11.1.sroa.gep26.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i51, i64 48
  br i1 %i.bv, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCNvNtB1z_4scan23replay_deletion_vectors0s0_0E0E0ECs7p2uQeJxui2_9deltalake.exit.i, label %.preheader.i.i50

.lr.ph.i.i46:                                     ; preds = %.lr.ph.i.i46, %bb.i
  %.sroa.11.035.i.i = phi ptr [ %.sroa.11.0.i.i49, %.lr.ph.i.i46 ], [ %.sroa.11.032.i.i, %bb.i ] ; 4 uses
  %.sroa.19.034.i.i = phi i64 [ %i.cn, %.lr.ph.i.i46 ], [ 0, %bb.i ] ; 2 uses
  %.sroa.015.033.i.i = phi ptr [ %.sroa.11.035.i.i, %.lr.ph.i.i46 ], [ %i.bs, %bb.i ] ; 3 uses
  %i.ce = getelementptr i8, ptr %.sroa.015.033.i.i, i64 56
  %.val.i9.i.i47 = load ptr, ptr %i.ce, align 8, !alias.scope !8993, !noalias !8994, !nonnull !4, !noundef !4
  %i.cf = getelementptr i8, ptr %.sroa.015.033.i.i, i64 64
  %.val1.i10.i.i48 = load i64, ptr %i.cf, align 8, !alias.scope !8993, !noalias !8994, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i13.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.pre.i.i45, i64 %.val1.i10.i.i48)
  %i.cg = tail call i32 @memcmp(ptr nonnull readonly %.val2.i.pre.i.i44, ptr nonnull readonly %.val.i9.i.i47, i64 %spec.store.select.i.i.i.i13.i.i), !noalias !8997 ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp eq i32 %i.cg, 0
  %i.cj = sub i64 %.val3.i.pre.i.i45, %.val1.i10.i.i48
  %spec.select.i.i.i.i14.i.i = select i1 %i.ci, i64 %i.cj, i64 %i.ch
  %i.ck = icmp sgt i64 %spec.select.i.i.i.i14.i.i, -1
  %i.cl = getelementptr inbounds nuw [48 x i8], ptr %i.bs, i64 %.sroa.19.034.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.015.033.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.cl, i64 48, i1 false), !alias.scope !8993, !noalias !8994
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cl, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.035.i.i, i64 48, i1 false), !alias.scope !8993, !noalias !8994
  %i.cm = zext i1 %i.ck to i64
  %i.cn = add i64 %.sroa.19.034.i.i, %i.cm        ; 2 uses
  %.sroa.11.0.i.i49 = getelementptr inbounds nuw i8, ptr %.sroa.11.035.i.i, i64 48 ; 3 uses
  %i.co = icmp ult ptr %.sroa.11.0.i.i49, %i.bu
  br i1 %i.co, label %.lr.ph.i.i46, label %.preheader.i.i50

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCNvNtB1z_4scan23replay_deletion_vectors0s0_0E0E0ECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.preheader.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8987
  %.not7.i58 = icmp ult i64 %i.cd, %.sroa.15.080122
  br i1 %.not7.i58, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCNvNtB1z_4scan23replay_deletion_vectors0s0_0E0E0ECs7p2uQeJxui2_9deltalake.exit.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCNvNtB1z_4scan23replay_deletion_vectors0s0_0E0E0ECs7p2uQeJxui2_9deltalake.exit.i
  tail call void @_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelection14swap_uncheckedCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %.sroa.0.081121, i64 noundef range(i64 33, 192153584101141163) %.sroa.15.080122, i64 noundef 0, i64 noundef %i.cd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28)
  %i.cp = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %i.cq = sub nuw i64 %.sroa.15.080122, %i.cp
  %i.cr = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.081121, i64 %i.cp
  br label %.backedge

.backedge:                                        ; preds = %bb.k, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelection12split_at_mutCs7p2uQeJxui2_9deltalake.exit
  %.sroa.023.0.be = phi ptr [ %i.be, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelection12split_at_mutCs7p2uQeJxui2_9deltalake.exit ], [ null, %bb.k ]
  %.sroa.15.0.be = phi i64 [ %i.bh, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelection12split_at_mutCs7p2uQeJxui2_9deltalake.exit ], [ %i.cq, %bb.k ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.bf, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelection12split_at_mutCs7p2uQeJxui2_9deltalake.exit ], [ %i.cr, %bb.k ] ; 3 uses
  %i.cs = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.cs, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source27TableProviderFilterPushDownNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 3) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !range !3, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !2051, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit, !prof !1649

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #42
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.j = icmp ule i64 %2, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.f, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.l, align 8
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source27TableProviderFilterPushDownE11extend_withCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %2, i8 noundef %1)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source27TableProviderFilterPushDownEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.b) #37
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs5_NtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_indexNtB6_20ByteArrayColumnIndexNtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %.sroa.3114 = alloca [22 x i8], align 2         ; 2 uses
  %.sroa.3105 = alloca [22 x i8], align 2         ; 2 uses
  %.sroa.396 = alloca [22 x i8], align 2          ; 2 uses
  %.sroa.387 = alloca [22 x i8], align 2          ; 2 uses
  %3 = alloca [32 x i8], align 8                  ; 2 uses
  %4 = alloca [32 x i8], align 8                  ; 2 uses
  %5 = alloca [32 x i8], align 8                  ; 2 uses
  %6 = alloca [32 x i8], align 8                  ; 2 uses
  %7 = alloca [32 x i8], align 8                  ; 2 uses
  %8 = alloca [32 x i8], align 8                  ; 2 uses
  %.sroa.374 = alloca [22 x i8], align 2          ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RINvXsB_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtNtCs6Po7BT7Nknu_5alloc3vec3VecbENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteIBL_hEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 1, i16 noundef 0)
  %i.l = load i64, ptr %i.k, align 8, !range !8998, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.l, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.570.0.copyload = load i16, ptr %.sroa.570.0..sroa_idx, align 8
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.374, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.671.0..sroa_idx, i64 22, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %i.l, ptr %0, align 8
  %.sroa.273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.570.0.copyload, ptr %.sroa.273.0..sroa_idx, align 8
  %.sroa.374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.374.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.374, i64 22, i1 false)
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 6 uses
  %i.o = icmp sgt i64 %i.n, -1
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE17write_field_beginCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 9, i16 noundef 2, i16 noundef 1)
  %i.p = load i64, ptr %i.j, align 8, !range !8998, !noundef !4
  %.not115 = icmp eq i64 %i.p, 8
  br i1 %.not115, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  br label %bb.z

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE16write_list_beginCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 8, i64 noundef %i.n)
  %i.q = load i64, ptr %i.i, align 8, !range !8998, !noundef !4
  %.not116 = icmp eq i64 %i.q, 8
  br i1 %.not116, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  br label %bb.z

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not135 = icmp eq i64 %i.n, 0                  ; 2 uses
  br i1 %.not135, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ad, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE17write_field_beginCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 9, i16 noundef 3, i16 noundef 2)
  %i.r = load i64, ptr %i.g, align 8, !range !8998, !noundef !4
  %.not117 = icmp eq i64 %i.r, 8
  br i1 %.not117, label %bb.i, label %bb.h

.lr.ph:                                           ; preds = %bb.g, %bb.ad
  %.sroa.075.0130 = phi i64 [ %i.at, %bb.ad ], [ 0, %bb.g ] ; 2 uses
  %i.s = call { ptr, i64 } @_RNvMs3_NtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_indexNtB5_20ByteArrayColumnIndex9min_value(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %1, i64 noundef %.sroa.075.0130) ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0        ; 2 uses
  %.not128 = icmp eq ptr %i.t, null               ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  %.sroa.312.0 = select i1 %.not128, i64 0, i64 %i.u
  %.sroa.011.0 = select i1 %.not128, ptr inttoptr (i64 1 to ptr), ptr %i.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE11write_bytesCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.011.0, i64 noundef %.sroa.312.0)
  %i.v = load i64, ptr %i.h, align 8, !range !8998, !noundef !4
  %.not129 = icmp eq i64 %i.v, 8
  br i1 %.not129, label %bb.ad, label %bb.ac

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  br label %bb.z

bb.i:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE16write_list_beginCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 8, i64 noundef %i.n)
  %i.w = load i64, ptr %i.f, align 8, !range !8998, !noundef !4
  %.not118 = icmp eq i64 %i.w, 8
  br i1 %.not118, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  br label %bb.z

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %.not135, label %._crit_edge134, label %.lr.ph133

._crit_edge134:                                   ; preds = %bb.ab, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @_RINvXs2W_NtCs4tdlwR1I4n2_7parquet5basicNtB7_13BoundaryOrderNtNtB9_14parquet_thrift16WriteThriftField18write_thrift_fieldQQINtNtNtB9_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 4, i16 noundef 3)
  %i.y = load i64, ptr %i.d, align 8, !range !8998, !noundef !4 ; 2 uses
  %.not119 = icmp eq i64 %i.y, 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aa = load i16, ptr %i.z, align 8             ; 3 uses
  br i1 %.not119, label %bb.m, label %bb.l

.lr.ph133:                                        ; preds = %bb.k, %bb.ab
  %.sroa.077.0131 = phi i64 [ %i.as, %bb.ab ], [ 0, %bb.k ] ; 2 uses
  %i.ab = call { ptr, i64 } @_RNvMs3_NtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_indexNtB5_20ByteArrayColumnIndex9max_value(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %1, i64 noundef %.sroa.077.0131) ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0      ; 2 uses
  %.not126 = icmp eq ptr %i.ac, null              ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1
  %.sroa.320.0 = select i1 %.not126, i64 0, i64 %i.ad
  %.sroa.019.0 = select i1 %.not126, ptr inttoptr (i64 1 to ptr), ptr %i.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE11write_bytesCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.019.0, i64 noundef %.sroa.320.0)
  %i.ae = load i64, ptr %i.e, align 8, !range !8998, !noundef !4
  %.not127 = icmp eq i64 %i.ae, 8
  br i1 %.not127, label %bb.ab, label %bb.aa

bb.l:                                             ; preds = %._crit_edge134
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.387, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.684.0..sroa_idx, i64 22, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.y, ptr %0, align 8
  %.sroa.286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.aa, ptr %.sroa.286.0..sroa_idx, align 8
  %.sroa.387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.387.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.387, i64 22, i1 false)
  br label %bb.z

bb.m:                                             ; preds = %._crit_edge134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !range !2051, !noundef !4
  %.not120 = icmp eq i64 %i.ag, -9223372036854775808
  br i1 %.not120, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvXsB_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtNtCs6Po7BT7Nknu_5alloc3vec3VecxENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteIBL_hEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 5, i16 noundef %i.aa)
  %i.ah = load i64, ptr %i.c, align 8, !range !8998, !noundef !4 ; 2 uses
  %.not121 = icmp eq i64 %i.ah, 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aj = load i16, ptr %i.ai, align 8            ; 2 uses
  br i1 %.not121, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.q, %bb.m
  %.sroa.053.0 = phi i16 [ %i.aj, %bb.q ], [ %i.aa, %bb.m ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !range !2051, !noundef !4
  %.not122 = icmp eq i64 %i.al, -9223372036854775808
  br i1 %.not122, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.n
  %.sroa.693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.396, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.693.0..sroa_idx, i64 22, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.ah, ptr %0, align 8
  %.sroa.295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.aj, ptr %.sroa.295.0..sroa_idx, align 8
  %.sroa.396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.396.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.396, i64 22, i1 false)
  br label %bb.z

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvXsB_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtNtCs6Po7BT7Nknu_5alloc3vec3VecxENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteIBL_hEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 6, i16 noundef %.sroa.053.0)
  %i.am = load i64, ptr %i.b, align 8, !range !8998, !noundef !4 ; 2 uses
  %.not123 = icmp eq i64 %i.am, 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ao = load i16, ptr %i.an, align 8            ; 2 uses
  br i1 %.not123, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.u, %bb.o
  %.sroa.053.1 = phi i16 [ %i.ao, %bb.u ], [ %.sroa.053.0, %bb.o ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !range !2051, !noundef !4
  %.not124 = icmp eq i64 %i.aq, -9223372036854775808
  br i1 %.not124, label %bb.w, label %bb.v

bb.t:                                             ; preds = %bb.r
  %.sroa.6102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.3105, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6102.0..sroa_idx, i64 22, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.am, ptr %0, align 8
  %.sroa.2104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.ao, ptr %.sroa.2104.0..sroa_idx, align 8
  %.sroa.3105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.3105.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.3105, i64 22, i1 false)
  br label %bb.z

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.s

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsB_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtNtCs6Po7BT7Nknu_5alloc3vec3VecxENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteIBL_hEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 7, i16 noundef %.sroa.053.1)
  %i.ar = load i64, ptr %i.a, align 8, !range !8998, !noundef !4 ; 2 uses
  %.not125 = icmp eq i64 %i.ar, 8
  br i1 %.not125, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.y, %bb.s
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 0)
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5110.0.copyload = load i16, ptr %.sroa.5110.0..sroa_idx, align 8
  %.sroa.6111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.3114, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6111.0..sroa_idx, i64 22, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.ar, ptr %0, align 8
  %.sroa.2113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.5110.0.copyload, ptr %.sroa.2113.0..sroa_idx, align 8
  %.sroa.3114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.3114.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.3114, i64 22, i1 false)
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.w

bb.z:                                             ; preds = %bb.l, %bb.p, %bb.t, %bb.x, %bb.ac, %bb.aa, %bb.w, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  ret void

bb.aa:                                            ; preds = %.lr.ph133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  br label %bb.z

bb.ab:                                            ; preds = %.lr.ph133
  %i.as = add nuw nsw i64 %.sroa.077.0131, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %exitcond137.not = icmp eq i64 %i.as, %i.n
  br i1 %exitcond137.not, label %._crit_edge134, label %.lr.ph133

bb.ac:                                            ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  br label %bb.z

bb.ad:                                            ; preds = %.lr.ph
  %i.at = add nuw nsw i64 %.sroa.075.0130, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %exitcond.not = icmp eq i64 %i.at, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_indexNtB6_19ColumnIndexMetaDataNtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [32 x i8], align 8               ; 6 uses
  %i.ab = alloca [32 x i8], align 8               ; 6 uses
  %i.ac = alloca [32 x i8], align 8               ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 6 uses
  %i.af = alloca [32 x i8], align 8               ; 6 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [32 x i8], align 8               ; 6 uses
  %i.am = alloca [32 x i8], align 8               ; 6 uses
  %i.an = alloca [32 x i8], align 8               ; 6 uses
  %i.ao = alloca [32 x i8], align 8               ; 6 uses
  %i.ap = alloca [32 x i8], align 8               ; 6 uses
  %i.aq = alloca [32 x i8], align 8               ; 6 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [32 x i8], align 8               ; 7 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %i.aw = alloca [32 x i8], align 8               ; 6 uses
  %i.ax = alloca [32 x i8], align 8               ; 6 uses
  %i.ay = alloca [32 x i8], align 8               ; 6 uses
  %i.az = alloca [32 x i8], align 8               ; 6 uses
  %i.ba = alloca [32 x i8], align 8               ; 6 uses
  %i.bb = alloca [32 x i8], align 8               ; 6 uses
  %i.bc = alloca [32 x i8], align 8               ; 7 uses
  %i.bd = alloca [32 x i8], align 8               ; 7 uses
  %i.be = alloca [32 x i8], align 8               ; 7 uses
  %i.bf = alloca [32 x i8], align 8               ; 7 uses
  %i.bg = alloca [32 x i8], align 8               ; 7 uses
  %i.bh = alloca [32 x i8], align 8               ; 6 uses
  %i.bi = alloca [32 x i8], align 8               ; 6 uses
  %i.bj = alloca [32 x i8], align 8               ; 6 uses
  %i.bk = alloca [32 x i8], align 8               ; 6 uses
  %i.bl = alloca [32 x i8], align 8               ; 6 uses
  %i.bm = alloca [32 x i8], align 8               ; 6 uses
  %i.bn = alloca [32 x i8], align 8               ; 7 uses
  %i.bo = alloca [24 x i8], align 8               ; 6 uses
  %i.bp = load i64, ptr %1, align 8, !range !8998, !noundef !4
  switch i64 %i.bp, label %bb.b [
    i64 1, label %bb.c
    i64 2, label %bb.an
    i64 3, label %bb.by
    i64 4, label %bb.dj
    i64 5, label %bb.eu
    i64 6, label %bb.gf
    i64 7, label %bb.hq
    i64 8, label %bb.hr
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bo, i64 noundef 27, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.bq = load i64, ptr %i.bo, align 8, !range !3, !noundef !4
  %i.br = trunc nuw i64 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !range !2051, !noundef !4 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  br i1 %i.br, label %bb.hs, label %bb.ht, !prof !1649

bb.c:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9002)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !9004
  call void @_RINvXsB_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtNtCs6Po7BT7Nknu_5alloc3vec3VecbENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteIBL_hEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.bv, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 1, i16 noundef 0), !noalias !8999
  %i.bw = load i64, ptr %i.bn, align 8, !range !8998, !noalias !9004, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.bw, 8
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.570.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.570.0.copyload.i = load i16, ptr %.sroa.570.0..sroa_idx.i, align 8, !noalias !9004
  %.sroa.671.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 10
  %.sroa.374.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.374.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.671.0..sroa_idx.i, i64 22, i1 false), !noalias !9006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !9004
  store i64 %i.bw, ptr %0, align 8, !alias.scope !8999, !noalias !9006
  %.sroa.273.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.570.0.copyload.i, ptr %.sroa.273.0..sroa_idx.i, align 8, !alias.scope !8999, !noalias !9006
  br label %_RINvXs2_NtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexbENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !9004
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !9002, !noalias !9007, !noundef !4 ; 6 uses
  %i.bz = icmp sgt i64 %i.by, -1
  tail call void @llvm.assume(i1 %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !9004
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE17write_field_beginCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bm, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 9, i16 noundef 2, i16 noundef 1), !noalias !8999
  %i.ca = load i64, ptr %i.bm, align 8, !range !8998, !noalias !9004, !noundef !4
  %.not115.i = icmp eq i64 %i.ca, 8
  br i1 %.not115.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 32, i1 false), !noalias !9006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !9004
  br label %_RINvXs2_NtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexbENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !9004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !9004
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE16write_list_beginCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bl, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 8, i64 noundef %i.by), !noalias !8999
  %i.cb = load i64, ptr %i.bl, align 8, !range !8998, !noalias !9004, !noundef !4
  %.not116.i = icmp eq i64 %i.cb, 8
  br i1 %.not116.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 32, i1 false), !noalias !9006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !9004
  br label %_RINvXs2_NtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexbENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !9004
  %.not145.i = icmp eq i64 %i.by, 0               ; 2 uses
  br i1 %.not145.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !9008, !noalias !9007, !nonnull !4, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !9002, !noalias !9007 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !9002, !noalias !9007, !nonnull !4
  br label %bb.j

._crit_edge.i:                                    ; preds = %bb.am, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !9004
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE17write_field_beginCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 9, i16 noundef 3, i16 noundef 2), !noalias !8999
  %i.ci = load i64, ptr %i.bj, align 8, !range !8998, !noalias !9004, !noundef !4
  %.not117.i = icmp eq i64 %i.ci, 8
  br i1 %.not117.i, label %bb.n, label %bb.m

bb.j:                                             ; preds = %bb.am, %.lr.ph.i
  %.sroa.075.0140.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cj, %bb.am ] ; 5 uses
  %i.cj = add nuw nsw i64 %.sroa.075.0140.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9011)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.sroa.075.0140.i
  %i.cl = load i8, ptr %i.ck, align 1, !range !2042, !noalias !9012, !noundef !4
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %_RNvMs0_NtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexbE9min_valueCs7p2uQeJxui2_9deltalake.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cn = icmp ult i64 %.sroa.075.0140.i, %i.cf
  br i1 %i.cn, label %bb.ak, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 9223372036854775807) %.sroa.075.0140.i, i64 noundef %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #41, !noalias !9012
  unreachable

bb.m:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 32, i1 false), !noalias !9006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !9004
  br label %_RINvXs2_NtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexbENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake.exit

bb.n:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !9004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !9004
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE16write_list_beginCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bi, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 8, i64 noundef %i.by), !noalias !8999
end_hunk_1
