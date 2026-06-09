inline.NumInlined: 5997
inline.NumDeleted: 1809
begin_hunk_0_@_RINvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazy7destroyINtNtCsbvkFyIu7lgC_4core4cell7RefCellINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5stack12IdValueStackNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEEECs7p2uQeJxui2_9deltalake:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !75, !noundef !19
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsbvkFyIu7lgC_4core4cell7RefCellINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5stack12IdValueStackNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEEE0ECs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5stack7IdValueNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5stack12IdValueStackNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5stack7IdValueNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5stack12IdValueStackNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5stack7IdValueNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsbvkFyIu7lgC_4core4cell7RefCellINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5stack12IdValueStackNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEEE0ECs7p2uQeJxui2_9deltalake.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5stack12IdValueStackNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  invoke fastcc void @_RNvXNvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop() #52
          to label %.noexc1.i unwind label %bb.f

.noexc1.i:                                        ; preds = %.body.i
  unreachable

bb.f:                                             ; preds = %.body.i
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsbvkFyIu7lgC_4core4cell7RefCellINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5stack12IdValueStackNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEEE0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5stack12IdValueStackNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazy7destroyNtNtCsdNqyU9N9qTX_12sharded_slab3tid12RegistrationECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !75, !noundef !19
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCsdNqyU9N9qTX_12sharded_slab3tid12RegistrationE0ECs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs7_NtCsdNqyU9N9qTX_12sharded_slab3tidNtB5_12RegistrationNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCsdNqyU9N9qTX_12sharded_slab3tid12RegistrationE0ECs7p2uQeJxui2_9deltalake.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop() #52
          to label %.noexc1.i unwind label %bb.d

.noexc1.i:                                        ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCsdNqyU9N9qTX_12sharded_slab3tid12RegistrationE0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eager7destroyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateECs7p2uQeJxui2_9deltalake(ptr noundef initializes((40, 41)) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 2, ptr %i.a, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5565)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5571)
  %i.c = load i64, ptr %i.b, align 8, !range !644, !alias.scope !5574, !noundef !19 ; 2 uses
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE0ECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5578)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE0ECs7p2uQeJxui2_9deltalake.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5584)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !5587, !nonnull !19, !noundef !19
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !5587
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE0ECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f) #51
          to label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE0ECs7p2uQeJxui2_9deltalake.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop() #52
          to label %.noexc1.i unwind label %bb.f

.noexc1.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eager7destroyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextECs7p2uQeJxui2_9deltalake(ptr noundef initializes((72, 73)) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 2, ptr %i.a, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5594)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5600)
  %i.c = load i64, ptr %i.b, align 8, !range !644, !alias.scope !5603, !noundef !19 ; 2 uses
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE0ECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5604)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5610)
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !5613, !nonnull !19, !noundef !19
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !5613
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE0ECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #51
          to label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE0ECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5617)
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !5620, !nonnull !19, !noundef !19
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !5620
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE0ECs7p2uQeJxui2_9deltalake.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #51
          to label %_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE0ECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop() #52
          to label %.noexc2.i unwind label %bb.h

.noexc2.i:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot11median3_recNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB14_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2n_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, ptr nofree noundef readonly %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 dereferenceable(8) %4) unnamed_addr #4 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot11median3_recNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB14_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2n_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [96 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [96 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot11median3_recNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB14_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2n_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [96 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [96 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot11median3_recNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB14_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2n_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.val17 = load ptr, ptr %i.n, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.0.0, i64 16
  %.sroa.0.0.val18 = load i64, ptr %i.o, align 8, !noundef !19 ; 4 uses
  %i.p = getelementptr i8, ptr %.sroa.04.0, i64 8
  %.sroa.04.0.val19 = load ptr, ptr %i.p, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.04.0, i64 16
  %.sroa.04.0.val20 = load i64, ptr %i.q, align 8, !noundef !19 ; 4 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.04.0.val20, i64 %.sroa.0.0.val18)
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.sroa.04.0.val19, ptr nonnull readonly %.sroa.0.0.val17, i64 %spec.store.select.i.i) ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub i64 %.sroa.04.0.val20, %.sroa.0.0.val18
  %spec.select.i.i = select i1 %i.t, i64 %i.u, i64 %i.s ; 2 uses
  %i.v = getelementptr i8, ptr %.sroa.08.0, i64 8
  %.sroa.08.0.val15 = load ptr, ptr %i.v, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.w = getelementptr i8, ptr %.sroa.08.0, i64 16
  %.sroa.08.0.val16 = load i64, ptr %i.w, align 8, !noundef !19 ; 4 uses
  %spec.store.select.i.i21 = tail call i64 @llvm.umin.i64(i64 %.sroa.08.0.val16, i64 %.sroa.0.0.val18)
  %i.x = tail call i32 @memcmp(ptr nonnull readonly %.sroa.08.0.val15, ptr nonnull readonly %.sroa.0.0.val17, i64 %spec.store.select.i.i21) ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = icmp eq i32 %i.x, 0
  %i.aa = sub i64 %.sroa.08.0.val16, %.sroa.0.0.val18
  %spec.select.i.i22 = select i1 %i.z, i64 %i.aa, i64 %i.y
  %i.ab = xor i64 %spec.select.i.i22, %spec.select.i.i
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot7median3NtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SBZ_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2h_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select.i.i23 = tail call i64 @llvm.umin.i64(i64 %.sroa.08.0.val16, i64 %.sroa.04.0.val20)
  %i.ad = tail call i32 @memcmp(ptr nonnull readonly %.sroa.08.0.val15, ptr nonnull readonly %.sroa.04.0.val19, i64 %spec.store.select.i.i23) ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp eq i32 %i.ad, 0
  %i.ag = sub i64 %.sroa.08.0.val16, %.sroa.04.0.val20
  %spec.select.i.i24 = select i1 %i.af, i64 %i.ag, i64 %i.ae
  %i.ah = xor i64 %spec.select.i.i24, %spec.select.i.i
  %i.ai = icmp slt i64 %i.ah, 0
  %..i = select i1 %i.ai, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot7median3NtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SBZ_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2h_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot7median3NtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SBZ_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2h_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB14_16sort_unstable_byNCNCNvNtB16_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, ptr nofree noundef readonly %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 dereferenceable(8) %4) unnamed_addr #4 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB14_16sort_unstable_byNCNCNvNtB16_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB14_16sort_unstable_byNCNCNvNtB16_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB14_16sort_unstable_byNCNCNvNtB16_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.val17 = load ptr, ptr %i.n, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.0.0, i64 16
  %.sroa.0.0.val18 = load i64, ptr %i.o, align 8, !noundef !19 ; 4 uses
  %i.p = getelementptr i8, ptr %.sroa.04.0, i64 8
  %.sroa.04.0.val19 = load ptr, ptr %i.p, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.04.0, i64 16
  %.sroa.04.0.val20 = load i64, ptr %i.q, align 8, !noundef !19 ; 4 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val18, i64 %.sroa.04.0.val20)
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val17, ptr nonnull readonly %.sroa.04.0.val19, i64 %spec.store.select.i.i) ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub i64 %.sroa.0.0.val18, %.sroa.04.0.val20
  %spec.select.i.i = select i1 %i.t, i64 %i.u, i64 %i.s ; 2 uses
  %i.v = getelementptr i8, ptr %.sroa.08.0, i64 8
  %.sroa.08.0.val15 = load ptr, ptr %i.v, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.w = getelementptr i8, ptr %.sroa.08.0, i64 16
  %.sroa.08.0.val16 = load i64, ptr %i.w, align 8, !noundef !19 ; 4 uses
  %spec.store.select.i.i21 = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val18, i64 %.sroa.08.0.val16)
  %i.x = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val17, ptr nonnull readonly %.sroa.08.0.val15, i64 %spec.store.select.i.i21) ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = icmp eq i32 %i.x, 0
  %i.aa = sub i64 %.sroa.0.0.val18, %.sroa.08.0.val16
  %spec.select.i.i22 = select i1 %i.z, i64 %i.aa, i64 %i.y
  %i.ab = xor i64 %spec.select.i.i22, %spec.select.i.i
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot7median3NtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SBZ_16sort_unstable_byNCNCNvNtB11_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select.i.i23 = tail call i64 @llvm.umin.i64(i64 %.sroa.04.0.val20, i64 %.sroa.08.0.val16)
  %i.ad = tail call i32 @memcmp(ptr nonnull readonly %.sroa.04.0.val19, ptr nonnull readonly %.sroa.08.0.val15, i64 %spec.store.select.i.i23) ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp eq i32 %i.ad, 0
  %i.ag = sub i64 %.sroa.04.0.val20, %.sroa.08.0.val16
  %spec.select.i.i24 = select i1 %i.af, i64 %i.ag, i64 %i.ae
  %i.ah = xor i64 %spec.select.i.i24, %spec.select.i.i
  %i.ai = icmp slt i64 %i.ah, 0
  %..i = select i1 %i.ai, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot7median3NtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SBZ_16sort_unstable_byNCNCNvNtB11_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot7median3NtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SBZ_16sort_unstable_byNCNCNvNtB11_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot11median3_recTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB19_5sliceSB14_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB33_8BTreeMapB15_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB46_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB15_B15_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6F_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6F_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 20587884010836554) %3) unnamed_addr #4 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot11median3_recTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB19_5sliceSB14_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB33_8BTreeMapB15_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB46_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB15_B15_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6F_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6F_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot11median3_recTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB19_5sliceSB14_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB33_8BTreeMapB15_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB46_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB15_B15_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6F_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6F_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot11median3_recTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB19_5sliceSB14_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB33_8BTreeMapB15_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB46_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB15_B15_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6F_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6F_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.val17 = load ptr, ptr %i.n, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.0.0, i64 16
  %.sroa.0.0.val18 = load i64, ptr %i.o, align 8, !noundef !19 ; 4 uses
  %i.p = getelementptr i8, ptr %.sroa.04.0, i64 8
  %.sroa.04.0.val19 = load ptr, ptr %i.p, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.04.0, i64 16
  %.sroa.04.0.val20 = load i64, ptr %i.q, align 8, !noundef !19 ; 4 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val18, i64 range(i64 0, -9223372036854775808) %.sroa.04.0.val20)
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val17, ptr nonnull readonly %.sroa.04.0.val19, i64 %spec.store.select.i.i.i.i.i), !alias.scope !5621 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub nsw i64 %.sroa.0.0.val18, %.sroa.04.0.val20
  %spec.select.i.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.s ; 2 uses
  %i.v = getelementptr i8, ptr %.sroa.08.0, i64 8
  %.sroa.08.0.val15 = load ptr, ptr %i.v, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.w = getelementptr i8, ptr %.sroa.08.0, i64 16
  %.sroa.08.0.val16 = load i64, ptr %i.w, align 8, !noundef !19 ; 4 uses
  %spec.store.select.i.i.i.i.i21 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val18, i64 range(i64 0, -9223372036854775808) %.sroa.08.0.val16)
  %i.x = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val17, ptr nonnull readonly %.sroa.08.0.val15, i64 %spec.store.select.i.i.i.i.i21), !alias.scope !5625 ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = icmp eq i32 %i.x, 0
  %i.aa = sub nsw i64 %.sroa.0.0.val18, %.sroa.08.0.val16
  %spec.select.i.i.i.i.i22 = select i1 %i.z, i64 %i.aa, i64 %i.y
  %i.ab = xor i64 %spec.select.i.i.i.i.i22, %spec.select.i.i.i.i.i
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot7median3TNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB14_5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB14_11collections5btree3mapINtB2X_8BTreeMapB10_B1C_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB10_B10_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6y_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6y_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select.i.i.i.i.i23 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.04.0.val20, i64 range(i64 0, -9223372036854775808) %.sroa.08.0.val16)
  %i.ad = tail call i32 @memcmp(ptr nonnull readonly %.sroa.04.0.val19, ptr nonnull readonly %.sroa.08.0.val15, i64 %spec.store.select.i.i.i.i.i23), !alias.scope !5629 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp eq i32 %i.ad, 0
  %i.ag = sub nsw i64 %.sroa.04.0.val20, %.sroa.08.0.val16
  %spec.select.i.i.i.i.i24 = select i1 %i.af, i64 %i.ag, i64 %i.ae
  %i.ah = xor i64 %spec.select.i.i.i.i.i24, %spec.select.i.i.i.i.i
  %i.ai = icmp slt i64 %i.ah, 0
  %..i = select i1 %i.ai, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot7median3TNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB14_5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB14_11collections5btree3mapINtB2X_8BTreeMapB10_B1C_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB10_B10_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6y_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6y_.exit

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot7median3TNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB14_5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB14_11collections5btree3mapINtB2X_8BTreeMapB10_B1C_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB10_B10_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6y_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6y_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot11median3_recTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB19_5sliceSB14_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB33_8BTreeMapB15_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB46_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB15_B15_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6z_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 20587884010836554) %3) unnamed_addr #4 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot11median3_recTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB19_5sliceSB14_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB33_8BTreeMapB15_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB46_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB15_B15_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6z_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot11median3_recTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB19_5sliceSB14_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB33_8BTreeMapB15_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB46_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB15_B15_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6z_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot11median3_recTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB19_5sliceSB14_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB33_8BTreeMapB15_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB46_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB15_B15_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6z_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.val17 = load ptr, ptr %i.n, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.0.0, i64 16
  %.sroa.0.0.val18 = load i64, ptr %i.o, align 8, !noundef !19 ; 4 uses
  %i.p = getelementptr i8, ptr %.sroa.04.0, i64 8
  %.sroa.04.0.val19 = load ptr, ptr %i.p, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.04.0, i64 16
  %.sroa.04.0.val20 = load i64, ptr %i.q, align 8, !noundef !19 ; 4 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val18, i64 range(i64 0, -9223372036854775808) %.sroa.04.0.val20)
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val17, ptr nonnull readonly %.sroa.04.0.val19, i64 %spec.store.select.i.i.i.i.i), !alias.scope !5633 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub nsw i64 %.sroa.0.0.val18, %.sroa.04.0.val20
  %spec.select.i.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.s ; 2 uses
  %i.v = getelementptr i8, ptr %.sroa.08.0, i64 8
  %.sroa.08.0.val15 = load ptr, ptr %i.v, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.w = getelementptr i8, ptr %.sroa.08.0, i64 16
  %.sroa.08.0.val16 = load i64, ptr %i.w, align 8, !noundef !19 ; 4 uses
  %spec.store.select.i.i.i.i.i21 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val18, i64 range(i64 0, -9223372036854775808) %.sroa.08.0.val16)
  %i.x = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val17, ptr nonnull readonly %.sroa.08.0.val15, i64 %spec.store.select.i.i.i.i.i21), !alias.scope !5637 ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = icmp eq i32 %i.x, 0
  %i.aa = sub nsw i64 %.sroa.0.0.val18, %.sroa.08.0.val16
  %spec.select.i.i.i.i.i22 = select i1 %i.z, i64 %i.aa, i64 %i.y
  %i.ab = xor i64 %spec.select.i.i.i.i.i22, %spec.select.i.i.i.i.i
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot7median3TNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB14_5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB14_11collections5btree3mapINtB2X_8BTreeMapB10_B1C_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB10_B10_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6s_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select.i.i.i.i.i23 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.04.0.val20, i64 range(i64 0, -9223372036854775808) %.sroa.08.0.val16)
  %i.ad = tail call i32 @memcmp(ptr nonnull readonly %.sroa.04.0.val19, ptr nonnull readonly %.sroa.08.0.val15, i64 %spec.store.select.i.i.i.i.i23), !alias.scope !5641 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp eq i32 %i.ad, 0
  %i.ag = sub nsw i64 %.sroa.04.0.val20, %.sroa.08.0.val16
  %spec.select.i.i.i.i.i24 = select i1 %i.af, i64 %i.ag, i64 %i.ae
  %i.ah = xor i64 %spec.select.i.i.i.i.i24, %spec.select.i.i.i.i.i
  %i.ai = icmp slt i64 %i.ah, 0
  %..i = select i1 %i.ai, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot7median3TNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB14_5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB14_11collections5btree3mapINtB2X_8BTreeMapB10_B1C_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB10_B10_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6s_.exit

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot7median3TNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB14_5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB14_11collections5btree3mapINtB2X_8BTreeMapB10_B1C_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB10_B10_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6s_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort12sort4_stableNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB19_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2s_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 384)) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %.val16 = load ptr, ptr %i.a, align 8, !nonnull !19, !noundef !19
  %i.b = getelementptr i8, ptr %0, i64 112
  %.val17 = load i64, ptr %i.b, align 8, !noundef !19 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val18 = load ptr, ptr %i.c, align 8, !nonnull !19, !noundef !19
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val19 = load i64, ptr %i.d, align 8, !noundef !19 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.val19, i64 %.val17)
  %i.e = tail call i32 @memcmp(ptr nonnull readonly %.val18, ptr nonnull readonly %.val16, i64 %spec.store.select.i.i) ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = icmp eq i32 %i.e, 0
  %i.h = sub i64 %.val19, %.val17
  %spec.select.i.i = select i1 %i.g, i64 %i.h, i64 %i.f ; 2 uses
  %i.i = icmp sgt i64 %spec.select.i.i, -1
  %i.j = getelementptr i8, ptr %0, i64 296
  %.val12 = load ptr, ptr %i.j, align 8, !nonnull !19, !noundef !19
  %i.k = getelementptr i8, ptr %0, i64 304
  %.val13 = load i64, ptr %i.k, align 8, !noundef !19 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 200
  %.val14 = load ptr, ptr %i.l, align 8, !nonnull !19, !noundef !19
  %i.m = getelementptr i8, ptr %0, i64 208
  %.val15 = load i64, ptr %i.m, align 8, !noundef !19 ; 2 uses
  %spec.store.select.i.i20 = tail call i64 @llvm.umin.i64(i64 %.val15, i64 %.val13)
  %i.n = tail call i32 @memcmp(ptr nonnull readonly %.val14, ptr nonnull readonly %.val12, i64 %spec.store.select.i.i20) ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, 0
  %i.q = sub i64 %.val15, %.val13
  %spec.select.i.i21 = select i1 %i.p, i64 %i.q, i64 %i.o
  %i.r = icmp slt i64 %spec.select.i.i21, 0       ; 2 uses
  %spec.select.i.i.lobit = lshr i64 %spec.select.i.i, 63
  %i.s = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %spec.select.i.i.lobit ; 4 uses
  %i.t = zext i1 %i.i to i64
  %i.u = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.t ; 5 uses
  %i.v = select i1 %i.r, i64 3, i64 2
  %i.w = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.v ; 5 uses
  %i.x = select i1 %i.r, i64 2, i64 3
  %i.y = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.x ; 4 uses
  %i.z = getelementptr i8, ptr %i.w, i64 8
  %.val8 = load ptr, ptr %i.z, align 8, !nonnull !19, !noundef !19
  %i.aa = getelementptr i8, ptr %i.w, i64 16
  %.val9 = load i64, ptr %i.aa, align 8, !noundef !19 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.s, i64 8
  %.val10 = load ptr, ptr %i.ab, align 8, !nonnull !19, !noundef !19
  %i.ac = getelementptr i8, ptr %i.s, i64 16
  %.val11 = load i64, ptr %i.ac, align 8, !noundef !19 ; 2 uses
  %spec.store.select.i.i22 = tail call i64 @llvm.umin.i64(i64 %.val11, i64 %.val9)
  %i.ad = tail call i32 @memcmp(ptr nonnull readonly %.val10, ptr nonnull readonly %.val8, i64 %spec.store.select.i.i22) ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp eq i32 %i.ad, 0
  %i.ag = sub i64 %.val11, %.val9
  %spec.select.i.i23 = select i1 %i.af, i64 %i.ag, i64 %i.ae
  %i.ah = icmp slt i64 %spec.select.i.i23, 0      ; 3 uses
  %i.ai = getelementptr i8, ptr %i.y, i64 8
  %.val4 = load ptr, ptr %i.ai, align 8, !nonnull !19, !noundef !19
  %i.aj = getelementptr i8, ptr %i.y, i64 16
  %.val5 = load i64, ptr %i.aj, align 8, !noundef !19 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.u, i64 8
  %.val6 = load ptr, ptr %i.ak, align 8, !nonnull !19, !noundef !19
  %i.al = getelementptr i8, ptr %i.u, i64 16
  %.val7 = load i64, ptr %i.al, align 8, !noundef !19 ; 2 uses
  %spec.store.select.i.i24 = tail call i64 @llvm.umin.i64(i64 %.val7, i64 %.val5)
  %i.am = tail call i32 @memcmp(ptr nonnull readonly %.val6, ptr nonnull readonly %.val4, i64 %spec.store.select.i.i24) ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp eq i32 %i.am, 0
  %i.ap = sub i64 %.val7, %.val5
  %spec.select.i.i25 = select i1 %i.ao, i64 %i.ap, i64 %i.an
  %i.aq = icmp slt i64 %spec.select.i.i25, 0      ; 3 uses
  %i.ar = select i1 %i.ah, ptr %i.w, ptr %i.s, !unpredictable !19
  %i.as = select i1 %i.aq, ptr %i.u, ptr %i.y, !unpredictable !19
  %i.at = select i1 %i.aq, ptr %i.w, ptr %i.u, !unpredictable !19
  %i.au = select i1 %i.ah, ptr %i.s, ptr %i.at, !unpredictable !19 ; 4 uses
  %i.av = select i1 %i.ah, ptr %i.u, ptr %i.w, !unpredictable !19
  %i.aw = select i1 %i.aq, ptr %i.y, ptr %i.av, !unpredictable !19 ; 4 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %.val = load ptr, ptr %i.ax, align 8, !nonnull !19, !noundef !19
  %i.ay = getelementptr i8, ptr %i.aw, i64 16
  %.val1 = load i64, ptr %i.ay, align 8, !noundef !19 ; 2 uses
  %i.az = getelementptr i8, ptr %i.au, i64 8
  %.val2 = load ptr, ptr %i.az, align 8, !nonnull !19, !noundef !19
  %i.ba = getelementptr i8, ptr %i.au, i64 16
  %.val3 = load i64, ptr %i.ba, align 8, !noundef !19 ; 2 uses
  %spec.store.select.i.i26 = tail call i64 @llvm.umin.i64(i64 %.val3, i64 %.val1)
  %i.bb = tail call i32 @memcmp(ptr nonnull readonly %.val2, ptr nonnull readonly %.val, i64 %spec.store.select.i.i26) ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp eq i32 %i.bb, 0
  %i.be = sub i64 %.val3, %.val1
  %spec.select.i.i27 = select i1 %i.bd, i64 %i.be, i64 %i.bc
  %i.bf = icmp slt i64 %spec.select.i.i27, 0      ; 2 uses
  %i.bg = select i1 %i.bf, ptr %i.aw, ptr %i.au, !unpredictable !19
  %i.bh = select i1 %i.bf, ptr %i.au, ptr %i.aw, !unpredictable !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.ar, i64 96, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bi, ptr noundef nonnull align 8 dereferenceable(96) %i.bg, i64 96, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bj, ptr noundef nonnull align 8 dereferenceable(96) %i.bh, i64 96, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bk, ptr noundef nonnull align 8 dereferenceable(96) %i.as, i64 96, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB19_16sort_unstable_byNCNCNvNtB1b_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 192)) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %.val16 = load ptr, ptr %i.a, align 8, !nonnull !19, !noundef !19
  %i.b = getelementptr i8, ptr %0, i64 64
  %.val17 = load i64, ptr %i.b, align 8, !noundef !19 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val18 = load ptr, ptr %i.c, align 8, !nonnull !19, !noundef !19
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val19 = load i64, ptr %i.d, align 8, !noundef !19 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.val17, i64 %.val19)
  %i.e = tail call i32 @memcmp(ptr nonnull readonly %.val16, ptr nonnull readonly %.val18, i64 %spec.store.select.i.i) ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = icmp eq i32 %i.e, 0
  %i.h = sub i64 %.val17, %.val19
  %spec.select.i.i = select i1 %i.g, i64 %i.h, i64 %i.f ; 2 uses
  %i.i = icmp sgt i64 %spec.select.i.i, -1
  %i.j = getelementptr i8, ptr %0, i64 152
  %.val12 = load ptr, ptr %i.j, align 8, !nonnull !19, !noundef !19
  %i.k = getelementptr i8, ptr %0, i64 160
  %.val13 = load i64, ptr %i.k, align 8, !noundef !19 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 104
  %.val14 = load ptr, ptr %i.l, align 8, !nonnull !19, !noundef !19
  %i.m = getelementptr i8, ptr %0, i64 112
  %.val15 = load i64, ptr %i.m, align 8, !noundef !19 ; 2 uses
  %spec.store.select.i.i20 = tail call i64 @llvm.umin.i64(i64 %.val13, i64 %.val15)
  %i.n = tail call i32 @memcmp(ptr nonnull readonly %.val12, ptr nonnull readonly %.val14, i64 %spec.store.select.i.i20) ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, 0
  %i.q = sub i64 %.val13, %.val15
  %spec.select.i.i21 = select i1 %i.p, i64 %i.q, i64 %i.o
  %i.r = icmp slt i64 %spec.select.i.i21, 0       ; 2 uses
  %spec.select.i.i.lobit = lshr i64 %spec.select.i.i, 63
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %spec.select.i.i.lobit ; 4 uses
  %i.t = zext i1 %i.i to i64
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.t ; 5 uses
  %i.v = select i1 %i.r, i64 3, i64 2
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.v ; 5 uses
  %i.x = select i1 %i.r, i64 2, i64 3
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.x ; 4 uses
  %i.z = getelementptr i8, ptr %i.w, i64 8
  %.val8 = load ptr, ptr %i.z, align 8, !nonnull !19, !noundef !19
  %i.aa = getelementptr i8, ptr %i.w, i64 16
  %.val9 = load i64, ptr %i.aa, align 8, !noundef !19 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.s, i64 8
  %.val10 = load ptr, ptr %i.ab, align 8, !nonnull !19, !noundef !19
  %i.ac = getelementptr i8, ptr %i.s, i64 16
  %.val11 = load i64, ptr %i.ac, align 8, !noundef !19 ; 2 uses
  %spec.store.select.i.i22 = tail call i64 @llvm.umin.i64(i64 %.val9, i64 %.val11)
  %i.ad = tail call i32 @memcmp(ptr nonnull readonly %.val8, ptr nonnull readonly %.val10, i64 %spec.store.select.i.i22) ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp eq i32 %i.ad, 0
  %i.ag = sub i64 %.val9, %.val11
  %spec.select.i.i23 = select i1 %i.af, i64 %i.ag, i64 %i.ae
  %i.ah = icmp slt i64 %spec.select.i.i23, 0      ; 3 uses
  %i.ai = getelementptr i8, ptr %i.y, i64 8
  %.val4 = load ptr, ptr %i.ai, align 8, !nonnull !19, !noundef !19
  %i.aj = getelementptr i8, ptr %i.y, i64 16
  %.val5 = load i64, ptr %i.aj, align 8, !noundef !19 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.u, i64 8
  %.val6 = load ptr, ptr %i.ak, align 8, !nonnull !19, !noundef !19
  %i.al = getelementptr i8, ptr %i.u, i64 16
  %.val7 = load i64, ptr %i.al, align 8, !noundef !19 ; 2 uses
  %spec.store.select.i.i24 = tail call i64 @llvm.umin.i64(i64 %.val5, i64 %.val7)
  %i.am = tail call i32 @memcmp(ptr nonnull readonly %.val4, ptr nonnull readonly %.val6, i64 %spec.store.select.i.i24) ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp eq i32 %i.am, 0
  %i.ap = sub i64 %.val5, %.val7
  %spec.select.i.i25 = select i1 %i.ao, i64 %i.ap, i64 %i.an
  %i.aq = icmp slt i64 %spec.select.i.i25, 0      ; 3 uses
  %i.ar = select i1 %i.ah, ptr %i.w, ptr %i.s, !unpredictable !19
  %i.as = select i1 %i.aq, ptr %i.u, ptr %i.y, !unpredictable !19
  %i.at = select i1 %i.aq, ptr %i.w, ptr %i.u, !unpredictable !19
  %i.au = select i1 %i.ah, ptr %i.s, ptr %i.at, !unpredictable !19 ; 4 uses
  %i.av = select i1 %i.ah, ptr %i.u, ptr %i.w, !unpredictable !19
  %i.aw = select i1 %i.aq, ptr %i.y, ptr %i.av, !unpredictable !19 ; 4 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %.val = load ptr, ptr %i.ax, align 8, !nonnull !19, !noundef !19
  %i.ay = getelementptr i8, ptr %i.aw, i64 16
  %.val1 = load i64, ptr %i.ay, align 8, !noundef !19 ; 2 uses
  %i.az = getelementptr i8, ptr %i.au, i64 8
  %.val2 = load ptr, ptr %i.az, align 8, !nonnull !19, !noundef !19
  %i.ba = getelementptr i8, ptr %i.au, i64 16
  %.val3 = load i64, ptr %i.ba, align 8, !noundef !19 ; 2 uses
  %spec.store.select.i.i26 = tail call i64 @llvm.umin.i64(i64 %.val1, i64 %.val3)
  %i.bb = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %spec.store.select.i.i26) ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp eq i32 %i.bb, 0
  %i.be = sub i64 %.val1, %.val3
  %spec.select.i.i27 = select i1 %i.bd, i64 %i.be, i64 %i.bc
  %i.bf = icmp slt i64 %spec.select.i.i27, 0      ; 2 uses
  %i.bg = select i1 %i.bf, ptr %i.aw, ptr %i.au, !unpredictable !19
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB34_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB47_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB16_B16_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6G_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6G_:bb.a
  %.sroa.017.05.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %i.ar, %.loopexit.1.i ] ; 4 uses
  %.sroa.019.04.i.i = phi ptr [ %i.bw, %.lr.ph.i.i ], [ %i.aq, %.loopexit.1.i ] ; 2 uses
  %i.ax = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.ay = getelementptr i8, ptr %.sroa.011.07.i.i, i64 8
  %.sroa.011.0.val.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !5869, !noalias !5847, !nonnull !19, !noundef !19
  %i.az = getelementptr i8, ptr %.sroa.011.07.i.i, i64 16
  %.sroa.011.0.val24.i.i = load i64, ptr %i.az, align 8, !alias.scope !5869, !noalias !5847, !noundef !19 ; 2 uses
  %i.ba = getelementptr i8, ptr %.sroa.06.08.i.i, i64 8
  %.sroa.06.0.val.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !5869, !noalias !5847, !nonnull !19, !noundef !19
  %i.bb = getelementptr i8, ptr %.sroa.06.08.i.i, i64 16
  %.sroa.06.0.val25.i.i = load i64, ptr %i.bb, align 8, !alias.scope !5869, !noalias !5847, !noundef !19 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.011.0.val24.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.06.0.val25.i.i)
  %i.bc = call i32 @memcmp(ptr nonnull readonly %.sroa.011.0.val.i.i, ptr nonnull readonly %.sroa.06.0.val.i.i, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !5870, !noalias !5874 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp eq i32 %i.bc, 0
  %i.bf = sub nsw i64 %.sroa.011.0.val24.i.i, %.sroa.06.0.val25.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.be, i64 %i.bf, i64 %i.bd ; 2 uses
  %i.bg = icmp sgt i64 %spec.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i23.i.i = select i1 %i.bg, ptr %.sroa.06.08.i.i, ptr %.sroa.011.07.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(56) %..i23.i.i, i64 56, i1 false), !alias.scope !5850, !noalias !5875
  %spec.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i.i, 63
  %i.bh = getelementptr inbounds nuw [56 x i8], ptr %.sroa.011.07.i.i, i64 %spec.select.i.i.i.i.i.lobit.i.i ; 4 uses
  %i.bi = zext i1 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [56 x i8], ptr %.sroa.06.08.i.i, i64 %i.bi ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 56 ; 2 uses
  %i.bl = getelementptr i8, ptr %.sroa.017.05.i.i, i64 8
  %.sroa.017.0.val.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !5869, !noalias !5847, !nonnull !19, !noundef !19
  %i.bm = getelementptr i8, ptr %.sroa.017.05.i.i, i64 16
  %.sroa.017.0.val26.i.i = load i64, ptr %i.bm, align 8, !alias.scope !5869, !noalias !5847, !noundef !19 ; 2 uses
  %i.bn = getelementptr i8, ptr %.sroa.015.06.i.i, i64 8
  %.sroa.015.0.val.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !5869, !noalias !5847, !nonnull !19, !noundef !19
  %i.bo = getelementptr i8, ptr %.sroa.015.06.i.i, i64 16
  %.sroa.015.0.val27.i.i = load i64, ptr %i.bo, align 8, !alias.scope !5869, !noalias !5847, !noundef !19 ; 2 uses
  %spec.store.select.i.i.i.i.i28.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.017.0.val26.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.015.0.val27.i.i)
  %i.bp = call i32 @memcmp(ptr nonnull readonly %.sroa.017.0.val.i.i, ptr nonnull readonly %.sroa.015.0.val.i.i, i64 %spec.store.select.i.i.i.i.i28.i.i), !alias.scope !5879, !noalias !5874 ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp eq i32 %i.bp, 0
  %i.bs = sub nsw i64 %.sroa.017.0.val26.i.i, %.sroa.015.0.val27.i.i
  %spec.select.i.i.i.i.i29.i.i = select i1 %i.br, i64 %i.bs, i64 %i.bq ; 2 uses
  %i.bt = icmp sgt i64 %spec.select.i.i.i.i.i29.i.i, -1 ; 2 uses
  %..i.i.i = select i1 %i.bt, ptr %.sroa.017.05.i.i, ptr %.sroa.015.06.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(56) %..i.i.i, i64 56, i1 false), !alias.scope !5850, !noalias !5883
  %.neg.i.i.i = sext i1 %i.bt to i64
  %i.bu = getelementptr [56 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %spec.select.i.i.i.i.i29.lobit.i.i = ashr i64 %spec.select.i.i.i.i.i29.i.i, 63
  %i.bv = getelementptr [56 x i8], ptr %.sroa.015.06.i.i, i64 %spec.select.i.i.i.i.i29.lobit.i.i ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -56
  %exitcond.not.i.i = icmp eq i64 %i.ax, %i.m
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bx = icmp ult ptr %i.bj, %i.at               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.bx, ptr %i.bj, ptr %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.06.0..sroa.011.0.i.i, i64 56, i1 false), !alias.scope !5850
  %i.by = zext i1 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [56 x i8], ptr %i.bj, i64 %i.by
  %i.ca = xor i1 %i.bx, true
  %i.cb = zext i1 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %i.cb
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.bh, %._crit_edge.i.i ], [ %i.cc, %bb.k ]
  %.sroa.06.1.i.i = phi ptr [ %i.bj, %._crit_edge.i.i ], [ %i.bz, %bb.k ]
  %i.cd = icmp ne ptr %.sroa.06.1.i.i, %i.at
  %i.ce = icmp ne ptr %.sroa.011.1.i.i, %i.au
  %or.cond.i.i = select i1 %i.cd, i1 true, i1 %i.ce, !prof !5709
  br i1 %or.cond.i.i, label %bb.m, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1x_5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB1x_11collections5btree3mapINtB3r_8BTreeMapB1t_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4u_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1t_B1t_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB73_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB73_.exit, !prof !5709

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #50
          to label %.noexc.i unwind label %bb.n, !noalias !5847

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = mul nuw nsw i64 %.sroa.16.0.lcssa, 56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa105, ptr nonnull align 8 %2, i64 %i.cg, i1 false), !alias.scope !5850, !noalias !5887
  resume { ptr, i32 } %i.cf

.lr.ph.i:                                         ; preds = %bb.h, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6J_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6J_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.dc, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6J_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6J_.exit.i ], [ %.sroa.0.0.i, %bb.h ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph.lcssa105, i64 %.sroa.05.08.i ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.05.08.i, 56
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ci, ptr noundef nonnull align 8 dereferenceable(56) %i.ch, i64 56, i1 false), !alias.scope !5850
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %.val11.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !5852, !noalias !5847, !nonnull !19, !noundef !19 ; 3 uses
  %i.ck = getelementptr i8, ptr %i.ci, i64 16
  %.val12.i.i = load i64, ptr %i.ck, align 8, !alias.scope !5852, !noalias !5847, !noundef !19 ; 5 uses
  %i.cl = getelementptr i8, ptr %i.ci, i64 -48
  %.val13.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !5852, !noalias !5847, !nonnull !19, !noundef !19
  %i.cm = getelementptr i8, ptr %i.ci, i64 -40
  %.val14.i.i = load i64, ptr %i.cm, align 8, !alias.scope !5852, !noalias !5847, !noundef !19 ; 2 uses
  %spec.store.select.i.i.i.i.i.i30.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i.i, i64 range(i64 0, -9223372036854775808) %.val14.i.i)
  %i.cn = call i32 @memcmp(ptr nonnull readonly %.val11.i.i, ptr nonnull readonly %.val13.i.i, i64 %spec.store.select.i.i.i.i.i.i30.i), !alias.scope !5853, !noalias !5847 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp eq i32 %i.cn, 0
  %i.cq = sub nsw i64 %.val12.i.i, %.val14.i.i
  %spec.select.i.i.i.i.i.i31.i = select i1 %i.cp, i64 %i.cq, i64 %i.co
  %i.cr = icmp slt i64 %spec.select.i.i.i.i.i.i31.i, 0
  br i1 %i.cr, label %bb.o, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6J_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6J_.exit.i

bb.o:                                             ; preds = %.lr.ph.i
  %.sroa.012.0.copyload.i.i = load i64, ptr %i.ci, align 8, !alias.scope !5852, !noalias !5847
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %.sroa.0.0.i32.i264 = getelementptr inbounds i8, ptr %i.ci, i64 -56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ci, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i32.i264, i64 56, i1 false), !alias.scope !5852, !noalias !5847
  %i.ct = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.ct, label %._crit_edge269, label %.lr.ph268

bb.p:                                             ; preds = %.lr.ph268
  %.sroa.0.0.i32.i = getelementptr inbounds i8, ptr %.sroa.0.0.i32.i266, i64 -56 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i32.i266, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i32.i, i64 56, i1 false), !alias.scope !5852, !noalias !5847
  %i.cu = icmp eq ptr %.sroa.0.0.i32.i, %2
  br i1 %i.cu, label %._crit_edge269, label %.lr.ph268

.lr.ph268:                                        ; preds = %bb.o, %bb.p
  %.sroa.0.0.i32.i266 = phi ptr [ %.sroa.0.0.i32.i, %bb.p ], [ %.sroa.0.0.i32.i264, %bb.o ] ; 5 uses
  %.sroa.5.0.i.i265 = phi ptr [ %.sroa.0.0.i32.i266, %bb.p ], [ %i.ci, %bb.o ] ; 3 uses
  %i.cv = getelementptr i8, ptr %.sroa.5.0.i.i265, i64 -104
  %.val9.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !5852, !noalias !5847, !nonnull !19, !noundef !19
  %i.cw = getelementptr i8, ptr %.sroa.5.0.i.i265, i64 -96
  %.val10.i.i = load i64, ptr %i.cw, align 8, !alias.scope !5852, !noalias !5847, !noundef !19 ; 2 uses
  %spec.store.select.i.i.i.i.i15.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i.i, i64 range(i64 0, -9223372036854775808) %.val10.i.i)
  %i.cx = call i32 @memcmp(ptr nonnull readonly %.val11.i.i, ptr nonnull readonly %.val9.i.i, i64 %spec.store.select.i.i.i.i.i15.i.i), !alias.scope !5857, !noalias !5847 ; 2 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = icmp eq i32 %i.cx, 0
  %i.da = sub nsw i64 %.val12.i.i, %.val10.i.i
  %spec.select.i.i.i.i.i16.i.i = select i1 %i.cz, i64 %i.da, i64 %i.cy
  %i.db = icmp slt i64 %spec.select.i.i.i.i.i16.i.i, 0
  br i1 %i.db, label %bb.p, label %._crit_edge269

._crit_edge269:                                   ; preds = %bb.p, %.lr.ph268, %bb.o
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.ci, %bb.o ], [ %.sroa.0.0.i32.i266, %bb.p ], [ %.sroa.5.0.i.i265, %.lr.ph268 ] ; 3 uses
  %.sroa.0.0.i32.lcssa.i = phi ptr [ %2, %bb.o ], [ %2, %bb.p ], [ %.sroa.0.0.i32.i266, %.lr.ph268 ]
  store i64 %.sroa.012.0.copyload.i.i, ptr %.sroa.0.0.i32.lcssa.i, align 8, !alias.scope !5852, !noalias !5861
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -48
  store ptr %.val11.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !5852, !noalias !5861
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -40
  store i64 %.val12.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !5852, !noalias !5861
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i64 32, i1 false), !alias.scope !5850
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6J_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6J_.exit.i

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6J_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6J_.exit.i: ; preds = %._crit_edge269, %.lr.ph.i
  %i.dc = add nuw i64 %.sroa.05.08.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dc, %i.m
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0107.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph113, %.lr.ph ]
  call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift4sortTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB11_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB11_11collections5btree3mapINtB2U_8BTreeMapBX_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterBX_BX_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6s_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6s_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph114, i64 noundef %.sroa.16.0107.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1x_5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB1x_11collections5btree3mapINtB3r_8BTreeMapB1t_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4u_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1t_B1t_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB73_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB73_.exit

.lr.ph260:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0106259 = phi i32 [ %i.dd, %bb.b ], [ %.sroa.025.0.ph112, %.lr.ph ]
  %.sroa.16.0107258 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph113, %.lr.ph ] ; 21 uses
  %i.dd = add nsw i32 %.sroa.025.0106259, -1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5892)
  %i.de = lshr i64 %.sroa.16.0107258, 3           ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.de, 224
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph114, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.de, 392
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph114, i64 %.idx2.i ; 4 uses
  %i.dh = icmp samesign ult i64 %.sroa.16.0107258, 64
  br i1 %i.dh, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph260
  %i.di = call fastcc noundef ptr @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot11median3_recTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB19_5sliceSB14_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB33_8BTreeMapB15_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB46_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB15_B15_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6F_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6F_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph114, ptr noundef readonly %i.df, ptr noundef readonly %i.dg, i64 noundef %i.de)
  br label %bb.t

bb.r:                                             ; preds = %.lr.ph260
  %.val10.i = load ptr, ptr %i.c, align 8, !alias.scope !5892, !nonnull !19, !noundef !19 ; 2 uses
  %.val11.i = load i64, ptr %i.d, align 8, !alias.scope !5892, !noundef !19 ; 4 uses
  %i.dj = getelementptr i8, ptr %i.df, i64 8
  %.val12.i = load ptr, ptr %i.dj, align 8, !alias.scope !5892, !nonnull !19, !noundef !19 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.df, i64 16
  %.val13.i = load i64, ptr %i.dk, align 8, !alias.scope !5892, !noundef !19 ; 4 uses
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val13.i)
  %i.dl = call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !5895, !noalias !5892 ; 2 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp eq i32 %i.dl, 0
  %i.do = sub nsw i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i.i = select i1 %i.dn, i64 %i.do, i64 %i.dm ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dg, i64 8
  %.val8.i = load ptr, ptr %i.dp, align 8, !alias.scope !5892, !nonnull !19, !noundef !19 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dg, i64 16
  %.val9.i = load i64, ptr %i.dq, align 8, !alias.scope !5892, !noundef !19 ; 4 uses
  %spec.store.select.i.i.i.i.i14.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.dr = call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i14.i), !alias.scope !5899, !noalias !5892 ; 2 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp eq i32 %i.dr, 0
  %i.du = sub nsw i64 %.val11.i, %.val9.i
  %spec.select.i.i.i.i.i15.i = select i1 %i.dt, i64 %i.du, i64 %i.ds
  %i.dv = xor i64 %spec.select.i.i.i.i.i15.i, %spec.select.i.i.i.i.i.i
  %i.dw = icmp slt i64 %i.dv, 0
  br i1 %i.dw, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %spec.store.select.i.i.i.i.i16.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val13.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.dx = call i32 @memcmp(ptr nonnull readonly %.val12.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i16.i), !alias.scope !5903, !noalias !5892 ; 2 uses
  %i.dy = sext i32 %i.dx to i64
  %i.dz = icmp eq i32 %i.dx, 0
  %i.ea = sub nsw i64 %.val13.i, %.val9.i
  %spec.select.i.i.i.i.i17.i = select i1 %i.dz, i64 %i.ea, i64 %i.dy
  %i.eb = xor i64 %spec.select.i.i.i.i.i17.i, %spec.select.i.i.i.i.i.i
  %i.ec = icmp slt i64 %i.eb, 0
  %..i.i = select i1 %i.ec, ptr %i.dg, ptr %i.df
  br label %bb.t

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1x_5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB1x_11collections5btree3mapINtB3r_8BTreeMapB1t_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4u_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1t_B1t_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB73_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB73_.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.0.0.i.sink.i = phi ptr [ %i.di, %bb.q ], [ %.sroa.0.0.ph114, %bb.r ], [ %..i.i, %bb.s ]
  %i.ed = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ee = sub nuw i64 %i.ed, %i.e                 ; 2 uses
  %.sroa.0.0.i39 = udiv exact i64 %i.ee, 56       ; 3 uses
  %i.ef = icmp samesign ult i64 %.sroa.0.0.i39, %.sroa.16.0107258
  call void @llvm.assume(i1 %i.ef)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph114, i64 %i.ee ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.eg, i64 56, i1 false)
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.028.0.val = load ptr, ptr %i.f, align 8, !nonnull !19, !noundef !19
  %.sroa.028.0.val37 = load i64, ptr %i.g, align 8, !noundef !19 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 8
  %.val = load ptr, ptr %i.eh, align 8, !nonnull !19, !noundef !19
  %i.ei = getelementptr i8, ptr %i.eg, i64 16
  %.val38 = load i64, ptr %i.ei, align 8, !noundef !19 ; 2 uses
  %spec.store.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.028.0.val37, i64 range(i64 0, -9223372036854775808) %.val38)
  %i.ej = call i32 @memcmp(ptr nonnull readonly %.sroa.028.0.val, ptr nonnull readonly %.val, i64 %spec.store.select.i.i.i.i.i), !alias.scope !5907 ; 2 uses
  %i.ek = sext i32 %i.ej to i64
  %i.el = icmp eq i32 %i.ej, 0
  %i.em = sub nsw i64 %.sroa.028.0.val37, %.val38
  %spec.select.i.i.i.i.i = select i1 %i.el, i64 %i.em, i64 %i.ek
  %i.en = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.en, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.t, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !5911)
  call void @llvm.experimental.noalias.scope.decl(metadata !5914)
  %.not76 = icmp samesign ult i64 %3, %.sroa.16.0107258
  br i1 %.not76, label %bb.x, label %bb.w, !prof !5709

bb.w:                                             ; preds = %bb.v
  %i.eo = getelementptr [56 x i8], ptr %2, i64 %.sroa.16.0107258 ; 4 uses
  %i.ep = getelementptr i8, ptr %i.eg, i64 8
  %i.eq = getelementptr i8, ptr %i.eg, i64 16
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.z, %bb.w
  %.sroa.11.0.i = phi i64 [ 0, %bb.w ], [ %.sroa.11.1.lcssa.i, %bb.z ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph114, %bb.w ], [ %i.fi, %bb.z ] ; 3 uses
  %.sroa.19.0.i = phi ptr [ %i.eo, %bb.w ], [ %i.fg, %bb.z ] ; 2 uses
  %.sroa.0.0.i40 = phi i64 [ %.sroa.0.0.i39, %bb.w ], [ %.sroa.16.0107258, %bb.z ] ; 2 uses
  %i.er = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph114, i64 %.sroa.0.0.i40 ; 2 uses
  %i.es = icmp ult ptr %.sroa.5.0.i, %i.er
  br i1 %i.es, label %.lr.ph.i42, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i42, %bb.y
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.y ], [ %i.fd, %.lr.ph.i42 ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.y ], [ %i.fe, %.lr.ph.i42 ] ; 2 uses
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.y ], [ %i.fb, %.lr.ph.i42 ]
  %i.et = icmp eq i64 %.sroa.0.0.i40, %.sroa.16.0107258
  br i1 %i.et, label %bb.aa, label %bb.z

.lr.ph.i42:                                       ; preds = %bb.y, %.lr.ph.i42
  %.sroa.19.111.i = phi ptr [ %i.fb, %.lr.ph.i42 ], [ %.sroa.19.0.i, %bb.y ]
  %.sroa.5.110.i = phi ptr [ %i.fe, %.lr.ph.i42 ], [ %.sroa.5.0.i, %bb.y ] ; 4 uses
  %.sroa.11.19.i = phi i64 [ %i.fd, %.lr.ph.i42 ], [ %.sroa.11.0.i, %bb.y ] ; 2 uses
  %i.eu = getelementptr i8, ptr %.sroa.5.110.i, i64 8
  %.val.i = load ptr, ptr %i.eu, align 8, !alias.scope !5911, !noalias !5914, !nonnull !19, !noundef !19
  %i.ev = getelementptr i8, ptr %.sroa.5.110.i, i64 16
  %.val12.i43 = load i64, ptr %i.ev, align 8, !alias.scope !5911, !noalias !5914, !noundef !19 ; 2 uses
  %.val13.i44 = load ptr, ptr %i.ep, align 8, !alias.scope !5911, !noalias !5914, !nonnull !19, !noundef !19
  %.val14.i = load i64, ptr %i.eq, align 8, !alias.scope !5911, !noalias !5914, !noundef !19 ; 2 uses
  %spec.store.select.i.i.i.i.i.i45 = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i43, i64 range(i64 0, -9223372036854775808) %.val14.i)
  %i.ew = call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val13.i44, i64 %spec.store.select.i.i.i.i.i.i45), !alias.scope !5916, !noalias !5920 ; 2 uses
  %i.ex = sext i32 %i.ew to i64
  %i.ey = icmp eq i32 %i.ew, 0
  %i.ez = sub nsw i64 %.val12.i43, %.val14.i
  %spec.select.i.i.i.i.i.i46 = select i1 %i.ey, i64 %i.ez, i64 %i.ex ; 2 uses
  %i.fa = icmp slt i64 %spec.select.i.i.i.i.i.i46, 0
  %i.fb = getelementptr inbounds i8, ptr %.sroa.19.111.i, i64 -56 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.fa, ptr %2, ptr %i.fb
  %i.fc = getelementptr inbounds nuw [56 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.19.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fc, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.110.i, i64 56, i1 false), !alias.scope !5920, !noalias !5921
  %spec.select.i.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i.i46, 63
  %i.fd = add i64 %spec.select.i.i.i.i.i.lobit.i, %.sroa.11.19.i ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 56 ; 3 uses
  %i.ff = icmp ult ptr %i.fe, %i.er
  br i1 %i.ff, label %.lr.ph.i42, label %._crit_edge.i

bb.z:                                             ; preds = %._crit_edge.i
  %i.fg = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -56 ; 2 uses
  %i.fh = getelementptr inbounds nuw [56 x i8], ptr %i.fg, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fh, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.1.lcssa.i, i64 56, i1 false), !alias.scope !5920, !noalias !5924
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 56
  br label %bb.y

bb.aa:                                            ; preds = %._crit_edge.i
  %i.fj = mul i64 %.sroa.11.1.lcssa.i, 56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph114, ptr nonnull align 8 %2, i64 %i.fj, i1 false), !alias.scope !5920
  %i.fk = sub i64 %.sroa.16.0107258, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.0107258, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.aa
  %i.fl = getelementptr [56 x i8], ptr %.sroa.0.0.ph114, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.fk, 1
  %i.fm = icmp eq i64 %.sroa.16.0107258, %.neg
  br i1 %i.fm, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.fk, -2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.fq, %bb.ab ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.ab ]
  %i.fn = xor i64 %.sroa.06.014.i, -1
  %i.fo = getelementptr [56 x i8], ptr %i.eo, i64 %i.fn
  %i.fp = getelementptr [56 x i8], ptr %i.fl, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fp, ptr noundef nonnull align 8 dereferenceable(56) %i.fo, i64 56, i1 false), !alias.scope !5920
  %i.fq = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.fr = xor i64 %.sroa.06.014.i, -2
  %i.fs = getelementptr [56 x i8], ptr %i.eo, i64 %i.fr
  %i.ft = getelementptr [56 x i8], ptr %i.fl, i64 %.sroa.06.014.i
  %i.fu = getelementptr i8, ptr %i.ft, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fu, ptr noundef nonnull align 8 dereferenceable(56) %i.fs, i64 56, i1 false), !alias.scope !5920
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.ab

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.fq, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod346 = trunc i64 %i.fk to i1
  call void @llvm.assume(i1 %lcmp.mod346)
  %i.fv = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.fw = getelementptr [56 x i8], ptr %i.eo, i64 %i.fv
  %i.fx = getelementptr [56 x i8], ptr %i.fl, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fx, ptr noundef nonnull align 8 dereferenceable(56) %i.fw, i64 56, i1 false), !alias.scope !5920
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.aa
  %i.fy = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.fy, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %.loopexit
  %.not.i47 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0107258
  br i1 %.not.i47, label %bb.ad, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE12split_at_mutCs7p2uQeJxui2_9deltalake.exit, !prof !114

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @96, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #50, !noalias !5927
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core5sliceSTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE12split_at_mutCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.ac
  %i.fz = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph114, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph114) ]
  call fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB34_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB47_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB16_B16_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6G_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6G_(ptr noalias noundef nonnull align 8 %i.fz, i64 noundef %i.fk, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) %i.a, ptr noalias noundef align 8 dereferenceable(8) %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ga = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.ga, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.u, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !5931)
  call void @llvm.experimental.noalias.scope.decl(metadata !5934)
  %.not77 = icmp samesign ult i64 %3, %.sroa.16.0107258
  br i1 %.not77, label %bb.af, label %bb.ae, !prof !5709

bb.ae:                                            ; preds = %.thread
  %i.gb = getelementptr [56 x i8], ptr %2, i64 %.sroa.16.0107258 ; 4 uses
  %i.gc = getelementptr i8, ptr %i.eg, i64 8
  %i.gd = getelementptr i8, ptr %i.eg, i64 16
  br label %bb.ag

bb.af:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %bb.ah, %bb.ae
  %.sroa.11.0.i50 = phi i64 [ 0, %bb.ae ], [ %i.gw, %bb.ah ] ; 2 uses
  %.sroa.5.0.i51 = phi ptr [ %.sroa.0.0.ph114, %bb.ae ], [ %i.gx, %bb.ah ] ; 3 uses
  %.sroa.19.0.i52 = phi ptr [ %i.gb, %bb.ae ], [ %i.gu, %bb.ah ] ; 2 uses
  %.sroa.0.0.i53 = phi i64 [ %.sroa.0.0.i39, %bb.ae ], [ %.sroa.16.0107258, %bb.ah ] ; 2 uses
  %i.ge = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph114, i64 %.sroa.0.0.i53 ; 2 uses
  %i.gf = icmp ult ptr %.sroa.5.0.i51, %i.ge
  br i1 %i.gf, label %.lr.ph.i62, label %._crit_edge.i54

._crit_edge.i54:                                  ; preds = %.lr.ph.i62, %bb.ag
  %.sroa.11.1.lcssa.i55 = phi i64 [ %.sroa.11.0.i50, %bb.ag ], [ %i.gr, %.lr.ph.i62 ] ; 10 uses
  %.sroa.5.1.lcssa.i56 = phi ptr [ %.sroa.5.0.i51, %bb.ag ], [ %i.gs, %.lr.ph.i62 ] ; 2 uses
  %.sroa.19.1.lcssa.i57 = phi ptr [ %.sroa.19.0.i52, %bb.ag ], [ %i.go, %.lr.ph.i62 ]
  %i.gg = icmp eq i64 %.sroa.0.0.i53, %.sroa.16.0107258
  br i1 %i.gg, label %bb.ai, label %bb.ah

.lr.ph.i62:                                       ; preds = %bb.ag, %.lr.ph.i62
  %.sroa.19.111.i63 = phi ptr [ %i.go, %.lr.ph.i62 ], [ %.sroa.19.0.i52, %bb.ag ]
  %.sroa.5.110.i64 = phi ptr [ %i.gs, %.lr.ph.i62 ], [ %.sroa.5.0.i51, %bb.ag ] ; 4 uses
  %.sroa.11.19.i65 = phi i64 [ %i.gr, %.lr.ph.i62 ], [ %.sroa.11.0.i50, %bb.ag ] ; 2 uses
  %i.gh = getelementptr i8, ptr %.sroa.5.110.i64, i64 8
  %.val.i66 = load ptr, ptr %i.gh, align 8, !alias.scope !5931, !noalias !5934, !nonnull !19, !noundef !19
  %i.gi = getelementptr i8, ptr %.sroa.5.110.i64, i64 16
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB34_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB47_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB16_B16_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6A_:bb.a
  %.sroa.017.05.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %i.ar, %.loopexit.1.i ] ; 4 uses
  %.sroa.019.04.i.i = phi ptr [ %i.bw, %.lr.ph.i.i ], [ %i.aq, %.loopexit.1.i ] ; 2 uses
  %i.ax = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.ay = getelementptr i8, ptr %.sroa.011.07.i.i, i64 8
  %.sroa.011.0.val.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !5969, !noalias !5947, !nonnull !19, !noundef !19
  %i.az = getelementptr i8, ptr %.sroa.011.07.i.i, i64 16
  %.sroa.011.0.val24.i.i = load i64, ptr %i.az, align 8, !alias.scope !5969, !noalias !5947, !noundef !19 ; 2 uses
  %i.ba = getelementptr i8, ptr %.sroa.06.08.i.i, i64 8
  %.sroa.06.0.val.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !5969, !noalias !5947, !nonnull !19, !noundef !19
  %i.bb = getelementptr i8, ptr %.sroa.06.08.i.i, i64 16
  %.sroa.06.0.val25.i.i = load i64, ptr %i.bb, align 8, !alias.scope !5969, !noalias !5947, !noundef !19 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.011.0.val24.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.06.0.val25.i.i)
  %i.bc = call i32 @memcmp(ptr nonnull readonly %.sroa.011.0.val.i.i, ptr nonnull readonly %.sroa.06.0.val.i.i, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !5970, !noalias !5974 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp eq i32 %i.bc, 0
  %i.bf = sub nsw i64 %.sroa.011.0.val24.i.i, %.sroa.06.0.val25.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.be, i64 %i.bf, i64 %i.bd ; 2 uses
  %i.bg = icmp sgt i64 %spec.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i23.i.i = select i1 %i.bg, ptr %.sroa.06.08.i.i, ptr %.sroa.011.07.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(56) %..i23.i.i, i64 56, i1 false), !alias.scope !5950, !noalias !5975
  %spec.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i.i, 63
  %i.bh = getelementptr inbounds nuw [56 x i8], ptr %.sroa.011.07.i.i, i64 %spec.select.i.i.i.i.i.lobit.i.i ; 4 uses
  %i.bi = zext i1 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [56 x i8], ptr %.sroa.06.08.i.i, i64 %i.bi ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 56 ; 2 uses
  %i.bl = getelementptr i8, ptr %.sroa.017.05.i.i, i64 8
  %.sroa.017.0.val.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !5969, !noalias !5947, !nonnull !19, !noundef !19
  %i.bm = getelementptr i8, ptr %.sroa.017.05.i.i, i64 16
  %.sroa.017.0.val26.i.i = load i64, ptr %i.bm, align 8, !alias.scope !5969, !noalias !5947, !noundef !19 ; 2 uses
  %i.bn = getelementptr i8, ptr %.sroa.015.06.i.i, i64 8
  %.sroa.015.0.val.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !5969, !noalias !5947, !nonnull !19, !noundef !19
  %i.bo = getelementptr i8, ptr %.sroa.015.06.i.i, i64 16
  %.sroa.015.0.val27.i.i = load i64, ptr %i.bo, align 8, !alias.scope !5969, !noalias !5947, !noundef !19 ; 2 uses
  %spec.store.select.i.i.i.i.i28.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.017.0.val26.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.015.0.val27.i.i)
  %i.bp = call i32 @memcmp(ptr nonnull readonly %.sroa.017.0.val.i.i, ptr nonnull readonly %.sroa.015.0.val.i.i, i64 %spec.store.select.i.i.i.i.i28.i.i), !alias.scope !5979, !noalias !5974 ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp eq i32 %i.bp, 0
  %i.bs = sub nsw i64 %.sroa.017.0.val26.i.i, %.sroa.015.0.val27.i.i
  %spec.select.i.i.i.i.i29.i.i = select i1 %i.br, i64 %i.bs, i64 %i.bq ; 2 uses
  %i.bt = icmp sgt i64 %spec.select.i.i.i.i.i29.i.i, -1 ; 2 uses
  %..i.i.i = select i1 %i.bt, ptr %.sroa.017.05.i.i, ptr %.sroa.015.06.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(56) %..i.i.i, i64 56, i1 false), !alias.scope !5950, !noalias !5983
  %.neg.i.i.i = sext i1 %i.bt to i64
  %i.bu = getelementptr [56 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %spec.select.i.i.i.i.i29.lobit.i.i = ashr i64 %spec.select.i.i.i.i.i29.i.i, 63
  %i.bv = getelementptr [56 x i8], ptr %.sroa.015.06.i.i, i64 %spec.select.i.i.i.i.i29.lobit.i.i ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -56
  %exitcond.not.i.i = icmp eq i64 %i.ax, %i.m
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bx = icmp ult ptr %i.bj, %i.at               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.bx, ptr %i.bj, ptr %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.06.0..sroa.011.0.i.i, i64 56, i1 false), !alias.scope !5950
  %i.by = zext i1 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [56 x i8], ptr %i.bj, i64 %i.by
  %i.ca = xor i1 %i.bx, true
  %i.cb = zext i1 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %i.cb
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.bh, %._crit_edge.i.i ], [ %i.cc, %bb.k ]
  %.sroa.06.1.i.i = phi ptr [ %i.bj, %._crit_edge.i.i ], [ %i.bz, %bb.k ]
  %i.cd = icmp ne ptr %.sroa.06.1.i.i, %i.at
  %i.ce = icmp ne ptr %.sroa.011.1.i.i, %i.au
  %or.cond.i.i = select i1 %i.cd, i1 true, i1 %i.ce, !prof !5709
  br i1 %or.cond.i.i, label %bb.m, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1x_5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB1x_11collections5btree3mapINtB3r_8BTreeMapB1t_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4u_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1t_B1t_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6X_.exit, !prof !5709

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #50
          to label %.noexc.i unwind label %bb.n, !noalias !5947

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = mul nuw nsw i64 %.sroa.16.0.lcssa, 56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa105, ptr nonnull align 8 %2, i64 %i.cg, i1 false), !alias.scope !5950, !noalias !5987
  resume { ptr, i32 } %i.cf

.lr.ph.i:                                         ; preds = %bb.h, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6D_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.dc, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6D_.exit.i ], [ %.sroa.0.0.i, %bb.h ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph.lcssa105, i64 %.sroa.05.08.i ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.05.08.i, 56
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ci, ptr noundef nonnull align 8 dereferenceable(56) %i.ch, i64 56, i1 false), !alias.scope !5950
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %.val11.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !5952, !noalias !5947, !nonnull !19, !noundef !19 ; 3 uses
  %i.ck = getelementptr i8, ptr %i.ci, i64 16
  %.val12.i.i = load i64, ptr %i.ck, align 8, !alias.scope !5952, !noalias !5947, !noundef !19 ; 5 uses
  %i.cl = getelementptr i8, ptr %i.ci, i64 -48
  %.val13.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !5952, !noalias !5947, !nonnull !19, !noundef !19
  %i.cm = getelementptr i8, ptr %i.ci, i64 -40
  %.val14.i.i = load i64, ptr %i.cm, align 8, !alias.scope !5952, !noalias !5947, !noundef !19 ; 2 uses
  %spec.store.select.i.i.i.i.i.i30.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i.i, i64 range(i64 0, -9223372036854775808) %.val14.i.i)
  %i.cn = call i32 @memcmp(ptr nonnull readonly %.val11.i.i, ptr nonnull readonly %.val13.i.i, i64 %spec.store.select.i.i.i.i.i.i30.i), !alias.scope !5953, !noalias !5947 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp eq i32 %i.cn, 0
  %i.cq = sub nsw i64 %.val12.i.i, %.val14.i.i
  %spec.select.i.i.i.i.i.i31.i = select i1 %i.cp, i64 %i.cq, i64 %i.co
  %i.cr = icmp slt i64 %spec.select.i.i.i.i.i.i31.i, 0
  br i1 %i.cr, label %bb.o, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6D_.exit.i

bb.o:                                             ; preds = %.lr.ph.i
  %.sroa.012.0.copyload.i.i = load i64, ptr %i.ci, align 8, !alias.scope !5952, !noalias !5947
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %.sroa.0.0.i32.i264 = getelementptr inbounds i8, ptr %i.ci, i64 -56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ci, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i32.i264, i64 56, i1 false), !alias.scope !5952, !noalias !5947
  %i.ct = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.ct, label %._crit_edge269, label %.lr.ph268

bb.p:                                             ; preds = %.lr.ph268
  %.sroa.0.0.i32.i = getelementptr inbounds i8, ptr %.sroa.0.0.i32.i266, i64 -56 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i32.i266, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i32.i, i64 56, i1 false), !alias.scope !5952, !noalias !5947
  %i.cu = icmp eq ptr %.sroa.0.0.i32.i, %2
  br i1 %i.cu, label %._crit_edge269, label %.lr.ph268

.lr.ph268:                                        ; preds = %bb.o, %bb.p
  %.sroa.0.0.i32.i266 = phi ptr [ %.sroa.0.0.i32.i, %bb.p ], [ %.sroa.0.0.i32.i264, %bb.o ] ; 5 uses
  %.sroa.5.0.i.i265 = phi ptr [ %.sroa.0.0.i32.i266, %bb.p ], [ %i.ci, %bb.o ] ; 3 uses
  %i.cv = getelementptr i8, ptr %.sroa.5.0.i.i265, i64 -104
  %.val9.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !5952, !noalias !5947, !nonnull !19, !noundef !19
  %i.cw = getelementptr i8, ptr %.sroa.5.0.i.i265, i64 -96
  %.val10.i.i = load i64, ptr %i.cw, align 8, !alias.scope !5952, !noalias !5947, !noundef !19 ; 2 uses
  %spec.store.select.i.i.i.i.i15.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i.i, i64 range(i64 0, -9223372036854775808) %.val10.i.i)
  %i.cx = call i32 @memcmp(ptr nonnull readonly %.val11.i.i, ptr nonnull readonly %.val9.i.i, i64 %spec.store.select.i.i.i.i.i15.i.i), !alias.scope !5957, !noalias !5947 ; 2 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = icmp eq i32 %i.cx, 0
  %i.da = sub nsw i64 %.val12.i.i, %.val10.i.i
  %spec.select.i.i.i.i.i16.i.i = select i1 %i.cz, i64 %i.da, i64 %i.cy
  %i.db = icmp slt i64 %spec.select.i.i.i.i.i16.i.i, 0
  br i1 %i.db, label %bb.p, label %._crit_edge269

._crit_edge269:                                   ; preds = %bb.p, %.lr.ph268, %bb.o
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.ci, %bb.o ], [ %.sroa.0.0.i32.i266, %bb.p ], [ %.sroa.5.0.i.i265, %.lr.ph268 ] ; 3 uses
  %.sroa.0.0.i32.lcssa.i = phi ptr [ %2, %bb.o ], [ %2, %bb.p ], [ %.sroa.0.0.i32.i266, %.lr.ph268 ]
  store i64 %.sroa.012.0.copyload.i.i, ptr %.sroa.0.0.i32.lcssa.i, align 8, !alias.scope !5952, !noalias !5961
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -48
  store ptr %.val11.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !5952, !noalias !5961
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -40
  store i64 %.val12.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !5952, !noalias !5961
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i64 32, i1 false), !alias.scope !5950
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6D_.exit.i

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6D_.exit.i: ; preds = %._crit_edge269, %.lr.ph.i
  %i.dc = add nuw i64 %.sroa.05.08.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dc, %i.m
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0107.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph113, %.lr.ph ]
  call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift4sortTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB11_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB11_11collections5btree3mapINtB2U_8BTreeMapBX_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterBX_BX_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6m_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph114, i64 noundef %.sroa.16.0107.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1x_5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB1x_11collections5btree3mapINtB3r_8BTreeMapB1t_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4u_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1t_B1t_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6X_.exit

.lr.ph260:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0106259 = phi i32 [ %i.dd, %bb.b ], [ %.sroa.025.0.ph112, %.lr.ph ]
  %.sroa.16.0107258 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph113, %.lr.ph ] ; 21 uses
  %i.dd = add nsw i32 %.sroa.025.0106259, -1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5992)
  %i.de = lshr i64 %.sroa.16.0107258, 3           ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.de, 224
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph114, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.de, 392
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph114, i64 %.idx2.i ; 4 uses
  %i.dh = icmp samesign ult i64 %.sroa.16.0107258, 64
  br i1 %i.dh, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph260
  %i.di = call fastcc noundef ptr @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot11median3_recTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB19_5sliceSB14_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB33_8BTreeMapB15_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB46_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB15_B15_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6z_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph114, ptr noundef readonly %i.df, ptr noundef readonly %i.dg, i64 noundef %i.de)
  br label %bb.t

bb.r:                                             ; preds = %.lr.ph260
  %.val10.i = load ptr, ptr %i.c, align 8, !alias.scope !5992, !nonnull !19, !noundef !19 ; 2 uses
  %.val11.i = load i64, ptr %i.d, align 8, !alias.scope !5992, !noundef !19 ; 4 uses
  %i.dj = getelementptr i8, ptr %i.df, i64 8
  %.val12.i = load ptr, ptr %i.dj, align 8, !alias.scope !5992, !nonnull !19, !noundef !19 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.df, i64 16
  %.val13.i = load i64, ptr %i.dk, align 8, !alias.scope !5992, !noundef !19 ; 4 uses
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val13.i)
  %i.dl = call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !5995, !noalias !5992 ; 2 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp eq i32 %i.dl, 0
  %i.do = sub nsw i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i.i = select i1 %i.dn, i64 %i.do, i64 %i.dm ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dg, i64 8
  %.val8.i = load ptr, ptr %i.dp, align 8, !alias.scope !5992, !nonnull !19, !noundef !19 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dg, i64 16
  %.val9.i = load i64, ptr %i.dq, align 8, !alias.scope !5992, !noundef !19 ; 4 uses
  %spec.store.select.i.i.i.i.i14.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.dr = call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i14.i), !alias.scope !5999, !noalias !5992 ; 2 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp eq i32 %i.dr, 0
  %i.du = sub nsw i64 %.val11.i, %.val9.i
  %spec.select.i.i.i.i.i15.i = select i1 %i.dt, i64 %i.du, i64 %i.ds
  %i.dv = xor i64 %spec.select.i.i.i.i.i15.i, %spec.select.i.i.i.i.i.i
  %i.dw = icmp slt i64 %i.dv, 0
  br i1 %i.dw, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %spec.store.select.i.i.i.i.i16.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val13.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.dx = call i32 @memcmp(ptr nonnull readonly %.val12.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i16.i), !alias.scope !6003, !noalias !5992 ; 2 uses
  %i.dy = sext i32 %i.dx to i64
  %i.dz = icmp eq i32 %i.dx, 0
  %i.ea = sub nsw i64 %.val13.i, %.val9.i
  %spec.select.i.i.i.i.i17.i = select i1 %i.dz, i64 %i.ea, i64 %i.dy
  %i.eb = xor i64 %spec.select.i.i.i.i.i17.i, %spec.select.i.i.i.i.i.i
  %i.ec = icmp slt i64 %i.eb, 0
  %..i.i = select i1 %i.ec, ptr %i.dg, ptr %i.df
  br label %bb.t

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1x_5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB1x_11collections5btree3mapINtB3r_8BTreeMapB1t_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4u_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1t_B1t_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6X_.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.0.0.i.sink.i = phi ptr [ %i.di, %bb.q ], [ %.sroa.0.0.ph114, %bb.r ], [ %..i.i, %bb.s ]
  %i.ed = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ee = sub nuw i64 %i.ed, %i.e                 ; 2 uses
  %.sroa.0.0.i39 = udiv exact i64 %i.ee, 56       ; 3 uses
  %i.ef = icmp samesign ult i64 %.sroa.0.0.i39, %.sroa.16.0107258
  call void @llvm.assume(i1 %i.ef)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph114, i64 %i.ee ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.eg, i64 56, i1 false)
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.028.0.val = load ptr, ptr %i.f, align 8, !nonnull !19, !noundef !19
  %.sroa.028.0.val37 = load i64, ptr %i.g, align 8, !noundef !19 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 8
  %.val = load ptr, ptr %i.eh, align 8, !nonnull !19, !noundef !19
  %i.ei = getelementptr i8, ptr %i.eg, i64 16
  %.val38 = load i64, ptr %i.ei, align 8, !noundef !19 ; 2 uses
  %spec.store.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.028.0.val37, i64 range(i64 0, -9223372036854775808) %.val38)
  %i.ej = call i32 @memcmp(ptr nonnull readonly %.sroa.028.0.val, ptr nonnull readonly %.val, i64 %spec.store.select.i.i.i.i.i), !alias.scope !6007 ; 2 uses
  %i.ek = sext i32 %i.ej to i64
  %i.el = icmp eq i32 %i.ej, 0
  %i.em = sub nsw i64 %.sroa.028.0.val37, %.val38
  %spec.select.i.i.i.i.i = select i1 %i.el, i64 %i.em, i64 %i.ek
  %i.en = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.en, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.t, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !6011)
  call void @llvm.experimental.noalias.scope.decl(metadata !6014)
  %.not76 = icmp samesign ult i64 %3, %.sroa.16.0107258
  br i1 %.not76, label %bb.x, label %bb.w, !prof !5709

bb.w:                                             ; preds = %bb.v
  %i.eo = getelementptr [56 x i8], ptr %2, i64 %.sroa.16.0107258 ; 4 uses
  %i.ep = getelementptr i8, ptr %i.eg, i64 8
  %i.eq = getelementptr i8, ptr %i.eg, i64 16
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.z, %bb.w
  %.sroa.11.0.i = phi i64 [ 0, %bb.w ], [ %.sroa.11.1.lcssa.i, %bb.z ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph114, %bb.w ], [ %i.fi, %bb.z ] ; 3 uses
  %.sroa.19.0.i = phi ptr [ %i.eo, %bb.w ], [ %i.fg, %bb.z ] ; 2 uses
  %.sroa.0.0.i40 = phi i64 [ %.sroa.0.0.i39, %bb.w ], [ %.sroa.16.0107258, %bb.z ] ; 2 uses
  %i.er = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph114, i64 %.sroa.0.0.i40 ; 2 uses
  %i.es = icmp ult ptr %.sroa.5.0.i, %i.er
  br i1 %i.es, label %.lr.ph.i42, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i42, %bb.y
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.y ], [ %i.fd, %.lr.ph.i42 ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.y ], [ %i.fe, %.lr.ph.i42 ] ; 2 uses
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.y ], [ %i.fb, %.lr.ph.i42 ]
  %i.et = icmp eq i64 %.sroa.0.0.i40, %.sroa.16.0107258
  br i1 %i.et, label %bb.aa, label %bb.z

.lr.ph.i42:                                       ; preds = %bb.y, %.lr.ph.i42
  %.sroa.19.111.i = phi ptr [ %i.fb, %.lr.ph.i42 ], [ %.sroa.19.0.i, %bb.y ]
  %.sroa.5.110.i = phi ptr [ %i.fe, %.lr.ph.i42 ], [ %.sroa.5.0.i, %bb.y ] ; 4 uses
  %.sroa.11.19.i = phi i64 [ %i.fd, %.lr.ph.i42 ], [ %.sroa.11.0.i, %bb.y ] ; 2 uses
  %i.eu = getelementptr i8, ptr %.sroa.5.110.i, i64 8
  %.val.i = load ptr, ptr %i.eu, align 8, !alias.scope !6011, !noalias !6014, !nonnull !19, !noundef !19
  %i.ev = getelementptr i8, ptr %.sroa.5.110.i, i64 16
  %.val12.i43 = load i64, ptr %i.ev, align 8, !alias.scope !6011, !noalias !6014, !noundef !19 ; 2 uses
  %.val13.i44 = load ptr, ptr %i.ep, align 8, !alias.scope !6011, !noalias !6014, !nonnull !19, !noundef !19
  %.val14.i = load i64, ptr %i.eq, align 8, !alias.scope !6011, !noalias !6014, !noundef !19 ; 2 uses
  %spec.store.select.i.i.i.i.i.i45 = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i43, i64 range(i64 0, -9223372036854775808) %.val14.i)
  %i.ew = call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val13.i44, i64 %spec.store.select.i.i.i.i.i.i45), !alias.scope !6016, !noalias !6020 ; 2 uses
  %i.ex = sext i32 %i.ew to i64
  %i.ey = icmp eq i32 %i.ew, 0
  %i.ez = sub nsw i64 %.val12.i43, %.val14.i
  %spec.select.i.i.i.i.i.i46 = select i1 %i.ey, i64 %i.ez, i64 %i.ex ; 2 uses
  %i.fa = icmp slt i64 %spec.select.i.i.i.i.i.i46, 0
  %i.fb = getelementptr inbounds i8, ptr %.sroa.19.111.i, i64 -56 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.fa, ptr %2, ptr %i.fb
  %i.fc = getelementptr inbounds nuw [56 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.19.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fc, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.110.i, i64 56, i1 false), !alias.scope !6020, !noalias !6021
  %spec.select.i.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i.i46, 63
  %i.fd = add i64 %spec.select.i.i.i.i.i.lobit.i, %.sroa.11.19.i ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.5.110.i, i64 56 ; 3 uses
  %i.ff = icmp ult ptr %i.fe, %i.er
  br i1 %i.ff, label %.lr.ph.i42, label %._crit_edge.i

bb.z:                                             ; preds = %._crit_edge.i
  %i.fg = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -56 ; 2 uses
  %i.fh = getelementptr inbounds nuw [56 x i8], ptr %i.fg, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fh, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.1.lcssa.i, i64 56, i1 false), !alias.scope !6020, !noalias !6024
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 56
  br label %bb.y

bb.aa:                                            ; preds = %._crit_edge.i
  %i.fj = mul i64 %.sroa.11.1.lcssa.i, 56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph114, ptr nonnull align 8 %2, i64 %i.fj, i1 false), !alias.scope !6020
  %i.fk = sub i64 %.sroa.16.0107258, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.0107258, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.aa
  %i.fl = getelementptr [56 x i8], ptr %.sroa.0.0.ph114, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.fk, 1
  %i.fm = icmp eq i64 %.sroa.16.0107258, %.neg
  br i1 %i.fm, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.fk, -2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.fq, %bb.ab ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.ab ]
  %i.fn = xor i64 %.sroa.06.014.i, -1
  %i.fo = getelementptr [56 x i8], ptr %i.eo, i64 %i.fn
  %i.fp = getelementptr [56 x i8], ptr %i.fl, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fp, ptr noundef nonnull align 8 dereferenceable(56) %i.fo, i64 56, i1 false), !alias.scope !6020
  %i.fq = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.fr = xor i64 %.sroa.06.014.i, -2
  %i.fs = getelementptr [56 x i8], ptr %i.eo, i64 %i.fr
  %i.ft = getelementptr [56 x i8], ptr %i.fl, i64 %.sroa.06.014.i
  %i.fu = getelementptr i8, ptr %i.ft, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fu, ptr noundef nonnull align 8 dereferenceable(56) %i.fs, i64 56, i1 false), !alias.scope !6020
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.ab

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.fq, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod346 = trunc i64 %i.fk to i1
  call void @llvm.assume(i1 %lcmp.mod346)
  %i.fv = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.fw = getelementptr [56 x i8], ptr %i.eo, i64 %i.fv
  %i.fx = getelementptr [56 x i8], ptr %i.fl, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fx, ptr noundef nonnull align 8 dereferenceable(56) %i.fw, i64 56, i1 false), !alias.scope !6020
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.aa
  %i.fy = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.fy, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %.loopexit
  %.not.i47 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0107258
  br i1 %.not.i47, label %bb.ad, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE12split_at_mutCs7p2uQeJxui2_9deltalake.exit, !prof !114

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @96, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #50, !noalias !6027
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core5sliceSTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE12split_at_mutCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.ac
  %i.fz = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph114, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph114) ]
  call fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB34_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB47_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB16_B16_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6A_(ptr noalias noundef nonnull align 8 %i.fz, i64 noundef %i.fk, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) %i.a, ptr noalias noundef align 8 dereferenceable(8) %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ga = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.ga, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.u, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !6031)
  call void @llvm.experimental.noalias.scope.decl(metadata !6034)
  %.not77 = icmp samesign ult i64 %3, %.sroa.16.0107258
  br i1 %.not77, label %bb.af, label %bb.ae, !prof !5709

bb.ae:                                            ; preds = %.thread
  %i.gb = getelementptr [56 x i8], ptr %2, i64 %.sroa.16.0107258 ; 4 uses
  %i.gc = getelementptr i8, ptr %i.eg, i64 8
  %i.gd = getelementptr i8, ptr %i.eg, i64 16
  br label %bb.ag

bb.af:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %bb.ah, %bb.ae
  %.sroa.11.0.i50 = phi i64 [ 0, %bb.ae ], [ %i.gw, %bb.ah ] ; 2 uses
  %.sroa.5.0.i51 = phi ptr [ %.sroa.0.0.ph114, %bb.ae ], [ %i.gx, %bb.ah ] ; 3 uses
  %.sroa.19.0.i52 = phi ptr [ %i.gb, %bb.ae ], [ %i.gu, %bb.ah ] ; 2 uses
  %.sroa.0.0.i53 = phi i64 [ %.sroa.0.0.i39, %bb.ae ], [ %.sroa.16.0107258, %bb.ah ] ; 2 uses
  %i.ge = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph114, i64 %.sroa.0.0.i53 ; 2 uses
  %i.gf = icmp ult ptr %.sroa.5.0.i51, %i.ge
  br i1 %i.gf, label %.lr.ph.i62, label %._crit_edge.i54

._crit_edge.i54:                                  ; preds = %.lr.ph.i62, %bb.ag
  %.sroa.11.1.lcssa.i55 = phi i64 [ %.sroa.11.0.i50, %bb.ag ], [ %i.gr, %.lr.ph.i62 ] ; 10 uses
  %.sroa.5.1.lcssa.i56 = phi ptr [ %.sroa.5.0.i51, %bb.ag ], [ %i.gs, %.lr.ph.i62 ] ; 2 uses
  %.sroa.19.1.lcssa.i57 = phi ptr [ %.sroa.19.0.i52, %bb.ag ], [ %i.go, %.lr.ph.i62 ]
  %i.gg = icmp eq i64 %.sroa.0.0.i53, %.sroa.16.0107258
  br i1 %i.gg, label %bb.ai, label %bb.ah

.lr.ph.i62:                                       ; preds = %bb.ag, %.lr.ph.i62
  %.sroa.19.111.i63 = phi ptr [ %i.go, %.lr.ph.i62 ], [ %.sroa.19.0.i52, %bb.ag ]
  %.sroa.5.110.i64 = phi ptr [ %i.gs, %.lr.ph.i62 ], [ %.sroa.5.0.i51, %bb.ag ] ; 4 uses
  %.sroa.11.19.i65 = phi i64 [ %i.gr, %.lr.ph.i62 ], [ %.sroa.11.0.i50, %bb.ag ] ; 2 uses
  %i.gh = getelementptr i8, ptr %.sroa.5.110.i64, i64 8
  %.val.i66 = load ptr, ptr %i.gh, align 8, !alias.scope !6031, !noalias !6034, !nonnull !19, !noundef !19
  %i.gi = getelementptr i8, ptr %.sroa.5.110.i64, i64 16
end_hunk_2
begin_hunk_3_@_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast15RaisErrorOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc4sync3ArceENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsW_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19GroupByWithModifierINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast6ActionENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast6ActionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE16into_boxed_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19GroupByWithModifierENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCsbvkFyIu7lgC_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl9ColumnDefEENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl9ColumnDefENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type15CharacterLengthENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionyENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type12BinaryLengthENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type15ExactNumberInfoNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type12TimezoneInfoNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type16ArrayElemTypeDefNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsq_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type10EnumMemberENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsq_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type17StructBracketKindNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast10UnionFieldENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type17GeometricTypeKindNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query18XmlPassingArgumentENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type10EnumMemberINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast10UnionFieldINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast5value18DollarQuotedStringNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 3) i8 @_RNvXs6_NtNtCsbvkFyIu7lgC_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsz_NtCs4lawaffTVVK_9sqlparser3astNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsbvkFyIu7lgC_4core3anyDNtB5_3AnyNtNtB7_6marker4SendEL_NtNtB7_3fmt5Debug3fmt(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs2pqxYH9ZEk8_3std9backtraceNtB2_9BacktraceNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCsjhHCjzi9uUI_17datafusion_common6columnNtB2_6ColumnNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task5errorNtB5_9JoinErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies10ConstraintINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11DecimalTypeNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCsbvkFyIu7lgC_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementEINtNtNtBa_5slice4iter4IterB14_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchINtNtNtBa_5slice4iter4IterB14_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger12TriggerEventINtNtNtBa_5slice4iter4IterB14_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger18TriggerReferencingINtNtNtBa_5slice4iter4IterB14_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarINtNtNtBa_5slice4iter4IterB14_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB15_EINtNtNtBa_5slice4iter4IterB14_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarB15_EINtNtNtBa_5slice4iter4IterB14_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarB14_EENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #44

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #45

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #33

attributes #0 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse noreturn nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #29 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #36 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #38 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #43 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #45 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #46 = { nounwind }
attributes #47 = { noreturn }
attributes #48 = { cold }
attributes #49 = { cold noreturn nounwind }
attributes #50 = { noinline noreturn }
attributes #51 = { noinline }
attributes #52 = { inlinehint }
attributes #53 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.96.0-nightly (1d8897a4e 2026-03-13)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextEE10initializeNCINvB18_11get_or_initNCNvCs7p2uQeJxui2_9deltalake41fallback_datafusion_task_context_provider0E0zE0EB3U_: argument 0"}
!5 = distinct !{!5, !"_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextEE10initializeNCINvB18_11get_or_initNCNvCs7p2uQeJxui2_9deltalake41fallback_datafusion_task_context_provider0E0zE0EB3U_"}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockINtNtNtB8_6poison6rwlock6RwLockNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace20GlobalTracerProviderEE10initializeNCINvB18_11get_or_initNCNvB2b_22global_tracer_provider0E0zE0ECs7p2uQeJxui2_9deltalake: argument 0"}
!9 = distinct !{!9, !"_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockINtNtNtB8_6poison6rwlock6RwLockNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace20GlobalTracerProviderEE10initializeNCINvB18_11get_or_initNCNvB2b_22global_tracer_provider0E0zE0ECs7p2uQeJxui2_9deltalake"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB18_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zE0EB37_: argument 0"}
!12 = distinct !{!12, !"_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB18_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zE0EB37_"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockbE10initializeNCINvB18_11get_or_initNCNvB18_10try_insert0E0zE0ECs7p2uQeJxui2_9deltalake: argument 0"}
!15 = distinct !{!15, !"_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockbE10initializeNCINvB18_11get_or_initNCNvB18_10try_insert0E0zE0ECs7p2uQeJxui2_9deltalake"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockmE10initializeNCINvB18_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zE0EB2k_: argument 0"}
!18 = distinct !{!18, !"_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockmE10initializeNCINvB18_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zE0EB2k_"}
!19 = !{}
!20 = !{i64 8}
!21 = !{!22, !24, !26, !27}
!22 = distinct !{!22, !23, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataE3newCs7p2uQeJxui2_9deltalake: argument 0"}
!23 = distinct !{!23, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataE3newCs7p2uQeJxui2_9deltalake"}
!24 = distinct !{!24, !25, !"_RINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataECs7p2uQeJxui2_9deltalake: argument 0"}
!25 = distinct !{!25, !"_RINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataECs7p2uQeJxui2_9deltalake"}
!26 = distinct !{!26, !25, !"_RINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataECs7p2uQeJxui2_9deltalake: argument 1"}
!27 = distinct !{!27, !25, !"_RINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataECs7p2uQeJxui2_9deltalake: argument 2"}
!28 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!29 = !{!24, !26, !27}
!30 = !{!24, !26}
!31 = !{!24, !27}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_RNCINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataE0Cs7p2uQeJxui2_9deltalake: argument 1"}
!34 = distinct !{!34, !"_RNCINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataE0Cs7p2uQeJxui2_9deltalake"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_RINvMsa_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyEL_E8downcastNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataECs7p2uQeJxui2_9deltalake: argument 1"}
!37 = distinct !{!37, !"_RINvMsa_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyEL_E8downcastNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataECs7p2uQeJxui2_9deltalake"}
!38 = !{!39, !36, !40, !33, !24, !26, !27}
!39 = distinct !{!39, !37, !"_RINvMsa_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyEL_E8downcastNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataECs7p2uQeJxui2_9deltalake: argument 0"}
!40 = distinct !{!40, !34, !"_RNCINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataE0Cs7p2uQeJxui2_9deltalake: argument 0"}
!41 = !{!36, !33}
!42 = !{!39, !40, !24, !27}
!43 = !{!39, !36, !40, !33, !24, !27}
!44 = !{!40, !24, !27}
!45 = !{i64 0, i64 -9223372036854775808}
!46 = !{i64 1, i64 536870913}
!47 = !{!33, !27}
!48 = !{!40, !33, !24, !27}
!49 = !{!"branch_weights", !"expected", i32 2144049392, i32 3434256}
!50 = !{!51, !53, !55, !56}
!51 = distinct !{!51, !52, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsE3newCs7p2uQeJxui2_9deltalake: argument 0"}
!52 = distinct !{!52, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsE3newCs7p2uQeJxui2_9deltalake"}
!53 = distinct !{!53, !54, !"_RINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsECs7p2uQeJxui2_9deltalake: argument 0"}
!54 = distinct !{!54, !"_RINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsECs7p2uQeJxui2_9deltalake"}
!55 = distinct !{!55, !54, !"_RINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsECs7p2uQeJxui2_9deltalake: argument 1"}
!56 = distinct !{!56, !54, !"_RINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsECs7p2uQeJxui2_9deltalake: argument 2"}
!57 = !{!53, !55}
!58 = !{!53, !55, !56}
!59 = !{!53, !56}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_RNCINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsE0Cs7p2uQeJxui2_9deltalake: argument 1"}
!62 = distinct !{!62, !"_RNCINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsE0Cs7p2uQeJxui2_9deltalake"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_RINvMsa_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyEL_E8downcastNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsECs7p2uQeJxui2_9deltalake: argument 1"}
!65 = distinct !{!65, !"_RINvMsa_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyEL_E8downcastNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsECs7p2uQeJxui2_9deltalake"}
!66 = !{!67, !64, !68, !61, !53, !55, !56}
!67 = distinct !{!67, !65, !"_RINvMsa_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyEL_E8downcastNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsECs7p2uQeJxui2_9deltalake: argument 0"}
!68 = distinct !{!68, !62, !"_RNCINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsE0Cs7p2uQeJxui2_9deltalake: argument 0"}
!69 = !{!64, !61}
!70 = !{!67, !68, !53, !56}
!71 = !{!67, !64, !68, !61, !53, !56}
!72 = !{!68, !53, !56}
!73 = !{!68, !61, !53, !56}
!74 = !{!61, !56}
!75 = !{i8 0, i8 3}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsezwchj6CnTc_16futures_executor10local_pool12ThreadNotifyEE3newCs7p2uQeJxui2_9deltalake: argument 0"}
!78 = distinct !{!78, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsezwchj6CnTc_16futures_executor10local_pool12ThreadNotifyEE3newCs7p2uQeJxui2_9deltalake"}
!79 = !{!80, !82, !84, !86, !88, !90}
!80 = distinct !{!80, !81, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!81 = distinct !{!81, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!82 = distinct !{!82, !83, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtB1k_5alloc6SystemEECs7p2uQeJxui2_9deltalake: argument 0"}
!83 = distinct !{!83, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtB1k_5alloc6SystemEECs7p2uQeJxui2_9deltalake"}
!84 = distinct !{!84, !85, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtB1A_5alloc6SystemEEECs7p2uQeJxui2_9deltalake: argument 0"}
!85 = distinct !{!85, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtB1A_5alloc6SystemEEECs7p2uQeJxui2_9deltalake"}
!86 = distinct !{!86, !87, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs7p2uQeJxui2_9deltalake: argument 0"}
!87 = distinct !{!87, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs7p2uQeJxui2_9deltalake"}
!88 = distinct !{!88, !89, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsezwchj6CnTc_16futures_executor10local_pool12ThreadNotifyECs7p2uQeJxui2_9deltalake: argument 0"}
!89 = distinct !{!89, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsezwchj6CnTc_16futures_executor10local_pool12ThreadNotifyECs7p2uQeJxui2_9deltalake"}
!90 = distinct !{!90, !91, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCsezwchj6CnTc_16futures_executor10local_pool12ThreadNotifyEECs7p2uQeJxui2_9deltalake: argument 0"}
!91 = distinct !{!91, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCsezwchj6CnTc_16futures_executor10local_pool12ThreadNotifyEECs7p2uQeJxui2_9deltalake"}
!92 = !{!"branch_weights", i32 2, i32 384454443, i32 1762148129, i32 881074}
!93 = !{!94, !96}
!94 = distinct !{!94, !95, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsezwchj6CnTc_16futures_executor10local_pool12ThreadNotifyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!95 = distinct !{!95, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsezwchj6CnTc_16futures_executor10local_pool12ThreadNotifyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!96 = distinct !{!96, !97, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsezwchj6CnTc_16futures_executor10local_pool12ThreadNotifyEECs7p2uQeJxui2_9deltalake: argument 0"}
!97 = distinct !{!97, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsezwchj6CnTc_16futures_executor10local_pool12ThreadNotifyEECs7p2uQeJxui2_9deltalake"}
!98 = !{i64 0, i64 2}
!99 = !{!"branch_weights", i32 2, i32 0, i32 2146410441, i32 1073205}
!100 = !{!101, !103, !105, !107, !109, !111}
!101 = distinct !{!101, !102, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!102 = distinct !{!102, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!103 = distinct !{!103, !104, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerEECs7p2uQeJxui2_9deltalake: argument 0"}
!104 = distinct !{!104, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerEECs7p2uQeJxui2_9deltalake"}
!105 = distinct !{!105, !106, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake: argument 0"}
!106 = distinct !{!106, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake"}
!107 = distinct !{!107, !108, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake: argument 0"}
!108 = distinct !{!108, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake"}
!109 = distinct !{!109, !110, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEEECs7p2uQeJxui2_9deltalake: argument 0"}
!110 = distinct !{!110, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEEECs7p2uQeJxui2_9deltalake"}
!111 = distinct !{!111, !112, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEEECs7p2uQeJxui2_9deltalake: argument 0"}
!112 = distinct !{!112, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEEECs7p2uQeJxui2_9deltalake"}
!113 = !{i8 0, i8 2}
!114 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!115 = !{i64 1, i64 0}
!116 = !{!117, !119, !121, !123}
!117 = distinct !{!117, !118, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!118 = distinct !{!118, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!119 = distinct !{!119, !120, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtB1k_5alloc6SystemEECs7p2uQeJxui2_9deltalake: argument 0"}
!120 = distinct !{!120, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtB1k_5alloc6SystemEECs7p2uQeJxui2_9deltalake"}
!121 = distinct !{!121, !122, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtB1A_5alloc6SystemEEECs7p2uQeJxui2_9deltalake: argument 0"}
!122 = distinct !{!122, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtB1A_5alloc6SystemEEECs7p2uQeJxui2_9deltalake"}
!123 = distinct !{!123, !124, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs7p2uQeJxui2_9deltalake: argument 0"}
!124 = distinct !{!124, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs7p2uQeJxui2_9deltalake"}
!125 = !{!126, !128, !130, !132}
!126 = distinct !{!126, !127, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!127 = distinct !{!127, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!128 = distinct !{!128, !129, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtB1k_5alloc6SystemEECs7p2uQeJxui2_9deltalake: argument 0"}
!129 = distinct !{!129, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtB1k_5alloc6SystemEECs7p2uQeJxui2_9deltalake"}
!130 = distinct !{!130, !131, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtB1A_5alloc6SystemEEECs7p2uQeJxui2_9deltalake: argument 0"}
!131 = distinct !{!131, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs2pqxYH9ZEk8_3std6thread6thread5InnerNtNtB1A_5alloc6SystemEEECs7p2uQeJxui2_9deltalake"}
!132 = distinct !{!132, !133, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs7p2uQeJxui2_9deltalake: argument 0"}
!133 = distinct !{!133, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std6thread6thread6ThreadECs7p2uQeJxui2_9deltalake"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_RNCINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6removeNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataE0Cs7p2uQeJxui2_9deltalake: argument 0"}
!136 = distinct !{!136, !"_RNCINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6removeNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataE0Cs7p2uQeJxui2_9deltalake"}
!137 = !{!138}
!138 = distinct !{!138, !136, !"_RNCINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6removeNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataE0Cs7p2uQeJxui2_9deltalake: argument 1"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_RINvMsa_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyEL_E8downcastNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataECs7p2uQeJxui2_9deltalake: argument 1"}
!141 = distinct !{!141, !"_RINvMsa_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyEL_E8downcastNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataECs7p2uQeJxui2_9deltalake"}
!142 = !{!143, !140, !135, !138}
!143 = distinct !{!143, !141, !"_RINvMsa_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyEL_E8downcastNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataECs7p2uQeJxui2_9deltalake: argument 0"}
!144 = !{!140, !138}
!145 = !{!143, !135}
!146 = !{!135, !138}
end_hunk_3
