inline.NumInlined: 182
inline.NumDeleted: 109
begin_hunk_0_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_:bb.a
_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.aj = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) monotonic, align 8
  %i.ak = call noundef i32 %i.aj(ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null), !inline_history !47 ; 0 uses
  %i.al = load i32, ptr %i.c, align 4, !tbaa !7
  %i.am = and i32 %i.al, 255                      ; 2 uses
  store i32 %i.am, ptr %i.c, align 4, !tbaa !7
end_hunk_0
begin_hunk_1_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_:bb.a
  br label %.backedge

.backedge:                                        ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit, %bb.u, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63, %.thread81, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit, %bb.o
  br label %bb.c, !llvm.loop !48

bb.q:                                             ; preds = %.thread76
  %i.bx = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
end_hunk_1
begin_hunk_2_@llvm.assume
!44 = distinct !{!44, !45, !"_ZZN5folly3ssl6detail14OpenSSLSession16getActiveSessionEvENK3$_0clIKSt10unique_ptrI14ssl_session_stNS_23static_function_deleterIS6_XadL_Z16SSL_SESSION_freeEEEEEEEDaRT_: argument 0"}
!45 = distinct !{!45, !"_ZZN5folly3ssl6detail14OpenSSLSession16getActiveSessionEvENK3$_0clIKSt10unique_ptrI14ssl_session_stNS_23static_function_deleterIS6_XadL_Z16SSL_SESSION_freeEEEEEEEDaRT_"}
!46 = !{!"branch_weights", i32 4001, i32 1}
!47 = distinct !{null}
!48 = distinct !{!48, !21}
end_hunk_2
