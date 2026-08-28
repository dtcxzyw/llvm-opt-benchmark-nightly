Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_perf.quinn_perf.ec62102bf437a985-cgu.03?download=true
inline.NumInlined: 827
inline.NumDeleted: 476
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto6crypto4KeysECskigd7sy4fqX_10quinn_perf:bb.a
bb.l:                                             ; preds = %.body.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !18307, !noalias !18293
  unreachable, !dbg !18307

.body:                                            ; preds = %.body.i, %bb.j, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %.body.i ], [ %i.x, %bb.j ], [ %i.x, %bb.k ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !18296
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshovLROGBtMy_11quinn_proto6crypto7KeyPairINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBE_9PacketKeyEL_EEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ae) #13
          to label %bb.n unwind label %bb.m, !dbg !18296

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshovLROGBtMy_11quinn_proto6crypto7KeyPairINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBE_9HeaderKeyEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.i, %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !18296
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshovLROGBtMy_11quinn_proto6crypto7KeyPairINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBE_9PacketKeyEL_EEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.af), !dbg !18296
  ret void, !dbg !18296

bb.m:                                             ; preds = %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !18296
  unreachable, !dbg !18296

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !18296
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore20OwnedSemaphorePermitECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !14148 {
bb.a:
    #dbg_value(ptr %0, !14153, !DIExpression(), !18414)
  invoke void @_RNvXs2_NtNtCsar2VadbF9t7_5tokio4sync9semaphoreNtB5_20OwnedSemaphorePermitNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.b, !dbg !18415

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18416), !dbg !18415
    #dbg_value(ptr %0, !14144, !DIExpression(), !18419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18421), !dbg !18424
    #dbg_value(ptr %0, !14140, !DIExpression(), !18425)
    #dbg_value(ptr %0, !14482, !DIExpression(), !18427)
    #dbg_value(i64 1, !14492, !DIExpression(), !18429)
    #dbg_value(i8 1, !14496, !DIExpression(), !18429)
    #dbg_value(i64 1, !14499, !DIExpression(), !18431)
    #dbg_value(i8 1, !14503, !DIExpression(), !18431)
  %i.b = load ptr, ptr %0, align 8, !dbg !18433, !alias.scope !18435, !nonnull !279, !noundef !279
    #dbg_value(ptr %i.b, !14495, !DIExpression(), !18436)
    #dbg_value(ptr %i.b, !14502, !DIExpression(), !18431)
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !dbg !18437, !noalias !18435
  %i.d = icmp eq i64 %i.c, 1, !dbg !18438
  br i1 %i.d, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreEECskigd7sy4fqX_10quinn_perf.exit, !dbg !18438

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !637, !DIExpression(), !18439)
  fence acquire, !dbg !18441
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #12
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreEECskigd7sy4fqX_10quinn_perf.exit unwind label %bb.f, !dbg !18442

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18443), !dbg !18415
    #dbg_value(ptr %0, !14144, !DIExpression(), !18446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18448), !dbg !18451
    #dbg_value(ptr %0, !14140, !DIExpression(), !18452)
    #dbg_value(ptr %0, !14482, !DIExpression(), !18454)
    #dbg_value(i64 1, !14492, !DIExpression(), !18456)
    #dbg_value(i8 1, !14496, !DIExpression(), !18456)
    #dbg_value(i64 1, !14499, !DIExpression(), !18458)
    #dbg_value(i8 1, !14503, !DIExpression(), !18458)
  %i.e = load ptr, ptr %0, align 8, !dbg !18460, !alias.scope !18462, !nonnull !279, !noundef !279
    #dbg_value(ptr %i.e, !14495, !DIExpression(), !18463)
    #dbg_value(ptr %i.e, !14502, !DIExpression(), !18458)
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !dbg !18464, !noalias !18462
  %i.g = icmp eq i64 %i.f, 1, !dbg !18465
  br i1 %i.g, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreEECskigd7sy4fqX_10quinn_perf.exit2, !dbg !18465

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !637, !DIExpression(), !18466)
  fence acquire, !dbg !18468
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #12, !dbg !18469
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreEECskigd7sy4fqX_10quinn_perf.exit2, !dbg !18469

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreEECskigd7sy4fqX_10quinn_perf.exit2: ; preds = %bb.d, %bb.e
  ret void, !dbg !18415

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !18415
  unreachable, !dbg !18415

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a, !dbg !18415
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core7TrailerECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !7378 {
bb.a:
    #dbg_value(ptr %0, !7377, !DIExpression(), !18470)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18471
  %.val = load ptr, ptr %i.a, align 8, !dbg !18471, !align !387, !noundef !279 ; 2 uses
    #dbg_value(ptr poison, !7388, !DIExpression(), !18472)
    #dbg_value(ptr poison, !7398, !DIExpression(), !18474)
    #dbg_value(ptr poison, !7408, !DIExpression(), !18476)
  %i.b = icmp eq ptr %.val, null, !dbg !18478
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.b, !dbg !18478

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24, !dbg !18471
  %.val2 = load ptr, ptr %i.c, align 8, !dbg !18471
    #dbg_value(ptr poison, !7417, !DIExpression(), !18479)
    #dbg_value(ptr poison, !7425, !DIExpression(), !18481)
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !18483
  %i.e = load ptr, ptr %i.d, align 8, !dbg !18483, !nonnull !279, !noundef !279
  invoke void %i.e(ptr noundef %.val2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECskigd7sy4fqX_10quinn_perf.exit unwind label %bb.c, !dbg !18483, !inline_history !7433

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !18471 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18484), !dbg !18471
    #dbg_value(ptr %i.g, !7437, !DIExpression(), !18487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18489), !dbg !18492
    #dbg_value(ptr %i.g, !7451, !DIExpression(), !18493)
  %i.h = load ptr, ptr %i.g, align 8, !dbg !18495, !alias.scope !18496, !noundef !279 ; 2 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !18495
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit, label %bb.d, !dbg !18495

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.g, !7463, !DIExpression(), !18497)
    #dbg_value(ptr %i.g, !7471, !DIExpression(), !18499)
    #dbg_value(i64 1, !7476, !DIExpression(), !18501)
    #dbg_value(i8 1, !7480, !DIExpression(), !18501)
    #dbg_value(i64 1, !7483, !DIExpression(), !18503)
    #dbg_value(i8 1, !7487, !DIExpression(), !18503)
    #dbg_value(ptr %i.h, !7479, !DIExpression(), !18505)
    #dbg_value(ptr %i.h, !7486, !DIExpression(), !18503)
  %i.j = atomicrmw sub ptr %i.h, i64 1 release, align 8, !dbg !18506, !noalias !18507
  %i.k = icmp eq i64 %i.j, 1, !dbg !18512
  br i1 %i.k, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit, !dbg !18512

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !637, !DIExpression(), !18513)
  fence acquire, !dbg !18515
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsar2VadbF9t7_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #12
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit unwind label %bb.h, !dbg !18516

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !18471 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18517), !dbg !18471
    #dbg_value(ptr %i.l, !7437, !DIExpression(), !18520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18522), !dbg !18525
    #dbg_value(ptr %i.l, !7451, !DIExpression(), !18526)
  %i.m = load ptr, ptr %i.l, align 8, !dbg !18528, !alias.scope !18529, !noundef !279 ; 2 uses
  %i.n = icmp eq ptr %i.m, null, !dbg !18528
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit4, label %bb.f, !dbg !18528

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %i.l, !7463, !DIExpression(), !18530)
    #dbg_value(ptr %i.l, !7471, !DIExpression(), !18532)
    #dbg_value(i64 1, !7476, !DIExpression(), !18534)
    #dbg_value(i8 1, !7480, !DIExpression(), !18534)
    #dbg_value(i64 1, !7483, !DIExpression(), !18536)
    #dbg_value(i8 1, !7487, !DIExpression(), !18536)
    #dbg_value(ptr %i.m, !7479, !DIExpression(), !18538)
    #dbg_value(ptr %i.m, !7486, !DIExpression(), !18536)
  %i.o = atomicrmw sub ptr %i.m, i64 1 release, align 8, !dbg !18539, !noalias !18540
  %i.p = icmp eq i64 %i.o, 1, !dbg !18545
  br i1 %i.p, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit4, !dbg !18545

bb.g:                                             ; preds = %bb.f
    #dbg_value(i8 2, !637, !DIExpression(), !18546)
  fence acquire, !dbg !18548
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsar2VadbF9t7_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #12, !dbg !18549
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit4, !dbg !18549

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECskigd7sy4fqX_10quinn_perf.exit, %bb.f, %bb.g
  ret void, !dbg !18471

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !18471
  unreachable, !dbg !18471

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.f, !dbg !18471
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !18550 {
bb.a:
    #dbg_value(ptr %0, !18559, !DIExpression(), !18560)
    #dbg_value(ptr %0, !18561, !DIExpression(), !18565)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !18567
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !18568

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !18569, !DIExpression(), !18574)
    #dbg_value(ptr undef, !18569, !DIExpression(DW_OP_deref), !18574)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !18576
  br label %bb.c, !dbg !18577

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !18578
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !18579 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !18597, !DIExpression(), !18600)
    #dbg_value(ptr %1, !18598, !DIExpression(), !18600)
    #dbg_value(ptr %2, !18599, !DIExpression(), !18600)
    #dbg_declare(ptr poison, !18601, !DIExpression(), !18616)
    #dbg_value(ptr poison, !18627, !DIExpression(), !18635)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !18637
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !18638
  br i1 %i.c, label %bb.b, label %bb.o, !dbg !18638

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !18639
    #dbg_value(ptr %0, !18625, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !18640)
    #dbg_value(ptr %0, !18615, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !18641)
    #dbg_value(ptr %0, !18642, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !18651)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !18653 ; 2 uses
    #dbg_declare(ptr poison, !18654, !DIExpression(), !18662)
    #dbg_value(ptr %i.d, !18659, !DIExpression(), !18664)
    #dbg_value(ptr %i.d, !18665, !DIExpression(), !18671)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18673, !noalias !18674
    #dbg_value(i32 2, !18670, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !18671)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !18677, !noalias !18674
  store i32 2, ptr %i.d, align 8, !dbg !18678, !noalias !18674
  %i.e = load i32, ptr %i.a, align 8, !dbg !18673, !range !9897, !noalias !18674, !noundef !279
  %i.f = icmp eq i32 %i.e, 1, !dbg !18679
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !18679, !prof !18680

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.d unwind label %bb.e, !dbg !18681, !noalias !18674

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.x, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op, !dbg !18600

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #13
          to label %common.resume unwind label %bb.f, !dbg !18682, !noalias !18674

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !18662, !noalias !18674
  unreachable, !dbg !18662

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !18683
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !18683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18682, !noalias !18674
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18684), !dbg !18687
    #dbg_value(ptr %1, !18688, !DIExpression(), !18695)
  %i.j = load i64, ptr %1, align 8, !dbg !18697, !range !563, !alias.scope !18684, !noundef !279
  %i.k = icmp eq i64 %i.j, 0, !dbg !18697
  br i1 %i.k, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !18697

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18697 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18698), !dbg !18697
    #dbg_value(ptr %i.l, !9901, !DIExpression(), !18701)
  %i.m = load i64, ptr %i.l, align 8, !dbg !18703, !alias.scope !18704, !noundef !279
  %i.n = icmp eq i64 %i.m, 0, !dbg !18703
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.h, !dbg !18703

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18703
  %.val.i.i = load ptr, ptr %i.o, align 8, !dbg !18703, !alias.scope !18704, !noundef !279 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !18703
  %.val1.i.i = load ptr, ptr %i.p, align 8, !dbg !18703, !alias.scope !18704 ; 6 uses
    #dbg_value(ptr poison, !9912, !DIExpression(), !18705)
    #dbg_value(ptr poison, !9922, !DIExpression(), !18707)
  %i.q = icmp eq ptr %.val.i.i, null, !dbg !18709
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !18709

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr poison, !9933, !DIExpression(), !18710)
    #dbg_value(ptr poison, !9943, !DIExpression(), !18712)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.r = load ptr, ptr %.val1.i.i, align 8, !dbg !18714, !invariant.load !279, !noalias !18704 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null, !dbg !18714
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !18714

bb.j:                                             ; preds = %bb.i
  invoke void %i.r(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !dbg !18714, !noalias !18704

bb.k:                                             ; preds = %bb.j, %bb.i
    #dbg_value(ptr poison, !9952, !DIExpression(), !18715)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18717)
    #dbg_value(ptr %.val1.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18717)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18718)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18720)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18722)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18724)
    #dbg_value(ptr %.val1.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18718)
    #dbg_value(ptr %.val1.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18720)
    #dbg_value(ptr %.val1.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18722)
    #dbg_value(ptr %.val1.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18724)
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !18726
  %i.t = load i64, ptr %i.s, align 8, !dbg !18726, !range !3062, !invariant.load !279, !noalias !18704 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18727)
    #dbg_value(i64 %i.t, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18727)
  %i.u = icmp eq i64 %i.t, 0, !dbg !18728
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.l, !dbg !18728

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !18726
  %i.w = load i64, ptr %i.v, align 8, !dbg !18729, !range !3066, !invariant.load !279, !noalias !18704
    #dbg_value(i64 %i.w, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18727)
    #dbg_value(ptr %.val.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18718)
    #dbg_value(ptr %.val.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18720)
    #dbg_value(ptr %.val.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18722)
    #dbg_value(ptr %.val.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18724)
    #dbg_value(ptr %.val.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18717)
    #dbg_value(ptr poison, !3067, !DIExpression(), !18730)
    #dbg_value(ptr poison, !3079, !DIExpression(), !18732)
    #dbg_value(ptr %.val.i.i, !3075, !DIExpression(), !18730)
    #dbg_value(ptr %.val.i.i, !3084, !DIExpression(), !18732)
    #dbg_value(ptr %.val.i.i, !3088, !DIExpression(), !18734)
    #dbg_value(ptr %.val.i.i, !3097, !DIExpression(), !18736)
    #dbg_value(i64 %i.w, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18730)
    #dbg_value(i64 %i.w, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18732)
    #dbg_value(i64 %i.w, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18734)
    #dbg_value(i64 %i.w, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18736)
    #dbg_value(i64 %i.t, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18730)
    #dbg_value(i64 %i.t, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18732)
    #dbg_value(i64 %i.t, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18734)
    #dbg_value(i64 %i.t, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18736)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #14, !dbg !18738, !noalias !18704
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !18739

bb.m:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !18740)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18742)
    #dbg_value(ptr %.val1.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18742)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18743)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18745)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18747)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18749)
    #dbg_value(ptr %.val1.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18743)
    #dbg_value(ptr %.val1.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18745)
    #dbg_value(ptr %.val1.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18747)
    #dbg_value(ptr %.val1.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18749)
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !18751
  %i.z = load i64, ptr %i.y, align 8, !dbg !18751, !range !3062, !invariant.load !279, !noalias !18704 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18752)
    #dbg_value(i64 %i.z, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18752)
  %i.aa = icmp eq i64 %i.z, 0, !dbg !18753
  br i1 %i.aa, label %.body, label %bb.n, !dbg !18753

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !18751
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !18754, !range !3066, !invariant.load !279, !noalias !18704
    #dbg_value(i64 %i.ac, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18752)
    #dbg_value(ptr %.val.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18743)
    #dbg_value(ptr %.val.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18745)
    #dbg_value(ptr %.val.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18747)
    #dbg_value(ptr %.val.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18749)
    #dbg_value(ptr %.val.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18742)
    #dbg_value(ptr poison, !3067, !DIExpression(), !18755)
    #dbg_value(ptr poison, !3079, !DIExpression(), !18757)
    #dbg_value(ptr %.val.i.i, !3075, !DIExpression(), !18755)
    #dbg_value(ptr %.val.i.i, !3084, !DIExpression(), !18757)
    #dbg_value(ptr %.val.i.i, !3088, !DIExpression(), !18759)
    #dbg_value(ptr %.val.i.i, !3097, !DIExpression(), !18761)
    #dbg_value(i64 %i.ac, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18755)
    #dbg_value(i64 %i.ac, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18757)
    #dbg_value(i64 %i.ac, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18759)
    #dbg_value(i64 %i.ac, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18761)
    #dbg_value(i64 %i.z, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18755)
    #dbg_value(i64 %i.z, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18757)
    #dbg_value(i64 %i.z, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18759)
    #dbg_value(i64 %i.z, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18761)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #14, !dbg !18763, !noalias !18704
  br label %.body, !dbg !18764

bb.o:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !18765

.body:                                            ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !18687
  br label %common.resume, !dbg !18766
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(ptr poison, !3067, !DIExpression(), !18991)
    #dbg_value(ptr poison, !3079, !DIExpression(), !18993)
    #dbg_value(ptr %i.j, !3075, !DIExpression(), !18991)
    #dbg_value(ptr %i.j, !3084, !DIExpression(), !18993)
    #dbg_value(ptr %i.j, !3088, !DIExpression(), !18995)
    #dbg_value(ptr %i.j, !3097, !DIExpression(), !18997)
    #dbg_value(i64 %i.x, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18991)
    #dbg_value(i64 %i.x, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18993)
    #dbg_value(i64 %i.x, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18995)
    #dbg_value(i64 %i.x, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18997)
    #dbg_value(i64 %i.u, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18991)
    #dbg_value(i64 %i.u, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18993)
    #dbg_value(i64 %i.u, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18995)
    #dbg_value(i64 %i.u, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18997)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !18999
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !19000

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !18950

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !18559, !DIExpression(), !19001)
    #dbg_value(ptr %0, !18561, !DIExpression(), !19003)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !19005
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !19006

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !18569, !DIExpression(DW_OP_deref), !19007)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !19009
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !19010

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.l, %bb.m
  ret void, !dbg !19011

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !18866, !DIExpression(), !18869)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !19012
  call void @_RNvMs6_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef), !dbg !19013
  br label %bb.l, !dbg !19014
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !19015 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
    #dbg_value(ptr %0, !19018, !DIExpression(), !19019)
    #dbg_value(ptr poison, !19020, !DIExpression(), !19061)
    #dbg_value(ptr poison, !19063, !DIExpression(), !19066)
    #dbg_value(ptr poison, !19063, !DIExpression(), !19068)
    #dbg_value(ptr poison, !19063, !DIExpression(), !19070)
    #dbg_declare(ptr %i.h, !19029, !DIExpression(), !19072)
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0), !dbg !19073
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit
    i8 3, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCskigd7sy4fqX_10quinn_perf.exit.thread10
  ], !dbg !19074

default.unreachable:                              ; preds = %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11poll_futureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !19027, !DIExpression(), !19075)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !19076
    #dbg_value(ptr poison, !19077, !DIExpression(), !19086)
    #dbg_value(ptr @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task5waker12WAKER_VTABLE, !19084, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19088)
    #dbg_value(ptr %0, !19084, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19088)
  store ptr @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8, !dbg !19089
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !19089
  store ptr %0, ptr %i.j, align 8, !dbg !19089
    #dbg_value(ptr %i.h, !19044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19090)
    #dbg_value(ptr %i.h, !19091, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19118)
    #dbg_value(ptr %i.h, !19139, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19182)
    #dbg_value(ptr %i.h, !19163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19183)
    #dbg_value(ptr %i.h, !19170, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19184)
    #dbg_value(ptr %i.h, !19044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19090)
    #dbg_value(ptr %i.h, !19091, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19118)
    #dbg_value(ptr %i.h, !19139, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19182)
    #dbg_value(ptr %i.h, !19163, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19183)
    #dbg_value(ptr %i.h, !19170, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19184)
    #dbg_value(ptr null, !19044, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19090)
    #dbg_value(ptr null, !19091, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19118)
    #dbg_value(ptr null, !19139, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19182)
    #dbg_value(ptr null, !19163, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19183)
    #dbg_value(ptr null, !19170, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19184)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !19185 ; 6 uses
    #dbg_value(ptr poison, !19186, !DIExpression(), !19212)
    #dbg_value(ptr poison, !19226, !DIExpression(), !19244)
    #dbg_value(ptr poison, !19245, !DIExpression(), !19253)
    #dbg_declare(ptr poison, !19140, !DIExpression(DW_OP_LLVM_fragment, 128, 192), !19255)
    #dbg_value(ptr poison, !19256, !DIExpression(), !19263)
    #dbg_value(ptr poison, !19270, !DIExpression(), !19274)
    #dbg_value(ptr poison, !19275, !DIExpression(), !19283)
    #dbg_value(ptr poison, !19285, !DIExpression(), !19293)
    #dbg_value(ptr poison, !19298, !DIExpression(), !19300)
    #dbg_value(ptr %i.k, !19169, !DIExpression(), !19184)
    #dbg_value(ptr %i.k, !19163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19183)
    #dbg_value(ptr %i.k, !19139, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19182)
    #dbg_value(ptr %i.k, !19091, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19118)
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !19301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !19326, !noalias !19352
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8, !dbg !19359
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !19359
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8, !dbg !19359
    #dbg_value(ptr %i.k, !19140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19366)
    #dbg_value(ptr %i.h, !19140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19366)
    #dbg_declare(ptr poison, !19346, !DIExpression(DW_OP_LLVM_fragment, 64, 256), !19367)
    #dbg_declare(ptr poison, !19271, !DIExpression(DW_OP_LLVM_fragment, 64, 256), !19368)
    #dbg_value(ptr undef, !19270, !DIExpression(), !19274)
    #dbg_value(ptr undef, !19256, !DIExpression(), !19263)
    #dbg_value(ptr %i.k, !19271, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19369)
    #dbg_value(ptr %i.k, !19346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19370)
  store ptr %i.h, ptr %i.g, align 8, !dbg !19301, !noalias !19371
    #dbg_declare(ptr poison, !19333, !DIExpression(), !19372)
    #dbg_declare(ptr poison, !19332, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 256), !19373)
    #dbg_declare(ptr poison, !19348, !DIExpression(), !19374)
    #dbg_declare(ptr poison, !19347, !DIExpression(), !19374)
    #dbg_value(ptr poison, !19332, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !19375)
    #dbg_value(ptr %i.k, !19334, !DIExpression(), !19376)
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !dbg !19377, !noalias !19352

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
    #dbg_value(ptr poison, !19378, !DIExpression(), !19386)
    #dbg_value(ptr poison, !19388, !DIExpression(), !19392)
    #dbg_value(ptr %i.k, !19394, !DIExpression(), !19397)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !19399, !noalias !19352
  store i32 2, ptr %i.f, align 8, !dbg !19399, !noalias !19352
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !dbg !19400, !noalias !19352

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !19401, !noalias !19352
  unreachable, !dbg !19401

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !19402, !noalias !19352
  %i.o = extractvalue { ptr, i32 } %i.m, 0, !dbg !19403
    #dbg_value(ptr undef, !19275, !DIExpression(), !19283)
    #dbg_value(ptr %i.o, !19280, !DIExpression(), !19283)
  %i.p = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !dbg !19404, !noalias !19371 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !19405, !noalias !19371
  unreachable, !dbg !19405

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !19406, !noalias !19352
    #dbg_value(ptr %i.h, !19140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19366)
    #dbg_value(!DIArgList(i64 0, i1 %i.l), !19140, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !19366)
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64, !dbg !19403
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr, !dbg !19403
    #dbg_value(ptr null, !19171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19407)
    #dbg_value(ptr %i.r, !19171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19407)
  br label %bb.h, !dbg !19408

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0, !dbg !19404 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1, !dbg !19404 ; 2 uses
    #dbg_value(ptr %i.t, !19140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19366)
    #dbg_value(ptr %i.s, !19140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19366)
    #dbg_value(ptr %i.s, !19171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19407)
    #dbg_value(ptr %i.t, !19171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19407)
  %.not.i.i = icmp eq ptr %i.s, null, !dbg !19409
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !19408, !prof !19410

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.s, !19177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19411)
    #dbg_value(ptr %i.t, !19177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19411)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !19412
  %i.v = load i64, ptr %i.u, align 8, !dbg !19412, !range !19413, !noalias !19371, !noundef !279
    #dbg_value(i64 %i.v, !19173, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19414)
    #dbg_value(ptr %i.s, !19173, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19414)
    #dbg_value(ptr %i.t, !19173, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19414)
  br label %bb.i, !dbg !19415

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64, !dbg !19409
  %i.y = trunc i64 %i.x to i1, !dbg !19409
  br i1 %i.y, label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11poll_futureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit.i, label %bb.i, !dbg !19408

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ], !dbg !19407
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ], !dbg !19407
    #dbg_value(ptr %i.z, !19173, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19414)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !19173, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19414)
    #dbg_value(i64 %.sroa.06.0.i.i, !19173, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19414)
    #dbg_value(ptr %i.k, !19242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19416)
    #dbg_value(ptr %i.k, !19235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19417)
    #dbg_value(i64 %.sroa.06.0.i.i, !19242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19416)
    #dbg_value(i64 %.sroa.06.0.i.i, !19235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19417)
    #dbg_value(ptr %i.z, !19235, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19417)
    #dbg_value(ptr %i.z, !19242, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19416)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !19235, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19417)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !19242, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19416)
    #dbg_value(ptr %i.k, !19236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19418)
    #dbg_value(i64 %.sroa.06.0.i.i, !19236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19418)
    #dbg_value(ptr %i.z, !19236, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19418)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !19236, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19418)
    #dbg_declare(ptr poison, !19419, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !19428)
    #dbg_declare(ptr poison, !19227, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !19430)
    #dbg_value(ptr undef, !19226, !DIExpression(), !19244)
    #dbg_value(ptr undef, !19186, !DIExpression(), !19212)
    #dbg_value(ptr %i.k, !19227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19431)
    #dbg_value(ptr %i.k, !19419, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19432)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !19433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !19433, !noalias !19449
  store i64 %.sroa.06.0.i.i, ptr %i.aa, align 8, !dbg !19454, !noalias !19371
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !19454
  store ptr %i.z, ptr %.sroa.10.8..sroa_idx.i.i, align 8, !dbg !19454, !noalias !19371
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !19454
  store ptr %.sroa.6.sroa.5.0.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i, align 8, !dbg !19454, !noalias !19371
    #dbg_declare(ptr poison, !19447, !DIExpression(), !19460)
    #dbg_declare(ptr poison, !19446, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 192), !19461)
    #dbg_declare(ptr poison, !19425, !DIExpression(), !19462)
    #dbg_declare(ptr poison, !19424, !DIExpression(), !19462)
    #dbg_value(ptr poison, !19446, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !19463)
    #dbg_declare(ptr poison, !19440, !DIExpression(), !19464)
    #dbg_value(ptr %i.k, !19439, !DIExpression(), !19465)
  store i32 1, ptr %i.e, align 8, !dbg !19433, !noalias !19449
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %.thread67.i.i unwind label %bb.j, !dbg !19466, !noalias !19371

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null, !dbg !19467
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0, !dbg !19467
    #dbg_value(ptr undef, !19245, !DIExpression(), !19253)
    #dbg_value(ptr %i.ac, !19250, !DIExpression(), !19253)
  %i.ad = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ac)
          to label %bb.l unwind label %bb.k, !dbg !19468, !noalias !19371 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !19469, !noalias !19371
  unreachable, !dbg !19469

.thread67.i.i:                                    ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !19470, !noalias !19449
    #dbg_value(i64 %.sroa.06.0.i.i, !19236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19418)
    #dbg_value(ptr %i.k, !19236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19418)
    #dbg_value(ptr null, !19179, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19471)
    #dbg_value(ptr undef, !19179, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19471)
    #dbg_value(ptr undef, !19298, !DIExpression(), !19300)
    #dbg_value(ptr undef, !19285, !DIExpression(), !19293)
  br label %bb.x, !dbg !19472

bb.l:                                             ; preds = %bb.j
  %i.af = extractvalue { ptr, ptr } %i.ad, 0, !dbg !19468 ; 4 uses
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1, !dbg !19468 ; 6 uses
    #dbg_value(ptr %i.ag, !19236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19418)
    #dbg_value(ptr %i.af, !19236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19418)
    #dbg_value(ptr %i.af, !19179, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19471)
    #dbg_value(ptr %i.ag, !19179, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19471)
    #dbg_value(ptr undef, !19298, !DIExpression(), !19300)
    #dbg_value(ptr undef, !19285, !DIExpression(), !19293)
  %.not34.i.i = icmp eq ptr %i.af, null, !dbg !19473
  br i1 %.not34.i.i, label %bb.x, label %bb.m, !dbg !19472

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr poison, !18939, !DIExpression(), !19474)
    #dbg_value(ptr poison, !9943, !DIExpression(), !19476)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !19478, !invariant.load !279, !noalias !19371 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null, !dbg !19478
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n, !dbg !19478

bb.n:                                             ; preds = %bb.m
  invoke void %i.ah(ptr noundef nonnull %i.af)
          to label %bb.o unwind label %bb.q, !dbg !19478, !noalias !19371

bb.o:                                             ; preds = %bb.n, %bb.m
    #dbg_value(ptr poison, !9952, !DIExpression(), !19479)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19481)
    #dbg_value(ptr %i.ag, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19481)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19482)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19484)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19486)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19488)
    #dbg_value(ptr %i.ag, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19482)
    #dbg_value(ptr %i.ag, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19484)
    #dbg_value(ptr %i.ag, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19486)
    #dbg_value(ptr %i.ag, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19488)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !19490
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !19490, !range !3062, !invariant.load !279, !noalias !19371 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19491)
    #dbg_value(i64 %i.aj, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19491)
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !19492
  br i1 %i.ak, label %bb.x, label %bb.p, !dbg !19492

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !19490
  %i.am = load i64, ptr %i.al, align 8, !dbg !19493, !range !3066, !invariant.load !279, !noalias !19371
    #dbg_value(i64 %i.am, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19491)
    #dbg_value(ptr %i.af, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19482)
    #dbg_value(ptr %i.af, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19484)
    #dbg_value(ptr %i.af, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19486)
    #dbg_value(ptr %i.af, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19488)
    #dbg_value(ptr %i.af, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19481)
    #dbg_value(ptr poison, !3067, !DIExpression(), !19494)
    #dbg_value(ptr poison, !3079, !DIExpression(), !19496)
    #dbg_value(ptr %i.af, !3075, !DIExpression(), !19494)
    #dbg_value(ptr %i.af, !3084, !DIExpression(), !19496)
    #dbg_value(ptr %i.af, !3088, !DIExpression(), !19498)
    #dbg_value(ptr %i.af, !3097, !DIExpression(), !19500)
    #dbg_value(i64 %i.am, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19494)
    #dbg_value(i64 %i.am, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19496)
    #dbg_value(i64 %i.am, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19498)
    #dbg_value(i64 %i.am, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19500)
    #dbg_value(i64 %i.aj, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19494)
    #dbg_value(i64 %i.aj, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19496)
    #dbg_value(i64 %i.aj, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19498)
    #dbg_value(i64 %i.aj, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19500)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, -9223372036854775808) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #14, !dbg !19502, !noalias !19371
  br label %bb.x, !dbg !19503

bb.q:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !19504)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19506)
    #dbg_value(ptr %i.ag, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19506)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19507)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19509)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19511)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19513)
    #dbg_value(ptr %i.ag, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19507)
    #dbg_value(ptr %i.ag, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19509)
    #dbg_value(ptr %i.ag, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19511)
    #dbg_value(ptr %i.ag, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19513)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !19515
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !19515, !range !3062, !invariant.load !279, !noalias !19371 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19516)
    #dbg_value(i64 %i.ap, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19516)
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !19517
  br i1 %i.aq, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i, label %bb.r, !dbg !19517

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !19515
  %i.as = load i64, ptr %i.ar, align 8, !dbg !19518, !range !3066, !invariant.load !279, !noalias !19371
    #dbg_value(i64 %i.as, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19516)
    #dbg_value(ptr %i.af, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19507)
    #dbg_value(ptr %i.af, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19509)
    #dbg_value(ptr %i.af, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19511)
    #dbg_value(ptr %i.af, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19513)
    #dbg_value(ptr %i.af, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19506)
    #dbg_value(ptr poison, !3067, !DIExpression(), !19519)
    #dbg_value(ptr poison, !3079, !DIExpression(), !19521)
    #dbg_value(ptr %i.af, !3075, !DIExpression(), !19519)
    #dbg_value(ptr %i.af, !3084, !DIExpression(), !19521)
    #dbg_value(ptr %i.af, !3088, !DIExpression(), !19523)
    #dbg_value(ptr %i.af, !3097, !DIExpression(), !19525)
    #dbg_value(i64 %i.as, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19519)
    #dbg_value(i64 %i.as, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19521)
    #dbg_value(i64 %i.as, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19523)
    #dbg_value(i64 %i.as, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19525)
    #dbg_value(i64 %i.ap, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19519)
    #dbg_value(i64 %i.ap, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19521)
    #dbg_value(i64 %i.ap, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19523)
    #dbg_value(i64 %i.ap, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19525)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, -9223372036854775808) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #14, !dbg !19527, !noalias !19371
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i, !dbg !19528

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i: ; preds = %bb.r, %bb.q
  resume { ptr, i32 } %i.an, !dbg !19478

bb.s:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !19529 ; 2 uses
    #dbg_value(ptr poison, !19530, !DIExpression(), !19565)
    #dbg_value(ptr %i.at, !19582, !DIExpression(), !19586)
    #dbg_value(ptr %i.at, !19587, !DIExpression(), !19591)
    #dbg_value(ptr %i.at, !19578, !DIExpression(), !19593)
    #dbg_value(ptr %i.at, !19572, !DIExpression(), !19594)
    #dbg_value(ptr %i.at, !19573, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19595)
    #dbg_value(ptr undef, !19596, !DIExpression(), !19603)
    #dbg_value(ptr %i.at, !19601, !DIExpression(), !19605)
    #dbg_value(ptr %i.at, !19606, !DIExpression(), !19615)
    #dbg_declare(ptr poison, !19612, !DIExpression(), !19617)
    #dbg_declare(ptr poison, !19611, !DIExpression(), !19617)
    #dbg_value(ptr %i.at, !19618, !DIExpression(), !19626)
    #dbg_declare(ptr poison, !19623, !DIExpression(), !19628)
    #dbg_value(ptr poison, !19629, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !19635)
end_hunk_1
begin_hunk_2_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(i64 %i.v, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19935)
    #dbg_value(i64 %i.v, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19937)
    #dbg_value(i64 %i.s, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19931)
    #dbg_value(i64 %i.s, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19933)
    #dbg_value(i64 %i.s, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19935)
    #dbg_value(i64 %i.s, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19937)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #14, !dbg !19939
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !19940

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !19941)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19943)
    #dbg_value(ptr %i.o, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19943)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19944)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19946)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19948)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19950)
    #dbg_value(ptr %i.o, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19944)
    #dbg_value(ptr %i.o, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19946)
    #dbg_value(ptr %i.o, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19948)
    #dbg_value(ptr %i.o, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19950)
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !19952
  %i.y = load i64, ptr %i.x, align 8, !dbg !19952, !range !3062, !invariant.load !279 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19953)
    #dbg_value(i64 %i.y, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19953)
  %i.z = icmp eq i64 %i.y, 0, !dbg !19954
  br i1 %i.z, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.n, !dbg !19954

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !19952
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !19955, !range !3066, !invariant.load !279
    #dbg_value(i64 %i.ab, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19953)
    #dbg_value(ptr %i.n, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19944)
    #dbg_value(ptr %i.n, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19946)
    #dbg_value(ptr %i.n, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19948)
    #dbg_value(ptr %i.n, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19950)
    #dbg_value(ptr %i.n, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19943)
    #dbg_value(ptr poison, !3067, !DIExpression(), !19956)
    #dbg_value(ptr poison, !3079, !DIExpression(), !19958)
    #dbg_value(ptr %i.n, !3075, !DIExpression(), !19956)
    #dbg_value(ptr %i.n, !3084, !DIExpression(), !19958)
    #dbg_value(ptr %i.n, !3088, !DIExpression(), !19960)
    #dbg_value(ptr %i.n, !3097, !DIExpression(), !19962)
    #dbg_value(i64 %i.ab, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19956)
    #dbg_value(i64 %i.ab, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19958)
    #dbg_value(i64 %i.ab, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19960)
    #dbg_value(i64 %i.ab, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19962)
    #dbg_value(i64 %i.y, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19956)
    #dbg_value(i64 %i.y, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19958)
    #dbg_value(i64 %i.y, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19960)
    #dbg_value(i64 %i.y, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19962)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #14, !dbg !19964
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !19965

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w, !dbg !19915

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.noexc10, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
    #dbg_value(ptr poison, !19966, !DIExpression(), !19987)
    #dbg_declare(ptr %i.b, !19973, !DIExpression(), !19989)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !19990
    #dbg_value(ptr %0, !19991, !DIExpression(), !19997)
  store ptr %0, ptr %i.b, align 8, !dbg !19999
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !20000
  %i.ad = call noundef ptr @_RNvXs5_NtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler14current_threadINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !dbg !20001
  %.not.i = icmp eq ptr %i.ad, null, !dbg !20000
  %..i = select i1 %.not.i, i64 1, i64 2, !dbg !20002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20003
    #dbg_value(i64 %..i, !19746, !DIExpression(), !20004)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i), !dbg !20005
  br i1 %i.ae, label %bb.o, label %bb.p, !dbg !20006

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !20007, !DIExpression(DW_OP_deref), !20010)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !20012
  br label %bb.p, !dbg !20013

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !20014
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20015 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !20018, !DIExpression(), !20019)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !20020
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !20021

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !18559, !DIExpression(), !20022)
    #dbg_value(ptr %0, !18561, !DIExpression(), !20024)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !20026
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !20027

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !18569, !DIExpression(DW_OP_deref), !20028)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !20030
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !20031

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !20032, !DIExpression(), !20035)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !20037 ; 2 uses
    #dbg_value(ptr poison, !19530, !DIExpression(), !20038)
    #dbg_value(ptr %i.e, !19582, !DIExpression(), !20043)
    #dbg_value(ptr %i.e, !19587, !DIExpression(), !20044)
    #dbg_value(ptr %i.e, !19578, !DIExpression(), !20046)
    #dbg_value(ptr %i.e, !19572, !DIExpression(), !20047)
    #dbg_value(ptr %i.e, !19573, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20048)
    #dbg_value(ptr undef, !19596, !DIExpression(), !20049)
    #dbg_value(ptr %i.e, !19601, !DIExpression(), !20051)
    #dbg_value(ptr %i.e, !19606, !DIExpression(), !20052)
    #dbg_declare(ptr poison, !19612, !DIExpression(), !20054)
    #dbg_declare(ptr poison, !19611, !DIExpression(), !20054)
    #dbg_value(ptr %i.e, !19618, !DIExpression(), !20055)
    #dbg_declare(ptr poison, !19623, !DIExpression(), !20057)
    #dbg_value(ptr poison, !19629, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !20058)
    #dbg_value(ptr %i.e, !19637, !DIExpression(), !20060)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20062
  store i32 2, ptr %i.a, align 8, !dbg !20062
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !20063

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !20064
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !20064
    #dbg_value(ptr undef, !19530, !DIExpression(), !20038)
    #dbg_value(ptr %i.g, !19562, !DIExpression(), !20038)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !20065 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !20066
  unreachable, !dbg !20066

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20067
    #dbg_value(ptr %i.e, !19573, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20048)
    #dbg_value(ptr undef, !19573, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20048)
    #dbg_value(ptr poison, !19583, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20068)
    #dbg_value(ptr poison, !19649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20069)
    #dbg_value(ptr poison, !19583, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20068)
    #dbg_value(ptr poison, !19649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20069)
    #dbg_value(i64 poison, !19654, !DIExpression(), !20069)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !20071

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !20065
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !20065 ; 2 uses
    #dbg_value(ptr %i.j, !19573, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20048)
    #dbg_value(ptr %i.k, !19573, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20048)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !19583, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20068)
    #dbg_value(ptr %i.j, !19649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20069)
    #dbg_value(ptr %i.k, !19583, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20068)
    #dbg_value(ptr %i.k, !19649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20069)
    #dbg_value(i64 poison, !19654, !DIExpression(), !20069)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !20072

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !20069
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !20069
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !20073
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !20073, !range !19413, !noundef !279
    #dbg_value(i64 %.sroa.01.0.i, !19590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20044)
    #dbg_value(ptr %.sroa.6.0.i, !19590, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20044)
    #dbg_value(ptr %.sroa.8.0.i, !19590, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20044)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20074
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !20074
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !20074
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !20074
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !20074
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !20074
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !20074
  store i32 1, ptr %i.b, align 8, !dbg !20074
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !20075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20076
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !20077
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !20077

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !20078
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !20079 {
bb.a:
    #dbg_value(ptr %0, !20087, !DIExpression(), !20088)
    #dbg_value(ptr %0, !20089, !DIExpression(), !20093)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !20095
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !20096

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !20097, !DIExpression(), !20102)
    #dbg_value(ptr undef, !20097, !DIExpression(DW_OP_deref), !20102)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !20104
  br label %bb.c, !dbg !20105

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !20106
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20107 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !20112, !DIExpression(), !20115)
    #dbg_value(ptr %1, !20113, !DIExpression(), !20115)
    #dbg_value(ptr %2, !20114, !DIExpression(), !20115)
    #dbg_declare(ptr poison, !20116, !DIExpression(), !20127)
    #dbg_value(ptr poison, !20137, !DIExpression(), !20144)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !20146
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !20147
  br i1 %i.c, label %bb.b, label %bb.o, !dbg !20147

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !20148
    #dbg_value(ptr %0, !20135, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !20149)
    #dbg_value(ptr %0, !20126, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !20150)
    #dbg_value(ptr %0, !20151, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !20159)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !20161 ; 2 uses
    #dbg_declare(ptr poison, !20162, !DIExpression(), !20170)
    #dbg_value(ptr %i.d, !20167, !DIExpression(), !20172)
    #dbg_value(ptr %i.d, !20173, !DIExpression(), !20179)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20181, !noalias !20182
    #dbg_value(i32 2, !20178, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !20179)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !20185, !noalias !20182
  store i32 2, ptr %i.d, align 8, !dbg !20186, !noalias !20182
  %i.e = load i32, ptr %i.a, align 8, !dbg !20181, !range !9897, !noalias !20182, !noundef !279
  %i.f = icmp eq i32 %i.e, 1, !dbg !20187
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !20187, !prof !18680

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.d unwind label %bb.e, !dbg !20188, !noalias !20182

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.x, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op, !dbg !20115

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #13
          to label %common.resume unwind label %bb.f, !dbg !20189, !noalias !20182

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !20170, !noalias !20182
  unreachable, !dbg !20170

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !20190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !20190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20189, !noalias !20182
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20191), !dbg !20194
    #dbg_value(ptr %1, !18688, !DIExpression(), !20195)
  %i.j = load i64, ptr %1, align 8, !dbg !20197, !range !563, !alias.scope !20191, !noundef !279
  %i.k = icmp eq i64 %i.j, 0, !dbg !20197
  br i1 %i.k, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !20197

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20197 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20198), !dbg !20197
    #dbg_value(ptr %i.l, !9901, !DIExpression(), !20201)
  %i.m = load i64, ptr %i.l, align 8, !dbg !20203, !alias.scope !20204, !noundef !279
  %i.n = icmp eq i64 %i.m, 0, !dbg !20203
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.h, !dbg !20203

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20203
  %.val.i.i = load ptr, ptr %i.o, align 8, !dbg !20203, !alias.scope !20204, !noundef !279 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !20203
  %.val1.i.i = load ptr, ptr %i.p, align 8, !dbg !20203, !alias.scope !20204 ; 6 uses
    #dbg_value(ptr poison, !9912, !DIExpression(), !20205)
    #dbg_value(ptr poison, !9922, !DIExpression(), !20207)
  %i.q = icmp eq ptr %.val.i.i, null, !dbg !20209
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !20209

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr poison, !9933, !DIExpression(), !20210)
    #dbg_value(ptr poison, !9943, !DIExpression(), !20212)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.r = load ptr, ptr %.val1.i.i, align 8, !dbg !20214, !invariant.load !279, !noalias !20204 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null, !dbg !20214
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !20214

bb.j:                                             ; preds = %bb.i
  invoke void %i.r(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !dbg !20214, !noalias !20204

bb.k:                                             ; preds = %bb.j, %bb.i
    #dbg_value(ptr poison, !9952, !DIExpression(), !20215)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20217)
    #dbg_value(ptr %.val1.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20217)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20218)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20220)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20222)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20224)
    #dbg_value(ptr %.val1.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20218)
    #dbg_value(ptr %.val1.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20220)
    #dbg_value(ptr %.val1.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20222)
    #dbg_value(ptr %.val1.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20224)
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !20226
  %i.t = load i64, ptr %i.s, align 8, !dbg !20226, !range !3062, !invariant.load !279, !noalias !20204 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20227)
    #dbg_value(i64 %i.t, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20227)
  %i.u = icmp eq i64 %i.t, 0, !dbg !20228
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.l, !dbg !20228

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !20226
  %i.w = load i64, ptr %i.v, align 8, !dbg !20229, !range !3066, !invariant.load !279, !noalias !20204
    #dbg_value(i64 %i.w, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20227)
    #dbg_value(ptr %.val.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20218)
    #dbg_value(ptr %.val.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20220)
    #dbg_value(ptr %.val.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20222)
    #dbg_value(ptr %.val.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20224)
    #dbg_value(ptr %.val.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20217)
    #dbg_value(ptr poison, !3067, !DIExpression(), !20230)
    #dbg_value(ptr poison, !3079, !DIExpression(), !20232)
    #dbg_value(ptr %.val.i.i, !3075, !DIExpression(), !20230)
    #dbg_value(ptr %.val.i.i, !3084, !DIExpression(), !20232)
    #dbg_value(ptr %.val.i.i, !3088, !DIExpression(), !20234)
    #dbg_value(ptr %.val.i.i, !3097, !DIExpression(), !20236)
    #dbg_value(i64 %i.w, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20230)
    #dbg_value(i64 %i.w, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20232)
    #dbg_value(i64 %i.w, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20234)
    #dbg_value(i64 %i.w, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20236)
    #dbg_value(i64 %i.t, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20230)
    #dbg_value(i64 %i.t, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20232)
    #dbg_value(i64 %i.t, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20234)
    #dbg_value(i64 %i.t, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20236)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #14, !dbg !20238, !noalias !20204
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !20239

bb.m:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !20240)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20242)
    #dbg_value(ptr %.val1.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20242)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20243)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20245)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20247)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20249)
    #dbg_value(ptr %.val1.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20243)
    #dbg_value(ptr %.val1.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20245)
    #dbg_value(ptr %.val1.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20247)
    #dbg_value(ptr %.val1.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20249)
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !20251
  %i.z = load i64, ptr %i.y, align 8, !dbg !20251, !range !3062, !invariant.load !279, !noalias !20204 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20252)
    #dbg_value(i64 %i.z, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20252)
  %i.aa = icmp eq i64 %i.z, 0, !dbg !20253
  br i1 %i.aa, label %.body, label %bb.n, !dbg !20253

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !20251
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !20254, !range !3066, !invariant.load !279, !noalias !20204
    #dbg_value(i64 %i.ac, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20252)
    #dbg_value(ptr %.val.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20243)
    #dbg_value(ptr %.val.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20245)
    #dbg_value(ptr %.val.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20247)
    #dbg_value(ptr %.val.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20249)
    #dbg_value(ptr %.val.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20242)
    #dbg_value(ptr poison, !3067, !DIExpression(), !20255)
    #dbg_value(ptr poison, !3079, !DIExpression(), !20257)
    #dbg_value(ptr %.val.i.i, !3075, !DIExpression(), !20255)
    #dbg_value(ptr %.val.i.i, !3084, !DIExpression(), !20257)
    #dbg_value(ptr %.val.i.i, !3088, !DIExpression(), !20259)
    #dbg_value(ptr %.val.i.i, !3097, !DIExpression(), !20261)
    #dbg_value(i64 %i.ac, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20255)
    #dbg_value(i64 %i.ac, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20257)
    #dbg_value(i64 %i.ac, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20259)
    #dbg_value(i64 %i.ac, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20261)
    #dbg_value(i64 %i.z, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20255)
    #dbg_value(i64 %i.z, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20257)
    #dbg_value(i64 %i.z, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20259)
    #dbg_value(i64 %i.z, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20261)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #14, !dbg !20263, !noalias !20204
  br label %.body, !dbg !20264

bb.o:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !20265

.body:                                            ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !20194
  br label %common.resume, !dbg !20266
end_hunk_2
begin_hunk_3_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(ptr poison, !3067, !DIExpression(), !20450)
    #dbg_value(ptr poison, !3079, !DIExpression(), !20452)
    #dbg_value(ptr %i.j, !3075, !DIExpression(), !20450)
    #dbg_value(ptr %i.j, !3084, !DIExpression(), !20452)
    #dbg_value(ptr %i.j, !3088, !DIExpression(), !20454)
    #dbg_value(ptr %i.j, !3097, !DIExpression(), !20456)
    #dbg_value(i64 %i.x, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20450)
    #dbg_value(i64 %i.x, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20452)
    #dbg_value(i64 %i.x, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20454)
    #dbg_value(i64 %i.x, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20456)
    #dbg_value(i64 %i.u, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20450)
    #dbg_value(i64 %i.u, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20452)
    #dbg_value(i64 %i.u, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20454)
    #dbg_value(i64 %i.u, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20456)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !20458
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !20459

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !20409

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !20087, !DIExpression(), !20460)
    #dbg_value(ptr %0, !20089, !DIExpression(), !20462)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !20464
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !20465

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !20097, !DIExpression(DW_OP_deref), !20466)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !20468
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !20469

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.l, %bb.m
  ret void, !dbg !20470

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !20337, !DIExpression(), !20340)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !20471
  call void @_RNvMs6_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef), !dbg !20472
  br label %bb.l, !dbg !20473
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20474 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
    #dbg_value(ptr %0, !20477, !DIExpression(), !20478)
    #dbg_value(ptr poison, !20479, !DIExpression(), !20496)
    #dbg_value(ptr poison, !20498, !DIExpression(), !20501)
    #dbg_value(ptr poison, !20498, !DIExpression(), !20503)
    #dbg_value(ptr poison, !20498, !DIExpression(), !20505)
    #dbg_declare(ptr %i.h, !20488, !DIExpression(), !20507)
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0), !dbg !20508
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit
    i8 3, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCskigd7sy4fqX_10quinn_perf.exit.thread10
  ], !dbg !20509

default.unreachable:                              ; preds = %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11poll_futureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !20486, !DIExpression(), !20510)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !20511
    #dbg_value(ptr poison, !20512, !DIExpression(), !20517)
    #dbg_value(ptr @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task5waker12WAKER_VTABLE, !20515, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20519)
    #dbg_value(ptr %0, !20515, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20519)
  store ptr @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8, !dbg !20520
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !20520
  store ptr %0, ptr %i.j, align 8, !dbg !20520
    #dbg_value(ptr %i.h, !20490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20521)
    #dbg_value(ptr %i.h, !20522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20547)
    #dbg_value(ptr %i.h, !20553, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20586)
    #dbg_value(ptr %i.h, !20567, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20587)
    #dbg_value(ptr %i.h, !20574, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20588)
    #dbg_value(ptr %i.h, !20490, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20521)
    #dbg_value(ptr %i.h, !20522, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20547)
    #dbg_value(ptr %i.h, !20553, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20586)
    #dbg_value(ptr %i.h, !20567, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20587)
    #dbg_value(ptr %i.h, !20574, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20588)
    #dbg_value(ptr null, !20490, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20521)
    #dbg_value(ptr null, !20522, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !20547)
    #dbg_value(ptr null, !20553, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !20586)
    #dbg_value(ptr null, !20567, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !20587)
    #dbg_value(ptr null, !20574, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20588)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !20589 ; 6 uses
    #dbg_value(ptr poison, !20590, !DIExpression(), !20616)
    #dbg_value(ptr poison, !20630, !DIExpression(), !20648)
    #dbg_value(ptr poison, !20649, !DIExpression(), !20657)
    #dbg_declare(ptr poison, !20554, !DIExpression(DW_OP_LLVM_fragment, 128, 192), !20659)
    #dbg_value(ptr poison, !20660, !DIExpression(), !20667)
    #dbg_value(ptr poison, !20674, !DIExpression(), !20678)
    #dbg_value(ptr poison, !20679, !DIExpression(), !20687)
    #dbg_value(ptr poison, !20689, !DIExpression(), !20692)
    #dbg_value(ptr poison, !20696, !DIExpression(), !20698)
    #dbg_value(ptr %i.k, !20573, !DIExpression(), !20588)
    #dbg_value(ptr %i.k, !20567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20587)
    #dbg_value(ptr %i.k, !20553, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20586)
    #dbg_value(ptr %i.k, !20522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20547)
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !20699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !20705, !noalias !20730
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8, !dbg !20737
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !20737
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8, !dbg !20737
    #dbg_value(ptr %i.k, !20554, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20743)
    #dbg_value(ptr %i.h, !20554, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20743)
    #dbg_declare(ptr poison, !20724, !DIExpression(DW_OP_LLVM_fragment, 64, 256), !20744)
    #dbg_declare(ptr poison, !20675, !DIExpression(DW_OP_LLVM_fragment, 64, 256), !20745)
    #dbg_value(ptr undef, !20674, !DIExpression(), !20678)
    #dbg_value(ptr undef, !20660, !DIExpression(), !20667)
    #dbg_value(ptr %i.k, !20675, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20746)
    #dbg_value(ptr %i.k, !20724, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20747)
  store ptr %i.h, ptr %i.g, align 8, !dbg !20699, !noalias !20748
    #dbg_declare(ptr poison, !20712, !DIExpression(), !20749)
    #dbg_declare(ptr poison, !20711, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 256), !20750)
    #dbg_declare(ptr poison, !20726, !DIExpression(), !20751)
    #dbg_declare(ptr poison, !20725, !DIExpression(), !20751)
    #dbg_value(ptr poison, !20711, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !20752)
    #dbg_value(ptr %i.k, !20713, !DIExpression(), !20753)
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !dbg !20754, !noalias !20730

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
    #dbg_value(ptr poison, !20755, !DIExpression(), !20763)
    #dbg_value(ptr poison, !20765, !DIExpression(), !20768)
    #dbg_value(ptr %i.k, !20770, !DIExpression(), !20773)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !20775, !noalias !20730
  store i32 2, ptr %i.f, align 8, !dbg !20775, !noalias !20730
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !dbg !20776, !noalias !20730

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !20777, !noalias !20730
  unreachable, !dbg !20777

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !20778, !noalias !20730
  %i.o = extractvalue { ptr, i32 } %i.m, 0, !dbg !20779
    #dbg_value(ptr undef, !20679, !DIExpression(), !20687)
    #dbg_value(ptr %i.o, !20684, !DIExpression(), !20687)
  %i.p = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !dbg !20780, !noalias !20748 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !20781, !noalias !20748
  unreachable, !dbg !20781

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !20782, !noalias !20730
    #dbg_value(ptr %i.h, !20554, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20743)
    #dbg_value(!DIArgList(i64 0, i1 %i.l), !20554, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !20743)
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64, !dbg !20779
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr, !dbg !20779
    #dbg_value(ptr null, !20575, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20783)
    #dbg_value(ptr %i.r, !20575, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20783)
  br label %bb.h, !dbg !20784

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0, !dbg !20780 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1, !dbg !20780 ; 2 uses
    #dbg_value(ptr %i.t, !20554, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20743)
    #dbg_value(ptr %i.s, !20554, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20743)
    #dbg_value(ptr %i.s, !20575, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20783)
    #dbg_value(ptr %i.t, !20575, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20783)
  %.not.i.i = icmp eq ptr %i.s, null, !dbg !20785
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !20784, !prof !19410

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.s, !20581, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20786)
    #dbg_value(ptr %i.t, !20581, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20786)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !20787
  %i.v = load i64, ptr %i.u, align 8, !dbg !20787, !range !19413, !noalias !20748, !noundef !279
    #dbg_value(i64 %i.v, !20577, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20788)
    #dbg_value(ptr %i.s, !20577, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20788)
    #dbg_value(ptr %i.t, !20577, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20788)
  br label %bb.i, !dbg !20789

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64, !dbg !20785
  %i.y = trunc i64 %i.x to i1, !dbg !20785
  br i1 %i.y, label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11poll_futureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit.i, label %bb.i, !dbg !20784

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ], !dbg !20783
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ], !dbg !20783
    #dbg_value(ptr %i.z, !20577, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20788)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !20577, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20788)
    #dbg_value(i64 %.sroa.06.0.i.i, !20577, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20788)
    #dbg_value(ptr %i.k, !20646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20790)
    #dbg_value(ptr %i.k, !20639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20791)
    #dbg_value(i64 %.sroa.06.0.i.i, !20646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20790)
    #dbg_value(i64 %.sroa.06.0.i.i, !20639, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20791)
    #dbg_value(ptr %i.z, !20639, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20791)
    #dbg_value(ptr %i.z, !20646, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20790)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !20639, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !20791)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !20646, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !20790)
    #dbg_value(ptr %i.k, !20640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20792)
    #dbg_value(i64 %.sroa.06.0.i.i, !20640, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20792)
    #dbg_value(ptr %i.z, !20640, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20792)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !20640, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !20792)
    #dbg_declare(ptr poison, !20793, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !20802)
    #dbg_declare(ptr poison, !20631, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !20804)
    #dbg_value(ptr undef, !20630, !DIExpression(), !20648)
    #dbg_value(ptr undef, !20590, !DIExpression(), !20616)
    #dbg_value(ptr %i.k, !20631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20805)
    #dbg_value(ptr %i.k, !20793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20806)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !20807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !20807, !noalias !20823
  store i64 %.sroa.06.0.i.i, ptr %i.aa, align 8, !dbg !20828, !noalias !20748
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !20828
  store ptr %i.z, ptr %.sroa.10.8..sroa_idx.i.i, align 8, !dbg !20828, !noalias !20748
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !20828
  store ptr %.sroa.6.sroa.5.0.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i, align 8, !dbg !20828, !noalias !20748
    #dbg_declare(ptr poison, !20821, !DIExpression(), !20834)
    #dbg_declare(ptr poison, !20820, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 192), !20835)
    #dbg_declare(ptr poison, !20799, !DIExpression(), !20836)
    #dbg_declare(ptr poison, !20798, !DIExpression(), !20836)
    #dbg_value(ptr poison, !20820, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !20837)
    #dbg_declare(ptr poison, !20814, !DIExpression(), !20838)
    #dbg_value(ptr %i.k, !20813, !DIExpression(), !20839)
  store i32 1, ptr %i.e, align 8, !dbg !20807, !noalias !20823
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %.thread67.i.i unwind label %bb.j, !dbg !20840, !noalias !20748

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null, !dbg !20841
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0, !dbg !20841
    #dbg_value(ptr undef, !20649, !DIExpression(), !20657)
    #dbg_value(ptr %i.ac, !20654, !DIExpression(), !20657)
  %i.ad = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ac)
          to label %bb.l unwind label %bb.k, !dbg !20842, !noalias !20748 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !20843, !noalias !20748
  unreachable, !dbg !20843

.thread67.i.i:                                    ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !20844, !noalias !20823
    #dbg_value(i64 %.sroa.06.0.i.i, !20640, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20792)
    #dbg_value(ptr %i.k, !20640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20792)
    #dbg_value(ptr null, !20583, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20845)
    #dbg_value(ptr undef, !20583, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20845)
    #dbg_value(ptr undef, !20696, !DIExpression(), !20698)
    #dbg_value(ptr undef, !20689, !DIExpression(), !20692)
  br label %bb.x, !dbg !20846

bb.l:                                             ; preds = %bb.j
  %i.af = extractvalue { ptr, ptr } %i.ad, 0, !dbg !20842 ; 4 uses
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1, !dbg !20842 ; 6 uses
    #dbg_value(ptr %i.ag, !20640, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20792)
    #dbg_value(ptr %i.af, !20640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20792)
    #dbg_value(ptr %i.af, !20583, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20845)
    #dbg_value(ptr %i.ag, !20583, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20845)
    #dbg_value(ptr undef, !20696, !DIExpression(), !20698)
    #dbg_value(ptr undef, !20689, !DIExpression(), !20692)
  %.not34.i.i = icmp eq ptr %i.af, null, !dbg !20847
  br i1 %.not34.i.i, label %bb.x, label %bb.m, !dbg !20846

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr poison, !18939, !DIExpression(), !20848)
    #dbg_value(ptr poison, !9943, !DIExpression(), !20850)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !20852, !invariant.load !279, !noalias !20748 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null, !dbg !20852
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n, !dbg !20852

bb.n:                                             ; preds = %bb.m
  invoke void %i.ah(ptr noundef nonnull %i.af)
          to label %bb.o unwind label %bb.q, !dbg !20852, !noalias !20748

bb.o:                                             ; preds = %bb.n, %bb.m
    #dbg_value(ptr poison, !9952, !DIExpression(), !20853)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20855)
    #dbg_value(ptr %i.ag, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20855)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20856)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20858)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20860)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20862)
    #dbg_value(ptr %i.ag, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20856)
    #dbg_value(ptr %i.ag, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20858)
    #dbg_value(ptr %i.ag, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20860)
    #dbg_value(ptr %i.ag, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20862)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !20864
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !20864, !range !3062, !invariant.load !279, !noalias !20748 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20865)
    #dbg_value(i64 %i.aj, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20865)
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !20866
  br i1 %i.ak, label %bb.x, label %bb.p, !dbg !20866

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !20864
  %i.am = load i64, ptr %i.al, align 8, !dbg !20867, !range !3066, !invariant.load !279, !noalias !20748
    #dbg_value(i64 %i.am, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20865)
    #dbg_value(ptr %i.af, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20856)
    #dbg_value(ptr %i.af, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20858)
    #dbg_value(ptr %i.af, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20860)
    #dbg_value(ptr %i.af, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20862)
    #dbg_value(ptr %i.af, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20855)
    #dbg_value(ptr poison, !3067, !DIExpression(), !20868)
    #dbg_value(ptr poison, !3079, !DIExpression(), !20870)
    #dbg_value(ptr %i.af, !3075, !DIExpression(), !20868)
    #dbg_value(ptr %i.af, !3084, !DIExpression(), !20870)
    #dbg_value(ptr %i.af, !3088, !DIExpression(), !20872)
    #dbg_value(ptr %i.af, !3097, !DIExpression(), !20874)
    #dbg_value(i64 %i.am, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20868)
    #dbg_value(i64 %i.am, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20870)
    #dbg_value(i64 %i.am, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20872)
    #dbg_value(i64 %i.am, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20874)
    #dbg_value(i64 %i.aj, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20868)
    #dbg_value(i64 %i.aj, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20870)
    #dbg_value(i64 %i.aj, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20872)
    #dbg_value(i64 %i.aj, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20874)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, -9223372036854775808) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #14, !dbg !20876, !noalias !20748
  br label %bb.x, !dbg !20877

bb.q:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !20878)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20880)
    #dbg_value(ptr %i.ag, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20880)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20881)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20883)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20885)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20887)
    #dbg_value(ptr %i.ag, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20881)
    #dbg_value(ptr %i.ag, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20883)
    #dbg_value(ptr %i.ag, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20885)
    #dbg_value(ptr %i.ag, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20887)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !20889
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !20889, !range !3062, !invariant.load !279, !noalias !20748 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20890)
    #dbg_value(i64 %i.ap, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20890)
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !20891
  br i1 %i.aq, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i, label %bb.r, !dbg !20891

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !20889
  %i.as = load i64, ptr %i.ar, align 8, !dbg !20892, !range !3066, !invariant.load !279, !noalias !20748
    #dbg_value(i64 %i.as, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20890)
    #dbg_value(ptr %i.af, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20881)
    #dbg_value(ptr %i.af, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20883)
    #dbg_value(ptr %i.af, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20885)
    #dbg_value(ptr %i.af, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20887)
    #dbg_value(ptr %i.af, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20880)
    #dbg_value(ptr poison, !3067, !DIExpression(), !20893)
    #dbg_value(ptr poison, !3079, !DIExpression(), !20895)
    #dbg_value(ptr %i.af, !3075, !DIExpression(), !20893)
    #dbg_value(ptr %i.af, !3084, !DIExpression(), !20895)
    #dbg_value(ptr %i.af, !3088, !DIExpression(), !20897)
    #dbg_value(ptr %i.af, !3097, !DIExpression(), !20899)
    #dbg_value(i64 %i.as, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20893)
    #dbg_value(i64 %i.as, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20895)
    #dbg_value(i64 %i.as, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20897)
    #dbg_value(i64 %i.as, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20899)
    #dbg_value(i64 %i.ap, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20893)
    #dbg_value(i64 %i.ap, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20895)
    #dbg_value(i64 %i.ap, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20897)
    #dbg_value(i64 %i.ap, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20899)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, -9223372036854775808) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #14, !dbg !20901, !noalias !20748
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i, !dbg !20902

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i: ; preds = %bb.r, %bb.q
  resume { ptr, i32 } %i.an, !dbg !20852

bb.s:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !20903 ; 2 uses
    #dbg_value(ptr poison, !20904, !DIExpression(), !20938)
    #dbg_value(ptr %i.at, !20955, !DIExpression(), !20959)
    #dbg_value(ptr %i.at, !20960, !DIExpression(), !20964)
    #dbg_value(ptr %i.at, !20951, !DIExpression(), !20966)
    #dbg_value(ptr %i.at, !20945, !DIExpression(), !20967)
    #dbg_value(ptr %i.at, !20946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20968)
    #dbg_value(ptr undef, !20969, !DIExpression(), !20976)
    #dbg_value(ptr %i.at, !20974, !DIExpression(), !20978)
    #dbg_value(ptr %i.at, !20979, !DIExpression(), !20988)
    #dbg_declare(ptr poison, !20985, !DIExpression(), !20990)
    #dbg_declare(ptr poison, !20984, !DIExpression(), !20990)
    #dbg_value(ptr %i.at, !20991, !DIExpression(), !20999)
    #dbg_declare(ptr poison, !20996, !DIExpression(), !21001)
    #dbg_value(ptr poison, !21002, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !21008)
end_hunk_3
begin_hunk_4_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(i64 %i.v, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21296)
    #dbg_value(i64 %i.v, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21298)
    #dbg_value(i64 %i.s, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21292)
    #dbg_value(i64 %i.s, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21294)
    #dbg_value(i64 %i.s, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21296)
    #dbg_value(i64 %i.s, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21298)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #14, !dbg !21300
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !21301

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !21302)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21304)
    #dbg_value(ptr %i.o, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21304)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21305)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21307)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21309)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21311)
    #dbg_value(ptr %i.o, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21305)
    #dbg_value(ptr %i.o, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21307)
    #dbg_value(ptr %i.o, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21309)
    #dbg_value(ptr %i.o, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21311)
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !21313
  %i.y = load i64, ptr %i.x, align 8, !dbg !21313, !range !3062, !invariant.load !279 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21314)
    #dbg_value(i64 %i.y, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21314)
  %i.z = icmp eq i64 %i.y, 0, !dbg !21315
  br i1 %i.z, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.n, !dbg !21315

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !21313
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !21316, !range !3066, !invariant.load !279
    #dbg_value(i64 %i.ab, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21314)
    #dbg_value(ptr %i.n, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21305)
    #dbg_value(ptr %i.n, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21307)
    #dbg_value(ptr %i.n, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21309)
    #dbg_value(ptr %i.n, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21311)
    #dbg_value(ptr %i.n, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21304)
    #dbg_value(ptr poison, !3067, !DIExpression(), !21317)
    #dbg_value(ptr poison, !3079, !DIExpression(), !21319)
    #dbg_value(ptr %i.n, !3075, !DIExpression(), !21317)
    #dbg_value(ptr %i.n, !3084, !DIExpression(), !21319)
    #dbg_value(ptr %i.n, !3088, !DIExpression(), !21321)
    #dbg_value(ptr %i.n, !3097, !DIExpression(), !21323)
    #dbg_value(i64 %i.ab, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21317)
    #dbg_value(i64 %i.ab, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21319)
    #dbg_value(i64 %i.ab, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21321)
    #dbg_value(i64 %i.ab, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21323)
    #dbg_value(i64 %i.y, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21317)
    #dbg_value(i64 %i.y, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21319)
    #dbg_value(i64 %i.y, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21321)
    #dbg_value(i64 %i.y, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21323)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #14, !dbg !21325
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !21326

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w, !dbg !21276

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.noexc10, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
    #dbg_value(ptr poison, !21327, !DIExpression(), !21338)
    #dbg_declare(ptr %i.b, !21334, !DIExpression(), !21340)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21341
    #dbg_value(ptr %0, !21342, !DIExpression(), !21345)
  store ptr %0, ptr %i.b, align 8, !dbg !21347
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !21348
  %i.ad = call noundef ptr @_RNvXs5_NtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler14current_threadINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !dbg !21349
  %.not.i = icmp eq ptr %i.ad, null, !dbg !21348
  %..i = select i1 %.not.i, i64 1, i64 2, !dbg !21350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21351
    #dbg_value(i64 %..i, !21114, !DIExpression(), !21352)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i), !dbg !21353
  br i1 %i.ae, label %bb.o, label %bb.p, !dbg !21354

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !21355, !DIExpression(DW_OP_deref), !21358)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !21360
  br label %bb.p, !dbg !21361

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !21362
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !21363 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !21366, !DIExpression(), !21367)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !21368
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !21369

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !20087, !DIExpression(), !21370)
    #dbg_value(ptr %0, !20089, !DIExpression(), !21372)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !21374
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !21375

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !20097, !DIExpression(DW_OP_deref), !21376)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !21378
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !21379

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !21380, !DIExpression(), !21383)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !21385 ; 2 uses
    #dbg_value(ptr poison, !20904, !DIExpression(), !21386)
    #dbg_value(ptr %i.e, !20955, !DIExpression(), !21391)
    #dbg_value(ptr %i.e, !20960, !DIExpression(), !21392)
    #dbg_value(ptr %i.e, !20951, !DIExpression(), !21394)
    #dbg_value(ptr %i.e, !20945, !DIExpression(), !21395)
    #dbg_value(ptr %i.e, !20946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21396)
    #dbg_value(ptr undef, !20969, !DIExpression(), !21397)
    #dbg_value(ptr %i.e, !20974, !DIExpression(), !21399)
    #dbg_value(ptr %i.e, !20979, !DIExpression(), !21400)
    #dbg_declare(ptr poison, !20985, !DIExpression(), !21402)
    #dbg_declare(ptr poison, !20984, !DIExpression(), !21402)
    #dbg_value(ptr %i.e, !20991, !DIExpression(), !21403)
    #dbg_declare(ptr poison, !20996, !DIExpression(), !21405)
    #dbg_value(ptr poison, !21002, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !21406)
    #dbg_value(ptr %i.e, !21010, !DIExpression(), !21408)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21410
  store i32 2, ptr %i.a, align 8, !dbg !21410
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !21411

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !21412
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !21412
    #dbg_value(ptr undef, !20904, !DIExpression(), !21386)
    #dbg_value(ptr %i.g, !20935, !DIExpression(), !21386)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !21413 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !21414
  unreachable, !dbg !21414

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21415
    #dbg_value(ptr %i.e, !20946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21396)
    #dbg_value(ptr undef, !20946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21396)
    #dbg_value(ptr poison, !20956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21416)
    #dbg_value(ptr poison, !21022, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21417)
    #dbg_value(ptr poison, !20956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21416)
    #dbg_value(ptr poison, !21022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21417)
    #dbg_value(i64 poison, !21025, !DIExpression(), !21417)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !21419

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !21413
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !21413 ; 2 uses
    #dbg_value(ptr %i.j, !20946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21396)
    #dbg_value(ptr %i.k, !20946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21396)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !20956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21416)
    #dbg_value(ptr %i.j, !21022, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21417)
    #dbg_value(ptr %i.k, !20956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21416)
    #dbg_value(ptr %i.k, !21022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21417)
    #dbg_value(i64 poison, !21025, !DIExpression(), !21417)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !21420

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !21417
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !21417
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !21421
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !21421, !range !19413, !noundef !279
    #dbg_value(i64 %.sroa.01.0.i, !20963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21392)
    #dbg_value(ptr %.sroa.6.0.i, !20963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21392)
    #dbg_value(ptr %.sroa.8.0.i, !20963, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21392)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21422
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !21422
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !21422
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !21422
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !21422
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !21422
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !21422
  store i32 1, ptr %i.b, align 8, !dbg !21422
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !21423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21424
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !21425
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !21425

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !21426
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !21427 {
bb.a:
    #dbg_value(ptr %0, !21435, !DIExpression(), !21436)
    #dbg_value(ptr %0, !21437, !DIExpression(), !21441)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !21443
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !21444

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !21445, !DIExpression(), !21450)
    #dbg_value(ptr undef, !21445, !DIExpression(DW_OP_deref), !21450)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !21452
  br label %bb.c, !dbg !21453

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !21454
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !21455 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !21460, !DIExpression(), !21463)
    #dbg_value(ptr %1, !21461, !DIExpression(), !21463)
    #dbg_value(ptr %2, !21462, !DIExpression(), !21463)
    #dbg_declare(ptr poison, !21464, !DIExpression(), !21475)
    #dbg_value(ptr poison, !21485, !DIExpression(), !21492)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !21494
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !21495
  br i1 %i.c, label %bb.b, label %bb.o, !dbg !21495

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !21496
    #dbg_value(ptr %0, !21483, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !21497)
    #dbg_value(ptr %0, !21474, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !21498)
    #dbg_value(ptr %0, !21499, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !21507)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !21509 ; 2 uses
    #dbg_declare(ptr poison, !21510, !DIExpression(), !21518)
    #dbg_value(ptr %i.d, !21515, !DIExpression(), !21520)
    #dbg_value(ptr %i.d, !21521, !DIExpression(), !21527)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21529, !noalias !21530
    #dbg_value(i32 2, !21526, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !21527)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !21533, !noalias !21530
  store i32 2, ptr %i.d, align 8, !dbg !21534, !noalias !21530
  %i.e = load i32, ptr %i.a, align 8, !dbg !21529, !range !9897, !noalias !21530, !noundef !279
  %i.f = icmp eq i32 %i.e, 1, !dbg !21535
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !21535, !prof !18680

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.d unwind label %bb.e, !dbg !21536, !noalias !21530

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.x, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op, !dbg !21463

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #13
          to label %common.resume unwind label %bb.f, !dbg !21537, !noalias !21530

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !21518, !noalias !21530
  unreachable, !dbg !21518

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !21538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !21538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21537, !noalias !21530
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21539), !dbg !21542
    #dbg_value(ptr %1, !18688, !DIExpression(), !21543)
  %i.j = load i64, ptr %1, align 8, !dbg !21545, !range !563, !alias.scope !21539, !noundef !279
  %i.k = icmp eq i64 %i.j, 0, !dbg !21545
  br i1 %i.k, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !21545

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21545 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21546), !dbg !21545
    #dbg_value(ptr %i.l, !9901, !DIExpression(), !21549)
  %i.m = load i64, ptr %i.l, align 8, !dbg !21551, !alias.scope !21552, !noundef !279
  %i.n = icmp eq i64 %i.m, 0, !dbg !21551
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.h, !dbg !21551

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21551
  %.val.i.i = load ptr, ptr %i.o, align 8, !dbg !21551, !alias.scope !21552, !noundef !279 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !21551
  %.val1.i.i = load ptr, ptr %i.p, align 8, !dbg !21551, !alias.scope !21552 ; 6 uses
    #dbg_value(ptr poison, !9912, !DIExpression(), !21553)
    #dbg_value(ptr poison, !9922, !DIExpression(), !21555)
  %i.q = icmp eq ptr %.val.i.i, null, !dbg !21557
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !21557

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr poison, !9933, !DIExpression(), !21558)
    #dbg_value(ptr poison, !9943, !DIExpression(), !21560)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.r = load ptr, ptr %.val1.i.i, align 8, !dbg !21562, !invariant.load !279, !noalias !21552 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null, !dbg !21562
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !21562

bb.j:                                             ; preds = %bb.i
  invoke void %i.r(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !dbg !21562, !noalias !21552

bb.k:                                             ; preds = %bb.j, %bb.i
    #dbg_value(ptr poison, !9952, !DIExpression(), !21563)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21565)
    #dbg_value(ptr %.val1.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21565)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21566)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21568)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21570)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21572)
    #dbg_value(ptr %.val1.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21566)
    #dbg_value(ptr %.val1.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21568)
    #dbg_value(ptr %.val1.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21570)
    #dbg_value(ptr %.val1.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21572)
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !21574
  %i.t = load i64, ptr %i.s, align 8, !dbg !21574, !range !3062, !invariant.load !279, !noalias !21552 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21575)
    #dbg_value(i64 %i.t, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21575)
  %i.u = icmp eq i64 %i.t, 0, !dbg !21576
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.l, !dbg !21576

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !21574
  %i.w = load i64, ptr %i.v, align 8, !dbg !21577, !range !3066, !invariant.load !279, !noalias !21552
    #dbg_value(i64 %i.w, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21575)
    #dbg_value(ptr %.val.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21566)
    #dbg_value(ptr %.val.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21568)
    #dbg_value(ptr %.val.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21570)
    #dbg_value(ptr %.val.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21572)
    #dbg_value(ptr %.val.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21565)
    #dbg_value(ptr poison, !3067, !DIExpression(), !21578)
    #dbg_value(ptr poison, !3079, !DIExpression(), !21580)
    #dbg_value(ptr %.val.i.i, !3075, !DIExpression(), !21578)
    #dbg_value(ptr %.val.i.i, !3084, !DIExpression(), !21580)
    #dbg_value(ptr %.val.i.i, !3088, !DIExpression(), !21582)
    #dbg_value(ptr %.val.i.i, !3097, !DIExpression(), !21584)
    #dbg_value(i64 %i.w, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21578)
    #dbg_value(i64 %i.w, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21580)
    #dbg_value(i64 %i.w, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21582)
    #dbg_value(i64 %i.w, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21584)
    #dbg_value(i64 %i.t, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21578)
    #dbg_value(i64 %i.t, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21580)
    #dbg_value(i64 %i.t, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21582)
    #dbg_value(i64 %i.t, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21584)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #14, !dbg !21586, !noalias !21552
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !21587

bb.m:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !21588)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21590)
    #dbg_value(ptr %.val1.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21590)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21591)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21593)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21595)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21597)
    #dbg_value(ptr %.val1.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21591)
    #dbg_value(ptr %.val1.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21593)
    #dbg_value(ptr %.val1.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21595)
    #dbg_value(ptr %.val1.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21597)
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !21599
  %i.z = load i64, ptr %i.y, align 8, !dbg !21599, !range !3062, !invariant.load !279, !noalias !21552 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21600)
    #dbg_value(i64 %i.z, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21600)
  %i.aa = icmp eq i64 %i.z, 0, !dbg !21601
  br i1 %i.aa, label %.body, label %bb.n, !dbg !21601

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !21599
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !21602, !range !3066, !invariant.load !279, !noalias !21552
    #dbg_value(i64 %i.ac, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21600)
    #dbg_value(ptr %.val.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21591)
    #dbg_value(ptr %.val.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21593)
    #dbg_value(ptr %.val.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21595)
    #dbg_value(ptr %.val.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21597)
    #dbg_value(ptr %.val.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21590)
    #dbg_value(ptr poison, !3067, !DIExpression(), !21603)
    #dbg_value(ptr poison, !3079, !DIExpression(), !21605)
    #dbg_value(ptr %.val.i.i, !3075, !DIExpression(), !21603)
    #dbg_value(ptr %.val.i.i, !3084, !DIExpression(), !21605)
    #dbg_value(ptr %.val.i.i, !3088, !DIExpression(), !21607)
    #dbg_value(ptr %.val.i.i, !3097, !DIExpression(), !21609)
    #dbg_value(i64 %i.ac, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21603)
    #dbg_value(i64 %i.ac, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21605)
    #dbg_value(i64 %i.ac, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21607)
    #dbg_value(i64 %i.ac, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21609)
    #dbg_value(i64 %i.z, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21603)
    #dbg_value(i64 %i.z, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21605)
    #dbg_value(i64 %i.z, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21607)
    #dbg_value(i64 %i.z, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21609)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #14, !dbg !21611, !noalias !21552
  br label %.body, !dbg !21612

bb.o:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !21613

.body:                                            ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !21542
  br label %common.resume, !dbg !21614
end_hunk_4
begin_hunk_5_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(ptr poison, !3067, !DIExpression(), !21798)
    #dbg_value(ptr poison, !3079, !DIExpression(), !21800)
    #dbg_value(ptr %i.j, !3075, !DIExpression(), !21798)
    #dbg_value(ptr %i.j, !3084, !DIExpression(), !21800)
    #dbg_value(ptr %i.j, !3088, !DIExpression(), !21802)
    #dbg_value(ptr %i.j, !3097, !DIExpression(), !21804)
    #dbg_value(i64 %i.x, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21798)
    #dbg_value(i64 %i.x, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21800)
    #dbg_value(i64 %i.x, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21802)
    #dbg_value(i64 %i.x, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21804)
    #dbg_value(i64 %i.u, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21798)
    #dbg_value(i64 %i.u, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21800)
    #dbg_value(i64 %i.u, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21802)
    #dbg_value(i64 %i.u, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21804)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !21806
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !21807

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !21757

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !21435, !DIExpression(), !21808)
    #dbg_value(ptr %0, !21437, !DIExpression(), !21810)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !21812
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !21813

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !21445, !DIExpression(DW_OP_deref), !21814)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !21816
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !21817

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.l, %bb.m
  ret void, !dbg !21818

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !21685, !DIExpression(), !21688)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !21819
  call void @_RNvMs6_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef), !dbg !21820
  br label %bb.l, !dbg !21821
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !21822 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
    #dbg_value(ptr %0, !21825, !DIExpression(), !21826)
    #dbg_value(ptr poison, !21827, !DIExpression(), !21844)
    #dbg_value(ptr poison, !21846, !DIExpression(), !21849)
    #dbg_value(ptr poison, !21846, !DIExpression(), !21851)
    #dbg_value(ptr poison, !21846, !DIExpression(), !21853)
    #dbg_declare(ptr %i.h, !21836, !DIExpression(), !21855)
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0), !dbg !21856
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit
    i8 3, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCskigd7sy4fqX_10quinn_perf.exit.thread10
  ], !dbg !21857

default.unreachable:                              ; preds = %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11poll_futureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !21834, !DIExpression(), !21858)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !21859
    #dbg_value(ptr poison, !21860, !DIExpression(), !21865)
    #dbg_value(ptr @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task5waker12WAKER_VTABLE, !21863, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21867)
    #dbg_value(ptr %0, !21863, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21867)
  store ptr @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8, !dbg !21868
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !21868
  store ptr %0, ptr %i.j, align 8, !dbg !21868
    #dbg_value(ptr %i.h, !21838, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21869)
    #dbg_value(ptr %i.h, !21870, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21895)
    #dbg_value(ptr %i.h, !21901, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21934)
    #dbg_value(ptr %i.h, !21915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21935)
    #dbg_value(ptr %i.h, !21922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21936)
    #dbg_value(ptr %i.h, !21838, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21869)
    #dbg_value(ptr %i.h, !21870, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21895)
    #dbg_value(ptr %i.h, !21901, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21934)
    #dbg_value(ptr %i.h, !21915, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21935)
    #dbg_value(ptr %i.h, !21922, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21936)
    #dbg_value(ptr null, !21838, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21869)
    #dbg_value(ptr null, !21870, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !21895)
    #dbg_value(ptr null, !21901, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !21934)
    #dbg_value(ptr null, !21915, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !21935)
    #dbg_value(ptr null, !21922, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21936)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !21937 ; 6 uses
    #dbg_value(ptr poison, !21938, !DIExpression(), !21964)
    #dbg_value(ptr poison, !21978, !DIExpression(), !21996)
    #dbg_value(ptr poison, !21997, !DIExpression(), !22005)
    #dbg_declare(ptr poison, !21902, !DIExpression(DW_OP_LLVM_fragment, 128, 192), !22007)
    #dbg_value(ptr poison, !22008, !DIExpression(), !22015)
    #dbg_value(ptr poison, !22022, !DIExpression(), !22026)
    #dbg_value(ptr poison, !22027, !DIExpression(), !22035)
    #dbg_value(ptr poison, !22037, !DIExpression(), !22040)
    #dbg_value(ptr poison, !22044, !DIExpression(), !22046)
    #dbg_value(ptr %i.k, !21921, !DIExpression(), !21936)
    #dbg_value(ptr %i.k, !21915, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21935)
    #dbg_value(ptr %i.k, !21901, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21934)
    #dbg_value(ptr %i.k, !21870, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21895)
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !22047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !22053, !noalias !22078
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8, !dbg !22085
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !22085
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8, !dbg !22085
    #dbg_value(ptr %i.k, !21902, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22091)
    #dbg_value(ptr %i.h, !21902, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22091)
    #dbg_declare(ptr poison, !22072, !DIExpression(DW_OP_LLVM_fragment, 64, 256), !22092)
    #dbg_declare(ptr poison, !22023, !DIExpression(DW_OP_LLVM_fragment, 64, 256), !22093)
    #dbg_value(ptr undef, !22022, !DIExpression(), !22026)
    #dbg_value(ptr undef, !22008, !DIExpression(), !22015)
    #dbg_value(ptr %i.k, !22023, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22094)
    #dbg_value(ptr %i.k, !22072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22095)
  store ptr %i.h, ptr %i.g, align 8, !dbg !22047, !noalias !22096
    #dbg_declare(ptr poison, !22060, !DIExpression(), !22097)
    #dbg_declare(ptr poison, !22059, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 256), !22098)
    #dbg_declare(ptr poison, !22074, !DIExpression(), !22099)
    #dbg_declare(ptr poison, !22073, !DIExpression(), !22099)
    #dbg_value(ptr poison, !22059, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !22100)
    #dbg_value(ptr %i.k, !22061, !DIExpression(), !22101)
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !dbg !22102, !noalias !22078

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
    #dbg_value(ptr poison, !22103, !DIExpression(), !22111)
    #dbg_value(ptr poison, !22113, !DIExpression(), !22116)
    #dbg_value(ptr %i.k, !22118, !DIExpression(), !22121)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !22123, !noalias !22078
  store i32 2, ptr %i.f, align 8, !dbg !22123, !noalias !22078
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !dbg !22124, !noalias !22078

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !22125, !noalias !22078
  unreachable, !dbg !22125

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !22126, !noalias !22078
  %i.o = extractvalue { ptr, i32 } %i.m, 0, !dbg !22127
    #dbg_value(ptr undef, !22027, !DIExpression(), !22035)
    #dbg_value(ptr %i.o, !22032, !DIExpression(), !22035)
  %i.p = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !dbg !22128, !noalias !22096 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !22129, !noalias !22096
  unreachable, !dbg !22129

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !22130, !noalias !22078
    #dbg_value(ptr %i.h, !21902, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22091)
    #dbg_value(!DIArgList(i64 0, i1 %i.l), !21902, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22091)
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64, !dbg !22127
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr, !dbg !22127
    #dbg_value(ptr null, !21923, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22131)
    #dbg_value(ptr %i.r, !21923, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22131)
  br label %bb.h, !dbg !22132

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0, !dbg !22128 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1, !dbg !22128 ; 2 uses
    #dbg_value(ptr %i.t, !21902, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22091)
    #dbg_value(ptr %i.s, !21902, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22091)
    #dbg_value(ptr %i.s, !21923, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22131)
    #dbg_value(ptr %i.t, !21923, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22131)
  %.not.i.i = icmp eq ptr %i.s, null, !dbg !22133
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !22132, !prof !19410

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.s, !21929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22134)
    #dbg_value(ptr %i.t, !21929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22134)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !22135
  %i.v = load i64, ptr %i.u, align 8, !dbg !22135, !range !19413, !noalias !22096, !noundef !279
    #dbg_value(i64 %i.v, !21925, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22136)
    #dbg_value(ptr %i.s, !21925, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22136)
    #dbg_value(ptr %i.t, !21925, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22136)
  br label %bb.i, !dbg !22137

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64, !dbg !22133
  %i.y = trunc i64 %i.x to i1, !dbg !22133
  br i1 %i.y, label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11poll_futureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit.i, label %bb.i, !dbg !22132

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ], !dbg !22131
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ], !dbg !22131
    #dbg_value(ptr %i.z, !21925, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22136)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !21925, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22136)
    #dbg_value(i64 %.sroa.06.0.i.i, !21925, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22136)
    #dbg_value(ptr %i.k, !21994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22138)
    #dbg_value(ptr %i.k, !21987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22139)
    #dbg_value(i64 %.sroa.06.0.i.i, !21994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22138)
    #dbg_value(i64 %.sroa.06.0.i.i, !21987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22139)
    #dbg_value(ptr %i.z, !21987, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22139)
    #dbg_value(ptr %i.z, !21994, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22138)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !21987, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22139)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !21994, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22138)
    #dbg_value(ptr %i.k, !21988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22140)
    #dbg_value(i64 %.sroa.06.0.i.i, !21988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22140)
    #dbg_value(ptr %i.z, !21988, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22140)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !21988, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22140)
    #dbg_declare(ptr poison, !22141, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !22150)
    #dbg_declare(ptr poison, !21979, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !22152)
    #dbg_value(ptr undef, !21978, !DIExpression(), !21996)
    #dbg_value(ptr undef, !21938, !DIExpression(), !21964)
    #dbg_value(ptr %i.k, !21979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22153)
    #dbg_value(ptr %i.k, !22141, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22154)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !22155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !22155, !noalias !22171
  store i64 %.sroa.06.0.i.i, ptr %i.aa, align 8, !dbg !22176, !noalias !22096
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !22176
  store ptr %i.z, ptr %.sroa.10.8..sroa_idx.i.i, align 8, !dbg !22176, !noalias !22096
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !22176
  store ptr %.sroa.6.sroa.5.0.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i, align 8, !dbg !22176, !noalias !22096
    #dbg_declare(ptr poison, !22169, !DIExpression(), !22182)
    #dbg_declare(ptr poison, !22168, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 192), !22183)
    #dbg_declare(ptr poison, !22147, !DIExpression(), !22184)
    #dbg_declare(ptr poison, !22146, !DIExpression(), !22184)
    #dbg_value(ptr poison, !22168, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !22185)
    #dbg_declare(ptr poison, !22162, !DIExpression(), !22186)
    #dbg_value(ptr %i.k, !22161, !DIExpression(), !22187)
  store i32 1, ptr %i.e, align 8, !dbg !22155, !noalias !22171
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %.thread67.i.i unwind label %bb.j, !dbg !22188, !noalias !22096

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null, !dbg !22189
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0, !dbg !22189
    #dbg_value(ptr undef, !21997, !DIExpression(), !22005)
    #dbg_value(ptr %i.ac, !22002, !DIExpression(), !22005)
  %i.ad = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ac)
          to label %bb.l unwind label %bb.k, !dbg !22190, !noalias !22096 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !22191, !noalias !22096
  unreachable, !dbg !22191

.thread67.i.i:                                    ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !22192, !noalias !22171
    #dbg_value(i64 %.sroa.06.0.i.i, !21988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22140)
    #dbg_value(ptr %i.k, !21988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22140)
    #dbg_value(ptr null, !21931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22193)
    #dbg_value(ptr undef, !21931, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22193)
    #dbg_value(ptr undef, !22044, !DIExpression(), !22046)
    #dbg_value(ptr undef, !22037, !DIExpression(), !22040)
  br label %bb.x, !dbg !22194

bb.l:                                             ; preds = %bb.j
  %i.af = extractvalue { ptr, ptr } %i.ad, 0, !dbg !22190 ; 4 uses
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1, !dbg !22190 ; 6 uses
    #dbg_value(ptr %i.ag, !21988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22140)
    #dbg_value(ptr %i.af, !21988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22140)
    #dbg_value(ptr %i.af, !21931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22193)
    #dbg_value(ptr %i.ag, !21931, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22193)
    #dbg_value(ptr undef, !22044, !DIExpression(), !22046)
    #dbg_value(ptr undef, !22037, !DIExpression(), !22040)
  %.not34.i.i = icmp eq ptr %i.af, null, !dbg !22195
  br i1 %.not34.i.i, label %bb.x, label %bb.m, !dbg !22194

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr poison, !18939, !DIExpression(), !22196)
    #dbg_value(ptr poison, !9943, !DIExpression(), !22198)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !22200, !invariant.load !279, !noalias !22096 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null, !dbg !22200
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n, !dbg !22200

bb.n:                                             ; preds = %bb.m
  invoke void %i.ah(ptr noundef nonnull %i.af)
          to label %bb.o unwind label %bb.q, !dbg !22200, !noalias !22096

bb.o:                                             ; preds = %bb.n, %bb.m
    #dbg_value(ptr poison, !9952, !DIExpression(), !22201)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22203)
    #dbg_value(ptr %i.ag, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22203)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22204)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22206)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22208)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22210)
    #dbg_value(ptr %i.ag, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22204)
    #dbg_value(ptr %i.ag, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22206)
    #dbg_value(ptr %i.ag, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22208)
    #dbg_value(ptr %i.ag, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22210)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !22212
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !22212, !range !3062, !invariant.load !279, !noalias !22096 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22213)
    #dbg_value(i64 %i.aj, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22213)
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !22214
  br i1 %i.ak, label %bb.x, label %bb.p, !dbg !22214

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !22212
  %i.am = load i64, ptr %i.al, align 8, !dbg !22215, !range !3066, !invariant.load !279, !noalias !22096
    #dbg_value(i64 %i.am, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22213)
    #dbg_value(ptr %i.af, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22204)
    #dbg_value(ptr %i.af, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22206)
    #dbg_value(ptr %i.af, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22208)
    #dbg_value(ptr %i.af, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22210)
    #dbg_value(ptr %i.af, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22203)
    #dbg_value(ptr poison, !3067, !DIExpression(), !22216)
    #dbg_value(ptr poison, !3079, !DIExpression(), !22218)
    #dbg_value(ptr %i.af, !3075, !DIExpression(), !22216)
    #dbg_value(ptr %i.af, !3084, !DIExpression(), !22218)
    #dbg_value(ptr %i.af, !3088, !DIExpression(), !22220)
    #dbg_value(ptr %i.af, !3097, !DIExpression(), !22222)
    #dbg_value(i64 %i.am, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22216)
    #dbg_value(i64 %i.am, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22218)
    #dbg_value(i64 %i.am, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22220)
    #dbg_value(i64 %i.am, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22222)
    #dbg_value(i64 %i.aj, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22216)
    #dbg_value(i64 %i.aj, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22218)
    #dbg_value(i64 %i.aj, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22220)
    #dbg_value(i64 %i.aj, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22222)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, -9223372036854775808) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #14, !dbg !22224, !noalias !22096
  br label %bb.x, !dbg !22225

bb.q:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !22226)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22228)
    #dbg_value(ptr %i.ag, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22228)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22229)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22231)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22233)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22235)
    #dbg_value(ptr %i.ag, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22229)
    #dbg_value(ptr %i.ag, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22231)
    #dbg_value(ptr %i.ag, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22233)
    #dbg_value(ptr %i.ag, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22235)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !22237
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !22237, !range !3062, !invariant.load !279, !noalias !22096 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22238)
    #dbg_value(i64 %i.ap, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22238)
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !22239
  br i1 %i.aq, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i, label %bb.r, !dbg !22239

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !22237
  %i.as = load i64, ptr %i.ar, align 8, !dbg !22240, !range !3066, !invariant.load !279, !noalias !22096
    #dbg_value(i64 %i.as, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22238)
    #dbg_value(ptr %i.af, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22229)
    #dbg_value(ptr %i.af, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22231)
    #dbg_value(ptr %i.af, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22233)
    #dbg_value(ptr %i.af, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22235)
    #dbg_value(ptr %i.af, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22228)
    #dbg_value(ptr poison, !3067, !DIExpression(), !22241)
    #dbg_value(ptr poison, !3079, !DIExpression(), !22243)
    #dbg_value(ptr %i.af, !3075, !DIExpression(), !22241)
    #dbg_value(ptr %i.af, !3084, !DIExpression(), !22243)
    #dbg_value(ptr %i.af, !3088, !DIExpression(), !22245)
    #dbg_value(ptr %i.af, !3097, !DIExpression(), !22247)
    #dbg_value(i64 %i.as, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22241)
    #dbg_value(i64 %i.as, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22243)
    #dbg_value(i64 %i.as, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22245)
    #dbg_value(i64 %i.as, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22247)
    #dbg_value(i64 %i.ap, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22241)
    #dbg_value(i64 %i.ap, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22243)
    #dbg_value(i64 %i.ap, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22245)
    #dbg_value(i64 %i.ap, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22247)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, -9223372036854775808) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #14, !dbg !22249, !noalias !22096
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i, !dbg !22250

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i: ; preds = %bb.r, %bb.q
  resume { ptr, i32 } %i.an, !dbg !22200

bb.s:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !22251 ; 2 uses
    #dbg_value(ptr poison, !22252, !DIExpression(), !22286)
    #dbg_value(ptr %i.at, !22303, !DIExpression(), !22307)
    #dbg_value(ptr %i.at, !22308, !DIExpression(), !22312)
    #dbg_value(ptr %i.at, !22299, !DIExpression(), !22314)
    #dbg_value(ptr %i.at, !22293, !DIExpression(), !22315)
    #dbg_value(ptr %i.at, !22294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22316)
    #dbg_value(ptr undef, !22317, !DIExpression(), !22324)
    #dbg_value(ptr %i.at, !22322, !DIExpression(), !22326)
    #dbg_value(ptr %i.at, !22327, !DIExpression(), !22336)
    #dbg_declare(ptr poison, !22333, !DIExpression(), !22338)
    #dbg_declare(ptr poison, !22332, !DIExpression(), !22338)
    #dbg_value(ptr %i.at, !22339, !DIExpression(), !22347)
    #dbg_declare(ptr poison, !22344, !DIExpression(), !22349)
    #dbg_value(ptr poison, !22350, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !22356)
end_hunk_5
begin_hunk_6_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(i64 %i.v, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22644)
    #dbg_value(i64 %i.v, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22646)
    #dbg_value(i64 %i.s, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22640)
    #dbg_value(i64 %i.s, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22642)
    #dbg_value(i64 %i.s, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22644)
    #dbg_value(i64 %i.s, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22646)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #14, !dbg !22648
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !22649

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !22650)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22652)
    #dbg_value(ptr %i.o, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22652)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22653)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22655)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22657)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22659)
    #dbg_value(ptr %i.o, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22653)
    #dbg_value(ptr %i.o, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22655)
    #dbg_value(ptr %i.o, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22657)
    #dbg_value(ptr %i.o, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22659)
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !22661
  %i.y = load i64, ptr %i.x, align 8, !dbg !22661, !range !3062, !invariant.load !279 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22662)
    #dbg_value(i64 %i.y, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22662)
  %i.z = icmp eq i64 %i.y, 0, !dbg !22663
  br i1 %i.z, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.n, !dbg !22663

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !22661
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !22664, !range !3066, !invariant.load !279
    #dbg_value(i64 %i.ab, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22662)
    #dbg_value(ptr %i.n, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22653)
    #dbg_value(ptr %i.n, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22655)
    #dbg_value(ptr %i.n, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22657)
    #dbg_value(ptr %i.n, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22659)
    #dbg_value(ptr %i.n, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22652)
    #dbg_value(ptr poison, !3067, !DIExpression(), !22665)
    #dbg_value(ptr poison, !3079, !DIExpression(), !22667)
    #dbg_value(ptr %i.n, !3075, !DIExpression(), !22665)
    #dbg_value(ptr %i.n, !3084, !DIExpression(), !22667)
    #dbg_value(ptr %i.n, !3088, !DIExpression(), !22669)
    #dbg_value(ptr %i.n, !3097, !DIExpression(), !22671)
    #dbg_value(i64 %i.ab, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22665)
    #dbg_value(i64 %i.ab, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22667)
    #dbg_value(i64 %i.ab, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22669)
    #dbg_value(i64 %i.ab, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22671)
    #dbg_value(i64 %i.y, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22665)
    #dbg_value(i64 %i.y, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22667)
    #dbg_value(i64 %i.y, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22669)
    #dbg_value(i64 %i.y, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22671)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #14, !dbg !22673
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !22674

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w, !dbg !22624

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.noexc10, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
    #dbg_value(ptr poison, !22675, !DIExpression(), !22686)
    #dbg_declare(ptr %i.b, !22682, !DIExpression(), !22688)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22689
    #dbg_value(ptr %0, !22690, !DIExpression(), !22693)
  store ptr %0, ptr %i.b, align 8, !dbg !22695
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !22696
  %i.ad = call noundef ptr @_RNvXs5_NtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler14current_threadINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !dbg !22697
  %.not.i = icmp eq ptr %i.ad, null, !dbg !22696
  %..i = select i1 %.not.i, i64 1, i64 2, !dbg !22698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22699
    #dbg_value(i64 %..i, !22462, !DIExpression(), !22700)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i), !dbg !22701
  br i1 %i.ae, label %bb.o, label %bb.p, !dbg !22702

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !22703, !DIExpression(DW_OP_deref), !22706)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !22708
  br label %bb.p, !dbg !22709

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !22710
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !22711 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !22714, !DIExpression(), !22715)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !22716
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !22717

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !21435, !DIExpression(), !22718)
    #dbg_value(ptr %0, !21437, !DIExpression(), !22720)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !22722
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !22723

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !21445, !DIExpression(DW_OP_deref), !22724)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !22726
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !22727

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !22728, !DIExpression(), !22731)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !22733 ; 2 uses
    #dbg_value(ptr poison, !22252, !DIExpression(), !22734)
    #dbg_value(ptr %i.e, !22303, !DIExpression(), !22739)
    #dbg_value(ptr %i.e, !22308, !DIExpression(), !22740)
    #dbg_value(ptr %i.e, !22299, !DIExpression(), !22742)
    #dbg_value(ptr %i.e, !22293, !DIExpression(), !22743)
    #dbg_value(ptr %i.e, !22294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22744)
    #dbg_value(ptr undef, !22317, !DIExpression(), !22745)
    #dbg_value(ptr %i.e, !22322, !DIExpression(), !22747)
    #dbg_value(ptr %i.e, !22327, !DIExpression(), !22748)
    #dbg_declare(ptr poison, !22333, !DIExpression(), !22750)
    #dbg_declare(ptr poison, !22332, !DIExpression(), !22750)
    #dbg_value(ptr %i.e, !22339, !DIExpression(), !22751)
    #dbg_declare(ptr poison, !22344, !DIExpression(), !22753)
    #dbg_value(ptr poison, !22350, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !22754)
    #dbg_value(ptr %i.e, !22358, !DIExpression(), !22756)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22758
  store i32 2, ptr %i.a, align 8, !dbg !22758
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !22759

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !22760
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !22760
    #dbg_value(ptr undef, !22252, !DIExpression(), !22734)
    #dbg_value(ptr %i.g, !22283, !DIExpression(), !22734)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !22761 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !22762
  unreachable, !dbg !22762

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22763
    #dbg_value(ptr %i.e, !22294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22744)
    #dbg_value(ptr undef, !22294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22744)
    #dbg_value(ptr poison, !22304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22764)
    #dbg_value(ptr poison, !22370, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22765)
    #dbg_value(ptr poison, !22304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22764)
    #dbg_value(ptr poison, !22370, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22765)
    #dbg_value(i64 poison, !22373, !DIExpression(), !22765)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !22767

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !22761
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !22761 ; 2 uses
    #dbg_value(ptr %i.j, !22294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22744)
    #dbg_value(ptr %i.k, !22294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22744)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !22304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22764)
    #dbg_value(ptr %i.j, !22370, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22765)
    #dbg_value(ptr %i.k, !22304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22764)
    #dbg_value(ptr %i.k, !22370, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22765)
    #dbg_value(i64 poison, !22373, !DIExpression(), !22765)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !22768

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !22765
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !22765
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !22769
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !22769, !range !19413, !noundef !279
    #dbg_value(i64 %.sroa.01.0.i, !22311, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22740)
    #dbg_value(ptr %.sroa.6.0.i, !22311, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22740)
    #dbg_value(ptr %.sroa.8.0.i, !22311, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22740)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22770
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !22770
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !22770
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !22770
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !22770
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !22770
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !22770
  store i32 1, ptr %i.b, align 8, !dbg !22770
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !22771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22772
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !22773
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !22773

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !22774
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !22775 {
bb.a:
    #dbg_value(ptr %0, !22783, !DIExpression(), !22784)
    #dbg_value(ptr %0, !22785, !DIExpression(), !22789)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !22791
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !22792

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !22793, !DIExpression(), !22798)
    #dbg_value(ptr undef, !22793, !DIExpression(DW_OP_deref), !22798)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !22800
  br label %bb.c, !dbg !22801

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !22802
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !22803 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !22808, !DIExpression(), !22811)
    #dbg_value(ptr %1, !22809, !DIExpression(), !22811)
    #dbg_value(ptr %2, !22810, !DIExpression(), !22811)
    #dbg_declare(ptr poison, !22812, !DIExpression(), !22823)
    #dbg_value(ptr poison, !22833, !DIExpression(), !22840)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !22842
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !22843
  br i1 %i.c, label %bb.b, label %bb.o, !dbg !22843

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !22844
    #dbg_value(ptr %0, !22831, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !22845)
    #dbg_value(ptr %0, !22822, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !22846)
    #dbg_value(ptr %0, !22847, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !22855)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !22857 ; 2 uses
    #dbg_declare(ptr poison, !22858, !DIExpression(), !22866)
    #dbg_value(ptr %i.d, !22863, !DIExpression(), !22868)
    #dbg_value(ptr %i.d, !22869, !DIExpression(), !22875)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22877, !noalias !22878
    #dbg_value(i32 2, !22874, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !22875)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !22881, !noalias !22878
  store i32 2, ptr %i.d, align 8, !dbg !22882, !noalias !22878
  %i.e = load i32, ptr %i.a, align 8, !dbg !22877, !range !9897, !noalias !22878, !noundef !279
  %i.f = icmp eq i32 %i.e, 1, !dbg !22883
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !22883, !prof !18680

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.d unwind label %bb.e, !dbg !22884, !noalias !22878

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.x, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op, !dbg !22811

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #13
          to label %common.resume unwind label %bb.f, !dbg !22885, !noalias !22878

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !22866, !noalias !22878
  unreachable, !dbg !22866

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !22886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !22886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22885, !noalias !22878
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22887), !dbg !22890
    #dbg_value(ptr %1, !18688, !DIExpression(), !22891)
  %i.j = load i64, ptr %1, align 8, !dbg !22893, !range !563, !alias.scope !22887, !noundef !279
  %i.k = icmp eq i64 %i.j, 0, !dbg !22893
  br i1 %i.k, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !22893

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22893 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22894), !dbg !22893
    #dbg_value(ptr %i.l, !9901, !DIExpression(), !22897)
  %i.m = load i64, ptr %i.l, align 8, !dbg !22899, !alias.scope !22900, !noundef !279
  %i.n = icmp eq i64 %i.m, 0, !dbg !22899
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.h, !dbg !22899

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22899
  %.val.i.i = load ptr, ptr %i.o, align 8, !dbg !22899, !alias.scope !22900, !noundef !279 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !22899
  %.val1.i.i = load ptr, ptr %i.p, align 8, !dbg !22899, !alias.scope !22900 ; 6 uses
    #dbg_value(ptr poison, !9912, !DIExpression(), !22901)
    #dbg_value(ptr poison, !9922, !DIExpression(), !22903)
  %i.q = icmp eq ptr %.val.i.i, null, !dbg !22905
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !22905

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr poison, !9933, !DIExpression(), !22906)
    #dbg_value(ptr poison, !9943, !DIExpression(), !22908)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.r = load ptr, ptr %.val1.i.i, align 8, !dbg !22910, !invariant.load !279, !noalias !22900 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null, !dbg !22910
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !22910

bb.j:                                             ; preds = %bb.i
  invoke void %i.r(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !dbg !22910, !noalias !22900

bb.k:                                             ; preds = %bb.j, %bb.i
    #dbg_value(ptr poison, !9952, !DIExpression(), !22911)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22913)
    #dbg_value(ptr %.val1.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22913)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22914)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22916)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22918)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22920)
    #dbg_value(ptr %.val1.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22914)
    #dbg_value(ptr %.val1.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22916)
    #dbg_value(ptr %.val1.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22918)
    #dbg_value(ptr %.val1.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22920)
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !22922
  %i.t = load i64, ptr %i.s, align 8, !dbg !22922, !range !3062, !invariant.load !279, !noalias !22900 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22923)
    #dbg_value(i64 %i.t, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22923)
  %i.u = icmp eq i64 %i.t, 0, !dbg !22924
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.l, !dbg !22924

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !22922
  %i.w = load i64, ptr %i.v, align 8, !dbg !22925, !range !3066, !invariant.load !279, !noalias !22900
    #dbg_value(i64 %i.w, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22923)
    #dbg_value(ptr %.val.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22914)
    #dbg_value(ptr %.val.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22916)
    #dbg_value(ptr %.val.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22918)
    #dbg_value(ptr %.val.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22920)
    #dbg_value(ptr %.val.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22913)
    #dbg_value(ptr poison, !3067, !DIExpression(), !22926)
    #dbg_value(ptr poison, !3079, !DIExpression(), !22928)
    #dbg_value(ptr %.val.i.i, !3075, !DIExpression(), !22926)
    #dbg_value(ptr %.val.i.i, !3084, !DIExpression(), !22928)
    #dbg_value(ptr %.val.i.i, !3088, !DIExpression(), !22930)
    #dbg_value(ptr %.val.i.i, !3097, !DIExpression(), !22932)
    #dbg_value(i64 %i.w, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22926)
    #dbg_value(i64 %i.w, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22928)
    #dbg_value(i64 %i.w, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22930)
    #dbg_value(i64 %i.w, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22932)
    #dbg_value(i64 %i.t, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22926)
    #dbg_value(i64 %i.t, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22928)
    #dbg_value(i64 %i.t, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22930)
    #dbg_value(i64 %i.t, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22932)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #14, !dbg !22934, !noalias !22900
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !22935

bb.m:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !22936)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22938)
    #dbg_value(ptr %.val1.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22938)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22939)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22941)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22943)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22945)
    #dbg_value(ptr %.val1.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22939)
    #dbg_value(ptr %.val1.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22941)
    #dbg_value(ptr %.val1.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22943)
    #dbg_value(ptr %.val1.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22945)
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !22947
  %i.z = load i64, ptr %i.y, align 8, !dbg !22947, !range !3062, !invariant.load !279, !noalias !22900 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22948)
    #dbg_value(i64 %i.z, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22948)
  %i.aa = icmp eq i64 %i.z, 0, !dbg !22949
  br i1 %i.aa, label %.body, label %bb.n, !dbg !22949

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !22947
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !22950, !range !3066, !invariant.load !279, !noalias !22900
    #dbg_value(i64 %i.ac, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22948)
    #dbg_value(ptr %.val.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22939)
    #dbg_value(ptr %.val.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22941)
    #dbg_value(ptr %.val.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22943)
    #dbg_value(ptr %.val.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22945)
    #dbg_value(ptr %.val.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22938)
    #dbg_value(ptr poison, !3067, !DIExpression(), !22951)
    #dbg_value(ptr poison, !3079, !DIExpression(), !22953)
    #dbg_value(ptr %.val.i.i, !3075, !DIExpression(), !22951)
    #dbg_value(ptr %.val.i.i, !3084, !DIExpression(), !22953)
    #dbg_value(ptr %.val.i.i, !3088, !DIExpression(), !22955)
    #dbg_value(ptr %.val.i.i, !3097, !DIExpression(), !22957)
    #dbg_value(i64 %i.ac, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22951)
    #dbg_value(i64 %i.ac, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22953)
    #dbg_value(i64 %i.ac, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22955)
    #dbg_value(i64 %i.ac, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22957)
    #dbg_value(i64 %i.z, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22951)
    #dbg_value(i64 %i.z, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22953)
    #dbg_value(i64 %i.z, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22955)
    #dbg_value(i64 %i.z, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22957)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #14, !dbg !22959, !noalias !22900
  br label %.body, !dbg !22960

bb.o:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !22961

.body:                                            ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !22890
  br label %common.resume, !dbg !22962
end_hunk_6
begin_hunk_7_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(ptr poison, !3067, !DIExpression(), !23146)
    #dbg_value(ptr poison, !3079, !DIExpression(), !23148)
    #dbg_value(ptr %i.j, !3075, !DIExpression(), !23146)
    #dbg_value(ptr %i.j, !3084, !DIExpression(), !23148)
    #dbg_value(ptr %i.j, !3088, !DIExpression(), !23150)
    #dbg_value(ptr %i.j, !3097, !DIExpression(), !23152)
    #dbg_value(i64 %i.x, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23146)
    #dbg_value(i64 %i.x, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23148)
    #dbg_value(i64 %i.x, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23150)
    #dbg_value(i64 %i.x, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23152)
    #dbg_value(i64 %i.u, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23146)
    #dbg_value(i64 %i.u, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23148)
    #dbg_value(i64 %i.u, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23150)
    #dbg_value(i64 %i.u, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23152)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !23154
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !23155

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !23105

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !22783, !DIExpression(), !23156)
    #dbg_value(ptr %0, !22785, !DIExpression(), !23158)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !23160
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !23161

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !22793, !DIExpression(DW_OP_deref), !23162)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !23164
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !23165

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.l, %bb.m
  ret void, !dbg !23166

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !23033, !DIExpression(), !23036)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !23167
  call void @_RNvMs6_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef), !dbg !23168
  br label %bb.l, !dbg !23169
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !23170 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
    #dbg_value(ptr %0, !23173, !DIExpression(), !23174)
    #dbg_value(ptr poison, !23175, !DIExpression(), !23192)
    #dbg_value(ptr poison, !23194, !DIExpression(), !23197)
    #dbg_value(ptr poison, !23194, !DIExpression(), !23199)
    #dbg_value(ptr poison, !23194, !DIExpression(), !23201)
    #dbg_declare(ptr %i.h, !23184, !DIExpression(), !23203)
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0), !dbg !23204
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit
    i8 3, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCskigd7sy4fqX_10quinn_perf.exit.thread10
  ], !dbg !23205

default.unreachable:                              ; preds = %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11poll_futureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !23182, !DIExpression(), !23206)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !23207
    #dbg_value(ptr poison, !23208, !DIExpression(), !23213)
    #dbg_value(ptr @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task5waker12WAKER_VTABLE, !23211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23215)
    #dbg_value(ptr %0, !23211, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23215)
  store ptr @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8, !dbg !23216
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !23216
  store ptr %0, ptr %i.j, align 8, !dbg !23216
    #dbg_value(ptr %i.h, !23186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23217)
    #dbg_value(ptr %i.h, !23218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23243)
    #dbg_value(ptr %i.h, !23249, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23282)
    #dbg_value(ptr %i.h, !23263, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23283)
    #dbg_value(ptr %i.h, !23270, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23284)
    #dbg_value(ptr %i.h, !23186, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23217)
    #dbg_value(ptr %i.h, !23218, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23243)
    #dbg_value(ptr %i.h, !23249, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23282)
    #dbg_value(ptr %i.h, !23263, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23283)
    #dbg_value(ptr %i.h, !23270, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23284)
    #dbg_value(ptr null, !23186, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23217)
    #dbg_value(ptr null, !23218, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !23243)
    #dbg_value(ptr null, !23249, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !23282)
    #dbg_value(ptr null, !23263, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !23283)
    #dbg_value(ptr null, !23270, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23284)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !23285 ; 6 uses
    #dbg_value(ptr poison, !23286, !DIExpression(), !23312)
    #dbg_value(ptr poison, !23326, !DIExpression(), !23344)
    #dbg_value(ptr poison, !23345, !DIExpression(), !23353)
    #dbg_declare(ptr poison, !23250, !DIExpression(DW_OP_LLVM_fragment, 128, 192), !23355)
    #dbg_value(ptr poison, !23356, !DIExpression(), !23363)
    #dbg_value(ptr poison, !23370, !DIExpression(), !23374)
    #dbg_value(ptr poison, !23375, !DIExpression(), !23383)
    #dbg_value(ptr poison, !23385, !DIExpression(), !23388)
    #dbg_value(ptr poison, !23392, !DIExpression(), !23394)
    #dbg_value(ptr %i.k, !23269, !DIExpression(), !23284)
    #dbg_value(ptr %i.k, !23263, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23283)
    #dbg_value(ptr %i.k, !23249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23282)
    #dbg_value(ptr %i.k, !23218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23243)
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !23395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !23401, !noalias !23426
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8, !dbg !23433
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !23433
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8, !dbg !23433
    #dbg_value(ptr %i.k, !23250, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23439)
    #dbg_value(ptr %i.h, !23250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23439)
    #dbg_declare(ptr poison, !23420, !DIExpression(DW_OP_LLVM_fragment, 64, 256), !23440)
    #dbg_declare(ptr poison, !23371, !DIExpression(DW_OP_LLVM_fragment, 64, 256), !23441)
    #dbg_value(ptr undef, !23370, !DIExpression(), !23374)
    #dbg_value(ptr undef, !23356, !DIExpression(), !23363)
    #dbg_value(ptr %i.k, !23371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23442)
    #dbg_value(ptr %i.k, !23420, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23443)
  store ptr %i.h, ptr %i.g, align 8, !dbg !23395, !noalias !23444
    #dbg_declare(ptr poison, !23408, !DIExpression(), !23445)
    #dbg_declare(ptr poison, !23407, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 256), !23446)
    #dbg_declare(ptr poison, !23422, !DIExpression(), !23447)
    #dbg_declare(ptr poison, !23421, !DIExpression(), !23447)
    #dbg_value(ptr poison, !23407, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23448)
    #dbg_value(ptr %i.k, !23409, !DIExpression(), !23449)
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !dbg !23450, !noalias !23426

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
    #dbg_value(ptr poison, !23451, !DIExpression(), !23459)
    #dbg_value(ptr poison, !23461, !DIExpression(), !23464)
    #dbg_value(ptr %i.k, !23466, !DIExpression(), !23469)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !23471, !noalias !23426
  store i32 2, ptr %i.f, align 8, !dbg !23471, !noalias !23426
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !dbg !23472, !noalias !23426

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !23473, !noalias !23426
  unreachable, !dbg !23473

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !23474, !noalias !23426
  %i.o = extractvalue { ptr, i32 } %i.m, 0, !dbg !23475
    #dbg_value(ptr undef, !23375, !DIExpression(), !23383)
    #dbg_value(ptr %i.o, !23380, !DIExpression(), !23383)
  %i.p = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !dbg !23476, !noalias !23444 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !23477, !noalias !23444
  unreachable, !dbg !23477

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !23478, !noalias !23426
    #dbg_value(ptr %i.h, !23250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23439)
    #dbg_value(!DIArgList(i64 0, i1 %i.l), !23250, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23439)
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64, !dbg !23475
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr, !dbg !23475
    #dbg_value(ptr null, !23271, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23479)
    #dbg_value(ptr %i.r, !23271, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23479)
  br label %bb.h, !dbg !23480

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0, !dbg !23476 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1, !dbg !23476 ; 2 uses
    #dbg_value(ptr %i.t, !23250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23439)
    #dbg_value(ptr %i.s, !23250, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23439)
    #dbg_value(ptr %i.s, !23271, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23479)
    #dbg_value(ptr %i.t, !23271, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23479)
  %.not.i.i = icmp eq ptr %i.s, null, !dbg !23481
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !23480, !prof !19410

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.s, !23277, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23482)
    #dbg_value(ptr %i.t, !23277, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23482)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !23483
  %i.v = load i64, ptr %i.u, align 8, !dbg !23483, !range !19413, !noalias !23444, !noundef !279
    #dbg_value(i64 %i.v, !23273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23484)
    #dbg_value(ptr %i.s, !23273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23484)
    #dbg_value(ptr %i.t, !23273, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23484)
  br label %bb.i, !dbg !23485

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64, !dbg !23481
  %i.y = trunc i64 %i.x to i1, !dbg !23481
  br i1 %i.y, label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11poll_futureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit.i, label %bb.i, !dbg !23480

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ], !dbg !23479
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ], !dbg !23479
    #dbg_value(ptr %i.z, !23273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23484)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !23273, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23484)
    #dbg_value(i64 %.sroa.06.0.i.i, !23273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23484)
    #dbg_value(ptr %i.k, !23342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23486)
    #dbg_value(ptr %i.k, !23335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23487)
    #dbg_value(i64 %.sroa.06.0.i.i, !23342, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23486)
    #dbg_value(i64 %.sroa.06.0.i.i, !23335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23487)
    #dbg_value(ptr %i.z, !23335, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23487)
    #dbg_value(ptr %i.z, !23342, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23486)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !23335, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !23487)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !23342, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !23486)
    #dbg_value(ptr %i.k, !23336, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23488)
    #dbg_value(i64 %.sroa.06.0.i.i, !23336, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23488)
    #dbg_value(ptr %i.z, !23336, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23488)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !23336, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !23488)
    #dbg_declare(ptr poison, !23489, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !23498)
    #dbg_declare(ptr poison, !23327, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !23500)
    #dbg_value(ptr undef, !23326, !DIExpression(), !23344)
    #dbg_value(ptr undef, !23286, !DIExpression(), !23312)
    #dbg_value(ptr %i.k, !23327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23501)
    #dbg_value(ptr %i.k, !23489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23502)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !23503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !23503, !noalias !23519
  store i64 %.sroa.06.0.i.i, ptr %i.aa, align 8, !dbg !23524, !noalias !23444
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !23524
  store ptr %i.z, ptr %.sroa.10.8..sroa_idx.i.i, align 8, !dbg !23524, !noalias !23444
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !23524
  store ptr %.sroa.6.sroa.5.0.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i, align 8, !dbg !23524, !noalias !23444
    #dbg_declare(ptr poison, !23517, !DIExpression(), !23530)
    #dbg_declare(ptr poison, !23516, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 192), !23531)
    #dbg_declare(ptr poison, !23495, !DIExpression(), !23532)
    #dbg_declare(ptr poison, !23494, !DIExpression(), !23532)
    #dbg_value(ptr poison, !23516, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23533)
    #dbg_declare(ptr poison, !23510, !DIExpression(), !23534)
    #dbg_value(ptr %i.k, !23509, !DIExpression(), !23535)
  store i32 1, ptr %i.e, align 8, !dbg !23503, !noalias !23519
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %.thread67.i.i unwind label %bb.j, !dbg !23536, !noalias !23444

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null, !dbg !23537
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0, !dbg !23537
    #dbg_value(ptr undef, !23345, !DIExpression(), !23353)
    #dbg_value(ptr %i.ac, !23350, !DIExpression(), !23353)
  %i.ad = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ac)
          to label %bb.l unwind label %bb.k, !dbg !23538, !noalias !23444 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !23539, !noalias !23444
  unreachable, !dbg !23539

.thread67.i.i:                                    ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !23540, !noalias !23519
    #dbg_value(i64 %.sroa.06.0.i.i, !23336, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23488)
    #dbg_value(ptr %i.k, !23336, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23488)
    #dbg_value(ptr null, !23279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23541)
    #dbg_value(ptr undef, !23279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23541)
    #dbg_value(ptr undef, !23392, !DIExpression(), !23394)
    #dbg_value(ptr undef, !23385, !DIExpression(), !23388)
  br label %bb.x, !dbg !23542

bb.l:                                             ; preds = %bb.j
  %i.af = extractvalue { ptr, ptr } %i.ad, 0, !dbg !23538 ; 4 uses
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1, !dbg !23538 ; 6 uses
    #dbg_value(ptr %i.ag, !23336, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23488)
    #dbg_value(ptr %i.af, !23336, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23488)
    #dbg_value(ptr %i.af, !23279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23541)
    #dbg_value(ptr %i.ag, !23279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23541)
    #dbg_value(ptr undef, !23392, !DIExpression(), !23394)
    #dbg_value(ptr undef, !23385, !DIExpression(), !23388)
  %.not34.i.i = icmp eq ptr %i.af, null, !dbg !23543
  br i1 %.not34.i.i, label %bb.x, label %bb.m, !dbg !23542

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr poison, !18939, !DIExpression(), !23544)
    #dbg_value(ptr poison, !9943, !DIExpression(), !23546)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !23548, !invariant.load !279, !noalias !23444 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null, !dbg !23548
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n, !dbg !23548

bb.n:                                             ; preds = %bb.m
  invoke void %i.ah(ptr noundef nonnull %i.af)
          to label %bb.o unwind label %bb.q, !dbg !23548, !noalias !23444

bb.o:                                             ; preds = %bb.n, %bb.m
    #dbg_value(ptr poison, !9952, !DIExpression(), !23549)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23551)
    #dbg_value(ptr %i.ag, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23551)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23552)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23554)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23556)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23558)
    #dbg_value(ptr %i.ag, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23552)
    #dbg_value(ptr %i.ag, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23554)
    #dbg_value(ptr %i.ag, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23556)
    #dbg_value(ptr %i.ag, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23558)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !23560
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !23560, !range !3062, !invariant.load !279, !noalias !23444 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23561)
    #dbg_value(i64 %i.aj, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23561)
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !23562
  br i1 %i.ak, label %bb.x, label %bb.p, !dbg !23562

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !23560
  %i.am = load i64, ptr %i.al, align 8, !dbg !23563, !range !3066, !invariant.load !279, !noalias !23444
    #dbg_value(i64 %i.am, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23561)
    #dbg_value(ptr %i.af, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23552)
    #dbg_value(ptr %i.af, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23554)
    #dbg_value(ptr %i.af, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23556)
    #dbg_value(ptr %i.af, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23558)
    #dbg_value(ptr %i.af, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23551)
    #dbg_value(ptr poison, !3067, !DIExpression(), !23564)
    #dbg_value(ptr poison, !3079, !DIExpression(), !23566)
    #dbg_value(ptr %i.af, !3075, !DIExpression(), !23564)
    #dbg_value(ptr %i.af, !3084, !DIExpression(), !23566)
    #dbg_value(ptr %i.af, !3088, !DIExpression(), !23568)
    #dbg_value(ptr %i.af, !3097, !DIExpression(), !23570)
    #dbg_value(i64 %i.am, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23564)
    #dbg_value(i64 %i.am, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23566)
    #dbg_value(i64 %i.am, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23568)
    #dbg_value(i64 %i.am, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23570)
    #dbg_value(i64 %i.aj, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23564)
    #dbg_value(i64 %i.aj, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23566)
    #dbg_value(i64 %i.aj, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23568)
    #dbg_value(i64 %i.aj, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23570)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, -9223372036854775808) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #14, !dbg !23572, !noalias !23444
  br label %bb.x, !dbg !23573

bb.q:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !23574)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23576)
    #dbg_value(ptr %i.ag, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23576)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23577)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23579)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23581)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23583)
    #dbg_value(ptr %i.ag, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23577)
    #dbg_value(ptr %i.ag, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23579)
    #dbg_value(ptr %i.ag, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23581)
    #dbg_value(ptr %i.ag, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23583)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !23585
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !23585, !range !3062, !invariant.load !279, !noalias !23444 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23586)
    #dbg_value(i64 %i.ap, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23586)
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !23587
  br i1 %i.aq, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i, label %bb.r, !dbg !23587

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !23585
  %i.as = load i64, ptr %i.ar, align 8, !dbg !23588, !range !3066, !invariant.load !279, !noalias !23444
    #dbg_value(i64 %i.as, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23586)
    #dbg_value(ptr %i.af, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23577)
    #dbg_value(ptr %i.af, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23579)
    #dbg_value(ptr %i.af, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23581)
    #dbg_value(ptr %i.af, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23583)
    #dbg_value(ptr %i.af, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23576)
    #dbg_value(ptr poison, !3067, !DIExpression(), !23589)
    #dbg_value(ptr poison, !3079, !DIExpression(), !23591)
    #dbg_value(ptr %i.af, !3075, !DIExpression(), !23589)
    #dbg_value(ptr %i.af, !3084, !DIExpression(), !23591)
    #dbg_value(ptr %i.af, !3088, !DIExpression(), !23593)
    #dbg_value(ptr %i.af, !3097, !DIExpression(), !23595)
    #dbg_value(i64 %i.as, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23589)
    #dbg_value(i64 %i.as, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23591)
    #dbg_value(i64 %i.as, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23593)
    #dbg_value(i64 %i.as, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23595)
    #dbg_value(i64 %i.ap, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23589)
    #dbg_value(i64 %i.ap, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23591)
    #dbg_value(i64 %i.ap, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23593)
    #dbg_value(i64 %i.ap, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23595)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, -9223372036854775808) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #14, !dbg !23597, !noalias !23444
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i, !dbg !23598

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i: ; preds = %bb.r, %bb.q
  resume { ptr, i32 } %i.an, !dbg !23548

bb.s:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !23599 ; 2 uses
    #dbg_value(ptr poison, !23600, !DIExpression(), !23634)
    #dbg_value(ptr %i.at, !23651, !DIExpression(), !23655)
    #dbg_value(ptr %i.at, !23656, !DIExpression(), !23660)
    #dbg_value(ptr %i.at, !23647, !DIExpression(), !23662)
    #dbg_value(ptr %i.at, !23641, !DIExpression(), !23663)
    #dbg_value(ptr %i.at, !23642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23664)
    #dbg_value(ptr undef, !23665, !DIExpression(), !23672)
    #dbg_value(ptr %i.at, !23670, !DIExpression(), !23674)
    #dbg_value(ptr %i.at, !23675, !DIExpression(), !23684)
    #dbg_declare(ptr poison, !23681, !DIExpression(), !23686)
    #dbg_declare(ptr poison, !23680, !DIExpression(), !23686)
    #dbg_value(ptr %i.at, !23687, !DIExpression(), !23695)
    #dbg_declare(ptr poison, !23692, !DIExpression(), !23697)
    #dbg_value(ptr poison, !23698, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23704)
end_hunk_7
begin_hunk_8_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(i64 %i.v, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23992)
    #dbg_value(i64 %i.v, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23994)
    #dbg_value(i64 %i.s, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23988)
    #dbg_value(i64 %i.s, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23990)
    #dbg_value(i64 %i.s, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23992)
    #dbg_value(i64 %i.s, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23994)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #14, !dbg !23996
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !23997

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !23998)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24000)
    #dbg_value(ptr %i.o, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24000)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24001)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24003)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24005)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24007)
    #dbg_value(ptr %i.o, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24001)
    #dbg_value(ptr %i.o, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24003)
    #dbg_value(ptr %i.o, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24005)
    #dbg_value(ptr %i.o, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24007)
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !24009
  %i.y = load i64, ptr %i.x, align 8, !dbg !24009, !range !3062, !invariant.load !279 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24010)
    #dbg_value(i64 %i.y, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24010)
  %i.z = icmp eq i64 %i.y, 0, !dbg !24011
  br i1 %i.z, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.n, !dbg !24011

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !24009
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !24012, !range !3066, !invariant.load !279
    #dbg_value(i64 %i.ab, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24010)
    #dbg_value(ptr %i.n, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24001)
    #dbg_value(ptr %i.n, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24003)
    #dbg_value(ptr %i.n, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24005)
    #dbg_value(ptr %i.n, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24007)
    #dbg_value(ptr %i.n, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24000)
    #dbg_value(ptr poison, !3067, !DIExpression(), !24013)
    #dbg_value(ptr poison, !3079, !DIExpression(), !24015)
    #dbg_value(ptr %i.n, !3075, !DIExpression(), !24013)
    #dbg_value(ptr %i.n, !3084, !DIExpression(), !24015)
    #dbg_value(ptr %i.n, !3088, !DIExpression(), !24017)
    #dbg_value(ptr %i.n, !3097, !DIExpression(), !24019)
    #dbg_value(i64 %i.ab, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24013)
    #dbg_value(i64 %i.ab, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24015)
    #dbg_value(i64 %i.ab, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24017)
    #dbg_value(i64 %i.ab, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24019)
    #dbg_value(i64 %i.y, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24013)
    #dbg_value(i64 %i.y, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24015)
    #dbg_value(i64 %i.y, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24017)
    #dbg_value(i64 %i.y, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24019)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #14, !dbg !24021
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !24022

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w, !dbg !23972

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.noexc10, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
    #dbg_value(ptr poison, !24023, !DIExpression(), !24034)
    #dbg_declare(ptr %i.b, !24030, !DIExpression(), !24036)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24037
    #dbg_value(ptr %0, !24038, !DIExpression(), !24041)
  store ptr %0, ptr %i.b, align 8, !dbg !24043
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !24044
  %i.ad = call noundef ptr @_RNvXs5_NtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler14current_threadINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !dbg !24045
  %.not.i = icmp eq ptr %i.ad, null, !dbg !24044
  %..i = select i1 %.not.i, i64 1, i64 2, !dbg !24046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24047
    #dbg_value(i64 %..i, !23810, !DIExpression(), !24048)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i), !dbg !24049
  br i1 %i.ae, label %bb.o, label %bb.p, !dbg !24050

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !24051, !DIExpression(DW_OP_deref), !24054)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !24056
  br label %bb.p, !dbg !24057

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !24058
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !24059 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !24062, !DIExpression(), !24063)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !24064
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !24065

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !22783, !DIExpression(), !24066)
    #dbg_value(ptr %0, !22785, !DIExpression(), !24068)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !24070
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !24071

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !22793, !DIExpression(DW_OP_deref), !24072)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !24074
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !24075

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !24076, !DIExpression(), !24079)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !24081 ; 2 uses
    #dbg_value(ptr poison, !23600, !DIExpression(), !24082)
    #dbg_value(ptr %i.e, !23651, !DIExpression(), !24087)
    #dbg_value(ptr %i.e, !23656, !DIExpression(), !24088)
    #dbg_value(ptr %i.e, !23647, !DIExpression(), !24090)
    #dbg_value(ptr %i.e, !23641, !DIExpression(), !24091)
    #dbg_value(ptr %i.e, !23642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24092)
    #dbg_value(ptr undef, !23665, !DIExpression(), !24093)
    #dbg_value(ptr %i.e, !23670, !DIExpression(), !24095)
    #dbg_value(ptr %i.e, !23675, !DIExpression(), !24096)
    #dbg_declare(ptr poison, !23681, !DIExpression(), !24098)
    #dbg_declare(ptr poison, !23680, !DIExpression(), !24098)
    #dbg_value(ptr %i.e, !23687, !DIExpression(), !24099)
    #dbg_declare(ptr poison, !23692, !DIExpression(), !24101)
    #dbg_value(ptr poison, !23698, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24102)
    #dbg_value(ptr %i.e, !23706, !DIExpression(), !24104)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24106
  store i32 2, ptr %i.a, align 8, !dbg !24106
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !24107

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !24108
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !24108
    #dbg_value(ptr undef, !23600, !DIExpression(), !24082)
    #dbg_value(ptr %i.g, !23631, !DIExpression(), !24082)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !24109 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !24110
  unreachable, !dbg !24110

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24111
    #dbg_value(ptr %i.e, !23642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24092)
    #dbg_value(ptr undef, !23642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24092)
    #dbg_value(ptr poison, !23652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24112)
    #dbg_value(ptr poison, !23718, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24113)
    #dbg_value(ptr poison, !23652, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24112)
    #dbg_value(ptr poison, !23718, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24113)
    #dbg_value(i64 poison, !23721, !DIExpression(), !24113)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !24115

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !24109
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !24109 ; 2 uses
    #dbg_value(ptr %i.j, !23642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24092)
    #dbg_value(ptr %i.k, !23642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24092)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !23652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24112)
    #dbg_value(ptr %i.j, !23718, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24113)
    #dbg_value(ptr %i.k, !23652, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24112)
    #dbg_value(ptr %i.k, !23718, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24113)
    #dbg_value(i64 poison, !23721, !DIExpression(), !24113)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !24116

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !24113
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !24113
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !24117
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !24117, !range !19413, !noundef !279
    #dbg_value(i64 %.sroa.01.0.i, !23659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24088)
    #dbg_value(ptr %.sroa.6.0.i, !23659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24088)
    #dbg_value(ptr %.sroa.8.0.i, !23659, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24088)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24118
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !24118
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !24118
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !24118
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !24118
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !24118
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !24118
  store i32 1, ptr %i.b, align 8, !dbg !24118
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !24119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24120
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !24121
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !24121

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !24122
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !24123 {
bb.a:
    #dbg_value(ptr %0, !24131, !DIExpression(), !24132)
    #dbg_value(ptr %0, !24133, !DIExpression(), !24137)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !24139
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !24140

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !24141, !DIExpression(), !24146)
    #dbg_value(ptr undef, !24141, !DIExpression(DW_OP_deref), !24146)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !24148
  br label %bb.c, !dbg !24149

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !24150
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !24151 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !24156, !DIExpression(), !24159)
    #dbg_value(ptr %1, !24157, !DIExpression(), !24159)
    #dbg_value(ptr %2, !24158, !DIExpression(), !24159)
    #dbg_declare(ptr poison, !24160, !DIExpression(), !24171)
    #dbg_value(ptr poison, !24181, !DIExpression(), !24188)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !24190
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !24191
  br i1 %i.c, label %bb.b, label %bb.o, !dbg !24191

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !24192
    #dbg_value(ptr %0, !24179, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !24193)
    #dbg_value(ptr %0, !24170, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !24194)
    #dbg_value(ptr %0, !24195, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !24203)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !24205 ; 2 uses
    #dbg_declare(ptr poison, !24206, !DIExpression(), !24214)
    #dbg_value(ptr %i.d, !24211, !DIExpression(), !24216)
    #dbg_value(ptr %i.d, !24217, !DIExpression(), !24223)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24225, !noalias !24226
    #dbg_value(i32 2, !24222, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !24223)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !24229, !noalias !24226
  store i32 2, ptr %i.d, align 8, !dbg !24230, !noalias !24226
  %i.e = load i32, ptr %i.a, align 8, !dbg !24225, !range !9897, !noalias !24226, !noundef !279
  %i.f = icmp eq i32 %i.e, 1, !dbg !24231
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !24231, !prof !18680

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.d unwind label %bb.e, !dbg !24232, !noalias !24226

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.x, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op, !dbg !24159

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #13
          to label %common.resume unwind label %bb.f, !dbg !24233, !noalias !24226

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !24214, !noalias !24226
  unreachable, !dbg !24214

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !24234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !24234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24233, !noalias !24226
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24235), !dbg !24238
    #dbg_value(ptr %1, !18688, !DIExpression(), !24239)
  %i.j = load i64, ptr %1, align 8, !dbg !24241, !range !563, !alias.scope !24235, !noundef !279
  %i.k = icmp eq i64 %i.j, 0, !dbg !24241
  br i1 %i.k, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !24241

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !24241 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24242), !dbg !24241
    #dbg_value(ptr %i.l, !9901, !DIExpression(), !24245)
  %i.m = load i64, ptr %i.l, align 8, !dbg !24247, !alias.scope !24248, !noundef !279
  %i.n = icmp eq i64 %i.m, 0, !dbg !24247
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.h, !dbg !24247

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !24247
  %.val.i.i = load ptr, ptr %i.o, align 8, !dbg !24247, !alias.scope !24248, !noundef !279 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !24247
  %.val1.i.i = load ptr, ptr %i.p, align 8, !dbg !24247, !alias.scope !24248 ; 6 uses
    #dbg_value(ptr poison, !9912, !DIExpression(), !24249)
    #dbg_value(ptr poison, !9922, !DIExpression(), !24251)
  %i.q = icmp eq ptr %.val.i.i, null, !dbg !24253
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !24253

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr poison, !9933, !DIExpression(), !24254)
    #dbg_value(ptr poison, !9943, !DIExpression(), !24256)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.r = load ptr, ptr %.val1.i.i, align 8, !dbg !24258, !invariant.load !279, !noalias !24248 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null, !dbg !24258
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !24258

bb.j:                                             ; preds = %bb.i
  invoke void %i.r(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !dbg !24258, !noalias !24248

bb.k:                                             ; preds = %bb.j, %bb.i
    #dbg_value(ptr poison, !9952, !DIExpression(), !24259)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24261)
    #dbg_value(ptr %.val1.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24261)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24262)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24264)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24266)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24268)
    #dbg_value(ptr %.val1.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24262)
    #dbg_value(ptr %.val1.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24264)
    #dbg_value(ptr %.val1.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24266)
    #dbg_value(ptr %.val1.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24268)
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !24270
  %i.t = load i64, ptr %i.s, align 8, !dbg !24270, !range !3062, !invariant.load !279, !noalias !24248 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24271)
    #dbg_value(i64 %i.t, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24271)
  %i.u = icmp eq i64 %i.t, 0, !dbg !24272
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.l, !dbg !24272

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !24270
  %i.w = load i64, ptr %i.v, align 8, !dbg !24273, !range !3066, !invariant.load !279, !noalias !24248
    #dbg_value(i64 %i.w, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24271)
    #dbg_value(ptr %.val.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24262)
    #dbg_value(ptr %.val.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24264)
    #dbg_value(ptr %.val.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24266)
    #dbg_value(ptr %.val.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24268)
    #dbg_value(ptr %.val.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24261)
    #dbg_value(ptr poison, !3067, !DIExpression(), !24274)
    #dbg_value(ptr poison, !3079, !DIExpression(), !24276)
    #dbg_value(ptr %.val.i.i, !3075, !DIExpression(), !24274)
    #dbg_value(ptr %.val.i.i, !3084, !DIExpression(), !24276)
    #dbg_value(ptr %.val.i.i, !3088, !DIExpression(), !24278)
    #dbg_value(ptr %.val.i.i, !3097, !DIExpression(), !24280)
    #dbg_value(i64 %i.w, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24274)
    #dbg_value(i64 %i.w, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24276)
    #dbg_value(i64 %i.w, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24278)
    #dbg_value(i64 %i.w, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24280)
    #dbg_value(i64 %i.t, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24274)
    #dbg_value(i64 %i.t, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24276)
    #dbg_value(i64 %i.t, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24278)
    #dbg_value(i64 %i.t, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24280)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #14, !dbg !24282, !noalias !24248
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !24283

bb.m:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !24284)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24286)
    #dbg_value(ptr %.val1.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24286)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24287)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24289)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24291)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24293)
    #dbg_value(ptr %.val1.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24287)
    #dbg_value(ptr %.val1.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24289)
    #dbg_value(ptr %.val1.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24291)
    #dbg_value(ptr %.val1.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24293)
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !24295
  %i.z = load i64, ptr %i.y, align 8, !dbg !24295, !range !3062, !invariant.load !279, !noalias !24248 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24296)
    #dbg_value(i64 %i.z, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24296)
  %i.aa = icmp eq i64 %i.z, 0, !dbg !24297
  br i1 %i.aa, label %.body, label %bb.n, !dbg !24297

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !24295
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !24298, !range !3066, !invariant.load !279, !noalias !24248
    #dbg_value(i64 %i.ac, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24296)
    #dbg_value(ptr %.val.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24287)
    #dbg_value(ptr %.val.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24289)
    #dbg_value(ptr %.val.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24291)
    #dbg_value(ptr %.val.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24293)
    #dbg_value(ptr %.val.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24286)
    #dbg_value(ptr poison, !3067, !DIExpression(), !24299)
    #dbg_value(ptr poison, !3079, !DIExpression(), !24301)
    #dbg_value(ptr %.val.i.i, !3075, !DIExpression(), !24299)
    #dbg_value(ptr %.val.i.i, !3084, !DIExpression(), !24301)
    #dbg_value(ptr %.val.i.i, !3088, !DIExpression(), !24303)
    #dbg_value(ptr %.val.i.i, !3097, !DIExpression(), !24305)
    #dbg_value(i64 %i.ac, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24299)
    #dbg_value(i64 %i.ac, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24301)
    #dbg_value(i64 %i.ac, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24303)
    #dbg_value(i64 %i.ac, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24305)
    #dbg_value(i64 %i.z, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24299)
    #dbg_value(i64 %i.z, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24301)
    #dbg_value(i64 %i.z, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24303)
    #dbg_value(i64 %i.z, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24305)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #14, !dbg !24307, !noalias !24248
  br label %.body, !dbg !24308

bb.o:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !24309

.body:                                            ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !24238
  br label %common.resume, !dbg !24310
end_hunk_8
begin_hunk_9_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(ptr poison, !3067, !DIExpression(), !24494)
    #dbg_value(ptr poison, !3079, !DIExpression(), !24496)
    #dbg_value(ptr %i.j, !3075, !DIExpression(), !24494)
    #dbg_value(ptr %i.j, !3084, !DIExpression(), !24496)
    #dbg_value(ptr %i.j, !3088, !DIExpression(), !24498)
    #dbg_value(ptr %i.j, !3097, !DIExpression(), !24500)
    #dbg_value(i64 %i.x, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24494)
    #dbg_value(i64 %i.x, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24496)
    #dbg_value(i64 %i.x, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24498)
    #dbg_value(i64 %i.x, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24500)
    #dbg_value(i64 %i.u, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24494)
    #dbg_value(i64 %i.u, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24496)
    #dbg_value(i64 %i.u, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24498)
    #dbg_value(i64 %i.u, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24500)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !24502
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !24503

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !24453

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !24131, !DIExpression(), !24504)
    #dbg_value(ptr %0, !24133, !DIExpression(), !24506)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !24508
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !24509

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !24141, !DIExpression(DW_OP_deref), !24510)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !24512
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !24513

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.l, %bb.m
  ret void, !dbg !24514

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !24381, !DIExpression(), !24384)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !24515
  call void @_RNvMs6_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef), !dbg !24516
  br label %bb.l, !dbg !24517
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !24518 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
    #dbg_value(ptr %0, !24521, !DIExpression(), !24522)
    #dbg_value(ptr poison, !24523, !DIExpression(), !24540)
    #dbg_value(ptr poison, !24542, !DIExpression(), !24545)
    #dbg_value(ptr poison, !24542, !DIExpression(), !24547)
    #dbg_value(ptr poison, !24542, !DIExpression(), !24549)
    #dbg_declare(ptr %i.h, !24532, !DIExpression(), !24551)
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0), !dbg !24552
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit
    i8 3, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCskigd7sy4fqX_10quinn_perf.exit.thread10
  ], !dbg !24553

default.unreachable:                              ; preds = %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11poll_futureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !24530, !DIExpression(), !24554)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !24555
    #dbg_value(ptr poison, !24556, !DIExpression(), !24561)
    #dbg_value(ptr @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task5waker12WAKER_VTABLE, !24559, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24563)
    #dbg_value(ptr %0, !24559, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24563)
  store ptr @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8, !dbg !24564
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !24564
  store ptr %0, ptr %i.j, align 8, !dbg !24564
    #dbg_value(ptr %i.h, !24534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24565)
    #dbg_value(ptr %i.h, !24566, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24591)
    #dbg_value(ptr %i.h, !24597, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24630)
    #dbg_value(ptr %i.h, !24611, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24631)
    #dbg_value(ptr %i.h, !24618, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24632)
    #dbg_value(ptr %i.h, !24534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24565)
    #dbg_value(ptr %i.h, !24566, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24591)
    #dbg_value(ptr %i.h, !24597, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24630)
    #dbg_value(ptr %i.h, !24611, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24631)
    #dbg_value(ptr %i.h, !24618, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24632)
    #dbg_value(ptr null, !24534, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24565)
    #dbg_value(ptr null, !24566, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !24591)
    #dbg_value(ptr null, !24597, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !24630)
    #dbg_value(ptr null, !24611, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !24631)
    #dbg_value(ptr null, !24618, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24632)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !24633 ; 6 uses
    #dbg_value(ptr poison, !24634, !DIExpression(), !24660)
    #dbg_value(ptr poison, !24674, !DIExpression(), !24692)
    #dbg_value(ptr poison, !24693, !DIExpression(), !24701)
    #dbg_declare(ptr poison, !24598, !DIExpression(DW_OP_LLVM_fragment, 128, 192), !24703)
    #dbg_value(ptr poison, !24704, !DIExpression(), !24711)
    #dbg_value(ptr poison, !24718, !DIExpression(), !24722)
    #dbg_value(ptr poison, !24723, !DIExpression(), !24731)
    #dbg_value(ptr poison, !24733, !DIExpression(), !24736)
    #dbg_value(ptr poison, !24740, !DIExpression(), !24742)
    #dbg_value(ptr %i.k, !24617, !DIExpression(), !24632)
    #dbg_value(ptr %i.k, !24611, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24631)
    #dbg_value(ptr %i.k, !24597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24630)
    #dbg_value(ptr %i.k, !24566, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24591)
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !24743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !24749, !noalias !24774
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8, !dbg !24781
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !24781
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8, !dbg !24781
    #dbg_value(ptr %i.k, !24598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24787)
    #dbg_value(ptr %i.h, !24598, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24787)
    #dbg_declare(ptr poison, !24768, !DIExpression(DW_OP_LLVM_fragment, 64, 256), !24788)
    #dbg_declare(ptr poison, !24719, !DIExpression(DW_OP_LLVM_fragment, 64, 256), !24789)
    #dbg_value(ptr undef, !24718, !DIExpression(), !24722)
    #dbg_value(ptr undef, !24704, !DIExpression(), !24711)
    #dbg_value(ptr %i.k, !24719, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24790)
    #dbg_value(ptr %i.k, !24768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24791)
  store ptr %i.h, ptr %i.g, align 8, !dbg !24743, !noalias !24792
    #dbg_declare(ptr poison, !24756, !DIExpression(), !24793)
    #dbg_declare(ptr poison, !24755, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 256), !24794)
    #dbg_declare(ptr poison, !24770, !DIExpression(), !24795)
    #dbg_declare(ptr poison, !24769, !DIExpression(), !24795)
    #dbg_value(ptr poison, !24755, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24796)
    #dbg_value(ptr %i.k, !24757, !DIExpression(), !24797)
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !dbg !24798, !noalias !24774

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
    #dbg_value(ptr poison, !24799, !DIExpression(), !24807)
    #dbg_value(ptr poison, !24809, !DIExpression(), !24812)
    #dbg_value(ptr %i.k, !24814, !DIExpression(), !24817)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !24819, !noalias !24774
  store i32 2, ptr %i.f, align 8, !dbg !24819, !noalias !24774
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !dbg !24820, !noalias !24774

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !24821, !noalias !24774
  unreachable, !dbg !24821

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !24822, !noalias !24774
  %i.o = extractvalue { ptr, i32 } %i.m, 0, !dbg !24823
    #dbg_value(ptr undef, !24723, !DIExpression(), !24731)
    #dbg_value(ptr %i.o, !24728, !DIExpression(), !24731)
  %i.p = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !dbg !24824, !noalias !24792 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !24825, !noalias !24792
  unreachable, !dbg !24825

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !24826, !noalias !24774
    #dbg_value(ptr %i.h, !24598, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24787)
    #dbg_value(!DIArgList(i64 0, i1 %i.l), !24598, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !24787)
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64, !dbg !24823
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr, !dbg !24823
    #dbg_value(ptr null, !24619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24827)
    #dbg_value(ptr %i.r, !24619, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24827)
  br label %bb.h, !dbg !24828

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0, !dbg !24824 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1, !dbg !24824 ; 2 uses
    #dbg_value(ptr %i.t, !24598, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24787)
    #dbg_value(ptr %i.s, !24598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24787)
    #dbg_value(ptr %i.s, !24619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24827)
    #dbg_value(ptr %i.t, !24619, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24827)
  %.not.i.i = icmp eq ptr %i.s, null, !dbg !24829
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !24828, !prof !19410

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.s, !24625, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24830)
    #dbg_value(ptr %i.t, !24625, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24830)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !24831
  %i.v = load i64, ptr %i.u, align 8, !dbg !24831, !range !19413, !noalias !24792, !noundef !279
    #dbg_value(i64 %i.v, !24621, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24832)
    #dbg_value(ptr %i.s, !24621, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24832)
    #dbg_value(ptr %i.t, !24621, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24832)
  br label %bb.i, !dbg !24833

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64, !dbg !24829
  %i.y = trunc i64 %i.x to i1, !dbg !24829
  br i1 %i.y, label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11poll_futureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit.i, label %bb.i, !dbg !24828

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ], !dbg !24827
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ], !dbg !24827
    #dbg_value(ptr %i.z, !24621, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24832)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !24621, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24832)
    #dbg_value(i64 %.sroa.06.0.i.i, !24621, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24832)
    #dbg_value(ptr %i.k, !24690, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24834)
    #dbg_value(ptr %i.k, !24683, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24835)
    #dbg_value(i64 %.sroa.06.0.i.i, !24690, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24834)
    #dbg_value(i64 %.sroa.06.0.i.i, !24683, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24835)
    #dbg_value(ptr %i.z, !24683, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24835)
    #dbg_value(ptr %i.z, !24690, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24834)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !24683, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !24835)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !24690, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !24834)
    #dbg_value(ptr %i.k, !24684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24836)
    #dbg_value(i64 %.sroa.06.0.i.i, !24684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24836)
    #dbg_value(ptr %i.z, !24684, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24836)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !24684, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !24836)
    #dbg_declare(ptr poison, !24837, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !24846)
    #dbg_declare(ptr poison, !24675, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !24848)
    #dbg_value(ptr undef, !24674, !DIExpression(), !24692)
    #dbg_value(ptr undef, !24634, !DIExpression(), !24660)
    #dbg_value(ptr %i.k, !24675, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24849)
    #dbg_value(ptr %i.k, !24837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24850)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !24851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !24851, !noalias !24867
  store i64 %.sroa.06.0.i.i, ptr %i.aa, align 8, !dbg !24872, !noalias !24792
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !24872
  store ptr %i.z, ptr %.sroa.10.8..sroa_idx.i.i, align 8, !dbg !24872, !noalias !24792
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !24872
  store ptr %.sroa.6.sroa.5.0.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i, align 8, !dbg !24872, !noalias !24792
    #dbg_declare(ptr poison, !24865, !DIExpression(), !24878)
    #dbg_declare(ptr poison, !24864, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 192), !24879)
    #dbg_declare(ptr poison, !24843, !DIExpression(), !24880)
    #dbg_declare(ptr poison, !24842, !DIExpression(), !24880)
    #dbg_value(ptr poison, !24864, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24881)
    #dbg_declare(ptr poison, !24858, !DIExpression(), !24882)
    #dbg_value(ptr %i.k, !24857, !DIExpression(), !24883)
  store i32 1, ptr %i.e, align 8, !dbg !24851, !noalias !24867
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %.thread67.i.i unwind label %bb.j, !dbg !24884, !noalias !24792

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null, !dbg !24885
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0, !dbg !24885
    #dbg_value(ptr undef, !24693, !DIExpression(), !24701)
    #dbg_value(ptr %i.ac, !24698, !DIExpression(), !24701)
  %i.ad = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ac)
          to label %bb.l unwind label %bb.k, !dbg !24886, !noalias !24792 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !24887, !noalias !24792
  unreachable, !dbg !24887

.thread67.i.i:                                    ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !24888, !noalias !24867
    #dbg_value(i64 %.sroa.06.0.i.i, !24684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24836)
    #dbg_value(ptr %i.k, !24684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24836)
    #dbg_value(ptr null, !24627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24889)
    #dbg_value(ptr undef, !24627, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24889)
    #dbg_value(ptr undef, !24740, !DIExpression(), !24742)
    #dbg_value(ptr undef, !24733, !DIExpression(), !24736)
  br label %bb.x, !dbg !24890

bb.l:                                             ; preds = %bb.j
  %i.af = extractvalue { ptr, ptr } %i.ad, 0, !dbg !24886 ; 4 uses
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1, !dbg !24886 ; 6 uses
    #dbg_value(ptr %i.ag, !24684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24836)
    #dbg_value(ptr %i.af, !24684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24836)
    #dbg_value(ptr %i.af, !24627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24889)
    #dbg_value(ptr %i.ag, !24627, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24889)
    #dbg_value(ptr undef, !24740, !DIExpression(), !24742)
    #dbg_value(ptr undef, !24733, !DIExpression(), !24736)
  %.not34.i.i = icmp eq ptr %i.af, null, !dbg !24891
  br i1 %.not34.i.i, label %bb.x, label %bb.m, !dbg !24890

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr poison, !18939, !DIExpression(), !24892)
    #dbg_value(ptr poison, !9943, !DIExpression(), !24894)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !24896, !invariant.load !279, !noalias !24792 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null, !dbg !24896
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n, !dbg !24896

bb.n:                                             ; preds = %bb.m
  invoke void %i.ah(ptr noundef nonnull %i.af)
          to label %bb.o unwind label %bb.q, !dbg !24896, !noalias !24792

bb.o:                                             ; preds = %bb.n, %bb.m
    #dbg_value(ptr poison, !9952, !DIExpression(), !24897)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24899)
    #dbg_value(ptr %i.ag, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24899)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24900)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24902)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24904)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24906)
    #dbg_value(ptr %i.ag, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24900)
    #dbg_value(ptr %i.ag, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24902)
    #dbg_value(ptr %i.ag, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24904)
    #dbg_value(ptr %i.ag, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24906)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !24908
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !24908, !range !3062, !invariant.load !279, !noalias !24792 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24909)
    #dbg_value(i64 %i.aj, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24909)
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !24910
  br i1 %i.ak, label %bb.x, label %bb.p, !dbg !24910

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !24908
  %i.am = load i64, ptr %i.al, align 8, !dbg !24911, !range !3066, !invariant.load !279, !noalias !24792
    #dbg_value(i64 %i.am, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24909)
    #dbg_value(ptr %i.af, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24900)
    #dbg_value(ptr %i.af, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24902)
    #dbg_value(ptr %i.af, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24904)
    #dbg_value(ptr %i.af, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24906)
    #dbg_value(ptr %i.af, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24899)
    #dbg_value(ptr poison, !3067, !DIExpression(), !24912)
    #dbg_value(ptr poison, !3079, !DIExpression(), !24914)
    #dbg_value(ptr %i.af, !3075, !DIExpression(), !24912)
    #dbg_value(ptr %i.af, !3084, !DIExpression(), !24914)
    #dbg_value(ptr %i.af, !3088, !DIExpression(), !24916)
    #dbg_value(ptr %i.af, !3097, !DIExpression(), !24918)
    #dbg_value(i64 %i.am, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24912)
    #dbg_value(i64 %i.am, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24914)
    #dbg_value(i64 %i.am, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24916)
    #dbg_value(i64 %i.am, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24918)
    #dbg_value(i64 %i.aj, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24912)
    #dbg_value(i64 %i.aj, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24914)
    #dbg_value(i64 %i.aj, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24916)
    #dbg_value(i64 %i.aj, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24918)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, -9223372036854775808) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #14, !dbg !24920, !noalias !24792
  br label %bb.x, !dbg !24921

bb.q:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !24922)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24924)
    #dbg_value(ptr %i.ag, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24924)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24925)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24927)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24929)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24931)
    #dbg_value(ptr %i.ag, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24925)
    #dbg_value(ptr %i.ag, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24927)
    #dbg_value(ptr %i.ag, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24929)
    #dbg_value(ptr %i.ag, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24931)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !24933
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !24933, !range !3062, !invariant.load !279, !noalias !24792 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24934)
    #dbg_value(i64 %i.ap, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24934)
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !24935
  br i1 %i.aq, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i, label %bb.r, !dbg !24935

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !24933
  %i.as = load i64, ptr %i.ar, align 8, !dbg !24936, !range !3066, !invariant.load !279, !noalias !24792
    #dbg_value(i64 %i.as, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24934)
    #dbg_value(ptr %i.af, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24925)
    #dbg_value(ptr %i.af, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24927)
    #dbg_value(ptr %i.af, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24929)
    #dbg_value(ptr %i.af, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24931)
    #dbg_value(ptr %i.af, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24924)
    #dbg_value(ptr poison, !3067, !DIExpression(), !24937)
    #dbg_value(ptr poison, !3079, !DIExpression(), !24939)
    #dbg_value(ptr %i.af, !3075, !DIExpression(), !24937)
    #dbg_value(ptr %i.af, !3084, !DIExpression(), !24939)
    #dbg_value(ptr %i.af, !3088, !DIExpression(), !24941)
    #dbg_value(ptr %i.af, !3097, !DIExpression(), !24943)
    #dbg_value(i64 %i.as, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24937)
    #dbg_value(i64 %i.as, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24939)
    #dbg_value(i64 %i.as, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24941)
    #dbg_value(i64 %i.as, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24943)
    #dbg_value(i64 %i.ap, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24937)
    #dbg_value(i64 %i.ap, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24939)
    #dbg_value(i64 %i.ap, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24941)
    #dbg_value(i64 %i.ap, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24943)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, -9223372036854775808) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #14, !dbg !24945, !noalias !24792
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i, !dbg !24946

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i: ; preds = %bb.r, %bb.q
  resume { ptr, i32 } %i.an, !dbg !24896

bb.s:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !24947 ; 2 uses
    #dbg_value(ptr poison, !24948, !DIExpression(), !24982)
    #dbg_value(ptr %i.at, !24999, !DIExpression(), !25003)
    #dbg_value(ptr %i.at, !25004, !DIExpression(), !25008)
    #dbg_value(ptr %i.at, !24995, !DIExpression(), !25010)
    #dbg_value(ptr %i.at, !24989, !DIExpression(), !25011)
    #dbg_value(ptr %i.at, !24990, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25012)
    #dbg_value(ptr undef, !25013, !DIExpression(), !25020)
    #dbg_value(ptr %i.at, !25018, !DIExpression(), !25022)
    #dbg_value(ptr %i.at, !25023, !DIExpression(), !25032)
    #dbg_declare(ptr poison, !25029, !DIExpression(), !25034)
    #dbg_declare(ptr poison, !25028, !DIExpression(), !25034)
    #dbg_value(ptr %i.at, !25035, !DIExpression(), !25043)
    #dbg_declare(ptr poison, !25040, !DIExpression(), !25045)
    #dbg_value(ptr poison, !25046, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25052)
end_hunk_9
begin_hunk_10_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(i64 %i.v, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25340)
    #dbg_value(i64 %i.v, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25342)
    #dbg_value(i64 %i.s, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25336)
    #dbg_value(i64 %i.s, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25338)
    #dbg_value(i64 %i.s, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25340)
    #dbg_value(i64 %i.s, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25342)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #14, !dbg !25344
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !25345

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !25346)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25348)
    #dbg_value(ptr %i.o, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25348)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25349)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25351)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25353)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25355)
    #dbg_value(ptr %i.o, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25349)
    #dbg_value(ptr %i.o, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25351)
    #dbg_value(ptr %i.o, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25353)
    #dbg_value(ptr %i.o, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25355)
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !25357
  %i.y = load i64, ptr %i.x, align 8, !dbg !25357, !range !3062, !invariant.load !279 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25358)
    #dbg_value(i64 %i.y, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25358)
  %i.z = icmp eq i64 %i.y, 0, !dbg !25359
  br i1 %i.z, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.n, !dbg !25359

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !25357
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !25360, !range !3066, !invariant.load !279
    #dbg_value(i64 %i.ab, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25358)
    #dbg_value(ptr %i.n, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25349)
    #dbg_value(ptr %i.n, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25351)
    #dbg_value(ptr %i.n, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25353)
    #dbg_value(ptr %i.n, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25355)
    #dbg_value(ptr %i.n, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25348)
    #dbg_value(ptr poison, !3067, !DIExpression(), !25361)
    #dbg_value(ptr poison, !3079, !DIExpression(), !25363)
    #dbg_value(ptr %i.n, !3075, !DIExpression(), !25361)
    #dbg_value(ptr %i.n, !3084, !DIExpression(), !25363)
    #dbg_value(ptr %i.n, !3088, !DIExpression(), !25365)
    #dbg_value(ptr %i.n, !3097, !DIExpression(), !25367)
    #dbg_value(i64 %i.ab, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25361)
    #dbg_value(i64 %i.ab, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25363)
    #dbg_value(i64 %i.ab, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25365)
    #dbg_value(i64 %i.ab, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25367)
    #dbg_value(i64 %i.y, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25361)
    #dbg_value(i64 %i.y, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25363)
    #dbg_value(i64 %i.y, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25365)
    #dbg_value(i64 %i.y, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25367)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #14, !dbg !25369
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !25370

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w, !dbg !25320

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.noexc10, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
    #dbg_value(ptr poison, !25371, !DIExpression(), !25382)
    #dbg_declare(ptr %i.b, !25378, !DIExpression(), !25384)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25385
    #dbg_value(ptr %0, !25386, !DIExpression(), !25389)
  store ptr %0, ptr %i.b, align 8, !dbg !25391
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !25392
  %i.ad = call noundef ptr @_RNvXs5_NtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler14current_threadINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !dbg !25393
  %.not.i = icmp eq ptr %i.ad, null, !dbg !25392
  %..i = select i1 %.not.i, i64 1, i64 2, !dbg !25394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25395
    #dbg_value(i64 %..i, !25158, !DIExpression(), !25396)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i), !dbg !25397
  br i1 %i.ae, label %bb.o, label %bb.p, !dbg !25398

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !25399, !DIExpression(DW_OP_deref), !25402)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !25404
  br label %bb.p, !dbg !25405

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !25406
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !25407 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !25410, !DIExpression(), !25411)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !25412
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !25413

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !24131, !DIExpression(), !25414)
    #dbg_value(ptr %0, !24133, !DIExpression(), !25416)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !25418
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !25419

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !24141, !DIExpression(DW_OP_deref), !25420)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !25422
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !25423

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !25424, !DIExpression(), !25427)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !25429 ; 2 uses
    #dbg_value(ptr poison, !24948, !DIExpression(), !25430)
    #dbg_value(ptr %i.e, !24999, !DIExpression(), !25435)
    #dbg_value(ptr %i.e, !25004, !DIExpression(), !25436)
    #dbg_value(ptr %i.e, !24995, !DIExpression(), !25438)
    #dbg_value(ptr %i.e, !24989, !DIExpression(), !25439)
    #dbg_value(ptr %i.e, !24990, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25440)
    #dbg_value(ptr undef, !25013, !DIExpression(), !25441)
    #dbg_value(ptr %i.e, !25018, !DIExpression(), !25443)
    #dbg_value(ptr %i.e, !25023, !DIExpression(), !25444)
    #dbg_declare(ptr poison, !25029, !DIExpression(), !25446)
    #dbg_declare(ptr poison, !25028, !DIExpression(), !25446)
    #dbg_value(ptr %i.e, !25035, !DIExpression(), !25447)
    #dbg_declare(ptr poison, !25040, !DIExpression(), !25449)
    #dbg_value(ptr poison, !25046, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25450)
    #dbg_value(ptr %i.e, !25054, !DIExpression(), !25452)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25454
  store i32 2, ptr %i.a, align 8, !dbg !25454
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !25455

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !25456
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !25456
    #dbg_value(ptr undef, !24948, !DIExpression(), !25430)
    #dbg_value(ptr %i.g, !24979, !DIExpression(), !25430)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !25457 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !25458
  unreachable, !dbg !25458

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25459
    #dbg_value(ptr %i.e, !24990, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25440)
    #dbg_value(ptr undef, !24990, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25440)
    #dbg_value(ptr poison, !25000, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25460)
    #dbg_value(ptr poison, !25066, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25461)
    #dbg_value(ptr poison, !25000, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25460)
    #dbg_value(ptr poison, !25066, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25461)
    #dbg_value(i64 poison, !25069, !DIExpression(), !25461)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !25463

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !25457
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !25457 ; 2 uses
    #dbg_value(ptr %i.j, !24990, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25440)
    #dbg_value(ptr %i.k, !24990, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25440)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !25000, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25460)
    #dbg_value(ptr %i.j, !25066, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25461)
    #dbg_value(ptr %i.k, !25000, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25460)
    #dbg_value(ptr %i.k, !25066, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25461)
    #dbg_value(i64 poison, !25069, !DIExpression(), !25461)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !25464

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !25461
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !25461
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !25465
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !25465, !range !19413, !noundef !279
    #dbg_value(i64 %.sroa.01.0.i, !25007, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25436)
    #dbg_value(ptr %.sroa.6.0.i, !25007, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25436)
    #dbg_value(ptr %.sroa.8.0.i, !25007, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25436)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25466
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !25466
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !25466
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !25466
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !25466
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !25466
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !25466
  store i32 1, ptr %i.b, align 8, !dbg !25466
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !25467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25468
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !25469
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !25469

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !25470
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !25471 {
bb.a:
    #dbg_value(ptr %0, !25479, !DIExpression(), !25480)
    #dbg_value(ptr %0, !25481, !DIExpression(), !25485)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !25487
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !25488

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !25489, !DIExpression(), !25494)
    #dbg_value(ptr undef, !25489, !DIExpression(DW_OP_deref), !25494)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !25496
  br label %bb.c, !dbg !25497

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !25498
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !25499 {
bb.a:
  %i.a = alloca [1448 x i8], align 8              ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !25504, !DIExpression(), !25507)
    #dbg_value(ptr %1, !25505, !DIExpression(), !25507)
    #dbg_value(ptr %2, !25506, !DIExpression(), !25507)
    #dbg_declare(ptr poison, !25508, !DIExpression(), !25519)
    #dbg_value(ptr poison, !25529, !DIExpression(), !25536)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1496, !dbg !25538
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !25539
  br i1 %i.c, label %bb.b, label %bb.p, !dbg !25539

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !25540
    #dbg_value(ptr %0, !25527, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !25541)
    #dbg_value(ptr %0, !25518, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !25542)
    #dbg_value(ptr %0, !25543, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !25551)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !25553 ; 2 uses
    #dbg_declare(ptr poison, !25554, !DIExpression(), !25562)
    #dbg_value(ptr %i.d, !25559, !DIExpression(), !25564)
    #dbg_value(ptr %i.d, !25565, !DIExpression(), !25571)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25573, !noalias !25574
    #dbg_value(i32 2, !25570, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25571)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1448) %i.a, ptr noundef nonnull align 8 dereferenceable(1448) %i.d, i64 1448, i1 false), !dbg !25577, !noalias !25574
  store i32 2, ptr %i.d, align 8, !dbg !25578, !noalias !25574
  %i.e = load i32, ptr %i.a, align 8, !dbg !25573, !range !9897, !noalias !25574, !noundef !279
  %i.f = icmp eq i32 %i.e, 1, !dbg !25579
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !25579, !prof !18680

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.e unwind label %bb.d, !dbg !25580, !noalias !25574

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !25581, !range !9897, !noalias !25574, !noundef !279
  %i.i = icmp eq i32 %i.h, 1, !dbg !25581
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !25581

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.z, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !25507

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.a) #13
          to label %common.resume unwind label %bb.g, !dbg !25581, !noalias !25574

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !25562, !noalias !25574
  unreachable, !dbg !25562

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !25582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !25582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25581, !noalias !25574
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25583), !dbg !25586
    #dbg_value(ptr %1, !18688, !DIExpression(), !25587)
  %i.l = load i64, ptr %1, align 8, !dbg !25589, !range !563, !alias.scope !25583, !noundef !279
  %i.m = icmp eq i64 %i.l, 0, !dbg !25589
  br i1 %i.m, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !25589

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25589 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25590), !dbg !25589
    #dbg_value(ptr %i.n, !9901, !DIExpression(), !25593)
  %i.o = load i64, ptr %i.n, align 8, !dbg !25595, !alias.scope !25596, !noundef !279
  %i.p = icmp eq i64 %i.o, 0, !dbg !25595
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !25595

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25595
  %.val.i.i = load ptr, ptr %i.q, align 8, !dbg !25595, !alias.scope !25596, !noundef !279 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !25595
  %.val1.i.i = load ptr, ptr %i.r, align 8, !dbg !25595, !alias.scope !25596 ; 6 uses
    #dbg_value(ptr poison, !9912, !DIExpression(), !25597)
    #dbg_value(ptr poison, !9922, !DIExpression(), !25599)
  %i.s = icmp eq ptr %.val.i.i, null, !dbg !25601
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.j, !dbg !25601

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr poison, !9933, !DIExpression(), !25602)
    #dbg_value(ptr poison, !9943, !DIExpression(), !25604)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.t = load ptr, ptr %.val1.i.i, align 8, !dbg !25606, !invariant.load !279, !noalias !25596 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null, !dbg !25606
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k, !dbg !25606

bb.k:                                             ; preds = %bb.j
  invoke void %i.t(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !dbg !25606, !noalias !25596

bb.l:                                             ; preds = %bb.k, %bb.j
    #dbg_value(ptr poison, !9952, !DIExpression(), !25607)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25609)
    #dbg_value(ptr %.val1.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25609)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25610)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25612)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25614)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25616)
    #dbg_value(ptr %.val1.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25610)
    #dbg_value(ptr %.val1.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25612)
    #dbg_value(ptr %.val1.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25614)
    #dbg_value(ptr %.val1.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25616)
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !25618
  %i.v = load i64, ptr %i.u, align 8, !dbg !25618, !range !3062, !invariant.load !279, !noalias !25596 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25619)
    #dbg_value(i64 %i.v, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25619)
  %i.w = icmp eq i64 %i.v, 0, !dbg !25620
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.m, !dbg !25620

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !25618
  %i.y = load i64, ptr %i.x, align 8, !dbg !25621, !range !3066, !invariant.load !279, !noalias !25596
    #dbg_value(i64 %i.y, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25619)
    #dbg_value(ptr %.val.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25610)
    #dbg_value(ptr %.val.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25612)
    #dbg_value(ptr %.val.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25614)
    #dbg_value(ptr %.val.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25616)
    #dbg_value(ptr %.val.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25609)
    #dbg_value(ptr poison, !3067, !DIExpression(), !25622)
    #dbg_value(ptr poison, !3079, !DIExpression(), !25624)
    #dbg_value(ptr %.val.i.i, !3075, !DIExpression(), !25622)
    #dbg_value(ptr %.val.i.i, !3084, !DIExpression(), !25624)
    #dbg_value(ptr %.val.i.i, !3088, !DIExpression(), !25626)
    #dbg_value(ptr %.val.i.i, !3097, !DIExpression(), !25628)
    #dbg_value(i64 %i.y, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25622)
    #dbg_value(i64 %i.y, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25624)
    #dbg_value(i64 %i.y, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25626)
    #dbg_value(i64 %i.y, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25628)
    #dbg_value(i64 %i.v, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25622)
    #dbg_value(i64 %i.v, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25624)
    #dbg_value(i64 %i.v, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25626)
    #dbg_value(i64 %i.v, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25628)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #14, !dbg !25630, !noalias !25596
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !25631

bb.n:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !25632)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25634)
    #dbg_value(ptr %.val1.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25634)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25635)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25637)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25639)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25641)
    #dbg_value(ptr %.val1.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25635)
    #dbg_value(ptr %.val1.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25637)
    #dbg_value(ptr %.val1.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25639)
    #dbg_value(ptr %.val1.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25641)
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !25643
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !25643, !range !3062, !invariant.load !279, !noalias !25596 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25644)
    #dbg_value(i64 %i.ab, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25644)
  %i.ac = icmp eq i64 %i.ab, 0, !dbg !25645
  br i1 %i.ac, label %.body, label %bb.o, !dbg !25645

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !25643
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !25646, !range !3066, !invariant.load !279, !noalias !25596
    #dbg_value(i64 %i.ae, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25644)
    #dbg_value(ptr %.val.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25635)
    #dbg_value(ptr %.val.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25637)
    #dbg_value(ptr %.val.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25639)
    #dbg_value(ptr %.val.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25641)
    #dbg_value(ptr %.val.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25634)
    #dbg_value(ptr poison, !3067, !DIExpression(), !25647)
    #dbg_value(ptr poison, !3079, !DIExpression(), !25649)
    #dbg_value(ptr %.val.i.i, !3075, !DIExpression(), !25647)
    #dbg_value(ptr %.val.i.i, !3084, !DIExpression(), !25649)
    #dbg_value(ptr %.val.i.i, !3088, !DIExpression(), !25651)
    #dbg_value(ptr %.val.i.i, !3097, !DIExpression(), !25653)
    #dbg_value(i64 %i.ae, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25647)
    #dbg_value(i64 %i.ae, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25649)
    #dbg_value(i64 %i.ae, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25651)
    #dbg_value(i64 %i.ae, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25653)
    #dbg_value(i64 %i.ab, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25647)
    #dbg_value(i64 %i.ab, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25649)
    #dbg_value(i64 %i.ab, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25651)
    #dbg_value(i64 %i.ab, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25653)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #14, !dbg !25655, !noalias !25596
  br label %.body, !dbg !25656

bb.p:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
end_hunk_10
begin_hunk_11_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(ptr poison, !3067, !DIExpression(), !25842)
    #dbg_value(ptr poison, !3079, !DIExpression(), !25844)
    #dbg_value(ptr %i.j, !3075, !DIExpression(), !25842)
    #dbg_value(ptr %i.j, !3084, !DIExpression(), !25844)
    #dbg_value(ptr %i.j, !3088, !DIExpression(), !25846)
    #dbg_value(ptr %i.j, !3097, !DIExpression(), !25848)
    #dbg_value(i64 %i.x, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25842)
    #dbg_value(i64 %i.x, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25844)
    #dbg_value(i64 %i.x, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25846)
    #dbg_value(i64 %i.x, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25848)
    #dbg_value(i64 %i.u, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25842)
    #dbg_value(i64 %i.u, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25844)
    #dbg_value(i64 %i.u, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25846)
    #dbg_value(i64 %i.u, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25848)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !25850
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !25851

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !25801

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !25479, !DIExpression(), !25852)
    #dbg_value(ptr %0, !25481, !DIExpression(), !25854)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !25856
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !25857

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !25489, !DIExpression(DW_OP_deref), !25858)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !25860
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !25861

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.l, %bb.m
  ret void, !dbg !25862

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !25729, !DIExpression(), !25732)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1496, !dbg !25863
  call void @_RNvMs6_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef), !dbg !25864
  br label %bb.l, !dbg !25865
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !25866 {
bb.a:
  %i.a = alloca [1448 x i8], align 8              ; 4 uses
  %i.b = alloca [1448 x i8], align 8              ; 7 uses
  %i.c = alloca [1448 x i8], align 8              ; 4 uses
  %i.d = alloca [1448 x i8], align 8              ; 7 uses
  %i.e = alloca [1448 x i8], align 8              ; 7 uses
  %i.f = alloca [1448 x i8], align 8              ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
    #dbg_value(ptr %0, !25869, !DIExpression(), !25870)
    #dbg_value(ptr poison, !25871, !DIExpression(), !25888)
    #dbg_value(ptr poison, !25890, !DIExpression(), !25893)
    #dbg_value(ptr poison, !25890, !DIExpression(), !25895)
    #dbg_value(ptr poison, !25890, !DIExpression(), !25897)
    #dbg_declare(ptr %i.h, !25880, !DIExpression(), !25899)
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0), !dbg !25900
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit
    i8 3, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCskigd7sy4fqX_10quinn_perf.exit.thread10
  ], !dbg !25901

default.unreachable:                              ; preds = %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11poll_futureNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !25878, !DIExpression(), !25902)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !25903
    #dbg_value(ptr poison, !25904, !DIExpression(), !25909)
    #dbg_value(ptr @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task5waker12WAKER_VTABLE, !25907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25911)
    #dbg_value(ptr %0, !25907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25911)
  store ptr @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8, !dbg !25912
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !25912
  store ptr %0, ptr %i.j, align 8, !dbg !25912
    #dbg_value(ptr %i.h, !25882, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25913)
    #dbg_value(ptr %i.h, !25914, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25939)
    #dbg_value(ptr %i.h, !25945, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25978)
    #dbg_value(ptr %i.h, !25959, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25979)
    #dbg_value(ptr %i.h, !25966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25980)
    #dbg_value(ptr %i.h, !25882, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25913)
    #dbg_value(ptr %i.h, !25914, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25939)
    #dbg_value(ptr %i.h, !25945, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25978)
    #dbg_value(ptr %i.h, !25959, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25979)
    #dbg_value(ptr %i.h, !25966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25980)
    #dbg_value(ptr null, !25882, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25913)
    #dbg_value(ptr null, !25914, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !25939)
    #dbg_value(ptr null, !25945, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !25978)
    #dbg_value(ptr null, !25959, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !25979)
    #dbg_value(ptr null, !25966, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25980)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !25981 ; 6 uses
    #dbg_value(ptr poison, !25982, !DIExpression(), !26008)
    #dbg_value(ptr poison, !26022, !DIExpression(), !26040)
    #dbg_value(ptr poison, !26041, !DIExpression(), !26049)
    #dbg_declare(ptr poison, !25946, !DIExpression(DW_OP_LLVM_fragment, 128, 192), !26051)
    #dbg_value(ptr poison, !26052, !DIExpression(), !26059)
    #dbg_value(ptr poison, !26066, !DIExpression(), !26070)
    #dbg_value(ptr poison, !26071, !DIExpression(), !26079)
    #dbg_value(ptr poison, !26081, !DIExpression(), !26084)
    #dbg_value(ptr poison, !26088, !DIExpression(), !26090)
    #dbg_value(ptr %i.k, !25965, !DIExpression(), !25980)
    #dbg_value(ptr %i.k, !25959, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25979)
    #dbg_value(ptr %i.k, !25945, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25978)
    #dbg_value(ptr %i.k, !25914, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25939)
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !26091
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !26097, !noalias !26122
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8, !dbg !26129
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !26129
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8, !dbg !26129
    #dbg_value(ptr %i.k, !25946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26135)
    #dbg_value(ptr %i.h, !25946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26135)
    #dbg_declare(ptr poison, !26116, !DIExpression(DW_OP_LLVM_fragment, 64, 256), !26136)
    #dbg_declare(ptr poison, !26067, !DIExpression(DW_OP_LLVM_fragment, 64, 256), !26137)
    #dbg_value(ptr undef, !26066, !DIExpression(), !26070)
    #dbg_value(ptr undef, !26052, !DIExpression(), !26059)
    #dbg_value(ptr %i.k, !26067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26138)
    #dbg_value(ptr %i.k, !26116, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26139)
  store ptr %i.h, ptr %i.g, align 8, !dbg !26091, !noalias !26140
    #dbg_declare(ptr poison, !26104, !DIExpression(), !26141)
    #dbg_declare(ptr poison, !26103, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 256), !26142)
    #dbg_declare(ptr poison, !26118, !DIExpression(), !26143)
    #dbg_declare(ptr poison, !26117, !DIExpression(), !26143)
    #dbg_value(ptr poison, !26103, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26144)
    #dbg_value(ptr %i.k, !26105, !DIExpression(), !26145)
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !dbg !26146, !noalias !26122

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
    #dbg_value(ptr poison, !26147, !DIExpression(), !26155)
    #dbg_value(ptr poison, !26157, !DIExpression(), !26160)
    #dbg_value(ptr %i.k, !26162, !DIExpression(), !26165)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !26167, !noalias !26122
  store i32 2, ptr %i.f, align 8, !dbg !26167, !noalias !26122
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1448) %i.f)
          to label %.body.i.i unwind label %bb.d, !dbg !26168, !noalias !26122

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !26169, !noalias !26122
  unreachable, !dbg !26169

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !26170, !noalias !26122
  %i.o = extractvalue { ptr, i32 } %i.m, 0, !dbg !26171
    #dbg_value(ptr undef, !26071, !DIExpression(), !26079)
    #dbg_value(ptr %i.o, !26076, !DIExpression(), !26079)
  %i.p = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !dbg !26172, !noalias !26140 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !26173, !noalias !26140
  unreachable, !dbg !26173

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !26174, !noalias !26122
    #dbg_value(ptr %i.h, !25946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26135)
    #dbg_value(!DIArgList(i64 0, i1 %i.l), !25946, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !26135)
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64, !dbg !26171
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr, !dbg !26171
    #dbg_value(ptr null, !25967, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26175)
    #dbg_value(ptr %i.r, !25967, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26175)
  br label %bb.h, !dbg !26176

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0, !dbg !26172 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1, !dbg !26172 ; 2 uses
    #dbg_value(ptr %i.t, !25946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26135)
    #dbg_value(ptr %i.s, !25946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26135)
    #dbg_value(ptr %i.s, !25967, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26175)
    #dbg_value(ptr %i.t, !25967, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26175)
  %.not.i.i = icmp eq ptr %i.s, null, !dbg !26177
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !26176, !prof !19410

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.s, !25973, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26178)
    #dbg_value(ptr %i.t, !25973, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26178)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !26179
  %i.v = load i64, ptr %i.u, align 8, !dbg !26179, !range !19413, !noalias !26140, !noundef !279
    #dbg_value(i64 %i.v, !25969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26180)
    #dbg_value(ptr %i.s, !25969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26180)
    #dbg_value(ptr %i.t, !25969, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26180)
  br label %bb.i, !dbg !26181

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64, !dbg !26177
  %i.y = trunc i64 %i.x to i1, !dbg !26177
  br i1 %i.y, label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11poll_futureNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit.i, label %bb.i, !dbg !26176

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ], !dbg !26175
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ], !dbg !26175
    #dbg_value(ptr %i.z, !25969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26180)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !25969, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26180)
    #dbg_value(i64 %.sroa.06.0.i.i, !25969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26180)
    #dbg_value(ptr %i.k, !26038, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26182)
    #dbg_value(ptr %i.k, !26031, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26183)
    #dbg_value(i64 %.sroa.06.0.i.i, !26038, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26182)
    #dbg_value(i64 %.sroa.06.0.i.i, !26031, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26183)
    #dbg_value(ptr %i.z, !26031, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26183)
    #dbg_value(ptr %i.z, !26038, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26182)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !26031, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !26183)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !26038, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !26182)
    #dbg_value(ptr %i.k, !26032, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26184)
    #dbg_value(i64 %.sroa.06.0.i.i, !26032, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26184)
    #dbg_value(ptr %i.z, !26032, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26184)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !26032, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !26184)
    #dbg_declare(ptr poison, !26185, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !26194)
    #dbg_declare(ptr poison, !26023, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !26196)
    #dbg_value(ptr undef, !26022, !DIExpression(), !26040)
    #dbg_value(ptr undef, !25982, !DIExpression(), !26008)
    #dbg_value(ptr %i.k, !26023, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26197)
    #dbg_value(ptr %i.k, !26185, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26198)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !26199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !26199, !noalias !26215
  store i64 %.sroa.06.0.i.i, ptr %i.aa, align 8, !dbg !26220, !noalias !26140
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !26220
  store ptr %i.z, ptr %.sroa.10.8..sroa_idx.i.i, align 8, !dbg !26220, !noalias !26140
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !26220
  store ptr %.sroa.6.sroa.5.0.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i, align 8, !dbg !26220, !noalias !26140
    #dbg_declare(ptr poison, !26213, !DIExpression(), !26226)
    #dbg_declare(ptr poison, !26212, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 192), !26227)
    #dbg_declare(ptr poison, !26191, !DIExpression(), !26228)
    #dbg_declare(ptr poison, !26190, !DIExpression(), !26228)
    #dbg_value(ptr poison, !26212, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26229)
    #dbg_declare(ptr poison, !26206, !DIExpression(), !26230)
    #dbg_value(ptr %i.k, !26205, !DIExpression(), !26231)
  store i32 1, ptr %i.e, align 8, !dbg !26199, !noalias !26215
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1448) %i.e)
          to label %.thread67.i.i unwind label %bb.j, !dbg !26232, !noalias !26140

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null, !dbg !26233
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0, !dbg !26233
    #dbg_value(ptr undef, !26041, !DIExpression(), !26049)
    #dbg_value(ptr %i.ac, !26046, !DIExpression(), !26049)
  %i.ad = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ac)
          to label %bb.l unwind label %bb.k, !dbg !26234, !noalias !26140 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !26235, !noalias !26140
  unreachable, !dbg !26235

.thread67.i.i:                                    ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !26236, !noalias !26215
    #dbg_value(i64 %.sroa.06.0.i.i, !26032, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26184)
    #dbg_value(ptr %i.k, !26032, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26184)
    #dbg_value(ptr null, !25975, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26237)
    #dbg_value(ptr undef, !25975, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26237)
    #dbg_value(ptr undef, !26088, !DIExpression(), !26090)
    #dbg_value(ptr undef, !26081, !DIExpression(), !26084)
  br label %bb.x, !dbg !26238

bb.l:                                             ; preds = %bb.j
  %i.af = extractvalue { ptr, ptr } %i.ad, 0, !dbg !26234 ; 4 uses
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1, !dbg !26234 ; 6 uses
    #dbg_value(ptr %i.ag, !26032, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26184)
    #dbg_value(ptr %i.af, !26032, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26184)
    #dbg_value(ptr %i.af, !25975, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26237)
    #dbg_value(ptr %i.ag, !25975, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26237)
    #dbg_value(ptr undef, !26088, !DIExpression(), !26090)
    #dbg_value(ptr undef, !26081, !DIExpression(), !26084)
  %.not34.i.i = icmp eq ptr %i.af, null, !dbg !26239
  br i1 %.not34.i.i, label %bb.x, label %bb.m, !dbg !26238

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr poison, !18939, !DIExpression(), !26240)
    #dbg_value(ptr poison, !9943, !DIExpression(), !26242)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !26244, !invariant.load !279, !noalias !26140 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null, !dbg !26244
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n, !dbg !26244

bb.n:                                             ; preds = %bb.m
  invoke void %i.ah(ptr noundef nonnull %i.af)
          to label %bb.o unwind label %bb.q, !dbg !26244, !noalias !26140

bb.o:                                             ; preds = %bb.n, %bb.m
    #dbg_value(ptr poison, !9952, !DIExpression(), !26245)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26247)
    #dbg_value(ptr %i.ag, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26247)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26248)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26250)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26252)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26254)
    #dbg_value(ptr %i.ag, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26248)
    #dbg_value(ptr %i.ag, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26250)
    #dbg_value(ptr %i.ag, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26252)
    #dbg_value(ptr %i.ag, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26254)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !26256
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !26256, !range !3062, !invariant.load !279, !noalias !26140 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26257)
    #dbg_value(i64 %i.aj, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26257)
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !26258
  br i1 %i.ak, label %bb.x, label %bb.p, !dbg !26258

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !26256
  %i.am = load i64, ptr %i.al, align 8, !dbg !26259, !range !3066, !invariant.load !279, !noalias !26140
    #dbg_value(i64 %i.am, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26257)
    #dbg_value(ptr %i.af, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26248)
    #dbg_value(ptr %i.af, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26250)
    #dbg_value(ptr %i.af, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26252)
    #dbg_value(ptr %i.af, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26254)
    #dbg_value(ptr %i.af, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26247)
    #dbg_value(ptr poison, !3067, !DIExpression(), !26260)
    #dbg_value(ptr poison, !3079, !DIExpression(), !26262)
    #dbg_value(ptr %i.af, !3075, !DIExpression(), !26260)
    #dbg_value(ptr %i.af, !3084, !DIExpression(), !26262)
    #dbg_value(ptr %i.af, !3088, !DIExpression(), !26264)
    #dbg_value(ptr %i.af, !3097, !DIExpression(), !26266)
    #dbg_value(i64 %i.am, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26260)
    #dbg_value(i64 %i.am, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26262)
    #dbg_value(i64 %i.am, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26264)
    #dbg_value(i64 %i.am, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26266)
    #dbg_value(i64 %i.aj, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26260)
    #dbg_value(i64 %i.aj, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26262)
    #dbg_value(i64 %i.aj, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26264)
    #dbg_value(i64 %i.aj, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26266)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, -9223372036854775808) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #14, !dbg !26268, !noalias !26140
  br label %bb.x, !dbg !26269

bb.q:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !26270)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26272)
    #dbg_value(ptr %i.ag, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26272)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26273)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26275)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26277)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26279)
    #dbg_value(ptr %i.ag, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26273)
    #dbg_value(ptr %i.ag, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26275)
    #dbg_value(ptr %i.ag, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26277)
    #dbg_value(ptr %i.ag, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26279)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !26281
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !26281, !range !3062, !invariant.load !279, !noalias !26140 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26282)
    #dbg_value(i64 %i.ap, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26282)
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !26283
  br i1 %i.aq, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i, label %bb.r, !dbg !26283

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !26281
  %i.as = load i64, ptr %i.ar, align 8, !dbg !26284, !range !3066, !invariant.load !279, !noalias !26140
    #dbg_value(i64 %i.as, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26282)
    #dbg_value(ptr %i.af, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26273)
    #dbg_value(ptr %i.af, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26275)
    #dbg_value(ptr %i.af, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26277)
    #dbg_value(ptr %i.af, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26279)
    #dbg_value(ptr %i.af, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26272)
    #dbg_value(ptr poison, !3067, !DIExpression(), !26285)
    #dbg_value(ptr poison, !3079, !DIExpression(), !26287)
    #dbg_value(ptr %i.af, !3075, !DIExpression(), !26285)
    #dbg_value(ptr %i.af, !3084, !DIExpression(), !26287)
    #dbg_value(ptr %i.af, !3088, !DIExpression(), !26289)
    #dbg_value(ptr %i.af, !3097, !DIExpression(), !26291)
    #dbg_value(i64 %i.as, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26285)
    #dbg_value(i64 %i.as, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26287)
    #dbg_value(i64 %i.as, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26289)
    #dbg_value(i64 %i.as, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26291)
    #dbg_value(i64 %i.ap, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26285)
    #dbg_value(i64 %i.ap, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26287)
    #dbg_value(i64 %i.ap, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26289)
    #dbg_value(i64 %i.ap, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26291)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, -9223372036854775808) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #14, !dbg !26293, !noalias !26140
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i, !dbg !26294

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i: ; preds = %bb.r, %bb.q
  resume { ptr, i32 } %i.an, !dbg !26244

bb.s:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !26295 ; 2 uses
    #dbg_value(ptr poison, !26296, !DIExpression(), !26330)
    #dbg_value(ptr %i.at, !26347, !DIExpression(), !26351)
    #dbg_value(ptr %i.at, !26352, !DIExpression(), !26356)
    #dbg_value(ptr %i.at, !26343, !DIExpression(), !26358)
    #dbg_value(ptr %i.at, !26337, !DIExpression(), !26359)
    #dbg_value(ptr %i.at, !26338, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26360)
    #dbg_value(ptr undef, !26361, !DIExpression(), !26368)
    #dbg_value(ptr %i.at, !26366, !DIExpression(), !26370)
    #dbg_value(ptr %i.at, !26371, !DIExpression(), !26380)
    #dbg_declare(ptr poison, !26377, !DIExpression(), !26382)
    #dbg_declare(ptr poison, !26376, !DIExpression(), !26382)
    #dbg_value(ptr %i.at, !26383, !DIExpression(), !26391)
    #dbg_declare(ptr poison, !26388, !DIExpression(), !26393)
    #dbg_value(ptr poison, !26394, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26400)
end_hunk_11
begin_hunk_12_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(i64 %i.v, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26688)
    #dbg_value(i64 %i.v, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26690)
    #dbg_value(i64 %i.s, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26684)
    #dbg_value(i64 %i.s, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26686)
    #dbg_value(i64 %i.s, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26688)
    #dbg_value(i64 %i.s, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26690)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #14, !dbg !26692
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !26693

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !26694)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26696)
    #dbg_value(ptr %i.o, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26696)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26697)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26699)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26701)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26703)
    #dbg_value(ptr %i.o, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26697)
    #dbg_value(ptr %i.o, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26699)
    #dbg_value(ptr %i.o, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26701)
    #dbg_value(ptr %i.o, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26703)
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !26705
  %i.y = load i64, ptr %i.x, align 8, !dbg !26705, !range !3062, !invariant.load !279 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26706)
    #dbg_value(i64 %i.y, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26706)
  %i.z = icmp eq i64 %i.y, 0, !dbg !26707
  br i1 %i.z, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.n, !dbg !26707

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !26705
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !26708, !range !3066, !invariant.load !279
    #dbg_value(i64 %i.ab, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26706)
    #dbg_value(ptr %i.n, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26697)
    #dbg_value(ptr %i.n, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26699)
    #dbg_value(ptr %i.n, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26701)
    #dbg_value(ptr %i.n, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26703)
    #dbg_value(ptr %i.n, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26696)
    #dbg_value(ptr poison, !3067, !DIExpression(), !26709)
    #dbg_value(ptr poison, !3079, !DIExpression(), !26711)
    #dbg_value(ptr %i.n, !3075, !DIExpression(), !26709)
    #dbg_value(ptr %i.n, !3084, !DIExpression(), !26711)
    #dbg_value(ptr %i.n, !3088, !DIExpression(), !26713)
    #dbg_value(ptr %i.n, !3097, !DIExpression(), !26715)
    #dbg_value(i64 %i.ab, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26709)
    #dbg_value(i64 %i.ab, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26711)
    #dbg_value(i64 %i.ab, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26713)
    #dbg_value(i64 %i.ab, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26715)
    #dbg_value(i64 %i.y, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26709)
    #dbg_value(i64 %i.y, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26711)
    #dbg_value(i64 %i.y, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26713)
    #dbg_value(i64 %i.y, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26715)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #14, !dbg !26717
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !26718

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w, !dbg !26668

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.noexc10, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
    #dbg_value(ptr poison, !26719, !DIExpression(), !26730)
    #dbg_declare(ptr %i.b, !26726, !DIExpression(), !26732)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !26733
    #dbg_value(ptr %0, !26734, !DIExpression(), !26737)
  store ptr %0, ptr %i.b, align 8, !dbg !26739
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !26740
  %i.ad = call noundef ptr @_RNvXs5_NtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler14current_threadINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !dbg !26741
  %.not.i = icmp eq ptr %i.ad, null, !dbg !26740
  %..i = select i1 %.not.i, i64 1, i64 2, !dbg !26742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !26743
    #dbg_value(i64 %..i, !26506, !DIExpression(), !26744)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i), !dbg !26745
  br i1 %i.ae, label %bb.o, label %bb.p, !dbg !26746

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !26747, !DIExpression(DW_OP_deref), !26750)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !26752
  br label %bb.p, !dbg !26753

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !26754
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !26755 {
bb.a:
  %i.a = alloca [1448 x i8], align 8              ; 4 uses
  %i.b = alloca [1448 x i8], align 8              ; 7 uses
    #dbg_value(ptr %0, !26758, !DIExpression(), !26759)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !26760
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !26761

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !25479, !DIExpression(), !26762)
    #dbg_value(ptr %0, !25481, !DIExpression(), !26764)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !26766
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !26767

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !25489, !DIExpression(DW_OP_deref), !26768)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !26770
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !26771

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !26772, !DIExpression(), !26775)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !26777 ; 2 uses
    #dbg_value(ptr poison, !26296, !DIExpression(), !26778)
    #dbg_value(ptr %i.e, !26347, !DIExpression(), !26783)
    #dbg_value(ptr %i.e, !26352, !DIExpression(), !26784)
    #dbg_value(ptr %i.e, !26343, !DIExpression(), !26786)
    #dbg_value(ptr %i.e, !26337, !DIExpression(), !26787)
    #dbg_value(ptr %i.e, !26338, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26788)
    #dbg_value(ptr undef, !26361, !DIExpression(), !26789)
    #dbg_value(ptr %i.e, !26366, !DIExpression(), !26791)
    #dbg_value(ptr %i.e, !26371, !DIExpression(), !26792)
    #dbg_declare(ptr poison, !26377, !DIExpression(), !26794)
    #dbg_declare(ptr poison, !26376, !DIExpression(), !26794)
    #dbg_value(ptr %i.e, !26383, !DIExpression(), !26795)
    #dbg_declare(ptr poison, !26388, !DIExpression(), !26797)
    #dbg_value(ptr poison, !26394, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26798)
    #dbg_value(ptr %i.e, !26402, !DIExpression(), !26800)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26802
  store i32 2, ptr %i.a, align 8, !dbg !26802
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1448) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !26803

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !26804
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !26804
    #dbg_value(ptr undef, !26296, !DIExpression(), !26778)
    #dbg_value(ptr %i.g, !26327, !DIExpression(), !26778)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !26805 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !26806
  unreachable, !dbg !26806

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26807
    #dbg_value(ptr %i.e, !26338, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26788)
    #dbg_value(ptr undef, !26338, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26788)
    #dbg_value(ptr poison, !26348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26808)
    #dbg_value(ptr poison, !26414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26809)
    #dbg_value(ptr poison, !26348, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26808)
    #dbg_value(ptr poison, !26414, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26809)
    #dbg_value(i64 poison, !26417, !DIExpression(), !26809)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !26811

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !26805
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !26805 ; 2 uses
    #dbg_value(ptr %i.j, !26338, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26788)
    #dbg_value(ptr %i.k, !26338, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26788)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !26348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26808)
    #dbg_value(ptr %i.j, !26414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26809)
    #dbg_value(ptr %i.k, !26348, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26808)
    #dbg_value(ptr %i.k, !26414, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26809)
    #dbg_value(i64 poison, !26417, !DIExpression(), !26809)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !26812

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !26809
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !26809
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !26813
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !26813, !range !19413, !noundef !279
    #dbg_value(i64 %.sroa.01.0.i, !26355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26784)
    #dbg_value(ptr %.sroa.6.0.i, !26355, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26784)
    #dbg_value(ptr %.sroa.8.0.i, !26355, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26784)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !26814
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !26814
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !26814
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !26814
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !26814
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !26814
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !26814
  store i32 1, ptr %i.b, align 8, !dbg !26814
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1448) %i.b), !dbg !26815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !26816
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !26817
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !26817

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !26818
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !26819 {
bb.a:
    #dbg_value(ptr %0, !26827, !DIExpression(), !26828)
    #dbg_value(ptr %0, !26829, !DIExpression(), !26833)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !26835
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !26836

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !26837, !DIExpression(), !26842)
    #dbg_value(ptr undef, !26837, !DIExpression(DW_OP_deref), !26842)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !26844
  br label %bb.c, !dbg !26845

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !26846
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !26847 {
bb.a:
  %i.a = alloca [1392 x i8], align 8              ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !26852, !DIExpression(), !26855)
    #dbg_value(ptr %1, !26853, !DIExpression(), !26855)
    #dbg_value(ptr %2, !26854, !DIExpression(), !26855)
    #dbg_declare(ptr poison, !26856, !DIExpression(), !26867)
    #dbg_value(ptr poison, !26877, !DIExpression(), !26884)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1440, !dbg !26886
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !26887
  br i1 %i.c, label %bb.b, label %bb.p, !dbg !26887

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !26888
    #dbg_value(ptr %0, !26875, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !26889)
    #dbg_value(ptr %0, !26866, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !26890)
    #dbg_value(ptr %0, !26891, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !26899)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !26901 ; 2 uses
    #dbg_declare(ptr poison, !26902, !DIExpression(), !26910)
    #dbg_value(ptr %i.d, !26907, !DIExpression(), !26912)
    #dbg_value(ptr %i.d, !26913, !DIExpression(), !26919)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26921, !noalias !26922
    #dbg_value(i32 2, !26918, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !26919)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1392) %i.a, ptr noundef nonnull align 8 dereferenceable(1392) %i.d, i64 1392, i1 false), !dbg !26925, !noalias !26922
  store i32 2, ptr %i.d, align 8, !dbg !26926, !noalias !26922
  %i.e = load i32, ptr %i.a, align 8, !dbg !26921, !range !9897, !noalias !26922, !noundef !279
  %i.f = icmp eq i32 %i.e, 1, !dbg !26927
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !26927, !prof !18680

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.e unwind label %bb.d, !dbg !26928, !noalias !26922

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !26929, !range !9897, !noalias !26922, !noundef !279
  %i.i = icmp eq i32 %i.h, 1, !dbg !26929
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !26929

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.z, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !26855

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.a) #13
          to label %common.resume unwind label %bb.g, !dbg !26929, !noalias !26922

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !26910, !noalias !26922
  unreachable, !dbg !26910

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !26930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !26930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26929, !noalias !26922
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26931), !dbg !26934
    #dbg_value(ptr %1, !18688, !DIExpression(), !26935)
  %i.l = load i64, ptr %1, align 8, !dbg !26937, !range !563, !alias.scope !26931, !noundef !279
  %i.m = icmp eq i64 %i.l, 0, !dbg !26937
  br i1 %i.m, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !26937

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !26937 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26938), !dbg !26937
    #dbg_value(ptr %i.n, !9901, !DIExpression(), !26941)
  %i.o = load i64, ptr %i.n, align 8, !dbg !26943, !alias.scope !26944, !noundef !279
  %i.p = icmp eq i64 %i.o, 0, !dbg !26943
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !26943

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !26943
  %.val.i.i = load ptr, ptr %i.q, align 8, !dbg !26943, !alias.scope !26944, !noundef !279 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !26943
  %.val1.i.i = load ptr, ptr %i.r, align 8, !dbg !26943, !alias.scope !26944 ; 6 uses
    #dbg_value(ptr poison, !9912, !DIExpression(), !26945)
    #dbg_value(ptr poison, !9922, !DIExpression(), !26947)
  %i.s = icmp eq ptr %.val.i.i, null, !dbg !26949
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.j, !dbg !26949

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr poison, !9933, !DIExpression(), !26950)
    #dbg_value(ptr poison, !9943, !DIExpression(), !26952)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.t = load ptr, ptr %.val1.i.i, align 8, !dbg !26954, !invariant.load !279, !noalias !26944 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null, !dbg !26954
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k, !dbg !26954

bb.k:                                             ; preds = %bb.j
  invoke void %i.t(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !dbg !26954, !noalias !26944

bb.l:                                             ; preds = %bb.k, %bb.j
    #dbg_value(ptr poison, !9952, !DIExpression(), !26955)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26957)
    #dbg_value(ptr %.val1.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26957)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26958)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26960)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26962)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26964)
    #dbg_value(ptr %.val1.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26958)
    #dbg_value(ptr %.val1.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26960)
    #dbg_value(ptr %.val1.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26962)
    #dbg_value(ptr %.val1.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26964)
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !26966
  %i.v = load i64, ptr %i.u, align 8, !dbg !26966, !range !3062, !invariant.load !279, !noalias !26944 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26967)
    #dbg_value(i64 %i.v, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26967)
  %i.w = icmp eq i64 %i.v, 0, !dbg !26968
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.m, !dbg !26968

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !26966
  %i.y = load i64, ptr %i.x, align 8, !dbg !26969, !range !3066, !invariant.load !279, !noalias !26944
    #dbg_value(i64 %i.y, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26967)
    #dbg_value(ptr %.val.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26958)
    #dbg_value(ptr %.val.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26960)
    #dbg_value(ptr %.val.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26962)
    #dbg_value(ptr %.val.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26964)
    #dbg_value(ptr %.val.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26957)
    #dbg_value(ptr poison, !3067, !DIExpression(), !26970)
    #dbg_value(ptr poison, !3079, !DIExpression(), !26972)
    #dbg_value(ptr %.val.i.i, !3075, !DIExpression(), !26970)
    #dbg_value(ptr %.val.i.i, !3084, !DIExpression(), !26972)
    #dbg_value(ptr %.val.i.i, !3088, !DIExpression(), !26974)
    #dbg_value(ptr %.val.i.i, !3097, !DIExpression(), !26976)
    #dbg_value(i64 %i.y, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26970)
    #dbg_value(i64 %i.y, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26972)
    #dbg_value(i64 %i.y, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26974)
    #dbg_value(i64 %i.y, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26976)
    #dbg_value(i64 %i.v, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26970)
    #dbg_value(i64 %i.v, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26972)
    #dbg_value(i64 %i.v, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26974)
    #dbg_value(i64 %i.v, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26976)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #14, !dbg !26978, !noalias !26944
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !26979

bb.n:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !26980)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26982)
    #dbg_value(ptr %.val1.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26982)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26983)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26985)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26987)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26989)
    #dbg_value(ptr %.val1.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26983)
    #dbg_value(ptr %.val1.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26985)
    #dbg_value(ptr %.val1.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26987)
    #dbg_value(ptr %.val1.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26989)
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !26991
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !26991, !range !3062, !invariant.load !279, !noalias !26944 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26992)
    #dbg_value(i64 %i.ab, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26992)
  %i.ac = icmp eq i64 %i.ab, 0, !dbg !26993
  br i1 %i.ac, label %.body, label %bb.o, !dbg !26993

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !26991
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !26994, !range !3066, !invariant.load !279, !noalias !26944
    #dbg_value(i64 %i.ae, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26992)
    #dbg_value(ptr %.val.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26983)
    #dbg_value(ptr %.val.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26985)
    #dbg_value(ptr %.val.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26987)
    #dbg_value(ptr %.val.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26989)
    #dbg_value(ptr %.val.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26982)
    #dbg_value(ptr poison, !3067, !DIExpression(), !26995)
    #dbg_value(ptr poison, !3079, !DIExpression(), !26997)
    #dbg_value(ptr %.val.i.i, !3075, !DIExpression(), !26995)
    #dbg_value(ptr %.val.i.i, !3084, !DIExpression(), !26997)
    #dbg_value(ptr %.val.i.i, !3088, !DIExpression(), !26999)
    #dbg_value(ptr %.val.i.i, !3097, !DIExpression(), !27001)
    #dbg_value(i64 %i.ae, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26995)
    #dbg_value(i64 %i.ae, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26997)
    #dbg_value(i64 %i.ae, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26999)
    #dbg_value(i64 %i.ae, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27001)
    #dbg_value(i64 %i.ab, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26995)
    #dbg_value(i64 %i.ab, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26997)
    #dbg_value(i64 %i.ab, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26999)
    #dbg_value(i64 %i.ab, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27001)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #14, !dbg !27003, !noalias !26944
  br label %.body, !dbg !27004

bb.p:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
end_hunk_12
begin_hunk_13_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(ptr poison, !3067, !DIExpression(), !27190)
    #dbg_value(ptr poison, !3079, !DIExpression(), !27192)
    #dbg_value(ptr %i.j, !3075, !DIExpression(), !27190)
    #dbg_value(ptr %i.j, !3084, !DIExpression(), !27192)
    #dbg_value(ptr %i.j, !3088, !DIExpression(), !27194)
    #dbg_value(ptr %i.j, !3097, !DIExpression(), !27196)
    #dbg_value(i64 %i.x, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27190)
    #dbg_value(i64 %i.x, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27192)
    #dbg_value(i64 %i.x, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27194)
    #dbg_value(i64 %i.x, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27196)
    #dbg_value(i64 %i.u, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27190)
    #dbg_value(i64 %i.u, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27192)
    #dbg_value(i64 %i.u, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27194)
    #dbg_value(i64 %i.u, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27196)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !27198
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !27199

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !27149

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !26827, !DIExpression(), !27200)
    #dbg_value(ptr %0, !26829, !DIExpression(), !27202)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !27204
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !27205

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !26837, !DIExpression(DW_OP_deref), !27206)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !27208
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !27209

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.l, %bb.m
  ret void, !dbg !27210

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !27077, !DIExpression(), !27080)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1440, !dbg !27211
  call void @_RNvMs6_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef), !dbg !27212
  br label %bb.l, !dbg !27213
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !27214 {
bb.a:
  %i.a = alloca [1392 x i8], align 8              ; 4 uses
  %i.b = alloca [1392 x i8], align 8              ; 7 uses
  %i.c = alloca [1392 x i8], align 8              ; 4 uses
  %i.d = alloca [1392 x i8], align 8              ; 7 uses
  %i.e = alloca [1392 x i8], align 8              ; 7 uses
  %i.f = alloca [1392 x i8], align 8              ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
    #dbg_value(ptr %0, !27217, !DIExpression(), !27218)
    #dbg_value(ptr poison, !27219, !DIExpression(), !27236)
    #dbg_value(ptr poison, !27238, !DIExpression(), !27241)
    #dbg_value(ptr poison, !27238, !DIExpression(), !27243)
    #dbg_value(ptr poison, !27238, !DIExpression(), !27245)
    #dbg_declare(ptr %i.h, !27228, !DIExpression(), !27247)
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0), !dbg !27248
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit
    i8 3, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCskigd7sy4fqX_10quinn_perf.exit.thread10
  ], !dbg !27249

default.unreachable:                              ; preds = %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11poll_futureNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !27226, !DIExpression(), !27250)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !27251
    #dbg_value(ptr poison, !27252, !DIExpression(), !27257)
    #dbg_value(ptr @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task5waker12WAKER_VTABLE, !27255, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27259)
    #dbg_value(ptr %0, !27255, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27259)
  store ptr @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8, !dbg !27260
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !27260
  store ptr %0, ptr %i.j, align 8, !dbg !27260
    #dbg_value(ptr %i.h, !27230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27261)
    #dbg_value(ptr %i.h, !27262, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27287)
    #dbg_value(ptr %i.h, !27293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27326)
    #dbg_value(ptr %i.h, !27307, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27327)
    #dbg_value(ptr %i.h, !27314, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27328)
    #dbg_value(ptr %i.h, !27230, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27261)
    #dbg_value(ptr %i.h, !27262, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !27287)
    #dbg_value(ptr %i.h, !27293, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !27326)
    #dbg_value(ptr %i.h, !27307, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !27327)
    #dbg_value(ptr %i.h, !27314, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27328)
    #dbg_value(ptr null, !27230, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !27261)
    #dbg_value(ptr null, !27262, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !27287)
    #dbg_value(ptr null, !27293, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !27326)
    #dbg_value(ptr null, !27307, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !27327)
    #dbg_value(ptr null, !27314, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !27328)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !27329 ; 6 uses
    #dbg_value(ptr poison, !27330, !DIExpression(), !27356)
    #dbg_value(ptr poison, !27370, !DIExpression(), !27388)
    #dbg_value(ptr poison, !27389, !DIExpression(), !27397)
    #dbg_declare(ptr poison, !27294, !DIExpression(DW_OP_LLVM_fragment, 128, 192), !27399)
    #dbg_value(ptr poison, !27400, !DIExpression(), !27407)
    #dbg_value(ptr poison, !27414, !DIExpression(), !27418)
    #dbg_value(ptr poison, !27419, !DIExpression(), !27427)
    #dbg_value(ptr poison, !27429, !DIExpression(), !27432)
    #dbg_value(ptr poison, !27436, !DIExpression(), !27438)
    #dbg_value(ptr %i.k, !27313, !DIExpression(), !27328)
    #dbg_value(ptr %i.k, !27307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27327)
    #dbg_value(ptr %i.k, !27293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27326)
    #dbg_value(ptr %i.k, !27262, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27287)
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !27439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !27445, !noalias !27470
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8, !dbg !27477
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !27477
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8, !dbg !27477
    #dbg_value(ptr %i.k, !27294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27483)
    #dbg_value(ptr %i.h, !27294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27483)
    #dbg_declare(ptr poison, !27464, !DIExpression(DW_OP_LLVM_fragment, 64, 256), !27484)
    #dbg_declare(ptr poison, !27415, !DIExpression(DW_OP_LLVM_fragment, 64, 256), !27485)
    #dbg_value(ptr undef, !27414, !DIExpression(), !27418)
    #dbg_value(ptr undef, !27400, !DIExpression(), !27407)
    #dbg_value(ptr %i.k, !27415, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27486)
    #dbg_value(ptr %i.k, !27464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27487)
  store ptr %i.h, ptr %i.g, align 8, !dbg !27439, !noalias !27488
    #dbg_declare(ptr poison, !27452, !DIExpression(), !27489)
    #dbg_declare(ptr poison, !27451, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 256), !27490)
    #dbg_declare(ptr poison, !27466, !DIExpression(), !27491)
    #dbg_declare(ptr poison, !27465, !DIExpression(), !27491)
    #dbg_value(ptr poison, !27451, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !27492)
    #dbg_value(ptr %i.k, !27453, !DIExpression(), !27493)
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !dbg !27494, !noalias !27470

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
    #dbg_value(ptr poison, !27495, !DIExpression(), !27503)
    #dbg_value(ptr poison, !27505, !DIExpression(), !27508)
    #dbg_value(ptr %i.k, !27510, !DIExpression(), !27513)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !27515, !noalias !27470
  store i32 2, ptr %i.f, align 8, !dbg !27515, !noalias !27470
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1392) %i.f)
          to label %.body.i.i unwind label %bb.d, !dbg !27516, !noalias !27470

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !27517, !noalias !27470
  unreachable, !dbg !27517

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !27518, !noalias !27470
  %i.o = extractvalue { ptr, i32 } %i.m, 0, !dbg !27519
    #dbg_value(ptr undef, !27419, !DIExpression(), !27427)
    #dbg_value(ptr %i.o, !27424, !DIExpression(), !27427)
  %i.p = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !dbg !27520, !noalias !27488 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !27521, !noalias !27488
  unreachable, !dbg !27521

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !27522, !noalias !27470
    #dbg_value(ptr %i.h, !27294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27483)
    #dbg_value(!DIArgList(i64 0, i1 %i.l), !27294, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !27483)
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64, !dbg !27519
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr, !dbg !27519
    #dbg_value(ptr null, !27315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27523)
    #dbg_value(ptr %i.r, !27315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27523)
  br label %bb.h, !dbg !27524

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0, !dbg !27520 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1, !dbg !27520 ; 2 uses
    #dbg_value(ptr %i.t, !27294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27483)
    #dbg_value(ptr %i.s, !27294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27483)
    #dbg_value(ptr %i.s, !27315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27523)
    #dbg_value(ptr %i.t, !27315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27523)
  %.not.i.i = icmp eq ptr %i.s, null, !dbg !27525
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !27524, !prof !19410

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.s, !27321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27526)
    #dbg_value(ptr %i.t, !27321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27526)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !27527
  %i.v = load i64, ptr %i.u, align 8, !dbg !27527, !range !19413, !noalias !27488, !noundef !279
    #dbg_value(i64 %i.v, !27317, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27528)
    #dbg_value(ptr %i.s, !27317, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27528)
    #dbg_value(ptr %i.t, !27317, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !27528)
  br label %bb.i, !dbg !27529

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64, !dbg !27525
  %i.y = trunc i64 %i.x to i1, !dbg !27525
  br i1 %i.y, label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11poll_futureNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit.i, label %bb.i, !dbg !27524

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ], !dbg !27523
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ], !dbg !27523
    #dbg_value(ptr %i.z, !27317, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27528)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !27317, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !27528)
    #dbg_value(i64 %.sroa.06.0.i.i, !27317, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27528)
    #dbg_value(ptr %i.k, !27386, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27530)
    #dbg_value(ptr %i.k, !27379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27531)
    #dbg_value(i64 %.sroa.06.0.i.i, !27386, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27530)
    #dbg_value(i64 %.sroa.06.0.i.i, !27379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27531)
    #dbg_value(ptr %i.z, !27379, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !27531)
    #dbg_value(ptr %i.z, !27386, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !27530)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !27379, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !27531)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !27386, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !27530)
    #dbg_value(ptr %i.k, !27380, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27532)
    #dbg_value(i64 %.sroa.06.0.i.i, !27380, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27532)
    #dbg_value(ptr %i.z, !27380, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !27532)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !27380, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !27532)
    #dbg_declare(ptr poison, !27533, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !27542)
    #dbg_declare(ptr poison, !27371, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !27544)
    #dbg_value(ptr undef, !27370, !DIExpression(), !27388)
    #dbg_value(ptr undef, !27330, !DIExpression(), !27356)
    #dbg_value(ptr %i.k, !27371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27545)
    #dbg_value(ptr %i.k, !27533, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27546)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !27547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !27547, !noalias !27563
  store i64 %.sroa.06.0.i.i, ptr %i.aa, align 8, !dbg !27568, !noalias !27488
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !27568
  store ptr %i.z, ptr %.sroa.10.8..sroa_idx.i.i, align 8, !dbg !27568, !noalias !27488
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !27568
  store ptr %.sroa.6.sroa.5.0.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i, align 8, !dbg !27568, !noalias !27488
    #dbg_declare(ptr poison, !27561, !DIExpression(), !27574)
    #dbg_declare(ptr poison, !27560, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 192), !27575)
    #dbg_declare(ptr poison, !27539, !DIExpression(), !27576)
    #dbg_declare(ptr poison, !27538, !DIExpression(), !27576)
    #dbg_value(ptr poison, !27560, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !27577)
    #dbg_declare(ptr poison, !27554, !DIExpression(), !27578)
    #dbg_value(ptr %i.k, !27553, !DIExpression(), !27579)
  store i32 1, ptr %i.e, align 8, !dbg !27547, !noalias !27563
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1392) %i.e)
          to label %.thread67.i.i unwind label %bb.j, !dbg !27580, !noalias !27488

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null, !dbg !27581
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0, !dbg !27581
    #dbg_value(ptr undef, !27389, !DIExpression(), !27397)
    #dbg_value(ptr %i.ac, !27394, !DIExpression(), !27397)
  %i.ad = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ac)
          to label %bb.l unwind label %bb.k, !dbg !27582, !noalias !27488 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !27583, !noalias !27488
  unreachable, !dbg !27583

.thread67.i.i:                                    ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !27584, !noalias !27563
    #dbg_value(i64 %.sroa.06.0.i.i, !27380, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27532)
    #dbg_value(ptr %i.k, !27380, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27532)
    #dbg_value(ptr null, !27323, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27585)
    #dbg_value(ptr undef, !27323, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27585)
    #dbg_value(ptr undef, !27436, !DIExpression(), !27438)
    #dbg_value(ptr undef, !27429, !DIExpression(), !27432)
  br label %bb.x, !dbg !27586

bb.l:                                             ; preds = %bb.j
  %i.af = extractvalue { ptr, ptr } %i.ad, 0, !dbg !27582 ; 4 uses
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1, !dbg !27582 ; 6 uses
    #dbg_value(ptr %i.ag, !27380, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27532)
    #dbg_value(ptr %i.af, !27380, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27532)
    #dbg_value(ptr %i.af, !27323, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27585)
    #dbg_value(ptr %i.ag, !27323, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27585)
    #dbg_value(ptr undef, !27436, !DIExpression(), !27438)
    #dbg_value(ptr undef, !27429, !DIExpression(), !27432)
  %.not34.i.i = icmp eq ptr %i.af, null, !dbg !27587
  br i1 %.not34.i.i, label %bb.x, label %bb.m, !dbg !27586

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr poison, !18939, !DIExpression(), !27588)
    #dbg_value(ptr poison, !9943, !DIExpression(), !27590)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !27592, !invariant.load !279, !noalias !27488 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null, !dbg !27592
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n, !dbg !27592

bb.n:                                             ; preds = %bb.m
  invoke void %i.ah(ptr noundef nonnull %i.af)
          to label %bb.o unwind label %bb.q, !dbg !27592, !noalias !27488

bb.o:                                             ; preds = %bb.n, %bb.m
    #dbg_value(ptr poison, !9952, !DIExpression(), !27593)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27595)
    #dbg_value(ptr %i.ag, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27595)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27596)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27598)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27600)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27602)
    #dbg_value(ptr %i.ag, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27596)
    #dbg_value(ptr %i.ag, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27598)
    #dbg_value(ptr %i.ag, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27600)
    #dbg_value(ptr %i.ag, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27602)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !27604
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !27604, !range !3062, !invariant.load !279, !noalias !27488 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27605)
    #dbg_value(i64 %i.aj, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27605)
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !27606
  br i1 %i.ak, label %bb.x, label %bb.p, !dbg !27606

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !27604
  %i.am = load i64, ptr %i.al, align 8, !dbg !27607, !range !3066, !invariant.load !279, !noalias !27488
    #dbg_value(i64 %i.am, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27605)
    #dbg_value(ptr %i.af, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27596)
    #dbg_value(ptr %i.af, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27598)
    #dbg_value(ptr %i.af, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27600)
    #dbg_value(ptr %i.af, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27602)
    #dbg_value(ptr %i.af, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27595)
    #dbg_value(ptr poison, !3067, !DIExpression(), !27608)
    #dbg_value(ptr poison, !3079, !DIExpression(), !27610)
    #dbg_value(ptr %i.af, !3075, !DIExpression(), !27608)
    #dbg_value(ptr %i.af, !3084, !DIExpression(), !27610)
    #dbg_value(ptr %i.af, !3088, !DIExpression(), !27612)
    #dbg_value(ptr %i.af, !3097, !DIExpression(), !27614)
    #dbg_value(i64 %i.am, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27608)
    #dbg_value(i64 %i.am, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27610)
    #dbg_value(i64 %i.am, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27612)
    #dbg_value(i64 %i.am, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27614)
    #dbg_value(i64 %i.aj, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27608)
    #dbg_value(i64 %i.aj, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27610)
    #dbg_value(i64 %i.aj, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27612)
    #dbg_value(i64 %i.aj, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27614)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, -9223372036854775808) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #14, !dbg !27616, !noalias !27488
  br label %bb.x, !dbg !27617

bb.q:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !27618)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27620)
    #dbg_value(ptr %i.ag, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27620)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27621)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27623)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27625)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27627)
    #dbg_value(ptr %i.ag, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27621)
    #dbg_value(ptr %i.ag, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27623)
    #dbg_value(ptr %i.ag, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27625)
    #dbg_value(ptr %i.ag, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27627)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !27629
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !27629, !range !3062, !invariant.load !279, !noalias !27488 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27630)
    #dbg_value(i64 %i.ap, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27630)
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !27631
  br i1 %i.aq, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i, label %bb.r, !dbg !27631

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !27629
  %i.as = load i64, ptr %i.ar, align 8, !dbg !27632, !range !3066, !invariant.load !279, !noalias !27488
    #dbg_value(i64 %i.as, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27630)
    #dbg_value(ptr %i.af, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27621)
    #dbg_value(ptr %i.af, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27623)
    #dbg_value(ptr %i.af, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27625)
    #dbg_value(ptr %i.af, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27627)
    #dbg_value(ptr %i.af, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27620)
    #dbg_value(ptr poison, !3067, !DIExpression(), !27633)
    #dbg_value(ptr poison, !3079, !DIExpression(), !27635)
    #dbg_value(ptr %i.af, !3075, !DIExpression(), !27633)
    #dbg_value(ptr %i.af, !3084, !DIExpression(), !27635)
    #dbg_value(ptr %i.af, !3088, !DIExpression(), !27637)
    #dbg_value(ptr %i.af, !3097, !DIExpression(), !27639)
    #dbg_value(i64 %i.as, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27633)
    #dbg_value(i64 %i.as, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27635)
    #dbg_value(i64 %i.as, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27637)
    #dbg_value(i64 %i.as, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27639)
    #dbg_value(i64 %i.ap, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27633)
    #dbg_value(i64 %i.ap, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27635)
    #dbg_value(i64 %i.ap, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27637)
    #dbg_value(i64 %i.ap, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27639)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, -9223372036854775808) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #14, !dbg !27641, !noalias !27488
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i, !dbg !27642

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i: ; preds = %bb.r, %bb.q
  resume { ptr, i32 } %i.an, !dbg !27592

bb.s:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !27643 ; 2 uses
    #dbg_value(ptr poison, !27644, !DIExpression(), !27678)
    #dbg_value(ptr %i.at, !27695, !DIExpression(), !27699)
    #dbg_value(ptr %i.at, !27700, !DIExpression(), !27704)
    #dbg_value(ptr %i.at, !27691, !DIExpression(), !27706)
    #dbg_value(ptr %i.at, !27685, !DIExpression(), !27707)
    #dbg_value(ptr %i.at, !27686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27708)
    #dbg_value(ptr undef, !27709, !DIExpression(), !27716)
    #dbg_value(ptr %i.at, !27714, !DIExpression(), !27718)
    #dbg_value(ptr %i.at, !27719, !DIExpression(), !27728)
    #dbg_declare(ptr poison, !27725, !DIExpression(), !27730)
    #dbg_declare(ptr poison, !27724, !DIExpression(), !27730)
    #dbg_value(ptr %i.at, !27731, !DIExpression(), !27739)
    #dbg_declare(ptr poison, !27736, !DIExpression(), !27741)
    #dbg_value(ptr poison, !27742, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !27748)
end_hunk_13
begin_hunk_14_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(i64 %i.v, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28036)
    #dbg_value(i64 %i.v, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28038)
    #dbg_value(i64 %i.s, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28032)
    #dbg_value(i64 %i.s, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28034)
    #dbg_value(i64 %i.s, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28036)
    #dbg_value(i64 %i.s, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28038)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #14, !dbg !28040
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !28041

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !28042)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28044)
    #dbg_value(ptr %i.o, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28044)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28045)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28047)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28049)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28051)
    #dbg_value(ptr %i.o, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28045)
    #dbg_value(ptr %i.o, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28047)
    #dbg_value(ptr %i.o, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28049)
    #dbg_value(ptr %i.o, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28051)
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !28053
  %i.y = load i64, ptr %i.x, align 8, !dbg !28053, !range !3062, !invariant.load !279 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28054)
    #dbg_value(i64 %i.y, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28054)
  %i.z = icmp eq i64 %i.y, 0, !dbg !28055
  br i1 %i.z, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.n, !dbg !28055

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !28053
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !28056, !range !3066, !invariant.load !279
    #dbg_value(i64 %i.ab, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28054)
    #dbg_value(ptr %i.n, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28045)
    #dbg_value(ptr %i.n, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28047)
    #dbg_value(ptr %i.n, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28049)
    #dbg_value(ptr %i.n, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28051)
    #dbg_value(ptr %i.n, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28044)
    #dbg_value(ptr poison, !3067, !DIExpression(), !28057)
    #dbg_value(ptr poison, !3079, !DIExpression(), !28059)
    #dbg_value(ptr %i.n, !3075, !DIExpression(), !28057)
    #dbg_value(ptr %i.n, !3084, !DIExpression(), !28059)
    #dbg_value(ptr %i.n, !3088, !DIExpression(), !28061)
    #dbg_value(ptr %i.n, !3097, !DIExpression(), !28063)
    #dbg_value(i64 %i.ab, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28057)
    #dbg_value(i64 %i.ab, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28059)
    #dbg_value(i64 %i.ab, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28061)
    #dbg_value(i64 %i.ab, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28063)
    #dbg_value(i64 %i.y, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28057)
    #dbg_value(i64 %i.y, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28059)
    #dbg_value(i64 %i.y, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28061)
    #dbg_value(i64 %i.y, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28063)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #14, !dbg !28065
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !28066

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w, !dbg !28016

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.noexc10, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
    #dbg_value(ptr poison, !28067, !DIExpression(), !28078)
    #dbg_declare(ptr %i.b, !28074, !DIExpression(), !28080)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !28081
    #dbg_value(ptr %0, !28082, !DIExpression(), !28085)
  store ptr %0, ptr %i.b, align 8, !dbg !28087
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !28088
  %i.ad = call noundef ptr @_RNvXs5_NtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler14current_threadINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !dbg !28089
  %.not.i = icmp eq ptr %i.ad, null, !dbg !28088
  %..i = select i1 %.not.i, i64 1, i64 2, !dbg !28090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !28091
    #dbg_value(i64 %..i, !27854, !DIExpression(), !28092)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i), !dbg !28093
  br i1 %i.ae, label %bb.o, label %bb.p, !dbg !28094

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !28095, !DIExpression(DW_OP_deref), !28098)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !28100
  br label %bb.p, !dbg !28101

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !28102
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !28103 {
bb.a:
  %i.a = alloca [1392 x i8], align 8              ; 4 uses
  %i.b = alloca [1392 x i8], align 8              ; 7 uses
    #dbg_value(ptr %0, !28106, !DIExpression(), !28107)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !28108
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !28109

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !26827, !DIExpression(), !28110)
    #dbg_value(ptr %0, !26829, !DIExpression(), !28112)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !28114
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !28115

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !26837, !DIExpression(DW_OP_deref), !28116)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !28118
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !28119

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !28120, !DIExpression(), !28123)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !28125 ; 2 uses
    #dbg_value(ptr poison, !27644, !DIExpression(), !28126)
    #dbg_value(ptr %i.e, !27695, !DIExpression(), !28131)
    #dbg_value(ptr %i.e, !27700, !DIExpression(), !28132)
    #dbg_value(ptr %i.e, !27691, !DIExpression(), !28134)
    #dbg_value(ptr %i.e, !27685, !DIExpression(), !28135)
    #dbg_value(ptr %i.e, !27686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28136)
    #dbg_value(ptr undef, !27709, !DIExpression(), !28137)
    #dbg_value(ptr %i.e, !27714, !DIExpression(), !28139)
    #dbg_value(ptr %i.e, !27719, !DIExpression(), !28140)
    #dbg_declare(ptr poison, !27725, !DIExpression(), !28142)
    #dbg_declare(ptr poison, !27724, !DIExpression(), !28142)
    #dbg_value(ptr %i.e, !27731, !DIExpression(), !28143)
    #dbg_declare(ptr poison, !27736, !DIExpression(), !28145)
    #dbg_value(ptr poison, !27742, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !28146)
    #dbg_value(ptr %i.e, !27750, !DIExpression(), !28148)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28150
  store i32 2, ptr %i.a, align 8, !dbg !28150
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1392) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !28151

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !28152
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !28152
    #dbg_value(ptr undef, !27644, !DIExpression(), !28126)
    #dbg_value(ptr %i.g, !27675, !DIExpression(), !28126)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !28153 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !28154
  unreachable, !dbg !28154

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !28155
    #dbg_value(ptr %i.e, !27686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28136)
    #dbg_value(ptr undef, !27686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28136)
    #dbg_value(ptr poison, !27696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28156)
    #dbg_value(ptr poison, !27762, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28157)
    #dbg_value(ptr poison, !27696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28156)
    #dbg_value(ptr poison, !27762, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28157)
    #dbg_value(i64 poison, !27765, !DIExpression(), !28157)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !28159

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !28153
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !28153 ; 2 uses
    #dbg_value(ptr %i.j, !27686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28136)
    #dbg_value(ptr %i.k, !27686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28136)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !27696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28156)
    #dbg_value(ptr %i.j, !27762, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28157)
    #dbg_value(ptr %i.k, !27696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28156)
    #dbg_value(ptr %i.k, !27762, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28157)
    #dbg_value(i64 poison, !27765, !DIExpression(), !28157)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !28160

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !28157
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !28157
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !28161
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !28161, !range !19413, !noundef !279
    #dbg_value(i64 %.sroa.01.0.i, !27703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28132)
    #dbg_value(ptr %.sroa.6.0.i, !27703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28132)
    #dbg_value(ptr %.sroa.8.0.i, !27703, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !28132)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !28162
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !28162
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !28162
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !28162
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !28162
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !28162
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !28162
  store i32 1, ptr %i.b, align 8, !dbg !28162
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1392) %i.b), !dbg !28163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !28164
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !28165
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !28165

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !28166
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !28167 {
bb.a:
    #dbg_value(ptr %0, !28175, !DIExpression(), !28176)
    #dbg_value(ptr %0, !28177, !DIExpression(), !28181)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !28183
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !28184

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !28185, !DIExpression(), !28190)
    #dbg_value(ptr undef, !28185, !DIExpression(DW_OP_deref), !28190)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !28192
  br label %bb.c, !dbg !28193

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !28194
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !28195 {
bb.a:
  %i.a = alloca [1192 x i8], align 8              ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !28200, !DIExpression(), !28203)
    #dbg_value(ptr %1, !28201, !DIExpression(), !28203)
    #dbg_value(ptr %2, !28202, !DIExpression(), !28203)
    #dbg_declare(ptr poison, !28204, !DIExpression(), !28215)
    #dbg_value(ptr poison, !28225, !DIExpression(), !28232)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1240, !dbg !28234
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !28235
  br i1 %i.c, label %bb.b, label %bb.p, !dbg !28235

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !28236
    #dbg_value(ptr %0, !28223, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !28237)
    #dbg_value(ptr %0, !28214, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !28238)
    #dbg_value(ptr %0, !28239, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !28247)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !28249 ; 2 uses
    #dbg_declare(ptr poison, !28250, !DIExpression(), !28258)
    #dbg_value(ptr %i.d, !28255, !DIExpression(), !28260)
    #dbg_value(ptr %i.d, !28261, !DIExpression(), !28267)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28269, !noalias !28270
    #dbg_value(i32 2, !28266, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !28267)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1192) %i.a, ptr noundef nonnull align 8 dereferenceable(1192) %i.d, i64 1192, i1 false), !dbg !28273, !noalias !28270
  store i32 2, ptr %i.d, align 8, !dbg !28274, !noalias !28270
  %i.e = load i32, ptr %i.a, align 8, !dbg !28269, !range !9897, !noalias !28270, !noundef !279
  %i.f = icmp eq i32 %i.e, 1, !dbg !28275
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !28275, !prof !18680

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.e unwind label %bb.d, !dbg !28276, !noalias !28270

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !28277, !range !9897, !noalias !28270, !noundef !279
  %i.i = icmp eq i32 %i.h, 1, !dbg !28277
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !28277

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.z, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !28203

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.a) #13
          to label %common.resume unwind label %bb.g, !dbg !28277, !noalias !28270

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !28258, !noalias !28270
  unreachable, !dbg !28258

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !28278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !28278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !28277, !noalias !28270
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28279), !dbg !28282
    #dbg_value(ptr %1, !18688, !DIExpression(), !28283)
  %i.l = load i64, ptr %1, align 8, !dbg !28285, !range !563, !alias.scope !28279, !noundef !279
  %i.m = icmp eq i64 %i.l, 0, !dbg !28285
  br i1 %i.m, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !28285

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28285 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28286), !dbg !28285
    #dbg_value(ptr %i.n, !9901, !DIExpression(), !28289)
  %i.o = load i64, ptr %i.n, align 8, !dbg !28291, !alias.scope !28292, !noundef !279
  %i.p = icmp eq i64 %i.o, 0, !dbg !28291
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !28291

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28291
  %.val.i.i = load ptr, ptr %i.q, align 8, !dbg !28291, !alias.scope !28292, !noundef !279 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !28291
  %.val1.i.i = load ptr, ptr %i.r, align 8, !dbg !28291, !alias.scope !28292 ; 6 uses
    #dbg_value(ptr poison, !9912, !DIExpression(), !28293)
    #dbg_value(ptr poison, !9922, !DIExpression(), !28295)
  %i.s = icmp eq ptr %.val.i.i, null, !dbg !28297
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.j, !dbg !28297

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr poison, !9933, !DIExpression(), !28298)
    #dbg_value(ptr poison, !9943, !DIExpression(), !28300)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.t = load ptr, ptr %.val1.i.i, align 8, !dbg !28302, !invariant.load !279, !noalias !28292 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null, !dbg !28302
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k, !dbg !28302

bb.k:                                             ; preds = %bb.j
  invoke void %i.t(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !dbg !28302, !noalias !28292

bb.l:                                             ; preds = %bb.k, %bb.j
    #dbg_value(ptr poison, !9952, !DIExpression(), !28303)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28305)
    #dbg_value(ptr %.val1.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28305)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28306)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28308)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28310)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28312)
    #dbg_value(ptr %.val1.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28306)
    #dbg_value(ptr %.val1.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28308)
    #dbg_value(ptr %.val1.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28310)
    #dbg_value(ptr %.val1.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28312)
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !28314
  %i.v = load i64, ptr %i.u, align 8, !dbg !28314, !range !3062, !invariant.load !279, !noalias !28292 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28315)
    #dbg_value(i64 %i.v, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28315)
  %i.w = icmp eq i64 %i.v, 0, !dbg !28316
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.m, !dbg !28316

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !28314
  %i.y = load i64, ptr %i.x, align 8, !dbg !28317, !range !3066, !invariant.load !279, !noalias !28292
    #dbg_value(i64 %i.y, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28315)
    #dbg_value(ptr %.val.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28306)
    #dbg_value(ptr %.val.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28308)
    #dbg_value(ptr %.val.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28310)
    #dbg_value(ptr %.val.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28312)
    #dbg_value(ptr %.val.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28305)
    #dbg_value(ptr poison, !3067, !DIExpression(), !28318)
    #dbg_value(ptr poison, !3079, !DIExpression(), !28320)
    #dbg_value(ptr %.val.i.i, !3075, !DIExpression(), !28318)
    #dbg_value(ptr %.val.i.i, !3084, !DIExpression(), !28320)
    #dbg_value(ptr %.val.i.i, !3088, !DIExpression(), !28322)
    #dbg_value(ptr %.val.i.i, !3097, !DIExpression(), !28324)
    #dbg_value(i64 %i.y, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28318)
    #dbg_value(i64 %i.y, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28320)
    #dbg_value(i64 %i.y, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28322)
    #dbg_value(i64 %i.y, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28324)
    #dbg_value(i64 %i.v, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28318)
    #dbg_value(i64 %i.v, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28320)
    #dbg_value(i64 %i.v, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28322)
    #dbg_value(i64 %i.v, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28324)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #14, !dbg !28326, !noalias !28292
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !28327

bb.n:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !28328)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28330)
    #dbg_value(ptr %.val1.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28330)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28331)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28333)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28335)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28337)
    #dbg_value(ptr %.val1.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28331)
    #dbg_value(ptr %.val1.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28333)
    #dbg_value(ptr %.val1.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28335)
    #dbg_value(ptr %.val1.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28337)
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !28339
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !28339, !range !3062, !invariant.load !279, !noalias !28292 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28340)
    #dbg_value(i64 %i.ab, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28340)
  %i.ac = icmp eq i64 %i.ab, 0, !dbg !28341
  br i1 %i.ac, label %.body, label %bb.o, !dbg !28341

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !28339
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !28342, !range !3066, !invariant.load !279, !noalias !28292
    #dbg_value(i64 %i.ae, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28340)
    #dbg_value(ptr %.val.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28331)
    #dbg_value(ptr %.val.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28333)
    #dbg_value(ptr %.val.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28335)
    #dbg_value(ptr %.val.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28337)
    #dbg_value(ptr %.val.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28330)
    #dbg_value(ptr poison, !3067, !DIExpression(), !28343)
    #dbg_value(ptr poison, !3079, !DIExpression(), !28345)
    #dbg_value(ptr %.val.i.i, !3075, !DIExpression(), !28343)
    #dbg_value(ptr %.val.i.i, !3084, !DIExpression(), !28345)
    #dbg_value(ptr %.val.i.i, !3088, !DIExpression(), !28347)
    #dbg_value(ptr %.val.i.i, !3097, !DIExpression(), !28349)
    #dbg_value(i64 %i.ae, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28343)
    #dbg_value(i64 %i.ae, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28345)
    #dbg_value(i64 %i.ae, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28347)
    #dbg_value(i64 %i.ae, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28349)
    #dbg_value(i64 %i.ab, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28343)
    #dbg_value(i64 %i.ab, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28345)
    #dbg_value(i64 %i.ab, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28347)
    #dbg_value(i64 %i.ab, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28349)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #14, !dbg !28351, !noalias !28292
  br label %.body, !dbg !28352

bb.p:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
end_hunk_14
begin_hunk_15_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(ptr poison, !3067, !DIExpression(), !28538)
    #dbg_value(ptr poison, !3079, !DIExpression(), !28540)
    #dbg_value(ptr %i.j, !3075, !DIExpression(), !28538)
    #dbg_value(ptr %i.j, !3084, !DIExpression(), !28540)
    #dbg_value(ptr %i.j, !3088, !DIExpression(), !28542)
    #dbg_value(ptr %i.j, !3097, !DIExpression(), !28544)
    #dbg_value(i64 %i.x, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28538)
    #dbg_value(i64 %i.x, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28540)
    #dbg_value(i64 %i.x, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28542)
    #dbg_value(i64 %i.x, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28544)
    #dbg_value(i64 %i.u, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28538)
    #dbg_value(i64 %i.u, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28540)
    #dbg_value(i64 %i.u, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28542)
    #dbg_value(i64 %i.u, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28544)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !28546
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !28547

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !28497

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !28175, !DIExpression(), !28548)
    #dbg_value(ptr %0, !28177, !DIExpression(), !28550)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !28552
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !28553

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !28185, !DIExpression(DW_OP_deref), !28554)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !28556
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !28557

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.l, %bb.m
  ret void, !dbg !28558

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !28425, !DIExpression(), !28428)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1240, !dbg !28559
  call void @_RNvMs6_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef), !dbg !28560
  br label %bb.l, !dbg !28561
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !28562 {
bb.a:
  %i.a = alloca [1192 x i8], align 8              ; 4 uses
  %i.b = alloca [1192 x i8], align 8              ; 7 uses
  %i.c = alloca [1192 x i8], align 8              ; 4 uses
  %i.d = alloca [1192 x i8], align 8              ; 7 uses
  %i.e = alloca [1192 x i8], align 8              ; 7 uses
  %i.f = alloca [1192 x i8], align 8              ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
    #dbg_value(ptr %0, !28565, !DIExpression(), !28566)
    #dbg_value(ptr poison, !28567, !DIExpression(), !28584)
    #dbg_value(ptr poison, !28586, !DIExpression(), !28589)
    #dbg_value(ptr poison, !28586, !DIExpression(), !28591)
    #dbg_value(ptr poison, !28586, !DIExpression(), !28593)
    #dbg_declare(ptr %i.h, !28576, !DIExpression(), !28595)
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0), !dbg !28596
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit
    i8 3, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCskigd7sy4fqX_10quinn_perf.exit.thread10
  ], !dbg !28597

default.unreachable:                              ; preds = %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11poll_futureNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !28574, !DIExpression(), !28598)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !28599
    #dbg_value(ptr poison, !28600, !DIExpression(), !28605)
    #dbg_value(ptr @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task5waker12WAKER_VTABLE, !28603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28607)
    #dbg_value(ptr %0, !28603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28607)
  store ptr @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8, !dbg !28608
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !28608
  store ptr %0, ptr %i.j, align 8, !dbg !28608
    #dbg_value(ptr %i.h, !28578, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28609)
    #dbg_value(ptr %i.h, !28610, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28635)
    #dbg_value(ptr %i.h, !28641, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28674)
    #dbg_value(ptr %i.h, !28655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28675)
    #dbg_value(ptr %i.h, !28662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28676)
    #dbg_value(ptr %i.h, !28578, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28609)
    #dbg_value(ptr %i.h, !28610, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !28635)
    #dbg_value(ptr %i.h, !28641, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !28674)
    #dbg_value(ptr %i.h, !28655, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !28675)
    #dbg_value(ptr %i.h, !28662, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28676)
    #dbg_value(ptr null, !28578, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !28609)
    #dbg_value(ptr null, !28610, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !28635)
    #dbg_value(ptr null, !28641, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !28674)
    #dbg_value(ptr null, !28655, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !28675)
    #dbg_value(ptr null, !28662, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !28676)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !28677 ; 6 uses
    #dbg_value(ptr poison, !28678, !DIExpression(), !28704)
    #dbg_value(ptr poison, !28718, !DIExpression(), !28736)
    #dbg_value(ptr poison, !28737, !DIExpression(), !28745)
    #dbg_declare(ptr poison, !28642, !DIExpression(DW_OP_LLVM_fragment, 128, 192), !28747)
    #dbg_value(ptr poison, !28748, !DIExpression(), !28755)
    #dbg_value(ptr poison, !28762, !DIExpression(), !28766)
    #dbg_value(ptr poison, !28767, !DIExpression(), !28775)
    #dbg_value(ptr poison, !28777, !DIExpression(), !28780)
    #dbg_value(ptr poison, !28784, !DIExpression(), !28786)
    #dbg_value(ptr %i.k, !28661, !DIExpression(), !28676)
    #dbg_value(ptr %i.k, !28655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28675)
    #dbg_value(ptr %i.k, !28641, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28674)
    #dbg_value(ptr %i.k, !28610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28635)
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !28787
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !28793, !noalias !28818
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8, !dbg !28825
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !28825
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8, !dbg !28825
    #dbg_value(ptr %i.k, !28642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28831)
    #dbg_value(ptr %i.h, !28642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28831)
    #dbg_declare(ptr poison, !28812, !DIExpression(DW_OP_LLVM_fragment, 64, 256), !28832)
    #dbg_declare(ptr poison, !28763, !DIExpression(DW_OP_LLVM_fragment, 64, 256), !28833)
    #dbg_value(ptr undef, !28762, !DIExpression(), !28766)
    #dbg_value(ptr undef, !28748, !DIExpression(), !28755)
    #dbg_value(ptr %i.k, !28763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28834)
    #dbg_value(ptr %i.k, !28812, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28835)
  store ptr %i.h, ptr %i.g, align 8, !dbg !28787, !noalias !28836
    #dbg_declare(ptr poison, !28800, !DIExpression(), !28837)
    #dbg_declare(ptr poison, !28799, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 256), !28838)
    #dbg_declare(ptr poison, !28814, !DIExpression(), !28839)
    #dbg_declare(ptr poison, !28813, !DIExpression(), !28839)
    #dbg_value(ptr poison, !28799, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !28840)
    #dbg_value(ptr %i.k, !28801, !DIExpression(), !28841)
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !dbg !28842, !noalias !28818

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
    #dbg_value(ptr poison, !28843, !DIExpression(), !28851)
    #dbg_value(ptr poison, !28853, !DIExpression(), !28856)
    #dbg_value(ptr %i.k, !28858, !DIExpression(), !28861)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !28863, !noalias !28818
  store i32 2, ptr %i.f, align 8, !dbg !28863, !noalias !28818
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1192) %i.f)
          to label %.body.i.i unwind label %bb.d, !dbg !28864, !noalias !28818

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !28865, !noalias !28818
  unreachable, !dbg !28865

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !28866, !noalias !28818
  %i.o = extractvalue { ptr, i32 } %i.m, 0, !dbg !28867
    #dbg_value(ptr undef, !28767, !DIExpression(), !28775)
    #dbg_value(ptr %i.o, !28772, !DIExpression(), !28775)
  %i.p = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !dbg !28868, !noalias !28836 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !28869, !noalias !28836
  unreachable, !dbg !28869

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !28870, !noalias !28818
    #dbg_value(ptr %i.h, !28642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28831)
    #dbg_value(!DIArgList(i64 0, i1 %i.l), !28642, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !28831)
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64, !dbg !28867
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr, !dbg !28867
    #dbg_value(ptr null, !28663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28871)
    #dbg_value(ptr %i.r, !28663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28871)
  br label %bb.h, !dbg !28872

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0, !dbg !28868 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1, !dbg !28868 ; 2 uses
    #dbg_value(ptr %i.t, !28642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28831)
    #dbg_value(ptr %i.s, !28642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28831)
    #dbg_value(ptr %i.s, !28663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28871)
    #dbg_value(ptr %i.t, !28663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28871)
  %.not.i.i = icmp eq ptr %i.s, null, !dbg !28873
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !28872, !prof !19410

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.s, !28669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28874)
    #dbg_value(ptr %i.t, !28669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28874)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !28875
  %i.v = load i64, ptr %i.u, align 8, !dbg !28875, !range !19413, !noalias !28836, !noundef !279
    #dbg_value(i64 %i.v, !28665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28876)
    #dbg_value(ptr %i.s, !28665, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28876)
    #dbg_value(ptr %i.t, !28665, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !28876)
  br label %bb.i, !dbg !28877

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64, !dbg !28873
  %i.y = trunc i64 %i.x to i1, !dbg !28873
  br i1 %i.y, label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11poll_futureNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit.i, label %bb.i, !dbg !28872

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ], !dbg !28871
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ], !dbg !28871
    #dbg_value(ptr %i.z, !28665, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28876)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !28665, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !28876)
    #dbg_value(i64 %.sroa.06.0.i.i, !28665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28876)
    #dbg_value(ptr %i.k, !28734, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28878)
    #dbg_value(ptr %i.k, !28727, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28879)
    #dbg_value(i64 %.sroa.06.0.i.i, !28734, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28878)
    #dbg_value(i64 %.sroa.06.0.i.i, !28727, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28879)
    #dbg_value(ptr %i.z, !28727, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !28879)
    #dbg_value(ptr %i.z, !28734, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !28878)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !28727, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !28879)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !28734, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !28878)
    #dbg_value(ptr %i.k, !28728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28880)
    #dbg_value(i64 %.sroa.06.0.i.i, !28728, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28880)
    #dbg_value(ptr %i.z, !28728, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !28880)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !28728, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !28880)
    #dbg_declare(ptr poison, !28881, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !28890)
    #dbg_declare(ptr poison, !28719, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !28892)
    #dbg_value(ptr undef, !28718, !DIExpression(), !28736)
    #dbg_value(ptr undef, !28678, !DIExpression(), !28704)
    #dbg_value(ptr %i.k, !28719, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28893)
    #dbg_value(ptr %i.k, !28881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28894)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !28895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !28895, !noalias !28911
  store i64 %.sroa.06.0.i.i, ptr %i.aa, align 8, !dbg !28916, !noalias !28836
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !28916
  store ptr %i.z, ptr %.sroa.10.8..sroa_idx.i.i, align 8, !dbg !28916, !noalias !28836
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !28916
  store ptr %.sroa.6.sroa.5.0.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i, align 8, !dbg !28916, !noalias !28836
    #dbg_declare(ptr poison, !28909, !DIExpression(), !28922)
    #dbg_declare(ptr poison, !28908, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 192), !28923)
    #dbg_declare(ptr poison, !28887, !DIExpression(), !28924)
    #dbg_declare(ptr poison, !28886, !DIExpression(), !28924)
    #dbg_value(ptr poison, !28908, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !28925)
    #dbg_declare(ptr poison, !28902, !DIExpression(), !28926)
    #dbg_value(ptr %i.k, !28901, !DIExpression(), !28927)
  store i32 1, ptr %i.e, align 8, !dbg !28895, !noalias !28911
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1192) %i.e)
          to label %.thread67.i.i unwind label %bb.j, !dbg !28928, !noalias !28836

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null, !dbg !28929
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0, !dbg !28929
    #dbg_value(ptr undef, !28737, !DIExpression(), !28745)
    #dbg_value(ptr %i.ac, !28742, !DIExpression(), !28745)
  %i.ad = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ac)
          to label %bb.l unwind label %bb.k, !dbg !28930, !noalias !28836 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !28931, !noalias !28836
  unreachable, !dbg !28931

.thread67.i.i:                                    ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !28932, !noalias !28911
    #dbg_value(i64 %.sroa.06.0.i.i, !28728, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28880)
    #dbg_value(ptr %i.k, !28728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28880)
    #dbg_value(ptr null, !28671, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28933)
    #dbg_value(ptr undef, !28671, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28933)
    #dbg_value(ptr undef, !28784, !DIExpression(), !28786)
    #dbg_value(ptr undef, !28777, !DIExpression(), !28780)
  br label %bb.x, !dbg !28934

bb.l:                                             ; preds = %bb.j
  %i.af = extractvalue { ptr, ptr } %i.ad, 0, !dbg !28930 ; 4 uses
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1, !dbg !28930 ; 6 uses
    #dbg_value(ptr %i.ag, !28728, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28880)
    #dbg_value(ptr %i.af, !28728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28880)
    #dbg_value(ptr %i.af, !28671, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28933)
    #dbg_value(ptr %i.ag, !28671, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28933)
    #dbg_value(ptr undef, !28784, !DIExpression(), !28786)
    #dbg_value(ptr undef, !28777, !DIExpression(), !28780)
  %.not34.i.i = icmp eq ptr %i.af, null, !dbg !28935
  br i1 %.not34.i.i, label %bb.x, label %bb.m, !dbg !28934

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr poison, !18939, !DIExpression(), !28936)
    #dbg_value(ptr poison, !9943, !DIExpression(), !28938)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !28940, !invariant.load !279, !noalias !28836 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null, !dbg !28940
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n, !dbg !28940

bb.n:                                             ; preds = %bb.m
  invoke void %i.ah(ptr noundef nonnull %i.af)
          to label %bb.o unwind label %bb.q, !dbg !28940, !noalias !28836

bb.o:                                             ; preds = %bb.n, %bb.m
    #dbg_value(ptr poison, !9952, !DIExpression(), !28941)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28943)
    #dbg_value(ptr %i.ag, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28943)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28944)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28946)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28948)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28950)
    #dbg_value(ptr %i.ag, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28944)
    #dbg_value(ptr %i.ag, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28946)
    #dbg_value(ptr %i.ag, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28948)
    #dbg_value(ptr %i.ag, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28950)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !28952
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !28952, !range !3062, !invariant.load !279, !noalias !28836 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28953)
    #dbg_value(i64 %i.aj, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28953)
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !28954
  br i1 %i.ak, label %bb.x, label %bb.p, !dbg !28954

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !28952
  %i.am = load i64, ptr %i.al, align 8, !dbg !28955, !range !3066, !invariant.load !279, !noalias !28836
    #dbg_value(i64 %i.am, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28953)
    #dbg_value(ptr %i.af, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28944)
    #dbg_value(ptr %i.af, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28946)
    #dbg_value(ptr %i.af, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28948)
    #dbg_value(ptr %i.af, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28950)
    #dbg_value(ptr %i.af, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28943)
    #dbg_value(ptr poison, !3067, !DIExpression(), !28956)
    #dbg_value(ptr poison, !3079, !DIExpression(), !28958)
    #dbg_value(ptr %i.af, !3075, !DIExpression(), !28956)
    #dbg_value(ptr %i.af, !3084, !DIExpression(), !28958)
    #dbg_value(ptr %i.af, !3088, !DIExpression(), !28960)
    #dbg_value(ptr %i.af, !3097, !DIExpression(), !28962)
    #dbg_value(i64 %i.am, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28956)
    #dbg_value(i64 %i.am, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28958)
    #dbg_value(i64 %i.am, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28960)
    #dbg_value(i64 %i.am, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28962)
    #dbg_value(i64 %i.aj, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28956)
    #dbg_value(i64 %i.aj, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28958)
    #dbg_value(i64 %i.aj, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28960)
    #dbg_value(i64 %i.aj, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28962)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, -9223372036854775808) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #14, !dbg !28964, !noalias !28836
  br label %bb.x, !dbg !28965

bb.q:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !28966)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28968)
    #dbg_value(ptr %i.ag, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28968)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28969)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28971)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28973)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28975)
    #dbg_value(ptr %i.ag, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28969)
    #dbg_value(ptr %i.ag, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28971)
    #dbg_value(ptr %i.ag, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28973)
    #dbg_value(ptr %i.ag, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28975)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !28977
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !28977, !range !3062, !invariant.load !279, !noalias !28836 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28978)
    #dbg_value(i64 %i.ap, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28978)
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !28979
  br i1 %i.aq, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i, label %bb.r, !dbg !28979

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !28977
  %i.as = load i64, ptr %i.ar, align 8, !dbg !28980, !range !3066, !invariant.load !279, !noalias !28836
    #dbg_value(i64 %i.as, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28978)
    #dbg_value(ptr %i.af, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28969)
    #dbg_value(ptr %i.af, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28971)
    #dbg_value(ptr %i.af, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28973)
    #dbg_value(ptr %i.af, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28975)
    #dbg_value(ptr %i.af, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28968)
    #dbg_value(ptr poison, !3067, !DIExpression(), !28981)
    #dbg_value(ptr poison, !3079, !DIExpression(), !28983)
    #dbg_value(ptr %i.af, !3075, !DIExpression(), !28981)
    #dbg_value(ptr %i.af, !3084, !DIExpression(), !28983)
    #dbg_value(ptr %i.af, !3088, !DIExpression(), !28985)
    #dbg_value(ptr %i.af, !3097, !DIExpression(), !28987)
    #dbg_value(i64 %i.as, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28981)
    #dbg_value(i64 %i.as, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28983)
    #dbg_value(i64 %i.as, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28985)
    #dbg_value(i64 %i.as, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28987)
    #dbg_value(i64 %i.ap, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28981)
    #dbg_value(i64 %i.ap, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28983)
    #dbg_value(i64 %i.ap, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28985)
    #dbg_value(i64 %i.ap, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28987)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, -9223372036854775808) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #14, !dbg !28989, !noalias !28836
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i, !dbg !28990

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i: ; preds = %bb.r, %bb.q
  resume { ptr, i32 } %i.an, !dbg !28940

bb.s:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !28991 ; 2 uses
    #dbg_value(ptr poison, !28992, !DIExpression(), !29026)
    #dbg_value(ptr %i.at, !29043, !DIExpression(), !29047)
    #dbg_value(ptr %i.at, !29048, !DIExpression(), !29052)
    #dbg_value(ptr %i.at, !29039, !DIExpression(), !29054)
    #dbg_value(ptr %i.at, !29033, !DIExpression(), !29055)
    #dbg_value(ptr %i.at, !29034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29056)
    #dbg_value(ptr undef, !29057, !DIExpression(), !29064)
    #dbg_value(ptr %i.at, !29062, !DIExpression(), !29066)
    #dbg_value(ptr %i.at, !29067, !DIExpression(), !29076)
    #dbg_declare(ptr poison, !29073, !DIExpression(), !29078)
    #dbg_declare(ptr poison, !29072, !DIExpression(), !29078)
    #dbg_value(ptr %i.at, !29079, !DIExpression(), !29087)
    #dbg_declare(ptr poison, !29084, !DIExpression(), !29089)
    #dbg_value(ptr poison, !29090, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !29096)
end_hunk_15
begin_hunk_16_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(i64 %i.v, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29384)
    #dbg_value(i64 %i.v, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29386)
    #dbg_value(i64 %i.s, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29380)
    #dbg_value(i64 %i.s, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29382)
    #dbg_value(i64 %i.s, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29384)
    #dbg_value(i64 %i.s, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29386)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #14, !dbg !29388
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !29389

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !29390)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29392)
    #dbg_value(ptr %i.o, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29392)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29393)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29395)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29397)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29399)
    #dbg_value(ptr %i.o, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29393)
    #dbg_value(ptr %i.o, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29395)
    #dbg_value(ptr %i.o, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29397)
    #dbg_value(ptr %i.o, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29399)
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !29401
  %i.y = load i64, ptr %i.x, align 8, !dbg !29401, !range !3062, !invariant.load !279 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29402)
    #dbg_value(i64 %i.y, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29402)
  %i.z = icmp eq i64 %i.y, 0, !dbg !29403
  br i1 %i.z, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.n, !dbg !29403

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !29401
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !29404, !range !3066, !invariant.load !279
    #dbg_value(i64 %i.ab, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29402)
    #dbg_value(ptr %i.n, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29393)
    #dbg_value(ptr %i.n, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29395)
    #dbg_value(ptr %i.n, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29397)
    #dbg_value(ptr %i.n, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29399)
    #dbg_value(ptr %i.n, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29392)
    #dbg_value(ptr poison, !3067, !DIExpression(), !29405)
    #dbg_value(ptr poison, !3079, !DIExpression(), !29407)
    #dbg_value(ptr %i.n, !3075, !DIExpression(), !29405)
    #dbg_value(ptr %i.n, !3084, !DIExpression(), !29407)
    #dbg_value(ptr %i.n, !3088, !DIExpression(), !29409)
    #dbg_value(ptr %i.n, !3097, !DIExpression(), !29411)
    #dbg_value(i64 %i.ab, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29405)
    #dbg_value(i64 %i.ab, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29407)
    #dbg_value(i64 %i.ab, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29409)
    #dbg_value(i64 %i.ab, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29411)
    #dbg_value(i64 %i.y, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29405)
    #dbg_value(i64 %i.y, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29407)
    #dbg_value(i64 %i.y, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29409)
    #dbg_value(i64 %i.y, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29411)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #14, !dbg !29413
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !29414

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w, !dbg !29364

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.noexc10, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
    #dbg_value(ptr poison, !29415, !DIExpression(), !29426)
    #dbg_declare(ptr %i.b, !29422, !DIExpression(), !29428)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !29429
    #dbg_value(ptr %0, !29430, !DIExpression(), !29433)
  store ptr %0, ptr %i.b, align 8, !dbg !29435
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !29436
  %i.ad = call noundef ptr @_RNvXs5_NtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler14current_threadINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !dbg !29437
  %.not.i = icmp eq ptr %i.ad, null, !dbg !29436
  %..i = select i1 %.not.i, i64 1, i64 2, !dbg !29438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !29439
    #dbg_value(i64 %..i, !29202, !DIExpression(), !29440)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i), !dbg !29441
  br i1 %i.ae, label %bb.o, label %bb.p, !dbg !29442

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !29443, !DIExpression(DW_OP_deref), !29446)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !29448
  br label %bb.p, !dbg !29449

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !29450
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !29451 {
bb.a:
  %i.a = alloca [1192 x i8], align 8              ; 4 uses
  %i.b = alloca [1192 x i8], align 8              ; 7 uses
    #dbg_value(ptr %0, !29454, !DIExpression(), !29455)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !29456
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !29457

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !28175, !DIExpression(), !29458)
    #dbg_value(ptr %0, !28177, !DIExpression(), !29460)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !29462
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !29463

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !28185, !DIExpression(DW_OP_deref), !29464)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !29466
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !29467

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !29468, !DIExpression(), !29471)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !29473 ; 2 uses
    #dbg_value(ptr poison, !28992, !DIExpression(), !29474)
    #dbg_value(ptr %i.e, !29043, !DIExpression(), !29479)
    #dbg_value(ptr %i.e, !29048, !DIExpression(), !29480)
    #dbg_value(ptr %i.e, !29039, !DIExpression(), !29482)
    #dbg_value(ptr %i.e, !29033, !DIExpression(), !29483)
    #dbg_value(ptr %i.e, !29034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29484)
    #dbg_value(ptr undef, !29057, !DIExpression(), !29485)
    #dbg_value(ptr %i.e, !29062, !DIExpression(), !29487)
    #dbg_value(ptr %i.e, !29067, !DIExpression(), !29488)
    #dbg_declare(ptr poison, !29073, !DIExpression(), !29490)
    #dbg_declare(ptr poison, !29072, !DIExpression(), !29490)
    #dbg_value(ptr %i.e, !29079, !DIExpression(), !29491)
    #dbg_declare(ptr poison, !29084, !DIExpression(), !29493)
    #dbg_value(ptr poison, !29090, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !29494)
    #dbg_value(ptr %i.e, !29098, !DIExpression(), !29496)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !29498
  store i32 2, ptr %i.a, align 8, !dbg !29498
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1192) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !29499

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !29500
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !29500
    #dbg_value(ptr undef, !28992, !DIExpression(), !29474)
    #dbg_value(ptr %i.g, !29023, !DIExpression(), !29474)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !29501 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !29502
  unreachable, !dbg !29502

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29503
    #dbg_value(ptr %i.e, !29034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29484)
    #dbg_value(ptr undef, !29034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29484)
    #dbg_value(ptr poison, !29044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29504)
    #dbg_value(ptr poison, !29110, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29505)
    #dbg_value(ptr poison, !29044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29504)
    #dbg_value(ptr poison, !29110, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29505)
    #dbg_value(i64 poison, !29113, !DIExpression(), !29505)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !29507

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !29501
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !29501 ; 2 uses
    #dbg_value(ptr %i.j, !29034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29484)
    #dbg_value(ptr %i.k, !29034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29484)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !29044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29504)
    #dbg_value(ptr %i.j, !29110, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29505)
    #dbg_value(ptr %i.k, !29044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29504)
    #dbg_value(ptr %i.k, !29110, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29505)
    #dbg_value(i64 poison, !29113, !DIExpression(), !29505)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !29508

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !29505
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !29505
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !29509
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !29509, !range !19413, !noundef !279
    #dbg_value(i64 %.sroa.01.0.i, !29051, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29480)
    #dbg_value(ptr %.sroa.6.0.i, !29051, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29480)
    #dbg_value(ptr %.sroa.8.0.i, !29051, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29480)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !29510
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !29510
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !29510
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !29510
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !29510
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !29510
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !29510
  store i32 1, ptr %i.b, align 8, !dbg !29510
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1192) %i.b), !dbg !29511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !29512
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !29513
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !29513

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !29514
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !29515 {
bb.a:
    #dbg_value(ptr %0, !29523, !DIExpression(), !29524)
    #dbg_value(ptr %0, !29525, !DIExpression(), !29529)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !29531
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !29532

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !29533, !DIExpression(), !29538)
    #dbg_value(ptr undef, !29533, !DIExpression(DW_OP_deref), !29538)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !29540
  br label %bb.c, !dbg !29541

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !29542
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !29543 {
bb.a:
  %i.a = alloca [1448 x i8], align 8              ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !29548, !DIExpression(), !29551)
    #dbg_value(ptr %1, !29549, !DIExpression(), !29551)
    #dbg_value(ptr %2, !29550, !DIExpression(), !29551)
    #dbg_declare(ptr poison, !29552, !DIExpression(), !29563)
    #dbg_value(ptr poison, !29573, !DIExpression(), !29580)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1496, !dbg !29582
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !29583
  br i1 %i.c, label %bb.b, label %bb.p, !dbg !29583

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !29584
    #dbg_value(ptr %0, !29571, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !29585)
    #dbg_value(ptr %0, !29562, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !29586)
    #dbg_value(ptr %0, !29587, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !29595)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !29597 ; 2 uses
    #dbg_declare(ptr poison, !29598, !DIExpression(), !29606)
    #dbg_value(ptr %i.d, !29603, !DIExpression(), !29608)
    #dbg_value(ptr %i.d, !29609, !DIExpression(), !29615)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !29617, !noalias !29618
    #dbg_value(i32 2, !29614, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29615)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1448) %i.a, ptr noundef nonnull align 8 dereferenceable(1448) %i.d, i64 1448, i1 false), !dbg !29621, !noalias !29618
  store i32 2, ptr %i.d, align 8, !dbg !29622, !noalias !29618
  %i.e = load i32, ptr %i.a, align 8, !dbg !29617, !range !9897, !noalias !29618, !noundef !279
  %i.f = icmp eq i32 %i.e, 1, !dbg !29623
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !29623, !prof !18680

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.e unwind label %bb.d, !dbg !29624, !noalias !29618

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !29625, !range !9897, !noalias !29618, !noundef !279
  %i.i = icmp eq i32 %i.h, 1, !dbg !29625
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !29625

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.z, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !29551

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.a) #13
          to label %common.resume unwind label %bb.g, !dbg !29625, !noalias !29618

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !29606, !noalias !29618
  unreachable, !dbg !29606

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !29626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !29626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29625, !noalias !29618
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29627), !dbg !29630
    #dbg_value(ptr %1, !18688, !DIExpression(), !29631)
  %i.l = load i64, ptr %1, align 8, !dbg !29633, !range !563, !alias.scope !29627, !noundef !279
  %i.m = icmp eq i64 %i.l, 0, !dbg !29633
  br i1 %i.m, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !29633

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !29633 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29634), !dbg !29633
    #dbg_value(ptr %i.n, !9901, !DIExpression(), !29637)
  %i.o = load i64, ptr %i.n, align 8, !dbg !29639, !alias.scope !29640, !noundef !279
  %i.p = icmp eq i64 %i.o, 0, !dbg !29639
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !29639

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !29639
  %.val.i.i = load ptr, ptr %i.q, align 8, !dbg !29639, !alias.scope !29640, !noundef !279 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !29639
  %.val1.i.i = load ptr, ptr %i.r, align 8, !dbg !29639, !alias.scope !29640 ; 6 uses
    #dbg_value(ptr poison, !9912, !DIExpression(), !29641)
    #dbg_value(ptr poison, !9922, !DIExpression(), !29643)
  %i.s = icmp eq ptr %.val.i.i, null, !dbg !29645
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.j, !dbg !29645

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr poison, !9933, !DIExpression(), !29646)
    #dbg_value(ptr poison, !9943, !DIExpression(), !29648)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.t = load ptr, ptr %.val1.i.i, align 8, !dbg !29650, !invariant.load !279, !noalias !29640 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null, !dbg !29650
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k, !dbg !29650

bb.k:                                             ; preds = %bb.j
  invoke void %i.t(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !dbg !29650, !noalias !29640

bb.l:                                             ; preds = %bb.k, %bb.j
    #dbg_value(ptr poison, !9952, !DIExpression(), !29651)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29653)
    #dbg_value(ptr %.val1.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29653)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29654)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29656)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29658)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29660)
    #dbg_value(ptr %.val1.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29654)
    #dbg_value(ptr %.val1.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29656)
    #dbg_value(ptr %.val1.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29658)
    #dbg_value(ptr %.val1.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29660)
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !29662
  %i.v = load i64, ptr %i.u, align 8, !dbg !29662, !range !3062, !invariant.load !279, !noalias !29640 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29663)
    #dbg_value(i64 %i.v, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29663)
  %i.w = icmp eq i64 %i.v, 0, !dbg !29664
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.m, !dbg !29664

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !29662
  %i.y = load i64, ptr %i.x, align 8, !dbg !29665, !range !3066, !invariant.load !279, !noalias !29640
    #dbg_value(i64 %i.y, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29663)
    #dbg_value(ptr %.val.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29654)
    #dbg_value(ptr %.val.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29656)
    #dbg_value(ptr %.val.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29658)
    #dbg_value(ptr %.val.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29660)
    #dbg_value(ptr %.val.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29653)
    #dbg_value(ptr poison, !3067, !DIExpression(), !29666)
    #dbg_value(ptr poison, !3079, !DIExpression(), !29668)
    #dbg_value(ptr %.val.i.i, !3075, !DIExpression(), !29666)
    #dbg_value(ptr %.val.i.i, !3084, !DIExpression(), !29668)
    #dbg_value(ptr %.val.i.i, !3088, !DIExpression(), !29670)
    #dbg_value(ptr %.val.i.i, !3097, !DIExpression(), !29672)
    #dbg_value(i64 %i.y, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29666)
    #dbg_value(i64 %i.y, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29668)
    #dbg_value(i64 %i.y, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29670)
    #dbg_value(i64 %i.y, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29672)
    #dbg_value(i64 %i.v, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29666)
    #dbg_value(i64 %i.v, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29668)
    #dbg_value(i64 %i.v, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29670)
    #dbg_value(i64 %i.v, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29672)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #14, !dbg !29674, !noalias !29640
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !29675

bb.n:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !29676)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29678)
    #dbg_value(ptr %.val1.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29678)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29679)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29681)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29683)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29685)
    #dbg_value(ptr %.val1.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29679)
    #dbg_value(ptr %.val1.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29681)
    #dbg_value(ptr %.val1.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29683)
    #dbg_value(ptr %.val1.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29685)
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !29687
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !29687, !range !3062, !invariant.load !279, !noalias !29640 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29688)
    #dbg_value(i64 %i.ab, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29688)
  %i.ac = icmp eq i64 %i.ab, 0, !dbg !29689
  br i1 %i.ac, label %.body, label %bb.o, !dbg !29689

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !29687
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !29690, !range !3066, !invariant.load !279, !noalias !29640
    #dbg_value(i64 %i.ae, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29688)
    #dbg_value(ptr %.val.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29679)
    #dbg_value(ptr %.val.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29681)
    #dbg_value(ptr %.val.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29683)
    #dbg_value(ptr %.val.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29685)
    #dbg_value(ptr %.val.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29678)
    #dbg_value(ptr poison, !3067, !DIExpression(), !29691)
    #dbg_value(ptr poison, !3079, !DIExpression(), !29693)
    #dbg_value(ptr %.val.i.i, !3075, !DIExpression(), !29691)
    #dbg_value(ptr %.val.i.i, !3084, !DIExpression(), !29693)
    #dbg_value(ptr %.val.i.i, !3088, !DIExpression(), !29695)
    #dbg_value(ptr %.val.i.i, !3097, !DIExpression(), !29697)
    #dbg_value(i64 %i.ae, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29691)
    #dbg_value(i64 %i.ae, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29693)
    #dbg_value(i64 %i.ae, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29695)
    #dbg_value(i64 %i.ae, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29697)
    #dbg_value(i64 %i.ab, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29691)
    #dbg_value(i64 %i.ab, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29693)
    #dbg_value(i64 %i.ab, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29695)
    #dbg_value(i64 %i.ab, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29697)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #14, !dbg !29699, !noalias !29640
  br label %.body, !dbg !29700

bb.p:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
end_hunk_16
begin_hunk_17_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(ptr poison, !3067, !DIExpression(), !29886)
    #dbg_value(ptr poison, !3079, !DIExpression(), !29888)
    #dbg_value(ptr %i.j, !3075, !DIExpression(), !29886)
    #dbg_value(ptr %i.j, !3084, !DIExpression(), !29888)
    #dbg_value(ptr %i.j, !3088, !DIExpression(), !29890)
    #dbg_value(ptr %i.j, !3097, !DIExpression(), !29892)
    #dbg_value(i64 %i.x, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29886)
    #dbg_value(i64 %i.x, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29888)
    #dbg_value(i64 %i.x, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29890)
    #dbg_value(i64 %i.x, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29892)
    #dbg_value(i64 %i.u, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29886)
    #dbg_value(i64 %i.u, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29888)
    #dbg_value(i64 %i.u, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29890)
    #dbg_value(i64 %i.u, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29892)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !29894
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !29895

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !29845

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !29523, !DIExpression(), !29896)
    #dbg_value(ptr %0, !29525, !DIExpression(), !29898)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !29900
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !29901

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !29533, !DIExpression(DW_OP_deref), !29902)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !29904
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !29905

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.l, %bb.m
  ret void, !dbg !29906

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !29773, !DIExpression(), !29776)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1496, !dbg !29907
  call void @_RNvMs6_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef), !dbg !29908
  br label %bb.l, !dbg !29909
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !29910 {
bb.a:
  %i.a = alloca [1448 x i8], align 8              ; 4 uses
  %i.b = alloca [1448 x i8], align 8              ; 7 uses
  %i.c = alloca [1448 x i8], align 8              ; 4 uses
  %i.d = alloca [1448 x i8], align 8              ; 7 uses
  %i.e = alloca [1448 x i8], align 8              ; 7 uses
  %i.f = alloca [1448 x i8], align 8              ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
    #dbg_value(ptr %0, !29913, !DIExpression(), !29914)
    #dbg_value(ptr poison, !29915, !DIExpression(), !29932)
    #dbg_value(ptr poison, !29934, !DIExpression(), !29937)
    #dbg_value(ptr poison, !29934, !DIExpression(), !29939)
    #dbg_value(ptr poison, !29934, !DIExpression(), !29941)
    #dbg_declare(ptr %i.h, !29924, !DIExpression(), !29943)
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0), !dbg !29944
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit
    i8 3, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCskigd7sy4fqX_10quinn_perf.exit.thread10
  ], !dbg !29945

default.unreachable:                              ; preds = %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11poll_futureNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !29922, !DIExpression(), !29946)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !29947
    #dbg_value(ptr poison, !29948, !DIExpression(), !29953)
    #dbg_value(ptr @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task5waker12WAKER_VTABLE, !29951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29955)
    #dbg_value(ptr %0, !29951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29955)
  store ptr @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8, !dbg !29956
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !29956
  store ptr %0, ptr %i.j, align 8, !dbg !29956
    #dbg_value(ptr %i.h, !29926, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29957)
    #dbg_value(ptr %i.h, !29958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29983)
    #dbg_value(ptr %i.h, !29989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30022)
    #dbg_value(ptr %i.h, !30003, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30023)
    #dbg_value(ptr %i.h, !30010, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30024)
    #dbg_value(ptr %i.h, !29926, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29957)
    #dbg_value(ptr %i.h, !29958, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29983)
    #dbg_value(ptr %i.h, !29989, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30022)
    #dbg_value(ptr %i.h, !30003, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30023)
    #dbg_value(ptr %i.h, !30010, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30024)
    #dbg_value(ptr null, !29926, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29957)
    #dbg_value(ptr null, !29958, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !29983)
    #dbg_value(ptr null, !29989, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !30022)
    #dbg_value(ptr null, !30003, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !30023)
    #dbg_value(ptr null, !30010, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30024)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !30025 ; 6 uses
    #dbg_value(ptr poison, !30026, !DIExpression(), !30052)
    #dbg_value(ptr poison, !30066, !DIExpression(), !30084)
    #dbg_value(ptr poison, !30085, !DIExpression(), !30093)
    #dbg_declare(ptr poison, !29990, !DIExpression(DW_OP_LLVM_fragment, 128, 192), !30095)
    #dbg_value(ptr poison, !30096, !DIExpression(), !30103)
    #dbg_value(ptr poison, !30110, !DIExpression(), !30114)
    #dbg_value(ptr poison, !30115, !DIExpression(), !30123)
    #dbg_value(ptr poison, !30125, !DIExpression(), !30128)
    #dbg_value(ptr poison, !30132, !DIExpression(), !30134)
    #dbg_value(ptr %i.k, !30009, !DIExpression(), !30024)
    #dbg_value(ptr %i.k, !30003, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30023)
    #dbg_value(ptr %i.k, !29989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30022)
    #dbg_value(ptr %i.k, !29958, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29983)
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !30135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !30141, !noalias !30166
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8, !dbg !30173
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !30173
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8, !dbg !30173
    #dbg_value(ptr %i.k, !29990, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30179)
    #dbg_value(ptr %i.h, !29990, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30179)
    #dbg_declare(ptr poison, !30160, !DIExpression(DW_OP_LLVM_fragment, 64, 256), !30180)
    #dbg_declare(ptr poison, !30111, !DIExpression(DW_OP_LLVM_fragment, 64, 256), !30181)
    #dbg_value(ptr undef, !30110, !DIExpression(), !30114)
    #dbg_value(ptr undef, !30096, !DIExpression(), !30103)
    #dbg_value(ptr %i.k, !30111, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30182)
    #dbg_value(ptr %i.k, !30160, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30183)
  store ptr %i.h, ptr %i.g, align 8, !dbg !30135, !noalias !30184
    #dbg_declare(ptr poison, !30148, !DIExpression(), !30185)
    #dbg_declare(ptr poison, !30147, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 256), !30186)
    #dbg_declare(ptr poison, !30162, !DIExpression(), !30187)
    #dbg_declare(ptr poison, !30161, !DIExpression(), !30187)
    #dbg_value(ptr poison, !30147, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !30188)
    #dbg_value(ptr %i.k, !30149, !DIExpression(), !30189)
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !dbg !30190, !noalias !30166

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
    #dbg_value(ptr poison, !30191, !DIExpression(), !30199)
    #dbg_value(ptr poison, !30201, !DIExpression(), !30204)
    #dbg_value(ptr %i.k, !30206, !DIExpression(), !30209)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !30211, !noalias !30166
  store i32 2, ptr %i.f, align 8, !dbg !30211, !noalias !30166
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1448) %i.f)
          to label %.body.i.i unwind label %bb.d, !dbg !30212, !noalias !30166

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !30213, !noalias !30166
  unreachable, !dbg !30213

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !30214, !noalias !30166
  %i.o = extractvalue { ptr, i32 } %i.m, 0, !dbg !30215
    #dbg_value(ptr undef, !30115, !DIExpression(), !30123)
    #dbg_value(ptr %i.o, !30120, !DIExpression(), !30123)
  %i.p = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !dbg !30216, !noalias !30184 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !30217, !noalias !30184
  unreachable, !dbg !30217

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !30218, !noalias !30166
    #dbg_value(ptr %i.h, !29990, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30179)
    #dbg_value(!DIArgList(i64 0, i1 %i.l), !29990, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !30179)
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64, !dbg !30215
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr, !dbg !30215
    #dbg_value(ptr null, !30011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30219)
    #dbg_value(ptr %i.r, !30011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30219)
  br label %bb.h, !dbg !30220

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0, !dbg !30216 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1, !dbg !30216 ; 2 uses
    #dbg_value(ptr %i.t, !29990, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30179)
    #dbg_value(ptr %i.s, !29990, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30179)
    #dbg_value(ptr %i.s, !30011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30219)
    #dbg_value(ptr %i.t, !30011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30219)
  %.not.i.i = icmp eq ptr %i.s, null, !dbg !30221
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !30220, !prof !19410

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.s, !30017, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30222)
    #dbg_value(ptr %i.t, !30017, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30222)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !30223
  %i.v = load i64, ptr %i.u, align 8, !dbg !30223, !range !19413, !noalias !30184, !noundef !279
    #dbg_value(i64 %i.v, !30013, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30224)
    #dbg_value(ptr %i.s, !30013, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30224)
    #dbg_value(ptr %i.t, !30013, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30224)
  br label %bb.i, !dbg !30225

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64, !dbg !30221
  %i.y = trunc i64 %i.x to i1, !dbg !30221
  br i1 %i.y, label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11poll_futureNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit.i, label %bb.i, !dbg !30220

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ], !dbg !30219
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ], !dbg !30219
    #dbg_value(ptr %i.z, !30013, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30224)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !30013, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30224)
    #dbg_value(i64 %.sroa.06.0.i.i, !30013, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30224)
    #dbg_value(ptr %i.k, !30082, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30226)
    #dbg_value(ptr %i.k, !30075, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30227)
    #dbg_value(i64 %.sroa.06.0.i.i, !30082, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30226)
    #dbg_value(i64 %.sroa.06.0.i.i, !30075, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30227)
    #dbg_value(ptr %i.z, !30075, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30227)
    #dbg_value(ptr %i.z, !30082, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30226)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !30075, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !30227)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !30082, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !30226)
    #dbg_value(ptr %i.k, !30076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30228)
    #dbg_value(i64 %.sroa.06.0.i.i, !30076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30228)
    #dbg_value(ptr %i.z, !30076, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30228)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !30076, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !30228)
    #dbg_declare(ptr poison, !30229, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !30238)
    #dbg_declare(ptr poison, !30067, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !30240)
    #dbg_value(ptr undef, !30066, !DIExpression(), !30084)
    #dbg_value(ptr undef, !30026, !DIExpression(), !30052)
    #dbg_value(ptr %i.k, !30067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30241)
    #dbg_value(ptr %i.k, !30229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30242)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !30243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !30243, !noalias !30259
  store i64 %.sroa.06.0.i.i, ptr %i.aa, align 8, !dbg !30264, !noalias !30184
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !30264
  store ptr %i.z, ptr %.sroa.10.8..sroa_idx.i.i, align 8, !dbg !30264, !noalias !30184
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !30264
  store ptr %.sroa.6.sroa.5.0.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i, align 8, !dbg !30264, !noalias !30184
    #dbg_declare(ptr poison, !30257, !DIExpression(), !30270)
    #dbg_declare(ptr poison, !30256, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 192), !30271)
    #dbg_declare(ptr poison, !30235, !DIExpression(), !30272)
    #dbg_declare(ptr poison, !30234, !DIExpression(), !30272)
    #dbg_value(ptr poison, !30256, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !30273)
    #dbg_declare(ptr poison, !30250, !DIExpression(), !30274)
    #dbg_value(ptr %i.k, !30249, !DIExpression(), !30275)
  store i32 1, ptr %i.e, align 8, !dbg !30243, !noalias !30259
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1448) %i.e)
          to label %.thread67.i.i unwind label %bb.j, !dbg !30276, !noalias !30184

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null, !dbg !30277
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0, !dbg !30277
    #dbg_value(ptr undef, !30085, !DIExpression(), !30093)
    #dbg_value(ptr %i.ac, !30090, !DIExpression(), !30093)
  %i.ad = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ac)
          to label %bb.l unwind label %bb.k, !dbg !30278, !noalias !30184 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !30279, !noalias !30184
  unreachable, !dbg !30279

.thread67.i.i:                                    ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !30280, !noalias !30259
    #dbg_value(i64 %.sroa.06.0.i.i, !30076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30228)
    #dbg_value(ptr %i.k, !30076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30228)
    #dbg_value(ptr null, !30019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30281)
    #dbg_value(ptr undef, !30019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30281)
    #dbg_value(ptr undef, !30132, !DIExpression(), !30134)
    #dbg_value(ptr undef, !30125, !DIExpression(), !30128)
  br label %bb.x, !dbg !30282

bb.l:                                             ; preds = %bb.j
  %i.af = extractvalue { ptr, ptr } %i.ad, 0, !dbg !30278 ; 4 uses
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1, !dbg !30278 ; 6 uses
    #dbg_value(ptr %i.ag, !30076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30228)
    #dbg_value(ptr %i.af, !30076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30228)
    #dbg_value(ptr %i.af, !30019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30281)
    #dbg_value(ptr %i.ag, !30019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30281)
    #dbg_value(ptr undef, !30132, !DIExpression(), !30134)
    #dbg_value(ptr undef, !30125, !DIExpression(), !30128)
  %.not34.i.i = icmp eq ptr %i.af, null, !dbg !30283
  br i1 %.not34.i.i, label %bb.x, label %bb.m, !dbg !30282

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr poison, !18939, !DIExpression(), !30284)
    #dbg_value(ptr poison, !9943, !DIExpression(), !30286)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !30288, !invariant.load !279, !noalias !30184 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null, !dbg !30288
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n, !dbg !30288

bb.n:                                             ; preds = %bb.m
  invoke void %i.ah(ptr noundef nonnull %i.af)
          to label %bb.o unwind label %bb.q, !dbg !30288, !noalias !30184

bb.o:                                             ; preds = %bb.n, %bb.m
    #dbg_value(ptr poison, !9952, !DIExpression(), !30289)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30291)
    #dbg_value(ptr %i.ag, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30291)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30292)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30294)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30296)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30298)
    #dbg_value(ptr %i.ag, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30292)
    #dbg_value(ptr %i.ag, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30294)
    #dbg_value(ptr %i.ag, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30296)
    #dbg_value(ptr %i.ag, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30298)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !30300
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !30300, !range !3062, !invariant.load !279, !noalias !30184 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30301)
    #dbg_value(i64 %i.aj, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30301)
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !30302
  br i1 %i.ak, label %bb.x, label %bb.p, !dbg !30302

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !30300
  %i.am = load i64, ptr %i.al, align 8, !dbg !30303, !range !3066, !invariant.load !279, !noalias !30184
    #dbg_value(i64 %i.am, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30301)
    #dbg_value(ptr %i.af, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30292)
    #dbg_value(ptr %i.af, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30294)
    #dbg_value(ptr %i.af, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30296)
    #dbg_value(ptr %i.af, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30298)
    #dbg_value(ptr %i.af, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30291)
    #dbg_value(ptr poison, !3067, !DIExpression(), !30304)
    #dbg_value(ptr poison, !3079, !DIExpression(), !30306)
    #dbg_value(ptr %i.af, !3075, !DIExpression(), !30304)
    #dbg_value(ptr %i.af, !3084, !DIExpression(), !30306)
    #dbg_value(ptr %i.af, !3088, !DIExpression(), !30308)
    #dbg_value(ptr %i.af, !3097, !DIExpression(), !30310)
    #dbg_value(i64 %i.am, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30304)
    #dbg_value(i64 %i.am, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30306)
    #dbg_value(i64 %i.am, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30308)
    #dbg_value(i64 %i.am, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30310)
    #dbg_value(i64 %i.aj, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30304)
    #dbg_value(i64 %i.aj, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30306)
    #dbg_value(i64 %i.aj, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30308)
    #dbg_value(i64 %i.aj, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30310)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, -9223372036854775808) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #14, !dbg !30312, !noalias !30184
  br label %bb.x, !dbg !30313

bb.q:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !30314)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30316)
    #dbg_value(ptr %i.ag, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30316)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30317)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30319)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30321)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30323)
    #dbg_value(ptr %i.ag, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30317)
    #dbg_value(ptr %i.ag, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30319)
    #dbg_value(ptr %i.ag, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30321)
    #dbg_value(ptr %i.ag, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30323)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !30325
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !30325, !range !3062, !invariant.load !279, !noalias !30184 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30326)
    #dbg_value(i64 %i.ap, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30326)
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !30327
  br i1 %i.aq, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i, label %bb.r, !dbg !30327

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !30325
  %i.as = load i64, ptr %i.ar, align 8, !dbg !30328, !range !3066, !invariant.load !279, !noalias !30184
    #dbg_value(i64 %i.as, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30326)
    #dbg_value(ptr %i.af, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30317)
    #dbg_value(ptr %i.af, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30319)
    #dbg_value(ptr %i.af, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30321)
    #dbg_value(ptr %i.af, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30323)
    #dbg_value(ptr %i.af, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30316)
    #dbg_value(ptr poison, !3067, !DIExpression(), !30329)
    #dbg_value(ptr poison, !3079, !DIExpression(), !30331)
    #dbg_value(ptr %i.af, !3075, !DIExpression(), !30329)
    #dbg_value(ptr %i.af, !3084, !DIExpression(), !30331)
    #dbg_value(ptr %i.af, !3088, !DIExpression(), !30333)
    #dbg_value(ptr %i.af, !3097, !DIExpression(), !30335)
    #dbg_value(i64 %i.as, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30329)
    #dbg_value(i64 %i.as, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30331)
    #dbg_value(i64 %i.as, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30333)
    #dbg_value(i64 %i.as, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30335)
    #dbg_value(i64 %i.ap, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30329)
    #dbg_value(i64 %i.ap, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30331)
    #dbg_value(i64 %i.ap, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30333)
    #dbg_value(i64 %i.ap, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30335)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, -9223372036854775808) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #14, !dbg !30337, !noalias !30184
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i, !dbg !30338

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i: ; preds = %bb.r, %bb.q
  resume { ptr, i32 } %i.an, !dbg !30288

bb.s:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !30339 ; 2 uses
    #dbg_value(ptr poison, !30340, !DIExpression(), !30374)
    #dbg_value(ptr %i.at, !30391, !DIExpression(), !30395)
    #dbg_value(ptr %i.at, !30396, !DIExpression(), !30400)
    #dbg_value(ptr %i.at, !30387, !DIExpression(), !30402)
    #dbg_value(ptr %i.at, !30381, !DIExpression(), !30403)
    #dbg_value(ptr %i.at, !30382, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30404)
    #dbg_value(ptr undef, !30405, !DIExpression(), !30412)
    #dbg_value(ptr %i.at, !30410, !DIExpression(), !30414)
    #dbg_value(ptr %i.at, !30415, !DIExpression(), !30424)
    #dbg_declare(ptr poison, !30421, !DIExpression(), !30426)
    #dbg_declare(ptr poison, !30420, !DIExpression(), !30426)
    #dbg_value(ptr %i.at, !30427, !DIExpression(), !30435)
    #dbg_declare(ptr poison, !30432, !DIExpression(), !30437)
    #dbg_value(ptr poison, !30438, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !30444)
end_hunk_17
begin_hunk_18_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(i64 %i.v, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30732)
    #dbg_value(i64 %i.v, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30734)
    #dbg_value(i64 %i.s, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30728)
    #dbg_value(i64 %i.s, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30730)
    #dbg_value(i64 %i.s, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30732)
    #dbg_value(i64 %i.s, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30734)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #14, !dbg !30736
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !30737

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !30738)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30740)
    #dbg_value(ptr %i.o, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30740)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30741)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30743)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30745)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30747)
    #dbg_value(ptr %i.o, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30741)
    #dbg_value(ptr %i.o, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30743)
    #dbg_value(ptr %i.o, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30745)
    #dbg_value(ptr %i.o, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30747)
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !30749
  %i.y = load i64, ptr %i.x, align 8, !dbg !30749, !range !3062, !invariant.load !279 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30750)
    #dbg_value(i64 %i.y, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30750)
  %i.z = icmp eq i64 %i.y, 0, !dbg !30751
  br i1 %i.z, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.n, !dbg !30751

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !30749
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !30752, !range !3066, !invariant.load !279
    #dbg_value(i64 %i.ab, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30750)
    #dbg_value(ptr %i.n, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30741)
    #dbg_value(ptr %i.n, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30743)
    #dbg_value(ptr %i.n, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30745)
    #dbg_value(ptr %i.n, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30747)
    #dbg_value(ptr %i.n, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30740)
    #dbg_value(ptr poison, !3067, !DIExpression(), !30753)
    #dbg_value(ptr poison, !3079, !DIExpression(), !30755)
    #dbg_value(ptr %i.n, !3075, !DIExpression(), !30753)
    #dbg_value(ptr %i.n, !3084, !DIExpression(), !30755)
    #dbg_value(ptr %i.n, !3088, !DIExpression(), !30757)
    #dbg_value(ptr %i.n, !3097, !DIExpression(), !30759)
    #dbg_value(i64 %i.ab, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30753)
    #dbg_value(i64 %i.ab, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30755)
    #dbg_value(i64 %i.ab, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30757)
    #dbg_value(i64 %i.ab, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30759)
    #dbg_value(i64 %i.y, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30753)
    #dbg_value(i64 %i.y, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30755)
    #dbg_value(i64 %i.y, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30757)
    #dbg_value(i64 %i.y, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30759)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #14, !dbg !30761
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !30762

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w, !dbg !30712

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.noexc10, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
    #dbg_value(ptr poison, !30763, !DIExpression(), !30774)
    #dbg_declare(ptr %i.b, !30770, !DIExpression(), !30776)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !30777
    #dbg_value(ptr %0, !30778, !DIExpression(), !30781)
  store ptr %0, ptr %i.b, align 8, !dbg !30783
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !30784
  %i.ad = call noundef ptr @_RNvXs5_NtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler14current_threadINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !dbg !30785
  %.not.i = icmp eq ptr %i.ad, null, !dbg !30784
  %..i = select i1 %.not.i, i64 1, i64 2, !dbg !30786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !30787
    #dbg_value(i64 %..i, !30550, !DIExpression(), !30788)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i), !dbg !30789
  br i1 %i.ae, label %bb.o, label %bb.p, !dbg !30790

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !30791, !DIExpression(DW_OP_deref), !30794)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !30796
  br label %bb.p, !dbg !30797

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !30798
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !30799 {
bb.a:
  %i.a = alloca [1448 x i8], align 8              ; 4 uses
  %i.b = alloca [1448 x i8], align 8              ; 7 uses
    #dbg_value(ptr %0, !30802, !DIExpression(), !30803)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !30804
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !30805

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !29523, !DIExpression(), !30806)
    #dbg_value(ptr %0, !29525, !DIExpression(), !30808)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !30810
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !30811

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !29533, !DIExpression(DW_OP_deref), !30812)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !30814
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !30815

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !30816, !DIExpression(), !30819)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !30821 ; 2 uses
    #dbg_value(ptr poison, !30340, !DIExpression(), !30822)
    #dbg_value(ptr %i.e, !30391, !DIExpression(), !30827)
    #dbg_value(ptr %i.e, !30396, !DIExpression(), !30828)
    #dbg_value(ptr %i.e, !30387, !DIExpression(), !30830)
    #dbg_value(ptr %i.e, !30381, !DIExpression(), !30831)
    #dbg_value(ptr %i.e, !30382, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30832)
    #dbg_value(ptr undef, !30405, !DIExpression(), !30833)
    #dbg_value(ptr %i.e, !30410, !DIExpression(), !30835)
    #dbg_value(ptr %i.e, !30415, !DIExpression(), !30836)
    #dbg_declare(ptr poison, !30421, !DIExpression(), !30838)
    #dbg_declare(ptr poison, !30420, !DIExpression(), !30838)
    #dbg_value(ptr %i.e, !30427, !DIExpression(), !30839)
    #dbg_declare(ptr poison, !30432, !DIExpression(), !30841)
    #dbg_value(ptr poison, !30438, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !30842)
    #dbg_value(ptr %i.e, !30446, !DIExpression(), !30844)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !30846
  store i32 2, ptr %i.a, align 8, !dbg !30846
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1448) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !30847

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !30848
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !30848
    #dbg_value(ptr undef, !30340, !DIExpression(), !30822)
    #dbg_value(ptr %i.g, !30371, !DIExpression(), !30822)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !30849 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !30850
  unreachable, !dbg !30850

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !30851
    #dbg_value(ptr %i.e, !30382, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30832)
    #dbg_value(ptr undef, !30382, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30832)
    #dbg_value(ptr poison, !30392, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30852)
    #dbg_value(ptr poison, !30458, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30853)
    #dbg_value(ptr poison, !30392, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30852)
    #dbg_value(ptr poison, !30458, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30853)
    #dbg_value(i64 poison, !30461, !DIExpression(), !30853)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !30855

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !30849
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !30849 ; 2 uses
    #dbg_value(ptr %i.j, !30382, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30832)
    #dbg_value(ptr %i.k, !30382, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30832)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !30392, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30852)
    #dbg_value(ptr %i.j, !30458, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30853)
    #dbg_value(ptr %i.k, !30392, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30852)
    #dbg_value(ptr %i.k, !30458, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30853)
    #dbg_value(i64 poison, !30461, !DIExpression(), !30853)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !30856

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !30853
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !30853
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !30857
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !30857, !range !19413, !noundef !279
    #dbg_value(i64 %.sroa.01.0.i, !30399, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30828)
    #dbg_value(ptr %.sroa.6.0.i, !30399, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30828)
    #dbg_value(ptr %.sroa.8.0.i, !30399, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !30828)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !30858
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !30858
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !30858
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !30858
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !30858
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !30858
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !30858
  store i32 1, ptr %i.b, align 8, !dbg !30858
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1448) %i.b), !dbg !30859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !30860
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !30861
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !30861

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !30862
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !30863 {
bb.a:
    #dbg_value(ptr %0, !30871, !DIExpression(), !30872)
    #dbg_value(ptr %0, !30873, !DIExpression(), !30877)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !30879
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !30880

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !30881, !DIExpression(), !30886)
    #dbg_value(ptr undef, !30881, !DIExpression(DW_OP_deref), !30886)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !30888
  br label %bb.c, !dbg !30889

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !30890
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !30891 {
bb.a:
  %i.a = alloca [1408 x i8], align 8              ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !30896, !DIExpression(), !30899)
    #dbg_value(ptr %1, !30897, !DIExpression(), !30899)
    #dbg_value(ptr %2, !30898, !DIExpression(), !30899)
    #dbg_declare(ptr poison, !30900, !DIExpression(), !30911)
    #dbg_value(ptr poison, !30921, !DIExpression(), !30928)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1456, !dbg !30930
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !30931
  br i1 %i.c, label %bb.b, label %bb.p, !dbg !30931

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !30932
    #dbg_value(ptr %0, !30919, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !30933)
    #dbg_value(ptr %0, !30910, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !30934)
    #dbg_value(ptr %0, !30935, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !30943)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !30945 ; 2 uses
    #dbg_declare(ptr poison, !30946, !DIExpression(), !30954)
    #dbg_value(ptr %i.d, !30951, !DIExpression(), !30956)
    #dbg_value(ptr %i.d, !30957, !DIExpression(), !30963)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !30965, !noalias !30966
    #dbg_value(i32 2, !30962, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !30963)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1408) %i.a, ptr noundef nonnull align 8 dereferenceable(1408) %i.d, i64 1408, i1 false), !dbg !30969, !noalias !30966
  store i32 2, ptr %i.d, align 8, !dbg !30970, !noalias !30966
  %i.e = load i32, ptr %i.a, align 8, !dbg !30965, !range !9897, !noalias !30966, !noundef !279
  %i.f = icmp eq i32 %i.e, 1, !dbg !30971
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !30971, !prof !18680

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.e unwind label %bb.d, !dbg !30972, !noalias !30966

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !30973, !range !9897, !noalias !30966, !noundef !279
  %i.i = icmp eq i32 %i.h, 1, !dbg !30973
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !30973

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.z, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !30899

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.a) #13
          to label %common.resume unwind label %bb.g, !dbg !30973, !noalias !30966

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !30954, !noalias !30966
  unreachable, !dbg !30954

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !30974
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !30974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !30973, !noalias !30966
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30975), !dbg !30978
    #dbg_value(ptr %1, !18688, !DIExpression(), !30979)
  %i.l = load i64, ptr %1, align 8, !dbg !30981, !range !563, !alias.scope !30975, !noundef !279
  %i.m = icmp eq i64 %i.l, 0, !dbg !30981
  br i1 %i.m, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !30981

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !30981 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30982), !dbg !30981
    #dbg_value(ptr %i.n, !9901, !DIExpression(), !30985)
  %i.o = load i64, ptr %i.n, align 8, !dbg !30987, !alias.scope !30988, !noundef !279
  %i.p = icmp eq i64 %i.o, 0, !dbg !30987
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !30987

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !30987
  %.val.i.i = load ptr, ptr %i.q, align 8, !dbg !30987, !alias.scope !30988, !noundef !279 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !30987
  %.val1.i.i = load ptr, ptr %i.r, align 8, !dbg !30987, !alias.scope !30988 ; 6 uses
    #dbg_value(ptr poison, !9912, !DIExpression(), !30989)
    #dbg_value(ptr poison, !9922, !DIExpression(), !30991)
  %i.s = icmp eq ptr %.val.i.i, null, !dbg !30993
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.j, !dbg !30993

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr poison, !9933, !DIExpression(), !30994)
    #dbg_value(ptr poison, !9943, !DIExpression(), !30996)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.t = load ptr, ptr %.val1.i.i, align 8, !dbg !30998, !invariant.load !279, !noalias !30988 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null, !dbg !30998
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k, !dbg !30998

bb.k:                                             ; preds = %bb.j
  invoke void %i.t(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !dbg !30998, !noalias !30988

bb.l:                                             ; preds = %bb.k, %bb.j
    #dbg_value(ptr poison, !9952, !DIExpression(), !30999)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31001)
    #dbg_value(ptr %.val1.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31001)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31002)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31004)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31006)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31008)
    #dbg_value(ptr %.val1.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31002)
    #dbg_value(ptr %.val1.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31004)
    #dbg_value(ptr %.val1.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31006)
    #dbg_value(ptr %.val1.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31008)
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !31010
  %i.v = load i64, ptr %i.u, align 8, !dbg !31010, !range !3062, !invariant.load !279, !noalias !30988 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31011)
    #dbg_value(i64 %i.v, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31011)
  %i.w = icmp eq i64 %i.v, 0, !dbg !31012
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.m, !dbg !31012

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !31010
  %i.y = load i64, ptr %i.x, align 8, !dbg !31013, !range !3066, !invariant.load !279, !noalias !30988
    #dbg_value(i64 %i.y, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31011)
    #dbg_value(ptr %.val.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31002)
    #dbg_value(ptr %.val.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31004)
    #dbg_value(ptr %.val.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31006)
    #dbg_value(ptr %.val.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31008)
    #dbg_value(ptr %.val.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31001)
    #dbg_value(ptr poison, !3067, !DIExpression(), !31014)
    #dbg_value(ptr poison, !3079, !DIExpression(), !31016)
    #dbg_value(ptr %.val.i.i, !3075, !DIExpression(), !31014)
    #dbg_value(ptr %.val.i.i, !3084, !DIExpression(), !31016)
    #dbg_value(ptr %.val.i.i, !3088, !DIExpression(), !31018)
    #dbg_value(ptr %.val.i.i, !3097, !DIExpression(), !31020)
    #dbg_value(i64 %i.y, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31014)
    #dbg_value(i64 %i.y, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31016)
    #dbg_value(i64 %i.y, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31018)
    #dbg_value(i64 %i.y, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31020)
    #dbg_value(i64 %i.v, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31014)
    #dbg_value(i64 %i.v, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31016)
    #dbg_value(i64 %i.v, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31018)
    #dbg_value(i64 %i.v, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31020)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #14, !dbg !31022, !noalias !30988
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !31023

bb.n:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !31024)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31026)
    #dbg_value(ptr %.val1.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31026)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31027)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31029)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31031)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31033)
    #dbg_value(ptr %.val1.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31027)
    #dbg_value(ptr %.val1.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31029)
    #dbg_value(ptr %.val1.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31031)
    #dbg_value(ptr %.val1.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31033)
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !31035
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !31035, !range !3062, !invariant.load !279, !noalias !30988 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31036)
    #dbg_value(i64 %i.ab, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31036)
  %i.ac = icmp eq i64 %i.ab, 0, !dbg !31037
  br i1 %i.ac, label %.body, label %bb.o, !dbg !31037

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !31035
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !31038, !range !3066, !invariant.load !279, !noalias !30988
    #dbg_value(i64 %i.ae, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31036)
    #dbg_value(ptr %.val.i.i, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31027)
    #dbg_value(ptr %.val.i.i, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31029)
    #dbg_value(ptr %.val.i.i, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31031)
    #dbg_value(ptr %.val.i.i, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31033)
    #dbg_value(ptr %.val.i.i, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31026)
    #dbg_value(ptr poison, !3067, !DIExpression(), !31039)
    #dbg_value(ptr poison, !3079, !DIExpression(), !31041)
    #dbg_value(ptr %.val.i.i, !3075, !DIExpression(), !31039)
    #dbg_value(ptr %.val.i.i, !3084, !DIExpression(), !31041)
    #dbg_value(ptr %.val.i.i, !3088, !DIExpression(), !31043)
    #dbg_value(ptr %.val.i.i, !3097, !DIExpression(), !31045)
    #dbg_value(i64 %i.ae, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31039)
    #dbg_value(i64 %i.ae, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31041)
    #dbg_value(i64 %i.ae, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31043)
    #dbg_value(i64 %i.ae, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31045)
    #dbg_value(i64 %i.ab, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31039)
    #dbg_value(i64 %i.ab, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31041)
    #dbg_value(i64 %i.ab, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31043)
    #dbg_value(i64 %i.ab, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31045)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #14, !dbg !31047, !noalias !30988
  br label %.body, !dbg !31048

bb.p:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
end_hunk_18
begin_hunk_19_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(ptr poison, !3067, !DIExpression(), !31234)
    #dbg_value(ptr poison, !3079, !DIExpression(), !31236)
    #dbg_value(ptr %i.j, !3075, !DIExpression(), !31234)
    #dbg_value(ptr %i.j, !3084, !DIExpression(), !31236)
    #dbg_value(ptr %i.j, !3088, !DIExpression(), !31238)
    #dbg_value(ptr %i.j, !3097, !DIExpression(), !31240)
    #dbg_value(i64 %i.x, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31234)
    #dbg_value(i64 %i.x, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31236)
    #dbg_value(i64 %i.x, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31238)
    #dbg_value(i64 %i.x, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31240)
    #dbg_value(i64 %i.u, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31234)
    #dbg_value(i64 %i.u, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31236)
    #dbg_value(i64 %i.u, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31238)
    #dbg_value(i64 %i.u, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31240)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !31242
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !31243

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !31193

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !30871, !DIExpression(), !31244)
    #dbg_value(ptr %0, !30873, !DIExpression(), !31246)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !31248
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !31249

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !30881, !DIExpression(DW_OP_deref), !31250)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !31252
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !31253

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.l, %bb.m
  ret void, !dbg !31254

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !31121, !DIExpression(), !31124)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1456, !dbg !31255
  call void @_RNvMs6_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef), !dbg !31256
  br label %bb.l, !dbg !31257
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !31258 {
bb.a:
  %i.a = alloca [1408 x i8], align 8              ; 4 uses
  %i.b = alloca [1408 x i8], align 8              ; 7 uses
  %i.c = alloca [1408 x i8], align 8              ; 4 uses
  %i.d = alloca [1408 x i8], align 8              ; 7 uses
  %i.e = alloca [1408 x i8], align 8              ; 7 uses
  %i.f = alloca [1408 x i8], align 8              ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
    #dbg_value(ptr %0, !31261, !DIExpression(), !31262)
    #dbg_value(ptr poison, !31263, !DIExpression(), !31280)
    #dbg_value(ptr poison, !31282, !DIExpression(), !31285)
    #dbg_value(ptr poison, !31282, !DIExpression(), !31287)
    #dbg_value(ptr poison, !31282, !DIExpression(), !31289)
    #dbg_declare(ptr %i.h, !31272, !DIExpression(), !31291)
  %i.i = tail call noundef i8 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0), !dbg !31292
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit
    i8 3, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCskigd7sy4fqX_10quinn_perf.exit.thread10
  ], !dbg !31293

default.unreachable:                              ; preds = %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11poll_futureNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !31270, !DIExpression(), !31294)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !31295
    #dbg_value(ptr poison, !31296, !DIExpression(), !31301)
    #dbg_value(ptr @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task5waker12WAKER_VTABLE, !31299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31303)
    #dbg_value(ptr %0, !31299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31303)
  store ptr @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8, !dbg !31304
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !31304
  store ptr %0, ptr %i.j, align 8, !dbg !31304
    #dbg_value(ptr %i.h, !31274, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31305)
    #dbg_value(ptr %i.h, !31306, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31331)
    #dbg_value(ptr %i.h, !31337, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31370)
    #dbg_value(ptr %i.h, !31351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31371)
    #dbg_value(ptr %i.h, !31358, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31372)
    #dbg_value(ptr %i.h, !31274, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31305)
    #dbg_value(ptr %i.h, !31306, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !31331)
    #dbg_value(ptr %i.h, !31337, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !31370)
    #dbg_value(ptr %i.h, !31351, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !31371)
    #dbg_value(ptr %i.h, !31358, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31372)
    #dbg_value(ptr null, !31274, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !31305)
    #dbg_value(ptr null, !31306, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !31331)
    #dbg_value(ptr null, !31337, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !31370)
    #dbg_value(ptr null, !31351, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !31371)
    #dbg_value(ptr null, !31358, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !31372)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !31373 ; 6 uses
    #dbg_value(ptr poison, !31374, !DIExpression(), !31400)
    #dbg_value(ptr poison, !31414, !DIExpression(), !31432)
    #dbg_value(ptr poison, !31433, !DIExpression(), !31441)
    #dbg_declare(ptr poison, !31338, !DIExpression(DW_OP_LLVM_fragment, 128, 192), !31443)
    #dbg_value(ptr poison, !31444, !DIExpression(), !31451)
    #dbg_value(ptr poison, !31458, !DIExpression(), !31462)
    #dbg_value(ptr poison, !31463, !DIExpression(), !31471)
    #dbg_value(ptr poison, !31473, !DIExpression(), !31476)
    #dbg_value(ptr poison, !31480, !DIExpression(), !31482)
    #dbg_value(ptr %i.k, !31357, !DIExpression(), !31372)
    #dbg_value(ptr %i.k, !31351, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31371)
    #dbg_value(ptr %i.k, !31337, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31370)
    #dbg_value(ptr %i.k, !31306, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31331)
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !31483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !31489, !noalias !31514
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8, !dbg !31521
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !31521
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8, !dbg !31521
    #dbg_value(ptr %i.k, !31338, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31527)
    #dbg_value(ptr %i.h, !31338, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31527)
    #dbg_declare(ptr poison, !31508, !DIExpression(DW_OP_LLVM_fragment, 64, 256), !31528)
    #dbg_declare(ptr poison, !31459, !DIExpression(DW_OP_LLVM_fragment, 64, 256), !31529)
    #dbg_value(ptr undef, !31458, !DIExpression(), !31462)
    #dbg_value(ptr undef, !31444, !DIExpression(), !31451)
    #dbg_value(ptr %i.k, !31459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31530)
    #dbg_value(ptr %i.k, !31508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31531)
  store ptr %i.h, ptr %i.g, align 8, !dbg !31483, !noalias !31532
    #dbg_declare(ptr poison, !31496, !DIExpression(), !31533)
    #dbg_declare(ptr poison, !31495, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 256), !31534)
    #dbg_declare(ptr poison, !31510, !DIExpression(), !31535)
    #dbg_declare(ptr poison, !31509, !DIExpression(), !31535)
    #dbg_value(ptr poison, !31495, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !31536)
    #dbg_value(ptr %i.k, !31497, !DIExpression(), !31537)
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !dbg !31538, !noalias !31514

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
    #dbg_value(ptr poison, !31539, !DIExpression(), !31547)
    #dbg_value(ptr poison, !31549, !DIExpression(), !31552)
    #dbg_value(ptr %i.k, !31554, !DIExpression(), !31557)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !31559, !noalias !31514
  store i32 2, ptr %i.f, align 8, !dbg !31559, !noalias !31514
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1408) %i.f)
          to label %.body.i.i unwind label %bb.d, !dbg !31560, !noalias !31514

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !31561, !noalias !31514
  unreachable, !dbg !31561

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !31562, !noalias !31514
  %i.o = extractvalue { ptr, i32 } %i.m, 0, !dbg !31563
    #dbg_value(ptr undef, !31463, !DIExpression(), !31471)
    #dbg_value(ptr %i.o, !31468, !DIExpression(), !31471)
  %i.p = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !dbg !31564, !noalias !31532 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !31565, !noalias !31532
  unreachable, !dbg !31565

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !31566, !noalias !31514
    #dbg_value(ptr %i.h, !31338, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31527)
    #dbg_value(!DIArgList(i64 0, i1 %i.l), !31338, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !31527)
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64, !dbg !31563
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr, !dbg !31563
    #dbg_value(ptr null, !31359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31567)
    #dbg_value(ptr %i.r, !31359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31567)
  br label %bb.h, !dbg !31568

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0, !dbg !31564 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1, !dbg !31564 ; 2 uses
    #dbg_value(ptr %i.t, !31338, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31527)
    #dbg_value(ptr %i.s, !31338, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31527)
    #dbg_value(ptr %i.s, !31359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31567)
    #dbg_value(ptr %i.t, !31359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31567)
  %.not.i.i = icmp eq ptr %i.s, null, !dbg !31569
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !31568, !prof !19410

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.s, !31365, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31570)
    #dbg_value(ptr %i.t, !31365, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31570)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !31571
  %i.v = load i64, ptr %i.u, align 8, !dbg !31571, !range !19413, !noalias !31532, !noundef !279
    #dbg_value(i64 %i.v, !31361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31572)
    #dbg_value(ptr %i.s, !31361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31572)
    #dbg_value(ptr %i.t, !31361, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !31572)
  br label %bb.i, !dbg !31573

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64, !dbg !31569
  %i.y = trunc i64 %i.x to i1, !dbg !31569
  br i1 %i.y, label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11poll_futureNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit.i, label %bb.i, !dbg !31568

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ], !dbg !31567
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ], !dbg !31567
    #dbg_value(ptr %i.z, !31361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31572)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !31361, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !31572)
    #dbg_value(i64 %.sroa.06.0.i.i, !31361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31572)
    #dbg_value(ptr %i.k, !31430, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31574)
    #dbg_value(ptr %i.k, !31423, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31575)
    #dbg_value(i64 %.sroa.06.0.i.i, !31430, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31574)
    #dbg_value(i64 %.sroa.06.0.i.i, !31423, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31575)
    #dbg_value(ptr %i.z, !31423, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !31575)
    #dbg_value(ptr %i.z, !31430, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !31574)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !31423, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !31575)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !31430, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !31574)
    #dbg_value(ptr %i.k, !31424, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31576)
    #dbg_value(i64 %.sroa.06.0.i.i, !31424, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31576)
    #dbg_value(ptr %i.z, !31424, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !31576)
    #dbg_value(ptr %.sroa.6.sroa.5.0.i.i, !31424, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !31576)
    #dbg_declare(ptr poison, !31577, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !31586)
    #dbg_declare(ptr poison, !31415, !DIExpression(DW_OP_LLVM_fragment, 64, 192), !31588)
    #dbg_value(ptr undef, !31414, !DIExpression(), !31432)
    #dbg_value(ptr undef, !31374, !DIExpression(), !31400)
    #dbg_value(ptr %i.k, !31415, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31589)
    #dbg_value(ptr %i.k, !31577, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31590)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !31591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !31591, !noalias !31607
  store i64 %.sroa.06.0.i.i, ptr %i.aa, align 8, !dbg !31612, !noalias !31532
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !31612
  store ptr %i.z, ptr %.sroa.10.8..sroa_idx.i.i, align 8, !dbg !31612, !noalias !31532
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !31612
  store ptr %.sroa.6.sroa.5.0.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i, align 8, !dbg !31612, !noalias !31532
    #dbg_declare(ptr poison, !31605, !DIExpression(), !31618)
    #dbg_declare(ptr poison, !31604, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 192), !31619)
    #dbg_declare(ptr poison, !31583, !DIExpression(), !31620)
    #dbg_declare(ptr poison, !31582, !DIExpression(), !31620)
    #dbg_value(ptr poison, !31604, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !31621)
    #dbg_declare(ptr poison, !31598, !DIExpression(), !31622)
    #dbg_value(ptr %i.k, !31597, !DIExpression(), !31623)
  store i32 1, ptr %i.e, align 8, !dbg !31591, !noalias !31607
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1408) %i.e)
          to label %.thread67.i.i unwind label %bb.j, !dbg !31624, !noalias !31532

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null, !dbg !31625
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0, !dbg !31625
    #dbg_value(ptr undef, !31433, !DIExpression(), !31441)
    #dbg_value(ptr %i.ac, !31438, !DIExpression(), !31441)
  %i.ad = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ac)
          to label %bb.l unwind label %bb.k, !dbg !31626, !noalias !31532 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !31627, !noalias !31532
  unreachable, !dbg !31627

.thread67.i.i:                                    ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !31628, !noalias !31607
    #dbg_value(i64 %.sroa.06.0.i.i, !31424, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31576)
    #dbg_value(ptr %i.k, !31424, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31576)
    #dbg_value(ptr null, !31367, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31629)
    #dbg_value(ptr undef, !31367, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31629)
    #dbg_value(ptr undef, !31480, !DIExpression(), !31482)
    #dbg_value(ptr undef, !31473, !DIExpression(), !31476)
  br label %bb.x, !dbg !31630

bb.l:                                             ; preds = %bb.j
  %i.af = extractvalue { ptr, ptr } %i.ad, 0, !dbg !31626 ; 4 uses
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1, !dbg !31626 ; 6 uses
    #dbg_value(ptr %i.ag, !31424, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31576)
    #dbg_value(ptr %i.af, !31424, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31576)
    #dbg_value(ptr %i.af, !31367, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31629)
    #dbg_value(ptr %i.ag, !31367, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31629)
    #dbg_value(ptr undef, !31480, !DIExpression(), !31482)
    #dbg_value(ptr undef, !31473, !DIExpression(), !31476)
  %.not34.i.i = icmp eq ptr %i.af, null, !dbg !31631
  br i1 %.not34.i.i, label %bb.x, label %bb.m, !dbg !31630

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr poison, !18939, !DIExpression(), !31632)
    #dbg_value(ptr poison, !9943, !DIExpression(), !31634)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !31636, !invariant.load !279, !noalias !31532 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null, !dbg !31636
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n, !dbg !31636

bb.n:                                             ; preds = %bb.m
  invoke void %i.ah(ptr noundef nonnull %i.af)
          to label %bb.o unwind label %bb.q, !dbg !31636, !noalias !31532

bb.o:                                             ; preds = %bb.n, %bb.m
    #dbg_value(ptr poison, !9952, !DIExpression(), !31637)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31639)
    #dbg_value(ptr %i.ag, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31639)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31640)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31642)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31644)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31646)
    #dbg_value(ptr %i.ag, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31640)
    #dbg_value(ptr %i.ag, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31642)
    #dbg_value(ptr %i.ag, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31644)
    #dbg_value(ptr %i.ag, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31646)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !31648
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !31648, !range !3062, !invariant.load !279, !noalias !31532 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31649)
    #dbg_value(i64 %i.aj, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31649)
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !31650
  br i1 %i.ak, label %bb.x, label %bb.p, !dbg !31650

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !31648
  %i.am = load i64, ptr %i.al, align 8, !dbg !31651, !range !3066, !invariant.load !279, !noalias !31532
    #dbg_value(i64 %i.am, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31649)
    #dbg_value(ptr %i.af, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31640)
    #dbg_value(ptr %i.af, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31642)
    #dbg_value(ptr %i.af, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31644)
    #dbg_value(ptr %i.af, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31646)
    #dbg_value(ptr %i.af, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31639)
    #dbg_value(ptr poison, !3067, !DIExpression(), !31652)
    #dbg_value(ptr poison, !3079, !DIExpression(), !31654)
    #dbg_value(ptr %i.af, !3075, !DIExpression(), !31652)
    #dbg_value(ptr %i.af, !3084, !DIExpression(), !31654)
    #dbg_value(ptr %i.af, !3088, !DIExpression(), !31656)
    #dbg_value(ptr %i.af, !3097, !DIExpression(), !31658)
    #dbg_value(i64 %i.am, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31652)
    #dbg_value(i64 %i.am, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31654)
    #dbg_value(i64 %i.am, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31656)
    #dbg_value(i64 %i.am, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31658)
    #dbg_value(i64 %i.aj, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31652)
    #dbg_value(i64 %i.aj, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31654)
    #dbg_value(i64 %i.aj, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31656)
    #dbg_value(i64 %i.aj, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31658)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, -9223372036854775808) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #14, !dbg !31660, !noalias !31532
  br label %bb.x, !dbg !31661

bb.q:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !9952, !DIExpression(), !31662)
    #dbg_value(ptr poison, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31664)
    #dbg_value(ptr %i.ag, !9955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31664)
    #dbg_value(ptr poison, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31665)
    #dbg_value(ptr poison, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31667)
    #dbg_value(ptr poison, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31669)
    #dbg_value(ptr poison, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31671)
    #dbg_value(ptr %i.ag, !9977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31665)
    #dbg_value(ptr %i.ag, !9988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31667)
    #dbg_value(ptr %i.ag, !9995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31669)
    #dbg_value(ptr %i.ag, !10005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31671)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !31673
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !31673, !range !3062, !invariant.load !279, !noalias !31532 ; 2 uses
    #dbg_value(i64 poison, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31674)
    #dbg_value(i64 %i.ap, !9971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31674)
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !31675
  br i1 %i.aq, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i, label %bb.r, !dbg !31675

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !31673
  %i.as = load i64, ptr %i.ar, align 8, !dbg !31676, !range !3066, !invariant.load !279, !noalias !31532
    #dbg_value(i64 %i.as, !9971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31674)
    #dbg_value(ptr %i.af, !9977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31665)
    #dbg_value(ptr %i.af, !9988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31667)
    #dbg_value(ptr %i.af, !9995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31669)
    #dbg_value(ptr %i.af, !10005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31671)
    #dbg_value(ptr %i.af, !9955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31664)
    #dbg_value(ptr poison, !3067, !DIExpression(), !31677)
    #dbg_value(ptr poison, !3079, !DIExpression(), !31679)
    #dbg_value(ptr %i.af, !3075, !DIExpression(), !31677)
    #dbg_value(ptr %i.af, !3084, !DIExpression(), !31679)
    #dbg_value(ptr %i.af, !3088, !DIExpression(), !31681)
    #dbg_value(ptr %i.af, !3097, !DIExpression(), !31683)
    #dbg_value(i64 %i.as, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31677)
    #dbg_value(i64 %i.as, !3085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31679)
    #dbg_value(i64 %i.as, !3094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31681)
    #dbg_value(i64 %i.as, !3100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31683)
    #dbg_value(i64 %i.ap, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31677)
    #dbg_value(i64 %i.ap, !3085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31679)
    #dbg_value(i64 %i.ap, !3094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31681)
    #dbg_value(i64 %i.ap, !3100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31683)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef range(i64 1, -9223372036854775808) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #14, !dbg !31685, !noalias !31532
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i, !dbg !31686

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i.i.i: ; preds = %bb.r, %bb.q
  resume { ptr, i32 } %i.an, !dbg !31636

bb.s:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !31687 ; 2 uses
    #dbg_value(ptr poison, !31688, !DIExpression(), !31722)
    #dbg_value(ptr %i.at, !31739, !DIExpression(), !31743)
    #dbg_value(ptr %i.at, !31744, !DIExpression(), !31748)
    #dbg_value(ptr %i.at, !31735, !DIExpression(), !31750)
    #dbg_value(ptr %i.at, !31729, !DIExpression(), !31751)
    #dbg_value(ptr %i.at, !31730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31752)
    #dbg_value(ptr undef, !31753, !DIExpression(), !31760)
    #dbg_value(ptr %i.at, !31758, !DIExpression(), !31762)
    #dbg_value(ptr %i.at, !31763, !DIExpression(), !31772)
    #dbg_declare(ptr poison, !31769, !DIExpression(), !31774)
    #dbg_declare(ptr poison, !31768, !DIExpression(), !31774)
    #dbg_value(ptr %i.at, !31775, !DIExpression(), !31783)
    #dbg_declare(ptr poison, !31780, !DIExpression(), !31785)
    #dbg_value(ptr poison, !31786, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !31792)
end_hunk_19
