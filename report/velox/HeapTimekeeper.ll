begin_hunk_0
  %i.ai = load i64, ptr %i.h, align 16, !noalias !235 ; 3 uses
  %i.aj = icmp eq i64 %.0.i.i, %i.ai              ; 2 uses
  %spec.select.i.i = select i1 %i.aj, i64 1, i64 %i.i
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !7, !noalias !235 ; 4 uses
  %i.al = icmp eq i32 %i.ak, 7
  %i.am = icmp eq i32 %i.ak, 10                   ; 2 uses
  %or.cond.i.i = or i1 %i.al, %i.am
  %i.an = inttoptr i64 %i.ai to ptr               ; 2 uses
end_hunk_0
begin_hunk_1
  store ptr %.022.i.i, ptr %i.bc, align 8, !tbaa !245, !alias.scope !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !235
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !235
  switch i32 %i.ak, label %bb.k [
    i32 10, label %bb.o
    i32 7, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j, %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
end_hunk_1
begin_hunk_2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.r

bb.o:                                             ; preds = %bb.j, %bb.j
  %i.bi = trunc nuw i8 %i.p to i1
  br i1 %i.bi, label %bb.p, label %bb.s, !prof !213

end_hunk_2
begin_hunk_3
  %i.ad = load i64, ptr %i.d, align 16, !noalias !336 ; 3 uses
  %i.ae = icmp eq i64 %.0.i.i, %i.ad              ; 2 uses
  %spec.select.i.i = select i1 %i.ae, i64 1, i64 %i.e
  %i.af = load i32, ptr %i.a, align 4, !tbaa !7, !noalias !336 ; 4 uses
  %i.ag = icmp eq i32 %i.af, 7
  %i.ah = icmp eq i32 %i.af, 10                   ; 2 uses
  %or.cond.i.i = or i1 %i.ag, %i.ah
  %i.ai = inttoptr i64 %i.ad to ptr               ; 2 uses
end_hunk_3
begin_hunk_4
  store ptr %.022.i.i, ptr %i.ax, align 8, !tbaa !245, !alias.scope !336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !336
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !336
  switch i32 %i.af, label %bb.l [
    i32 10, label %bb.n
    i32 7, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k, %.thread.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_4
begin_hunk_5
  call void @__clang_call_terminate(ptr %i.bc) #28
  unreachable

bb.n:                                             ; preds = %bb.k, %bb.k
  %i.bd = trunc nuw i8 %i.k to i1
  br i1 %i.bd, label %.noexc15.i, label %"_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EE12lock_combineIZNS_14HeapTimekeeper5State8shutdownEvE3$_0EENS_13invoke_detail6traitsIRKT_E6resultIEESB_.exit", !prof !213

end_hunk_5
begin_hunk_6
  br label %.split.i, !llvm.loop !309

.noexc50:                                         ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.x, %bb.x, %bb.x, %bb.x
  %.5 = phi i32 [ %.4, %bb.x ], [ %.4, %bb.x ], [ %.4, %bb.x ], [ %.4, %bb.x ], [ %.2, %bb.n ], [ %.2, %bb.n ], [ %.2, %bb.n ], [ %.2, %bb.n ] ; 4 uses
  %.us-phi.i = phi i1 [ %.1.i, %bb.x ], [ %.1.i, %bb.x ], [ %.1.i, %bb.x ], [ %.1.i, %bb.x ], [ %.1.us.i, %bb.n ], [ %.1.us.i, %bb.n ], [ %.1.us.i, %bb.n ], [ %.1.us.i, %bb.n ]
  br i1 %.us-phi.i, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i, label %bb.ad, !llvm.loop !351

end_hunk_6
begin_hunk_7
  %i.cz = load i64, ptr %i.g, align 16, !noalias !347 ; 3 uses
  %i.da = icmp eq i64 %.0.i.i47, %i.cz            ; 2 uses
  %spec.select.i.i = select i1 %i.da, i64 1, i64 %i.h
  %i.db = icmp eq i32 %.5, 7
  %i.dc = icmp eq i32 %.5, 10                     ; 2 uses
  %or.cond.i.i = or i1 %i.db, %i.dc
  switch i32 %.5, label %"_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_14HeapTimekeeper5State6workerEvE3$_0EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSC_RT1_RT2_.exit.i" [
end_hunk_7
begin_hunk_8
  store ptr %i.dl, ptr %i.p, align 8, !tbaa !251, !alias.scope !347
  store ptr %.019.i.i, ptr %i.q, align 8, !tbaa !245, !alias.scope !347
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19, !noalias !347
  switch i32 %.5, label %bb.ae [
    i32 10, label %bb.am
    i32 7, label %bb.am
  ]

.sink.split:                                      ; preds = %"_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_14HeapTimekeeper5State6workerEvE3$_0EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSC_RT1_RT2_.exit.thread.i", %"_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_14HeapTimekeeper5State6workerEvE3$_0EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSC_RT1_RT2_.exit.i.thread"
  store ptr %.019.i.i, ptr %i.q, align 8, !tbaa !245, !alias.scope !347
end_hunk_8
begin_hunk_9
  call void @__clang_call_terminate(ptr %i.dz) #28
  unreachable

bb.am:                                            ; preds = %"_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_14HeapTimekeeper5State6workerEvE3$_0EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSC_RT1_RT2_.exit.i", %"_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_20RequestWithoutReturnIZNS_14HeapTimekeeper5State6workerEvE3$_0EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSC_RT1_RT2_.exit.i"
  %i.ea = trunc nuw i8 %i.ar to i1
  br i1 %i.ea, label %bb.an, label %bb.ao, !prof !213

end_hunk_9
begin_hunk_10
  %i.fc = load i64, ptr %i.ac, align 16, !noalias !356 ; 4 uses
  %i.fd = icmp eq i64 %.0.i.i58, %i.fc            ; 2 uses
  %spec.select.i.i61 = select i1 %i.fd, i64 1, i64 %i.ad
  %i.fe = load i32, ptr %i.a, align 4, !tbaa !7, !noalias !356 ; 4 uses
  %i.ff = icmp eq i32 %i.fe, 7
  %i.fg = icmp eq i32 %i.fe, 10                   ; 2 uses
  %or.cond.i.i62 = or i1 %i.ff, %i.fg
  switch i32 %i.fe, label %bb.bc [
end_hunk_10
begin_hunk_11
  store ptr %.022.i.i, ptr %i.ak, align 8, !tbaa !245, !alias.scope !356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !356
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !356
  switch i32 %i.fe, label %bb.bd [
    i32 10, label %bb.bf
    i32 7, label %bb.bf
  ]

bb.bd:                                            ; preds = %bb.bc, %.thread.i
  %i.fs = load ptr, ptr %i.x, align 8, !tbaa !297
end_hunk_11
begin_hunk_12
  call void @__clang_call_terminate(ptr %i.fv) #28
  unreachable

bb.bf:                                            ; preds = %bb.bc, %bb.bc
  %i.fw = trunc nuw i8 %i.eo to i1
  br i1 %i.fw, label %.noexc15.i, label %bb.bg, !prof !213

end_hunk_12
