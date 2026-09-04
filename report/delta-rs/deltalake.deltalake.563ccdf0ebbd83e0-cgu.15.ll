Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.15?download=true
inline.NumInlined: 6795
inline.NumDeleted: 2943
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvXs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEENtNtNtB1a_6future6future6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
  resume { ptr, i32 } %common.resume.op

.thread28:                                        ; preds = %bb.a, %.noexc, %bb.g
  %.sroa.03.011.i30.off8 = phi i8 [ %i.j, %bb.g ], [ 0, %.noexc ], [ 0, %bb.a ]
  %.sroa.03.011.i30.off16 = phi i8 [ %.sroa.4.0.i.i.i, %bb.g ], [ 0, %.noexc ], [ 0, %bb.a ]
  store i8 %.sroa.03.011.i30.off8, ptr %i.b, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i30.off16, ptr %i.af, align 1
  %i.ag = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.ah = load ptr, ptr %2, align 8, !nonnull !23, !align !33, !noundef !23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !23, !align !33, !noundef !23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !23, !noundef !23
  invoke void %i.al(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %.thread28
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCskQDtHcQtBkN_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
          to label %.thread unwind label %bb.u

bb.s:                                             ; preds = %.thread28
  %i.an = load i64, ptr %i.c, align 16, !range !57, !noundef !23
  %.not = icmp eq i64 %i.an, -9223372036854775741
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECs7p2uQeJxui2_9deltalake.exit20, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.b, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECs7p2uQeJxui2_9deltalake.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECs7p2uQeJxui2_9deltalake.exit20: ; preds = %bb.s, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @_RNvXs4_NtNtCskQDtHcQtBkN_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_uNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_uNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.o, %bb.n, %bb.k, %bb.j, %bb.i, %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECs7p2uQeJxui2_9deltalake.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.u:                                             ; preds = %bb.r, %.thread
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.r, %.thread25
  %.pn24 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread25 ], [ %i.am, %bb.r ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_uNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(96) %i.c) #37
          to label %common.resume unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEENtNtNtB1c_6future6future6Future4pollCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 22, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load i8, ptr %i.f, align 8, !range !28, !noalias !9506, !noundef !23
  switch i8 %i.g, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i
    i8 1, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i
    i8 2, label %.thread28
  ], !prof !29

default.unreachable:                              ; preds = %bb.a
  unreachable

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.a
  %i.h = invoke noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.e)
          to label %.noexc unwind label %.thread25 ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread28, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i: ; preds = %.noexc, %bb.a
  %.sroa.0.0.i.i4.i = phi ptr [ %i.h, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 68
  %i.k = load i8, ptr %i.j, align 1, !range !30, !noalias !9507, !noundef !23 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 69 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noalias !9507 ; 4 uses
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCskQDtHcQtBkN_5tokio4task4coop14register_waker(ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %.thread25

bb.d:                                             ; preds = %bb.b
  %i.o = add i8 %i.n, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i
  %.sroa.33.0.i.i.i = phi i8 [ %i.o, %bb.d ], [ %i.n, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.m, align 1, !noalias !9507
  br label %bb.f

.thread25:                                        ; preds = %bb.f, %bb.c, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i
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
          to label %bb.g unwind label %.thread25

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.sroa.0.0.i.i9.i, label %bb.h, label %.thread28

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 22, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_INtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.c)
  br label %bb.l

.thread28:                                        ; preds = %bb.a, %.noexc, %bb.g
  %.sroa.03.011.i30.off8 = phi i8 [ %i.k, %bb.g ], [ 0, %.noexc ], [ 0, %bb.a ]
  %.sroa.03.011.i30.off16 = phi i8 [ %.sroa.4.0.i.i.i, %bb.g ], [ 0, %.noexc ], [ 0, %bb.a ]
  store i8 %.sroa.03.011.i30.off8, ptr %i.b, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i30.off16, ptr %i.r, align 1
  %i.s = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !nonnull !23, !align !33, !noundef !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !23, !align !33, !noundef !23
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !23, !noundef !23
  invoke void %i.x(ptr noundef nonnull %i.s, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %.thread28
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCskQDtHcQtBkN_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
          to label %.thread unwind label %bb.m

bb.j:                                             ; preds = %.thread28
  %i.z = load i64, ptr %i.d, align 8, !range !60, !noundef !23
  %.not = icmp eq i64 %i.z, 22
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECs7p2uQeJxui2_9deltalake.exit20, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.b, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECs7p2uQeJxui2_9deltalake.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECs7p2uQeJxui2_9deltalake.exit20: ; preds = %bb.j, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @_RNvXs4_NtNtCskQDtHcQtBkN_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECs7p2uQeJxui2_9deltalake.exit20, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.i, %.thread
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.n:                                             ; preds = %.thread
  resume { ptr, i32 } %.pn24

.thread:                                          ; preds = %bb.i, %.thread25
  %.pn24 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread25 ], [ %i.y, %bb.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTjIB16_INtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.c) #37
          to label %bb.n unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtCs6Po7BT7Nknu_5alloc5sliceSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB5_16SpecCloneIntoVecBy_NtNtB7_5alloc6GlobalE10clone_intoCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 72057594037927936) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.i.i.i = alloca [88 x i8], align 8      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !23 ; 4 uses
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %..preheader.i_crit_edge, label %bb.b

..preheader.i_crit_edge:                          ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.g = sub nuw i64 %i.e, %1                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !23, !noundef !23 ; 3 uses
  %i.j = getelementptr inbounds nuw [128 x i8], ptr %i.i, i64 %1 ; 2 uses
  store i64 %1, ptr %i.d, align 8
  %i.k = icmp eq i64 %i.e, %1
  br i1 %i.k, label %.preheader.i, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.l = icmp eq i64 %i.n, %i.g
  br i1 %i.l, label %.preheader.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.0.0.i69 = phi i64 [ %i.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs7p2uQeJxui2_9deltalake.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [128 x i8], ptr %i.j, i64 %.sroa.0.0.i69 ; 5 uses
  %i.n = add i64 %.sroa.0.0.i69, 1                ; 4 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.m)
          to label %.body.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.o, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(96) %i.r) #37
          to label %.body.i unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(96) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.g:                                             ; preds = %.lr.ph71
  %i.u = add i64 %.sroa.0.1.i70, 1                ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.g
  br i1 %i.v, label %common.resume, label %.lr.ph71

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
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
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(128) %i.y) #37
          to label %bb.g unwind label %bb.i

common.resume:                                    ; preds = %bb.g, %.body.i, %bb.k, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.k ], [ %i.ao, %bb.p ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %.lr.ph71
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.preheader.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs7p2uQeJxui2_9deltalake.exit.i, %bb.b, %..preheader.i_crit_edge
  %3 = phi ptr [ %.pre, %..preheader.i_crit_edge ], [ %i.i, %bb.b ], [ %i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs7p2uQeJxui2_9deltalake.exit.i ]
  %4 = phi i64 [ %i.e, %..preheader.i_crit_edge ], [ %1, %bb.b ], [ %1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs7p2uQeJxui2_9deltalake.exit.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9521)
  %.not.i2 = icmp eq i64 %4, 0
  br i1 %.not.i2, label %_RNvXs3_NtCsbvkFyIu7lgC_4core5sliceSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB5_13CloneFromSpecBx_E15spec_clone_fromCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.sroa.0.40..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 40
  %.sroa.0.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCs7p2uQeJxui2_9deltalake.exit.i, %.lr.ph.i
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ap, %_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCs7p2uQeJxui2_9deltalake.exit.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %3, i64 %.sroa.0.08.i ; 5 uses
  %i.ab = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.0.08.i ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9523)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !9524, !noalias !9525, !noundef !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  store i64 %i.ad, ptr %i.ae, align 8, !alias.scope !9525, !noalias !9524
  tail call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_from(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ab)
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9527)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9528)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9529
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ag), !noalias !9530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9529
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah)
          to label %bb.m unwind label %bb.l, !noalias !9530

bb.k:                                             ; preds = %bb.n, %bb.l
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.am, %bb.n ], [ %i.ai, %bb.l ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #37
          to label %common.resume unwind label %bb.o, !noalias !9530

bb.l:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.ak = load i8, ptr %i.aj, align 8, !range !30, !alias.scope !9531, !noalias !9532, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9529
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al)
          to label %_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.n, !noalias !9530

bb.n:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.b) #37
          to label %bb.k unwind label %bb.o, !noalias !9530

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !9530
  unreachable

_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.40..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !9533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !9533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !9533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9529
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.af)
          to label %_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.p

bb.p:                                             ; preds = %_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.af, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i.i, i64 88, i1 false), !noalias !9534
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  store i8 %i.ak, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !9535, !noalias !9534
  br label %common.resume

_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.af, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i.i, i64 88, i1 false), !noalias !9534
  %.sroa.7.0..sroa_idx1.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  store i8 %i.ak, ptr %.sroa.7.0..sroa_idx1.i.i.i, align 8, !alias.scope !9535, !noalias !9534
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ap = add nuw nsw i64 %.sroa.0.08.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %4
  br i1 %exitcond.not.i, label %_RNvXs3_NtCsbvkFyIu7lgC_4core5sliceSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB5_13CloneFromSpecBx_E15spec_clone_fromCs7p2uQeJxui2_9deltalake.exit, label %bb.j

_RNvXs3_NtCsbvkFyIu7lgC_4core5sliceSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB5_13CloneFromSpecBx_E15spec_clone_fromCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCs7p2uQeJxui2_9deltalake.exit.i, %.preheader.i
  %i.aq = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %4
  %i.ar = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %1
  tail call void @_RNvXs1_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB9_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB5_10SpecExtendRBU_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBU_EE11spec_extendCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs5_NtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtNtNtB9_5trace4noop10NoopTracerNtB5_16ObjectSafeTracer24build_with_context_boxedCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(272) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs3_NtNtCskFSgV2vI2Ct_13opentelemetry5trace4noopNtB5_10NoopTracerNtNtB7_6tracer6Tracer18build_with_context(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(272) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !9538
  %i.b = tail call noundef align 16 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2417) 64, i64 noundef range(i64 1, 129) 16) #39, !noalias !9538 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtNtCskFSgV2vI2Ct_13opentelemetry5trace4noop8NoopSpanE3newCs7p2uQeJxui2_9deltalake.exit, !prof !27

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 64) #36
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskFSgV2vI2Ct_13opentelemetry5trace4noop8NoopSpanECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.a) #37
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtNtCskFSgV2vI2Ct_13opentelemetry5trace4noop8NoopSpanE3newCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @158, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1a_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2j_5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB1J_5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB1a_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEENtNtNtB1c_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 2 uses
end_hunk_0
