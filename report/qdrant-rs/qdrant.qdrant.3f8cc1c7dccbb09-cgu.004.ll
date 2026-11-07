Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.004?download=true
inline.NumInlined: 20024
inline.NumDeleted: 7135
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4sync4mpsc5StateINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2h_8response8ResponseB2Q_EIB3G_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6a_4SyncEL_EEB68_EL_EEEEECsl8OoimOLbh_6qdrant:bb.a
  invoke void @_RNvXs9_NtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chanINtB5_2TxINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB2Z_6future6future6Futurep6OutputINtNtB2Z_6result6ResultINtNtB1M_8response8ResponseB2l_EIB3r_DNtNtB2Z_5error5ErrorNtNtB2Z_6marker4SendNtB5Y_4SyncEL_EEB5W_EL_EEENtNtB7_7bounded9SemaphoreENtNtNtB2Z_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !1254, !nonnull !24, !noundef !24
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !1255
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %common.resume

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chan4ChanINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtCskKLDkoKarTP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB3z_6future6future6Futurep6OutputINtNtB3z_6result6ResultINtNtB2m_8response8ResponseB2V_EIB41_DNtNtB3z_5error5ErrorNtNtB3z_6marker4SendNtB6h_4SyncEL_EEB6f_EL_EEENtNtBL_7bounded9SemaphoreEE9drop_slowB2Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #28
          to label %common.resume unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !1258, !nonnull !24, !noundef !24
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !1259
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc7bounded6SenderINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2m_8response8ResponseB2V_EIB3L_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6f_4SyncEL_EEB6d_EL_EEEEECsl8OoimOLbh_6qdrant.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc7bounded6SenderINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2m_8response8ResponseB2V_EIB3L_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6f_4SyncEL_EEB6d_EL_EEEEECsl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.k, %bb.l, %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.n, %bb.k ], [ %i.n, %bb.l ], [ %i.k, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvXsh_NtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc7boundedINtB5_11OwnedPermitINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB3c_6future6future6Futurep6OutputINtNtB3c_6result6ResultINtNtB1Z_8response8ResponseB2y_EIB3E_DNtNtB3c_5error5ErrorNtNtB3c_6marker4SendNtB6b_4SyncEL_EEB69_EL_EEEENtNtNtB3c_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chan2TxINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2B_8response8ResponseB3a_EIB40_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6u_4SyncEL_EEB6s_EL_EEENtNtB12_7bounded9SemaphoreEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
          to label %common.resume unwind label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.l = load ptr, ptr %i.b, align 8, !alias.scope !1260, !noundef !24
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc7bounded6SenderINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2m_8response8ResponseB2V_EIB3L_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6f_4SyncEL_EEB6d_EL_EEEEECsl8OoimOLbh_6qdrant.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXs9_NtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chanINtB5_2TxINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB2Z_6future6future6Futurep6OutputINtNtB2Z_6result6ResultINtNtB1M_8response8ResponseB2l_EIB3r_DNtNtB2Z_5error5ErrorNtNtB2Z_6marker4SendNtB5Y_4SyncEL_EEB5W_EL_EEENtNtB7_7bounded9SemaphoreENtNtNtB2Z_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  %i.o = load ptr, ptr %i.b, align 8, !alias.scope !1263, !nonnull !24, !noundef !24
  %i.p = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !1264
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.l, label %common.resume

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chan4ChanINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtCskKLDkoKarTP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB3z_6future6future6Futurep6OutputINtNtB3z_6result6ResultINtNtB2m_8response8ResponseB2V_EIB41_DNtNtB3z_5error5ErrorNtNtB3z_6marker4SendNtB6h_4SyncEL_EEB6f_EL_EEENtNtBL_7bounded9SemaphoreEE9drop_slowB2Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #28
          to label %common.resume unwind label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  %i.r = load ptr, ptr %i.b, align 8, !alias.scope !1267, !nonnull !24, !noundef !24
  %i.s = atomicrmw add ptr %i.r, i64 -1 release, align 8, !noalias !1268
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc7bounded6SenderINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2m_8response8ResponseB2V_EIB3L_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6f_4SyncEL_EEB6d_EL_EEEEECsl8OoimOLbh_6qdrant.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc7bounded6SenderINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2m_8response8ResponseB2V_EIB3L_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6f_4SyncEL_EEB6d_EL_EEEEECsl8OoimOLbh_6qdrant.exit

bb.n:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.o:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB2I_15content_manager6errors12StorageErrorEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB2_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB2s_15content_manager6errors12StorageErrorEENtNtNtB1k_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB2i_15content_manager6errors12StorageErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB2v_15content_manager6errors12StorageErrorEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB2i_15content_manager6errors12StorageErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB2v_15content_manager6errors12StorageErrorEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtB4_6result6ResultNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB2_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEENtNtNtB1k_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleTjjjEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB2_17AbortOnDropHandleTjjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleTjjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleTjjjEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleTjjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleTjjjEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandlebEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB2_17AbortOnDropHandlebENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandlebENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandlebEECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandlebENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandlebEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder7DecoderINtNtBI_7payload7PayloadINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtBI_5error12PayloadErrorEEL_EEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.b, align 8, !range !48, !noundef !24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2 = load ptr, ptr %i.c, align 8            ; 54 uses
  %1 = icmp eq i64 %.val, -1
  br i1 %1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderEECsl8OoimOLbh_6qdrant.exit, label %2

2:                                                ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  switch i64 %.val, label %default.unreachable [
    i64 0, label %bb.k
    i64 1, label %bb.w
    i64 2, label %bb.at
    i64 3, label %bb.b
  ]

default.unreachable:                              ; preds = %bb.bb, %2
  unreachable

bb.b:                                             ; preds = %2
  %i.d = load i64, ptr %.val2, align 8, !range !28, !alias.scope !1311, !noundef !24
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsef1ZxLeSXfJ_4zstd6stream3raw7DecoderECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  invoke void @_RNvXs6_CslcsSwNUypC5_9zstd_safeNtB5_4DCtxNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsef1ZxLeSXfJ_4zstd6stream3raw7DecoderECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.val2, i64 40
  invoke void @_RNvXs0_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsef1ZxLeSXfJ_4zstd6stream3raw7DecoderECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.val2, i64 40
  invoke void @_RNvXs0_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterECsl8OoimOLbh_6qdrant.exit4.i.i.i.i.i unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.g, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #26
          to label %bb.j unwind label %bb.h

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsef1ZxLeSXfJ_4zstd6stream3raw7DecoderECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterECsl8OoimOLbh_6qdrant.exit4.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsef1ZxLeSXfJ_4zstd6stream3raw7DecoderECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsef1ZxLeSXfJ_4zstd6stream3zio6writer6WriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterNtNtBI_3raw7DecoderEECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterECsl8OoimOLbh_6qdrant.exit4.i.i.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsef1ZxLeSXfJ_4zstd6stream3zio6writer6WriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterNtNtBI_3raw7DecoderEECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterECsl8OoimOLbh_6qdrant.exit4.i.i.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCsef1ZxLeSXfJ_4zstd6stream5write7DecoderNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsef1ZxLeSXfJ_4zstd6stream3zio6writer6WriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterNtNtBI_3raw7DecoderEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.p, %bb.i ], [ %i.m, %bb.f ], [ %.pn.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 88, i64 noundef 8) #24
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCsef1ZxLeSXfJ_4zstd6stream5write7DecoderNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsef1ZxLeSXfJ_4zstd6stream3zio6writer6WriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterNtNtBI_3raw7DecoderEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 88, i64 noundef 8) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderEECsl8OoimOLbh_6qdrant.exit

bb.k:                                             ; preds = %2
  invoke void @_RNvXs4_NtCsl0S4h5MD44r_6flate23zioINtB5_6WriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterNtNtB7_3mem10DecompressENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.val2)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val2, i64 48 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1312, !noundef !24
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXs0_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i unwind label %bb.t

bb.n:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val2, i64 48 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1313, !noundef !24
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXs0_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %bb.q unwind label %bb.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.p, %bb.m, %bb.l
  %.pn.i.i.i4.i.i = phi { ptr, i32 } [ %i.y, %bb.p ], [ %i.q, %bb.m ], [ %i.q, %bb.l ]
  %i.x = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %.val4.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !1314, !nonnull !24, !noundef !24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i, i64 noundef 43296, i64 noundef 8) #24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.val2) #26
          to label %bb.v unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %.val.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !1314, !nonnull !24, !noundef !24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef 43296, i64 noundef 8) #24
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.val2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsl0S4h5MD44r_6flate23zio6WriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterNtNtBG_3mem10DecompressEECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.val2)
          to label %bb.v unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %bb.m
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsl0S4h5MD44r_6flate23zio6WriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterNtNtBG_3mem10DecompressEECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.q
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.val2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCsl0S4h5MD44r_6flate24zlib5write11ZlibDecoderNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsl0S4h5MD44r_6flate23zio6WriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterNtNtBG_3mem10DecompressEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i
  %eh.lpad-body.i5.i.i = phi { ptr, i32 } [ %i.ad, %bb.u ], [ %i.aa, %bb.r ], [ %.pn.i.i.i4.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 80, i64 noundef 8) #24
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCsl0S4h5MD44r_6flate24zlib5write11ZlibDecoderNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsl0S4h5MD44r_6flate23zio6WriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterNtNtBG_3mem10DecompressEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 80, i64 noundef 8) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderEECsl8OoimOLbh_6qdrant.exit

bb.w:                                             ; preds = %2
  invoke void @_RNvXs4_NtCsl0S4h5MD44r_6flate23zioINtB5_6WriterINtNtB7_3crc9CrcWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterENtNtB7_3mem10DecompressENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val2)
          to label %bb.z unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !range !58, !alias.scope !1315, !noundef !24
  %i.ah = icmp eq i32 %i.ag, 2
  br i1 %i.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsl0S4h5MD44r_6flate23crc9CrcWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ai = getelementptr inbounds nuw i8, ptr %.val2, i64 48
  invoke void @_RNvXs0_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsl0S4h5MD44r_6flate23crc9CrcWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i unwind label %bb.af

bb.z:                                             ; preds = %bb.w
  %i.aj = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !range !58, !alias.scope !1316, !noundef !24
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.am = getelementptr inbounds nuw i8, ptr %.val2, i64 48
  invoke void @_RNvXs0_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %bb.ac unwind label %bb.ab

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsl0S4h5MD44r_6flate23crc9CrcWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.ab, %bb.y, %bb.x
  %.pn.i.i.i6.i.i = phi { ptr, i32 } [ %i.ao, %bb.ab ], [ %i.ae, %bb.y ], [ %i.ae, %bb.x ]
  %i.an = getelementptr inbounds nuw i8, ptr %.val2, i64 80
  %.val4.i.i.i7.i.i = load ptr, ptr %i.an, align 8, !alias.scope !1317, !nonnull !24, !noundef !24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i7.i.i, i64 noundef 43296, i64 noundef 8) #24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val2) #26
          to label %.body.i.i.i.i unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsl0S4h5MD44r_6flate23crc9CrcWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %i.ap = getelementptr inbounds nuw i8, ptr %.val2, i64 80
  %.val.i.i.i9.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !1317, !nonnull !24, !noundef !24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i9.i.i, i64 noundef 43296, i64 noundef 8) #24
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val2)
          to label %.body.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.ac
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsl0S4h5MD44r_6flate23zio6WriterINtNtBG_3crc9CrcWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterENtNtBG_3mem10DecompressEECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.ag

bb.af:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsl0S4h5MD44r_6flate23crc9CrcWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %bb.y
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ag:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ag, %bb.ad, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsl0S4h5MD44r_6flate23crc9CrcWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.at, %bb.ag ], [ %i.aq, %bb.ad ], [ %.pn.i.i.i6.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsl0S4h5MD44r_6flate23crc9CrcWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.val2, i64 104
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au) #26
          to label %.body2.i.i.i.i unwind label %bb.aq

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsl0S4h5MD44r_6flate23zio6WriterINtNtBG_3crc9CrcWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterENtNtBG_3mem10DecompressEECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.val2, i64 104 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsl0S4h5MD44r_6flate23zio6WriterINtNtBG_3crc9CrcWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterENtNtBG_3mem10DecompressEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %.body2.i.i.i.i unwind label %bb.aj

bb.ai:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsl0S4h5MD44r_6flate23zio6WriterINtNtBG_3crc9CrcWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterENtNtBG_3mem10DecompressEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

.body2.i.i.i.i:                                   ; preds = %bb.ak, %bb.ah, %.body.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.az, %bb.ak ], [ %i.aw, %bb.ah ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.val2, i64 128
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsl0S4h5MD44r_6flate22gz14GzHeaderParserECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(104) %i.ay) #26
          to label %bb.as unwind label %bb.aq

bb.ak:                                            ; preds = %bb.ai
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body2.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  %i.ba = getelementptr inbounds nuw i8, ptr %.val2, i64 208
  %.val.i4.i.i.i.i = load i8, ptr %i.ba, align 8, !range !59, !alias.scope !1319, !noundef !24
  %i.bb = getelementptr inbounds nuw i8, ptr %.val2, i64 216
  %.val1.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !1319 ; 6 uses
  switch i8 %.val.i4.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsl0S4h5MD44r_6flate22gz14GzHeaderParserECsl8OoimOLbh_6qdrant.exit.i.i.i.i [
    i8 1, label %bb.al
    i8 2, label %bb.am
    i8 3, label %bb.an
    i8 4, label %bb.ao
    i8 5, label %bb.ap
  ]

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsl0S4h5MD44r_6flate23crc14impl_crc32fast3CrcEEECsl8OoimOLbh_6qdrant.exit.sink.split.i.i.i.i.i.i: ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef 24, i64 noundef 8) #24, !noalias !1318
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsl0S4h5MD44r_6flate22gz14GzHeaderParserECsl8OoimOLbh_6qdrant.exit.i.i.i.i

bb.al:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.bc = icmp eq ptr %.val1.i.i.i.i.i, null
  br i1 %i.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsl0S4h5MD44r_6flate22gz14GzHeaderParserECsl8OoimOLbh_6qdrant.exit.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsl0S4h5MD44r_6flate23crc14impl_crc32fast3CrcEEECsl8OoimOLbh_6qdrant.exit.sink.split.i.i.i.i.i.i

bb.am:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.bd = icmp eq ptr %.val1.i.i.i.i.i, null
  br i1 %i.bd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsl0S4h5MD44r_6flate22gz14GzHeaderParserECsl8OoimOLbh_6qdrant.exit.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsl0S4h5MD44r_6flate23crc14impl_crc32fast3CrcEEECsl8OoimOLbh_6qdrant.exit.sink.split.i.i.i.i.i.i

bb.an:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.be = icmp eq ptr %.val1.i.i.i.i.i, null
  br i1 %i.be, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsl0S4h5MD44r_6flate22gz14GzHeaderParserECsl8OoimOLbh_6qdrant.exit.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsl0S4h5MD44r_6flate23crc14impl_crc32fast3CrcEEECsl8OoimOLbh_6qdrant.exit.sink.split.i.i.i.i.i.i

bb.ao:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.bf = icmp eq ptr %.val1.i.i.i.i.i, null
  br i1 %i.bf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsl0S4h5MD44r_6flate22gz14GzHeaderParserECsl8OoimOLbh_6qdrant.exit.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsl0S4h5MD44r_6flate23crc14impl_crc32fast3CrcEEECsl8OoimOLbh_6qdrant.exit.sink.split.i.i.i.i.i.i

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.bg = icmp eq ptr %.val1.i.i.i.i.i, null
  br i1 %i.bg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsl0S4h5MD44r_6flate22gz14GzHeaderParserECsl8OoimOLbh_6qdrant.exit.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsl0S4h5MD44r_6flate23crc14impl_crc32fast3CrcEEECsl8OoimOLbh_6qdrant.exit.sink.split.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsl0S4h5MD44r_6flate22gz14GzHeaderParserECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsl0S4h5MD44r_6flate23crc14impl_crc32fast3CrcEEECsl8OoimOLbh_6qdrant.exit.sink.split.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.val2, i64 128
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsl0S4h5MD44r_6flate22gz8GzHeaderECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.bh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCsl0S4h5MD44r_6flate22gz5write9GzDecoderNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.ar

bb.aq:                                            ; preds = %.body2.i.i.i.i, %.body.i.i.i.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ar:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsl0S4h5MD44r_6flate22gz14GzHeaderParserECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.body2.i.i.i.i
  %eh.lpad-body.i8.i.i = phi { ptr, i32 } [ %i.bj, %bb.ar ], [ %.pn.i.i.i.i, %.body2.i.i.i.i ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 232, i64 noundef 8) #24
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCsl0S4h5MD44r_6flate22gz5write9GzDecoderNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsl0S4h5MD44r_6flate22gz14GzHeaderParserECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 232, i64 noundef 8) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderEECsl8OoimOLbh_6qdrant.exit

bb.at:                                            ; preds = %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  invoke void @_RNvXs5_NtCsp2A78R5H4l_19brotli_decompressor6writerINtB5_26DecompressorWriterCustomIoNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtB7_11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhENtNtB3n_9std_alloc13StandardAllocB4b_B4b_ENtNtNtB1q_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(2664) %.val2)
          to label %bb.aw unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val2, i64 40
  %.val10.i.i.i.i.i.i = load i64, ptr %i.bl, align 8, !alias.scope !1323, !noundef !24 ; 2 uses
  %i.bm = icmp eq i64 %.val10.i.i.i.i.i.i, 0
  br i1 %i.bm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bn = getelementptr inbounds nuw i8, ptr %.val2, i64 32
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !1323, !nonnull !24, !noundef !24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val10.i.i.i.i.i.i, i64 noundef 1) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.at
  %i.bo = getelementptr inbounds nuw i8, ptr %.val2, i64 40
  %.val8.i.i.i.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !1323, !noundef !24 ; 2 uses
  %i.bp = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %i.bp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhEECsl8OoimOLbh_6qdrant.exit11.i.i.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.bq = getelementptr inbounds nuw i8, ptr %.val2, i64 32
  %.val7.i.i.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !1323, !nonnull !24, !noundef !24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val8.i.i.i.i.i.i, i64 noundef 1) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhEECsl8OoimOLbh_6qdrant.exit11.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i: ; preds = %bb.av, %bb.au
  %i.br = load ptr, ptr %.val2, align 8, !alias.scope !1324, !noundef !24
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i
  invoke void @_RNvXs0_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(2664) %.val2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i unwind label %bb.bg

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhEECsl8OoimOLbh_6qdrant.exit11.i.i.i.i.i.i: ; preds = %bb.ax, %bb.aw
  %i.bt = load ptr, ptr %.val2, align 8, !alias.scope !1325, !noundef !24
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit13.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhEECsl8OoimOLbh_6qdrant.exit11.i.i.i.i.i.i
  invoke void @_RNvXs0_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(2664) %.val2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit13.i.i.i.i.i.i unwind label %bb.ba

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i: ; preds = %bb.ba, %bb.ay, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i
  %.pn2.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bw, %bb.ba ], [ %i.bk, %bb.ay ], [ %i.bk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.val2, i64 56
  %.val6.i.i.i.i.i.i = load ptr, ptr %i.bv, align 8, !alias.scope !1323, !noundef !24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant(ptr %.val6.i.i.i.i.i.i) #26
          to label %bb.be unwind label %bb.bg

bb.ba:                                            ; preds = %bb.az
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit13.i.i.i.i.i.i: ; preds = %bb.az, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhEECsl8OoimOLbh_6qdrant.exit11.i.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.val2, i64 56
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bx, align 8, !alias.scope !1323, !noundef !24 ; 4 uses
  %i.by = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.by, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsp2A78R5H4l_19brotli_decompressor6writer29DecompressorWriterCustomAllocNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhENtNtB2F_9std_alloc13StandardAllocB3t_B3t_EECsl8OoimOLbh_6qdrant.exit.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit13.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1323
  %i.bz = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.ca = and i64 %i.bz, 3
  switch i64 %i.ca, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i
    i64 3, label %bb.bc
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i
    i64 1, label %bb.bd
  ], !prof !46

bb.bc:                                            ; preds = %bb.bb
  %i.cb = icmp ult ptr %.val.i.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.cc = and i64 %i.bz, 1095216660480
  %i.cd = icmp ne i64 %i.cc, 1095216660480
  tail call void @llvm.assume(i1 %i.cb)
  tail call void @llvm.assume(i1 %i.cd)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.ce = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ce, ptr %i.cf, align 8, !alias.scope !1326, !noalias !1323
  store i8 3, ptr %i.a, align 8, !alias.scope !1326, !noalias !1323
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i unwind label %bb.bf

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i: ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1323
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsp2A78R5H4l_19brotli_decompressor6writer29DecompressorWriterCustomAllocNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhENtNtB2F_9std_alloc13StandardAllocB3t_B3t_EECsl8OoimOLbh_6qdrant.exit.i.i.i.i

bb.be:                                            ; preds = %bb.bf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i
  %.pn4.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ch, %bb.bf ], [ %.pn2.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.val2, i64 64
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsp2A78R5H4l_19brotli_decompressor5state11BrotliStateNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocB1x_B1x_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(2600) %i.cg) #26
          to label %bb.bi unwind label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bg:                                            ; preds = %bb.be, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, %bb.ay
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsp2A78R5H4l_19brotli_decompressor6writer29DecompressorWriterCustomAllocNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhENtNtB2F_9std_alloc13StandardAllocB3t_B3t_EECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsp2A78R5H4l_19brotli_decompressor11io_wrappers12IntoIoWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit13.i.i.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.val2, i64 64
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsp2A78R5H4l_19brotli_decompressor5state11BrotliStateNtNtCskMyW5b6jnKh_12alloc_stdlib9std_alloc13StandardAllocB1x_B1x_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(2600) %i.cj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsp2A78R5H4l_19brotli_decompressor6writer18DecompressorWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsp2A78R5H4l_19brotli_decompressor6writer29DecompressorWriterCustomAllocNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhENtNtB2F_9std_alloc13StandardAllocB3t_B3t_EECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.be
  %eh.lpad-body.i10.i.i = phi { ptr, i32 } [ %i.ck, %bb.bh ], [ %.pn4.i.i.i.i.i.i, %bb.be ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 2664, i64 noundef 8) #24
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsp2A78R5H4l_19brotli_decompressor6writer18DecompressorWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsp2A78R5H4l_19brotli_decompressor6writer29DecompressorWriterCustomAllocNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterINtNtCskMyW5b6jnKh_12alloc_stdlib10heap_alloc7WrapBoxhENtNtB2F_9std_alloc13StandardAllocB3t_B3t_EECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 2664, i64 noundef 8) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderEECsl8OoimOLbh_6qdrant.exit

.body:                                            ; preds = %bb.j, %bb.v, %bb.as, %bb.bi
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i10.i.i, %bb.bi ], [ %eh.lpad-body.i.i.i, %bb.j ], [ %eh.lpad-body.i5.i.i, %bb.v ], [ %eh.lpad-body.i8.i.i, %bb.as ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6EFb6a2W5dE_10actix_http7payload7PayloadINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtBG_5error12PayloadErrorEEL_EEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #26
          to label %bb.bj unwind label %bb.bo

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCsp2A78R5H4l_19brotli_decompressor6writer18DecompressorWriterNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCsl0S4h5MD44r_6flate22gz5write9GzDecoderNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCsl0S4h5MD44r_6flate24zlib5write11ZlibDecoderNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCsef1ZxLeSXfJ_4zstd6stream5write7DecoderNtNtCs6EFb6a2W5dE_10actix_http8encoding6WriterEEECsl8OoimOLbh_6qdrant.exit.i.i, %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6EFb6a2W5dE_10actix_http7payload7PayloadINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtBG_5error12PayloadErrorEEL_EEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0)
          to label %bb.bm unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bl, %.body
  %.pn = phi { ptr, i32 } [ %i.co, %bb.bl ], [ %eh.lpad-body, %.body ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !1327, !noundef !24
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTIBC_NtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderENtNtNtB4_2io5error5ErrorEEEECsl8OoimOLbh_6qdrant.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultTINtNtB1a_6option6OptionNtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderENtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cl)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTIBC_NtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderENtNtNtB4_2io5error5ErrorEEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.bo

bb.bl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderEECsl8OoimOLbh_6qdrant.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderEECsl8OoimOLbh_6qdrant.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !1328, !noundef !24
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTIBC_NtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderENtNtNtB4_2io5error5ErrorEEEECsl8OoimOLbh_6qdrant.exit3, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultTINtNtB1a_6option6OptionNtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderENtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cp)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTIBC_NtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderENtNtNtB4_2io5error5ErrorEEEECsl8OoimOLbh_6qdrant.exit3

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTIBC_NtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderENtNtNtB4_2io5error5ErrorEEEECsl8OoimOLbh_6qdrant.exit3: ; preds = %bb.bm, %bb.bn
  ret void

bb.bo:                                            ; preds = %bb.bk, %.body
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTIBC_NtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderENtNtNtB4_2io5error5ErrorEEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.bj, %bb.bk
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs6EFb6a2W5dE_10actix_http9responses8response8ResponseNtNtNtBI_4body5boxed7BoxBodyEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXs2_NtNtCs6EFb6a2W5dE_10actix_http9responses4headNtB5_17BoxedResponseHeadNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val1.i = load ptr, ptr %i.a, align 8, !alias.scope !1339, !align !31, !noundef !24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs6EFb6a2W5dE_10actix_http9responses4head12ResponseHeadEEECsl8OoimOLbh_6qdrant(ptr %.val1.i) #26
          to label %.body unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1339, !align !31, !noundef !24 ; 4 uses
end_hunk_0
begin_hunk_1_@_RNCNCINvNtCsgoPClq0H8JF_9actix_web7handler15handler_serviceNvNvXs2_NtNtNtCsl8OoimOLbh_6qdrant5actix3api9quota_apiNtB13_13update_quotasNtNtB8_7service18HttpServiceFactory8register13update_quotasTINtNtB8_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherENtNtB17_4auth9ActixAuthINtNtCs93fV3EiCHxi_19actix_web_validator5query5QueryNtB13_11QuotaParamsEINtNtB4F_4json4JsonNtNtNtCs5QaNqjAn6vc_5shard5quota6config11QuotaConfigEEE00B19_:bb.a
  %.phi.trans.insert12.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3922
  %.sroa.02.0.copyload.i.i.pre.i.i.i.i = load i56, ptr %.phi.trans.insert12.i.i.i.i, align 2, !noalias !28597
  br label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !28597
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1387.i.i.i.i.i.i)
  br label %bb.cr

bb.be:                                            ; preds = %._crit_edge.i.i.i.i, %.thread88.i.i.i.i.i
  %.sroa.02.0.copyload.i.i.i.i.i.i = phi i56 [ %.sroa.09.0.copyload.i.i.i.i.i, %.thread88.i.i.i.i.i ], [ %.sroa.02.0.copyload.i.i.pre.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.eb = phi ptr [ %i.dv, %.thread88.i.i.i.i.i ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ] ; 6 uses
  %i.ec = phi ptr [ %.sroa.1053.0..sroa_idx.i.i.i.i.i, %.thread88.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i.i, %._crit_edge.i.i.i.i ] ; 16 uses
  %i.ed = phi ptr [ %i.dz, %.thread88.i.i.i.i.i ], [ %i.ea, %._crit_edge.i.i.i.i ] ; 17 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 3920 ; 4 uses
  store i8 0, ptr %i.ee, align 8, !noalias !28597
  %i.ef = getelementptr i8, ptr %i.eb, i64 320
  %.val34.i.i.i.i.i.i = load i64, ptr %i.ef, align 8, !range !28, !noalias !28598, !noundef !24
  %.not.i26.i.i.i.i.i = icmp eq i64 %.val34.i.i.i.i.i.i, 0
  br i1 %.not.i26.i.i.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 3929
  %i.eh = load i8, ptr %i.eg, align 1, !range !26, !noalias !28597, !noundef !24
  %i.ei = trunc nuw i8 %i.eh to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !28597
  store i8 1, ptr %i.ee, align 8, !noalias !28597
  %i.ej = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i56 %.sroa.02.0.copyload.i.i.i.i.i.i, ptr %i.ej, align 8, !noalias !28597
  store i64 -9223372036854775803, ptr %i.k, align 8, !noalias !28597
  br i1 %i.ei, label %bb.bn, label %bb.bm

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !28597
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 616
  %.val33.i.i.i.i.i.i = load ptr, ptr %i.ek, align 8, !noalias !28598, !nonnull !24, !noundef !24
  %i.el = getelementptr inbounds nuw i8, ptr %.val33.i.i.i.i.i.i, i64 16
  invoke void @_RNvMs0_NtNtCs5QaNqjAn6vc_5shard5quota7managerNtB5_12QuotaManager10set_config(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m, ptr noundef nonnull align 8 %i.el, i56 %.sroa.02.0.copyload.i.i.i.i.i.i)
          to label %bb.bi unwind label %bb.bh, !noalias !28598

bb.bh:                                            ; preds = %bb.bg
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !28597
  br label %bb.co

bb.bi:                                            ; preds = %bb.bg
  %i.en = load i64, ptr %i.m, align 8, !range !37, !alias.scope !28599, !noalias !28597, !noundef !24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.en, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.sroa.7.0..sroa_idx65.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !28597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx65.i.i.i.i.i.i, i64 24, i1 false), !noalias !28597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !28597
  store i64 %i.en, ptr %i.l, align 8, !noalias !28597
  invoke void @_RNvXs_NtNtCsgGgPqgSfnMH_7storage15content_manager6errorsNtB4_12StorageErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs5QaNqjAn6vc_5shard5quota5error10QuotaErrorE4from(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.l)
          to label %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtCs5QaNqjAn6vc_5shard5quota5error10QuotaErrorEE13from_residualCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i unwind label %bb.bl, !noalias !28598

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !28597
  br label %.thread71.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !28597
  br label %bb.co

_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtCs5QaNqjAn6vc_5shard5quota5error10QuotaErrorEE13from_residualCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !28597
  %.sroa.054.0.copyload55.pr.pre.i.i.i.i.i = load i32, ptr %i.e, align 8, !noalias !28600
  br label %bb.dq

bb.bm:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !28597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !28597
  invoke void @_RNvMNtNtCsgGgPqgSfnMH_7storage15content_manager3tocNtB2_14TableOfContent29get_consensus_proposal_sender(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noundef nonnull align 8 %i.eb)
          to label %bb.bq unwind label %bb.bp, !noalias !28598

bb.bn:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !28597
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eb, i64 752 ; 8 uses
  %i.eq = cmpxchg weak ptr %i.ep, i8 0, i8 1 acquire monotonic, align 1, !noalias !28598
  %i.er = extractvalue { i8, i1 } %i.eq, 1
  br i1 %i.er, label %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i.i.i.i.i.i.i, label %bb.bo, !prof !29

bb.bo:                                            ; preds = %bb.bn
  %i.es = invoke noundef zeroext i1 @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 %i.ep, i64 undef, i32 noundef -1)
          to label %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i.i.i.i.i.i.i unwind label %bb.by, !noalias !28598 ; 0 uses

_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i.i.i.i.i.i.i: ; preds = %bb.bo, %bb.bn
  %i.et = ptrtoint ptr %i.ep to i64               ; 3 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.et)
          to label %bb.bz unwind label %bb.by, !noalias !28598

bb.bp:                                            ; preds = %bb.bm
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !28597
  br label %bb.bw

bb.bq:                                            ; preds = %bb.bm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28601)
  %i.ev = load i32, ptr %i.g, align 8, !range !54, !alias.scope !28602, !noalias !28597, !noundef !24 ; 3 uses
  %.not.i42.i.i.i.i.i.i = icmp eq i32 %i.ev, -1
  br i1 %.not.i42.i.i.i.i.i.i, label %bb.br, label %bb.bx

bb.br:                                            ; preds = %bb.bq
  %i.ew = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !alias.scope !28602, !noalias !28597, !nonnull !24, !align !31, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !28597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !28597
  store i8 0, ptr %i.ee, align 8, !noalias !28597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.k, i64 96, i1 false), !noalias !28597
  invoke void @_RNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager9consensus16operation_senderNtB2_15OperationSender4send(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.h, ptr noundef nonnull align 8 %i.ex, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.f)
          to label %bb.bt unwind label %bb.bs, !noalias !28598

bb.bs:                                            ; preds = %bb.br
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !28597
  br label %bb.bw

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !28597
  %i.ez = load i32, ptr %i.h, align 8, !range !54, !alias.scope !28603, !noalias !28597, !noundef !24 ; 3 uses
  %.not.i43.i.i.i.i.i.i = icmp eq i32 %i.ez, -1
  br i1 %.not.i43.i.i.i.i.i.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !28597
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i: ; preds = %bb.dc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i, %bb.bu
  %i.fa = phi ptr [ %i.gm, %bb.dc ], [ %i.gm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i ], [ %i.ec, %bb.bu ]
  %i.fb = phi ptr [ %i.gn, %bb.dc ], [ %i.gn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i ], [ %i.ed, %bb.bu ]
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 3920
  store i8 0, ptr %i.fc, align 8, !noalias !28597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !28597
  br label %.thread71.i.i.i.i.i

bb.bv:                                            ; preds = %bb.bt
  %.sroa.8112.0..sroa_idx113.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.5129.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.5129.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.8112.0..sroa_idx113.i.i.i.i.i.i, i64 52, i1 false), !noalias !28597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !28597
  store i32 %i.ez, ptr %i.e, align 8, !alias.scope !28604, !noalias !28597
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherECsl8OoimOLbh_6qdrant.exit63.i.i.i.i.i.i

bb.bw:                                            ; preds = %bb.bs, %bb.bp
  %.pn9.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ey, %bb.bs ], [ %i.eu, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !28597
  br label %.body56.i.i.i.i.i.i

bb.bx:                                            ; preds = %bb.bq
  %.sroa.8116.0..sroa_idx117.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.8116.0.copyload118.i.i.i.i.i.i = load i32, ptr %.sroa.8116.0..sroa_idx117.i.i.i.i.i.i, align 4, !alias.scope !28605, !noalias !28597
  %.sroa.8119.0..sroa_idx120.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.8119.0.copyload121.i.i.i.i.i.i = load ptr, ptr %.sroa.8119.0..sroa_idx120.i.i.i.i.i.i, align 8, !alias.scope !28605, !noalias !28597
  %.sroa.10122.0..sroa_idx123.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.7127.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7127.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10122.0..sroa_idx123.i.i.i.i.i.i, i64 40, i1 false), !noalias !28597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !28597
  store i32 %i.ev, ptr %i.e, align 8, !alias.scope !28606, !noalias !28597
  %.sroa.5125.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.sroa.8116.0.copyload118.i.i.i.i.i.i, ptr %.sroa.5125.0..sroa_idx.i.i.i.i.i.i, align 4, !alias.scope !28606, !noalias !28597
  %.sroa.6126.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.8119.0.copyload121.i.i.i.i.i.i, ptr %.sroa.6126.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !28606, !noalias !28597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !28597
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherECsl8OoimOLbh_6qdrant.exit63.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherECsl8OoimOLbh_6qdrant.exit63.i.i.i.i.i.i: ; preds = %bb.di, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit.i59.i.i.i.i.i.i, %bb.cm, %.noexc49.i.i.i.i.i.i, %bb.bx, %bb.bv
  %i.fd = phi ptr [ %i.ec, %.noexc49.i.i.i.i.i.i ], [ %i.ec, %bb.cm ], [ %i.ec, %bb.bv ], [ %i.ec, %bb.bx ], [ %i.gm, %bb.di ], [ %i.gm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit.i59.i.i.i.i.i.i ] ; 2 uses
  %i.fe = phi ptr [ %i.ed, %.noexc49.i.i.i.i.i.i ], [ %i.ed, %bb.cm ], [ %i.ed, %bb.bv ], [ %i.ed, %bb.bx ], [ %i.gn, %bb.di ], [ %i.gn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit.i59.i.i.i.i.i.i ] ; 2 uses
  %.sroa.054.0.copyload55.pr82.i.i.i.i.i = phi i32 [ %.pr.i.i.i.i.i.i, %.noexc49.i.i.i.i.i.i ], [ %.pr.i.i.i.i.i.i, %bb.cm ], [ %i.ez, %bb.bv ], [ %i.ev, %bb.bx ], [ %.sroa.085.0.copyload.i.i.i.i.i.i, %bb.di ], [ %.sroa.085.0.copyload.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit.i59.i.i.i.i.i.i ]
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 3920 ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 8, !range !26, !noalias !28597, !noundef !24
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.dl, label %bb.dk

.body56.i.i.i.i.i.i:                              ; preds = %bb.dh, %bb.dg, %bb.de, %bb.db, %bb.da, %bb.ck, %bb.cf, %bb.by, %bb.bw
  %i.fi = phi ptr [ %i.gm, %bb.dg ], [ %i.ec, %bb.bw ], [ %i.ge, %bb.ck ], [ %i.gm, %bb.da ], [ %i.gm, %bb.db ], [ %i.hf, %bb.de ], [ %i.gm, %bb.dh ], [ %i.ec, %bb.by ], [ %i.ec, %bb.cf ] ; 2 uses
  %i.fj = phi ptr [ %i.gn, %bb.dg ], [ %i.ed, %bb.bw ], [ %i.gf, %bb.ck ], [ %i.gn, %bb.da ], [ %i.gn, %bb.db ], [ %i.hg, %bb.de ], [ %i.gn, %bb.dh ], [ %i.ed, %bb.by ], [ %i.ed, %bb.cf ] ; 2 uses
  %.pn27.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.hi, %bb.dg ], [ %.pn9.pn.i.i.i.i.i.i, %bb.bw ], [ %.pn22.pn.i.i.i.i.i.i, %bb.ck ], [ %i.gv, %bb.da ], [ %i.gv, %bb.db ], [ %i.hh, %bb.de ], [ %i.hi, %bb.dh ], [ %i.fn, %bb.by ], [ %i.fv, %bb.cf ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 3920
  %i.fl = load i8, ptr %i.fk, align 8, !range !26, !noalias !28597, !noundef !24
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.do, label %bb.dm

bb.by:                                            ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i.i.i.i.i.i.i, %bb.bo
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !28597
  br label %.body56.i.i.i.i.i.i

bb.bz:                                            ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i.i.i.i.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eb, i64 760
  %.val36.i.i.i.i.i.i = load ptr, ptr %i.fo, align 8, !noalias !28598, !noundef !24 ; 4 uses
  %i.fp = getelementptr i8, ptr %i.eb, i64 768
  %.val37.i.i.i.i.i.i = load ptr, ptr %i.fp, align 8, !noalias !28598 ; 3 uses
  %magicptr.i.i.i.i.i.i.i = ptrtoint ptr %.val36.i.i.i.i.i.i to i64
  switch i64 %magicptr.i.i.i.i.i.i.i, label %bb.ca [
    i64 0, label %bb.cd
    i64 -1, label %_RNvXsL_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i
  ]

bb.ca:                                            ; preds = %bb.bz
  %i.fq = getelementptr inbounds nuw i8, ptr %.val36.i.i.i.i.i.i, i64 8
  %i.fr = atomicrmw add ptr %i.fq, i64 1 monotonic, align 8, !noalias !28598
  %i.fs = icmp slt i64 %i.fr, 0
  br i1 %i.fs, label %bb.cb, label %_RNvXsL_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i

bb.cb:                                            ; preds = %bb.ca
  tail call void @llvm.trap()
  unreachable

_RNvXsL_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ca, %bb.bz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val37.i.i.i.i.i.i) ]
  %i.ft = atomicrmw add ptr %.val37.i.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !28598
  %i.fu = icmp slt i64 %i.ft, 0
  br i1 %i.fu, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %_RNvXsL_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.cd:                                            ; preds = %_RNvXsL_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i, %bb.bz
  %.sroa.3.0.i.i.i.i.i.i.i = phi ptr [ undef, %bb.bz ], [ %.val37.i.i.i.i.i.i, %_RNvXsL_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i44.i.i.i.i.i.i = icmp eq ptr %.val36.i.i.i.i.i.i, null
  br i1 %.not.i44.i.i.i.i.i.i, label %bb.ce, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit.thread.i.i.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit.thread.i.i.i.i.i.i: ; preds = %bb.cd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i.i.i.i.i) ]
  br label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvMNtNtCsgGgPqgSfnMH_7storage15content_manager6errorsNtB2_12StorageError15standalone_mode(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i unwind label %bb.cf, !noalias !28598

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i: ; preds = %bb.ce
  %.pr.i.i.i.i.i.i = load i32, ptr %i.j, align 8, !alias.scope !28607, !noalias !28597 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28608)
  %.not.i46.i.i.i.i.i.i = icmp eq i32 %.pr.i.i.i.i.i.i, -1
  br i1 %.not.i46.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit._crit_edge.i.i.i.i.i.i, label %bb.cl

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit._crit_edge.i.i.i.i.i.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !28607, !noalias !28597
  %.phi.trans.insert155.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.pre156.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert155.i.i.i.i.i.i, align 8, !alias.scope !28607, !noalias !28597
  br label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !28597
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexINtNtB4_6option6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherEEECsl8OoimOLbh_6qdrant(ptr nonnull %i.ep) #26
          to label %.body56.i.i.i.i.i.i unwind label %bb.cn, !noalias !28598

bb.cg:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit._crit_edge.i.i.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit.thread.i.i.i.i.i.i
  %i.fw = phi ptr [ %.pre156.i.i.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit._crit_edge.i.i.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit.thread.i.i.i.i.i.i ]
  %i.fx = phi ptr [ %.pre.i.i.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit._crit_edge.i.i.i.i.i.i ], [ %.val36.i.i.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit.thread.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !28597
  store ptr %i.fx, ptr %i.ed, align 8, !noalias !28597
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 3352 ; 2 uses
  store ptr %i.fw, ptr %i.fy, align 8, !noalias !28597
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.et)
          to label %.noexc47.i.i.i.i.i.i unwind label %bb.ci, !noalias !28598

.noexc47.i.i.i.i.i.i:                             ; preds = %bb.cg
  %i.fz = cmpxchg ptr %i.ep, i8 1, i8 0 release monotonic, align 1, !noalias !28598
  %i.ga = extractvalue { i8, i1 } %i.fz, 1
  br i1 %i.ga, label %bb.cj, label %bb.ch, !prof !29

bb.ch:                                            ; preds = %.noexc47.i.i.i.i.i.i
  invoke void @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.ep, i1 noundef zeroext false)
          to label %bb.cj unwind label %bb.ci, !noalias !28598

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch, %.noexc47.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1387.i.i.i.i.i.i)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.fy, align 8, !noalias !28597, !nonnull !24, !noundef !24
  %i.gc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 16
  store i8 0, ptr %i.ee, align 8, !noalias !28597
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 3360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.gd, ptr noundef nonnull align 8 dereferenceable(96) %i.k, i64 96, i1 false), !noalias !28597
  %.sroa.998.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3464
  store i32 -1, ptr %.sroa.998.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !28597
  %.sroa.11100.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3472
  store ptr %i.gc, ptr %.sroa.11100.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !28597
  %.sroa.13101.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3600
  store i8 0, ptr %.sroa.13101.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !28597
  br label %bb.cr

bb.ck:                                            ; preds = %.body.i.i.i.i.i.i, %bb.ci
  %i.ge = phi ptr [ %i.gm, %.body.i.i.i.i.i.i ], [ %i.ec, %bb.ci ]
  %i.gf = phi ptr [ %i.gn, %.body.i.i.i.i.i.i ], [ %i.ed, %bb.ci ] ; 2 uses
  %.pn22.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn19.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.gb, %bb.ci ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gf) #26
          to label %.body56.i.i.i.i.i.i unwind label %bb.cn, !noalias !28598

bb.cl:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i
  %.sroa.9.0..sroa_idx68.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.9.0.copyload69.i.i.i.i.i.i = load i32, ptr %.sroa.9.0..sroa_idx68.i.i.i.i.i.i, align 4, !alias.scope !28609, !noalias !28597
  %.sroa.970.0..sroa_idx71.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.13.0..sroa_idx75.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.0..sroa_idx75.i.i.i.i.i.i, i64 32, i1 false), !noalias !28597
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.gg = load <2 x ptr>, ptr %.sroa.970.0..sroa_idx71.i.i.i.i.i.i, align 8, !alias.scope !28609, !noalias !28597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !28597
  store i32 %.pr.i.i.i.i.i.i, ptr %i.e, align 8, !alias.scope !28610, !noalias !28597
  store i32 %.sroa.9.0.copyload69.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 4, !alias.scope !28610, !noalias !28597
  store <2 x ptr> %i.gg, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !28610, !noalias !28597
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.et)
          to label %.noexc49.i.i.i.i.i.i unwind label %bb.de, !noalias !28598

.noexc49.i.i.i.i.i.i:                             ; preds = %bb.cl
  %i.gh = cmpxchg ptr %i.ep, i8 1, i8 0 release monotonic, align 1, !noalias !28598
  %i.gi = extractvalue { i8, i1 } %i.gh, 1
  br i1 %i.gi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherECsl8OoimOLbh_6qdrant.exit63.i.i.i.i.i.i, label %bb.cm, !prof !29

bb.cm:                                            ; preds = %.noexc49.i.i.i.i.i.i
  invoke void @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.ep, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherECsl8OoimOLbh_6qdrant.exit63.i.i.i.i.i.i unwind label %bb.de, !noalias !28598

bb.cn:                                            ; preds = %bb.do, %bb.cs, %bb.ck, %bb.cf
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !28598
  unreachable

bb.co:                                            ; preds = %bb.dm, %bb.bl, %bb.bh
  %i.gk = phi ptr [ %i.hs, %bb.dm ], [ %i.ec, %bb.bl ], [ %i.ec, %bb.bh ]
  %i.gl = phi ptr [ %i.ht, %bb.dm ], [ %i.ed, %bb.bl ], [ %i.ed, %bb.bh ]
  %.pn30.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn30.i.i.i.i.i.i, %bb.dm ], [ %i.eo, %bb.bl ], [ %i.em, %bb.bh ]
  store i8 2, ptr %i.gk, align 1, !noalias !28597
  br label %.body.i.i.i.i.i

bb.cp:                                            ; preds = %bb.bc
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @400) #29
          to label %.noexc.i.i.i.i.i unwind label %bb.dp, !noalias !28592

.noexc.i.i.i.i.i:                                 ; preds = %bb.cp
  unreachable

bb.cq:                                            ; preds = %bb.bc
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @400) #29
          to label %.noexc27.i.i.i.i.i unwind label %bb.dp, !noalias !28592

.noexc27.i.i.i.i.i:                               ; preds = %bb.cq
  unreachable

bb.cr:                                            ; preds = %bb.cj, %bb.bd
  %i.gm = phi ptr [ %i.ec, %bb.cj ], [ %.phi.trans.insert.i.i.i.i.i, %bb.bd ] ; 12 uses
  %i.gn = phi ptr [ %i.ed, %bb.cj ], [ %i.ea, %bb.bd ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !28597
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 3360 ; 3 uses
  invoke fastcc void @_RNCNvMs_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerINtB6_16ConsensusManagerNtNtB8_3toc14TableOfContentE31propose_consensus_op_with_await0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.i, ptr noundef nonnull align 8 %i.go, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ct unwind label %bb.cs, !noalias !28598

bb.cs:                                            ; preds = %bb.cr
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !28597
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerINtBI_16ConsensusManagerNtNtBK_3toc14TableOfContentE31propose_consensus_op_with_await0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.go) #26
          to label %.body.i.i.i.i.i.i unwind label %bb.cn, !noalias !28598

bb.ct:                                            ; preds = %bb.cr
  %i.gq = load i32, ptr %i.i, align 8, !range !68, !noalias !28597, !noundef !24 ; 3 uses
  %i.gr = icmp eq i32 %i.gq, -2
  br i1 %i.gr, label %.thread.i.i.i.i.i, label %bb.cu

.thread.i.i.i.i.i:                                ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !28597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !28597
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1387.i.i.i.i.i.i)
  store i8 3, ptr %i.gm, align 1, !noalias !28597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28591
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i)
  br label %.thread.i.i

bb.cu:                                            ; preds = %bb.ct
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.3.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !28597
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %.sroa.4.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(51) %.sroa.4.0..sroa_idx.i.i.i.i.i.i, i64 51, i1 false), !noalias !28597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !28597
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerINtBI_16ConsensusManagerNtNtBK_3toc14TableOfContentE31propose_consensus_op_with_await0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.go)
          to label %bb.cw unwind label %bb.cv, !noalias !28598

.body.i.i.i.i.i.i:                                ; preds = %bb.cy, %bb.cv, %bb.cs
  %.pn19.i.i.i.i.i.i = phi { ptr, i32 } [ %i.gp, %bb.cs ], [ %i.gs, %bb.cv ], [ %i.gt, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1387.i.i.i.i.i.i)
  br label %bb.ck

bb.cv:                                            ; preds = %_RNCNCNvMNtNtCsgGgPqgSfnMH_7storage15content_manager3tocNtB6_14TableOfContent19update_quota_config00Csl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i, %bb.cu
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

bb.cw:                                            ; preds = %bb.cu
end_hunk_1
begin_hunk_2_@_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4_15ShardReplicaSet14is_queue_proxy0Csl8OoimOLbh_6qdrant:bb.a

bb.p:                                             ; preds = %bb.m
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.i, %bb.j, %bb.n
  %i.ae = load i64, ptr %i.l, align 8, !range !43, !noundef !24 ; 3 uses
  %.not = icmp eq i64 %i.ae, -1
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = icmp ne i64 %i.ae, 4
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ae, 5
  %i.ah = zext i1 %i.ag to i8
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.sroa.05.0 = phi i8 [ %i.ah, %bb.r ], [ 0, %bb.q ]
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1l_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %common.ret unwind label %bb.t

.body:                                            ; preds = %bb.g, %bb.l, %bb.m, %bb.t
  %.pn12 = phi { ptr, i32 } [ %i.ai, %bb.t ], [ %i.s, %bb.l ], [ %i.i, %bb.g ], [ %i.s, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.b, align 8
  resume { ptr, i32 } %.pn12

bb.t:                                             ; preds = %bb.o, %bb.s
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4_15ShardReplicaSet27calculate_local_shard_stats0Csl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [144 x i8], align 8               ; 4 uses
  %i.c = alloca [144 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 12 uses
  %.sroa.12 = alloca [16 x i8], align 8           ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !range !34, !noundef !24
  switch i8 %i.k, label %default.unreachable68 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.b
    i8 4, label %bb.c
  ]

default.unreachable68:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  br label %bb.ah

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.l, align 8
  %i.m = load ptr, ptr %1, align 8, !nonnull !24, !align !31, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 432
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.n, ptr %i.o, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.ae, %bb.o, %bb.n, %.body30, %bb.h
  %.pn16 = phi { ptr, i32 } [ %eh.lpad-body31, %.body30 ], [ %i.r, %bb.h ], [ %i.ab, %bb.n ], [ %i.bg, %bb.ae ], [ %i.ab, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  br label %bb.ag

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @366) #29
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @366) #29
  unreachable

bb.g:                                             ; preds = %bb.b, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.q = invoke fastcc { ptr, ptr } @_RNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtB7_6RwLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE4read0Csl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.p, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE4read0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.p) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.af

bb.i:                                             ; preds = %bb.g
  %i.s = extractvalue { ptr, ptr } %i.q, 0        ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %bb.k

common.ret:                                       ; preds = %bb.aq, %bb.ak, %bb.j
  %.sink = phi i8 [ 1, %bb.aq ], [ 4, %bb.ak ], [ 3, %bb.j ]
  store i8 %.sink, ptr %i.j, align 1
  ret void

bb.j:                                             ; preds = %bb.i
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  %i.u = extractvalue { ptr, ptr } %i.q, 1
  store ptr %i.s, ptr %i.h, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.x = load i8, ptr %i.w, align 8, !range !35, !noundef !24
  %cond.i = icmp eq i8 %i.x, 3
  br i1 %cond.i, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.z = load i8, ptr %i.y, align 8, !range !35, !noundef !24
  %cond.i.i = icmp eq i8 %i.z, 3
  br i1 %cond.i.i, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.aa)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val2.i.i.i = load ptr, ptr %i.ac, align 8, !align !31, !noundef !24 ; 2 uses
  %i.ad = icmp eq ptr %.val2.i.i.i, null
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr i8, ptr %1, i64 48
  %.val3.i.i.i = load ptr, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !24, !noundef !24
  invoke void %i.ag(ptr noundef %.val3.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.r, !inline_history !4

bb.p:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i = load ptr, ptr %i.ah, align 8, !align !31, !noundef !24 ; 2 uses
  %i.ai = icmp eq ptr %.val.i.i.i, null
  br i1 %i.ai, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr i8, ptr %1, i64 48
  %.val1.i.i.i = load ptr, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !24, !noundef !24
  invoke void %i.al(ptr noundef %.val1.i.i.i)
          to label %bb.t unwind label %bb.ae, !inline_history !70

bb.r:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.s:                                             ; preds = %bb.y, %.noexc27, %bb.x, %bb.u
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body30

.body30:                                          ; preds = %bb.v, %bb.s
  %eh.lpad-body31 = phi { ptr, i32 } [ %i.an, %bb.s ], [ %i.as, %bb.v ]
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1l_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.af

bb.t:                                             ; preds = %bb.p, %bb.l, %bb.k, %bb.q
  %.val = load ptr, ptr %i.v, align 8, !noundef !24 ; 2 uses
  %i.ao = load i64, ptr %.val, align 8, !range !43, !noundef !24 ; 3 uses
  %.not.i = icmp eq i64 %i.ao, -1
  br i1 %.not.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsl8OoimOLbh_6qdrant.exit.thread, label %3

3:                                                ; preds = %bb.t
  %4 = icmp ne i64 %i.ao, 4
  tail call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.ao, 2
  br i1 %5, label %bb.u, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsl8OoimOLbh_6qdrant.exit.thread

bb.u:                                             ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !38644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !38644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !38644
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 208
  %i.aq = invoke noundef nonnull align 8 ptr @_RNvMNtNtCs5QaNqjAn6vc_5shard14segment_holder6lockedNtB2_19LockedSegmentHolder4read(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ap)
          to label %.noexc26 unwind label %bb.s   ; 5 uses

.noexc26:                                         ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  invoke void @_RNvMs3_NtCs5QaNqjAn6vc_5shard14segment_holderNtB5_13SegmentHolder4iter(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.b, ptr noundef nonnull align 8 %i.ar)
          to label %bb.w unwind label %bb.v, !noalias !38644

bb.v:                                             ; preds = %bb.w, %.noexc26
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant(ptr nonnull %i.aq) #26
          to label %.body30 unwind label %bb.z, !noalias !38644

bb.w:                                             ; preds = %.noexc26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false), !noalias !38644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !38644
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2s_INtNtB2w_5chain5ChainINtNtNtNtB8_11collections5btree3map4IterjB13_EB3F_ENCNvMs3_NtB17_14segment_holderNtB4C_13SegmentHolder4iter0ENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB5z_15ShardReplicaSet27calculate_local_shard_stats000EE9from_iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(144) %i.c)
          to label %bb.x unwind label %bb.v, !noalias !38644

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !38644
  %.sroa.0.0.copyload40 = load i64, ptr %i.d, align 8 ; 2 uses
  %.sroa.12.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx41, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !38644
  %i.at = ptrtoint ptr %i.aq to i64               ; 2 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.at)
          to label %.noexc27 unwind label %bb.s

.noexc27:                                         ; preds = %bb.x
  %i.au = or disjoint i64 %i.at, 1
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.au)
          to label %.noexc28 unwind label %bb.s

.noexc28:                                         ; preds = %.noexc27
  %i.av = atomicrmw add ptr %i.aq, i64 -16 release, align 8, !noalias !38644
  %i.aw = and i64 %i.av, -14
  %i.ax = icmp eq i64 %i.aw, 18
  br i1 %i.ax, label %bb.y, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsl8OoimOLbh_6qdrant.exit, !prof !30

bb.y:                                             ; preds = %.noexc28
  invoke void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.aq)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsl8OoimOLbh_6qdrant.exit unwind label %bb.s

bb.z:                                             ; preds = %bb.v
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !38644
  unreachable

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsl8OoimOLbh_6qdrant.exit: ; preds = %.noexc28, %bb.y
  %.not = icmp eq i64 %.sroa.0.0.copyload40, -1
  br i1 %.not, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsl8OoimOLbh_6qdrant.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i8 1, ptr %i.az, align 8
  store i64 %.sroa.0.0.copyload40, ptr %i.i, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, i64 16, i1 false)
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1l_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit33 unwind label %bb.ab

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.t, %3, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsl8OoimOLbh_6qdrant.exit
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1l_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit35 unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  br label %.body37

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit33: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 0, ptr %i.az, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bb = invoke noundef nonnull ptr @_RINvNtNtCsjZG7hsAZr3B_5tokio4task8blocking14spawn_blockingNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB11_15ShardReplicaSet27calculate_local_shard_stats0s_0TjjjEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @367)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit33
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.body37

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.bb, ptr %i.p, align 8
  br label %bb.ah

.body37:                                          ; preds = %bb.am, %bb.ai, %bb.ar, %bb.ac, %bb.ab
  %.pn20.pn = phi { ptr, i32 } [ %i.ba, %bb.ab ], [ %i.bc, %bb.ac ], [ %i.bs, %bb.ar ], [ %i.bk, %bb.ai ], [ %i.bn, %bb.am ]
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 8, !range !26, !noundef !24
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.au, label %bb.at

bb.ae:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsl8OoimOLbh_6qdrant.exit.thread, %bb.q
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit35: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsl8OoimOLbh_6qdrant.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %i.bh, align 8
  store i64 -1, ptr %i.e, align 8
  br label %bb.aq

bb.af:                                            ; preds = %.body30, %bb.au, %bb.ai, %bb.h
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ag:                                            ; preds = %bb.at, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %bb.at ], [ %.pn16, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit ]
  store i8 2, ptr %i.j, align 1
  resume { ptr, i32 } %.pn20.pn.pn

bb.ah:                                            ; preds = %bb.c, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  invoke void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandleTjjjEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleTjjjEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(8) %i.bj) #26
          to label %.body37 unwind label %bb.af

bb.aj:                                            ; preds = %bb.ah
  %i.bl = load i64, ptr %i.f, align 8, !range !23, !noundef !24 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 2
  br i1 %i.bm, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %common.ret

bb.al:                                            ; preds = %bb.aj
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.658.0.copyload = load i64, ptr %.sroa.658.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB2_17AbortOnDropHandleTjjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %bb.an unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleTjjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %.body37 unwind label %bb.ao

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleTjjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleTjjjEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleTjjjEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.an
  %i.bp = trunc nuw i64 %i.bl to i1
  br i1 %i.bp, label %bb.ap, label %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTjjjENtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorENtNtNtB7_3ops9try_trait3Try6branchCsl8OoimOLbh_6qdrant.exit

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleTjjjEEECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !38645
  store i64 %.sroa.2.0.copyload, ptr %i.a, align 8, !noalias !38646
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.561.0..sroa_idx, align 8, !noalias !38646
  %.sroa.662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.658.0.copyload, ptr %.sroa.662.0..sroa_idx, align 8, !noalias !38646
  invoke void @_RNvXsg_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB5_15CollectionErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.as unwind label %bb.ar

_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTjjjENtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorENtNtNtB7_3ops9try_trait3Try6branchCsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleTjjjEEECsl8OoimOLbh_6qdrant.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.bq, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.2.0.copyload, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.4.0.copyload, ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.sroa.658.0.copyload, ptr %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %i.e, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.br, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit35, %bb.as, %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTjjjENtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorENtNtNtB7_3ops9try_trait3Try6branchCsl8OoimOLbh_6qdrant.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  br label %common.ret

bb.ar:                                            ; preds = %bb.an, %bb.ap
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body37

bb.as:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !38645
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.bt, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.aq

bb.at:                                            ; preds = %bb.au, %.body37
  store i8 0, ptr %i.bd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ag

bb.au:                                            ; preds = %.body37
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #26
          to label %bb.at unwind label %bb.af
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4_15ShardReplicaSet8is_local0Csl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !35, !noundef !24
  switch i8 %i.c, label %default.unreachable21 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.b
  ]

default.unreachable21:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !24, !align !31, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @368) #29
  unreachable
end_hunk_2
begin_hunk_3_@_RNCNvMNtNtCsgGgPqgSfnMH_7storage15content_manager3tocNtB4_14TableOfContent18collection_aliases0Csl8OoimOLbh_6qdrant:bb.a
  %.sroa.2.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.2.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 -1, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.2, i64 28, i1 false)
  br label %common.ret

bb.y:                                             ; preds = %bb.w, %bb.v
  %.pn11 = phi { ptr, i32 } [ %i.ar, %bb.w ], [ %i.ao, %bb.v ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #26
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.s, %bb.y, %bb.g
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.aa:                                            ; preds = %bb.y, %.body
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %bb.y ], [ %.pn8.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn11.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtCsgGgPqgSfnMH_7storage15content_manager3tocNtB4_14TableOfContent23update_cluster_metadata0Csl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.15 = alloca [32 x i8], align 8           ; 5 uses
  %i.e = alloca [96 x i8], align 8                ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 10 uses
  %i.g = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.4 = alloca [51 x i8], align 1            ; 2 uses
  %i.h = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.1371.sroa.10 = alloca [32 x i8], align 1 ; 8 uses
  %i.i = alloca [56 x i8], align 8                ; 11 uses
  %i.j = alloca [96 x i8], align 8                ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 673 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !range !35, !noundef !24
  switch i8 %i.l, label %default.unreachable161 [
    i8 0, label %bb.b
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 3, label %bb.c
  ]

default.unreachable161:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 674 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !24, !align !31, !noundef !24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.s = load i8, ptr %i.r, align 8, !range !26, !noundef !24
  %i.t = trunc nuw i8 %i.s to i1
  store i8 1, ptr %i.m, align 2
  br i1 %i.t, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1371.sroa.10)
  br label %bb.ai

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtNtCsgGgPqgSfnMH_7storage15content_manager3tocNtB2_14TableOfContent29get_consensus_proposal_sender(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noundef nonnull align 8 %i.o)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 752 ; 8 uses
  %i.v = cmpxchg weak ptr %i.u, i8 0, i8 1 acquire monotonic, align 1
  %i.w = extractvalue { i8, i1 } %i.v, 1
  br i1 %i.w, label %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i, label %bb.f, !prof !29

bb.f:                                             ; preds = %bb.e
  %i.x = invoke noundef zeroext i1 @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 %i.u, i64 undef, i32 noundef -1)
          to label %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i unwind label %bb.q ; 0 uses

_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i: ; preds = %bb.f, %bb.e
  %i.y = ptrtoint ptr %i.u to i64                 ; 3 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.y)
          to label %bb.r unwind label %bb.q

bb.g:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.o

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39163)
  %i.aa = load i32, ptr %i.f, align 8, !range !54, !alias.scope !39164, !noundef !24 ; 2 uses
  %.not.i = icmp eq i32 %i.aa, -1
  br i1 %.not.i, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !39164, !nonnull !24, !align !31, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 0, ptr %i.m, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false)
  invoke void @_RNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager9consensus16operation_senderNtB2_15OperationSender4send(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noundef nonnull align 8 %i.ac, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.e)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !39165)
  %i.ae = load i32, ptr %i.g, align 8, !range !54, !alias.scope !39166, !noundef !24 ; 2 uses
  %.not.i31 = icmp eq i32 %i.ae, -1
  br i1 %.not.i31, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit.i, %bb.au, %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 674
  store i8 0, ptr %i.af, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ax

bb.m:                                             ; preds = %bb.k
  %.sroa.896.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.896.sroa.0.0.copyload = load i32, ptr %.sroa.896.0..sroa_idx97, align 4, !alias.scope !39167
  %.sroa.896.sroa.6.0..sroa.896.0..sroa_idx97.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ag = load <2 x ptr>, ptr %.sroa.896.sroa.6.0..sroa.896.0..sroa_idx97.sroa_idx, align 8, !alias.scope !39167
  %.sroa.896.sroa.8.0..sroa.896.0..sroa_idx97.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.896.sroa.8.0..sroa.896.0..sroa_idx97.sroa_idx, i64 32, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %.sroa.6115.sroa.5.sroa.0.0.in.in = phi i32 [ %.sroa.896.sroa.0.0.copyload, %bb.m ], [ %.sroa.8100.0.copyload102, %bb.p ] ; 2 uses
  %.sroa.0114.0 = phi i32 [ %i.ae, %bb.m ], [ %i.aa, %bb.p ]
  %i.ah = phi <2 x ptr> [ %i.ag, %bb.m ], [ %i.ai, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.6115.sroa.0.0 = trunc i32 %.sroa.6115.sroa.5.sroa.0.0.in.in to i8
  %.sroa.6115.sroa.5.sroa.0.0.in = lshr i32 %.sroa.6115.sroa.5.sroa.0.0.in.in, 8
  %.sroa.6115.sroa.5.sroa.0.0 = trunc nuw i32 %.sroa.6115.sroa.5.sroa.0.0.in to i24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherECsl8OoimOLbh_6qdrant.exit51

bb.o:                                             ; preds = %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.z, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.body44

bb.p:                                             ; preds = %bb.h
  %.sroa.8100.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.8100.0.copyload102 = load i32, ptr %.sroa.8100.0..sroa_idx101, align 4, !alias.scope !39168
  %.sroa.8103.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ai = load <2 x ptr>, ptr %.sroa.8103.0..sroa_idx104, align 8, !alias.scope !39168
  %.sroa.10106.sroa.6.0..sroa.10106.0..sroa_idx107.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10106.sroa.6.0..sroa.10106.0..sroa_idx107.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherECsl8OoimOLbh_6qdrant.exit51: ; preds = %bb.ae, %.noexc37, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit.i47, %bb.bb, %bb.n
  %.sroa.6115.sroa.5.sroa.0.1 = phi i24 [ %.sroa.6115.sroa.5.sroa.0.0, %bb.n ], [ %.sroa.1371.sroa.0.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit.i47 ], [ %.sroa.1371.sroa.0.0.copyload, %bb.bb ], [ %.sroa.6115.sroa.5.0.extract.trunc, %.noexc37 ], [ %.sroa.6115.sroa.5.0.extract.trunc, %bb.ae ]
  %.sroa.6115.sroa.0.1 = phi i8 [ %.sroa.6115.sroa.0.0, %bb.n ], [ %.sroa.1070.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit.i47 ], [ %.sroa.1070.0.copyload, %bb.bb ], [ %.sroa.6115.sroa.0.0.extract.trunc, %.noexc37 ], [ %.sroa.6115.sroa.0.0.extract.trunc, %bb.ae ]
  %.sroa.0114.1 = phi i32 [ %.sroa.0114.0, %bb.n ], [ %.sroa.069.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit.i47 ], [ %.sroa.069.0.copyload, %bb.bb ], [ %.pr, %.noexc37 ], [ %.pr, %bb.ae ]
  %i.aj = phi <2 x ptr> [ %i.ah, %bb.n ], [ %i.bw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit.i47 ], [ %i.bw, %bb.bb ], [ %i.bl, %.noexc37 ], [ %i.bl, %bb.ae ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 674 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 2, !range !26, !noundef !24
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.be, label %bb.bd

.body44:                                          ; preds = %bb.q, %bb.x, %bb.az, %bb.ba, %bb.at, %bb.as, %bb.aw, %bb.ac, %bb.o
  %.pn19.pn = phi { ptr, i32 } [ %i.cl, %bb.az ], [ %.pn.pn, %bb.o ], [ %.pn14.pn, %bb.ac ], [ %i.by, %bb.as ], [ %i.by, %bb.at ], [ %i.ci, %bb.aw ], [ %i.cl, %bb.ba ], [ %i.aq, %bb.q ], [ %i.bb, %bb.x ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 674
  %i.ao = load i8, ptr %i.an, align 2, !range !26, !noundef !24
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.bh, label %bb.bf

bb.q:                                             ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i, %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.body44

bb.r:                                             ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 760
  %.val25 = load ptr, ptr %i.ar, align 8, !noundef !24 ; 4 uses
  %i.as = getelementptr i8, ptr %i.o, i64 768
  %.val26 = load ptr, ptr %i.as, align 8          ; 3 uses
  %magicptr.i = ptrtoint ptr %.val25 to i64
  switch i64 %magicptr.i, label %bb.s [
    i64 0, label %bb.v
    i64 -1, label %_RNvXsL_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i
  ]

bb.s:                                             ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %.val25, i64 8
  %i.au = atomicrmw add ptr %i.at, i64 1 monotonic, align 8
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.t, label %_RNvXsL_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.trap()
  unreachable

_RNvXsL_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.s, %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26) ]
  %i.aw = atomicrmw add ptr %.val26, i64 1 monotonic, align 8
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RNvXsL_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i
  tail call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %_RNvXsL_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %bb.r
  %.sroa.3.0.i = phi ptr [ undef, %bb.r ], [ %.val26, %_RNvXsL_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ] ; 2 uses
  %.not.i32 = icmp eq ptr %.val25, null
  br i1 %.not.i32, label %bb.w, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit.thread

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i) ]
  %i.ay = insertelement <2 x ptr> poison, ptr %.val25, i64 0
  %i.az = insertelement <2 x ptr> %i.ay, ptr %.sroa.3.0.i, i64 1
  br label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMNtNtCsgGgPqgSfnMH_7storage15content_manager6errorsNtB2_12StorageError15standalone_mode(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.i)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit unwind label %bb.x

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.w
  %.pr = load i32, ptr %i.i, align 8, !alias.scope !39169 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39170)
  %.not.i34 = icmp eq i32 %.pr, -1
  br i1 %.not.i34, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit._crit_edge, label %bb.ad

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit._crit_edge: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ba = load <2 x ptr>, ptr %.phi.trans.insert, align 8, !alias.scope !39169
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexINtNtB4_6option6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherEEECsl8OoimOLbh_6qdrant(ptr nonnull %i.u) #26
          to label %.body44 unwind label %bb.af

bb.y:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit._crit_edge, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit.thread
  %i.bc = phi <2 x ptr> [ %i.ba, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit._crit_edge ], [ %i.az, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <2 x ptr> %i.bc, ptr %i.bd, align 8
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.y)
          to label %.noexc35 unwind label %bb.aa

.noexc35:                                         ; preds = %bb.y
  %i.bf = cmpxchg ptr %i.u, i8 1, i8 0 release monotonic, align 1
  %i.bg = extractvalue { i8, i1 } %i.bf, 1
  br i1 %i.bg, label %bb.ab, label %bb.z, !prof !29

bb.z:                                             ; preds = %.noexc35
  invoke void @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.u, i1 noundef zeroext false)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %.noexc35, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1371.sroa.10)
  %.val = load ptr, ptr %i.be, align 8, !nonnull !24, !noundef !24
  %i.bi = getelementptr inbounds nuw i8, ptr %.val, i64 16
  store i8 0, ptr %i.m, align 2
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bj, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false)
  %.sroa.982.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i32 -1, ptr %.sroa.982.0..sroa_idx, align 8
  %.sroa.1184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 232
  store ptr %i.bi, ptr %.sroa.1184.0..sroa_idx, align 8
  %.sroa.1385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i8 0, ptr %.sroa.1385.0..sroa_idx, align 8
  br label %bb.ai

bb.ac:                                            ; preds = %.body, %bb.aa
  %.pn14.pn = phi { ptr, i32 } [ %.pn11, %.body ], [ %i.bh, %bb.aa ]
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.bk) #26
          to label %.body44 unwind label %bb.af

bb.ad:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherE10ok_or_elseNtNtBO_6errors12StorageErrorNvMB2d_B2b_15standalone_modeECsl8OoimOLbh_6qdrant.exit
  %.sroa.9.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.9.0.copyload54 = load i32, ptr %.sroa.9.0..sroa_idx53, align 4, !alias.scope !39171 ; 2 uses
  %.sroa.955.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bl = load <2 x ptr>, ptr %.sroa.955.0..sroa_idx56, align 8, !alias.scope !39171 ; 2 uses
  %.sroa.13.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.0..sroa_idx60, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.6115.sroa.0.0.extract.trunc = trunc i32 %.sroa.9.0.copyload54 to i8 ; 2 uses
  %.sroa.6115.sroa.5.0.extract.shift = lshr i32 %.sroa.9.0.copyload54, 8
  %.sroa.6115.sroa.5.0.extract.trunc = trunc nuw i32 %.sroa.6115.sroa.5.0.extract.shift to i24 ; 2 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.y)
          to label %.noexc37 unwind label %bb.aw

.noexc37:                                         ; preds = %bb.ad
  %i.bm = cmpxchg ptr %i.u, i8 1, i8 0 release monotonic, align 1
  %i.bn = extractvalue { i8, i1 } %i.bm, 1
  br i1 %i.bn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherECsl8OoimOLbh_6qdrant.exit51, label %bb.ae, !prof !29

bb.ae:                                            ; preds = %.noexc37
  invoke void @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.u, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherECsl8OoimOLbh_6qdrant.exit51 unwind label %bb.aw

bb.af:                                            ; preds = %bb.x, %bb.bh, %bb.aj, %bb.ac
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ag:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401) #29
  unreachable

bb.ah:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401) #29
  unreachable

bb.ai:                                            ; preds = %bb.c, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  invoke fastcc void @_RNCNvMs_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerINtB6_16ConsensusManagerNtNtB8_3toc14TableOfContentE31propose_consensus_op_with_await0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.h, ptr noundef nonnull align 8 %i.bp, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerINtBI_16ConsensusManagerNtNtBK_3toc14TableOfContentE31propose_consensus_op_with_await0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.bp) #26
          to label %.body unwind label %bb.af

bb.ak:                                            ; preds = %bb.ai
  %i.br = load i32, ptr %i.h, align 8, !range !68, !noundef !24 ; 3 uses
  %i.bs = icmp eq i32 %i.br, -2
  br i1 %i.bs, label %bb.al, label %bb.am

common.ret:                                       ; preds = %bb.ax, %bb.al
  %storemerge = phi i8 [ 3, %bb.al ], [ 1, %bb.ax ]
  store i8 %storemerge, ptr %i.k, align 1
  ret void

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i32 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1371.sroa.10)
  br label %common.ret

bb.am:                                            ; preds = %bb.ak
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %.sroa.4, ptr noundef nonnull align 1 dereferenceable(51) %.sroa.4.0..sroa_idx, i64 51, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerINtBI_16ConsensusManagerNtNtBK_3toc14TableOfContentE31propose_consensus_op_with_await0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.bp)
          to label %bb.ao unwind label %bb.an

.body:                                            ; preds = %bb.aq, %bb.an, %bb.aj
  %.pn11 = phi { ptr, i32 } [ %i.bq, %bb.aj ], [ %i.bt, %bb.an ], [ %i.bu, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1371.sroa.10)
  br label %bb.ac

bb.an:                                            ; preds = %_RNCNCNvMNtNtCsgGgPqgSfnMH_7storage15content_manager3tocNtB6_14TableOfContent23update_cluster_metadata00Csl8OoimOLbh_6qdrant.exit.i, %bb.am
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ao:                                            ; preds = %bb.am
  %.not.i40 = icmp eq i32 %i.br, -1
  br i1 %.not.i40, label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultbNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorE7map_errBJ_NCNCNvMNtBN_3tocNtB26_14TableOfContent23update_cluster_metadata00ECsl8OoimOLbh_6qdrant.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !39172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !39172
  store i32 %i.br, ptr %i.c, align 8, !noalias !39173
  %.sroa.3.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i8 %.sroa.3.0.copyload, ptr %.sroa.3.0..sroa_idx88, align 4, !noalias !39173
  %.sroa.4.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %.sroa.4.0..sroa_idx90, ptr noundef nonnull align 1 dereferenceable(51) %.sroa.4, i64 51, i1 false), !noalias !39173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39174
  store ptr %i.c, ptr %i.a, align 8, !noalias !39174
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsj_NtNtCsgGgPqgSfnMH_7storage15content_manager6errorsNtB5_12StorageErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !39174
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @98, ptr noundef nonnull %i.a)
end_hunk_3
