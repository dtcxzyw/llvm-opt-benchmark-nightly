Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/delta_benchmarks-844011e2506a087c.delta_benchmarks.220a0a6f8c333e28-cgu.09?download=true
inline.NumInlined: 4835
inline.NumDeleted: 1728
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEENtNtNtB1a_6future6future6Future4pollCs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !12, !align !13, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !12, !noundef !12
  invoke void %i.v(ptr noundef nonnull %i.q, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %.thread28
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCskQDtHcQtBkN_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
          to label %.thread unwind label %bb.l

bb.i:                                             ; preds = %.thread28
  %i.x = load i64, ptr %i.c, align 8, !range !21, !noundef !12
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECs2VbMhdeEr66_16delta_benchmarks.exit20

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.b, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECs2VbMhdeEr66_16delta_benchmarks.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECs2VbMhdeEr66_16delta_benchmarks.exit20: ; preds = %bb.i, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RNvXs4_NtNtCskQDtHcQtBkN_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECs2VbMhdeEr66_16delta_benchmarks.exit20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_uNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.l:                                             ; preds = %bb.h, %.thread
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.thread:                                          ; preds = %bb.h, %.thread25
  %.pn24 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread25 ], [ %i.w, %bb.h ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_uNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.c) #34
          to label %common.resume unwind label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEENtNtNtB1c_6future6future6Future4pollCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store i64 22, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load i8, ptr %i.f, align 8, !range !15, !noalias !8679, !noundef !12
  switch i8 %i.g, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.i
    i8 1, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.thread2.i
    i8 2, label %.thread31
  ], !prof !19

default.unreachable:                              ; preds = %bb.a
  unreachable

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.a
  %i.h = invoke noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.e)
          to label %.noexc unwind label %.thread28 ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread31, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.thread2.i

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.thread2.i: ; preds = %.noexc, %bb.a
  %.sroa.0.0.i.i4.i = phi ptr [ %i.h, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 68
  %i.k = load i8, ptr %i.j, align 1, !range !17, !noalias !8680, !noundef !12 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 69 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noalias !8680 ; 4 uses
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.thread2.i
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCskQDtHcQtBkN_5tokio4task4coop14register_waker(ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %.thread28

bb.d:                                             ; preds = %bb.b
  %i.o = add i8 %i.n, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.thread2.i
  %.sroa.33.0.i.i.i = phi i8 [ %i.o, %bb.d ], [ %i.n, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.thread2.i ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.m, align 1, !noalias !8680
  br label %bb.f

.thread28:                                        ; preds = %bb.f, %bb.c, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.4.0.i.i.i = phi i8 [ %i.n, %bb.e ], [ 0, %bb.c ]
  %.sroa.0.0.i.i9.i = phi i1 [ false, %bb.e ], [ true, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i24 0, ptr %i.a, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  invoke void @_RNvXs4_NtNtCskQDtHcQtBkN_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.p)
          to label %bb.g unwind label %.thread28

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.sroa.0.0.i.i9.i, label %bb.h, label %.thread31

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 22, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.r = load i64, ptr %i.d, align 8, !range !8681, !alias.scope !8682, !noundef !12
  %.not.i = icmp eq i64 %i.r, 22
  br i1 %.not.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_INtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultTjIBH_INtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_INtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit

.thread31:                                        ; preds = %bb.a, %.noexc, %bb.g
  %.sroa.03.011.i33.off8 = phi i8 [ %i.k, %bb.g ], [ 0, %.noexc ], [ 0, %bb.a ]
  %.sroa.03.011.i33.off16 = phi i8 [ %.sroa.4.0.i.i.i, %bb.g ], [ 0, %.noexc ], [ 0, %bb.a ]
  store i8 %.sroa.03.011.i33.off8, ptr %i.b, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i33.off16, ptr %i.s, align 1
  %i.t = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.u = load ptr, ptr %2, align 8, !nonnull !12, !align !13, !noundef !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !12, !align !13, !noundef !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !12, !noundef !12
  invoke void %i.y(ptr noundef nonnull %i.t, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %.thread31
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCskQDtHcQtBkN_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
          to label %.thread unwind label %bb.m

bb.k:                                             ; preds = %.thread31
  %i.aa = load i64, ptr %i.d, align 8, !range !8681, !noundef !12
  %.not = icmp eq i64 %i.aa, 22
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECs2VbMhdeEr66_16delta_benchmarks.exit20, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.b, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECs2VbMhdeEr66_16delta_benchmarks.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECs2VbMhdeEr66_16delta_benchmarks.exit20: ; preds = %bb.k, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @_RNvXs4_NtNtCskQDtHcQtBkN_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_INtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_INtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.i, %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECs2VbMhdeEr66_16delta_benchmarks.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.n, %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_INtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit23: ; preds = %.thread, %bb.n
  resume { ptr, i32 } %.pn27

.thread:                                          ; preds = %bb.j, %.thread28
  %.pn27 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread28 ], [ %i.z, %bb.j ]
  %i.ac = load i64, ptr %i.d, align 8, !range !8681, !alias.scope !8683, !noundef !12
  %.not.i21 = icmp eq i64 %i.ac, 22
  br i1 %.not.i21, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_INtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit23, label %bb.n

bb.n:                                             ; preds = %.thread
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultTjIBH_INtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_INtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit23 unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtCs6Po7BT7Nknu_5alloc5sliceSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB5_16SpecCloneIntoVecBy_NtNtB7_5alloc6GlobalE10clone_intoCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 72057594037927936) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.i.i.i = alloca [88 x i8], align 8      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !12 ; 4 uses
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %..preheader.i_crit_edge, label %bb.b

..preheader.i_crit_edge:                          ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.g = sub nuw i64 %i.e, %1                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.j = getelementptr inbounds nuw [128 x i8], ptr %i.i, i64 %1 ; 2 uses
  store i64 %1, ptr %i.d, align 8
  %i.k = icmp eq i64 %i.e, %1
  br i1 %i.k, label %.preheader.i, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.l = icmp eq i64 %i.n, %i.g
  br i1 %i.l, label %.preheader.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.sroa.0.0.i69 = phi i64 [ %i.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [128 x i8], ptr %i.j, i64 %.sroa.0.0.i69 ; 5 uses
  %i.n = add i64 %.sroa.0.0.i69, 1                ; 4 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.m)
          to label %.body.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.o, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(96) %i.r) #34
          to label %.body.i unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(96) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.g:                                             ; preds = %.lr.ph71
  %i.u = add i64 %.sroa.0.1.i70, 1                ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.g
  br i1 %i.v, label %common.resume, label %.lr.ph71

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.w, %bb.h ], [ %eh.lpad-body.i.i, %.body.i.i ] ; 2 uses
  %i.x = icmp eq i64 %i.n, %i.g
  br i1 %i.x, label %common.resume, label %.lr.ph71

.lr.ph71:                                         ; preds = %.body.i, %bb.g
  %.sroa.0.1.i70 = phi i64 [ %i.u, %bb.g ], [ %i.n, %.body.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.j, i64 %.sroa.0.1.i70
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(128) %i.y) #34
          to label %bb.g unwind label %bb.i

common.resume:                                    ; preds = %bb.g, %.body.i, %bb.k, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.k ], [ %i.ao, %bb.p ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %.lr.ph71
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.preheader.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.b, %..preheader.i_crit_edge
  %3 = phi ptr [ %.pre, %..preheader.i_crit_edge ], [ %i.i, %bb.b ], [ %i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit.i ]
  %4 = phi i64 [ %i.e, %..preheader.i_crit_edge ], [ %1, %bb.b ], [ %1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8697)
  %.not.i2 = icmp eq i64 %4, 0
  br i1 %.not.i2, label %_RNvXs3_NtCsbvkFyIu7lgC_4core5sliceSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB5_13CloneFromSpecBx_E15spec_clone_fromCs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.sroa.0.40..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 40
  %.sroa.0.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCs2VbMhdeEr66_16delta_benchmarks.exit.i, %.lr.ph.i
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ap, %_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCs2VbMhdeEr66_16delta_benchmarks.exit.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %3, i64 %.sroa.0.08.i ; 5 uses
  %i.ab = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.0.08.i ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8699)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !8700, !noundef !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  store i64 %i.ad, ptr %i.ae, align 8, !alias.scope !8701
  tail call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_from(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ab)
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8703)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8704)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8705
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ag), !noalias !8706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8705
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah)
          to label %bb.m unwind label %bb.l, !noalias !8706

bb.k:                                             ; preds = %bb.n, %bb.l
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.am, %bb.n ], [ %i.ai, %bb.l ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #34
          to label %common.resume unwind label %bb.o, !noalias !8706

bb.l:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.ak = load i8, ptr %i.aj, align 8, !range !17, !alias.scope !8707, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8705
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al)
          to label %_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.n, !noalias !8706

bb.n:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16) %i.b) #34
          to label %bb.k unwind label %bb.o, !noalias !8706

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !8706
  unreachable

_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.40..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !8708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8705
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !8708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !8708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8705
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.af)
          to label %_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.p

bb.p:                                             ; preds = %_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.af, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i.i, i64 88, i1 false), !noalias !8709
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  store i8 %i.ak, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !8710
  br label %common.resume

_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.af, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i.i, i64 88, i1 false), !noalias !8709
  %.sroa.7.0..sroa_idx1.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  store i8 %i.ak, ptr %.sroa.7.0..sroa_idx1.i.i.i, align 8, !alias.scope !8710
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ap = add nuw nsw i64 %.sroa.0.08.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %4
  br i1 %exitcond.not.i, label %_RNvXs3_NtCsbvkFyIu7lgC_4core5sliceSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB5_13CloneFromSpecBx_E15spec_clone_fromCs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.j

_RNvXs3_NtCsbvkFyIu7lgC_4core5sliceSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB5_13CloneFromSpecBx_E15spec_clone_fromCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCs2VbMhdeEr66_16delta_benchmarks.exit.i, %.preheader.i
  %i.aq = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %4
  %i.ar = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %1
  tail call void @_RNvXs1_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB9_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB5_10SpecExtendRBU_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBU_EE11spec_extendCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema5errorNtB5_10ArrowErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = load i64, ptr %0, align 8, !range !73, !noundef !12 ; 3 uses
  %i.s = icmp ne i64 %i.r, -9223372036854775796
  tail call void @llvm.assume(i1 %i.s)
  %i.t = xor i64 %i.r, -9223372036854775808
  %i.u = icmp slt i64 %i.r, 0
  %i.v = select i1 %i.u, i64 %i.t, i64 12
  switch i64 %i.v, label %bb.b [
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
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.q, align 8
  %i.x = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @315, i64 noundef 17, ptr noundef nonnull %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @297)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.w

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.p, align 8
  %i.z = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @316, i64 noundef 13, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @310)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.o, align 8
  %i.ab = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 9, ptr noundef nonnull %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @297)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.w

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.n, align 8
  %i.ad = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @318, i64 noundef 11, ptr noundef nonnull %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @297)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.w

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.m, align 8
  %i.af = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @283, i64 noundef 10, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @297)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.w

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.l, align 8
  %i.ah = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @319, i64 noundef 11, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @297)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.w

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.k, align 8
  %i.aj = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @320, i64 noundef 12, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @297)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.w

bb.j:                                             ; preds = %bb.a
  %i.ak = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @321, i64 noundef 12)
  br label %bb.w

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.j, align 8
  %i.am = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 18, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @297)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.w

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.i, align 8
  %i.ao = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @323, i64 noundef 8, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @297)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.w

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.h, align 8
  %i.aq = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @324, i64 noundef 9, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @297)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.w

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.g, align 8
  %i.as = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @325, i64 noundef 9, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @297)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.w

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.at, ptr %i.f, align 8
  %i.au = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @327, i64 noundef 7, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @232, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @326)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.w

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.e, align 8
  %i.aw = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 8, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @297)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.w

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.d, align 8
  %i.ay = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @329, i64 noundef 20, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @297)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.c, align 8
  %i.ba = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @330, i64 noundef 12, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @297)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.w

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.b, align 8
  %i.bc = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @331, i64 noundef 14, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @297)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.w

bb.t:                                             ; preds = %bb.a
  %i.bd = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @332, i64 noundef 26)
  br label %bb.w

bb.u:                                             ; preds = %bb.a
  %i.be = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @333, i64 noundef 24)
  br label %bb.w

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
