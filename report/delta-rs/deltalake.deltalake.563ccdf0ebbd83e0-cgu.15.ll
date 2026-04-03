begin_hunk_0
  %i.b = alloca [128 x i8], align 16              ; 7 uses
  %i.c = alloca [128 x i8], align 16              ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 7 uses
  %i.e = alloca [3 x i8], align 4                 ; 8 uses
  %i.f = alloca [2 x i8], align 1                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
end_hunk_0
begin_hunk_1
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 69 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !noalias !8382 ; 4 uses
  br i1 %i.n, label %bb.b, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i
  %.not.i.i.i = icmp eq i8 %i.p, 0
end_hunk_1
begin_hunk_2

.critedge:                                        ; preds = %bb.b
  tail call void @_RNvNtNtCskQDtHcQtBkN_5tokio4task4coop14register_waker(ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i24 0, ptr %i.e, align 4
  %3 = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @_RNvXs4_NtNtCskQDtHcQtBkN_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 4, ptr %4, align 16
  br label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.q = add i8 %i.p, -1
  br label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs7p2uQeJxui2_9deltalake.exit

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i
  %.sroa.33.0.i.i.i.a = phi i8 [ %i.q, %bb.c ], [ %i.p, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i ]
  store i8 %.sroa.33.0.i.i.i.a, ptr %i.o, align 1, !noalias !8382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i24 0, ptr %i.e, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @_RNvXs4_NtNtCskQDtHcQtBkN_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs7p2uQeJxui2_9deltalake.exit.thread

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs7p2uQeJxui2_9deltalake.exit, %bb.a, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.03.011.i28.off8 = phi i8 [ %i.m, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs7p2uQeJxui2_9deltalake.exit ], [ 0, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i ], [ 0, %bb.a ]
  %.sroa.03.011.i28.off16 = phi i8 [ %i.p, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs7p2uQeJxui2_9deltalake.exit ], [ 0, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i ], [ 0, %bb.a ]
  store i8 %.sroa.03.011.i28.off8, ptr %i.f, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %.sroa.03.011.i28.off16, ptr %i.s, align 1
end_hunk_2
begin_hunk_3
  call void @_RNvXs4_NtNtCskQDtHcQtBkN_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.f)
  br label %bb.w

bb.w:                                             ; preds = %_RNCNvMsa_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB7_2RxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB10_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1X_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB9_7bounded9SemaphoreE4recv0Cs7p2uQeJxui2_9deltalake.exit, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

end_hunk_3
