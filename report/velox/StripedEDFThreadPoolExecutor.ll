begin_hunk_0
  %i.ad = load i64, ptr %i.d, align 16, !noalias !3579 ; 3 uses
  %i.ae = icmp eq i64 %.0.i.i, %i.ad              ; 2 uses
  %spec.select.i.i = select i1 %i.ae, i64 1, i64 %i.e
  %i.af = load i32, ptr %i.a, align 4, !tbaa !7, !noalias !3579 ; 4 uses
  %i.ag = icmp eq i32 %i.af, 7
  %i.ah = icmp eq i32 %i.af, 10                   ; 2 uses
  %or.cond.i.i = or i1 %i.ag, %i.ah
  %i.ai = inttoptr i64 %i.ad to ptr
end_hunk_0
begin_hunk_1
  store ptr %.022.i.i, ptr %i.ax, align 8, !tbaa !3530, !alias.scope !3579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35, !noalias !3579
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35, !noalias !3579
  switch i32 %i.af, label %bb.k [
    i32 10, label %bb.r
    i32 7, label %bb.r
  ]

bb.k:                                             ; preds = %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSF_RT1_RT2_.exit.i, %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSF_RT1_RT2_.exit.thread.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
end_hunk_1
begin_hunk_2
  call void @__clang_call_terminate(ptr %i.br) #43
  unreachable

bb.r:                                             ; preds = %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSF_RT1_RT2_.exit.i, %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7dequeueEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSF_RT1_RT2_.exit.i
  %i.bs = trunc nuw i8 %i.k to i1
  br i1 %i.bs, label %bb.s, label %bb.t, !prof !158

end_hunk_2
begin_hunk_3
  %i.bb = load i64, ptr %i.ab, align 16, !noalias !3641 ; 3 uses
  %i.bc = icmp eq i64 %.0.i.i, %i.bb              ; 2 uses
  %spec.select.i.i = select i1 %i.bc, i64 1, i64 %i.ac
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !7, !noalias !3641 ; 4 uses
  %i.be = icmp eq i32 %i.bd, 7
  %i.bf = icmp eq i32 %i.bd, 10                   ; 2 uses
  %or.cond.i.i = or i1 %i.be, %i.bf
  %i.bg = inttoptr i64 %i.bb to ptr
end_hunk_3
begin_hunk_4
  store ptr %.022.i.i, ptr %i.bv, align 8, !tbaa !3530, !alias.scope !3641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35, !noalias !3641
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35, !noalias !3641
  switch i32 %i.bd, label %bb.l [
    i32 10, label %bb.p
    i32 7, label %bb.p
  ]

bb.l:                                             ; preds = %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_.exit.i, %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_.exit.thread.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_4
begin_hunk_5
  call void @__clang_call_terminate(ptr %i.ci) #43
  unreachable

bb.p:                                             ; preds = %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_.exit.i, %_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEE7enqueueEOS9_mEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSG_RT1_RT2_.exit.i
  %i.cj = trunc nuw i8 %i.ai to i1
  br i1 %i.cj, label %bb.q, label %bb.r, !prof !158

end_hunk_5
