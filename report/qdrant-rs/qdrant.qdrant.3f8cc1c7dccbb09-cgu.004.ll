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
