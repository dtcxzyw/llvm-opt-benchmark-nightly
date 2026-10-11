Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/bulk.bulk.93260328f3fcf1fb-cgu.02?download=true
inline.NumInlined: 454
inline.NumDeleted: 276
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore20OwnedSemaphorePermitECscDgBWNIBxoJ_4bulk:bb.a
  br i1 %i.g, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreEECscDgBWNIBxoJ_4bulk.exit2, !dbg !12367

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !6552, !DIExpression(), !12349)
  fence acquire, !dbg !12368
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #10, !dbg !12369
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreEECscDgBWNIBxoJ_4bulk.exit2, !dbg !12369

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreEECscDgBWNIBxoJ_4bulk.exit2: ; preds = %bb.d, %bb.e
  ret void, !dbg !12357

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !12357
  unreachable, !dbg !12357

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a, !dbg !12357
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core7TrailerECscDgBWNIBxoJ_4bulk(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1303 {
bb.a:
    #dbg_value(ptr %0, !6558, !DIExpression(), !12426)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12435
  %.val = load ptr, ptr %i.a, align 8, !dbg !12435, !align !6564, !noundef !2017 ; 2 uses
    #dbg_value(ptr poison, !6566, !DIExpression(), !12371)
    #dbg_value(ptr poison, !6573, !DIExpression(), !12373)
    #dbg_value(ptr poison, !6580, !DIExpression(), !12375)
  %i.b = icmp eq ptr %.val, null, !dbg !12436
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECscDgBWNIBxoJ_4bulk.exit, label %bb.b, !dbg !12436

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24, !dbg !12435
  %.val2 = load ptr, ptr %i.c, align 8, !dbg !12435
    #dbg_value(ptr poison, !6585, !DIExpression(), !12377)
    #dbg_value(ptr poison, !6590, !DIExpression(), !12379)
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !12437
  %i.e = load ptr, ptr %i.d, align 8, !dbg !12437, !nonnull !2017, !noundef !2017
  invoke void %i.e(ptr noundef %.val2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECscDgBWNIBxoJ_4bulk.exit unwind label %bb.c, !dbg !12437, !inline_history !1309

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !12435 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12427), !dbg !12435
    #dbg_value(ptr %i.g, !6594, !DIExpression(), !12383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12428), !dbg !12438
    #dbg_value(ptr %i.g, !6601, !DIExpression(), !12387)
  %i.h = load ptr, ptr %i.g, align 8, !dbg !12439, !alias.scope !12429, !noundef !2017 ; 2 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !12439
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECscDgBWNIBxoJ_4bulk.exit, label %bb.d, !dbg !12439

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.g, !6608, !DIExpression(), !12389)
    #dbg_value(ptr %i.g, !6612, !DIExpression(), !12391)
    #dbg_value(i64 1, !6614, !DIExpression(), !12393)
    #dbg_value(i8 1, !6616, !DIExpression(), !12393)
    #dbg_value(i64 1, !6618, !DIExpression(), !12395)
    #dbg_value(i8 1, !6620, !DIExpression(), !12395)
    #dbg_value(ptr %i.h, !6615, !DIExpression(), !12396)
    #dbg_value(ptr %i.h, !6619, !DIExpression(), !12395)
  %i.j = atomicrmw sub ptr %i.h, i64 1 release, align 8, !dbg !12440, !noalias !12430
  %i.k = icmp eq i64 %i.j, 1, !dbg !12441
  br i1 %i.k, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECscDgBWNIBxoJ_4bulk.exit, !dbg !12441

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !6552, !DIExpression(), !12402)
  fence acquire, !dbg !12442
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsar2VadbF9t7_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #10
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECscDgBWNIBxoJ_4bulk.exit unwind label %bb.h, !dbg !12443

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !12435 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12431), !dbg !12435
    #dbg_value(ptr %i.l, !6594, !DIExpression(), !12406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12432), !dbg !12444
    #dbg_value(ptr %i.l, !6601, !DIExpression(), !12410)
  %i.m = load ptr, ptr %i.l, align 8, !dbg !12445, !alias.scope !12433, !noundef !2017 ; 2 uses
  %i.n = icmp eq ptr %i.m, null, !dbg !12445
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECscDgBWNIBxoJ_4bulk.exit4, label %bb.f, !dbg !12445

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECscDgBWNIBxoJ_4bulk.exit
    #dbg_value(ptr %i.l, !6608, !DIExpression(), !12412)
    #dbg_value(ptr %i.l, !6612, !DIExpression(), !12414)
    #dbg_value(i64 1, !6614, !DIExpression(), !12416)
    #dbg_value(i8 1, !6616, !DIExpression(), !12416)
    #dbg_value(i64 1, !6618, !DIExpression(), !12418)
    #dbg_value(i8 1, !6620, !DIExpression(), !12418)
    #dbg_value(ptr %i.m, !6615, !DIExpression(), !12419)
    #dbg_value(ptr %i.m, !6619, !DIExpression(), !12418)
  %i.o = atomicrmw sub ptr %i.m, i64 1 release, align 8, !dbg !12446, !noalias !12434
  %i.p = icmp eq i64 %i.o, 1, !dbg !12447
  br i1 %i.p, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECscDgBWNIBxoJ_4bulk.exit4, !dbg !12447

bb.g:                                             ; preds = %bb.f
    #dbg_value(i8 2, !6552, !DIExpression(), !12425)
  fence acquire, !dbg !12448
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsar2VadbF9t7_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #10, !dbg !12449
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECscDgBWNIBxoJ_4bulk.exit4, !dbg !12449

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECscDgBWNIBxoJ_4bulk.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECscDgBWNIBxoJ_4bulk.exit, %bb.f, %bb.g
  ret void, !dbg !12435

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !12435
  unreachable, !dbg !12435

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.f, !dbg !12435
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2h_(ptr noundef nonnull %0) unnamed_addr #0 !dbg !1597 {
bb.a:
    #dbg_value(ptr %0, !7655, !DIExpression(), !12450)
    #dbg_value(ptr %0, !7657, !DIExpression(), !12452)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !12455
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !12456

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !7660, !DIExpression(), !12454)
    #dbg_value(ptr undef, !7660, !DIExpression(DW_OP_deref), !12454)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB2s_(ptr nonnull %0), !dbg !12457
  br label %bb.c, !dbg !12458

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !12459
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB2h_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12460 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !12539, !DIExpression(), !12543)
    #dbg_value(ptr %1, !12540, !DIExpression(), !12543)
    #dbg_value(ptr %2, !12541, !DIExpression(), !12543)
    #dbg_declare(ptr poison, !12544, !DIExpression(), !12555)
    #dbg_value(ptr poison, !12561, !DIExpression(), !12564)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !12591
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !12592
  br i1 %i.c, label %bb.b, label %bb.r, !dbg !12592

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !12593
    #dbg_value(ptr %0, !12559, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !12565)
    #dbg_value(ptr %0, !12551, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !12566)
    #dbg_value(ptr %0, !12568, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !12575)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !12594 ; 2 uses
    #dbg_declare(ptr poison, !12576, !DIExpression(), !12469)
    #dbg_value(ptr %i.d, !12579, !DIExpression(), !12470)
    #dbg_value(ptr %i.d, !12582, !DIExpression(), !12473)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12595, !noalias !12587
    #dbg_value(i32 2, !12585, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !12473)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !12596, !noalias !12587
  store i32 2, ptr %i.d, align 8, !dbg !12597, !noalias !12587
  %i.e = load i32, ptr %i.a, align 8, !dbg !12595, !range !7113, !noalias !12587, !noundef !2017
  %i.f = icmp eq i32 %i.e, 1, !dbg !12598
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2d_.exit, label %bb.c, !dbg !12598, !prof !7688

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.e unwind label %bb.d, !dbg !12599, !noalias !12587

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !12600, !range !7113, !noalias !12587, !noundef !2017
  %i.i = icmp eq i32 %i.h, 1, !dbg !12600
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !12600

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !12543

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEEEB2p_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #12
          to label %common.resume unwind label %bb.g, !dbg !12600, !noalias !12587

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !12601, !noalias !12587
  unreachable, !dbg !12601

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2d_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !12602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !12602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12600, !noalias !12587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12588), !dbg !12603
    #dbg_value(ptr %1, !7689, !DIExpression(), !12479)
  %i.l = load i64, ptr %1, align 8, !dbg !12604, !range !7695, !alias.scope !12588, !noundef !2017
  %3 = trunc nuw i64 %i.l to i1, !dbg !12604
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.h, !dbg !12604

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2d_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12604 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12589), !dbg !12604
    #dbg_value(ptr %i.m, !7254, !DIExpression(), !12483)
  %i.n = load i64, ptr %i.m, align 8, !dbg !12605, !alias.scope !12590, !noundef !2017
  %i.o = icmp eq i64 %i.n, 0, !dbg !12605
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12605 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !dbg !12605, !alias.scope !12590, !noundef !2017 ; 5 uses
  br i1 %i.o, label %bb.i, label %bb.k, !dbg !12605

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %i.p, !7261, !DIExpression(), !12485)
  %i.r = icmp eq ptr %i.q, null, !dbg !12606
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.j, !dbg !12606

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr %i.p, !7267, !DIExpression(), !12487)
  invoke void @_RNvXs4_NtCsbHiBx3jRrxb_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit unwind label %bb.s, !dbg !12607

bb.k:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !12605
  %.val1.i.i = load ptr, ptr %i.s, align 8, !dbg !12605, !alias.scope !12590 ; 6 uses
    #dbg_value(ptr poison, !7122, !DIExpression(), !12489)
    #dbg_value(ptr poison, !7129, !DIExpression(), !12491)
  %i.t = icmp eq ptr %i.q, null, !dbg !12608
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.l, !dbg !12608

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr poison, !7136, !DIExpression(), !12493)
    #dbg_value(ptr poison, !7143, !DIExpression(), !12495)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.u = load ptr, ptr %.val1.i.i, align 8, !dbg !12609, !invariant.load !2017, !noalias !12590 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null, !dbg !12609
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m, !dbg !12609

bb.m:                                             ; preds = %bb.l
  invoke void %i.u(ptr noundef nonnull %i.q)
          to label %bb.n unwind label %bb.p, !dbg !12609, !noalias !12590

bb.n:                                             ; preds = %bb.m, %bb.l
    #dbg_value(ptr poison, !7147, !DIExpression(), !12497)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12498)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12498)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12500)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12502)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12504)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12506)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12500)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12502)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12504)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12506)
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !12610
  %i.w = load i64, ptr %i.v, align 8, !dbg !12610, !range !7184, !invariant.load !2017, !noalias !12590 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12507)
    #dbg_value(i64 %i.w, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12507)
  %i.x = icmp eq i64 %i.w, 0, !dbg !12611
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.o, !dbg !12611

bb.o:                                             ; preds = %bb.n
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !12610
  %i.z = load i64, ptr %i.y, align 8, !dbg !12612, !range !7185, !invariant.load !2017, !noalias !12590
    #dbg_value(i64 %i.z, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12507)
    #dbg_value(ptr %i.q, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12500)
    #dbg_value(ptr %i.q, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12502)
    #dbg_value(ptr %i.q, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12504)
    #dbg_value(ptr %i.q, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12506)
    #dbg_value(ptr %i.q, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12498)
    #dbg_value(ptr poison, !6639, !DIExpression(), !12509)
    #dbg_value(ptr poison, !6646, !DIExpression(), !12511)
    #dbg_value(ptr %i.q, !6643, !DIExpression(), !12509)
    #dbg_value(ptr %i.q, !6649, !DIExpression(), !12511)
    #dbg_value(ptr %i.q, !6652, !DIExpression(), !12513)
    #dbg_value(ptr %i.q, !6658, !DIExpression(), !12515)
    #dbg_value(i64 %i.z, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12509)
    #dbg_value(i64 %i.z, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12511)
    #dbg_value(i64 %i.z, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12513)
    #dbg_value(i64 %i.z, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12515)
    #dbg_value(i64 %i.w, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12509)
    #dbg_value(i64 %i.w, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12511)
    #dbg_value(i64 %i.w, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12513)
    #dbg_value(i64 %i.w, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12515)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #13, !dbg !12613, !noalias !12590
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, !dbg !12614

bb.p:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr poison, !7147, !DIExpression(), !12517)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12518)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12518)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12520)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12522)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12524)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12526)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12520)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12522)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12524)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12526)
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !12615
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !12615, !range !7184, !invariant.load !2017, !noalias !12590 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12527)
    #dbg_value(i64 %i.ac, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12527)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !12616
  br i1 %i.ad, label %.body, label %bb.q, !dbg !12616

bb.q:                                             ; preds = %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !12615
  %i.af = load i64, ptr %i.ae, align 8, !dbg !12617, !range !7185, !invariant.load !2017, !noalias !12590
    #dbg_value(i64 %i.af, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12527)
    #dbg_value(ptr %i.q, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12520)
    #dbg_value(ptr %i.q, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12522)
    #dbg_value(ptr %i.q, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12524)
    #dbg_value(ptr %i.q, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12526)
    #dbg_value(ptr %i.q, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12518)
    #dbg_value(ptr poison, !6639, !DIExpression(), !12529)
    #dbg_value(ptr poison, !6646, !DIExpression(), !12531)
    #dbg_value(ptr %i.q, !6643, !DIExpression(), !12529)
    #dbg_value(ptr %i.q, !6649, !DIExpression(), !12531)
    #dbg_value(ptr %i.q, !6652, !DIExpression(), !12533)
    #dbg_value(ptr %i.q, !6658, !DIExpression(), !12535)
    #dbg_value(i64 %i.af, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12529)
    #dbg_value(i64 %i.af, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12531)
    #dbg_value(i64 %i.af, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12533)
    #dbg_value(i64 %i.af, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12535)
    #dbg_value(i64 %i.ac, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12529)
    #dbg_value(i64 %i.ac, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12531)
    #dbg_value(i64 %i.ac, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12533)
    #dbg_value(i64 %i.ac, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12535)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #13, !dbg !12618, !noalias !12590
  br label %.body, !dbg !12619

bb.r:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit
  ret void, !dbg !12620

bb.s:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !12603

.body:                                            ; preds = %bb.p, %bb.q, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.s ], [ %i.aa, %bb.q ], [ %i.aa, %bb.p ]
  store i64 0, ptr %1, align 8, !dbg !12603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !12603
  br label %common.resume, !dbg !12621

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.o, %bb.n, %bb.k, %bb.i, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2d_.exit, %bb.j
  store i64 0, ptr %1, align 8, !dbg !12603
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !12603
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !12622
  br label %bb.r, !dbg !12623
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowB2h_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12625 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !12718, !DIExpression(), !12637)
    #dbg_value(ptr poison, !12753, !DIExpression(), !12641)
    #dbg_value(ptr poison, !12741, !DIExpression(), !12642)
    #dbg_value(ptr poison, !12746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12759)
    #dbg_value(ptr poison, !12745, !DIExpression(), !12760)
    #dbg_value(ptr poison, !12751, !DIExpression(), !12761)
    #dbg_value(ptr poison, !12762, !DIExpression(), !12765)
    #dbg_value(ptr %0, !12714, !DIExpression(), !12766)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !12793 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !12793
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !12793
    #dbg_value(i1 %i.c, !12715, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !12767)
    #dbg_value(i1 %i.d, !12715, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !12767)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !12794

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !12795

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !12751, !DIExpression(), !12761)
    #dbg_value(ptr undef, !12745, !DIExpression(), !12760)
    #dbg_value(ptr undef, !12746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12759)
    #dbg_value(ptr undef, !12718, !DIExpression(), !12637)
    #dbg_value(ptr undef, !12741, !DIExpression(), !12642)
    #dbg_value(ptr poison, !12768, !DIExpression(), !12646)
    #dbg_declare(ptr poison, !12772, !DIExpression(), !12647)
    #dbg_declare(ptr poison, !12771, !DIExpression(), !12647)
    #dbg_value(ptr poison, !12776, !DIExpression(), !12650)
    #dbg_declare(ptr poison, !12779, !DIExpression(), !12651)
    #dbg_value(ptr poison, !12783, !DIExpression(DW_OP_deref, DW_OP_deref), !12654)
    #dbg_value(ptr poison, !12788, !DIExpression(), !12657)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !12796
    #dbg_value(ptr %i.e, !12790, !DIExpression(), !12660)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12797, !noalias !12792
  store i32 2, ptr %i.a, align 8, !dbg !12797, !noalias !12792
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB2b_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c, !dbg !12798

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !12799
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB2h_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13622
    #dbg_value(i64 %..i, !13484, !DIExpression(), !13581)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i), !dbg !13623
  br i1 %i.ae, label %bb.o, label %bb.p, !dbg !13624

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit
    #dbg_value(ptr undef, !13582, !DIExpression(DW_OP_deref), !13585)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB2s_(ptr nonnull %0), !dbg !13625
  br label %bb.p, !dbg !13626

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, %bb.o
  ret void, !dbg !13627
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB2h_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13628 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !13664, !DIExpression(), !13666)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !13671
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !13672

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !7655, !DIExpression(), !13630)
    #dbg_value(ptr %0, !7657, !DIExpression(), !13632)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !13673
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2h_.exit, !dbg !13674

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !7660, !DIExpression(DW_OP_deref), !13634)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB2s_(ptr nonnull %0), !dbg !13675
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2h_.exit, !dbg !13676

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !13667, !DIExpression(), !13670)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !13677 ; 2 uses
    #dbg_value(ptr poison, !7838, !DIExpression(), !13640)
    #dbg_value(ptr %i.e, !7873, !DIExpression(), !13641)
    #dbg_value(ptr %i.e, !7876, !DIExpression(), !13643)
    #dbg_value(ptr %i.e, !7871, !DIExpression(), !13644)
    #dbg_value(ptr %i.e, !7867, !DIExpression(), !13645)
    #dbg_value(ptr %i.e, !7868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13646)
    #dbg_value(ptr undef, !7879, !DIExpression(), !13648)
    #dbg_value(ptr %i.e, !7882, !DIExpression(), !13649)
    #dbg_value(ptr %i.e, !7884, !DIExpression(), !13651)
    #dbg_declare(ptr poison, !7888, !DIExpression(), !13652)
    #dbg_declare(ptr poison, !7887, !DIExpression(), !13652)
    #dbg_value(ptr %i.e, !7892, !DIExpression(), !13654)
    #dbg_declare(ptr poison, !7895, !DIExpression(), !13655)
    #dbg_value(ptr poison, !7900, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13657)
    #dbg_value(ptr %i.e, !7905, !DIExpression(), !13659)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13678
  store i32 2, ptr %i.a, align 8, !dbg !13678
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB2b_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !13679

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !13680
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !13680
    #dbg_value(ptr undef, !7838, !DIExpression(), !13640)
    #dbg_value(ptr %i.g, !7862, !DIExpression(), !13640)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !13681 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !13682
  unreachable, !dbg !13682

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13683
    #dbg_value(ptr %i.e, !7868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13646)
    #dbg_value(ptr undef, !7868, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13646)
    #dbg_value(ptr poison, !7874, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13660)
    #dbg_value(ptr poison, !7907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13662)
    #dbg_value(ptr poison, !7874, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13660)
    #dbg_value(ptr poison, !7907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13662)
    #dbg_value(i64 poison, !7910, !DIExpression(), !13662)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2d_.exit, !dbg !13684

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !13681
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !13681 ; 2 uses
    #dbg_value(ptr %i.j, !7868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13646)
    #dbg_value(ptr %i.k, !7868, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13646)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !7874, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13660)
    #dbg_value(ptr %i.j, !7907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13662)
    #dbg_value(ptr %i.k, !7874, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13660)
    #dbg_value(ptr %i.k, !7907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13662)
    #dbg_value(i64 poison, !7910, !DIExpression(), !13662)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2d_.exit, !dbg !13685

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2d_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !13686
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !13686
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !13687
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !13687, !range !7818, !noundef !2017
    #dbg_value(i64 %.sroa.01.0.i, !7877, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13643)
    #dbg_value(ptr %.sroa.6.0.i, !7877, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13643)
    #dbg_value(ptr %.sroa.8.0.i, !7877, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13643)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13688
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13688
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !13688
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13688
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !13688
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !13688
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !13688
  store i32 1, ptr %i.b, align 8, !dbg !13688
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB2b_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !13689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13690
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB2h_(ptr noundef nonnull %0), !dbg !13691
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2h_.exit, !dbg !13691

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2h_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2d_.exit
  ret void, !dbg !13692
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_(ptr noundef nonnull %0) unnamed_addr #0 !dbg !1659 {
bb.a:
    #dbg_value(ptr %0, !7940, !DIExpression(), !13693)
    #dbg_value(ptr %0, !7942, !DIExpression(), !13695)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !13698
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !13699

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !7945, !DIExpression(), !13697)
    #dbg_value(ptr undef, !7945, !DIExpression(DW_OP_deref), !13697)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB2q_(ptr nonnull %0), !dbg !13700
  br label %bb.c, !dbg !13701

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !13702
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB2f_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13703 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !13778, !DIExpression(), !13782)
    #dbg_value(ptr %1, !13779, !DIExpression(), !13782)
    #dbg_value(ptr %2, !13780, !DIExpression(), !13782)
    #dbg_declare(ptr poison, !13783, !DIExpression(), !13794)
    #dbg_value(ptr poison, !13800, !DIExpression(), !13803)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !13830
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !13831
  br i1 %i.c, label %bb.b, label %bb.o, !dbg !13831

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !13832
    #dbg_value(ptr %0, !13798, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !13804)
    #dbg_value(ptr %0, !13790, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !13805)
    #dbg_value(ptr %0, !13807, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !13814)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !13833 ; 2 uses
    #dbg_declare(ptr poison, !13815, !DIExpression(), !13712)
    #dbg_value(ptr %i.d, !13818, !DIExpression(), !13713)
    #dbg_value(ptr %i.d, !13821, !DIExpression(), !13716)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13834, !noalias !13826
    #dbg_value(i32 2, !13824, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13716)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !13835, !noalias !13826
  store i32 2, ptr %i.d, align 8, !dbg !13836, !noalias !13826
  %i.e = load i32, ptr %i.a, align 8, !dbg !13834, !range !7113, !noalias !13826, !noundef !2017
  %i.f = icmp eq i32 %i.e, 1, !dbg !13837
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2b_.exit, label %bb.c, !dbg !13837, !prof !7688

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.d unwind label %bb.e, !dbg !13838, !noalias !13826

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op, !dbg !13782

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEEEB2n_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #12
          to label %common.resume unwind label %bb.f, !dbg !13839, !noalias !13826

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !13840, !noalias !13826
  unreachable, !dbg !13840

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2b_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !13841
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !13841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13839, !noalias !13826
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13827), !dbg !13842
    #dbg_value(ptr %1, !7963, !DIExpression(), !13722)
  %i.j = load i64, ptr %1, align 8, !dbg !13843, !range !7695, !alias.scope !13827, !noundef !2017
  %3 = trunc nuw i64 %i.j to i1, !dbg !13843
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.g, !dbg !13843

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2b_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13843 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13828), !dbg !13843
    #dbg_value(ptr %i.k, !7115, !DIExpression(), !13726)
  %i.l = load i64, ptr %i.k, align 8, !dbg !13844, !alias.scope !13829, !noundef !2017
  %i.m = icmp eq i64 %i.l, 0, !dbg !13844
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.h, !dbg !13844

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13844
  %.val.i.i = load ptr, ptr %i.n, align 8, !dbg !13844, !alias.scope !13829, !noundef !2017 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !13844
  %.val1.i.i = load ptr, ptr %i.o, align 8, !dbg !13844, !alias.scope !13829 ; 6 uses
    #dbg_value(ptr poison, !7122, !DIExpression(), !13728)
    #dbg_value(ptr poison, !7129, !DIExpression(), !13730)
  %i.p = icmp eq ptr %.val.i.i, null, !dbg !13845
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.i, !dbg !13845

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr poison, !7136, !DIExpression(), !13732)
    #dbg_value(ptr poison, !7143, !DIExpression(), !13734)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !dbg !13846, !invariant.load !2017, !noalias !13829 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null, !dbg !13846
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !13846

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !dbg !13846, !noalias !13829

bb.k:                                             ; preds = %bb.j, %bb.i
    #dbg_value(ptr poison, !7147, !DIExpression(), !13736)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13737)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13737)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13739)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13741)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13743)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13745)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13739)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13741)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13743)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13745)
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !13847
  %i.s = load i64, ptr %i.r, align 8, !dbg !13847, !range !7184, !invariant.load !2017, !noalias !13829 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13746)
    #dbg_value(i64 %i.s, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13746)
  %i.t = icmp eq i64 %i.s, 0, !dbg !13848
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.l, !dbg !13848

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !13847
  %i.v = load i64, ptr %i.u, align 8, !dbg !13849, !range !7185, !invariant.load !2017, !noalias !13829
    #dbg_value(i64 %i.v, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13746)
    #dbg_value(ptr %.val.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13739)
    #dbg_value(ptr %.val.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13741)
    #dbg_value(ptr %.val.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13743)
    #dbg_value(ptr %.val.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13745)
    #dbg_value(ptr %.val.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13737)
    #dbg_value(ptr poison, !6639, !DIExpression(), !13748)
    #dbg_value(ptr poison, !6646, !DIExpression(), !13750)
    #dbg_value(ptr %.val.i.i, !6643, !DIExpression(), !13748)
    #dbg_value(ptr %.val.i.i, !6649, !DIExpression(), !13750)
    #dbg_value(ptr %.val.i.i, !6652, !DIExpression(), !13752)
    #dbg_value(ptr %.val.i.i, !6658, !DIExpression(), !13754)
    #dbg_value(i64 %i.v, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13748)
    #dbg_value(i64 %i.v, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13750)
    #dbg_value(i64 %i.v, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13752)
    #dbg_value(i64 %i.v, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13754)
    #dbg_value(i64 %i.s, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13748)
    #dbg_value(i64 %i.s, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13750)
    #dbg_value(i64 %i.s, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13752)
    #dbg_value(i64 %i.s, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13754)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13, !dbg !13850, !noalias !13829
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, !dbg !13851

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !7147, !DIExpression(), !13756)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13757)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13757)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13759)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13761)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13763)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13765)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13759)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13761)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13763)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13765)
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !13852
  %i.y = load i64, ptr %i.x, align 8, !dbg !13852, !range !7184, !invariant.load !2017, !noalias !13829 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13766)
    #dbg_value(i64 %i.y, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13766)
  %i.z = icmp eq i64 %i.y, 0, !dbg !13853
  br i1 %i.z, label %.body, label %bb.n, !dbg !13853

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !13852
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !13854, !range !7185, !invariant.load !2017, !noalias !13829
    #dbg_value(i64 %i.ab, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13766)
    #dbg_value(ptr %.val.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13759)
    #dbg_value(ptr %.val.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13761)
    #dbg_value(ptr %.val.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13763)
    #dbg_value(ptr %.val.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13765)
    #dbg_value(ptr %.val.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13757)
    #dbg_value(ptr poison, !6639, !DIExpression(), !13768)
    #dbg_value(ptr poison, !6646, !DIExpression(), !13770)
    #dbg_value(ptr %.val.i.i, !6643, !DIExpression(), !13768)
    #dbg_value(ptr %.val.i.i, !6649, !DIExpression(), !13770)
    #dbg_value(ptr %.val.i.i, !6652, !DIExpression(), !13772)
    #dbg_value(ptr %.val.i.i, !6658, !DIExpression(), !13774)
    #dbg_value(i64 %i.ab, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13768)
    #dbg_value(i64 %i.ab, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13770)
    #dbg_value(i64 %i.ab, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13772)
    #dbg_value(i64 %i.ab, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13774)
    #dbg_value(i64 %i.y, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13768)
    #dbg_value(i64 %i.y, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13770)
    #dbg_value(i64 %i.y, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13772)
    #dbg_value(i64 %i.y, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13774)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13, !dbg !13855, !noalias !13829
  br label %.body, !dbg !13856

bb.o:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit
  ret void, !dbg !13857

.body:                                            ; preds = %bb.m, %bb.n
  store i64 0, ptr %1, align 8, !dbg !13842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !13842
  br label %common.resume, !dbg !13858

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2b_.exit
  store i64 0, ptr %1, align 8, !dbg !13842
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !13842
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !13859
  br label %bb.o, !dbg !13860
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowB2f_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13862 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !13955, !DIExpression(), !13874)
    #dbg_value(ptr poison, !13990, !DIExpression(), !13878)
    #dbg_value(ptr poison, !13978, !DIExpression(), !13879)
    #dbg_value(ptr poison, !13983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13996)
    #dbg_value(ptr poison, !13982, !DIExpression(), !13997)
    #dbg_value(ptr poison, !13988, !DIExpression(), !13998)
    #dbg_value(ptr poison, !13999, !DIExpression(), !14002)
    #dbg_value(ptr %0, !13951, !DIExpression(), !14003)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !14030 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !14030
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !14030
    #dbg_value(i1 %i.c, !13952, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !14004)
    #dbg_value(i1 %i.d, !13952, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !14004)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !14031

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !14032

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !13988, !DIExpression(), !13998)
    #dbg_value(ptr undef, !13982, !DIExpression(), !13997)
    #dbg_value(ptr undef, !13983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13996)
    #dbg_value(ptr undef, !13955, !DIExpression(), !13874)
    #dbg_value(ptr undef, !13978, !DIExpression(), !13879)
    #dbg_value(ptr poison, !14005, !DIExpression(), !13883)
    #dbg_declare(ptr poison, !14009, !DIExpression(), !13884)
    #dbg_declare(ptr poison, !14008, !DIExpression(), !13884)
    #dbg_value(ptr poison, !14013, !DIExpression(), !13887)
    #dbg_declare(ptr poison, !14016, !DIExpression(), !13888)
    #dbg_value(ptr poison, !14020, !DIExpression(DW_OP_deref, DW_OP_deref), !13891)
    #dbg_value(ptr poison, !14025, !DIExpression(), !13894)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14033
    #dbg_value(ptr %i.e, !14027, !DIExpression(), !13897)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14034, !noalias !14029
  store i32 2, ptr %i.a, align 8, !dbg !14034, !noalias !14029
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB29_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c, !dbg !14035

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !14036
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !14036
    #dbg_value(ptr undef, !13990, !DIExpression(), !13878)
    #dbg_value(ptr %i.g, !13993, !DIExpression(), !13878)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !14037 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !14038
  unreachable, !dbg !14038

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14039, !noalias !14029
    #dbg_value(ptr undef, !13983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13996)
    #dbg_value(ptr undef, !13983, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13996)
    #dbg_value(ptr poison, !7736, !DIExpression(), !13901)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !14040

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !14037 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !14037 ; 6 uses
    #dbg_value(ptr %i.j, !13983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13996)
    #dbg_value(ptr %i.k, !13983, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13996)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !7736, !DIExpression(), !13901)
  %i.l = icmp eq ptr %i.j, null, !dbg !14040
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, label %bb.f, !dbg !14040

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !7143, !DIExpression(), !13903)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !14041, !invariant.load !2017 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !14041
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !14041

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !14041

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !7147, !DIExpression(), !13905)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13906)
    #dbg_value(ptr %i.k, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13906)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13908)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13910)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13912)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13914)
    #dbg_value(ptr %i.k, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13908)
    #dbg_value(ptr %i.k, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13910)
    #dbg_value(ptr %i.k, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13912)
    #dbg_value(ptr %i.k, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13914)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !14042
  %i.o = load i64, ptr %i.n, align 8, !dbg !14042, !range !7184, !invariant.load !2017 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13915)
    #dbg_value(i64 %i.o, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13915)
  %i.p = icmp eq i64 %i.o, 0, !dbg !14043
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, label %bb.i, !dbg !14043

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !14042
  %i.r = load i64, ptr %i.q, align 8, !dbg !14044, !range !7185, !invariant.load !2017
    #dbg_value(i64 %i.r, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13915)
    #dbg_value(ptr %i.j, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13908)
    #dbg_value(ptr %i.j, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13910)
    #dbg_value(ptr %i.j, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13912)
    #dbg_value(ptr %i.j, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13914)
    #dbg_value(ptr %i.j, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13906)
    #dbg_value(ptr poison, !6639, !DIExpression(), !13917)
    #dbg_value(ptr poison, !6646, !DIExpression(), !13919)
    #dbg_value(ptr %i.j, !6643, !DIExpression(), !13917)
    #dbg_value(ptr %i.j, !6649, !DIExpression(), !13919)
    #dbg_value(ptr %i.j, !6652, !DIExpression(), !13921)
    #dbg_value(ptr %i.j, !6658, !DIExpression(), !13923)
    #dbg_value(i64 %i.r, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13917)
    #dbg_value(i64 %i.r, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13919)
    #dbg_value(i64 %i.r, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13921)
    #dbg_value(i64 %i.r, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13923)
    #dbg_value(i64 %i.o, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13917)
    #dbg_value(i64 %i.o, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13919)
    #dbg_value(i64 %i.o, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13921)
    #dbg_value(i64 %i.o, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13923)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13, !dbg !14045
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !14046

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !7147, !DIExpression(), !13925)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13926)
    #dbg_value(ptr %i.k, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13926)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13928)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13930)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13932)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13934)
    #dbg_value(ptr %i.k, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13928)
    #dbg_value(ptr %i.k, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13930)
    #dbg_value(ptr %i.k, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13932)
    #dbg_value(ptr %i.k, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13934)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !14047
  %i.u = load i64, ptr %i.t, align 8, !dbg !14047, !range !7184, !invariant.load !2017 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13935)
    #dbg_value(i64 %i.u, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13935)
  %i.v = icmp eq i64 %i.u, 0, !dbg !14048
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i, label %bb.k, !dbg !14048

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !14047
  %i.x = load i64, ptr %i.w, align 8, !dbg !14049, !range !7185, !invariant.load !2017
    #dbg_value(i64 %i.x, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13935)
    #dbg_value(ptr %i.j, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13928)
    #dbg_value(ptr %i.j, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13930)
    #dbg_value(ptr %i.j, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13932)
    #dbg_value(ptr %i.j, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13934)
    #dbg_value(ptr %i.j, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13926)
    #dbg_value(ptr poison, !6639, !DIExpression(), !13937)
    #dbg_value(ptr poison, !6646, !DIExpression(), !13939)
    #dbg_value(ptr %i.j, !6643, !DIExpression(), !13937)
    #dbg_value(ptr %i.j, !6649, !DIExpression(), !13939)
    #dbg_value(ptr %i.j, !6652, !DIExpression(), !13941)
    #dbg_value(ptr %i.j, !6658, !DIExpression(), !13943)
    #dbg_value(i64 %i.x, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13937)
    #dbg_value(i64 %i.x, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13939)
    #dbg_value(i64 %i.x, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13941)
    #dbg_value(i64 %i.x, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13943)
    #dbg_value(i64 %i.u, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13937)
    #dbg_value(i64 %i.u, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13939)
    #dbg_value(i64 %i.u, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13941)
    #dbg_value(i64 %i.u, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13943)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13, !dbg !14050
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i, !dbg !14051

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !14041

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit
    #dbg_value(ptr %0, !7940, !DIExpression(), !13945)
    #dbg_value(ptr %0, !7942, !DIExpression(), !13947)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !14052
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit, !dbg !14053

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !7945, !DIExpression(DW_OP_deref), !13949)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB2q_(ptr nonnull %0), !dbg !14054
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit, !dbg !14055
end_hunk_1
begin_hunk_2_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB2f_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14854
    #dbg_value(i64 %..i, !14716, !DIExpression(), !14813)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i), !dbg !14855
  br i1 %i.ae, label %bb.o, label %bb.p, !dbg !14856

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit
    #dbg_value(ptr undef, !14814, !DIExpression(DW_OP_deref), !14817)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB2q_(ptr nonnull %0), !dbg !14857
  br label %bb.p, !dbg !14858

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, %bb.o
  ret void, !dbg !14859
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB2f_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14860 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !14896, !DIExpression(), !14898)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !14903
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !14904

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !7940, !DIExpression(), !14862)
    #dbg_value(ptr %0, !7942, !DIExpression(), !14864)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !14905
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit, !dbg !14906

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !7945, !DIExpression(DW_OP_deref), !14866)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB2q_(ptr nonnull %0), !dbg !14907
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit, !dbg !14908

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !14899, !DIExpression(), !14902)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14909 ; 2 uses
    #dbg_value(ptr poison, !8000, !DIExpression(), !14872)
    #dbg_value(ptr %i.e, !8034, !DIExpression(), !14873)
    #dbg_value(ptr %i.e, !8037, !DIExpression(), !14875)
    #dbg_value(ptr %i.e, !8032, !DIExpression(), !14876)
    #dbg_value(ptr %i.e, !8028, !DIExpression(), !14877)
    #dbg_value(ptr %i.e, !8029, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14878)
    #dbg_value(ptr undef, !8040, !DIExpression(), !14880)
    #dbg_value(ptr %i.e, !8043, !DIExpression(), !14881)
    #dbg_value(ptr %i.e, !8045, !DIExpression(), !14883)
    #dbg_declare(ptr poison, !8049, !DIExpression(), !14884)
    #dbg_declare(ptr poison, !8048, !DIExpression(), !14884)
    #dbg_value(ptr %i.e, !8053, !DIExpression(), !14886)
    #dbg_declare(ptr poison, !8056, !DIExpression(), !14887)
    #dbg_value(ptr poison, !8060, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !14889)
    #dbg_value(ptr %i.e, !8065, !DIExpression(), !14891)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14910
  store i32 2, ptr %i.a, align 8, !dbg !14910
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB29_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !14911

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !14912
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !14912
    #dbg_value(ptr undef, !8000, !DIExpression(), !14872)
    #dbg_value(ptr %i.g, !8023, !DIExpression(), !14872)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !14913 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !14914
  unreachable, !dbg !14914

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14915
    #dbg_value(ptr %i.e, !8029, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14878)
    #dbg_value(ptr undef, !8029, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14878)
    #dbg_value(ptr poison, !8035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14892)
    #dbg_value(ptr poison, !8067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14894)
    #dbg_value(ptr poison, !8035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14892)
    #dbg_value(ptr poison, !8067, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14894)
    #dbg_value(i64 poison, !8068, !DIExpression(), !14894)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2b_.exit, !dbg !14916

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !14913
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !14913 ; 2 uses
    #dbg_value(ptr %i.j, !8029, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14878)
    #dbg_value(ptr %i.k, !8029, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14878)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !8035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14892)
    #dbg_value(ptr %i.j, !8067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14894)
    #dbg_value(ptr %i.k, !8035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14892)
    #dbg_value(ptr %i.k, !8067, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14894)
    #dbg_value(i64 poison, !8068, !DIExpression(), !14894)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2b_.exit, !dbg !14917

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2b_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !14918
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !14918
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !14919
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !14919, !range !7818, !noundef !2017
    #dbg_value(i64 %.sroa.01.0.i, !8038, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14875)
    #dbg_value(ptr %.sroa.6.0.i, !8038, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14875)
    #dbg_value(ptr %.sroa.8.0.i, !8038, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14875)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14920
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14920
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !14920
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !14920
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !14920
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !14920
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !14920
  store i32 1, ptr %i.b, align 8, !dbg !14920
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB29_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !14921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14922
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB2f_(ptr noundef nonnull %0), !dbg !14923
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit, !dbg !14923

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2b_.exit
  ret void, !dbg !14924
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_(ptr noundef nonnull %0) unnamed_addr #0 !dbg !1695 {
bb.a:
    #dbg_value(ptr %0, !8076, !DIExpression(), !14925)
    #dbg_value(ptr %0, !8078, !DIExpression(), !14927)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !14930
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !14931

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !8081, !DIExpression(), !14929)
    #dbg_value(ptr undef, !8081, !DIExpression(DW_OP_deref), !14929)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB2q_(ptr nonnull %0), !dbg !14932
  br label %bb.c, !dbg !14933

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !14934
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB2f_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14935 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !15010, !DIExpression(), !15014)
    #dbg_value(ptr %1, !15011, !DIExpression(), !15014)
    #dbg_value(ptr %2, !15012, !DIExpression(), !15014)
    #dbg_declare(ptr poison, !15015, !DIExpression(), !15026)
    #dbg_value(ptr poison, !15032, !DIExpression(), !15035)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !15062
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !15063
  br i1 %i.c, label %bb.b, label %bb.o, !dbg !15063

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !15064
    #dbg_value(ptr %0, !15030, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15036)
    #dbg_value(ptr %0, !15022, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !15037)
    #dbg_value(ptr %0, !15039, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !15046)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !15065 ; 2 uses
    #dbg_declare(ptr poison, !15047, !DIExpression(), !14944)
    #dbg_value(ptr %i.d, !15050, !DIExpression(), !14945)
    #dbg_value(ptr %i.d, !15053, !DIExpression(), !14948)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15066, !noalias !15058
    #dbg_value(i32 2, !15056, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14948)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !15067, !noalias !15058
  store i32 2, ptr %i.d, align 8, !dbg !15068, !noalias !15058
  %i.e = load i32, ptr %i.a, align 8, !dbg !15066, !range !7113, !noalias !15058, !noundef !2017
  %i.f = icmp eq i32 %i.e, 1, !dbg !15069
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2b_.exit, label %bb.c, !dbg !15069, !prof !7688

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.d unwind label %bb.e, !dbg !15070, !noalias !15058

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op, !dbg !15014

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEEEB2n_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #12
          to label %common.resume unwind label %bb.f, !dbg !15071, !noalias !15058

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !15072, !noalias !15058
  unreachable, !dbg !15072

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2b_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !15073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !15073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15071, !noalias !15058
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15059), !dbg !15074
    #dbg_value(ptr %1, !7963, !DIExpression(), !14954)
  %i.j = load i64, ptr %1, align 8, !dbg !15075, !range !7695, !alias.scope !15059, !noundef !2017
  %3 = trunc nuw i64 %i.j to i1, !dbg !15075
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.g, !dbg !15075

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2b_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15075 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15060), !dbg !15075
    #dbg_value(ptr %i.k, !7115, !DIExpression(), !14958)
  %i.l = load i64, ptr %i.k, align 8, !dbg !15076, !alias.scope !15061, !noundef !2017
  %i.m = icmp eq i64 %i.l, 0, !dbg !15076
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.h, !dbg !15076

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15076
  %.val.i.i = load ptr, ptr %i.n, align 8, !dbg !15076, !alias.scope !15061, !noundef !2017 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !15076
  %.val1.i.i = load ptr, ptr %i.o, align 8, !dbg !15076, !alias.scope !15061 ; 6 uses
    #dbg_value(ptr poison, !7122, !DIExpression(), !14960)
    #dbg_value(ptr poison, !7129, !DIExpression(), !14962)
  %i.p = icmp eq ptr %.val.i.i, null, !dbg !15077
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.i, !dbg !15077

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr poison, !7136, !DIExpression(), !14964)
    #dbg_value(ptr poison, !7143, !DIExpression(), !14966)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !dbg !15078, !invariant.load !2017, !noalias !15061 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null, !dbg !15078
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !15078

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !dbg !15078, !noalias !15061

bb.k:                                             ; preds = %bb.j, %bb.i
    #dbg_value(ptr poison, !7147, !DIExpression(), !14968)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14969)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14969)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14971)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14973)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14975)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14977)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14971)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14973)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14975)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14977)
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !15079
  %i.s = load i64, ptr %i.r, align 8, !dbg !15079, !range !7184, !invariant.load !2017, !noalias !15061 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14978)
    #dbg_value(i64 %i.s, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14978)
  %i.t = icmp eq i64 %i.s, 0, !dbg !15080
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.l, !dbg !15080

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !15079
  %i.v = load i64, ptr %i.u, align 8, !dbg !15081, !range !7185, !invariant.load !2017, !noalias !15061
    #dbg_value(i64 %i.v, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14978)
    #dbg_value(ptr %.val.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14971)
    #dbg_value(ptr %.val.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14973)
    #dbg_value(ptr %.val.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14975)
    #dbg_value(ptr %.val.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14977)
    #dbg_value(ptr %.val.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14969)
    #dbg_value(ptr poison, !6639, !DIExpression(), !14980)
    #dbg_value(ptr poison, !6646, !DIExpression(), !14982)
    #dbg_value(ptr %.val.i.i, !6643, !DIExpression(), !14980)
    #dbg_value(ptr %.val.i.i, !6649, !DIExpression(), !14982)
    #dbg_value(ptr %.val.i.i, !6652, !DIExpression(), !14984)
    #dbg_value(ptr %.val.i.i, !6658, !DIExpression(), !14986)
    #dbg_value(i64 %i.v, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14980)
    #dbg_value(i64 %i.v, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14982)
    #dbg_value(i64 %i.v, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14984)
    #dbg_value(i64 %i.v, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14986)
    #dbg_value(i64 %i.s, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14980)
    #dbg_value(i64 %i.s, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14982)
    #dbg_value(i64 %i.s, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14984)
    #dbg_value(i64 %i.s, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14986)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13, !dbg !15082, !noalias !15061
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, !dbg !15083

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !7147, !DIExpression(), !14988)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14989)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14989)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14991)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14993)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14995)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14997)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14991)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14993)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14995)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14997)
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !15084
  %i.y = load i64, ptr %i.x, align 8, !dbg !15084, !range !7184, !invariant.load !2017, !noalias !15061 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14998)
    #dbg_value(i64 %i.y, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14998)
  %i.z = icmp eq i64 %i.y, 0, !dbg !15085
  br i1 %i.z, label %.body, label %bb.n, !dbg !15085

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !15084
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !15086, !range !7185, !invariant.load !2017, !noalias !15061
    #dbg_value(i64 %i.ab, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14998)
    #dbg_value(ptr %.val.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14991)
    #dbg_value(ptr %.val.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14993)
    #dbg_value(ptr %.val.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14995)
    #dbg_value(ptr %.val.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14997)
    #dbg_value(ptr %.val.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14989)
    #dbg_value(ptr poison, !6639, !DIExpression(), !15000)
    #dbg_value(ptr poison, !6646, !DIExpression(), !15002)
    #dbg_value(ptr %.val.i.i, !6643, !DIExpression(), !15000)
    #dbg_value(ptr %.val.i.i, !6649, !DIExpression(), !15002)
    #dbg_value(ptr %.val.i.i, !6652, !DIExpression(), !15004)
    #dbg_value(ptr %.val.i.i, !6658, !DIExpression(), !15006)
    #dbg_value(i64 %i.ab, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15000)
    #dbg_value(i64 %i.ab, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15002)
    #dbg_value(i64 %i.ab, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15004)
    #dbg_value(i64 %i.ab, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15006)
    #dbg_value(i64 %i.y, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15000)
    #dbg_value(i64 %i.y, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15002)
    #dbg_value(i64 %i.y, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15004)
    #dbg_value(i64 %i.y, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15006)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13, !dbg !15087, !noalias !15061
  br label %.body, !dbg !15088

bb.o:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit
  ret void, !dbg !15089

.body:                                            ; preds = %bb.m, %bb.n
  store i64 0, ptr %1, align 8, !dbg !15074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !15074
  br label %common.resume, !dbg !15090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2b_.exit
  store i64 0, ptr %1, align 8, !dbg !15074
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !15074
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !15091
  br label %bb.o, !dbg !15092
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowB2f_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15094 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !15187, !DIExpression(), !15106)
    #dbg_value(ptr poison, !15222, !DIExpression(), !15110)
    #dbg_value(ptr poison, !15210, !DIExpression(), !15111)
    #dbg_value(ptr poison, !15215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15228)
    #dbg_value(ptr poison, !15214, !DIExpression(), !15229)
    #dbg_value(ptr poison, !15220, !DIExpression(), !15230)
    #dbg_value(ptr poison, !15231, !DIExpression(), !15234)
    #dbg_value(ptr %0, !15183, !DIExpression(), !15235)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !15262 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !15262
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !15262
    #dbg_value(i1 %i.c, !15184, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !15236)
    #dbg_value(i1 %i.d, !15184, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !15236)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !15263

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !15264

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !15220, !DIExpression(), !15230)
    #dbg_value(ptr undef, !15214, !DIExpression(), !15229)
    #dbg_value(ptr undef, !15215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15228)
    #dbg_value(ptr undef, !15187, !DIExpression(), !15106)
    #dbg_value(ptr undef, !15210, !DIExpression(), !15111)
    #dbg_value(ptr poison, !15237, !DIExpression(), !15115)
    #dbg_declare(ptr poison, !15241, !DIExpression(), !15116)
    #dbg_declare(ptr poison, !15240, !DIExpression(), !15116)
    #dbg_value(ptr poison, !15245, !DIExpression(), !15119)
    #dbg_declare(ptr poison, !15248, !DIExpression(), !15120)
    #dbg_value(ptr poison, !15252, !DIExpression(DW_OP_deref, DW_OP_deref), !15123)
    #dbg_value(ptr poison, !15257, !DIExpression(), !15126)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !15265
    #dbg_value(ptr %i.e, !15259, !DIExpression(), !15129)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15266, !noalias !15261
  store i32 2, ptr %i.a, align 8, !dbg !15266, !noalias !15261
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB29_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c, !dbg !15267

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !15268
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !15268
    #dbg_value(ptr undef, !15222, !DIExpression(), !15110)
    #dbg_value(ptr %i.g, !15225, !DIExpression(), !15110)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !15269 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !15270
  unreachable, !dbg !15270

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15271, !noalias !15261
    #dbg_value(ptr undef, !15215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15228)
    #dbg_value(ptr undef, !15215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15228)
    #dbg_value(ptr poison, !7736, !DIExpression(), !15133)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !15272

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !15269 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !15269 ; 6 uses
    #dbg_value(ptr %i.j, !15215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15228)
    #dbg_value(ptr %i.k, !15215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15228)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !7736, !DIExpression(), !15133)
  %i.l = icmp eq ptr %i.j, null, !dbg !15272
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, label %bb.f, !dbg !15272

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !7143, !DIExpression(), !15135)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !15273, !invariant.load !2017 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !15273
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !15273

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !15273

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !7147, !DIExpression(), !15137)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15138)
    #dbg_value(ptr %i.k, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15138)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15140)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15142)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15144)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15146)
    #dbg_value(ptr %i.k, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15140)
    #dbg_value(ptr %i.k, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15142)
    #dbg_value(ptr %i.k, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15144)
    #dbg_value(ptr %i.k, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15146)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !15274
  %i.o = load i64, ptr %i.n, align 8, !dbg !15274, !range !7184, !invariant.load !2017 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15147)
    #dbg_value(i64 %i.o, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15147)
  %i.p = icmp eq i64 %i.o, 0, !dbg !15275
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, label %bb.i, !dbg !15275

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !15274
  %i.r = load i64, ptr %i.q, align 8, !dbg !15276, !range !7185, !invariant.load !2017
    #dbg_value(i64 %i.r, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15147)
    #dbg_value(ptr %i.j, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15140)
    #dbg_value(ptr %i.j, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15142)
    #dbg_value(ptr %i.j, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15144)
    #dbg_value(ptr %i.j, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15146)
    #dbg_value(ptr %i.j, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15138)
    #dbg_value(ptr poison, !6639, !DIExpression(), !15149)
    #dbg_value(ptr poison, !6646, !DIExpression(), !15151)
    #dbg_value(ptr %i.j, !6643, !DIExpression(), !15149)
    #dbg_value(ptr %i.j, !6649, !DIExpression(), !15151)
    #dbg_value(ptr %i.j, !6652, !DIExpression(), !15153)
    #dbg_value(ptr %i.j, !6658, !DIExpression(), !15155)
    #dbg_value(i64 %i.r, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15149)
    #dbg_value(i64 %i.r, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15151)
    #dbg_value(i64 %i.r, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15153)
    #dbg_value(i64 %i.r, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15155)
    #dbg_value(i64 %i.o, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15149)
    #dbg_value(i64 %i.o, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15151)
    #dbg_value(i64 %i.o, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15153)
    #dbg_value(i64 %i.o, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15155)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13, !dbg !15277
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !15278

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !7147, !DIExpression(), !15157)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15158)
    #dbg_value(ptr %i.k, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15158)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15160)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15162)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15164)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15166)
    #dbg_value(ptr %i.k, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15160)
    #dbg_value(ptr %i.k, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15162)
    #dbg_value(ptr %i.k, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15164)
    #dbg_value(ptr %i.k, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15166)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !15279
  %i.u = load i64, ptr %i.t, align 8, !dbg !15279, !range !7184, !invariant.load !2017 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15167)
    #dbg_value(i64 %i.u, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15167)
  %i.v = icmp eq i64 %i.u, 0, !dbg !15280
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i, label %bb.k, !dbg !15280

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !15279
  %i.x = load i64, ptr %i.w, align 8, !dbg !15281, !range !7185, !invariant.load !2017
    #dbg_value(i64 %i.x, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15167)
    #dbg_value(ptr %i.j, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15160)
    #dbg_value(ptr %i.j, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15162)
    #dbg_value(ptr %i.j, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15164)
    #dbg_value(ptr %i.j, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15166)
    #dbg_value(ptr %i.j, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15158)
    #dbg_value(ptr poison, !6639, !DIExpression(), !15169)
    #dbg_value(ptr poison, !6646, !DIExpression(), !15171)
    #dbg_value(ptr %i.j, !6643, !DIExpression(), !15169)
    #dbg_value(ptr %i.j, !6649, !DIExpression(), !15171)
    #dbg_value(ptr %i.j, !6652, !DIExpression(), !15173)
    #dbg_value(ptr %i.j, !6658, !DIExpression(), !15175)
    #dbg_value(i64 %i.x, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15169)
    #dbg_value(i64 %i.x, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15171)
    #dbg_value(i64 %i.x, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15173)
    #dbg_value(i64 %i.x, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15175)
    #dbg_value(i64 %i.u, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15169)
    #dbg_value(i64 %i.u, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15171)
    #dbg_value(i64 %i.u, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15173)
    #dbg_value(i64 %i.u, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15175)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13, !dbg !15282
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i, !dbg !15283

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !15273

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit
    #dbg_value(ptr %0, !8076, !DIExpression(), !15177)
    #dbg_value(ptr %0, !8078, !DIExpression(), !15179)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !15284
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit, !dbg !15285

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !8081, !DIExpression(DW_OP_deref), !15181)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB2q_(ptr nonnull %0), !dbg !15286
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit, !dbg !15287
end_hunk_2
begin_hunk_3_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB2f_:bb.a
bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit
    #dbg_value(ptr undef, !16046, !DIExpression(DW_OP_deref), !16049)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB2q_(ptr nonnull %0), !dbg !16089
  br label %bb.p, !dbg !16090

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, %bb.o
  ret void, !dbg !16091
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB2f_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16092 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !16128, !DIExpression(), !16130)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !16135
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !16136

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !8076, !DIExpression(), !16094)
    #dbg_value(ptr %0, !8078, !DIExpression(), !16096)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !16137
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit, !dbg !16138

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !8081, !DIExpression(DW_OP_deref), !16098)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB2q_(ptr nonnull %0), !dbg !16139
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit, !dbg !16140

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !16131, !DIExpression(), !16134)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16141 ; 2 uses
    #dbg_value(ptr poison, !8100, !DIExpression(), !16104)
    #dbg_value(ptr %i.e, !8134, !DIExpression(), !16105)
    #dbg_value(ptr %i.e, !8137, !DIExpression(), !16107)
    #dbg_value(ptr %i.e, !8132, !DIExpression(), !16108)
    #dbg_value(ptr %i.e, !8128, !DIExpression(), !16109)
    #dbg_value(ptr %i.e, !8129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16110)
    #dbg_value(ptr undef, !8140, !DIExpression(), !16112)
    #dbg_value(ptr %i.e, !8143, !DIExpression(), !16113)
    #dbg_value(ptr %i.e, !8145, !DIExpression(), !16115)
    #dbg_declare(ptr poison, !8149, !DIExpression(), !16116)
    #dbg_declare(ptr poison, !8148, !DIExpression(), !16116)
    #dbg_value(ptr %i.e, !8153, !DIExpression(), !16118)
    #dbg_declare(ptr poison, !8156, !DIExpression(), !16119)
    #dbg_value(ptr poison, !8160, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !16121)
    #dbg_value(ptr %i.e, !8165, !DIExpression(), !16123)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16142
  store i32 2, ptr %i.a, align 8, !dbg !16142
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB29_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !16143

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !16144
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !16144
    #dbg_value(ptr undef, !8100, !DIExpression(), !16104)
    #dbg_value(ptr %i.g, !8123, !DIExpression(), !16104)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !16145 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !16146
  unreachable, !dbg !16146

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16147
    #dbg_value(ptr %i.e, !8129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16110)
    #dbg_value(ptr undef, !8129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16110)
    #dbg_value(ptr poison, !8135, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16124)
    #dbg_value(ptr poison, !8167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16126)
    #dbg_value(ptr poison, !8135, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16124)
    #dbg_value(ptr poison, !8167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16126)
    #dbg_value(i64 poison, !8168, !DIExpression(), !16126)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2b_.exit, !dbg !16148

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !16145
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !16145 ; 2 uses
    #dbg_value(ptr %i.j, !8129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16110)
    #dbg_value(ptr %i.k, !8129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16110)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !8135, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16124)
    #dbg_value(ptr %i.j, !8167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16126)
    #dbg_value(ptr %i.k, !8135, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16124)
    #dbg_value(ptr %i.k, !8167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16126)
    #dbg_value(i64 poison, !8168, !DIExpression(), !16126)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2b_.exit, !dbg !16149

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2b_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !16150
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !16150
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16151
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !16151, !range !7818, !noundef !2017
    #dbg_value(i64 %.sroa.01.0.i, !8138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16107)
    #dbg_value(ptr %.sroa.6.0.i, !8138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16107)
    #dbg_value(ptr %.sroa.8.0.i, !8138, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16152
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !16152
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !16152
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !16152
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !16152
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !16152
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !16152
  store i32 1, ptr %i.b, align 8, !dbg !16152
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB29_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !16153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16154
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB2f_(ptr noundef nonnull %0), !dbg !16155
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit, !dbg !16155

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2b_.exit
  ret void, !dbg !16156
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1c_(ptr noundef nonnull %0) unnamed_addr #0 !dbg !1720 {
bb.a:
    #dbg_value(ptr %0, !8176, !DIExpression(), !16157)
    #dbg_value(ptr %0, !8178, !DIExpression(), !16159)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !16162
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !16163

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !8181, !DIExpression(), !16161)
    #dbg_value(ptr undef, !8181, !DIExpression(DW_OP_deref), !16161)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB28_(ptr nonnull %0), !dbg !16164
  br label %bb.c, !dbg !16165

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !16166
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB1c_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16167 {
bb.a:
  %i.a = alloca [1200 x i8], align 8              ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !16246, !DIExpression(), !16250)
    #dbg_value(ptr %1, !16247, !DIExpression(), !16250)
    #dbg_value(ptr %2, !16248, !DIExpression(), !16250)
    #dbg_declare(ptr poison, !16251, !DIExpression(), !16262)
    #dbg_value(ptr poison, !16268, !DIExpression(), !16271)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1248, !dbg !16298
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !16299
  br i1 %i.c, label %bb.b, label %bb.r, !dbg !16299

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !16300
    #dbg_value(ptr %0, !16266, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16272)
    #dbg_value(ptr %0, !16258, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16273)
    #dbg_value(ptr %0, !16275, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16282)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !16301 ; 2 uses
    #dbg_declare(ptr poison, !16283, !DIExpression(), !16176)
    #dbg_value(ptr %i.d, !16286, !DIExpression(), !16177)
    #dbg_value(ptr %i.d, !16289, !DIExpression(), !16180)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16302, !noalias !16294
    #dbg_value(i32 2, !16292, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !16180)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1200) %i.a, ptr noundef nonnull align 8 dereferenceable(1200) %i.d, i64 1200, i1 false), !dbg !16303, !noalias !16294
  store i32 2, ptr %i.d, align 8, !dbg !16304, !noalias !16294
  %i.e = load i32, ptr %i.a, align 8, !dbg !16302, !range !7113, !noalias !16294, !noundef !2017
  %i.f = icmp eq i32 %i.e, 1, !dbg !16305
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B18_.exit, label %bb.c, !dbg !16305, !prof !7688

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.e unwind label %bb.d, !dbg !16306, !noalias !16294

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !16307, !range !7113, !noalias !16294, !noundef !2017
  %i.i = icmp eq i32 %i.h, 1, !dbg !16307
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !16307

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !16250

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEB1A_(ptr noundef nonnull align 8 %i.a) #12
          to label %common.resume unwind label %bb.g, !dbg !16307, !noalias !16294

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !16308, !noalias !16294
  unreachable, !dbg !16308

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B18_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !16309
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !16309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16307, !noalias !16294
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16295), !dbg !16310
    #dbg_value(ptr %1, !7689, !DIExpression(), !16186)
  %i.l = load i64, ptr %1, align 8, !dbg !16311, !range !7695, !alias.scope !16295, !noundef !2017
  %3 = trunc nuw i64 %i.l to i1, !dbg !16311
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.h, !dbg !16311

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B18_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16311 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16296), !dbg !16311
    #dbg_value(ptr %i.m, !7254, !DIExpression(), !16190)
  %i.n = load i64, ptr %i.m, align 8, !dbg !16312, !alias.scope !16297, !noundef !2017
  %i.o = icmp eq i64 %i.n, 0, !dbg !16312
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !16312 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !dbg !16312, !alias.scope !16297, !noundef !2017 ; 5 uses
  br i1 %i.o, label %bb.i, label %bb.k, !dbg !16312

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %i.p, !7261, !DIExpression(), !16192)
  %i.r = icmp eq ptr %i.q, null, !dbg !16313
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.j, !dbg !16313

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr %i.p, !7267, !DIExpression(), !16194)
  invoke void @_RNvXs4_NtCsbHiBx3jRrxb_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit unwind label %bb.s, !dbg !16314

bb.k:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !16312
  %.val1.i.i = load ptr, ptr %i.s, align 8, !dbg !16312, !alias.scope !16297 ; 6 uses
    #dbg_value(ptr poison, !7122, !DIExpression(), !16196)
    #dbg_value(ptr poison, !7129, !DIExpression(), !16198)
  %i.t = icmp eq ptr %i.q, null, !dbg !16315
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.l, !dbg !16315

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr poison, !7136, !DIExpression(), !16200)
    #dbg_value(ptr poison, !7143, !DIExpression(), !16202)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.u = load ptr, ptr %.val1.i.i, align 8, !dbg !16316, !invariant.load !2017, !noalias !16297 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null, !dbg !16316
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m, !dbg !16316

bb.m:                                             ; preds = %bb.l
  invoke void %i.u(ptr noundef nonnull %i.q)
          to label %bb.n unwind label %bb.p, !dbg !16316, !noalias !16297

bb.n:                                             ; preds = %bb.m, %bb.l
    #dbg_value(ptr poison, !7147, !DIExpression(), !16204)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16205)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16205)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16207)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16209)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16211)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16213)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16207)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16209)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16211)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16213)
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !16317
  %i.w = load i64, ptr %i.v, align 8, !dbg !16317, !range !7184, !invariant.load !2017, !noalias !16297 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16214)
    #dbg_value(i64 %i.w, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16214)
  %i.x = icmp eq i64 %i.w, 0, !dbg !16318
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.o, !dbg !16318

bb.o:                                             ; preds = %bb.n
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !16317
  %i.z = load i64, ptr %i.y, align 8, !dbg !16319, !range !7185, !invariant.load !2017, !noalias !16297
    #dbg_value(i64 %i.z, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16214)
    #dbg_value(ptr %i.q, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16207)
    #dbg_value(ptr %i.q, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16209)
    #dbg_value(ptr %i.q, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16211)
    #dbg_value(ptr %i.q, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16213)
    #dbg_value(ptr %i.q, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16205)
    #dbg_value(ptr poison, !6639, !DIExpression(), !16216)
    #dbg_value(ptr poison, !6646, !DIExpression(), !16218)
    #dbg_value(ptr %i.q, !6643, !DIExpression(), !16216)
    #dbg_value(ptr %i.q, !6649, !DIExpression(), !16218)
    #dbg_value(ptr %i.q, !6652, !DIExpression(), !16220)
    #dbg_value(ptr %i.q, !6658, !DIExpression(), !16222)
    #dbg_value(i64 %i.z, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16216)
    #dbg_value(i64 %i.z, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16218)
    #dbg_value(i64 %i.z, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16220)
    #dbg_value(i64 %i.z, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16222)
    #dbg_value(i64 %i.w, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16216)
    #dbg_value(i64 %i.w, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16218)
    #dbg_value(i64 %i.w, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16220)
    #dbg_value(i64 %i.w, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16222)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #13, !dbg !16320, !noalias !16297
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, !dbg !16321

bb.p:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr poison, !7147, !DIExpression(), !16224)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16225)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16225)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16227)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16229)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16231)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16233)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16227)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16229)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16231)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16233)
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !16322
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !16322, !range !7184, !invariant.load !2017, !noalias !16297 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16234)
    #dbg_value(i64 %i.ac, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16234)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !16323
  br i1 %i.ad, label %.body, label %bb.q, !dbg !16323

bb.q:                                             ; preds = %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !16322
  %i.af = load i64, ptr %i.ae, align 8, !dbg !16324, !range !7185, !invariant.load !2017, !noalias !16297
    #dbg_value(i64 %i.af, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16234)
    #dbg_value(ptr %i.q, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16227)
    #dbg_value(ptr %i.q, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16229)
    #dbg_value(ptr %i.q, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16231)
    #dbg_value(ptr %i.q, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16233)
    #dbg_value(ptr %i.q, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16225)
    #dbg_value(ptr poison, !6639, !DIExpression(), !16236)
    #dbg_value(ptr poison, !6646, !DIExpression(), !16238)
    #dbg_value(ptr %i.q, !6643, !DIExpression(), !16236)
    #dbg_value(ptr %i.q, !6649, !DIExpression(), !16238)
    #dbg_value(ptr %i.q, !6652, !DIExpression(), !16240)
    #dbg_value(ptr %i.q, !6658, !DIExpression(), !16242)
    #dbg_value(i64 %i.af, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16236)
    #dbg_value(i64 %i.af, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16238)
    #dbg_value(i64 %i.af, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16240)
    #dbg_value(i64 %i.af, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16242)
    #dbg_value(i64 %i.ac, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16236)
    #dbg_value(i64 %i.ac, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16238)
    #dbg_value(i64 %i.ac, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16240)
    #dbg_value(i64 %i.ac, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16242)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #13, !dbg !16325, !noalias !16297
  br label %.body, !dbg !16326

bb.r:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit
  ret void, !dbg !16327

bb.s:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !16310

.body:                                            ; preds = %bb.p, %bb.q, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.s ], [ %i.aa, %bb.q ], [ %i.aa, %bb.p ]
  store i64 0, ptr %1, align 8, !dbg !16310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !16310
  br label %common.resume, !dbg !16328

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.o, %bb.n, %bb.k, %bb.i, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B18_.exit, %bb.j
  store i64 0, ptr %1, align 8, !dbg !16310
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !16310
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !16329
  br label %bb.r, !dbg !16330
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowB1c_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16332 {
bb.a:
  %i.a = alloca [1200 x i8], align 8              ; 4 uses
    #dbg_value(ptr poison, !16425, !DIExpression(), !16344)
    #dbg_value(ptr poison, !16460, !DIExpression(), !16348)
    #dbg_value(ptr poison, !16448, !DIExpression(), !16349)
    #dbg_value(ptr poison, !16453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16466)
    #dbg_value(ptr poison, !16452, !DIExpression(), !16467)
    #dbg_value(ptr poison, !16458, !DIExpression(), !16468)
    #dbg_value(ptr poison, !16469, !DIExpression(), !16472)
    #dbg_value(ptr %0, !16421, !DIExpression(), !16473)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !16500 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !16500
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !16500
    #dbg_value(i1 %i.c, !16422, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !16474)
    #dbg_value(i1 %i.d, !16422, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !16474)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !16501

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !16502

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !16458, !DIExpression(), !16468)
    #dbg_value(ptr undef, !16452, !DIExpression(), !16467)
    #dbg_value(ptr undef, !16453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16466)
    #dbg_value(ptr undef, !16425, !DIExpression(), !16344)
    #dbg_value(ptr undef, !16448, !DIExpression(), !16349)
    #dbg_value(ptr poison, !16475, !DIExpression(), !16353)
    #dbg_declare(ptr poison, !16479, !DIExpression(), !16354)
    #dbg_declare(ptr poison, !16478, !DIExpression(), !16354)
    #dbg_value(ptr poison, !16483, !DIExpression(), !16357)
    #dbg_declare(ptr poison, !16486, !DIExpression(), !16358)
    #dbg_value(ptr poison, !16490, !DIExpression(DW_OP_deref, DW_OP_deref), !16361)
    #dbg_value(ptr poison, !16495, !DIExpression(), !16364)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16503
    #dbg_value(ptr %i.e, !16497, !DIExpression(), !16367)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16504, !noalias !16499
  store i32 2, ptr %i.a, align 8, !dbg !16504, !noalias !16499
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB16_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1200) %i.a)
          to label %.thread unwind label %bb.c, !dbg !16505

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !16506
end_hunk_3
begin_hunk_4_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB1c_:bb.a
bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit
    #dbg_value(ptr undef, !17289, !DIExpression(DW_OP_deref), !17292)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB28_(ptr nonnull %0), !dbg !17332
  br label %bb.p, !dbg !17333

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, %bb.o
  ret void, !dbg !17334
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB1c_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17335 {
bb.a:
  %i.a = alloca [1200 x i8], align 8              ; 4 uses
  %i.b = alloca [1200 x i8], align 8              ; 7 uses
    #dbg_value(ptr %0, !17371, !DIExpression(), !17373)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !17378
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !17379

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !8176, !DIExpression(), !17337)
    #dbg_value(ptr %0, !8178, !DIExpression(), !17339)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !17380
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1c_.exit, !dbg !17381

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !8181, !DIExpression(DW_OP_deref), !17341)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB28_(ptr nonnull %0), !dbg !17382
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1c_.exit, !dbg !17383

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !17374, !DIExpression(), !17377)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17384 ; 2 uses
    #dbg_value(ptr poison, !8200, !DIExpression(), !17347)
    #dbg_value(ptr %i.e, !8234, !DIExpression(), !17348)
    #dbg_value(ptr %i.e, !8237, !DIExpression(), !17350)
    #dbg_value(ptr %i.e, !8232, !DIExpression(), !17351)
    #dbg_value(ptr %i.e, !8228, !DIExpression(), !17352)
    #dbg_value(ptr %i.e, !8229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17353)
    #dbg_value(ptr undef, !8240, !DIExpression(), !17355)
    #dbg_value(ptr %i.e, !8243, !DIExpression(), !17356)
    #dbg_value(ptr %i.e, !8245, !DIExpression(), !17358)
    #dbg_declare(ptr poison, !8249, !DIExpression(), !17359)
    #dbg_declare(ptr poison, !8248, !DIExpression(), !17359)
    #dbg_value(ptr %i.e, !8253, !DIExpression(), !17361)
    #dbg_declare(ptr poison, !8256, !DIExpression(), !17362)
    #dbg_value(ptr poison, !8260, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !17364)
    #dbg_value(ptr %i.e, !8265, !DIExpression(), !17366)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17385
  store i32 2, ptr %i.a, align 8, !dbg !17385
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB16_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1200) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !17386

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !17387
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !17387
    #dbg_value(ptr undef, !8200, !DIExpression(), !17347)
    #dbg_value(ptr %i.g, !8223, !DIExpression(), !17347)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !17388 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !17389
  unreachable, !dbg !17389

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17390
    #dbg_value(ptr %i.e, !8229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17353)
    #dbg_value(ptr undef, !8229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17353)
    #dbg_value(ptr poison, !8235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17367)
    #dbg_value(ptr poison, !8267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17369)
    #dbg_value(ptr poison, !8235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17367)
    #dbg_value(ptr poison, !8267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17369)
    #dbg_value(i64 poison, !8268, !DIExpression(), !17369)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB18_.exit, !dbg !17391

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !17388
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !17388 ; 2 uses
    #dbg_value(ptr %i.j, !8229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17353)
    #dbg_value(ptr %i.k, !8229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17353)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !8235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17367)
    #dbg_value(ptr %i.j, !8267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17369)
    #dbg_value(ptr %i.k, !8235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17367)
    #dbg_value(ptr %i.k, !8267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17369)
    #dbg_value(i64 poison, !8268, !DIExpression(), !17369)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB18_.exit, !dbg !17392

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB18_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !17393
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !17393
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !17394
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !17394, !range !7818, !noundef !2017
    #dbg_value(i64 %.sroa.01.0.i, !8238, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17350)
    #dbg_value(ptr %.sroa.6.0.i, !8238, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17350)
    #dbg_value(ptr %.sroa.8.0.i, !8238, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17350)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17395
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !17395
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !17395
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !17395
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !17395
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !17395
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !17395
  store i32 1, ptr %i.b, align 8, !dbg !17395
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB16_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1200) %i.b), !dbg !17396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17397
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB1c_(ptr noundef nonnull %0), !dbg !17398
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1c_.exit, !dbg !17398

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1c_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB18_.exit
  ret void, !dbg !17399
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1a_(ptr noundef nonnull %0) unnamed_addr #0 !dbg !1745 {
bb.a:
    #dbg_value(ptr %0, !8276, !DIExpression(), !17400)
    #dbg_value(ptr %0, !8278, !DIExpression(), !17402)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !17405
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !17406

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !8281, !DIExpression(), !17404)
    #dbg_value(ptr undef, !8281, !DIExpression(DW_OP_deref), !17404)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB26_(ptr nonnull %0), !dbg !17407
  br label %bb.c, !dbg !17408

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !17409
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB1a_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17410 {
bb.a:
  %i.a = alloca [1336 x i8], align 8              ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !17485, !DIExpression(), !17489)
    #dbg_value(ptr %1, !17486, !DIExpression(), !17489)
    #dbg_value(ptr %2, !17487, !DIExpression(), !17489)
    #dbg_declare(ptr poison, !17490, !DIExpression(), !17501)
    #dbg_value(ptr poison, !17507, !DIExpression(), !17510)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1384, !dbg !17537
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !17538
  br i1 %i.c, label %bb.b, label %bb.p, !dbg !17538

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !17539
    #dbg_value(ptr %0, !17505, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !17511)
    #dbg_value(ptr %0, !17497, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !17512)
    #dbg_value(ptr %0, !17514, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !17521)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !17540 ; 2 uses
    #dbg_declare(ptr poison, !17522, !DIExpression(), !17419)
    #dbg_value(ptr %i.d, !17525, !DIExpression(), !17420)
    #dbg_value(ptr %i.d, !17528, !DIExpression(), !17423)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17541, !noalias !17533
    #dbg_value(i32 2, !17531, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !17423)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1336) %i.a, ptr noundef nonnull align 8 dereferenceable(1336) %i.d, i64 1336, i1 false), !dbg !17542, !noalias !17533
  store i32 2, ptr %i.d, align 8, !dbg !17543, !noalias !17533
  %i.e = load i32, ptr %i.a, align 8, !dbg !17541, !range !7113, !noalias !17533, !noundef !2017
  %i.f = icmp eq i32 %i.e, 1, !dbg !17544
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B16_.exit, label %bb.c, !dbg !17544, !prof !7688

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.e unwind label %bb.d, !dbg !17545, !noalias !17533

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !17546, !range !7113, !noalias !17533, !noundef !2017
  %i.i = icmp eq i32 %i.h, 1, !dbg !17546
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !17546

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !17489

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageNCNCNvCscDgBWNIBxoJ_4bulk6client00EEB1y_(ptr noundef nonnull align 8 %i.a) #12
          to label %common.resume unwind label %bb.g, !dbg !17546, !noalias !17533

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !17547, !noalias !17533
  unreachable, !dbg !17547

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B16_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !17548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !17548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17546, !noalias !17533
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17534), !dbg !17549
    #dbg_value(ptr %1, !7963, !DIExpression(), !17429)
  %i.l = load i64, ptr %1, align 8, !dbg !17550, !range !7695, !alias.scope !17534, !noundef !2017
  %3 = trunc nuw i64 %i.l to i1, !dbg !17550
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.h, !dbg !17550

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B16_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17550 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17535), !dbg !17550
    #dbg_value(ptr %i.m, !7115, !DIExpression(), !17433)
  %i.n = load i64, ptr %i.m, align 8, !dbg !17551, !alias.scope !17536, !noundef !2017
  %i.o = icmp eq i64 %i.n, 0, !dbg !17551
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.i, !dbg !17551

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !17551
  %.val.i.i = load ptr, ptr %i.p, align 8, !dbg !17551, !alias.scope !17536, !noundef !2017 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !17551
  %.val1.i.i = load ptr, ptr %i.q, align 8, !dbg !17551, !alias.scope !17536 ; 6 uses
    #dbg_value(ptr poison, !7122, !DIExpression(), !17435)
    #dbg_value(ptr poison, !7129, !DIExpression(), !17437)
  %i.r = icmp eq ptr %.val.i.i, null, !dbg !17552
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.j, !dbg !17552

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr poison, !7136, !DIExpression(), !17439)
    #dbg_value(ptr poison, !7143, !DIExpression(), !17441)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i, align 8, !dbg !17553, !invariant.load !2017, !noalias !17536 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null, !dbg !17553
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k, !dbg !17553

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !dbg !17553, !noalias !17536

bb.l:                                             ; preds = %bb.k, %bb.j
    #dbg_value(ptr poison, !7147, !DIExpression(), !17443)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17444)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17444)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17446)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17448)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17450)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17452)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17446)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17448)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17450)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17452)
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !17554
  %i.u = load i64, ptr %i.t, align 8, !dbg !17554, !range !7184, !invariant.load !2017, !noalias !17536 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17453)
    #dbg_value(i64 %i.u, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17453)
  %i.v = icmp eq i64 %i.u, 0, !dbg !17555
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.m, !dbg !17555

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !17554
  %i.x = load i64, ptr %i.w, align 8, !dbg !17556, !range !7185, !invariant.load !2017, !noalias !17536
    #dbg_value(i64 %i.x, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17453)
    #dbg_value(ptr %.val.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17446)
    #dbg_value(ptr %.val.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17448)
    #dbg_value(ptr %.val.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17450)
    #dbg_value(ptr %.val.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17452)
    #dbg_value(ptr %.val.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17444)
    #dbg_value(ptr poison, !6639, !DIExpression(), !17455)
    #dbg_value(ptr poison, !6646, !DIExpression(), !17457)
    #dbg_value(ptr %.val.i.i, !6643, !DIExpression(), !17455)
    #dbg_value(ptr %.val.i.i, !6649, !DIExpression(), !17457)
    #dbg_value(ptr %.val.i.i, !6652, !DIExpression(), !17459)
    #dbg_value(ptr %.val.i.i, !6658, !DIExpression(), !17461)
    #dbg_value(i64 %i.x, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17455)
    #dbg_value(i64 %i.x, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17457)
    #dbg_value(i64 %i.x, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17459)
    #dbg_value(i64 %i.x, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17461)
    #dbg_value(i64 %i.u, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17455)
    #dbg_value(i64 %i.u, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17457)
    #dbg_value(i64 %i.u, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17459)
    #dbg_value(i64 %i.u, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17461)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13, !dbg !17557, !noalias !17536
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, !dbg !17558

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !7147, !DIExpression(), !17463)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17464)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17464)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17466)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17468)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17470)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17472)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17466)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17468)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17470)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17472)
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !17559
  %i.aa = load i64, ptr %i.z, align 8, !dbg !17559, !range !7184, !invariant.load !2017, !noalias !17536 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17473)
    #dbg_value(i64 %i.aa, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17473)
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !17560
  br i1 %i.ab, label %.body, label %bb.o, !dbg !17560

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !17559
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !17561, !range !7185, !invariant.load !2017, !noalias !17536
    #dbg_value(i64 %i.ad, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17473)
    #dbg_value(ptr %.val.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17466)
    #dbg_value(ptr %.val.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17468)
    #dbg_value(ptr %.val.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17470)
    #dbg_value(ptr %.val.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17472)
    #dbg_value(ptr %.val.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17464)
    #dbg_value(ptr poison, !6639, !DIExpression(), !17475)
    #dbg_value(ptr poison, !6646, !DIExpression(), !17477)
    #dbg_value(ptr %.val.i.i, !6643, !DIExpression(), !17475)
    #dbg_value(ptr %.val.i.i, !6649, !DIExpression(), !17477)
    #dbg_value(ptr %.val.i.i, !6652, !DIExpression(), !17479)
    #dbg_value(ptr %.val.i.i, !6658, !DIExpression(), !17481)
    #dbg_value(i64 %i.ad, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17475)
    #dbg_value(i64 %i.ad, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17477)
    #dbg_value(i64 %i.ad, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17479)
    #dbg_value(i64 %i.ad, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17481)
    #dbg_value(i64 %i.aa, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17475)
    #dbg_value(i64 %i.aa, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17477)
    #dbg_value(i64 %i.aa, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17479)
    #dbg_value(i64 %i.aa, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17481)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #13, !dbg !17562, !noalias !17536
  br label %.body, !dbg !17563

bb.p:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit
  ret void, !dbg !17564

.body:                                            ; preds = %bb.n, %bb.o
  store i64 0, ptr %1, align 8, !dbg !17549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !17549
  br label %common.resume, !dbg !17565

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B16_.exit
  store i64 0, ptr %1, align 8, !dbg !17549
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !17549
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !17566
  br label %bb.p, !dbg !17567
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowB1a_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17569 {
bb.a:
  %i.a = alloca [1336 x i8], align 8              ; 4 uses
    #dbg_value(ptr poison, !17662, !DIExpression(), !17581)
    #dbg_value(ptr poison, !17697, !DIExpression(), !17585)
    #dbg_value(ptr poison, !17685, !DIExpression(), !17586)
    #dbg_value(ptr poison, !17690, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17703)
    #dbg_value(ptr poison, !17689, !DIExpression(), !17704)
    #dbg_value(ptr poison, !17695, !DIExpression(), !17705)
    #dbg_value(ptr poison, !17706, !DIExpression(), !17709)
    #dbg_value(ptr %0, !17658, !DIExpression(), !17710)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !17737 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !17737
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !17737
    #dbg_value(i1 %i.c, !17659, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !17711)
    #dbg_value(i1 %i.d, !17659, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !17711)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !17738

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !17739

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !17695, !DIExpression(), !17705)
    #dbg_value(ptr undef, !17689, !DIExpression(), !17704)
    #dbg_value(ptr undef, !17690, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17703)
    #dbg_value(ptr undef, !17662, !DIExpression(), !17581)
    #dbg_value(ptr undef, !17685, !DIExpression(), !17586)
    #dbg_value(ptr poison, !17712, !DIExpression(), !17590)
    #dbg_declare(ptr poison, !17716, !DIExpression(), !17591)
    #dbg_declare(ptr poison, !17715, !DIExpression(), !17591)
    #dbg_value(ptr poison, !17720, !DIExpression(), !17594)
    #dbg_declare(ptr poison, !17723, !DIExpression(), !17595)
    #dbg_value(ptr poison, !17727, !DIExpression(DW_OP_deref, DW_OP_deref), !17598)
    #dbg_value(ptr poison, !17732, !DIExpression(), !17601)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17740
    #dbg_value(ptr %i.e, !17734, !DIExpression(), !17604)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17741, !noalias !17736
  store i32 2, ptr %i.a, align 8, !dbg !17741, !noalias !17736
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB14_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1336) %i.a)
          to label %.thread unwind label %bb.c, !dbg !17742

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !17743
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !17743
    #dbg_value(ptr undef, !17697, !DIExpression(), !17585)
    #dbg_value(ptr %i.g, !17700, !DIExpression(), !17585)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !17744 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !17745
  unreachable, !dbg !17745

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17746, !noalias !17736
    #dbg_value(ptr undef, !17690, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17703)
    #dbg_value(ptr undef, !17690, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17703)
    #dbg_value(ptr poison, !7736, !DIExpression(), !17608)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !17747

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !17744 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !17744 ; 6 uses
    #dbg_value(ptr %i.j, !17690, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17703)
    #dbg_value(ptr %i.k, !17690, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17703)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !7736, !DIExpression(), !17608)
  %i.l = icmp eq ptr %i.j, null, !dbg !17747
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, label %bb.f, !dbg !17747

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !7143, !DIExpression(), !17610)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !17748, !invariant.load !2017 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !17748
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !17748

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !17748

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !7147, !DIExpression(), !17612)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17613)
    #dbg_value(ptr %i.k, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17613)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17615)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17617)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17619)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17621)
    #dbg_value(ptr %i.k, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17615)
    #dbg_value(ptr %i.k, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17617)
    #dbg_value(ptr %i.k, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17619)
    #dbg_value(ptr %i.k, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17621)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !17749
  %i.o = load i64, ptr %i.n, align 8, !dbg !17749, !range !7184, !invariant.load !2017 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17622)
    #dbg_value(i64 %i.o, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17622)
  %i.p = icmp eq i64 %i.o, 0, !dbg !17750
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, label %bb.i, !dbg !17750

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !17749
  %i.r = load i64, ptr %i.q, align 8, !dbg !17751, !range !7185, !invariant.load !2017
    #dbg_value(i64 %i.r, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17622)
    #dbg_value(ptr %i.j, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17615)
    #dbg_value(ptr %i.j, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17617)
    #dbg_value(ptr %i.j, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17619)
    #dbg_value(ptr %i.j, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17621)
    #dbg_value(ptr %i.j, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17613)
    #dbg_value(ptr poison, !6639, !DIExpression(), !17624)
    #dbg_value(ptr poison, !6646, !DIExpression(), !17626)
    #dbg_value(ptr %i.j, !6643, !DIExpression(), !17624)
    #dbg_value(ptr %i.j, !6649, !DIExpression(), !17626)
    #dbg_value(ptr %i.j, !6652, !DIExpression(), !17628)
    #dbg_value(ptr %i.j, !6658, !DIExpression(), !17630)
    #dbg_value(i64 %i.r, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17624)
    #dbg_value(i64 %i.r, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17626)
    #dbg_value(i64 %i.r, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17628)
    #dbg_value(i64 %i.r, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17630)
    #dbg_value(i64 %i.o, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17624)
    #dbg_value(i64 %i.o, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17626)
    #dbg_value(i64 %i.o, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17628)
    #dbg_value(i64 %i.o, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17630)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13, !dbg !17752
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !17753

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !7147, !DIExpression(), !17632)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17633)
    #dbg_value(ptr %i.k, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17633)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17635)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17637)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17639)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17641)
    #dbg_value(ptr %i.k, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17635)
    #dbg_value(ptr %i.k, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17637)
    #dbg_value(ptr %i.k, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17639)
    #dbg_value(ptr %i.k, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17641)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !17754
  %i.u = load i64, ptr %i.t, align 8, !dbg !17754, !range !7184, !invariant.load !2017 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17642)
    #dbg_value(i64 %i.u, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17642)
  %i.v = icmp eq i64 %i.u, 0, !dbg !17755
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i, label %bb.k, !dbg !17755

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !17754
  %i.x = load i64, ptr %i.w, align 8, !dbg !17756, !range !7185, !invariant.load !2017
    #dbg_value(i64 %i.x, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17642)
    #dbg_value(ptr %i.j, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17635)
    #dbg_value(ptr %i.j, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17637)
    #dbg_value(ptr %i.j, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17639)
    #dbg_value(ptr %i.j, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17641)
    #dbg_value(ptr %i.j, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17633)
    #dbg_value(ptr poison, !6639, !DIExpression(), !17644)
    #dbg_value(ptr poison, !6646, !DIExpression(), !17646)
    #dbg_value(ptr %i.j, !6643, !DIExpression(), !17644)
    #dbg_value(ptr %i.j, !6649, !DIExpression(), !17646)
    #dbg_value(ptr %i.j, !6652, !DIExpression(), !17648)
    #dbg_value(ptr %i.j, !6658, !DIExpression(), !17650)
    #dbg_value(i64 %i.x, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17644)
    #dbg_value(i64 %i.x, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17646)
    #dbg_value(i64 %i.x, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17648)
    #dbg_value(i64 %i.x, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17650)
    #dbg_value(i64 %i.u, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17644)
    #dbg_value(i64 %i.u, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17646)
    #dbg_value(i64 %i.u, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17648)
    #dbg_value(i64 %i.u, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17650)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13, !dbg !17757
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i, !dbg !17758

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !17748

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit
    #dbg_value(ptr %0, !8276, !DIExpression(), !17652)
    #dbg_value(ptr %0, !8278, !DIExpression(), !17654)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !17759
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1a_.exit, !dbg !17760

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !8281, !DIExpression(DW_OP_deref), !17656)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB26_(ptr nonnull %0), !dbg !17761
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1a_.exit, !dbg !17762
end_hunk_4
begin_hunk_5_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB1a_:bb.a
bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit
    #dbg_value(ptr undef, !18521, !DIExpression(DW_OP_deref), !18524)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB26_(ptr nonnull %0), !dbg !18564
  br label %bb.p, !dbg !18565

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, %bb.o
  ret void, !dbg !18566
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB1a_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18567 {
bb.a:
  %i.a = alloca [1336 x i8], align 8              ; 4 uses
  %i.b = alloca [1336 x i8], align 8              ; 7 uses
    #dbg_value(ptr %0, !18603, !DIExpression(), !18605)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !18610
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !18611

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !8276, !DIExpression(), !18569)
    #dbg_value(ptr %0, !8278, !DIExpression(), !18571)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !18612
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1a_.exit, !dbg !18613

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !8281, !DIExpression(DW_OP_deref), !18573)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB26_(ptr nonnull %0), !dbg !18614
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1a_.exit, !dbg !18615

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !18606, !DIExpression(), !18609)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !18616 ; 2 uses
    #dbg_value(ptr poison, !8300, !DIExpression(), !18579)
    #dbg_value(ptr %i.e, !8334, !DIExpression(), !18580)
    #dbg_value(ptr %i.e, !8337, !DIExpression(), !18582)
    #dbg_value(ptr %i.e, !8332, !DIExpression(), !18583)
    #dbg_value(ptr %i.e, !8328, !DIExpression(), !18584)
    #dbg_value(ptr %i.e, !8329, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18585)
    #dbg_value(ptr undef, !8340, !DIExpression(), !18587)
    #dbg_value(ptr %i.e, !8343, !DIExpression(), !18588)
    #dbg_value(ptr %i.e, !8345, !DIExpression(), !18590)
    #dbg_declare(ptr poison, !8349, !DIExpression(), !18591)
    #dbg_declare(ptr poison, !8348, !DIExpression(), !18591)
    #dbg_value(ptr %i.e, !8353, !DIExpression(), !18593)
    #dbg_declare(ptr poison, !8356, !DIExpression(), !18594)
    #dbg_value(ptr poison, !8360, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !18596)
    #dbg_value(ptr %i.e, !8365, !DIExpression(), !18598)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18617
  store i32 2, ptr %i.a, align 8, !dbg !18617
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB14_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1336) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !18618

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !18619
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !18619
    #dbg_value(ptr undef, !8300, !DIExpression(), !18579)
    #dbg_value(ptr %i.g, !8323, !DIExpression(), !18579)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !18620 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !18621
  unreachable, !dbg !18621

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18622
    #dbg_value(ptr %i.e, !8329, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18585)
    #dbg_value(ptr undef, !8329, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18585)
    #dbg_value(ptr poison, !8335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18599)
    #dbg_value(ptr poison, !8367, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18601)
    #dbg_value(ptr poison, !8335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18599)
    #dbg_value(ptr poison, !8367, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18601)
    #dbg_value(i64 poison, !8368, !DIExpression(), !18601)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB16_.exit, !dbg !18623

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !18620
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !18620 ; 2 uses
    #dbg_value(ptr %i.j, !8329, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18585)
    #dbg_value(ptr %i.k, !8329, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18585)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !8335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18599)
    #dbg_value(ptr %i.j, !8367, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18601)
    #dbg_value(ptr %i.k, !8335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18599)
    #dbg_value(ptr %i.k, !8367, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18601)
    #dbg_value(i64 poison, !8368, !DIExpression(), !18601)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB16_.exit, !dbg !18624

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB16_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !18625
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !18625
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !18626
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !18626, !range !7818, !noundef !2017
    #dbg_value(i64 %.sroa.01.0.i, !8338, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18582)
    #dbg_value(ptr %.sroa.6.0.i, !8338, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18582)
    #dbg_value(ptr %.sroa.8.0.i, !8338, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18582)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18627
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !18627
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !18627
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !18627
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !18627
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !18627
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !18627
  store i32 1, ptr %i.b, align 8, !dbg !18627
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB14_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1336) %i.b), !dbg !18628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18629
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB1a_(ptr noundef nonnull %0), !dbg !18630
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1a_.exit, !dbg !18630

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1a_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB16_.exit
  ret void, !dbg !18631
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1a_(ptr noundef nonnull %0) unnamed_addr #0 !dbg !1770 {
bb.a:
    #dbg_value(ptr %0, !8376, !DIExpression(), !18632)
    #dbg_value(ptr %0, !8378, !DIExpression(), !18634)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !18637
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !18638

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !8381, !DIExpression(), !18636)
    #dbg_value(ptr undef, !8381, !DIExpression(DW_OP_deref), !18636)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB26_(ptr nonnull %0), !dbg !18639
  br label %bb.c, !dbg !18640

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !18641
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB1a_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18642 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !18717, !DIExpression(), !18721)
    #dbg_value(ptr %1, !18718, !DIExpression(), !18721)
    #dbg_value(ptr %2, !18719, !DIExpression(), !18721)
    #dbg_declare(ptr poison, !18722, !DIExpression(), !18733)
    #dbg_value(ptr poison, !18739, !DIExpression(), !18742)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !18769
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !18770
  br i1 %i.c, label %bb.b, label %bb.p, !dbg !18770

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !18771
    #dbg_value(ptr %0, !18737, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18743)
    #dbg_value(ptr %0, !18729, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !18744)
    #dbg_value(ptr %0, !18746, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !18753)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !18772 ; 2 uses
    #dbg_declare(ptr poison, !18754, !DIExpression(), !18651)
    #dbg_value(ptr %i.d, !18757, !DIExpression(), !18652)
    #dbg_value(ptr %i.d, !18760, !DIExpression(), !18655)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18773, !noalias !18765
    #dbg_value(i32 2, !18763, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !18655)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false), !dbg !18774, !noalias !18765
  store i32 2, ptr %i.d, align 8, !dbg !18775, !noalias !18765
  %i.e = load i32, ptr %i.a, align 8, !dbg !18773, !range !7113, !noalias !18765, !noundef !2017
  %i.f = icmp eq i32 %i.e, 1, !dbg !18776
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B16_.exit, label %bb.c, !dbg !18776, !prof !7688

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.e unwind label %bb.d, !dbg !18777, !noalias !18765

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !18778, !range !7113, !noalias !18765, !noundef !2017
  %i.i = icmp eq i32 %i.h, 1, !dbg !18778
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !18778

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !18721

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageNCNCNvCscDgBWNIBxoJ_4bulk6server00EEB1y_(ptr noundef nonnull align 8 %i.a) #12
          to label %common.resume unwind label %bb.g, !dbg !18778, !noalias !18765

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !18779, !noalias !18765
  unreachable, !dbg !18779

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B16_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !18780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !18780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18778, !noalias !18765
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18766), !dbg !18781
    #dbg_value(ptr %1, !7963, !DIExpression(), !18661)
  %i.l = load i64, ptr %1, align 8, !dbg !18782, !range !7695, !alias.scope !18766, !noundef !2017
  %3 = trunc nuw i64 %i.l to i1, !dbg !18782
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.h, !dbg !18782

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B16_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18782 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18767), !dbg !18782
    #dbg_value(ptr %i.m, !7115, !DIExpression(), !18665)
  %i.n = load i64, ptr %i.m, align 8, !dbg !18783, !alias.scope !18768, !noundef !2017
  %i.o = icmp eq i64 %i.n, 0, !dbg !18783
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.i, !dbg !18783

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18783
  %.val.i.i = load ptr, ptr %i.p, align 8, !dbg !18783, !alias.scope !18768, !noundef !2017 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !18783
  %.val1.i.i = load ptr, ptr %i.q, align 8, !dbg !18783, !alias.scope !18768 ; 6 uses
    #dbg_value(ptr poison, !7122, !DIExpression(), !18667)
    #dbg_value(ptr poison, !7129, !DIExpression(), !18669)
  %i.r = icmp eq ptr %.val.i.i, null, !dbg !18784
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.j, !dbg !18784

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr poison, !7136, !DIExpression(), !18671)
    #dbg_value(ptr poison, !7143, !DIExpression(), !18673)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i, align 8, !dbg !18785, !invariant.load !2017, !noalias !18768 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null, !dbg !18785
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k, !dbg !18785

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !dbg !18785, !noalias !18768

bb.l:                                             ; preds = %bb.k, %bb.j
    #dbg_value(ptr poison, !7147, !DIExpression(), !18675)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18676)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18676)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18678)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18680)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18682)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18684)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18678)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18680)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18682)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18684)
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !18786
  %i.u = load i64, ptr %i.t, align 8, !dbg !18786, !range !7184, !invariant.load !2017, !noalias !18768 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18685)
    #dbg_value(i64 %i.u, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18685)
  %i.v = icmp eq i64 %i.u, 0, !dbg !18787
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.m, !dbg !18787

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !18786
  %i.x = load i64, ptr %i.w, align 8, !dbg !18788, !range !7185, !invariant.load !2017, !noalias !18768
    #dbg_value(i64 %i.x, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18685)
    #dbg_value(ptr %.val.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18678)
    #dbg_value(ptr %.val.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18680)
    #dbg_value(ptr %.val.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18682)
    #dbg_value(ptr %.val.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18684)
    #dbg_value(ptr %.val.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18676)
    #dbg_value(ptr poison, !6639, !DIExpression(), !18687)
    #dbg_value(ptr poison, !6646, !DIExpression(), !18689)
    #dbg_value(ptr %.val.i.i, !6643, !DIExpression(), !18687)
    #dbg_value(ptr %.val.i.i, !6649, !DIExpression(), !18689)
    #dbg_value(ptr %.val.i.i, !6652, !DIExpression(), !18691)
    #dbg_value(ptr %.val.i.i, !6658, !DIExpression(), !18693)
    #dbg_value(i64 %i.x, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18687)
    #dbg_value(i64 %i.x, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18689)
    #dbg_value(i64 %i.x, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18691)
    #dbg_value(i64 %i.x, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18693)
    #dbg_value(i64 %i.u, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18687)
    #dbg_value(i64 %i.u, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18689)
    #dbg_value(i64 %i.u, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18691)
    #dbg_value(i64 %i.u, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18693)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13, !dbg !18789, !noalias !18768
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, !dbg !18790

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !7147, !DIExpression(), !18695)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18696)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18696)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18698)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18700)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18702)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18704)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18698)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18700)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18702)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18704)
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !18791
  %i.aa = load i64, ptr %i.z, align 8, !dbg !18791, !range !7184, !invariant.load !2017, !noalias !18768 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18705)
    #dbg_value(i64 %i.aa, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18705)
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !18792
  br i1 %i.ab, label %.body, label %bb.o, !dbg !18792

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !18791
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !18793, !range !7185, !invariant.load !2017, !noalias !18768
    #dbg_value(i64 %i.ad, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18705)
    #dbg_value(ptr %.val.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18698)
    #dbg_value(ptr %.val.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18700)
    #dbg_value(ptr %.val.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18702)
    #dbg_value(ptr %.val.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18704)
    #dbg_value(ptr %.val.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18696)
    #dbg_value(ptr poison, !6639, !DIExpression(), !18707)
    #dbg_value(ptr poison, !6646, !DIExpression(), !18709)
    #dbg_value(ptr %.val.i.i, !6643, !DIExpression(), !18707)
    #dbg_value(ptr %.val.i.i, !6649, !DIExpression(), !18709)
    #dbg_value(ptr %.val.i.i, !6652, !DIExpression(), !18711)
    #dbg_value(ptr %.val.i.i, !6658, !DIExpression(), !18713)
    #dbg_value(i64 %i.ad, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18707)
    #dbg_value(i64 %i.ad, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18709)
    #dbg_value(i64 %i.ad, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18711)
    #dbg_value(i64 %i.ad, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18713)
    #dbg_value(i64 %i.aa, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18707)
    #dbg_value(i64 %i.aa, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18709)
    #dbg_value(i64 %i.aa, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18711)
    #dbg_value(i64 %i.aa, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18713)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #13, !dbg !18794, !noalias !18768
  br label %.body, !dbg !18795

bb.p:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit
  ret void, !dbg !18796

.body:                                            ; preds = %bb.n, %bb.o
  store i64 0, ptr %1, align 8, !dbg !18781
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !18781
  br label %common.resume, !dbg !18797

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B16_.exit
  store i64 0, ptr %1, align 8, !dbg !18781
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18781
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !18781
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !18798
  br label %bb.p, !dbg !18799
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowB1a_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18801 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
    #dbg_value(ptr poison, !18894, !DIExpression(), !18813)
    #dbg_value(ptr poison, !18929, !DIExpression(), !18817)
    #dbg_value(ptr poison, !18917, !DIExpression(), !18818)
    #dbg_value(ptr poison, !18922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18935)
    #dbg_value(ptr poison, !18921, !DIExpression(), !18936)
    #dbg_value(ptr poison, !18927, !DIExpression(), !18937)
    #dbg_value(ptr poison, !18938, !DIExpression(), !18941)
    #dbg_value(ptr %0, !18890, !DIExpression(), !18942)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !18969 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !18969
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !18969
    #dbg_value(i1 %i.c, !18891, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !18943)
    #dbg_value(i1 %i.d, !18891, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !18943)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !18970

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !18971

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !18927, !DIExpression(), !18937)
    #dbg_value(ptr undef, !18921, !DIExpression(), !18936)
    #dbg_value(ptr undef, !18922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18935)
    #dbg_value(ptr undef, !18894, !DIExpression(), !18813)
    #dbg_value(ptr undef, !18917, !DIExpression(), !18818)
    #dbg_value(ptr poison, !18944, !DIExpression(), !18822)
    #dbg_declare(ptr poison, !18948, !DIExpression(), !18823)
    #dbg_declare(ptr poison, !18947, !DIExpression(), !18823)
    #dbg_value(ptr poison, !18952, !DIExpression(), !18826)
    #dbg_declare(ptr poison, !18955, !DIExpression(), !18827)
    #dbg_value(ptr poison, !18959, !DIExpression(DW_OP_deref, DW_OP_deref), !18830)
    #dbg_value(ptr poison, !18964, !DIExpression(), !18833)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !18972
    #dbg_value(ptr %i.e, !18966, !DIExpression(), !18836)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18973, !noalias !18968
  store i32 2, ptr %i.a, align 8, !dbg !18973, !noalias !18968
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB14_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.a)
          to label %.thread unwind label %bb.c, !dbg !18974

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !18975
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !18975
    #dbg_value(ptr undef, !18929, !DIExpression(), !18817)
    #dbg_value(ptr %i.g, !18932, !DIExpression(), !18817)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !18976 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !18977
  unreachable, !dbg !18977

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18978, !noalias !18968
    #dbg_value(ptr undef, !18922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18935)
    #dbg_value(ptr undef, !18922, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18935)
    #dbg_value(ptr poison, !7736, !DIExpression(), !18840)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !18979

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !18976 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !18976 ; 6 uses
    #dbg_value(ptr %i.j, !18922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18935)
    #dbg_value(ptr %i.k, !18922, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18935)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !7736, !DIExpression(), !18840)
  %i.l = icmp eq ptr %i.j, null, !dbg !18979
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, label %bb.f, !dbg !18979

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !7143, !DIExpression(), !18842)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !18980, !invariant.load !2017 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !18980
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !18980

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !18980

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !7147, !DIExpression(), !18844)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18845)
    #dbg_value(ptr %i.k, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18845)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18847)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18849)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18851)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18853)
    #dbg_value(ptr %i.k, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18847)
    #dbg_value(ptr %i.k, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18849)
    #dbg_value(ptr %i.k, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18851)
    #dbg_value(ptr %i.k, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18853)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !18981
  %i.o = load i64, ptr %i.n, align 8, !dbg !18981, !range !7184, !invariant.load !2017 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18854)
    #dbg_value(i64 %i.o, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18854)
  %i.p = icmp eq i64 %i.o, 0, !dbg !18982
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, label %bb.i, !dbg !18982

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !18981
  %i.r = load i64, ptr %i.q, align 8, !dbg !18983, !range !7185, !invariant.load !2017
    #dbg_value(i64 %i.r, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18854)
    #dbg_value(ptr %i.j, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18847)
    #dbg_value(ptr %i.j, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18849)
    #dbg_value(ptr %i.j, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18851)
    #dbg_value(ptr %i.j, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18853)
    #dbg_value(ptr %i.j, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18845)
    #dbg_value(ptr poison, !6639, !DIExpression(), !18856)
    #dbg_value(ptr poison, !6646, !DIExpression(), !18858)
    #dbg_value(ptr %i.j, !6643, !DIExpression(), !18856)
    #dbg_value(ptr %i.j, !6649, !DIExpression(), !18858)
    #dbg_value(ptr %i.j, !6652, !DIExpression(), !18860)
    #dbg_value(ptr %i.j, !6658, !DIExpression(), !18862)
    #dbg_value(i64 %i.r, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18856)
    #dbg_value(i64 %i.r, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18858)
    #dbg_value(i64 %i.r, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18860)
    #dbg_value(i64 %i.r, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18862)
    #dbg_value(i64 %i.o, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18856)
    #dbg_value(i64 %i.o, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18858)
    #dbg_value(i64 %i.o, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18860)
    #dbg_value(i64 %i.o, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18862)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13, !dbg !18984
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !18985

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !7147, !DIExpression(), !18864)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18865)
    #dbg_value(ptr %i.k, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18865)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18867)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18869)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18871)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18873)
    #dbg_value(ptr %i.k, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18867)
    #dbg_value(ptr %i.k, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18869)
    #dbg_value(ptr %i.k, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18871)
    #dbg_value(ptr %i.k, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18873)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !18986
  %i.u = load i64, ptr %i.t, align 8, !dbg !18986, !range !7184, !invariant.load !2017 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18874)
    #dbg_value(i64 %i.u, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18874)
  %i.v = icmp eq i64 %i.u, 0, !dbg !18987
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i, label %bb.k, !dbg !18987

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !18986
  %i.x = load i64, ptr %i.w, align 8, !dbg !18988, !range !7185, !invariant.load !2017
    #dbg_value(i64 %i.x, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18874)
    #dbg_value(ptr %i.j, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18867)
    #dbg_value(ptr %i.j, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18869)
    #dbg_value(ptr %i.j, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18871)
    #dbg_value(ptr %i.j, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18873)
    #dbg_value(ptr %i.j, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18865)
    #dbg_value(ptr poison, !6639, !DIExpression(), !18876)
    #dbg_value(ptr poison, !6646, !DIExpression(), !18878)
    #dbg_value(ptr %i.j, !6643, !DIExpression(), !18876)
    #dbg_value(ptr %i.j, !6649, !DIExpression(), !18878)
    #dbg_value(ptr %i.j, !6652, !DIExpression(), !18880)
    #dbg_value(ptr %i.j, !6658, !DIExpression(), !18882)
    #dbg_value(i64 %i.x, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18876)
    #dbg_value(i64 %i.x, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18878)
    #dbg_value(i64 %i.x, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18880)
    #dbg_value(i64 %i.x, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18882)
    #dbg_value(i64 %i.u, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18876)
    #dbg_value(i64 %i.u, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18878)
    #dbg_value(i64 %i.u, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18880)
    #dbg_value(i64 %i.u, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18882)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13, !dbg !18989
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i, !dbg !18990

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !18980

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit
    #dbg_value(ptr %0, !8376, !DIExpression(), !18884)
    #dbg_value(ptr %0, !8378, !DIExpression(), !18886)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !18991
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1a_.exit, !dbg !18992

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !8381, !DIExpression(DW_OP_deref), !18888)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB26_(ptr nonnull %0), !dbg !18993
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1a_.exit, !dbg !18994
end_hunk_5
