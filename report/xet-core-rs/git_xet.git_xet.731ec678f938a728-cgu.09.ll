Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet.git_xet.731ec678f938a728-cgu.09?download=true
inline.NumInlined: 1013
inline.NumDeleted: 489
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecTyTmmEEENtNtCs31YAwBA1AlL_19xet_core_structures5error9CoreErrorEENtNtNtB19_6future6future6Future4pollCs9SMuO7kbZ2K_7git_xet:bb.a
  %.sroa.03.011.i33.off8 = phi i8 [ %i.k, %bb.g ], [ 0, %.noexc ]
  %.sroa.03.011.i33.off16 = phi i8 [ %.sroa.4.0.i.i.i, %bb.g ], [ 0, %.noexc ]
  store i8 %.sroa.03.011.i33.off8, ptr %i.b, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i33.off16, ptr %i.r, align 1
  %i.s = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !nonnull !12, !align !14, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !12, !align !14, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !12, !noundef !12
  invoke void %i.x(ptr noundef nonnull %i.s, ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %.thread31
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %.thread unwind label %bb.m

bb.k:                                             ; preds = %.thread31
  %i.z = load i64, ptr %i.c, align 8, !range !3279, !noundef !12
  %.not = icmp eq i64 %i.z, -3
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingECs9SMuO7kbZ2K_7git_xet.exit20, label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingECs9SMuO7kbZ2K_7git_xet.exit20: ; preds = %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc3vec3VecTyTmmEEENtNtCs31YAwBA1AlL_19xet_core_structures5error9CoreErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.b, align 1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingECs9SMuO7kbZ2K_7git_xet.exit20

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc3vec3VecTyTmmEEENtNtCs31YAwBA1AlL_19xet_core_structures5error9CoreErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.i, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingECs9SMuO7kbZ2K_7git_xet.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.n, %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc3vec3VecTyTmmEEENtNtCs31YAwBA1AlL_19xet_core_structures5error9CoreErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit23: ; preds = %.thread, %bb.n
  resume { ptr, i32 } %.pn27

.thread:                                          ; preds = %bb.j, %.thread28
  %.pn27 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread28 ], [ %i.y, %bb.j ]
  %i.ab = load i64, ptr %i.c, align 8, !range !3279, !alias.scope !3281, !noundef !12
  %.not.i21 = icmp eq i64 %i.ab, -3
  br i1 %.not.i21, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc3vec3VecTyTmmEEENtNtCs31YAwBA1AlL_19xet_core_structures5error9CoreErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit23, label %bb.n

bb.n:                                             ; preds = %.thread
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtCsexYYUdYSQU6_5alloc3vec3VecTyTmmEEENtNtCs31YAwBA1AlL_19xet_core_structures5error9CoreErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc3vec3VecTyTmmEEENtNtCs31YAwBA1AlL_19xet_core_structures5error9CoreErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit23 unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB1N_10processing23deduplication_interface24UploadSessionDataManagerENtNtB1N_5error9DataErrorEENtNtNtB19_6future6future6Future4pollCs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([384 x i8]) align 8 captures(none) dereferenceable(384) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = alloca [384 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i8, ptr %i.e, align 8, !range !33, !noalias !3292, !noundef !12
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.i, !prof !32

_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.i: ; preds = %bb.a
  %i.h = invoke noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE16get_or_init_slowCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8 %i.d)
          to label %.noexc unwind label %.thread28 ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.i
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread31, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i

_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i: ; preds = %.noexc, %bb.a
  %.sroa.0.0.i.i2.i = phi ptr [ %i.h, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 68
  %i.k = load i8, ptr %i.j, align 1, !range !28, !noalias !3293, !noundef !12 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 69 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noalias !3293 ; 4 uses
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCsUrhh0HcRih_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %.thread28

bb.d:                                             ; preds = %bb.b
  %i.o = add i8 %i.n, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i
  %.sroa.33.0.i.i.i = phi i8 [ %i.o, %bb.d ], [ %i.n, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.m, align 1, !noalias !3293
  br label %bb.f

.thread28:                                        ; preds = %bb.f, %bb.c, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.4.0.i.i.i = phi i8 [ %i.n, %bb.e ], [ 0, %bb.c ]
  %.sroa.0.0.i.i7.i = phi i1 [ false, %bb.e ], [ true, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i24 0, ptr %i.a, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  invoke void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.p)
          to label %bb.g unwind label %.thread28

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.sroa.0.0.i.i7.i, label %bb.h, label %.thread31

bb.h:                                             ; preds = %bb.g
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = load i64, ptr %i.c, align 8, !range !36, !alias.scope !3294, !noundef !12
  %.not.i = icmp eq i64 %i.q, -3
  br i1 %.not.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB1y_10processing23deduplication_interface24UploadSessionDataManagerENtNtB1y_5error9DataErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB18_10processing23deduplication_interface24UploadSessionDataManagerENtNtB18_5error9DataErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB1y_10processing23deduplication_interface24UploadSessionDataManagerENtNtB1y_5error9DataErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit

.thread31:                                        ; preds = %.noexc, %bb.g
  %.sroa.03.011.i33.off8 = phi i8 [ %i.k, %bb.g ], [ 0, %.noexc ]
  %.sroa.03.011.i33.off16 = phi i8 [ %.sroa.4.0.i.i.i, %bb.g ], [ 0, %.noexc ]
  store i8 %.sroa.03.011.i33.off8, ptr %i.b, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i33.off16, ptr %i.r, align 1
  %i.s = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !nonnull !12, !align !14, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !12, !align !14, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !12, !noundef !12
  invoke void %i.x(ptr noundef nonnull %i.s, ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %.thread31
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %.thread unwind label %bb.m

bb.k:                                             ; preds = %.thread31
  %i.z = load i64, ptr %i.c, align 8, !range !36, !noundef !12
  %.not = icmp eq i64 %i.z, -3
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingECs9SMuO7kbZ2K_7git_xet.exit20, label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingECs9SMuO7kbZ2K_7git_xet.exit20: ; preds = %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(384) %i.c, i64 384, i1 false)
  call void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB1y_10processing23deduplication_interface24UploadSessionDataManagerENtNtB1y_5error9DataErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.b, align 1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingECs9SMuO7kbZ2K_7git_xet.exit20

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB1y_10processing23deduplication_interface24UploadSessionDataManagerENtNtB1y_5error9DataErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.i, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingECs9SMuO7kbZ2K_7git_xet.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.n, %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB1y_10processing23deduplication_interface24UploadSessionDataManagerENtNtB1y_5error9DataErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit23: ; preds = %.thread, %bb.n
  resume { ptr, i32 } %.pn27

.thread:                                          ; preds = %bb.j, %.thread28
  %.pn27 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread28 ], [ %i.y, %bb.j ]
  %i.ab = load i64, ptr %i.c, align 8, !range !36, !alias.scope !3295, !noundef !12
  %.not.i21 = icmp eq i64 %i.ab, -3
  br i1 %.not.i21, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB1y_10processing23deduplication_interface24UploadSessionDataManagerENtNtB1y_5error9DataErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit23, label %bb.n

bb.n:                                             ; preds = %.thread
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB18_10processing23deduplication_interface24UploadSessionDataManagerENtNtB18_5error9DataErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB1y_10processing23deduplication_interface24UploadSessionDataManagerENtNtB1y_5error9DataErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit23 unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtCs6rZvBWPOMOk_4sha26Sha256NtNtB7_5error9JoinErrorEENtNtNtB19_6future6future6Future4pollCs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 9 uses
  %i.b = alloca [2 x i8], align 1                 ; 7 uses
  %i.c = alloca [112 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i8, ptr %i.e, align 8, !range !33, !noalias !3304, !noundef !12
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.i, !prof !32

_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.i: ; preds = %bb.a
  %i.h = tail call noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE16get_or_init_slowCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8 %i.d) ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread31, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i

_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i: ; preds = %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.i, %bb.a
  %.sroa.0.0.i.i2.i = phi ptr [ %i.h, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 68
  %i.k = load i8, ptr %i.j, align 1, !range !28, !noalias !3305, !noundef !12 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 69 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noalias !3305 ; 4 uses
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtCs6rZvBWPOMOk_4sha26Sha256NtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEB1T_EEECs9SMuO7kbZ2K_7git_xet.exit.critedge, label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtCs6rZvBWPOMOk_4sha26Sha256NtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEB1T_EEECs9SMuO7kbZ2K_7git_xet.exit.critedge: ; preds = %bb.b
  tail call void @_RNvNtNtCsUrhh0HcRih_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i24 0, ptr %i.a, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.p = add i8 %i.n, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i
  %.sroa.33.0.i.i.i = phi i8 [ %i.p, %bb.c ], [ %i.n, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.m, align 1, !noalias !3305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i24 0, ptr %i.a, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.q)
  br label %.thread31.a

.thread31:                                        ; preds = %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %.thread31.a

.thread31.a:                                      ; preds = %bb.d, %.thread31
  %.sroa.03.011.i33.off8 = phi i8 [ 0, %.thread31 ], [ %i.k, %bb.d ]
  %.sroa.03.011.i33.off16 = phi i8 [ 0, %.thread31 ], [ %i.n, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 %.sroa.03.011.i33.off8, ptr %i.b, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i33.off16, ptr %i.r, align 1
  %i.s = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !nonnull !12, !align !14, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !12, !align !14, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !12, !noundef !12
  invoke void %i.x(ptr noundef nonnull %i.s, ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.thread31.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %.thread unwind label %bb.i

bb.f:                                             ; preds = %.thread31.a
  %i.z = load i64, ptr %i.c, align 8, !range !21, !noundef !12
  %.not = icmp eq i64 %i.z, -1
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingECs9SMuO7kbZ2K_7git_xet.exit20, label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingECs9SMuO7kbZ2K_7git_xet.exit20: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false)
  call void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.b, align 1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingECs9SMuO7kbZ2K_7git_xet.exit20

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingECs9SMuO7kbZ2K_7git_xet.exit20, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtCs6rZvBWPOMOk_4sha26Sha256NtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEB1T_EEECs9SMuO7kbZ2K_7git_xet.exit.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.i:                                             ; preds = %bb.j, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtCs6rZvBWPOMOk_4sha26Sha256NtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEB1T_EEECs9SMuO7kbZ2K_7git_xet.exit23: ; preds = %.thread, %bb.j
  resume { ptr, i32 } %i.y

.thread:                                          ; preds = %bb.e
  %.pre = load i64, ptr %i.c, align 8, !range !21, !alias.scope !3306
  %i.ab = icmp eq i64 %.pre, -1
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtCs6rZvBWPOMOk_4sha26Sha256NtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEB1T_EEECs9SMuO7kbZ2K_7git_xet.exit23, label %bb.j

bb.j:                                             ; preds = %.thread
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_NtCs6rZvBWPOMOk_4sha26Sha256NtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEB1t_EECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(112) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtCs6rZvBWPOMOk_4sha26Sha256NtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEB1T_EEECs9SMuO7kbZ2K_7git_xet.exit23 unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format20SerializedXorbObjectNtNtB1M_5error9CoreErrorEENtNtNtB19_6future6future6Future4pollCs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = alloca [88 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i8, ptr %i.e, align 8, !range !33, !noalias !3317, !noundef !12
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.i, !prof !32

_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.i: ; preds = %bb.a
  %i.h = invoke noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE16get_or_init_slowCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8 %i.d)
          to label %.noexc unwind label %.thread28 ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.i
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread31, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i

_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i: ; preds = %.noexc, %bb.a
  %.sroa.0.0.i.i2.i = phi ptr [ %i.h, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 68
  %i.k = load i8, ptr %i.j, align 1, !range !28, !noalias !3318, !noundef !12 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 69 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noalias !3318 ; 4 uses
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCsUrhh0HcRih_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %.thread28

bb.d:                                             ; preds = %bb.b
  %i.o = add i8 %i.n, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i
  %.sroa.33.0.i.i.i = phi i8 [ %i.o, %bb.d ], [ %i.n, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.m, align 1, !noalias !3318
  br label %bb.f

.thread28:                                        ; preds = %bb.f, %bb.c, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.4.0.i.i.i = phi i8 [ %i.n, %bb.e ], [ 0, %bb.c ]
  %.sroa.0.0.i.i7.i = phi i1 [ false, %bb.e ], [ true, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i24 0, ptr %i.a, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  invoke void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.p)
          to label %bb.g unwind label %.thread28

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.sroa.0.0.i.i7.i, label %bb.h, label %.thread31

bb.h:                                             ; preds = %bb.g
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = load i64, ptr %i.c, align 8, !range !3319, !alias.scope !3320, !noundef !12
  %.not.i = icmp eq i64 %i.q, -2
  br i1 %.not.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format20SerializedXorbObjectNtNtB1x_5error9CoreErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_NtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format20SerializedXorbObjectNtNtB17_5error9CoreErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format20SerializedXorbObjectNtNtB1x_5error9CoreErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit

.thread31:                                        ; preds = %.noexc, %bb.g
  %.sroa.03.011.i33.off8 = phi i8 [ %i.k, %bb.g ], [ 0, %.noexc ]
  %.sroa.03.011.i33.off16 = phi i8 [ %.sroa.4.0.i.i.i, %bb.g ], [ 0, %.noexc ]
  store i8 %.sroa.03.011.i33.off8, ptr %i.b, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i33.off16, ptr %i.r, align 1
  %i.s = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !nonnull !12, !align !14, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !12, !align !14, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !12, !noundef !12
  invoke void %i.x(ptr noundef nonnull %i.s, ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %.thread31
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %.thread unwind label %bb.m

bb.k:                                             ; preds = %.thread31
  %i.z = load i64, ptr %i.c, align 8, !range !3319, !noundef !12
  %.not = icmp eq i64 %i.z, -2
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingECs9SMuO7kbZ2K_7git_xet.exit20, label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingECs9SMuO7kbZ2K_7git_xet.exit20: ; preds = %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false)
  call void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format20SerializedXorbObjectNtNtB1x_5error9CoreErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.b, align 1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingECs9SMuO7kbZ2K_7git_xet.exit20

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format20SerializedXorbObjectNtNtB1x_5error9CoreErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.i, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingECs9SMuO7kbZ2K_7git_xet.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.n, %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format20SerializedXorbObjectNtNtB1x_5error9CoreErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit23: ; preds = %.thread, %bb.n
  resume { ptr, i32 } %.pn27

.thread:                                          ; preds = %bb.j, %.thread28
  %.pn27 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread28 ], [ %i.y, %bb.j ]
  %i.ab = load i64, ptr %i.c, align 8, !range !3319, !alias.scope !3321, !noundef !12
  %.not.i21 = icmp eq i64 %i.ab, -2
  br i1 %.not.i21, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format20SerializedXorbObjectNtNtB1x_5error9CoreErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit23, label %bb.n

bb.n:                                             ; preds = %.thread
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_NtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format20SerializedXorbObjectNtNtB17_5error9CoreErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format20SerializedXorbObjectNtNtB1x_5error9CoreErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit23 unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory16ShardMergeResultNtNtB1M_5error9CoreErrorEENtNtNtB19_6future6future6Future4pollCs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = alloca [72 x i8], align 8                ; 10 uses
end_hunk_0
