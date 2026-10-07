Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.13?download=true
inline.NumInlined: 5997
inline.NumDeleted: 1809
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvMs3_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace8providerNtB6_21TracerProviderBuilder19with_batch_exporterNtNtCs1e4wyRlCFp2_18opentelemetry_otlp4span12SpanExporterECs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !295
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !296
  %i.h = call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 120, i64 noundef range(i64 1, 129) 8) #46, !noalias !296 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.g, !prof !14

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #47
          to label %.noexc.i unwind label %bb.e, !noalias !295

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor18BatchSpanProcessorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.e) #48
          to label %.body.i unwind label %bb.f, !noalias !297

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !297
  unreachable

.body.i:                                          ; preds = %bb.i, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.p, %bb.i ] ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor13SpanProcessorEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.a) #48
          to label %bb.l unwind label %bb.k, !noalias !297

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull align 8 dereferenceable(120) %i.e, i64 120, i1 false), !noalias !297
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !298, !noalias !295, !noundef !12 ; 3 uses
  %i.n = load i64, ptr %i.a, align 8, !range !15, !alias.scope !298, !noalias !295, !noundef !12
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor13SpanProcessorEL_EE8grow_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.p unwind label %bb.i, !noalias !295

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor13SpanProcessorEL_EECs7p2uQeJxui2_9deltalake(ptr nonnull %i.h, ptr nonnull @21) #48
          to label %.body.i unwind label %bb.j, !noalias !295

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !295
  unreachable

bb.k:                                             ; preds = %bb.o, %bb.l, %.body.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !293
  unreachable

bb.l:                                             ; preds = %.body.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6config6ConfigECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.d) #48
          to label %bb.m unwind label %bb.k, !noalias !293

bb.m:                                             ; preds = %bb.l
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !300, !noalias !301, !noundef !12 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !302
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.o, label %.body

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCscq8Lx7CD32J_17opentelemetry_sdk8resource13ResourceInnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s) #51
          to label %.body unwind label %bb.k, !noalias !293

bb.p:                                             ; preds = %bb.h, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !298, !noalias !295, !nonnull !12, !noundef !12
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.m ; 2 uses
  store ptr %i.h, ptr %i.z, align 8, !noalias !295
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @21, ptr %i.aa, align 8, !noalias !295
  %i.ab = add i64 %i.m, 1
  store i64 %i.ab, ptr %i.l, align 8, !alias.scope !298, !noalias !295
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !294, !noalias !301, !noundef !12
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.ae, ptr %i.af, align 8, !alias.scope !293, !noalias !303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

.body:                                            ; preds = %bb.o, %bb.n, %bb.m, %bb.q
  %eh.lpad-body4 = phi { ptr, i32 } [ %i.ag, %bb.q ], [ %eh.lpad-body.i, %bb.m ], [ %eh.lpad-body.i, %bb.n ], [ %eh.lpad-body.i, %bb.o ]
  resume { ptr, i32 } %eh.lpad-body4

bb.q:                                             ; preds = %bb.a, %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace8provider21TracerProviderBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(104) %1) #48
          to label %.body unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1v_9GetResult5bytes00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB1v_5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.g = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !310 ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %2, i64 48, i1 false), !noalias !311
  %.val.i = load i64, ptr %1, align 8, !range !19, !alias.scope !309, !noalias !312, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7.i = load ptr, ptr %i.h, align 8, !alias.scope !309, !noalias !312
  %i.i = trunc nuw i64 %.val.i to i1
  %.sroa.01.0.v.i.i = select i1 %i.i, i64 488, i64 512
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %.val7.i, i64 %.sroa.01.0.v.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !noalias !310, !noundef !12 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noalias !310, !nonnull !12, !align !13, !noundef !12
  %i.n = atomicrmw add ptr %i.k, i64 1 monotonic, align 8, !noalias !310
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i = phi ptr [ undef, %bb.c ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !310
  call void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1y_9GetResult5bytes00ENtNtBR_8schedule16BlockingScheduleECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noundef %i.k, ptr %.sroa.5.0.i.i, i64 noundef %i.g), !noalias !310
  %i.p = load ptr, ptr %i.a, align 8, !noalias !310, !nonnull !12, !noundef !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !310, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !310
  store ptr %i.r, ptr %i.c, align 8, !noalias !310
  %i.s = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull %i.p, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1B_9GetResult5bytes00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB1B_5ErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g, !noalias !313 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %common.resume unwind label %bb.h, !noalias !313

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !313
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.y, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1B_9GetResult5bytes00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB1B_5ErrorEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f
  %i.v = extractvalue { i64, ptr } %i.s, 0
  %i.w = extractvalue { i64, ptr } %i.s, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.r, ptr %i.f, align 8
  %i.x = trunc nuw i64 %i.v to i1
  %.not = icmp ne ptr %i.w, null
  %or.cond.not = select i1 %i.x, i1 %.not, i1 false, !prof !23
  br i1 %or.cond.not, label %bb.j, label %bb.i, !prof !23

bb.i:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1B_9GetResult5bytes00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB1B_5ErrorEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.r

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1B_9GetResult5bytes00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB1B_5ErrorEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.w, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #47
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #48
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %common.resume unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB4_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3k_5error5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [176 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [176 x i8], align 8               ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1g_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4x_5error5ErrorEE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span7current(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.d unwind label %bb.aa

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.m, ptr noundef nonnull align 8 dereferenceable(112) %0, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !345
  %i.n = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25)
          to label %bb.e unwind label %bb.y, !noalias !345 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.o = extractvalue { i64, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.n, 1        ; 3 uses
  store i64 %i.o, ptr %i.g, align 8, !noalias !345
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.p, ptr %i.q, align 8, !noalias !345
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %i.r = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !346 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = trunc nuw i64 %i.o to i1                 ; 2 uses
  %.sroa.01.0.v.i = select i1 %i.s, i64 464, i64 712
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.v.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.b, ptr noundef nonnull align 8 dereferenceable(176) %i.h, i64 176, i1 false)
  %.sroa.01.0.v.i.i.i.i = select i1 %i.s, i64 488, i64 512
  %.sroa.01.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.v.i.i.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !346, !noundef !12 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !noalias !346, !nonnull !12, !align !13, !noundef !12
  %i.x = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !346
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %.sroa.5.0.i.i.i.i = phi ptr [ undef, %bb.g ], [ %i.w, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !346
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1v_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4M_5error5ErrorEEs_0ENtNtBR_8schedule16BlockingScheduleECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(176) %i.b, ptr noundef %i.u, ptr %.sroa.5.0.i.i.i.i, i64 noundef %i.r)
          to label %.noexc.i unwind label %bb.r, !noalias !345

.noexc.i:                                         ; preds = %bb.j
  %i.z = load ptr, ptr %i.a, align 8, !noalias !346, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !346, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !346
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !346
  store ptr %i.ab, ptr %i.c, align 8, !noalias !346
  %i.ac = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i, ptr noundef nonnull %i.z, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4P_5error5ErrorEEs_0B3B_ECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.k, !noalias !347 ; 2 uses

bb.k:                                             ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2j_5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body.i unwind label %bb.l, !noalias !347

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !347
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4P_5error5ErrorEEs_0B3B_ECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.noexc.i
  %i.af = extractvalue { i64, ptr } %i.ac, 0
  %i.ag = extractvalue { i64, ptr } %i.ac, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !346
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !348
  store ptr %i.ab, ptr %i.f, align 8, !noalias !348
  %i.ah = trunc nuw i64 %i.af to i1
  %.not.i.i = icmp ne ptr %i.ag, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %.not.i.i, i1 false, !prof !23
  br i1 %or.cond.not.i.i, label %bb.m, label %bb.s, !prof !23

bb.m:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4P_5error5ErrorEEs_0B3B_ECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !348
  store ptr %i.ag, ptr %i.e, align 8, !noalias !348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !348
  store ptr %i.e, ptr %i.d, align 8, !noalias !348
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !348
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #47
          to label %bb.o unwind label %bb.n, !noalias !349

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #48
          to label %bb.q unwind label %bb.p, !noalias !349

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.q, %bb.n
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !349
  unreachable

bb.q:                                             ; preds = %bb.n
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2j_5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body.i unwind label %bb.p, !noalias !349

bb.r:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %bb.q, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ak, %bb.r ], [ %i.ad, %bb.k ], [ %i.ai, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.g) #48
          to label %.body.thread unwind label %bb.x, !noalias !345

bb.s:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4P_5error5ErrorEEs_0B3B_ECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !348
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.al = load i64, ptr %i.g, align 8, !range !19, !alias.scope !352, !noalias !345, !noundef !12
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.an = load ptr, ptr %i.q, align 8, !alias.scope !355, !noalias !345, !nonnull !12, !noundef !12
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !356
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #51
  br label %bb.z

bb.v:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.aq = load ptr, ptr %i.q, align 8, !alias.scope !359, !noalias !345, !nonnull !12, !noundef !12
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !360
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #51
  br label %bb.z

bb.x:                                             ; preds = %bb.y, %.body.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.y:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtBN_8protocol11checkpoints21create_checkpoint_for000INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3N_5error5ErrorEEs_0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.h) #48
          to label %.body.thread unwind label %bb.x

bb.z:                                             ; preds = %bb.u, %bb.w, %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret ptr %i.ab

bb.aa:                                            ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.au = load i64, ptr %i.j, align 8, !range !19, !alias.scope !363, !noundef !12
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !366, !nonnull !12, !noundef !12
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !366
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aw) #51
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ae
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

.body.thread:                                     ; preds = %bb.y, %.body.i, %bb.ae
  %.pn8 = phi { ptr, i32 } [ %.pn.ph, %bb.ae ], [ %lpad.thr_comm.split-lp.i, %bb.y ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn8

bb.ae:                                            ; preds = %bb.b, %bb.ac, %bb.aa, %bb.ab
  %.pn.ph = phi { ptr, i32 } [ %i.k, %bb.b ], [ %lpad.thr_comm.split-lp, %bb.ac ], [ %lpad.thr_comm.split-lp, %bb.aa ], [ %lpad.thr_comm.split-lp, %bb.ab ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(112) %0) #48
          to label %.body.thread unwind label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB4_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB4_6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [104 x i8], align 8               ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1g_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1g_6errors15DeltaTableErrorEE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span7current(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.d unwind label %bb.aa

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !398
  %i.n = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25)
          to label %bb.e unwind label %bb.y, !noalias !398 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.o = extractvalue { i64, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.n, 1        ; 3 uses
  store i64 %i.o, ptr %i.g, align 8, !noalias !398
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.p, ptr %i.q, align 8, !noalias !398
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %i.r = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !399 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = trunc nuw i64 %i.o to i1                 ; 2 uses
  %.sroa.01.0.v.i = select i1 %i.s, i64 464, i64 712
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.v.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !399
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 104, i1 false)
  %.sroa.01.0.v.i.i.i.i = select i1 %i.s, i64 488, i64 512
  %.sroa.01.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.v.i.i.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !399, !noundef !12 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !noalias !399, !nonnull !12, !align !13, !noundef !12
  %i.x = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !399
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %.sroa.5.0.i.i.i.i = phi ptr [ undef, %bb.g ], [ %i.w, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !399
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1v_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1v_6errors15DeltaTableErrorEEs_0ENtNtBR_8schedule16BlockingScheduleECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.b, ptr noundef %i.u, ptr %.sroa.5.0.i.i.i.i, i64 noundef %i.r)
          to label %.noexc.i unwind label %bb.r, !noalias !398

.noexc.i:                                         ; preds = %bb.j
  %i.z = load ptr, ptr %i.a, align 8, !noalias !399, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !399, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !399
  store ptr %i.ab, ptr %i.c, align 8, !noalias !399
  %i.ac = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i, ptr noundef nonnull %i.z, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3E_ECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.k, !noalias !400 ; 2 uses

bb.k:                                             ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body.i unwind label %bb.l, !noalias !400

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !400
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3E_ECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.noexc.i
  %i.af = extractvalue { i64, ptr } %i.ac, 0
  %i.ag = extractvalue { i64, ptr } %i.ac, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !401
  store ptr %i.ab, ptr %i.f, align 8, !noalias !401
  %i.ah = trunc nuw i64 %i.af to i1
  %.not.i.i = icmp ne ptr %i.ag, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %.not.i.i, i1 false, !prof !23
  br i1 %or.cond.not.i.i, label %bb.m, label %bb.s, !prof !23

bb.m:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3E_ECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !401
  store ptr %i.ag, ptr %i.e, align 8, !noalias !401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !401
  store ptr %i.e, ptr %i.d, align 8, !noalias !401
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !401
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #47
          to label %bb.o unwind label %bb.n, !noalias !402

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #48
          to label %bb.q unwind label %bb.p, !noalias !402

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.q, %bb.n
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !402
  unreachable

bb.q:                                             ; preds = %bb.n
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body.i unwind label %bb.p, !noalias !402

bb.r:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %bb.q, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ak, %bb.r ], [ %i.ad, %bb.k ], [ %i.ai, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.g) #48
          to label %.body.thread unwind label %bb.x, !noalias !398

bb.s:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3E_ECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !401
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.al = load i64, ptr %i.g, align 8, !range !19, !alias.scope !405, !noalias !398, !noundef !12
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.an = load ptr, ptr %i.q, align 8, !alias.scope !408, !noalias !398, !nonnull !12, !noundef !12
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !409
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #51
  br label %bb.z

bb.v:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.aq = load ptr, ptr %i.q, align 8, !alias.scope !412, !noalias !398, !nonnull !12, !noundef !12
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !413
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #51
  br label %bb.z

bb.x:                                             ; preds = %bb.y, %.body.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.y:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtBN_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtB4_6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtBN_6errors15DeltaTableErrorEEs_0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.h) #48
          to label %.body.thread unwind label %bb.x

bb.z:                                             ; preds = %bb.u, %bb.w, %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret ptr %i.ab

bb.aa:                                            ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.au = load i64, ptr %i.j, align 8, !range !19, !alias.scope !416, !noundef !12
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !419, !nonnull !12, !noundef !12
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !419
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aw) #51
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ae
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

.body.thread:                                     ; preds = %bb.y, %.body.i, %bb.ae
  %.pn9 = phi { ptr, i32 } [ %.pn.ph, %bb.ae ], [ %lpad.thr_comm.split-lp.i, %bb.y ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn9

bb.ae:                                            ; preds = %bb.b, %bb.ac, %bb.aa, %bb.ab
  %.pn.ph = phi { ptr, i32 } [ %i.k, %bb.b ], [ %lpad.thr_comm.split-lp, %bb.ac ], [ %lpad.thr_comm.split-lp, %bb.aa ], [ %lpad.thr_comm.split-lp, %bb.ab ]
  %.val = load ptr, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.bb, align 8, !nonnull !12, !align !13, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00s0_0ECs7p2uQeJxui2_9deltalake(ptr %.val, ptr nonnull %.val4) #48
          to label %.body.thread unwind label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB4_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB2e_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB4_6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [104 x i8], align 8               ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1g_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3r_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1g_6errors15DeltaTableErrorEE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span7current(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.d unwind label %bb.aa

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !451
  %i.n = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25)
          to label %bb.e unwind label %bb.y, !noalias !451 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.o = extractvalue { i64, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.n, 1        ; 3 uses
  store i64 %i.o, ptr %i.g, align 8, !noalias !451
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.p, ptr %i.q, align 8, !noalias !451
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %i.r = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !452 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = trunc nuw i64 %i.o to i1                 ; 2 uses
  %.sroa.01.0.v.i = select i1 %i.s, i64 464, i64 712
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.v.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 104, i1 false)
  %.sroa.01.0.v.i.i.i.i = select i1 %i.s, i64 488, i64 512
  %.sroa.01.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.v.i.i.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !452, !noundef !12 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !noalias !452, !nonnull !12, !align !13, !noundef !12
  %i.x = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !452
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %.sroa.5.0.i.i.i.i = phi ptr [ undef, %bb.g ], [ %i.w, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !452
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1v_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3G_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1v_6errors15DeltaTableErrorEEs_0ENtNtBR_8schedule16BlockingScheduleECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.b, ptr noundef %i.u, ptr %.sroa.5.0.i.i.i.i, i64 noundef %i.r)
          to label %.noexc.i unwind label %bb.r, !noalias !451

.noexc.i:                                         ; preds = %bb.j
  %i.z = load ptr, ptr %i.a, align 8, !noalias !452, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !452, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !452
  store ptr %i.ab, ptr %i.c, align 8, !noalias !452
  %i.ac = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i, ptr noundef nonnull %i.z, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3J_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3E_ECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.k, !noalias !453 ; 2 uses

bb.k:                                             ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB1a_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body.i unwind label %bb.l, !noalias !453

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !453
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3J_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3E_ECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.noexc.i
  %i.af = extractvalue { i64, ptr } %i.ac, 0
  %i.ag = extractvalue { i64, ptr } %i.ac, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !454
  store ptr %i.ab, ptr %i.f, align 8, !noalias !454
  %i.ah = trunc nuw i64 %i.af to i1
  %.not.i.i = icmp ne ptr %i.ag, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %.not.i.i, i1 false, !prof !23
  br i1 %or.cond.not.i.i, label %bb.m, label %bb.s, !prof !23

bb.m:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3J_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3E_ECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !454
  store ptr %i.ag, ptr %i.e, align 8, !noalias !454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !454
  store ptr %i.e, ptr %i.d, align 8, !noalias !454
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !454
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #47
          to label %bb.o unwind label %bb.n, !noalias !455

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #48
          to label %bb.q unwind label %bb.p, !noalias !455

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.q, %bb.n
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !455
  unreachable

bb.q:                                             ; preds = %bb.n
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB1a_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body.i unwind label %bb.p, !noalias !455

bb.r:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %bb.q, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ak, %bb.r ], [ %i.ad, %bb.k ], [ %i.ai, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.g) #48
          to label %.body.thread unwind label %bb.x, !noalias !451

bb.s:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3J_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3E_ECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !454
  call void @llvm.experimental.noalias.scope.decl(metadata !456)
  call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.al = load i64, ptr %i.g, align 8, !range !19, !alias.scope !458, !noalias !451, !noundef !12
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !459)
  call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %i.an = load ptr, ptr %i.q, align 8, !alias.scope !461, !noalias !451, !nonnull !12, !noundef !12
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !462
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #51
  br label %bb.z

bb.v:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.aq = load ptr, ptr %i.q, align 8, !alias.scope !465, !noalias !451, !nonnull !12, !noundef !12
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !466
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #51
  br label %bb.z

bb.x:                                             ; preds = %bb.y, %.body.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.y:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtBN_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtBN_6errors15DeltaTableErrorEEs_0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.h) #48
          to label %.body.thread unwind label %bb.x

bb.z:                                             ; preds = %bb.u, %bb.w, %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret ptr %i.ab

bb.aa:                                            ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.au = load i64, ptr %i.j, align 8, !range !19, !alias.scope !469, !noundef !12
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !470)
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !472, !nonnull !12, !noundef !12
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !472
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aw) #51
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ae
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

.body.thread:                                     ; preds = %bb.y, %.body.i, %bb.ae
  %.pn9 = phi { ptr, i32 } [ %.pn.ph, %bb.ae ], [ %lpad.thr_comm.split-lp.i, %bb.y ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn9

bb.ae:                                            ; preds = %bb.b, %bb.ac, %bb.aa, %bb.ab
  %.pn.ph = phi { ptr, i32 } [ %i.k, %bb.b ], [ %lpad.thr_comm.split-lp, %bb.ac ], [ %lpad.thr_comm.split-lp, %bb.aa ], [ %lpad.thr_comm.split-lp, %bb.ab ]
  %.val = load ptr, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.bb, align 8, !nonnull !12, !align !13, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00s2_0ECs7p2uQeJxui2_9deltalake(ptr %.val, ptr nonnull %.val4) #48
          to label %.body.thread unwind label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB4_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(176) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [240 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [240 x i8], align 8               ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1g_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span7current(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.d unwind label %bb.aa

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.m, ptr noundef nonnull align 8 dereferenceable(176) %0, i64 176, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !504
  %i.n = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25)
          to label %bb.e unwind label %bb.y, !noalias !504 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.o = extractvalue { i64, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.n, 1        ; 3 uses
  store i64 %i.o, ptr %i.g, align 8, !noalias !504
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.p, ptr %i.q, align 8, !noalias !504
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %i.r = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !505 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = trunc nuw i64 %i.o to i1                 ; 2 uses
  %.sroa.01.0.v.i = select i1 %i.s, i64 464, i64 712
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.v.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.b, ptr noundef nonnull align 8 dereferenceable(240) %i.h, i64 240, i1 false)
  %.sroa.01.0.v.i.i.i.i = select i1 %i.s, i64 488, i64 512
  %.sroa.01.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.v.i.i.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !505, !noundef !12 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !noalias !505, !nonnull !12, !align !13, !noundef !12
  %i.x = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !505
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %.sroa.5.0.i.i.i.i = phi ptr [ undef, %bb.g ], [ %i.w, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !505
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1v_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0ENtNtBR_8schedule16BlockingScheduleECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(240) %i.b, ptr noundef %i.u, ptr %.sroa.5.0.i.i.i.i, i64 noundef %i.r)
          to label %.noexc.i unwind label %bb.r, !noalias !504

.noexc.i:                                         ; preds = %bb.j
  %i.z = load ptr, ptr %i.a, align 8, !noalias !505, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !505, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !505
  store ptr %i.ab, ptr %i.c, align 8, !noalias !505
  %i.ac = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i, ptr noundef nonnull %i.z, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0B3E_ECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.k, !noalias !506 ; 2 uses

bb.k:                                             ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body.i unwind label %bb.l, !noalias !506

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !506
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0B3E_ECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.noexc.i
  %i.af = extractvalue { i64, ptr } %i.ac, 0
  %i.ag = extractvalue { i64, ptr } %i.ac, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !507
  store ptr %i.ab, ptr %i.f, align 8, !noalias !507
  %i.ah = trunc nuw i64 %i.af to i1
  %.not.i.i = icmp ne ptr %i.ag, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %.not.i.i, i1 false, !prof !23
  br i1 %or.cond.not.i.i, label %bb.m, label %bb.s, !prof !23

bb.m:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0B3E_ECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !507
  store ptr %i.ag, ptr %i.e, align 8, !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !507
  store ptr %i.e, ptr %i.d, align 8, !noalias !507
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !507
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #47
          to label %bb.o unwind label %bb.n, !noalias !508

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #48
          to label %bb.q unwind label %bb.p, !noalias !508

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.q, %bb.n
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !508
  unreachable

bb.q:                                             ; preds = %bb.n
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body.i unwind label %bb.p, !noalias !508

bb.r:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %bb.q, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ak, %bb.r ], [ %i.ad, %bb.k ], [ %i.ai, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.g) #48
          to label %.body.thread unwind label %bb.x, !noalias !504

bb.s:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0B3E_ECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !507
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.al = load i64, ptr %i.g, align 8, !range !19, !alias.scope !511, !noalias !504, !noundef !12
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  call void @llvm.experimental.noalias.scope.decl(metadata !513)
  %i.an = load ptr, ptr %i.q, align 8, !alias.scope !514, !noalias !504, !nonnull !12, !noundef !12
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !515
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #51
  br label %bb.z

bb.v:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !516)
  call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %i.aq = load ptr, ptr %i.q, align 8, !alias.scope !518, !noalias !504, !nonnull !12, !noundef !12
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !519
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #51
  br label %bb.z

bb.x:                                             ; preds = %bb.y, %.body.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.y:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtBN_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.h) #48
          to label %.body.thread unwind label %bb.x

bb.z:                                             ; preds = %bb.u, %bb.w, %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret ptr %i.ab

bb.aa:                                            ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.au = load i64, ptr %i.j, align 8, !range !19, !alias.scope !522, !noundef !12
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !525, !nonnull !12, !noundef !12
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !525
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aw) #51
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ae
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

.body.thread:                                     ; preds = %bb.y, %.body.i, %bb.ae
  %.pn8 = phi { ptr, i32 } [ %.pn.ph, %bb.ae ], [ %lpad.thr_comm.split-lp.i, %bb.y ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn8

bb.ae:                                            ; preds = %bb.b, %bb.ac, %bb.aa, %bb.ab
  %.pn.ph = phi { ptr, i32 } [ %i.k, %bb.b ], [ %lpad.thr_comm.split-lp, %bb.ac ], [ %lpad.thr_comm.split-lp, %bb.aa ], [ %lpad.thr_comm.split-lp, %bb.ab ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00s4_0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(176) %0) #48
          to label %.body.thread unwind label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB4_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [96 x i8], align 8                ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1g_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4v_5error5ErrorEE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span7current(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.d unwind label %bb.aa

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !557
  %i.n = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25)
          to label %bb.e unwind label %bb.y, !noalias !557 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.o = extractvalue { i64, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.n, 1        ; 3 uses
  store i64 %i.o, ptr %i.g, align 8, !noalias !557
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.p, ptr %i.q, align 8, !noalias !557
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %i.r = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !558 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = trunc nuw i64 %i.o to i1                 ; 2 uses
  %.sroa.01.0.v.i = select i1 %i.s, i64 464, i64 712
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.v.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !558
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.h, i64 96, i1 false)
  %.sroa.01.0.v.i.i.i.i = select i1 %i.s, i64 488, i64 512
  %.sroa.01.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.v.i.i.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !558, !noundef !12 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !noalias !558, !nonnull !12, !align !13, !noundef !12
  %i.x = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !558
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %.sroa.5.0.i.i.i.i = phi ptr [ undef, %bb.g ], [ %i.w, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !558
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1v_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4K_5error5ErrorEEs_0ENtNtBR_8schedule16BlockingScheduleECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.b, ptr noundef %i.u, ptr %.sroa.5.0.i.i.i.i, i64 noundef %i.r)
          to label %.noexc.i unwind label %bb.r, !noalias !557

.noexc.i:                                         ; preds = %bb.j
  %i.z = load ptr, ptr %i.a, align 8, !noalias !558, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !558, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !558
  store ptr %i.ab, ptr %i.c, align 8, !noalias !558
  %i.ac = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i, ptr noundef nonnull %i.z, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4N_5error5ErrorEEs_0B3z_ECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.k, !noalias !559 ; 2 uses

bb.k:                                             ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2j_5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body.i unwind label %bb.l, !noalias !559

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !559
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4N_5error5ErrorEEs_0B3z_ECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.noexc.i
  %i.af = extractvalue { i64, ptr } %i.ac, 0
  %i.ag = extractvalue { i64, ptr } %i.ac, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !560
  store ptr %i.ab, ptr %i.f, align 8, !noalias !560
  %i.ah = trunc nuw i64 %i.af to i1
  %.not.i.i = icmp ne ptr %i.ag, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %.not.i.i, i1 false, !prof !23
  br i1 %or.cond.not.i.i, label %bb.m, label %bb.s, !prof !23

bb.m:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4N_5error5ErrorEEs_0B3z_ECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !560
  store ptr %i.ag, ptr %i.e, align 8, !noalias !560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !560
  store ptr %i.e, ptr %i.d, align 8, !noalias !560
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !560
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #47
          to label %bb.o unwind label %bb.n, !noalias !561

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #48
          to label %bb.q unwind label %bb.p, !noalias !561

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.q, %bb.n
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !561
  unreachable

bb.q:                                             ; preds = %bb.n
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2j_5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body.i unwind label %bb.p, !noalias !561

bb.r:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %bb.q, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ak, %bb.r ], [ %i.ad, %bb.k ], [ %i.ai, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.g) #48
          to label %.body.thread unwind label %bb.x, !noalias !557

bb.s:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4N_5error5ErrorEEs_0B3z_ECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !560
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  %i.al = load i64, ptr %i.g, align 8, !range !19, !alias.scope !564, !noalias !557, !noundef !12
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !565)
  call void @llvm.experimental.noalias.scope.decl(metadata !566)
  %i.an = load ptr, ptr %i.q, align 8, !alias.scope !567, !noalias !557, !nonnull !12, !noundef !12
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !568
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #51
  br label %bb.z

bb.v:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.aq = load ptr, ptr %i.q, align 8, !alias.scope !571, !noalias !557, !nonnull !12, !noundef !12
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !572
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #51
  br label %bb.z

bb.x:                                             ; preds = %bb.y, %.body.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.y:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtBN_8protocol14log_compaction16compact_logs_for000INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3L_5error5ErrorEEs_0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.h) #48
          to label %.body.thread unwind label %bb.x

bb.z:                                             ; preds = %bb.u, %bb.w, %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret ptr %i.ab

bb.aa:                                            ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !573)
  call void @llvm.experimental.noalias.scope.decl(metadata !574)
  %i.au = load i64, ptr %i.j, align 8, !range !19, !alias.scope !575, !noundef !12
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !576)
  call void @llvm.experimental.noalias.scope.decl(metadata !577)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !578, !nonnull !12, !noundef !12
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !578
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aw) #51
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ae
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

.body.thread:                                     ; preds = %bb.y, %.body.i, %bb.ae
  %.pn8 = phi { ptr, i32 } [ %.pn.ph, %bb.ae ], [ %lpad.thr_comm.split-lp.i, %bb.y ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn8

bb.ae:                                            ; preds = %bb.b, %bb.ac, %bb.aa, %bb.ab
  %.pn.ph = phi { ptr, i32 } [ %i.k, %bb.b ], [ %lpad.thr_comm.split-lp, %bb.ac ], [ %lpad.thr_comm.split-lp, %bb.aa ], [ %lpad.thr_comm.split-lp, %bb.ab ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol14log_compaction16compact_logs_for000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0) #48
          to label %.body.thread unwind label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB4_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB2c_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB4_6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [104 x i8], align 8               ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1g_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3p_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1g_6errors15DeltaTableErrorEE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span7current(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.d unwind label %bb.aa

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !610
  %i.n = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25)
          to label %bb.e unwind label %bb.y, !noalias !610 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.o = extractvalue { i64, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.n, 1        ; 3 uses
  store i64 %i.o, ptr %i.g, align 8, !noalias !610
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.p, ptr %i.q, align 8, !noalias !610
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %i.r = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !611 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = trunc nuw i64 %i.o to i1                 ; 2 uses
  %.sroa.01.0.v.i = select i1 %i.s, i64 464, i64 712
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.v.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 104, i1 false)
  %.sroa.01.0.v.i.i.i.i = select i1 %i.s, i64 488, i64 512
  %.sroa.01.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.v.i.i.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !611, !noundef !12 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !noalias !611, !nonnull !12, !align !13, !noundef !12
  %i.x = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !611
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %.sroa.5.0.i.i.i.i = phi ptr [ undef, %bb.g ], [ %i.w, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !611
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1v_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3E_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1v_6errors15DeltaTableErrorEEs_0ENtNtBR_8schedule16BlockingScheduleECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.b, ptr noundef %i.u, ptr %.sroa.5.0.i.i.i.i, i64 noundef %i.r)
          to label %.noexc.i unwind label %bb.r, !noalias !610

.noexc.i:                                         ; preds = %bb.j
  %i.z = load ptr, ptr %i.a, align 8, !noalias !611, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !611, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !611
  store ptr %i.ab, ptr %i.c, align 8, !noalias !611
  %i.ac = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i, ptr noundef nonnull %i.z, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3H_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3C_ECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.k, !noalias !612 ; 2 uses

bb.k:                                             ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB1a_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body.i unwind label %bb.l, !noalias !612

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !612
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3H_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3C_ECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.noexc.i
  %i.af = extractvalue { i64, ptr } %i.ac, 0
  %i.ag = extractvalue { i64, ptr } %i.ac, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !613
  store ptr %i.ab, ptr %i.f, align 8, !noalias !613
  %i.ah = trunc nuw i64 %i.af to i1
  %.not.i.i = icmp ne ptr %i.ag, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %.not.i.i, i1 false, !prof !23
  br i1 %or.cond.not.i.i, label %bb.m, label %bb.s, !prof !23

bb.m:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3H_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3C_ECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !613
  store ptr %i.ag, ptr %i.e, align 8, !noalias !613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !613
  store ptr %i.e, ptr %i.d, align 8, !noalias !613
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !613
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #47
          to label %bb.o unwind label %bb.n, !noalias !614

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #48
          to label %bb.q unwind label %bb.p, !noalias !614

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.q, %bb.n
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !614
  unreachable

bb.q:                                             ; preds = %bb.n
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB1a_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body.i unwind label %bb.p, !noalias !614

bb.r:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %bb.q, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ak, %bb.r ], [ %i.ad, %bb.k ], [ %i.ai, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.g) #48
          to label %.body.thread unwind label %bb.x, !noalias !610

bb.s:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1y_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3H_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1y_6errors15DeltaTableErrorEEs_0B3C_ECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !613
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  %i.al = load i64, ptr %i.g, align 8, !range !19, !alias.scope !617, !noalias !610, !noundef !12
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.an = load ptr, ptr %i.q, align 8, !alias.scope !620, !noalias !610, !nonnull !12, !noundef !12
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !621
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #51
  br label %bb.z

bb.v:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  %i.aq = load ptr, ptr %i.q, align 8, !alias.scope !624, !noalias !610, !nonnull !12, !noundef !12
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !625
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #51
  br label %bb.z

bb.x:                                             ; preds = %bb.y, %.body.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.y:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtBN_8protocol14log_compaction16compact_logs_for00s0_0INtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtBN_6errors15DeltaTableErrorEEs_0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.h) #48
          to label %.body.thread unwind label %bb.x

bb.z:                                             ; preds = %bb.u, %bb.w, %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret ptr %i.ab

bb.aa:                                            ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %i.au = load i64, ptr %i.j, align 8, !range !19, !alias.scope !628, !noundef !12
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !631, !nonnull !12, !noundef !12
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !631
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aw) #51
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ae
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

.body.thread:                                     ; preds = %bb.y, %.body.i, %bb.ae
  %.pn9 = phi { ptr, i32 } [ %.pn.ph, %bb.ae ], [ %lpad.thr_comm.split-lp.i, %bb.y ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn9

bb.ae:                                            ; preds = %bb.b, %bb.ac, %bb.aa, %bb.ab
  %.pn.ph = phi { ptr, i32 } [ %i.k, %bb.b ], [ %lpad.thr_comm.split-lp, %bb.ac ], [ %lpad.thr_comm.split-lp, %bb.aa ], [ %lpad.thr_comm.split-lp, %bb.ab ]
  %.val = load ptr, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.bb, align 8, !nonnull !12, !align !13, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol14log_compaction16compact_logs_for00s0_0ECs7p2uQeJxui2_9deltalake(ptr %.val, ptr nonnull %.val4) #48
          to label %.body.thread unwind label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2_8snapshotNtB1c_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3g_5error5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [184 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [184 x i8], align 8               ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1e_8snapshotNtB2o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4t_5error5ErrorEE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span7current(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.d unwind label %bb.aa

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.m, ptr noundef nonnull align 8 dereferenceable(120) %0, i64 120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !663
  %i.n = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25)
          to label %bb.e unwind label %bb.y, !noalias !663 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.o = extractvalue { i64, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.n, 1        ; 3 uses
  store i64 %i.o, ptr %i.g, align 8, !noalias !663
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.p, ptr %i.q, align 8, !noalias !663
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %i.r = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !664 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = trunc nuw i64 %i.o to i1                 ; 2 uses
  %.sroa.01.0.v.i = select i1 %i.s, i64 464, i64 712
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.v.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.b, ptr noundef nonnull align 8 dereferenceable(184) %i.h, i64 184, i1 false)
  %.sroa.01.0.v.i.i.i.i = select i1 %i.s, i64 488, i64 512
  %.sroa.01.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.v.i.i.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !664, !noundef !12 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !noalias !664, !nonnull !12, !align !13, !noundef !12
  %i.x = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !664
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %.sroa.5.0.i.i.i.i = phi ptr [ undef, %bb.g ], [ %i.w, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !664
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1t_8snapshotNtB2D_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4I_5error5ErrorEEs_0ENtNtBR_8schedule16BlockingScheduleECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.b, ptr noundef %i.u, ptr %.sroa.5.0.i.i.i.i, i64 noundef %i.r)
          to label %.noexc.i unwind label %bb.r, !noalias !663

.noexc.i:                                         ; preds = %bb.j
  %i.z = load ptr, ptr %i.a, align 8, !noalias !664, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !664, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !664
  store ptr %i.ab, ptr %i.c, align 8, !noalias !664
  %i.ac = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i, ptr noundef nonnull %i.z, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1w_8snapshotNtB2G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4L_5error5ErrorEEs_0B3x_ECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.k, !noalias !665 ; 2 uses

bb.k:                                             ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2j_5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body.i unwind label %bb.l, !noalias !665

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !665
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1w_8snapshotNtB2G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4L_5error5ErrorEEs_0B3x_ECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.noexc.i
  %i.af = extractvalue { i64, ptr } %i.ac, 0
  %i.ag = extractvalue { i64, ptr } %i.ac, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !666
  store ptr %i.ab, ptr %i.f, align 8, !noalias !666
  %i.ah = trunc nuw i64 %i.af to i1
  %.not.i.i = icmp ne ptr %i.ag, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %.not.i.i, i1 false, !prof !23
  br i1 %or.cond.not.i.i, label %bb.m, label %bb.s, !prof !23

bb.m:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1w_8snapshotNtB2G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4L_5error5ErrorEEs_0B3x_ECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !666
  store ptr %i.ag, ptr %i.e, align 8, !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !666
  store ptr %i.e, ptr %i.d, align 8, !noalias !666
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !666
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #47
          to label %bb.o unwind label %bb.n, !noalias !667

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #48
          to label %bb.q unwind label %bb.p, !noalias !667

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.q, %bb.n
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !667
  unreachable

bb.q:                                             ; preds = %bb.n
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2j_5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body.i unwind label %bb.p, !noalias !667

bb.r:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %bb.q, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ak, %bb.r ], [ %i.ad, %bb.k ], [ %i.ai, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.g) #48
          to label %.body.thread unwind label %bb.x, !noalias !663

bb.s:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1w_8snapshotNtB2G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4L_5error5ErrorEEs_0B3x_ECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !666
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %i.al = load i64, ptr %i.g, align 8, !range !19, !alias.scope !670, !noalias !663, !noundef !12
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  call void @llvm.experimental.noalias.scope.decl(metadata !672)
  %i.an = load ptr, ptr %i.q, align 8, !alias.scope !673, !noalias !663, !nonnull !12, !noundef !12
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !674
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #51
  br label %bb.z

bb.v:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !675)
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  %i.aq = load ptr, ptr %i.q, align 8, !alias.scope !677, !noalias !663, !nonnull !12, !noundef !12
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !678
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #51
  br label %bb.z

bb.x:                                             ; preds = %bb.y, %.body.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.y:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtBL_8snapshotNtB1V_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3J_5error5ErrorEEs_0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.h) #48
          to label %.body.thread unwind label %bb.x

bb.z:                                             ; preds = %bb.u, %bb.w, %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret ptr %i.ab

bb.aa:                                            ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !679)
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %i.au = load i64, ptr %i.j, align 8, !range !19, !alias.scope !681, !noundef !12
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !684, !nonnull !12, !noundef !12
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !684
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aw) #51
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ae
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

.body.thread:                                     ; preds = %bb.y, %.body.i, %bb.ae
  %.pn8 = phi { ptr, i32 } [ %.pn.ph, %bb.ae ], [ %lpad.thr_comm.split-lp.i, %bb.y ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn8

bb.ae:                                            ; preds = %bb.b, %bb.ac, %bb.aa, %bb.ab
  %.pn.ph = phi { ptr, i32 } [ %i.k, %bb.b ], [ %lpad.thr_comm.split-lp, %bb.ac ], [ %lpad.thr_comm.split-lp, %bb.aa ], [ %lpad.thr_comm.split-lp, %bb.ab ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot19try_new_with_engine00ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(120) %0) #48
          to label %.body.thread unwind label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2_8snapshotNtB1c_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2j_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [112 x i8], align 8               ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1e_8snapshotNtB2o_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB3w_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span7current(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.d unwind label %bb.aa

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !716
  %i.n = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25)
          to label %bb.e unwind label %bb.y, !noalias !716 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.o = extractvalue { i64, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.n, 1        ; 3 uses
  store i64 %i.o, ptr %i.g, align 8, !noalias !716
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.p, ptr %i.q, align 8, !noalias !716
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %i.r = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !717 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = trunc nuw i64 %i.o to i1                 ; 2 uses
  %.sroa.01.0.v.i = select i1 %i.s, i64 464, i64 712
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.v.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %i.h, i64 112, i1 false)
  %.sroa.01.0.v.i.i.i.i = select i1 %i.s, i64 488, i64 512
  %.sroa.01.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.v.i.i.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !717, !noundef !12 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !noalias !717, !nonnull !12, !align !13, !noundef !12
  %i.x = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !717
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %.sroa.5.0.i.i.i.i = phi ptr [ undef, %bb.g ], [ %i.w, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !717
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1t_8snapshotNtB2D_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB3L_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0ENtNtBR_8schedule16BlockingScheduleECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.b, ptr noundef %i.u, ptr %.sroa.5.0.i.i.i.i, i64 noundef %i.r)
          to label %.noexc.i unwind label %bb.r, !noalias !716

.noexc.i:                                         ; preds = %bb.j
  %i.z = load ptr, ptr %i.a, align 8, !noalias !717, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !717, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !717
  store ptr %i.ab, ptr %i.c, align 8, !noalias !717
  %i.ac = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0.i, ptr noundef nonnull %i.z, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1w_8snapshotNtB2G_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB3O_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0B3J_ECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.k, !noalias !718 ; 2 uses

bb.k:                                             ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1a_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body.i unwind label %bb.l, !noalias !718

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !718
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1w_8snapshotNtB2G_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB3O_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0B3J_ECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.noexc.i
  %i.af = extractvalue { i64, ptr } %i.ac, 0
  %i.ag = extractvalue { i64, ptr } %i.ac, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !719
  store ptr %i.ab, ptr %i.f, align 8, !noalias !719
  %i.ah = trunc nuw i64 %i.af to i1
  %.not.i.i = icmp ne ptr %i.ag, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %.not.i.i, i1 false, !prof !23
  br i1 %or.cond.not.i.i, label %bb.m, label %bb.s, !prof !23

bb.m:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1w_8snapshotNtB2G_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB3O_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0B3J_ECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !719
  store ptr %i.ag, ptr %i.e, align 8, !noalias !719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !719
  store ptr %i.e, ptr %i.d, align 8, !noalias !719
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !719
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #47
          to label %bb.o unwind label %bb.n, !noalias !720

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #48
          to label %bb.q unwind label %bb.p, !noalias !720

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.q, %bb.n
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !720
  unreachable

bb.q:                                             ; preds = %bb.n
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1a_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body.i unwind label %bb.p, !noalias !720

bb.r:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %bb.q, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ak, %bb.r ], [ %i.ad, %bb.k ], [ %i.ai, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.g) #48
          to label %.body.thread unwind label %bb.x, !noalias !716

bb.s:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1w_8snapshotNtB2G_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB3O_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0B3J_ECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !719
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  call void @llvm.experimental.noalias.scope.decl(metadata !722)
  %i.al = load i64, ptr %i.g, align 8, !range !19, !alias.scope !723, !noalias !716, !noundef !12
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !724)
  call void @llvm.experimental.noalias.scope.decl(metadata !725)
  %i.an = load ptr, ptr %i.q, align 8, !alias.scope !726, !noalias !716, !nonnull !12, !noundef !12
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !727
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #51
  br label %bb.z

bb.v:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  call void @llvm.experimental.noalias.scope.decl(metadata !729)
  %i.aq = load ptr, ptr %i.q, align 8, !alias.scope !730, !noalias !716, !nonnull !12, !noundef !12
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !731
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #51
  br label %bb.z

bb.x:                                             ; preds = %bb.y, %.body.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.y:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtBL_8snapshotNtB1V_8Snapshot31application_transaction_version00INtNtB4_6result6ResultINtNtB4_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.h) #48
          to label %.body.thread unwind label %bb.x

bb.z:                                             ; preds = %bb.u, %bb.w, %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret ptr %i.ab

bb.aa:                                            ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %i.au = load i64, ptr %i.j, align 8, !range !19, !alias.scope !734, !noundef !12
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !735)
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !737, !nonnull !12, !noundef !12
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !737
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aw) #51
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ae
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

.body.thread:                                     ; preds = %bb.y, %.body.i, %bb.ae
  %.pn8 = phi { ptr, i32 } [ %.pn.ph, %bb.ae ], [ %lpad.thr_comm.split-lp.i, %bb.y ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn8

bb.ae:                                            ; preds = %bb.b, %bb.ac, %bb.aa, %bb.ab
  %.pn.ph = phi { ptr, i32 } [ %i.k, %bb.b ], [ %lpad.thr_comm.split-lp, %bb.ac ], [ %lpad.thr_comm.split-lp, %bb.aa ], [ %lpad.thr_comm.split-lp, %bb.ab ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot31application_transaction_version00ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %0) #48
          to label %.body.thread unwind label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !12 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !15, !invariant.load !12 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !16, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !15, !invariant.load !12 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1X_6marker4SendEL_ENtNtNtB1X_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !16, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #46
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1X_6marker4SendEL_ENtNtNtB1X_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1X_6marker4SendEL_ENtNtNtB1X_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !12 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !15, !invariant.load !12 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EECs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2d_9GetResult5bytes00EENtNtBX_8schedule16BlockingScheduleECs7p2uQeJxui2_9deltalake:bb.a
; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1A_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB3r_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB1G_16delta_datafusion14table_provider4next4scan6replayINtB59_14ScanFileStreamINtNtB3v_3pin3PinINtNtB47_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB3v_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1G_6errors15DeltaTableErrorENtNtB3v_6marker4SendEL_EEEB7a_9poll_nexts_0Es_0ENtNtBX_8schedule16BlockingScheduleECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1M_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB3D_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB1S_16delta_datafusion14table_provider4next4scan6replayINtB5l_14ScanFileStreamINtNtB3H_3pin3PinINtNtB4j_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB3H_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1S_6errors15DeltaTableErrorENtNtB3H_6marker4SendEL_EEEB7m_9poll_nexts_0Es_0ENtNtB19_8schedule16BlockingScheduleE8shutdownCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1B_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4S_5error5ErrorEEs_0ENtNtBX_8schedule16BlockingScheduleECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1N_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB54_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE8shutdownCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1B_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1B_6errors15DeltaTableErrorEEs_0ENtNtBX_8schedule16BlockingScheduleECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1N_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1N_6errors15DeltaTableErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE8shutdownCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1B_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3M_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1B_6errors15DeltaTableErrorEEs_0ENtNtBX_8schedule16BlockingScheduleECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1N_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3Y_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1N_6errors15DeltaTableErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE8shutdownCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1B_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0ENtNtBX_8schedule16BlockingScheduleECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1N_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE8shutdownCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1B_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4Q_5error5ErrorEEs_0ENtNtBX_8schedule16BlockingScheduleECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1N_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB52_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE8shutdownCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1B_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3K_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1B_6errors15DeltaTableErrorEEs_0ENtNtBX_8schedule16BlockingScheduleECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB1N_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB3W_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB1N_6errors15DeltaTableErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE8shutdownCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1z_8snapshotNtB2J_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4O_5error5ErrorEEs_0ENtNtBX_8schedule16BlockingScheduleECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE8shutdownCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1z_8snapshotNtB2J_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB3R_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0ENtNtBX_8schedule16BlockingScheduleECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB43_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE8shutdownCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB2D_22DeltaFileSystemHandler15open_input_file0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2D_15ObjectInputFileNtCsjyY8HP3IvQ6_12object_store5ErrorEE00ENtNtBX_8schedule16BlockingScheduleEB2F_(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB2P_22DeltaFileSystemHandler15open_input_file0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2P_15ObjectInputFileNtCsjyY8HP3IvQ6_12object_store5ErrorEE00ENtNtB19_8schedule16BlockingScheduleE8shutdownB2R_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNvXNtCs7p2uQeJxui2_9deltalake6readerNtB2A_21StreamToReaderAdapterNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next0INtNtB3I_6option6OptionINtNtB3I_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE00ENtNtBX_8schedule16BlockingScheduleEB2C_(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCNvXNtCs7p2uQeJxui2_9deltalake6readerNtB2M_21StreamToReaderAdapterNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next0INtNtB3U_6option6OptionINtNtB3U_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE00ENtNtB19_8schedule16BlockingScheduleE8shutdownB2O_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1E_9GetResult5bytes00ENtNtBX_8schedule16BlockingScheduleECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1Q_9GetResult5bytes00ENtNtB19_8schedule16BlockingScheduleE8shutdownCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveANtNtCsjyY8HP3IvQ6_12object_store4path4Pathj1_E0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEBZ_(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveANtNtCsjyY8HP3IvQ6_12object_store4path4Pathj1_E0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB1b_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveANtNtCsjyY8HP3IvQ6_12object_store4path4Pathj1_E0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEBZ_(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveANtNtCsjyY8HP3IvQ6_12object_store4path4Pathj1_E0INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownB1b_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEE0INtNtB23_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEBZ_(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEE0INtNtB2f_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB1b_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEE0INtNtB23_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEBZ_(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessNCINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEE0INtNtB2f_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownB1b_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1a_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB31_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB1g_16delta_datafusion14table_provider4next4scan6replayINtB4J_14ScanFileStreamINtNtB35_3pin3PinINtNtB3H_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB35_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1g_6errors15DeltaTableErrorENtNtB35_6marker4SendEL_EEEB6K_9poll_nexts_0Es_0IB7B_uB8M_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(328) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [328 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.v       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !5469 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.b, ptr noundef nonnull align 8 dereferenceable(328) %0, i64 328, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !5469, !noundef !12 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !noalias !5469, !nonnull !12, !align !13, !noundef !12
  %i.r = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !5469
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.q, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5469
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1u_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB3l_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB1A_16delta_datafusion14table_provider4next4scan6replayINtB53_14ScanFileStreamINtNtB3p_3pin3PinINtNtB41_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB3p_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1A_6errors15DeltaTableErrorENtNtB3p_6marker4SendEL_EEEB74_9poll_nexts_0Es_0ENtNtBR_8schedule16BlockingScheduleECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.b, ptr noundef %i.o, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.g
  %i.t = load ptr, ptr %i.a, align 8, !noalias !5469, !nonnull !12, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !noalias !5469, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5469
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5469
  store ptr %i.v, ptr %i.c, align 8, !noalias !5469
  %i.w = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.t, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1x_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB3o_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB1D_16delta_datafusion14table_provider4next4scan6replayINtB56_14ScanFileStreamINtNtB3s_3pin3PinINtNtB44_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB3s_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1D_6errors15DeltaTableErrorENtNtB3s_6marker4SendEL_EEEB77_9poll_nexts_0Es_0IB7Y_uB99_EECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.h, !noalias !5470 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.i, !noalias !5470

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !5470
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1x_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB3o_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB1D_16delta_datafusion14table_provider4next4scan6replayINtB56_14ScanFileStreamINtNtB3s_3pin3PinINtNtB44_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB3s_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1D_6errors15DeltaTableErrorENtNtB3s_6marker4SendEL_EEEB77_9poll_nexts_0Es_0IB7Y_uB99_EECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.w, 0
  %i.aa = extractvalue { i64, ptr } %i.w, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5469
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5471
  store ptr %i.v, ptr %i.f, align 8, !noalias !5471
  %i.ab = trunc nuw i64 %i.z to i1
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.j, label %bb.p, !prof !23

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1x_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB3o_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB1D_16delta_datafusion14table_provider4next4scan6replayINtB56_14ScanFileStreamINtNtB3s_3pin3PinINtNtB44_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB3s_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1D_6errors15DeltaTableErrorENtNtB3s_6marker4SendEL_EEEB77_9poll_nexts_0Es_0IB7Y_uB99_EECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5471
  store ptr %i.aa, ptr %i.e, align 8, !noalias !5471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5471
  store ptr %i.e, ptr %i.d, align 8, !noalias !5471
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !5471
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #47
          to label %bb.l unwind label %bb.k, !noalias !5472

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #48
          to label %bb.n unwind label %bb.m, !noalias !5472

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !5472
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.m, !noalias !5472

bb.o:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.n, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.o ], [ %i.x, %bb.h ], [ %i.ac, %bb.n ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.g) #48
          to label %.thread unwind label %bb.u

bb.p:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1x_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB3o_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB1D_16delta_datafusion14table_provider4next4scan6replayINtB56_14ScanFileStreamINtNtB3s_3pin3PinINtNtB44_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB3s_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1D_6errors15DeltaTableErrorENtNtB3s_6marker4SendEL_EEEB77_9poll_nexts_0Es_0IB7Y_uB99_EECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5471
  call void @llvm.experimental.noalias.scope.decl(metadata !5473)
  call void @llvm.experimental.noalias.scope.decl(metadata !5474)
  %i.af = load i64, ptr %i.g, align 8, !range !19, !alias.scope !5475, !noundef !12
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !5476)
  call void @llvm.experimental.noalias.scope.decl(metadata !5477)
  %i.ah = load ptr, ptr %i.k, align 8, !alias.scope !5478, !nonnull !12, !noundef !12
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !5478
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #51
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake.exit

bb.s:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !5479)
  call void @llvm.experimental.noalias.scope.decl(metadata !5480)
  %i.ak = load ptr, ptr %i.k, align 8, !alias.scope !5481, !nonnull !12, !noundef !12
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !5481
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #51
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.v

bb.u:                                             ; preds = %bb.v, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

.thread:                                          ; preds = %.body, %bb.v
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.v ]
  resume { ptr, i32 } %.pn8

bb.v:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtBM_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2C_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtBS_16delta_datafusion14table_provider4next4scan6replayINtB44_14ScanFileStreamINtNtB4_3pin3PinINtNtB32_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBS_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB63_9poll_nexts_0Es_0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(328) %0) #48
          to label %.thread unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB2d_22DeltaFileSystemHandler15open_input_file0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2d_15ObjectInputFileNtCsjyY8HP3IvQ6_12object_store5ErrorEE00uEB2f_(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.v       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 4 uses
  store i64 %i.i, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  %i.l = trunc nuw i64 %i.i to i1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %. = select i1 %i.l, i64 464, i64 712
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.n = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !5508 ; 2 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.l, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !5508, !noundef !12 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !noalias !5508, !nonnull !12, !align !13, !noundef !12
  %i.s = atomicrmw add ptr %i.p, i64 1 monotonic, align 8, !noalias !5508
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.r, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5508
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB2x_22DeltaFileSystemHandler15open_input_file0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2x_15ObjectInputFileNtCsjyY8HP3IvQ6_12object_store5ErrorEE00ENtNtBR_8schedule16BlockingScheduleEB2z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.p, ptr %.sroa.5.0.i.i.i, i64 noundef %i.n)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.g
  %i.u = load ptr, ptr %i.a, align 8, !noalias !5508, !nonnull !12, !noundef !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !5508, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5508
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5508
  store ptr %i.w, ptr %i.b, align 8, !noalias !5508
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB2A_22DeltaFileSystemHandler15open_input_file0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2A_15ObjectInputFileNtCsjyY8HP3IvQ6_12object_store5ErrorEE00uEB2C_.exit.i unwind label %bb.h, !noalias !5509 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.body unwind label %bb.i, !noalias !5509

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !5509
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB2A_22DeltaFileSystemHandler15open_input_file0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2A_15ObjectInputFileNtCsjyY8HP3IvQ6_12object_store5ErrorEE00uEB2C_.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5508
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5510
  store ptr %i.w, ptr %i.e, align 8, !noalias !5510
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.j, label %bb.p, !prof !23

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB2A_22DeltaFileSystemHandler15open_input_file0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2A_15ObjectInputFileNtCsjyY8HP3IvQ6_12object_store5ErrorEE00uEB2C_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5510
  store ptr %i.ab, ptr %i.d, align 8, !noalias !5510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5510
  store ptr %i.d, ptr %i.c, align 8, !noalias !5510
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !5510
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #47
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #48
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body unwind label %bb.m

bb.o:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.n, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.o ], [ %i.y, %bb.h ], [ %i.ad, %bb.n ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.f) #48
          to label %.thread unwind label %bb.u

bb.p:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB2A_22DeltaFileSystemHandler15open_input_file0INtNtCsbvkFyIu7lgC_4core6result6ResultNtB2A_15ObjectInputFileNtCsjyY8HP3IvQ6_12object_store5ErrorEE00uEB2C_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5510
  call void @llvm.experimental.noalias.scope.decl(metadata !5511)
  call void @llvm.experimental.noalias.scope.decl(metadata !5512)
  %i.ag = load i64, ptr %i.f, align 8, !range !19, !alias.scope !5513, !noundef !12
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !5514)
  call void @llvm.experimental.noalias.scope.decl(metadata !5515)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !5516, !nonnull !12, !noundef !12
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !5516
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #51
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake.exit

bb.s:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !5517)
  call void @llvm.experimental.noalias.scope.decl(metadata !5518)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !5519, !nonnull !12, !noundef !12
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !5519
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #51
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.w

bb.u:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

.thread:                                          ; preds = %bb.v, %bb.w, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.v ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn9

bb.v:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !5520
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #51
          to label %.thread unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCNvXNtCs7p2uQeJxui2_9deltalake6readerNtB2a_21StreamToReaderAdapterNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next0INtNtB3i_6option6OptionINtNtB3i_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE00uEB2c_(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.v       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 4 uses
  store i64 %i.i, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  %i.l = trunc nuw i64 %i.i to i1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %. = select i1 %i.l, i64 464, i64 712
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.n = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !5547 ; 2 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.l, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !5547, !noundef !12 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !noalias !5547, !nonnull !12, !align !13, !noundef !12
  %i.s = atomicrmw add ptr %i.p, i64 1 monotonic, align 8, !noalias !5547
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.r, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5547
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCNvXNtCs7p2uQeJxui2_9deltalake6readerNtB2u_21StreamToReaderAdapterNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next0INtNtB3C_6option6OptionINtNtB3C_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE00ENtNtBR_8schedule16BlockingScheduleEB2w_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.p, ptr %.sroa.5.0.i.i.i, i64 noundef %i.n)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.g
  %i.u = load ptr, ptr %i.a, align 8, !noalias !5547, !nonnull !12, !noundef !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !5547, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5547
  store ptr %i.w, ptr %i.b, align 8, !noalias !5547
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNvXNtCs7p2uQeJxui2_9deltalake6readerNtB2x_21StreamToReaderAdapterNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next0INtNtB3F_6option6OptionINtNtB3F_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE00uEB2z_.exit.i unwind label %bb.h, !noalias !5548 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.body unwind label %bb.i, !noalias !5548

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !5548
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNvXNtCs7p2uQeJxui2_9deltalake6readerNtB2x_21StreamToReaderAdapterNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next0INtNtB3F_6option6OptionINtNtB3F_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE00uEB2z_.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5549
  store ptr %i.w, ptr %i.e, align 8, !noalias !5549
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !23
  br i1 %or.cond.not.i, label %bb.j, label %bb.p, !prof !23

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNvXNtCs7p2uQeJxui2_9deltalake6readerNtB2x_21StreamToReaderAdapterNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next0INtNtB3F_6option6OptionINtNtB3F_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE00uEB2z_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5549
  store ptr %i.ab, ptr %i.d, align 8, !noalias !5549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5549
  store ptr %i.d, ptr %i.c, align 8, !noalias !5549
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !5549
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #47
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #48
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body unwind label %bb.m

bb.o:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.n, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.o ], [ %i.y, %bb.h ], [ %i.ad, %bb.n ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.f) #48
          to label %.thread unwind label %bb.u

bb.p:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCNvXNtCs7p2uQeJxui2_9deltalake6readerNtB2x_21StreamToReaderAdapterNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next0INtNtB3F_6option6OptionINtNtB3F_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE00uEB2z_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5549
  call void @llvm.experimental.noalias.scope.decl(metadata !5550)
  call void @llvm.experimental.noalias.scope.decl(metadata !5551)
  %i.ag = load i64, ptr %i.f, align 8, !range !19, !alias.scope !5552, !noundef !12
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !5553)
  call void @llvm.experimental.noalias.scope.decl(metadata !5554)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !5555, !nonnull !12, !noundef !12
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !5555
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #51
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake.exit

bb.s:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !5556)
  call void @llvm.experimental.noalias.scope.decl(metadata !5557)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !5558, !nonnull !12, !noundef !12
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !5558
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #51
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.w

bb.u:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

.thread:                                          ; preds = %bb.v, %bb.w, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.v ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn9

bb.v:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !5559
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #51
          to label %.thread unwind label %bb.u
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazy7destroyINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsezwchj6CnTc_16futures_executor10local_pool12ThreadNotifyEECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !12
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsezwchj6CnTc_16futures_executor10local_pool12ThreadNotifyEE0ECs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5565)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !5566, !nonnull !12, !noundef !12
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !5566
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsezwchj6CnTc_16futures_executor10local_pool12ThreadNotifyEE0ECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsezwchj6CnTc_16futures_executor10local_pool12ThreadNotifyE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #51
          to label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsezwchj6CnTc_16futures_executor10local_pool12ThreadNotifyEE0ECs7p2uQeJxui2_9deltalake.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop() #52
          to label %.noexc1.i unwind label %bb.e

.noexc1.i:                                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsezwchj6CnTc_16futures_executor10local_pool12ThreadNotifyEE0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazy7destroyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB19_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !12
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5581)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !5582, !noundef !12 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECs7p2uQeJxui2_9deltalake.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !5583
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #51
          to label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECs7p2uQeJxui2_9deltalake.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop() #52
          to label %.noexc1.i unwind label %bb.f

.noexc1.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazy7destroyINtNtCsbvkFyIu7lgC_4core4cell7RefCellINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5stack12IdValueStackNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEEECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !12
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsbvkFyIu7lgC_4core4cell7RefCellINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5stack12IdValueStackNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEEE0ECs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_1
