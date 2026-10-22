Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/bulk.bulk.93260328f3fcf1fb-cgu.02?download=true
inline.NumInlined: 454
inline.NumDeleted: 276
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore20OwnedSemaphorePermitECscDgBWNIBxoJ_4bulk:bb.a
  br i1 %i.g, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreEECscDgBWNIBxoJ_4bulk.exit2, !dbg !12408

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !6552, !DIExpression(), !12390)
  fence acquire, !dbg !12409
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #10, !dbg !12410
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreEECscDgBWNIBxoJ_4bulk.exit2, !dbg !12410

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreEECscDgBWNIBxoJ_4bulk.exit2: ; preds = %bb.d, %bb.e
  ret void, !dbg !12398

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !12398
  unreachable, !dbg !12398

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a, !dbg !12398
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core7TrailerECscDgBWNIBxoJ_4bulk(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1303 {
bb.a:
    #dbg_value(ptr %0, !6558, !DIExpression(), !12467)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12476
  %.val = load ptr, ptr %i.a, align 8, !dbg !12476, !align !6564, !noundef !2017 ; 2 uses
    #dbg_value(ptr poison, !6566, !DIExpression(), !12412)
    #dbg_value(ptr poison, !6573, !DIExpression(), !12414)
    #dbg_value(ptr poison, !6580, !DIExpression(), !12416)
  %i.b = icmp eq ptr %.val, null, !dbg !12477
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECscDgBWNIBxoJ_4bulk.exit, label %bb.b, !dbg !12477

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24, !dbg !12476
  %.val2 = load ptr, ptr %i.c, align 8, !dbg !12476
    #dbg_value(ptr poison, !6585, !DIExpression(), !12418)
    #dbg_value(ptr poison, !6590, !DIExpression(), !12420)
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !12478
  %i.e = load ptr, ptr %i.d, align 8, !dbg !12478, !nonnull !2017, !noundef !2017
  invoke void %i.e(ptr noundef %.val2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECscDgBWNIBxoJ_4bulk.exit unwind label %bb.c, !dbg !12478, !inline_history !1309

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !12476 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12468), !dbg !12476
    #dbg_value(ptr %i.g, !6594, !DIExpression(), !12424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12469), !dbg !12479
    #dbg_value(ptr %i.g, !6601, !DIExpression(), !12428)
  %i.h = load ptr, ptr %i.g, align 8, !dbg !12480, !alias.scope !12470, !noundef !2017 ; 2 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !12480
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECscDgBWNIBxoJ_4bulk.exit, label %bb.d, !dbg !12480

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.g, !6608, !DIExpression(), !12430)
    #dbg_value(ptr %i.g, !6612, !DIExpression(), !12432)
    #dbg_value(i64 1, !6614, !DIExpression(), !12434)
    #dbg_value(i8 1, !6616, !DIExpression(), !12434)
    #dbg_value(i64 1, !6618, !DIExpression(), !12436)
    #dbg_value(i8 1, !6620, !DIExpression(), !12436)
    #dbg_value(ptr %i.h, !6615, !DIExpression(), !12437)
    #dbg_value(ptr %i.h, !6619, !DIExpression(), !12436)
  %i.j = atomicrmw add ptr %i.h, i64 -1 release, align 8, !dbg !12481, !noalias !12471
  %i.k = icmp eq i64 %i.j, 1, !dbg !12482
  br i1 %i.k, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECscDgBWNIBxoJ_4bulk.exit, !dbg !12482

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !6552, !DIExpression(), !12443)
  fence acquire, !dbg !12483
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsar2VadbF9t7_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #10
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECscDgBWNIBxoJ_4bulk.exit unwind label %bb.h, !dbg !12484

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !12476 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12472), !dbg !12476
    #dbg_value(ptr %i.l, !6594, !DIExpression(), !12447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12473), !dbg !12485
    #dbg_value(ptr %i.l, !6601, !DIExpression(), !12451)
  %i.m = load ptr, ptr %i.l, align 8, !dbg !12486, !alias.scope !12474, !noundef !2017 ; 2 uses
  %i.n = icmp eq ptr %i.m, null, !dbg !12486
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECscDgBWNIBxoJ_4bulk.exit4, label %bb.f, !dbg !12486

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECscDgBWNIBxoJ_4bulk.exit
    #dbg_value(ptr %i.l, !6608, !DIExpression(), !12453)
    #dbg_value(ptr %i.l, !6612, !DIExpression(), !12455)
    #dbg_value(i64 1, !6614, !DIExpression(), !12457)
    #dbg_value(i8 1, !6616, !DIExpression(), !12457)
    #dbg_value(i64 1, !6618, !DIExpression(), !12459)
    #dbg_value(i8 1, !6620, !DIExpression(), !12459)
    #dbg_value(ptr %i.m, !6615, !DIExpression(), !12460)
    #dbg_value(ptr %i.m, !6619, !DIExpression(), !12459)
  %i.o = atomicrmw add ptr %i.m, i64 -1 release, align 8, !dbg !12487, !noalias !12475
  %i.p = icmp eq i64 %i.o, 1, !dbg !12488
  br i1 %i.p, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECscDgBWNIBxoJ_4bulk.exit4, !dbg !12488

bb.g:                                             ; preds = %bb.f
    #dbg_value(i8 2, !6552, !DIExpression(), !12466)
  fence acquire, !dbg !12489
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsar2VadbF9t7_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #10, !dbg !12490
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECscDgBWNIBxoJ_4bulk.exit4, !dbg !12490

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECscDgBWNIBxoJ_4bulk.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECscDgBWNIBxoJ_4bulk.exit, %bb.f, %bb.g
  ret void, !dbg !12476

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !12476
  unreachable, !dbg !12476

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.f, !dbg !12476
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2h_(ptr noundef nonnull %0) unnamed_addr #0 !dbg !1597 {
bb.a:
    #dbg_value(ptr %0, !7655, !DIExpression(), !12491)
    #dbg_value(ptr %0, !7657, !DIExpression(), !12493)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !12496
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !12497

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !7660, !DIExpression(), !12495)
    #dbg_value(ptr undef, !7660, !DIExpression(DW_OP_deref), !12495)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB2s_(ptr nonnull %0), !dbg !12498
  br label %bb.c, !dbg !12499

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !12500
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB2h_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12501 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !12580, !DIExpression(), !12584)
    #dbg_value(ptr %1, !12581, !DIExpression(), !12584)
    #dbg_value(ptr %2, !12582, !DIExpression(), !12584)
    #dbg_declare(ptr poison, !12585, !DIExpression(), !12596)
    #dbg_value(ptr poison, !12602, !DIExpression(), !12605)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !12632
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !12633
  br i1 %i.c, label %bb.b, label %bb.r, !dbg !12633

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !12634
    #dbg_value(ptr %0, !12600, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !12606)
    #dbg_value(ptr %0, !12592, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !12607)
    #dbg_value(ptr %0, !12609, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !12616)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !12635 ; 2 uses
    #dbg_declare(ptr poison, !12617, !DIExpression(), !12510)
    #dbg_value(ptr %i.d, !12620, !DIExpression(), !12511)
    #dbg_value(ptr %i.d, !12623, !DIExpression(), !12514)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12636, !noalias !12628
    #dbg_value(i32 2, !12626, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !12514)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !12637, !noalias !12628
  store i32 2, ptr %i.d, align 8, !dbg !12638, !noalias !12628
  %i.e = load i32, ptr %i.a, align 8, !dbg !12636, !range !7113, !noalias !12628, !noundef !2017
  %i.f = icmp eq i32 %i.e, 1, !dbg !12639
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2d_.exit, label %bb.c, !dbg !12639, !prof !7688

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.e unwind label %bb.d, !dbg !12640, !noalias !12628

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !12641, !range !7113, !noalias !12628, !noundef !2017
  %i.i = icmp eq i32 %i.h, 1, !dbg !12641
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !12641

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !12584

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEEEB2p_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #12
          to label %common.resume unwind label %bb.g, !dbg !12641, !noalias !12628

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !12642, !noalias !12628
  unreachable, !dbg !12642

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2d_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !12643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !12643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12641, !noalias !12628
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12629), !dbg !12644
    #dbg_value(ptr %1, !7689, !DIExpression(), !12520)
  %i.l = load i64, ptr %1, align 8, !dbg !12645, !range !7695, !alias.scope !12629, !noundef !2017
  %3 = icmp eq i64 %i.l, 0, !dbg !12645
  br i1 %3, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, !dbg !12645

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2d_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12645 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12630), !dbg !12645
    #dbg_value(ptr %i.m, !7254, !DIExpression(), !12524)
  %i.n = load i64, ptr %i.m, align 8, !dbg !12646, !alias.scope !12631, !noundef !2017
  %i.o = icmp eq i64 %i.n, 0, !dbg !12646
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12646 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !dbg !12646, !alias.scope !12631, !noundef !2017 ; 5 uses
  br i1 %i.o, label %bb.i, label %bb.k, !dbg !12646

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %i.p, !7261, !DIExpression(), !12526)
  %i.r = icmp eq ptr %i.q, null, !dbg !12647
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.j, !dbg !12647

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr %i.p, !7267, !DIExpression(), !12528)
  invoke void @_RNvXs4_NtCsbHiBx3jRrxb_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit unwind label %bb.s, !dbg !12648

bb.k:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !12646
  %.val1.i.i = load ptr, ptr %i.s, align 8, !dbg !12646, !alias.scope !12631 ; 6 uses
    #dbg_value(ptr poison, !7122, !DIExpression(), !12530)
    #dbg_value(ptr poison, !7129, !DIExpression(), !12532)
  %i.t = icmp eq ptr %i.q, null, !dbg !12649
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.l, !dbg !12649

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr poison, !7136, !DIExpression(), !12534)
    #dbg_value(ptr poison, !7143, !DIExpression(), !12536)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.u = load ptr, ptr %.val1.i.i, align 8, !dbg !12650, !invariant.load !2017, !noalias !12631 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null, !dbg !12650
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m, !dbg !12650

bb.m:                                             ; preds = %bb.l
  invoke void %i.u(ptr noundef nonnull %i.q)
          to label %bb.n unwind label %bb.p, !dbg !12650, !noalias !12631

bb.n:                                             ; preds = %bb.m, %bb.l
    #dbg_value(ptr poison, !7147, !DIExpression(), !12538)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12539)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12539)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12541)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12543)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12545)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12547)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12541)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12543)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12545)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12547)
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !12651
  %i.w = load i64, ptr %i.v, align 8, !dbg !12651, !range !7184, !invariant.load !2017, !noalias !12631 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12548)
    #dbg_value(i64 %i.w, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12548)
  %i.x = icmp eq i64 %i.w, 0, !dbg !12652
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.o, !dbg !12652

bb.o:                                             ; preds = %bb.n
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !12651
  %i.z = load i64, ptr %i.y, align 8, !dbg !12653, !range !7185, !invariant.load !2017, !noalias !12631
    #dbg_value(i64 %i.z, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12548)
    #dbg_value(ptr %i.q, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12541)
    #dbg_value(ptr %i.q, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12543)
    #dbg_value(ptr %i.q, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12545)
    #dbg_value(ptr %i.q, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12547)
    #dbg_value(ptr %i.q, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12539)
    #dbg_value(ptr poison, !6639, !DIExpression(), !12550)
    #dbg_value(ptr poison, !6646, !DIExpression(), !12552)
    #dbg_value(ptr %i.q, !6643, !DIExpression(), !12550)
    #dbg_value(ptr %i.q, !6649, !DIExpression(), !12552)
    #dbg_value(ptr %i.q, !6652, !DIExpression(), !12554)
    #dbg_value(ptr %i.q, !6658, !DIExpression(), !12556)
    #dbg_value(i64 %i.z, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12550)
    #dbg_value(i64 %i.z, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12552)
    #dbg_value(i64 %i.z, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12554)
    #dbg_value(i64 %i.z, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12556)
    #dbg_value(i64 %i.w, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12550)
    #dbg_value(i64 %i.w, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12552)
    #dbg_value(i64 %i.w, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12554)
    #dbg_value(i64 %i.w, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12556)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #13, !dbg !12654, !noalias !12631
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, !dbg !12655

bb.p:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr poison, !7147, !DIExpression(), !12558)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12559)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12559)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12561)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12563)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12565)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12567)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12561)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12563)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12565)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12567)
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !12656
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !12656, !range !7184, !invariant.load !2017, !noalias !12631 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12568)
    #dbg_value(i64 %i.ac, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12568)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !12657
  br i1 %i.ad, label %.body, label %bb.q, !dbg !12657

bb.q:                                             ; preds = %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !12656
  %i.af = load i64, ptr %i.ae, align 8, !dbg !12658, !range !7185, !invariant.load !2017, !noalias !12631
    #dbg_value(i64 %i.af, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12568)
    #dbg_value(ptr %i.q, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12561)
    #dbg_value(ptr %i.q, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12563)
    #dbg_value(ptr %i.q, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12565)
    #dbg_value(ptr %i.q, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12567)
    #dbg_value(ptr %i.q, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12559)
    #dbg_value(ptr poison, !6639, !DIExpression(), !12570)
    #dbg_value(ptr poison, !6646, !DIExpression(), !12572)
    #dbg_value(ptr %i.q, !6643, !DIExpression(), !12570)
    #dbg_value(ptr %i.q, !6649, !DIExpression(), !12572)
    #dbg_value(ptr %i.q, !6652, !DIExpression(), !12574)
    #dbg_value(ptr %i.q, !6658, !DIExpression(), !12576)
    #dbg_value(i64 %i.af, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12570)
    #dbg_value(i64 %i.af, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12572)
    #dbg_value(i64 %i.af, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12574)
    #dbg_value(i64 %i.af, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12576)
    #dbg_value(i64 %i.ac, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12570)
    #dbg_value(i64 %i.ac, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12572)
    #dbg_value(i64 %i.ac, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12574)
    #dbg_value(i64 %i.ac, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12576)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #13, !dbg !12659, !noalias !12631
  br label %.body, !dbg !12660

bb.r:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit
  ret void, !dbg !12661

bb.s:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !12644

.body:                                            ; preds = %bb.p, %bb.q, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.s ], [ %i.aa, %bb.q ], [ %i.aa, %bb.p ]
  store i64 0, ptr %1, align 8, !dbg !12644
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !12644
  br label %common.resume, !dbg !12662

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.o, %bb.n, %bb.k, %bb.i, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2d_.exit, %bb.j
  store i64 0, ptr %1, align 8, !dbg !12644
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12644
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !12644
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !12663
  br label %bb.r, !dbg !12664
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowB2h_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12666 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !12759, !DIExpression(), !12678)
    #dbg_value(ptr poison, !12794, !DIExpression(), !12682)
    #dbg_value(ptr poison, !12782, !DIExpression(), !12683)
    #dbg_value(ptr poison, !12787, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12800)
    #dbg_value(ptr poison, !12786, !DIExpression(), !12801)
    #dbg_value(ptr poison, !12792, !DIExpression(), !12802)
    #dbg_value(ptr poison, !12803, !DIExpression(), !12806)
    #dbg_value(ptr %0, !12755, !DIExpression(), !12807)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !12834 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !12834
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !12834
    #dbg_value(i1 %i.c, !12756, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !12808)
    #dbg_value(i1 %i.d, !12756, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !12808)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !12835

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !12836

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !12792, !DIExpression(), !12802)
    #dbg_value(ptr undef, !12786, !DIExpression(), !12801)
    #dbg_value(ptr undef, !12787, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12800)
    #dbg_value(ptr undef, !12759, !DIExpression(), !12678)
    #dbg_value(ptr undef, !12782, !DIExpression(), !12683)
    #dbg_value(ptr poison, !12809, !DIExpression(), !12687)
    #dbg_declare(ptr poison, !12813, !DIExpression(), !12688)
    #dbg_declare(ptr poison, !12812, !DIExpression(), !12688)
    #dbg_value(ptr poison, !12817, !DIExpression(), !12691)
    #dbg_declare(ptr poison, !12820, !DIExpression(), !12692)
    #dbg_value(ptr poison, !12824, !DIExpression(DW_OP_deref, DW_OP_deref), !12695)
    #dbg_value(ptr poison, !12829, !DIExpression(), !12698)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !12837
    #dbg_value(ptr %i.e, !12831, !DIExpression(), !12701)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12838, !noalias !12833
  store i32 2, ptr %i.a, align 8, !dbg !12838, !noalias !12833
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB2b_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c, !dbg !12839

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !12840
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB2h_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13663
    #dbg_value(i64 %..i, !13525, !DIExpression(), !13622)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i), !dbg !13664
  br i1 %i.ae, label %bb.o, label %bb.p, !dbg !13665

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit
    #dbg_value(ptr undef, !13623, !DIExpression(DW_OP_deref), !13626)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB2s_(ptr nonnull %0), !dbg !13666
  br label %bb.p, !dbg !13667

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, %bb.o
  ret void, !dbg !13668
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB2h_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13669 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !13705, !DIExpression(), !13707)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !13712
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !13713

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !7655, !DIExpression(), !13671)
    #dbg_value(ptr %0, !7657, !DIExpression(), !13673)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !13714
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2h_.exit, !dbg !13715

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !7660, !DIExpression(DW_OP_deref), !13675)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB2s_(ptr nonnull %0), !dbg !13716
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2h_.exit, !dbg !13717

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !13708, !DIExpression(), !13711)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !13718 ; 2 uses
    #dbg_value(ptr poison, !7838, !DIExpression(), !13681)
    #dbg_value(ptr %i.e, !7873, !DIExpression(), !13682)
    #dbg_value(ptr %i.e, !7876, !DIExpression(), !13684)
    #dbg_value(ptr %i.e, !7871, !DIExpression(), !13685)
    #dbg_value(ptr %i.e, !7867, !DIExpression(), !13686)
    #dbg_value(ptr %i.e, !7868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13687)
    #dbg_value(ptr undef, !7879, !DIExpression(), !13689)
    #dbg_value(ptr %i.e, !7882, !DIExpression(), !13690)
    #dbg_value(ptr %i.e, !7884, !DIExpression(), !13692)
    #dbg_declare(ptr poison, !7888, !DIExpression(), !13693)
    #dbg_declare(ptr poison, !7887, !DIExpression(), !13693)
    #dbg_value(ptr %i.e, !7892, !DIExpression(), !13695)
    #dbg_declare(ptr poison, !7895, !DIExpression(), !13696)
    #dbg_value(ptr poison, !7900, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13698)
    #dbg_value(ptr %i.e, !7905, !DIExpression(), !13700)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13719
  store i32 2, ptr %i.a, align 8, !dbg !13719
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB2b_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !13720

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !13721
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !13721
    #dbg_value(ptr undef, !7838, !DIExpression(), !13681)
    #dbg_value(ptr %i.g, !7862, !DIExpression(), !13681)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !13722 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !13723
  unreachable, !dbg !13723

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13724
    #dbg_value(ptr %i.e, !7868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13687)
    #dbg_value(ptr undef, !7868, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13687)
    #dbg_value(ptr poison, !7874, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13701)
    #dbg_value(ptr poison, !7907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13703)
    #dbg_value(ptr poison, !7874, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13701)
    #dbg_value(ptr poison, !7907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13703)
    #dbg_value(i64 poison, !7910, !DIExpression(), !13703)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2d_.exit, !dbg !13725

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !13722
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !13722 ; 2 uses
    #dbg_value(ptr %i.j, !7868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13687)
    #dbg_value(ptr %i.k, !7868, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13687)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !7874, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13701)
    #dbg_value(ptr %i.j, !7907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13703)
    #dbg_value(ptr %i.k, !7874, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13701)
    #dbg_value(ptr %i.k, !7907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13703)
    #dbg_value(i64 poison, !7910, !DIExpression(), !13703)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2d_.exit, !dbg !13726

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2d_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !13727
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !13727
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !13728
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !13728, !range !7818, !noundef !2017
    #dbg_value(i64 %.sroa.01.0.i, !7877, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13684)
    #dbg_value(ptr %.sroa.6.0.i, !7877, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13684)
    #dbg_value(ptr %.sroa.8.0.i, !7877, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13684)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13729
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13729
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !13729
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13729
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !13729
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !13729
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !13729
  store i32 1, ptr %i.b, align 8, !dbg !13729
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB2b_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !13730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13731
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB2h_(ptr noundef nonnull %0), !dbg !13732
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2h_.exit, !dbg !13732

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2h_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2d_.exit
  ret void, !dbg !13733
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_(ptr noundef nonnull %0) unnamed_addr #0 !dbg !1659 {
bb.a:
    #dbg_value(ptr %0, !7940, !DIExpression(), !13734)
    #dbg_value(ptr %0, !7942, !DIExpression(), !13736)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !13739
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !13740

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !7945, !DIExpression(), !13738)
    #dbg_value(ptr undef, !7945, !DIExpression(DW_OP_deref), !13738)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB2q_(ptr nonnull %0), !dbg !13741
  br label %bb.c, !dbg !13742

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !13743
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB2f_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13744 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !13819, !DIExpression(), !13823)
    #dbg_value(ptr %1, !13820, !DIExpression(), !13823)
    #dbg_value(ptr %2, !13821, !DIExpression(), !13823)
    #dbg_declare(ptr poison, !13824, !DIExpression(), !13835)
    #dbg_value(ptr poison, !13841, !DIExpression(), !13844)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !13871
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !13872
  br i1 %i.c, label %bb.b, label %bb.o, !dbg !13872

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !13873
    #dbg_value(ptr %0, !13839, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !13845)
    #dbg_value(ptr %0, !13831, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !13846)
    #dbg_value(ptr %0, !13848, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !13855)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !13874 ; 2 uses
    #dbg_declare(ptr poison, !13856, !DIExpression(), !13753)
    #dbg_value(ptr %i.d, !13859, !DIExpression(), !13754)
    #dbg_value(ptr %i.d, !13862, !DIExpression(), !13757)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13875, !noalias !13867
    #dbg_value(i32 2, !13865, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13757)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !13876, !noalias !13867
  store i32 2, ptr %i.d, align 8, !dbg !13877, !noalias !13867
  %i.e = load i32, ptr %i.a, align 8, !dbg !13875, !range !7113, !noalias !13867, !noundef !2017
  %i.f = icmp eq i32 %i.e, 1, !dbg !13878
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2b_.exit, label %bb.c, !dbg !13878, !prof !7688

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.d unwind label %bb.e, !dbg !13879, !noalias !13867

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op, !dbg !13823

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEEEB2n_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #12
          to label %common.resume unwind label %bb.f, !dbg !13880, !noalias !13867

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !13881, !noalias !13867
  unreachable, !dbg !13881

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2b_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !13882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !13882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13880, !noalias !13867
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13868), !dbg !13883
    #dbg_value(ptr %1, !7963, !DIExpression(), !13763)
  %i.j = load i64, ptr %1, align 8, !dbg !13884, !range !7695, !alias.scope !13868, !noundef !2017
  %3 = icmp eq i64 %i.j, 0, !dbg !13884
  br i1 %3, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, !dbg !13884

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2b_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13884 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13869), !dbg !13884
    #dbg_value(ptr %i.k, !7115, !DIExpression(), !13767)
  %i.l = load i64, ptr %i.k, align 8, !dbg !13885, !alias.scope !13870, !noundef !2017
  %i.m = icmp eq i64 %i.l, 0, !dbg !13885
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.h, !dbg !13885

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13885
  %.val.i.i = load ptr, ptr %i.n, align 8, !dbg !13885, !alias.scope !13870, !noundef !2017 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !13885
  %.val1.i.i = load ptr, ptr %i.o, align 8, !dbg !13885, !alias.scope !13870 ; 6 uses
    #dbg_value(ptr poison, !7122, !DIExpression(), !13769)
    #dbg_value(ptr poison, !7129, !DIExpression(), !13771)
  %i.p = icmp eq ptr %.val.i.i, null, !dbg !13886
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.i, !dbg !13886

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr poison, !7136, !DIExpression(), !13773)
    #dbg_value(ptr poison, !7143, !DIExpression(), !13775)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !dbg !13887, !invariant.load !2017, !noalias !13870 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null, !dbg !13887
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !13887

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !dbg !13887, !noalias !13870

bb.k:                                             ; preds = %bb.j, %bb.i
    #dbg_value(ptr poison, !7147, !DIExpression(), !13777)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13778)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13778)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13780)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13782)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13784)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13786)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13780)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13782)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13784)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13786)
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !13888
  %i.s = load i64, ptr %i.r, align 8, !dbg !13888, !range !7184, !invariant.load !2017, !noalias !13870 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13787)
    #dbg_value(i64 %i.s, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13787)
  %i.t = icmp eq i64 %i.s, 0, !dbg !13889
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.l, !dbg !13889

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !13888
  %i.v = load i64, ptr %i.u, align 8, !dbg !13890, !range !7185, !invariant.load !2017, !noalias !13870
    #dbg_value(i64 %i.v, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13787)
    #dbg_value(ptr %.val.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13780)
    #dbg_value(ptr %.val.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13782)
    #dbg_value(ptr %.val.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13784)
    #dbg_value(ptr %.val.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13786)
    #dbg_value(ptr %.val.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13778)
    #dbg_value(ptr poison, !6639, !DIExpression(), !13789)
    #dbg_value(ptr poison, !6646, !DIExpression(), !13791)
    #dbg_value(ptr %.val.i.i, !6643, !DIExpression(), !13789)
    #dbg_value(ptr %.val.i.i, !6649, !DIExpression(), !13791)
    #dbg_value(ptr %.val.i.i, !6652, !DIExpression(), !13793)
    #dbg_value(ptr %.val.i.i, !6658, !DIExpression(), !13795)
    #dbg_value(i64 %i.v, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13789)
    #dbg_value(i64 %i.v, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13791)
    #dbg_value(i64 %i.v, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13793)
    #dbg_value(i64 %i.v, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13795)
    #dbg_value(i64 %i.s, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13789)
    #dbg_value(i64 %i.s, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13791)
    #dbg_value(i64 %i.s, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13793)
    #dbg_value(i64 %i.s, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13795)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13, !dbg !13891, !noalias !13870
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, !dbg !13892

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !7147, !DIExpression(), !13797)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13798)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13798)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13800)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13802)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13804)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13806)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13800)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13802)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13804)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13806)
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !13893
  %i.y = load i64, ptr %i.x, align 8, !dbg !13893, !range !7184, !invariant.load !2017, !noalias !13870 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13807)
    #dbg_value(i64 %i.y, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13807)
  %i.z = icmp eq i64 %i.y, 0, !dbg !13894
  br i1 %i.z, label %.body, label %bb.n, !dbg !13894

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !13893
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !13895, !range !7185, !invariant.load !2017, !noalias !13870
    #dbg_value(i64 %i.ab, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13807)
    #dbg_value(ptr %.val.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13800)
    #dbg_value(ptr %.val.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13802)
    #dbg_value(ptr %.val.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13804)
    #dbg_value(ptr %.val.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13806)
    #dbg_value(ptr %.val.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13798)
    #dbg_value(ptr poison, !6639, !DIExpression(), !13809)
    #dbg_value(ptr poison, !6646, !DIExpression(), !13811)
    #dbg_value(ptr %.val.i.i, !6643, !DIExpression(), !13809)
    #dbg_value(ptr %.val.i.i, !6649, !DIExpression(), !13811)
    #dbg_value(ptr %.val.i.i, !6652, !DIExpression(), !13813)
    #dbg_value(ptr %.val.i.i, !6658, !DIExpression(), !13815)
    #dbg_value(i64 %i.ab, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13809)
    #dbg_value(i64 %i.ab, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13811)
    #dbg_value(i64 %i.ab, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13813)
    #dbg_value(i64 %i.ab, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13815)
    #dbg_value(i64 %i.y, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13809)
    #dbg_value(i64 %i.y, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13811)
    #dbg_value(i64 %i.y, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13813)
    #dbg_value(i64 %i.y, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13815)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13, !dbg !13896, !noalias !13870
  br label %.body, !dbg !13897

bb.o:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit
  ret void, !dbg !13898

.body:                                            ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !13883
  br label %common.resume, !dbg !13899

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2b_.exit
  store i64 0, ptr %1, align 8, !dbg !13883
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !13883
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !13900
  br label %bb.o, !dbg !13901
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowB2f_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13903 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !13996, !DIExpression(), !13915)
    #dbg_value(ptr poison, !14031, !DIExpression(), !13919)
    #dbg_value(ptr poison, !14019, !DIExpression(), !13920)
    #dbg_value(ptr poison, !14024, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14037)
    #dbg_value(ptr poison, !14023, !DIExpression(), !14038)
    #dbg_value(ptr poison, !14029, !DIExpression(), !14039)
    #dbg_value(ptr poison, !14040, !DIExpression(), !14043)
    #dbg_value(ptr %0, !13992, !DIExpression(), !14044)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !14071 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !14071
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !14071
    #dbg_value(i1 %i.c, !13993, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !14045)
    #dbg_value(i1 %i.d, !13993, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !14045)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !14072

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !14073

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !14029, !DIExpression(), !14039)
    #dbg_value(ptr undef, !14023, !DIExpression(), !14038)
    #dbg_value(ptr undef, !14024, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14037)
    #dbg_value(ptr undef, !13996, !DIExpression(), !13915)
    #dbg_value(ptr undef, !14019, !DIExpression(), !13920)
    #dbg_value(ptr poison, !14046, !DIExpression(), !13924)
    #dbg_declare(ptr poison, !14050, !DIExpression(), !13925)
    #dbg_declare(ptr poison, !14049, !DIExpression(), !13925)
    #dbg_value(ptr poison, !14054, !DIExpression(), !13928)
    #dbg_declare(ptr poison, !14057, !DIExpression(), !13929)
    #dbg_value(ptr poison, !14061, !DIExpression(DW_OP_deref, DW_OP_deref), !13932)
    #dbg_value(ptr poison, !14066, !DIExpression(), !13935)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14074
    #dbg_value(ptr %i.e, !14068, !DIExpression(), !13938)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14075, !noalias !14070
  store i32 2, ptr %i.a, align 8, !dbg !14075, !noalias !14070
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB29_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c, !dbg !14076

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !14077
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !14077
    #dbg_value(ptr undef, !14031, !DIExpression(), !13919)
    #dbg_value(ptr %i.g, !14034, !DIExpression(), !13919)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !14078 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !14079
  unreachable, !dbg !14079

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14080, !noalias !14070
    #dbg_value(ptr undef, !14024, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14037)
    #dbg_value(ptr undef, !14024, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14037)
    #dbg_value(ptr poison, !7736, !DIExpression(), !13942)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !14081

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !14078 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !14078 ; 6 uses
    #dbg_value(ptr %i.j, !14024, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14037)
    #dbg_value(ptr %i.k, !14024, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14037)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !7736, !DIExpression(), !13942)
  %i.l = icmp eq ptr %i.j, null, !dbg !14081
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, label %bb.f, !dbg !14081

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !7143, !DIExpression(), !13944)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !14082, !invariant.load !2017 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !14082
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !14082

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !14082

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !7147, !DIExpression(), !13946)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13947)
    #dbg_value(ptr %i.k, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13947)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13949)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13951)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13953)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13955)
    #dbg_value(ptr %i.k, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13949)
    #dbg_value(ptr %i.k, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13951)
    #dbg_value(ptr %i.k, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13953)
    #dbg_value(ptr %i.k, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13955)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !14083
  %i.o = load i64, ptr %i.n, align 8, !dbg !14083, !range !7184, !invariant.load !2017 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13956)
    #dbg_value(i64 %i.o, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13956)
  %i.p = icmp eq i64 %i.o, 0, !dbg !14084
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, label %bb.i, !dbg !14084

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !14083
  %i.r = load i64, ptr %i.q, align 8, !dbg !14085, !range !7185, !invariant.load !2017
    #dbg_value(i64 %i.r, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13956)
    #dbg_value(ptr %i.j, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13949)
    #dbg_value(ptr %i.j, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13951)
    #dbg_value(ptr %i.j, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13953)
    #dbg_value(ptr %i.j, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13955)
    #dbg_value(ptr %i.j, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13947)
    #dbg_value(ptr poison, !6639, !DIExpression(), !13958)
    #dbg_value(ptr poison, !6646, !DIExpression(), !13960)
    #dbg_value(ptr %i.j, !6643, !DIExpression(), !13958)
    #dbg_value(ptr %i.j, !6649, !DIExpression(), !13960)
    #dbg_value(ptr %i.j, !6652, !DIExpression(), !13962)
    #dbg_value(ptr %i.j, !6658, !DIExpression(), !13964)
    #dbg_value(i64 %i.r, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13958)
    #dbg_value(i64 %i.r, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13960)
    #dbg_value(i64 %i.r, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13962)
    #dbg_value(i64 %i.r, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13964)
    #dbg_value(i64 %i.o, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13958)
    #dbg_value(i64 %i.o, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13960)
    #dbg_value(i64 %i.o, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13962)
    #dbg_value(i64 %i.o, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13964)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13, !dbg !14086
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !14087

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !7147, !DIExpression(), !13966)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13967)
    #dbg_value(ptr %i.k, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13967)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13969)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13971)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13973)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13975)
    #dbg_value(ptr %i.k, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13969)
    #dbg_value(ptr %i.k, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13971)
    #dbg_value(ptr %i.k, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13973)
    #dbg_value(ptr %i.k, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13975)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !14088
  %i.u = load i64, ptr %i.t, align 8, !dbg !14088, !range !7184, !invariant.load !2017 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13976)
    #dbg_value(i64 %i.u, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13976)
  %i.v = icmp eq i64 %i.u, 0, !dbg !14089
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i, label %bb.k, !dbg !14089

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !14088
  %i.x = load i64, ptr %i.w, align 8, !dbg !14090, !range !7185, !invariant.load !2017
    #dbg_value(i64 %i.x, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13976)
    #dbg_value(ptr %i.j, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13969)
    #dbg_value(ptr %i.j, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13971)
    #dbg_value(ptr %i.j, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13973)
    #dbg_value(ptr %i.j, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13975)
    #dbg_value(ptr %i.j, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13967)
    #dbg_value(ptr poison, !6639, !DIExpression(), !13978)
    #dbg_value(ptr poison, !6646, !DIExpression(), !13980)
    #dbg_value(ptr %i.j, !6643, !DIExpression(), !13978)
    #dbg_value(ptr %i.j, !6649, !DIExpression(), !13980)
    #dbg_value(ptr %i.j, !6652, !DIExpression(), !13982)
    #dbg_value(ptr %i.j, !6658, !DIExpression(), !13984)
    #dbg_value(i64 %i.x, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13978)
    #dbg_value(i64 %i.x, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13980)
    #dbg_value(i64 %i.x, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13982)
    #dbg_value(i64 %i.x, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13984)
    #dbg_value(i64 %i.u, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13978)
    #dbg_value(i64 %i.u, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13980)
    #dbg_value(i64 %i.u, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13982)
    #dbg_value(i64 %i.u, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13984)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13, !dbg !14091
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i, !dbg !14092

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !14082

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit
    #dbg_value(ptr %0, !7940, !DIExpression(), !13986)
    #dbg_value(ptr %0, !7942, !DIExpression(), !13988)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !14093
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit, !dbg !14094

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !7945, !DIExpression(DW_OP_deref), !13990)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB2q_(ptr nonnull %0), !dbg !14095
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit, !dbg !14096
end_hunk_1
begin_hunk_2_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB2f_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14895
    #dbg_value(i64 %..i, !14757, !DIExpression(), !14854)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i), !dbg !14896
  br i1 %i.ae, label %bb.o, label %bb.p, !dbg !14897

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit
    #dbg_value(ptr undef, !14855, !DIExpression(DW_OP_deref), !14858)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB2q_(ptr nonnull %0), !dbg !14898
  br label %bb.p, !dbg !14899

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, %bb.o
  ret void, !dbg !14900
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB2f_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14901 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !14937, !DIExpression(), !14939)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !14944
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !14945

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !7940, !DIExpression(), !14903)
    #dbg_value(ptr %0, !7942, !DIExpression(), !14905)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !14946
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit, !dbg !14947

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !7945, !DIExpression(DW_OP_deref), !14907)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB2q_(ptr nonnull %0), !dbg !14948
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit, !dbg !14949

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !14940, !DIExpression(), !14943)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14950 ; 2 uses
    #dbg_value(ptr poison, !8000, !DIExpression(), !14913)
    #dbg_value(ptr %i.e, !8034, !DIExpression(), !14914)
    #dbg_value(ptr %i.e, !8037, !DIExpression(), !14916)
    #dbg_value(ptr %i.e, !8032, !DIExpression(), !14917)
    #dbg_value(ptr %i.e, !8028, !DIExpression(), !14918)
    #dbg_value(ptr %i.e, !8029, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14919)
    #dbg_value(ptr undef, !8040, !DIExpression(), !14921)
    #dbg_value(ptr %i.e, !8043, !DIExpression(), !14922)
    #dbg_value(ptr %i.e, !8045, !DIExpression(), !14924)
    #dbg_declare(ptr poison, !8049, !DIExpression(), !14925)
    #dbg_declare(ptr poison, !8048, !DIExpression(), !14925)
    #dbg_value(ptr %i.e, !8053, !DIExpression(), !14927)
    #dbg_declare(ptr poison, !8056, !DIExpression(), !14928)
    #dbg_value(ptr poison, !8060, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !14930)
    #dbg_value(ptr %i.e, !8065, !DIExpression(), !14932)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14951
  store i32 2, ptr %i.a, align 8, !dbg !14951
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB29_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !14952

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !14953
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !14953
    #dbg_value(ptr undef, !8000, !DIExpression(), !14913)
    #dbg_value(ptr %i.g, !8023, !DIExpression(), !14913)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !14954 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !14955
  unreachable, !dbg !14955

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14956
    #dbg_value(ptr %i.e, !8029, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14919)
    #dbg_value(ptr undef, !8029, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14919)
    #dbg_value(ptr poison, !8035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14933)
    #dbg_value(ptr poison, !8067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14935)
    #dbg_value(ptr poison, !8035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14933)
    #dbg_value(ptr poison, !8067, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14935)
    #dbg_value(i64 poison, !8068, !DIExpression(), !14935)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2b_.exit, !dbg !14957

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !14954
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !14954 ; 2 uses
    #dbg_value(ptr %i.j, !8029, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14919)
    #dbg_value(ptr %i.k, !8029, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14919)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !8035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14933)
    #dbg_value(ptr %i.j, !8067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14935)
    #dbg_value(ptr %i.k, !8035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14933)
    #dbg_value(ptr %i.k, !8067, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14935)
    #dbg_value(i64 poison, !8068, !DIExpression(), !14935)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2b_.exit, !dbg !14958

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2b_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !14959
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !14959
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !14960
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !14960, !range !7818, !noundef !2017
    #dbg_value(i64 %.sroa.01.0.i, !8038, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14916)
    #dbg_value(ptr %.sroa.6.0.i, !8038, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14916)
    #dbg_value(ptr %.sroa.8.0.i, !8038, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14916)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14961
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14961
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !14961
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !14961
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !14961
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !14961
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !14961
  store i32 1, ptr %i.b, align 8, !dbg !14961
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB29_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !14962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14963
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB2f_(ptr noundef nonnull %0), !dbg !14964
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit, !dbg !14964

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6client00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2b_.exit
  ret void, !dbg !14965
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_(ptr noundef nonnull %0) unnamed_addr #0 !dbg !1695 {
bb.a:
    #dbg_value(ptr %0, !8076, !DIExpression(), !14966)
    #dbg_value(ptr %0, !8078, !DIExpression(), !14968)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !14971
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !14972

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !8081, !DIExpression(), !14970)
    #dbg_value(ptr undef, !8081, !DIExpression(DW_OP_deref), !14970)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB2q_(ptr nonnull %0), !dbg !14973
  br label %bb.c, !dbg !14974

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !14975
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB2f_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14976 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !15051, !DIExpression(), !15055)
    #dbg_value(ptr %1, !15052, !DIExpression(), !15055)
    #dbg_value(ptr %2, !15053, !DIExpression(), !15055)
    #dbg_declare(ptr poison, !15056, !DIExpression(), !15067)
    #dbg_value(ptr poison, !15073, !DIExpression(), !15076)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !15103
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !15104
  br i1 %i.c, label %bb.b, label %bb.o, !dbg !15104

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !15105
    #dbg_value(ptr %0, !15071, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !15077)
    #dbg_value(ptr %0, !15063, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !15078)
    #dbg_value(ptr %0, !15080, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !15087)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !15106 ; 2 uses
    #dbg_declare(ptr poison, !15088, !DIExpression(), !14985)
    #dbg_value(ptr %i.d, !15091, !DIExpression(), !14986)
    #dbg_value(ptr %i.d, !15094, !DIExpression(), !14989)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15107, !noalias !15099
    #dbg_value(i32 2, !15097, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14989)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !15108, !noalias !15099
  store i32 2, ptr %i.d, align 8, !dbg !15109, !noalias !15099
  %i.e = load i32, ptr %i.a, align 8, !dbg !15107, !range !7113, !noalias !15099, !noundef !2017
  %i.f = icmp eq i32 %i.e, 1, !dbg !15110
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2b_.exit, label %bb.c, !dbg !15110, !prof !7688

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.d unwind label %bb.e, !dbg !15111, !noalias !15099

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op, !dbg !15055

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEEEB2n_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #12
          to label %common.resume unwind label %bb.f, !dbg !15112, !noalias !15099

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !15113, !noalias !15099
  unreachable, !dbg !15113

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2b_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !15114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !15114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15112, !noalias !15099
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15100), !dbg !15115
    #dbg_value(ptr %1, !7963, !DIExpression(), !14995)
  %i.j = load i64, ptr %1, align 8, !dbg !15116, !range !7695, !alias.scope !15100, !noundef !2017
  %3 = icmp eq i64 %i.j, 0, !dbg !15116
  br i1 %3, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, !dbg !15116

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2b_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15116 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15101), !dbg !15116
    #dbg_value(ptr %i.k, !7115, !DIExpression(), !14999)
  %i.l = load i64, ptr %i.k, align 8, !dbg !15117, !alias.scope !15102, !noundef !2017
  %i.m = icmp eq i64 %i.l, 0, !dbg !15117
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.h, !dbg !15117

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15117
  %.val.i.i = load ptr, ptr %i.n, align 8, !dbg !15117, !alias.scope !15102, !noundef !2017 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !15117
  %.val1.i.i = load ptr, ptr %i.o, align 8, !dbg !15117, !alias.scope !15102 ; 6 uses
    #dbg_value(ptr poison, !7122, !DIExpression(), !15001)
    #dbg_value(ptr poison, !7129, !DIExpression(), !15003)
  %i.p = icmp eq ptr %.val.i.i, null, !dbg !15118
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.i, !dbg !15118

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr poison, !7136, !DIExpression(), !15005)
    #dbg_value(ptr poison, !7143, !DIExpression(), !15007)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !dbg !15119, !invariant.load !2017, !noalias !15102 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null, !dbg !15119
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !15119

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !dbg !15119, !noalias !15102

bb.k:                                             ; preds = %bb.j, %bb.i
    #dbg_value(ptr poison, !7147, !DIExpression(), !15009)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15010)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15010)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15012)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15014)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15016)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15018)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15012)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15014)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15016)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15018)
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !15120
  %i.s = load i64, ptr %i.r, align 8, !dbg !15120, !range !7184, !invariant.load !2017, !noalias !15102 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15019)
    #dbg_value(i64 %i.s, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15019)
  %i.t = icmp eq i64 %i.s, 0, !dbg !15121
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.l, !dbg !15121

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !15120
  %i.v = load i64, ptr %i.u, align 8, !dbg !15122, !range !7185, !invariant.load !2017, !noalias !15102
    #dbg_value(i64 %i.v, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15019)
    #dbg_value(ptr %.val.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15012)
    #dbg_value(ptr %.val.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15014)
    #dbg_value(ptr %.val.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15016)
    #dbg_value(ptr %.val.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15018)
    #dbg_value(ptr %.val.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15010)
    #dbg_value(ptr poison, !6639, !DIExpression(), !15021)
    #dbg_value(ptr poison, !6646, !DIExpression(), !15023)
    #dbg_value(ptr %.val.i.i, !6643, !DIExpression(), !15021)
    #dbg_value(ptr %.val.i.i, !6649, !DIExpression(), !15023)
    #dbg_value(ptr %.val.i.i, !6652, !DIExpression(), !15025)
    #dbg_value(ptr %.val.i.i, !6658, !DIExpression(), !15027)
    #dbg_value(i64 %i.v, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15021)
    #dbg_value(i64 %i.v, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15023)
    #dbg_value(i64 %i.v, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15025)
    #dbg_value(i64 %i.v, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15027)
    #dbg_value(i64 %i.s, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15021)
    #dbg_value(i64 %i.s, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15023)
    #dbg_value(i64 %i.s, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15025)
    #dbg_value(i64 %i.s, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15027)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #13, !dbg !15123, !noalias !15102
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, !dbg !15124

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !7147, !DIExpression(), !15029)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15030)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15030)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15032)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15034)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15036)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15038)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15032)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15034)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15036)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15038)
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !15125
  %i.y = load i64, ptr %i.x, align 8, !dbg !15125, !range !7184, !invariant.load !2017, !noalias !15102 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15039)
    #dbg_value(i64 %i.y, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15039)
  %i.z = icmp eq i64 %i.y, 0, !dbg !15126
  br i1 %i.z, label %.body, label %bb.n, !dbg !15126

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !15125
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !15127, !range !7185, !invariant.load !2017, !noalias !15102
    #dbg_value(i64 %i.ab, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15039)
    #dbg_value(ptr %.val.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15032)
    #dbg_value(ptr %.val.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15034)
    #dbg_value(ptr %.val.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15036)
    #dbg_value(ptr %.val.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15038)
    #dbg_value(ptr %.val.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15030)
    #dbg_value(ptr poison, !6639, !DIExpression(), !15041)
    #dbg_value(ptr poison, !6646, !DIExpression(), !15043)
    #dbg_value(ptr %.val.i.i, !6643, !DIExpression(), !15041)
    #dbg_value(ptr %.val.i.i, !6649, !DIExpression(), !15043)
    #dbg_value(ptr %.val.i.i, !6652, !DIExpression(), !15045)
    #dbg_value(ptr %.val.i.i, !6658, !DIExpression(), !15047)
    #dbg_value(i64 %i.ab, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15041)
    #dbg_value(i64 %i.ab, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15043)
    #dbg_value(i64 %i.ab, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15045)
    #dbg_value(i64 %i.ab, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15047)
    #dbg_value(i64 %i.y, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15041)
    #dbg_value(i64 %i.y, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15043)
    #dbg_value(i64 %i.y, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15045)
    #dbg_value(i64 %i.y, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15047)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #13, !dbg !15128, !noalias !15102
  br label %.body, !dbg !15129

bb.o:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit
  ret void, !dbg !15130

.body:                                            ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !15115
  br label %common.resume, !dbg !15131

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B2b_.exit
  store i64 0, ptr %1, align 8, !dbg !15115
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !15115
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !15132
  br label %bb.o, !dbg !15133
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowB2f_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15135 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !15228, !DIExpression(), !15147)
    #dbg_value(ptr poison, !15263, !DIExpression(), !15151)
    #dbg_value(ptr poison, !15251, !DIExpression(), !15152)
    #dbg_value(ptr poison, !15256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15269)
    #dbg_value(ptr poison, !15255, !DIExpression(), !15270)
    #dbg_value(ptr poison, !15261, !DIExpression(), !15271)
    #dbg_value(ptr poison, !15272, !DIExpression(), !15275)
    #dbg_value(ptr %0, !15224, !DIExpression(), !15276)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !15303 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !15303
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !15303
    #dbg_value(i1 %i.c, !15225, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !15277)
    #dbg_value(i1 %i.d, !15225, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !15277)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !15304

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !15305

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !15261, !DIExpression(), !15271)
    #dbg_value(ptr undef, !15255, !DIExpression(), !15270)
    #dbg_value(ptr undef, !15256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15269)
    #dbg_value(ptr undef, !15228, !DIExpression(), !15147)
    #dbg_value(ptr undef, !15251, !DIExpression(), !15152)
    #dbg_value(ptr poison, !15278, !DIExpression(), !15156)
    #dbg_declare(ptr poison, !15282, !DIExpression(), !15157)
    #dbg_declare(ptr poison, !15281, !DIExpression(), !15157)
    #dbg_value(ptr poison, !15286, !DIExpression(), !15160)
    #dbg_declare(ptr poison, !15289, !DIExpression(), !15161)
    #dbg_value(ptr poison, !15293, !DIExpression(DW_OP_deref, DW_OP_deref), !15164)
    #dbg_value(ptr poison, !15298, !DIExpression(), !15167)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !15306
    #dbg_value(ptr %i.e, !15300, !DIExpression(), !15170)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15307, !noalias !15302
  store i32 2, ptr %i.a, align 8, !dbg !15307, !noalias !15302
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB29_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c, !dbg !15308

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !15309
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !15309
    #dbg_value(ptr undef, !15263, !DIExpression(), !15151)
    #dbg_value(ptr %i.g, !15266, !DIExpression(), !15151)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !15310 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !15311
  unreachable, !dbg !15311

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15312, !noalias !15302
    #dbg_value(ptr undef, !15256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15269)
    #dbg_value(ptr undef, !15256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15269)
    #dbg_value(ptr poison, !7736, !DIExpression(), !15174)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !15313

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !15310 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !15310 ; 6 uses
    #dbg_value(ptr %i.j, !15256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15269)
    #dbg_value(ptr %i.k, !15256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15269)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !7736, !DIExpression(), !15174)
  %i.l = icmp eq ptr %i.j, null, !dbg !15313
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, label %bb.f, !dbg !15313

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !7143, !DIExpression(), !15176)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !15314, !invariant.load !2017 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !15314
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !15314

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !15314

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !7147, !DIExpression(), !15178)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15179)
    #dbg_value(ptr %i.k, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15179)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15181)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15183)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15185)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15187)
    #dbg_value(ptr %i.k, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15181)
    #dbg_value(ptr %i.k, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15183)
    #dbg_value(ptr %i.k, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15185)
    #dbg_value(ptr %i.k, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15187)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !15315
  %i.o = load i64, ptr %i.n, align 8, !dbg !15315, !range !7184, !invariant.load !2017 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15188)
    #dbg_value(i64 %i.o, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15188)
  %i.p = icmp eq i64 %i.o, 0, !dbg !15316
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, label %bb.i, !dbg !15316

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !15315
  %i.r = load i64, ptr %i.q, align 8, !dbg !15317, !range !7185, !invariant.load !2017
    #dbg_value(i64 %i.r, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15188)
    #dbg_value(ptr %i.j, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15181)
    #dbg_value(ptr %i.j, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15183)
    #dbg_value(ptr %i.j, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15185)
    #dbg_value(ptr %i.j, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15187)
    #dbg_value(ptr %i.j, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15179)
    #dbg_value(ptr poison, !6639, !DIExpression(), !15190)
    #dbg_value(ptr poison, !6646, !DIExpression(), !15192)
    #dbg_value(ptr %i.j, !6643, !DIExpression(), !15190)
    #dbg_value(ptr %i.j, !6649, !DIExpression(), !15192)
    #dbg_value(ptr %i.j, !6652, !DIExpression(), !15194)
    #dbg_value(ptr %i.j, !6658, !DIExpression(), !15196)
    #dbg_value(i64 %i.r, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15190)
    #dbg_value(i64 %i.r, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15192)
    #dbg_value(i64 %i.r, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15194)
    #dbg_value(i64 %i.r, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15196)
    #dbg_value(i64 %i.o, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15190)
    #dbg_value(i64 %i.o, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15192)
    #dbg_value(i64 %i.o, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15194)
    #dbg_value(i64 %i.o, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15196)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13, !dbg !15318
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !15319

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !7147, !DIExpression(), !15198)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15199)
    #dbg_value(ptr %i.k, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15199)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15201)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15203)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15205)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15207)
    #dbg_value(ptr %i.k, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15201)
    #dbg_value(ptr %i.k, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15203)
    #dbg_value(ptr %i.k, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15205)
    #dbg_value(ptr %i.k, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15207)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !15320
  %i.u = load i64, ptr %i.t, align 8, !dbg !15320, !range !7184, !invariant.load !2017 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15208)
    #dbg_value(i64 %i.u, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15208)
  %i.v = icmp eq i64 %i.u, 0, !dbg !15321
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i, label %bb.k, !dbg !15321

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !15320
  %i.x = load i64, ptr %i.w, align 8, !dbg !15322, !range !7185, !invariant.load !2017
    #dbg_value(i64 %i.x, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15208)
    #dbg_value(ptr %i.j, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15201)
    #dbg_value(ptr %i.j, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15203)
    #dbg_value(ptr %i.j, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15205)
    #dbg_value(ptr %i.j, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15207)
    #dbg_value(ptr %i.j, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15199)
    #dbg_value(ptr poison, !6639, !DIExpression(), !15210)
    #dbg_value(ptr poison, !6646, !DIExpression(), !15212)
    #dbg_value(ptr %i.j, !6643, !DIExpression(), !15210)
    #dbg_value(ptr %i.j, !6649, !DIExpression(), !15212)
    #dbg_value(ptr %i.j, !6652, !DIExpression(), !15214)
    #dbg_value(ptr %i.j, !6658, !DIExpression(), !15216)
    #dbg_value(i64 %i.x, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15210)
    #dbg_value(i64 %i.x, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15212)
    #dbg_value(i64 %i.x, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15214)
    #dbg_value(i64 %i.x, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15216)
    #dbg_value(i64 %i.u, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15210)
    #dbg_value(i64 %i.u, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15212)
    #dbg_value(i64 %i.u, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15214)
    #dbg_value(i64 %i.u, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15216)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13, !dbg !15323
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i, !dbg !15324

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !15314

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit
    #dbg_value(ptr %0, !8076, !DIExpression(), !15218)
    #dbg_value(ptr %0, !8078, !DIExpression(), !15220)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !15325
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit, !dbg !15326

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !8081, !DIExpression(DW_OP_deref), !15222)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB2q_(ptr nonnull %0), !dbg !15327
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit, !dbg !15328
end_hunk_2
begin_hunk_3_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB2f_:bb.a
bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit
    #dbg_value(ptr undef, !16087, !DIExpression(DW_OP_deref), !16090)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB2q_(ptr nonnull %0), !dbg !16130
  br label %bb.p, !dbg !16131

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, %bb.o
  ret void, !dbg !16132
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB2f_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16133 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !16169, !DIExpression(), !16171)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !16176
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !16177

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !8076, !DIExpression(), !16135)
    #dbg_value(ptr %0, !8078, !DIExpression(), !16137)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !16178
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit, !dbg !16179

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !8081, !DIExpression(DW_OP_deref), !16139)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB2q_(ptr nonnull %0), !dbg !16180
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit, !dbg !16181

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !16172, !DIExpression(), !16175)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16182 ; 2 uses
    #dbg_value(ptr poison, !8100, !DIExpression(), !16145)
    #dbg_value(ptr %i.e, !8134, !DIExpression(), !16146)
    #dbg_value(ptr %i.e, !8137, !DIExpression(), !16148)
    #dbg_value(ptr %i.e, !8132, !DIExpression(), !16149)
    #dbg_value(ptr %i.e, !8128, !DIExpression(), !16150)
    #dbg_value(ptr %i.e, !8129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16151)
    #dbg_value(ptr undef, !8140, !DIExpression(), !16153)
    #dbg_value(ptr %i.e, !8143, !DIExpression(), !16154)
    #dbg_value(ptr %i.e, !8145, !DIExpression(), !16156)
    #dbg_declare(ptr poison, !8149, !DIExpression(), !16157)
    #dbg_declare(ptr poison, !8148, !DIExpression(), !16157)
    #dbg_value(ptr %i.e, !8153, !DIExpression(), !16159)
    #dbg_declare(ptr poison, !8156, !DIExpression(), !16160)
    #dbg_value(ptr poison, !8160, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !16162)
    #dbg_value(ptr %i.e, !8165, !DIExpression(), !16164)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16183
  store i32 2, ptr %i.a, align 8, !dbg !16183
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB29_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !16184

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !16185
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !16185
    #dbg_value(ptr undef, !8100, !DIExpression(), !16145)
    #dbg_value(ptr %i.g, !8123, !DIExpression(), !16145)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !16186 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !16187
  unreachable, !dbg !16187

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16188
    #dbg_value(ptr %i.e, !8129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16151)
    #dbg_value(ptr undef, !8129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16151)
    #dbg_value(ptr poison, !8135, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16165)
    #dbg_value(ptr poison, !8167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16167)
    #dbg_value(ptr poison, !8135, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16165)
    #dbg_value(ptr poison, !8167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16167)
    #dbg_value(i64 poison, !8168, !DIExpression(), !16167)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2b_.exit, !dbg !16189

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !16186
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !16186 ; 2 uses
    #dbg_value(ptr %i.j, !8129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16151)
    #dbg_value(ptr %i.k, !8129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16151)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !8135, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16165)
    #dbg_value(ptr %i.j, !8167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16167)
    #dbg_value(ptr %i.k, !8135, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16165)
    #dbg_value(ptr %i.k, !8167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16167)
    #dbg_value(i64 poison, !8168, !DIExpression(), !16167)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2b_.exit, !dbg !16190

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2b_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !16191
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !16191
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16192
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !16192, !range !7818, !noundef !2017
    #dbg_value(i64 %.sroa.01.0.i, !8138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16148)
    #dbg_value(ptr %.sroa.6.0.i, !8138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16148)
    #dbg_value(ptr %.sroa.8.0.i, !8138, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16148)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16193
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !16193
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !16193
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !16193
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !16193
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !16193
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !16193
  store i32 1, ptr %i.b, align 8, !dbg !16193
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB29_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !16194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16195
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB2f_(ptr noundef nonnull %0), !dbg !16196
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit, !dbg !16196

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB2f_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvCscDgBWNIBxoJ_4bulk6server00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2b_.exit
  ret void, !dbg !16197
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1c_(ptr noundef nonnull %0) unnamed_addr #0 !dbg !1720 {
bb.a:
    #dbg_value(ptr %0, !8176, !DIExpression(), !16198)
    #dbg_value(ptr %0, !8178, !DIExpression(), !16200)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !16203
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !16204

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !8181, !DIExpression(), !16202)
    #dbg_value(ptr undef, !8181, !DIExpression(DW_OP_deref), !16202)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB28_(ptr nonnull %0), !dbg !16205
  br label %bb.c, !dbg !16206

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !16207
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB1c_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16208 {
bb.a:
  %i.a = alloca [1200 x i8], align 8              ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !16287, !DIExpression(), !16291)
    #dbg_value(ptr %1, !16288, !DIExpression(), !16291)
    #dbg_value(ptr %2, !16289, !DIExpression(), !16291)
    #dbg_declare(ptr poison, !16292, !DIExpression(), !16303)
    #dbg_value(ptr poison, !16309, !DIExpression(), !16312)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1248, !dbg !16339
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !16340
  br i1 %i.c, label %bb.b, label %bb.r, !dbg !16340

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !16341
    #dbg_value(ptr %0, !16307, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16313)
    #dbg_value(ptr %0, !16299, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16314)
    #dbg_value(ptr %0, !16316, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16323)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !16342 ; 2 uses
    #dbg_declare(ptr poison, !16324, !DIExpression(), !16217)
    #dbg_value(ptr %i.d, !16327, !DIExpression(), !16218)
    #dbg_value(ptr %i.d, !16330, !DIExpression(), !16221)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16343, !noalias !16335
    #dbg_value(i32 2, !16333, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !16221)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1200) %i.a, ptr noundef nonnull align 8 dereferenceable(1200) %i.d, i64 1200, i1 false), !dbg !16344, !noalias !16335
  store i32 2, ptr %i.d, align 8, !dbg !16345, !noalias !16335
  %i.e = load i32, ptr %i.a, align 8, !dbg !16343, !range !7113, !noalias !16335, !noundef !2017
  %i.f = icmp eq i32 %i.e, 1, !dbg !16346
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B18_.exit, label %bb.c, !dbg !16346, !prof !7688

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.e unwind label %bb.d, !dbg !16347, !noalias !16335

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !16348, !range !7113, !noalias !16335, !noundef !2017
  %i.i = icmp eq i32 %i.h, 1, !dbg !16348
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !16348

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !16291

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageNCNCNCNvCscDgBWNIBxoJ_4bulk6server000EEB1A_(ptr noundef nonnull align 8 %i.a) #12
          to label %common.resume unwind label %bb.g, !dbg !16348, !noalias !16335

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !16349, !noalias !16335
  unreachable, !dbg !16349

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B18_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !16350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !16350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16348, !noalias !16335
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16336), !dbg !16351
    #dbg_value(ptr %1, !7689, !DIExpression(), !16227)
  %i.l = load i64, ptr %1, align 8, !dbg !16352, !range !7695, !alias.scope !16336, !noundef !2017
  %3 = icmp eq i64 %i.l, 0, !dbg !16352
  br i1 %3, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, !dbg !16352

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B18_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16352 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16337), !dbg !16352
    #dbg_value(ptr %i.m, !7254, !DIExpression(), !16231)
  %i.n = load i64, ptr %i.m, align 8, !dbg !16353, !alias.scope !16338, !noundef !2017
  %i.o = icmp eq i64 %i.n, 0, !dbg !16353
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !16353 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !dbg !16353, !alias.scope !16338, !noundef !2017 ; 5 uses
  br i1 %i.o, label %bb.i, label %bb.k, !dbg !16353

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %i.p, !7261, !DIExpression(), !16233)
  %i.r = icmp eq ptr %i.q, null, !dbg !16354
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.j, !dbg !16354

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr %i.p, !7267, !DIExpression(), !16235)
  invoke void @_RNvXs4_NtCsbHiBx3jRrxb_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit unwind label %bb.s, !dbg !16355

bb.k:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !16353
  %.val1.i.i = load ptr, ptr %i.s, align 8, !dbg !16353, !alias.scope !16338 ; 6 uses
    #dbg_value(ptr poison, !7122, !DIExpression(), !16237)
    #dbg_value(ptr poison, !7129, !DIExpression(), !16239)
  %i.t = icmp eq ptr %i.q, null, !dbg !16356
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.l, !dbg !16356

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr poison, !7136, !DIExpression(), !16241)
    #dbg_value(ptr poison, !7143, !DIExpression(), !16243)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.u = load ptr, ptr %.val1.i.i, align 8, !dbg !16357, !invariant.load !2017, !noalias !16338 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null, !dbg !16357
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m, !dbg !16357

bb.m:                                             ; preds = %bb.l
  invoke void %i.u(ptr noundef nonnull %i.q)
          to label %bb.n unwind label %bb.p, !dbg !16357, !noalias !16338

bb.n:                                             ; preds = %bb.m, %bb.l
    #dbg_value(ptr poison, !7147, !DIExpression(), !16245)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16246)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16246)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16248)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16250)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16252)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16254)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16248)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16250)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16252)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16254)
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !16358
  %i.w = load i64, ptr %i.v, align 8, !dbg !16358, !range !7184, !invariant.load !2017, !noalias !16338 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16255)
    #dbg_value(i64 %i.w, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16255)
  %i.x = icmp eq i64 %i.w, 0, !dbg !16359
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.o, !dbg !16359

bb.o:                                             ; preds = %bb.n
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !16358
  %i.z = load i64, ptr %i.y, align 8, !dbg !16360, !range !7185, !invariant.load !2017, !noalias !16338
    #dbg_value(i64 %i.z, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16255)
    #dbg_value(ptr %i.q, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16248)
    #dbg_value(ptr %i.q, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16250)
    #dbg_value(ptr %i.q, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16252)
    #dbg_value(ptr %i.q, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16254)
    #dbg_value(ptr %i.q, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16246)
    #dbg_value(ptr poison, !6639, !DIExpression(), !16257)
    #dbg_value(ptr poison, !6646, !DIExpression(), !16259)
    #dbg_value(ptr %i.q, !6643, !DIExpression(), !16257)
    #dbg_value(ptr %i.q, !6649, !DIExpression(), !16259)
    #dbg_value(ptr %i.q, !6652, !DIExpression(), !16261)
    #dbg_value(ptr %i.q, !6658, !DIExpression(), !16263)
    #dbg_value(i64 %i.z, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16257)
    #dbg_value(i64 %i.z, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16259)
    #dbg_value(i64 %i.z, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16261)
    #dbg_value(i64 %i.z, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16263)
    #dbg_value(i64 %i.w, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16257)
    #dbg_value(i64 %i.w, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16259)
    #dbg_value(i64 %i.w, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16261)
    #dbg_value(i64 %i.w, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16263)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #13, !dbg !16361, !noalias !16338
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, !dbg !16362

bb.p:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr poison, !7147, !DIExpression(), !16265)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16266)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16266)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16268)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16270)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16272)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16274)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16268)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16270)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16272)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16274)
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !16363
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !16363, !range !7184, !invariant.load !2017, !noalias !16338 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16275)
    #dbg_value(i64 %i.ac, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16275)
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !16364
  br i1 %i.ad, label %.body, label %bb.q, !dbg !16364

bb.q:                                             ; preds = %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !16363
  %i.af = load i64, ptr %i.ae, align 8, !dbg !16365, !range !7185, !invariant.load !2017, !noalias !16338
    #dbg_value(i64 %i.af, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16275)
    #dbg_value(ptr %i.q, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16268)
    #dbg_value(ptr %i.q, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16270)
    #dbg_value(ptr %i.q, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16272)
    #dbg_value(ptr %i.q, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16274)
    #dbg_value(ptr %i.q, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16266)
    #dbg_value(ptr poison, !6639, !DIExpression(), !16277)
    #dbg_value(ptr poison, !6646, !DIExpression(), !16279)
    #dbg_value(ptr %i.q, !6643, !DIExpression(), !16277)
    #dbg_value(ptr %i.q, !6649, !DIExpression(), !16279)
    #dbg_value(ptr %i.q, !6652, !DIExpression(), !16281)
    #dbg_value(ptr %i.q, !6658, !DIExpression(), !16283)
    #dbg_value(i64 %i.af, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16277)
    #dbg_value(i64 %i.af, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16279)
    #dbg_value(i64 %i.af, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16281)
    #dbg_value(i64 %i.af, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16283)
    #dbg_value(i64 %i.ac, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16277)
    #dbg_value(i64 %i.ac, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16279)
    #dbg_value(i64 %i.ac, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16281)
    #dbg_value(i64 %i.ac, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16283)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #13, !dbg !16366, !noalias !16338
  br label %.body, !dbg !16367

bb.r:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit
  ret void, !dbg !16368

bb.s:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !16351

.body:                                            ; preds = %bb.p, %bb.q, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.s ], [ %i.aa, %bb.q ], [ %i.aa, %bb.p ]
  store i64 0, ptr %1, align 8, !dbg !16351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !16351
  br label %common.resume, !dbg !16369

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtCsbHiBx3jRrxb_6anyhow5ErrorENtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.o, %bb.n, %bb.k, %bb.i, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B18_.exit, %bb.j
  store i64 0, ptr %1, align 8, !dbg !16351
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !16351
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !16370
  br label %bb.r, !dbg !16371
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowB1c_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16373 {
bb.a:
  %i.a = alloca [1200 x i8], align 8              ; 4 uses
    #dbg_value(ptr poison, !16466, !DIExpression(), !16385)
    #dbg_value(ptr poison, !16501, !DIExpression(), !16389)
    #dbg_value(ptr poison, !16489, !DIExpression(), !16390)
    #dbg_value(ptr poison, !16494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16507)
    #dbg_value(ptr poison, !16493, !DIExpression(), !16508)
    #dbg_value(ptr poison, !16499, !DIExpression(), !16509)
    #dbg_value(ptr poison, !16510, !DIExpression(), !16513)
    #dbg_value(ptr %0, !16462, !DIExpression(), !16514)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !16541 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !16541
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !16541
    #dbg_value(i1 %i.c, !16463, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !16515)
    #dbg_value(i1 %i.d, !16463, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !16515)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !16542

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !16543

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !16499, !DIExpression(), !16509)
    #dbg_value(ptr undef, !16493, !DIExpression(), !16508)
    #dbg_value(ptr undef, !16494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16507)
    #dbg_value(ptr undef, !16466, !DIExpression(), !16385)
    #dbg_value(ptr undef, !16489, !DIExpression(), !16390)
    #dbg_value(ptr poison, !16516, !DIExpression(), !16394)
    #dbg_declare(ptr poison, !16520, !DIExpression(), !16395)
    #dbg_declare(ptr poison, !16519, !DIExpression(), !16395)
    #dbg_value(ptr poison, !16524, !DIExpression(), !16398)
    #dbg_declare(ptr poison, !16527, !DIExpression(), !16399)
    #dbg_value(ptr poison, !16531, !DIExpression(DW_OP_deref, DW_OP_deref), !16402)
    #dbg_value(ptr poison, !16536, !DIExpression(), !16405)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16544
    #dbg_value(ptr %i.e, !16538, !DIExpression(), !16408)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16545, !noalias !16540
  store i32 2, ptr %i.a, align 8, !dbg !16545, !noalias !16540
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB16_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1200) %i.a)
          to label %.thread unwind label %bb.c, !dbg !16546

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !16547
end_hunk_3
begin_hunk_4_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB1c_:bb.a
bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit
    #dbg_value(ptr undef, !17330, !DIExpression(DW_OP_deref), !17333)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB28_(ptr nonnull %0), !dbg !17373
  br label %bb.p, !dbg !17374

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, %bb.o
  ret void, !dbg !17375
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB1c_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17376 {
bb.a:
  %i.a = alloca [1200 x i8], align 8              ; 4 uses
  %i.b = alloca [1200 x i8], align 8              ; 7 uses
    #dbg_value(ptr %0, !17412, !DIExpression(), !17414)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !17419
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !17420

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !8176, !DIExpression(), !17378)
    #dbg_value(ptr %0, !8178, !DIExpression(), !17380)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !17421
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1c_.exit, !dbg !17422

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !8181, !DIExpression(DW_OP_deref), !17382)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB28_(ptr nonnull %0), !dbg !17423
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1c_.exit, !dbg !17424

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !17415, !DIExpression(), !17418)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17425 ; 2 uses
    #dbg_value(ptr poison, !8200, !DIExpression(), !17388)
    #dbg_value(ptr %i.e, !8234, !DIExpression(), !17389)
    #dbg_value(ptr %i.e, !8237, !DIExpression(), !17391)
    #dbg_value(ptr %i.e, !8232, !DIExpression(), !17392)
    #dbg_value(ptr %i.e, !8228, !DIExpression(), !17393)
    #dbg_value(ptr %i.e, !8229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17394)
    #dbg_value(ptr undef, !8240, !DIExpression(), !17396)
    #dbg_value(ptr %i.e, !8243, !DIExpression(), !17397)
    #dbg_value(ptr %i.e, !8245, !DIExpression(), !17399)
    #dbg_declare(ptr poison, !8249, !DIExpression(), !17400)
    #dbg_declare(ptr poison, !8248, !DIExpression(), !17400)
    #dbg_value(ptr %i.e, !8253, !DIExpression(), !17402)
    #dbg_declare(ptr poison, !8256, !DIExpression(), !17403)
    #dbg_value(ptr poison, !8260, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !17405)
    #dbg_value(ptr %i.e, !8265, !DIExpression(), !17407)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17426
  store i32 2, ptr %i.a, align 8, !dbg !17426
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB16_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1200) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !17427

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !17428
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !17428
    #dbg_value(ptr undef, !8200, !DIExpression(), !17388)
    #dbg_value(ptr %i.g, !8223, !DIExpression(), !17388)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !17429 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !17430
  unreachable, !dbg !17430

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17431
    #dbg_value(ptr %i.e, !8229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17394)
    #dbg_value(ptr undef, !8229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17394)
    #dbg_value(ptr poison, !8235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17408)
    #dbg_value(ptr poison, !8267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17410)
    #dbg_value(ptr poison, !8235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17408)
    #dbg_value(ptr poison, !8267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17410)
    #dbg_value(i64 poison, !8268, !DIExpression(), !17410)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB18_.exit, !dbg !17432

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !17429
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !17429 ; 2 uses
    #dbg_value(ptr %i.j, !8229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17394)
    #dbg_value(ptr %i.k, !8229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17394)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !8235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17408)
    #dbg_value(ptr %i.j, !8267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17410)
    #dbg_value(ptr %i.k, !8235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17408)
    #dbg_value(ptr %i.k, !8267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17410)
    #dbg_value(i64 poison, !8268, !DIExpression(), !17410)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB18_.exit, !dbg !17433

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB18_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !17434
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !17434
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !17435
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !17435, !range !7818, !noundef !2017
    #dbg_value(i64 %.sroa.01.0.i, !8238, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17391)
    #dbg_value(ptr %.sroa.6.0.i, !8238, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17391)
    #dbg_value(ptr %.sroa.8.0.i, !8238, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17391)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17436
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !17436
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !17436
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !17436
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !17436
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !17436
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !17436
  store i32 1, ptr %i.b, align 8, !dbg !17436
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB16_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1200) %i.b), !dbg !17437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17438
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB1c_(ptr noundef nonnull %0), !dbg !17439
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1c_.exit, !dbg !17439

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1c_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNCNvCscDgBWNIBxoJ_4bulk6server000INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB18_.exit
  ret void, !dbg !17440
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1a_(ptr noundef nonnull %0) unnamed_addr #0 !dbg !1745 {
bb.a:
    #dbg_value(ptr %0, !8276, !DIExpression(), !17441)
    #dbg_value(ptr %0, !8278, !DIExpression(), !17443)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !17446
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !17447

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !8281, !DIExpression(), !17445)
    #dbg_value(ptr undef, !8281, !DIExpression(DW_OP_deref), !17445)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB26_(ptr nonnull %0), !dbg !17448
  br label %bb.c, !dbg !17449

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !17450
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB1a_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17451 {
bb.a:
  %i.a = alloca [1336 x i8], align 8              ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !17526, !DIExpression(), !17530)
    #dbg_value(ptr %1, !17527, !DIExpression(), !17530)
    #dbg_value(ptr %2, !17528, !DIExpression(), !17530)
    #dbg_declare(ptr poison, !17531, !DIExpression(), !17542)
    #dbg_value(ptr poison, !17548, !DIExpression(), !17551)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1384, !dbg !17578
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !17579
  br i1 %i.c, label %bb.b, label %bb.p, !dbg !17579

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !17580
    #dbg_value(ptr %0, !17546, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !17552)
    #dbg_value(ptr %0, !17538, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !17553)
    #dbg_value(ptr %0, !17555, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !17562)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !17581 ; 2 uses
    #dbg_declare(ptr poison, !17563, !DIExpression(), !17460)
    #dbg_value(ptr %i.d, !17566, !DIExpression(), !17461)
    #dbg_value(ptr %i.d, !17569, !DIExpression(), !17464)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17582, !noalias !17574
    #dbg_value(i32 2, !17572, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !17464)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1336) %i.a, ptr noundef nonnull align 8 dereferenceable(1336) %i.d, i64 1336, i1 false), !dbg !17583, !noalias !17574
  store i32 2, ptr %i.d, align 8, !dbg !17584, !noalias !17574
  %i.e = load i32, ptr %i.a, align 8, !dbg !17582, !range !7113, !noalias !17574, !noundef !2017
  %i.f = icmp eq i32 %i.e, 1, !dbg !17585
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B16_.exit, label %bb.c, !dbg !17585, !prof !7688

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.e unwind label %bb.d, !dbg !17586, !noalias !17574

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !17587, !range !7113, !noalias !17574, !noundef !2017
  %i.i = icmp eq i32 %i.h, 1, !dbg !17587
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !17587

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !17530

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageNCNCNvCscDgBWNIBxoJ_4bulk6client00EEB1y_(ptr noundef nonnull align 8 %i.a) #12
          to label %common.resume unwind label %bb.g, !dbg !17587, !noalias !17574

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !17588, !noalias !17574
  unreachable, !dbg !17588

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B16_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !17589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !17589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17587, !noalias !17574
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17575), !dbg !17590
    #dbg_value(ptr %1, !7963, !DIExpression(), !17470)
  %i.l = load i64, ptr %1, align 8, !dbg !17591, !range !7695, !alias.scope !17575, !noundef !2017
  %3 = icmp eq i64 %i.l, 0, !dbg !17591
  br i1 %3, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, !dbg !17591

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B16_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17591 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17576), !dbg !17591
    #dbg_value(ptr %i.m, !7115, !DIExpression(), !17474)
  %i.n = load i64, ptr %i.m, align 8, !dbg !17592, !alias.scope !17577, !noundef !2017
  %i.o = icmp eq i64 %i.n, 0, !dbg !17592
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.i, !dbg !17592

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !17592
  %.val.i.i = load ptr, ptr %i.p, align 8, !dbg !17592, !alias.scope !17577, !noundef !2017 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !17592
  %.val1.i.i = load ptr, ptr %i.q, align 8, !dbg !17592, !alias.scope !17577 ; 6 uses
    #dbg_value(ptr poison, !7122, !DIExpression(), !17476)
    #dbg_value(ptr poison, !7129, !DIExpression(), !17478)
  %i.r = icmp eq ptr %.val.i.i, null, !dbg !17593
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.j, !dbg !17593

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr poison, !7136, !DIExpression(), !17480)
    #dbg_value(ptr poison, !7143, !DIExpression(), !17482)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i, align 8, !dbg !17594, !invariant.load !2017, !noalias !17577 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null, !dbg !17594
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k, !dbg !17594

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !dbg !17594, !noalias !17577

bb.l:                                             ; preds = %bb.k, %bb.j
    #dbg_value(ptr poison, !7147, !DIExpression(), !17484)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17485)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17485)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17487)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17489)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17491)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17493)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17487)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17489)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17491)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17493)
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !17595
  %i.u = load i64, ptr %i.t, align 8, !dbg !17595, !range !7184, !invariant.load !2017, !noalias !17577 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17494)
    #dbg_value(i64 %i.u, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17494)
  %i.v = icmp eq i64 %i.u, 0, !dbg !17596
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.m, !dbg !17596

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !17595
  %i.x = load i64, ptr %i.w, align 8, !dbg !17597, !range !7185, !invariant.load !2017, !noalias !17577
    #dbg_value(i64 %i.x, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17494)
    #dbg_value(ptr %.val.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17487)
    #dbg_value(ptr %.val.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17489)
    #dbg_value(ptr %.val.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17491)
    #dbg_value(ptr %.val.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17493)
    #dbg_value(ptr %.val.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17485)
    #dbg_value(ptr poison, !6639, !DIExpression(), !17496)
    #dbg_value(ptr poison, !6646, !DIExpression(), !17498)
    #dbg_value(ptr %.val.i.i, !6643, !DIExpression(), !17496)
    #dbg_value(ptr %.val.i.i, !6649, !DIExpression(), !17498)
    #dbg_value(ptr %.val.i.i, !6652, !DIExpression(), !17500)
    #dbg_value(ptr %.val.i.i, !6658, !DIExpression(), !17502)
    #dbg_value(i64 %i.x, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17496)
    #dbg_value(i64 %i.x, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17498)
    #dbg_value(i64 %i.x, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17500)
    #dbg_value(i64 %i.x, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17502)
    #dbg_value(i64 %i.u, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17496)
    #dbg_value(i64 %i.u, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17498)
    #dbg_value(i64 %i.u, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17500)
    #dbg_value(i64 %i.u, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17502)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13, !dbg !17598, !noalias !17577
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, !dbg !17599

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !7147, !DIExpression(), !17504)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17505)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17505)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17507)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17509)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17511)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17513)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17507)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17509)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17511)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17513)
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !17600
  %i.aa = load i64, ptr %i.z, align 8, !dbg !17600, !range !7184, !invariant.load !2017, !noalias !17577 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17514)
    #dbg_value(i64 %i.aa, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17514)
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !17601
  br i1 %i.ab, label %.body, label %bb.o, !dbg !17601

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !17600
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !17602, !range !7185, !invariant.load !2017, !noalias !17577
    #dbg_value(i64 %i.ad, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17514)
    #dbg_value(ptr %.val.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17507)
    #dbg_value(ptr %.val.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17509)
    #dbg_value(ptr %.val.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17511)
    #dbg_value(ptr %.val.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17513)
    #dbg_value(ptr %.val.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17505)
    #dbg_value(ptr poison, !6639, !DIExpression(), !17516)
    #dbg_value(ptr poison, !6646, !DIExpression(), !17518)
    #dbg_value(ptr %.val.i.i, !6643, !DIExpression(), !17516)
    #dbg_value(ptr %.val.i.i, !6649, !DIExpression(), !17518)
    #dbg_value(ptr %.val.i.i, !6652, !DIExpression(), !17520)
    #dbg_value(ptr %.val.i.i, !6658, !DIExpression(), !17522)
    #dbg_value(i64 %i.ad, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17516)
    #dbg_value(i64 %i.ad, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17518)
    #dbg_value(i64 %i.ad, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17520)
    #dbg_value(i64 %i.ad, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17522)
    #dbg_value(i64 %i.aa, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17516)
    #dbg_value(i64 %i.aa, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17518)
    #dbg_value(i64 %i.aa, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17520)
    #dbg_value(i64 %i.aa, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17522)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #13, !dbg !17603, !noalias !17577
  br label %.body, !dbg !17604

bb.p:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit
  ret void, !dbg !17605

.body:                                            ; preds = %bb.n, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !17590
  br label %common.resume, !dbg !17606

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B16_.exit
  store i64 0, ptr %1, align 8, !dbg !17590
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17590
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !17590
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !17607
  br label %bb.p, !dbg !17608
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowB1a_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17610 {
bb.a:
  %i.a = alloca [1336 x i8], align 8              ; 4 uses
    #dbg_value(ptr poison, !17703, !DIExpression(), !17622)
    #dbg_value(ptr poison, !17738, !DIExpression(), !17626)
    #dbg_value(ptr poison, !17726, !DIExpression(), !17627)
    #dbg_value(ptr poison, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17744)
    #dbg_value(ptr poison, !17730, !DIExpression(), !17745)
    #dbg_value(ptr poison, !17736, !DIExpression(), !17746)
    #dbg_value(ptr poison, !17747, !DIExpression(), !17750)
    #dbg_value(ptr %0, !17699, !DIExpression(), !17751)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !17778 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !17778
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !17778
    #dbg_value(i1 %i.c, !17700, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !17752)
    #dbg_value(i1 %i.d, !17700, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !17752)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !17779

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !17780

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !17736, !DIExpression(), !17746)
    #dbg_value(ptr undef, !17730, !DIExpression(), !17745)
    #dbg_value(ptr undef, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17744)
    #dbg_value(ptr undef, !17703, !DIExpression(), !17622)
    #dbg_value(ptr undef, !17726, !DIExpression(), !17627)
    #dbg_value(ptr poison, !17753, !DIExpression(), !17631)
    #dbg_declare(ptr poison, !17757, !DIExpression(), !17632)
    #dbg_declare(ptr poison, !17756, !DIExpression(), !17632)
    #dbg_value(ptr poison, !17761, !DIExpression(), !17635)
    #dbg_declare(ptr poison, !17764, !DIExpression(), !17636)
    #dbg_value(ptr poison, !17768, !DIExpression(DW_OP_deref, DW_OP_deref), !17639)
    #dbg_value(ptr poison, !17773, !DIExpression(), !17642)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17781
    #dbg_value(ptr %i.e, !17775, !DIExpression(), !17645)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17782, !noalias !17777
  store i32 2, ptr %i.a, align 8, !dbg !17782, !noalias !17777
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB14_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1336) %i.a)
          to label %.thread unwind label %bb.c, !dbg !17783

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !17784
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !17784
    #dbg_value(ptr undef, !17738, !DIExpression(), !17626)
    #dbg_value(ptr %i.g, !17741, !DIExpression(), !17626)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !17785 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !17786
  unreachable, !dbg !17786

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17787, !noalias !17777
    #dbg_value(ptr undef, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17744)
    #dbg_value(ptr undef, !17731, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17744)
    #dbg_value(ptr poison, !7736, !DIExpression(), !17649)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !17788

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !17785 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !17785 ; 6 uses
    #dbg_value(ptr %i.j, !17731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17744)
    #dbg_value(ptr %i.k, !17731, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17744)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !7736, !DIExpression(), !17649)
  %i.l = icmp eq ptr %i.j, null, !dbg !17788
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, label %bb.f, !dbg !17788

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !7143, !DIExpression(), !17651)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !17789, !invariant.load !2017 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !17789
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !17789

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !17789

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !7147, !DIExpression(), !17653)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17654)
    #dbg_value(ptr %i.k, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17654)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17656)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17658)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17660)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17662)
    #dbg_value(ptr %i.k, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17656)
    #dbg_value(ptr %i.k, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17658)
    #dbg_value(ptr %i.k, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17660)
    #dbg_value(ptr %i.k, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17662)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !17790
  %i.o = load i64, ptr %i.n, align 8, !dbg !17790, !range !7184, !invariant.load !2017 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17663)
    #dbg_value(i64 %i.o, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17663)
  %i.p = icmp eq i64 %i.o, 0, !dbg !17791
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, label %bb.i, !dbg !17791

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !17790
  %i.r = load i64, ptr %i.q, align 8, !dbg !17792, !range !7185, !invariant.load !2017
    #dbg_value(i64 %i.r, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17663)
    #dbg_value(ptr %i.j, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17656)
    #dbg_value(ptr %i.j, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17658)
    #dbg_value(ptr %i.j, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17660)
    #dbg_value(ptr %i.j, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17662)
    #dbg_value(ptr %i.j, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17654)
    #dbg_value(ptr poison, !6639, !DIExpression(), !17665)
    #dbg_value(ptr poison, !6646, !DIExpression(), !17667)
    #dbg_value(ptr %i.j, !6643, !DIExpression(), !17665)
    #dbg_value(ptr %i.j, !6649, !DIExpression(), !17667)
    #dbg_value(ptr %i.j, !6652, !DIExpression(), !17669)
    #dbg_value(ptr %i.j, !6658, !DIExpression(), !17671)
    #dbg_value(i64 %i.r, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17665)
    #dbg_value(i64 %i.r, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17667)
    #dbg_value(i64 %i.r, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17669)
    #dbg_value(i64 %i.r, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17671)
    #dbg_value(i64 %i.o, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17665)
    #dbg_value(i64 %i.o, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17667)
    #dbg_value(i64 %i.o, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17669)
    #dbg_value(i64 %i.o, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17671)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13, !dbg !17793
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !17794

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !7147, !DIExpression(), !17673)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17674)
    #dbg_value(ptr %i.k, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17674)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17676)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17678)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17680)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17682)
    #dbg_value(ptr %i.k, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17676)
    #dbg_value(ptr %i.k, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17678)
    #dbg_value(ptr %i.k, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17680)
    #dbg_value(ptr %i.k, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17682)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !17795
  %i.u = load i64, ptr %i.t, align 8, !dbg !17795, !range !7184, !invariant.load !2017 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17683)
    #dbg_value(i64 %i.u, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17683)
  %i.v = icmp eq i64 %i.u, 0, !dbg !17796
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i, label %bb.k, !dbg !17796

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !17795
  %i.x = load i64, ptr %i.w, align 8, !dbg !17797, !range !7185, !invariant.load !2017
    #dbg_value(i64 %i.x, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17683)
    #dbg_value(ptr %i.j, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17676)
    #dbg_value(ptr %i.j, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17678)
    #dbg_value(ptr %i.j, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17680)
    #dbg_value(ptr %i.j, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17682)
    #dbg_value(ptr %i.j, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17674)
    #dbg_value(ptr poison, !6639, !DIExpression(), !17685)
    #dbg_value(ptr poison, !6646, !DIExpression(), !17687)
    #dbg_value(ptr %i.j, !6643, !DIExpression(), !17685)
    #dbg_value(ptr %i.j, !6649, !DIExpression(), !17687)
    #dbg_value(ptr %i.j, !6652, !DIExpression(), !17689)
    #dbg_value(ptr %i.j, !6658, !DIExpression(), !17691)
    #dbg_value(i64 %i.x, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17685)
    #dbg_value(i64 %i.x, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17687)
    #dbg_value(i64 %i.x, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17689)
    #dbg_value(i64 %i.x, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17691)
    #dbg_value(i64 %i.u, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17685)
    #dbg_value(i64 %i.u, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17687)
    #dbg_value(i64 %i.u, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17689)
    #dbg_value(i64 %i.u, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17691)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13, !dbg !17798
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i, !dbg !17799

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !17789

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit
    #dbg_value(ptr %0, !8276, !DIExpression(), !17693)
    #dbg_value(ptr %0, !8278, !DIExpression(), !17695)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !17800
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1a_.exit, !dbg !17801

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !8281, !DIExpression(DW_OP_deref), !17697)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB26_(ptr nonnull %0), !dbg !17802
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1a_.exit, !dbg !17803
end_hunk_4
begin_hunk_5_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB1a_:bb.a
bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit
    #dbg_value(ptr undef, !18562, !DIExpression(DW_OP_deref), !18565)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB26_(ptr nonnull %0), !dbg !18605
  br label %bb.p, !dbg !18606

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, %bb.o
  ret void, !dbg !18607
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB1a_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18608 {
bb.a:
  %i.a = alloca [1336 x i8], align 8              ; 4 uses
  %i.b = alloca [1336 x i8], align 8              ; 7 uses
    #dbg_value(ptr %0, !18644, !DIExpression(), !18646)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !18651
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !18652

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !8276, !DIExpression(), !18610)
    #dbg_value(ptr %0, !8278, !DIExpression(), !18612)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !18653
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1a_.exit, !dbg !18654

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !8281, !DIExpression(DW_OP_deref), !18614)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB26_(ptr nonnull %0), !dbg !18655
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1a_.exit, !dbg !18656

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !18647, !DIExpression(), !18650)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !18657 ; 2 uses
    #dbg_value(ptr poison, !8300, !DIExpression(), !18620)
    #dbg_value(ptr %i.e, !8334, !DIExpression(), !18621)
    #dbg_value(ptr %i.e, !8337, !DIExpression(), !18623)
    #dbg_value(ptr %i.e, !8332, !DIExpression(), !18624)
    #dbg_value(ptr %i.e, !8328, !DIExpression(), !18625)
    #dbg_value(ptr %i.e, !8329, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18626)
    #dbg_value(ptr undef, !8340, !DIExpression(), !18628)
    #dbg_value(ptr %i.e, !8343, !DIExpression(), !18629)
    #dbg_value(ptr %i.e, !8345, !DIExpression(), !18631)
    #dbg_declare(ptr poison, !8349, !DIExpression(), !18632)
    #dbg_declare(ptr poison, !8348, !DIExpression(), !18632)
    #dbg_value(ptr %i.e, !8353, !DIExpression(), !18634)
    #dbg_declare(ptr poison, !8356, !DIExpression(), !18635)
    #dbg_value(ptr poison, !8360, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !18637)
    #dbg_value(ptr %i.e, !8365, !DIExpression(), !18639)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18658
  store i32 2, ptr %i.a, align 8, !dbg !18658
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB14_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1336) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !18659

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !18660
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !18660
    #dbg_value(ptr undef, !8300, !DIExpression(), !18620)
    #dbg_value(ptr %i.g, !8323, !DIExpression(), !18620)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !18661 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !18662
  unreachable, !dbg !18662

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18663
    #dbg_value(ptr %i.e, !8329, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18626)
    #dbg_value(ptr undef, !8329, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18626)
    #dbg_value(ptr poison, !8335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18640)
    #dbg_value(ptr poison, !8367, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18642)
    #dbg_value(ptr poison, !8335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18640)
    #dbg_value(ptr poison, !8367, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18642)
    #dbg_value(i64 poison, !8368, !DIExpression(), !18642)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB16_.exit, !dbg !18664

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !18661
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !18661 ; 2 uses
    #dbg_value(ptr %i.j, !8329, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18626)
    #dbg_value(ptr %i.k, !8329, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18626)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !8335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18640)
    #dbg_value(ptr %i.j, !8367, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18642)
    #dbg_value(ptr %i.k, !8335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18640)
    #dbg_value(ptr %i.k, !8367, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18642)
    #dbg_value(i64 poison, !8368, !DIExpression(), !18642)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB16_.exit, !dbg !18665

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB16_.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !18666
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !18666
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !18667
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !18667, !range !7818, !noundef !2017
    #dbg_value(i64 %.sroa.01.0.i, !8338, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18623)
    #dbg_value(ptr %.sroa.6.0.i, !8338, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18623)
    #dbg_value(ptr %.sroa.8.0.i, !8338, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18623)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18668
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !18668
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !18668
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !18668
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !18668
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !18668
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !18668
  store i32 1, ptr %i.b, align 8, !dbg !18668
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB14_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1336) %i.b), !dbg !18669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18670
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeB1a_(ptr noundef nonnull %0), !dbg !18671
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1a_.exit, !dbg !18671

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1a_.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvCscDgBWNIBxoJ_4bulk6client00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB16_.exit
  ret void, !dbg !18672
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1a_(ptr noundef nonnull %0) unnamed_addr #0 !dbg !1770 {
bb.a:
    #dbg_value(ptr %0, !8376, !DIExpression(), !18673)
    #dbg_value(ptr %0, !8378, !DIExpression(), !18675)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !18678
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !18679

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !8381, !DIExpression(), !18677)
    #dbg_value(ptr undef, !8381, !DIExpression(DW_OP_deref), !18677)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB26_(ptr nonnull %0), !dbg !18680
  br label %bb.c, !dbg !18681

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !18682
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputB1a_(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18683 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !18758, !DIExpression(), !18762)
    #dbg_value(ptr %1, !18759, !DIExpression(), !18762)
    #dbg_value(ptr %2, !18760, !DIExpression(), !18762)
    #dbg_declare(ptr poison, !18763, !DIExpression(), !18774)
    #dbg_value(ptr poison, !18780, !DIExpression(), !18783)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !18810
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !18811
  br i1 %i.c, label %bb.b, label %bb.p, !dbg !18811

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !18812
    #dbg_value(ptr %0, !18778, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18784)
    #dbg_value(ptr %0, !18770, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !18785)
    #dbg_value(ptr %0, !18787, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !18794)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !18813 ; 2 uses
    #dbg_declare(ptr poison, !18795, !DIExpression(), !18692)
    #dbg_value(ptr %i.d, !18798, !DIExpression(), !18693)
    #dbg_value(ptr %i.d, !18801, !DIExpression(), !18696)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18814, !noalias !18806
    #dbg_value(i32 2, !18804, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !18696)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false), !dbg !18815, !noalias !18806
  store i32 2, ptr %i.d, align 8, !dbg !18816, !noalias !18806
  %i.e = load i32, ptr %i.a, align 8, !dbg !18814, !range !7113, !noalias !18806, !noundef !2017
  %i.f = icmp eq i32 %i.e, 1, !dbg !18817
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B16_.exit, label %bb.c, !dbg !18817, !prof !7688

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.e unwind label %bb.d, !dbg !18818, !noalias !18806

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !18819, !range !7113, !noalias !18806, !noundef !2017
  %i.i = icmp eq i32 %i.h, 1, !dbg !18819
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !18819

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !18762

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageNCNCNvCscDgBWNIBxoJ_4bulk6server00EEB1y_(ptr noundef nonnull align 8 %i.a) #12
          to label %common.resume unwind label %bb.g, !dbg !18819, !noalias !18806

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !18820, !noalias !18806
  unreachable, !dbg !18820

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B16_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !18821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !18821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18819, !noalias !18806
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18807), !dbg !18822
    #dbg_value(ptr %1, !7963, !DIExpression(), !18702)
  %i.l = load i64, ptr %1, align 8, !dbg !18823, !range !7695, !alias.scope !18807, !noundef !2017
  %3 = icmp eq i64 %i.l, 0, !dbg !18823
  br i1 %3, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, !dbg !18823

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B16_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18823 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18808), !dbg !18823
    #dbg_value(ptr %i.m, !7115, !DIExpression(), !18706)
  %i.n = load i64, ptr %i.m, align 8, !dbg !18824, !alias.scope !18809, !noundef !2017
  %i.o = icmp eq i64 %i.n, 0, !dbg !18824
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.i, !dbg !18824

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18824
  %.val.i.i = load ptr, ptr %i.p, align 8, !dbg !18824, !alias.scope !18809, !noundef !2017 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !18824
  %.val1.i.i = load ptr, ptr %i.q, align 8, !dbg !18824, !alias.scope !18809 ; 6 uses
    #dbg_value(ptr poison, !7122, !DIExpression(), !18708)
    #dbg_value(ptr poison, !7129, !DIExpression(), !18710)
  %i.r = icmp eq ptr %.val.i.i, null, !dbg !18825
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.j, !dbg !18825

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr poison, !7136, !DIExpression(), !18712)
    #dbg_value(ptr poison, !7143, !DIExpression(), !18714)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i, align 8, !dbg !18826, !invariant.load !2017, !noalias !18809 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null, !dbg !18826
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k, !dbg !18826

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !dbg !18826, !noalias !18809

bb.l:                                             ; preds = %bb.k, %bb.j
    #dbg_value(ptr poison, !7147, !DIExpression(), !18716)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18717)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18717)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18719)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18721)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18723)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18725)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18719)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18721)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18723)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18725)
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !18827
  %i.u = load i64, ptr %i.t, align 8, !dbg !18827, !range !7184, !invariant.load !2017, !noalias !18809 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18726)
    #dbg_value(i64 %i.u, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18726)
  %i.v = icmp eq i64 %i.u, 0, !dbg !18828
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, label %bb.m, !dbg !18828

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !18827
  %i.x = load i64, ptr %i.w, align 8, !dbg !18829, !range !7185, !invariant.load !2017, !noalias !18809
    #dbg_value(i64 %i.x, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18726)
    #dbg_value(ptr %.val.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18719)
    #dbg_value(ptr %.val.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18721)
    #dbg_value(ptr %.val.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18723)
    #dbg_value(ptr %.val.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18725)
    #dbg_value(ptr %.val.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18717)
    #dbg_value(ptr poison, !6639, !DIExpression(), !18728)
    #dbg_value(ptr poison, !6646, !DIExpression(), !18730)
    #dbg_value(ptr %.val.i.i, !6643, !DIExpression(), !18728)
    #dbg_value(ptr %.val.i.i, !6649, !DIExpression(), !18730)
    #dbg_value(ptr %.val.i.i, !6652, !DIExpression(), !18732)
    #dbg_value(ptr %.val.i.i, !6658, !DIExpression(), !18734)
    #dbg_value(i64 %i.x, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18728)
    #dbg_value(i64 %i.x, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18730)
    #dbg_value(i64 %i.x, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18732)
    #dbg_value(i64 %i.x, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18734)
    #dbg_value(i64 %i.u, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18728)
    #dbg_value(i64 %i.u, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18730)
    #dbg_value(i64 %i.u, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18732)
    #dbg_value(i64 %i.u, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18734)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13, !dbg !18830, !noalias !18809
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit, !dbg !18831

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !7147, !DIExpression(), !18736)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18737)
    #dbg_value(ptr %.val1.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18737)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18739)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18741)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18743)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18745)
    #dbg_value(ptr %.val1.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18739)
    #dbg_value(ptr %.val1.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18741)
    #dbg_value(ptr %.val1.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18743)
    #dbg_value(ptr %.val1.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18745)
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !18832
  %i.aa = load i64, ptr %i.z, align 8, !dbg !18832, !range !7184, !invariant.load !2017, !noalias !18809 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18746)
    #dbg_value(i64 %i.aa, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18746)
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !18833
  br i1 %i.ab, label %.body, label %bb.o, !dbg !18833

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !18832
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !18834, !range !7185, !invariant.load !2017, !noalias !18809
    #dbg_value(i64 %i.ad, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18746)
    #dbg_value(ptr %.val.i.i, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18739)
    #dbg_value(ptr %.val.i.i, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18741)
    #dbg_value(ptr %.val.i.i, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18743)
    #dbg_value(ptr %.val.i.i, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18745)
    #dbg_value(ptr %.val.i.i, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18737)
    #dbg_value(ptr poison, !6639, !DIExpression(), !18748)
    #dbg_value(ptr poison, !6646, !DIExpression(), !18750)
    #dbg_value(ptr %.val.i.i, !6643, !DIExpression(), !18748)
    #dbg_value(ptr %.val.i.i, !6649, !DIExpression(), !18750)
    #dbg_value(ptr %.val.i.i, !6652, !DIExpression(), !18752)
    #dbg_value(ptr %.val.i.i, !6658, !DIExpression(), !18754)
    #dbg_value(i64 %i.ad, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18748)
    #dbg_value(i64 %i.ad, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18750)
    #dbg_value(i64 %i.ad, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18752)
    #dbg_value(i64 %i.ad, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18754)
    #dbg_value(i64 %i.aa, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18748)
    #dbg_value(i64 %i.aa, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18750)
    #dbg_value(i64 %i.aa, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18752)
    #dbg_value(i64 %i.aa, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18754)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #13, !dbg !18835, !noalias !18809
  br label %.body, !dbg !18836

bb.p:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit
  ret void, !dbg !18837

.body:                                            ; preds = %bb.n, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !18822
  br label %common.resume, !dbg !18838

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0B16_.exit
  store i64 0, ptr %1, align 8, !dbg !18822
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !18822
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !18839
  br label %bb.p, !dbg !18840
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowB1a_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18842 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
    #dbg_value(ptr poison, !18935, !DIExpression(), !18854)
    #dbg_value(ptr poison, !18970, !DIExpression(), !18858)
    #dbg_value(ptr poison, !18958, !DIExpression(), !18859)
    #dbg_value(ptr poison, !18963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18976)
    #dbg_value(ptr poison, !18962, !DIExpression(), !18977)
    #dbg_value(ptr poison, !18968, !DIExpression(), !18978)
    #dbg_value(ptr poison, !18979, !DIExpression(), !18982)
    #dbg_value(ptr %0, !18931, !DIExpression(), !18983)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !19010 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !19010
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !19010
    #dbg_value(i1 %i.c, !18932, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !18984)
    #dbg_value(i1 %i.d, !18932, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !18984)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !19011

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !19012

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !18968, !DIExpression(), !18978)
    #dbg_value(ptr undef, !18962, !DIExpression(), !18977)
    #dbg_value(ptr undef, !18963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18976)
    #dbg_value(ptr undef, !18935, !DIExpression(), !18854)
    #dbg_value(ptr undef, !18958, !DIExpression(), !18859)
    #dbg_value(ptr poison, !18985, !DIExpression(), !18863)
    #dbg_declare(ptr poison, !18989, !DIExpression(), !18864)
    #dbg_declare(ptr poison, !18988, !DIExpression(), !18864)
    #dbg_value(ptr poison, !18993, !DIExpression(), !18867)
    #dbg_declare(ptr poison, !18996, !DIExpression(), !18868)
    #dbg_value(ptr poison, !19000, !DIExpression(DW_OP_deref, DW_OP_deref), !18871)
    #dbg_value(ptr poison, !19005, !DIExpression(), !18874)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !19013
    #dbg_value(ptr %i.e, !19007, !DIExpression(), !18877)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19014, !noalias !19009
  store i32 2, ptr %i.a, align 8, !dbg !19014, !noalias !19009
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB14_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.a)
          to label %.thread unwind label %bb.c, !dbg !19015

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !19016
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !19016
    #dbg_value(ptr undef, !18970, !DIExpression(), !18858)
    #dbg_value(ptr %i.g, !18973, !DIExpression(), !18858)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !19017 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !19018
  unreachable, !dbg !19018

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19019, !noalias !19009
    #dbg_value(ptr undef, !18963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18976)
    #dbg_value(ptr undef, !18963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18976)
    #dbg_value(ptr poison, !7736, !DIExpression(), !18881)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !19020

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !19017 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !19017 ; 6 uses
    #dbg_value(ptr %i.j, !18963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18976)
    #dbg_value(ptr %i.k, !18963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18976)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !7736, !DIExpression(), !18881)
  %i.l = icmp eq ptr %i.j, null, !dbg !19020
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, label %bb.f, !dbg !19020

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !7143, !DIExpression(), !18883)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !19021, !invariant.load !2017 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !19021
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !19021

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !19021

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !7147, !DIExpression(), !18885)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18886)
    #dbg_value(ptr %i.k, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18886)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18888)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18890)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18892)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18894)
    #dbg_value(ptr %i.k, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18888)
    #dbg_value(ptr %i.k, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18890)
    #dbg_value(ptr %i.k, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18892)
    #dbg_value(ptr %i.k, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18894)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !19022
  %i.o = load i64, ptr %i.n, align 8, !dbg !19022, !range !7184, !invariant.load !2017 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18895)
    #dbg_value(i64 %i.o, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18895)
  %i.p = icmp eq i64 %i.o, 0, !dbg !19023
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, label %bb.i, !dbg !19023

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !19022
  %i.r = load i64, ptr %i.q, align 8, !dbg !19024, !range !7185, !invariant.load !2017
    #dbg_value(i64 %i.r, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18895)
    #dbg_value(ptr %i.j, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18888)
    #dbg_value(ptr %i.j, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18890)
    #dbg_value(ptr %i.j, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18892)
    #dbg_value(ptr %i.j, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18894)
    #dbg_value(ptr %i.j, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18886)
    #dbg_value(ptr poison, !6639, !DIExpression(), !18897)
    #dbg_value(ptr poison, !6646, !DIExpression(), !18899)
    #dbg_value(ptr %i.j, !6643, !DIExpression(), !18897)
    #dbg_value(ptr %i.j, !6649, !DIExpression(), !18899)
    #dbg_value(ptr %i.j, !6652, !DIExpression(), !18901)
    #dbg_value(ptr %i.j, !6658, !DIExpression(), !18903)
    #dbg_value(i64 %i.r, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18897)
    #dbg_value(i64 %i.r, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18899)
    #dbg_value(i64 %i.r, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18901)
    #dbg_value(i64 %i.r, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18903)
    #dbg_value(i64 %i.o, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18897)
    #dbg_value(i64 %i.o, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18899)
    #dbg_value(i64 %i.o, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18901)
    #dbg_value(i64 %i.o, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18903)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #13, !dbg !19025
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit, !dbg !19026

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !7147, !DIExpression(), !18905)
    #dbg_value(ptr poison, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18906)
    #dbg_value(ptr %i.k, !7148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18906)
    #dbg_value(ptr poison, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18908)
    #dbg_value(ptr poison, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18910)
    #dbg_value(ptr poison, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18912)
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18914)
    #dbg_value(ptr %i.k, !7163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18908)
    #dbg_value(ptr %i.k, !7171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18910)
    #dbg_value(ptr %i.k, !7176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18912)
    #dbg_value(ptr %i.k, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18914)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !19027
  %i.u = load i64, ptr %i.t, align 8, !dbg !19027, !range !7184, !invariant.load !2017 ; 2 uses
    #dbg_value(i64 poison, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18915)
    #dbg_value(i64 %i.u, !7149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18915)
  %i.v = icmp eq i64 %i.u, 0, !dbg !19028
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i, label %bb.k, !dbg !19028

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !19027
  %i.x = load i64, ptr %i.w, align 8, !dbg !19029, !range !7185, !invariant.load !2017
    #dbg_value(i64 %i.x, !7149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18915)
    #dbg_value(ptr %i.j, !7163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18908)
    #dbg_value(ptr %i.j, !7171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18910)
    #dbg_value(ptr %i.j, !7176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18912)
    #dbg_value(ptr %i.j, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18914)
    #dbg_value(ptr %i.j, !7148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18906)
    #dbg_value(ptr poison, !6639, !DIExpression(), !18917)
    #dbg_value(ptr poison, !6646, !DIExpression(), !18919)
    #dbg_value(ptr %i.j, !6643, !DIExpression(), !18917)
    #dbg_value(ptr %i.j, !6649, !DIExpression(), !18919)
    #dbg_value(ptr %i.j, !6652, !DIExpression(), !18921)
    #dbg_value(ptr %i.j, !6658, !DIExpression(), !18923)
    #dbg_value(i64 %i.x, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18917)
    #dbg_value(i64 %i.x, !6650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18919)
    #dbg_value(i64 %i.x, !6656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18921)
    #dbg_value(i64 %i.x, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18923)
    #dbg_value(i64 %i.u, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18917)
    #dbg_value(i64 %i.u, !6650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18919)
    #dbg_value(i64 %i.u, !6656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18921)
    #dbg_value(i64 %i.u, !6659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18923)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #13, !dbg !19030
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i, !dbg !19031

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCscDgBWNIBxoJ_4bulk.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !19021

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECscDgBWNIBxoJ_4bulk.exit
    #dbg_value(ptr %0, !8376, !DIExpression(), !18925)
    #dbg_value(ptr %0, !8378, !DIExpression(), !18927)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !19032
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1a_.exit, !dbg !19033

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !8381, !DIExpression(DW_OP_deref), !18929)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEEB26_(ptr nonnull %0), !dbg !19034
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvCscDgBWNIBxoJ_4bulk6server00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceB1a_.exit, !dbg !19035
end_hunk_5
