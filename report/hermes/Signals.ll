Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Signals?download=true
inline.NumInlined: 135
inline.NumDeleted: 82
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZL16RegisterHandlersv:bb.a
  %i.ar = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %i.as = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store ptr @_ZL13SignalHandleri, ptr %1, align 8, !tbaa !23
  store i32 -939524096, ptr %i.v, align 8, !tbaa !24
  %i.at = call i32 @sigemptyset(ptr noundef nonnull %i.w) #16 ; 0 uses
  %i.au = zext i32 %i.as to i64
  %i.av = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.au ; 2 uses
  %i.aw = call i32 @sigaction(i32 noundef 15, ptr noundef nonnull %1, ptr noundef nonnull %i.av) #16 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 152
  store i32 15, ptr %i.ax, align 8, !tbaa !27
  %i.ay = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %i.az = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store ptr @_ZL13SignalHandleri, ptr %1, align 8, !tbaa !23
  store i32 -939524096, ptr %i.v, align 8, !tbaa !24
  %i.ba = call i32 @sigemptyset(ptr noundef nonnull %i.w) #16 ; 0 uses
  %i.bb = zext i32 %i.az to i64
  %i.bc = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.bb ; 2 uses
  %i.bd = call i32 @sigaction(i32 noundef 10, ptr noundef nonnull %1, ptr noundef nonnull %i.bc) #16 ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 152
  store i32 10, ptr %i.be, align 8, !tbaa !27
  %i.bf = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %i.bg = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store ptr @_ZL13SignalHandleri, ptr %1, align 8, !tbaa !23
  store i32 -939524096, ptr %i.v, align 8, !tbaa !24
  %i.bh = call i32 @sigemptyset(ptr noundef nonnull %i.w) #16 ; 0 uses
  %i.bi = zext i32 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.bi ; 2 uses
  %i.bk = call i32 @sigaction(i32 noundef 12, ptr noundef nonnull %1, ptr noundef nonnull %i.bj) #16 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 152
  store i32 12, ptr %i.bl, align 8, !tbaa !27
  %i.bm = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 10 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.bp = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  store ptr @_ZL13SignalHandleri, ptr %0, align 8, !tbaa !23
  store i32 -939524096, ptr %i.bn, align 8, !tbaa !24
  %i.bq = call i32 @sigemptyset(ptr noundef nonnull %i.bo) #16 ; 0 uses
  %i.br = zext i32 %i.bp to i64
  %i.bs = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.br ; 2 uses
  %i.bt = call i32 @sigaction(i32 noundef 4, ptr noundef nonnull %0, ptr noundef nonnull %i.bs) #16 ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 152
  store i32 4, ptr %i.bu, align 8, !tbaa !27
  %i.bv = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  %i.bw = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  store ptr @_ZL13SignalHandleri, ptr %0, align 8, !tbaa !23
  store i32 -939524096, ptr %i.bn, align 8, !tbaa !24
  %i.bx = call i32 @sigemptyset(ptr noundef nonnull %i.bo) #16 ; 0 uses
  %i.by = zext i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.by ; 2 uses
  %i.ca = call i32 @sigaction(i32 noundef 5, ptr noundef nonnull %0, ptr noundef nonnull %i.bz) #16 ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 152
  store i32 5, ptr %i.cb, align 8, !tbaa !27
  %i.cc = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  %i.cd = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  store ptr @_ZL13SignalHandleri, ptr %0, align 8, !tbaa !23
  store i32 -939524096, ptr %i.bn, align 8, !tbaa !24
  %i.ce = call i32 @sigemptyset(ptr noundef nonnull %i.bo) #16 ; 0 uses
  %i.cf = zext i32 %i.cd to i64
  %i.cg = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.cf ; 2 uses
  %i.ch = call i32 @sigaction(i32 noundef 6, ptr noundef nonnull %0, ptr noundef nonnull %i.cg) #16 ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 152
  store i32 6, ptr %i.ci, align 8, !tbaa !27
  %i.cj = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  %i.ck = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  store ptr @_ZL13SignalHandleri, ptr %0, align 8, !tbaa !23
  store i32 -939524096, ptr %i.bn, align 8, !tbaa !24
  %i.cl = call i32 @sigemptyset(ptr noundef nonnull %i.bo) #16 ; 0 uses
  %i.cm = zext i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.cm ; 2 uses
  %i.co = call i32 @sigaction(i32 noundef 8, ptr noundef nonnull %0, ptr noundef nonnull %i.cn) #16 ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 152
  store i32 8, ptr %i.cp, align 8, !tbaa !27
  %i.cq = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  %i.cr = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  store ptr @_ZL13SignalHandleri, ptr %0, align 8, !tbaa !23
  store i32 -939524096, ptr %i.bn, align 8, !tbaa !24
  %i.cs = call i32 @sigemptyset(ptr noundef nonnull %i.bo) #16 ; 0 uses
  %i.ct = zext i32 %i.cr to i64
  %i.cu = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.ct ; 2 uses
  %i.cv = call i32 @sigaction(i32 noundef 7, ptr noundef nonnull %0, ptr noundef nonnull %i.cu) #16 ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 152
  store i32 7, ptr %i.cw, align 8, !tbaa !27
  %i.cx = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  %i.cy = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  store ptr @_ZL13SignalHandleri, ptr %0, align 8, !tbaa !23
  store i32 -939524096, ptr %i.bn, align 8, !tbaa !24
  %i.cz = call i32 @sigemptyset(ptr noundef nonnull %i.bo) #16 ; 0 uses
  %i.da = zext i32 %i.cy to i64
  %i.db = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.da ; 2 uses
  %i.dc = call i32 @sigaction(i32 noundef 11, ptr noundef nonnull %0, ptr noundef nonnull %i.db) #16 ; 0 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 152
  store i32 11, ptr %i.dd, align 8, !tbaa !27
  %i.de = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  %i.df = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  store ptr @_ZL13SignalHandleri, ptr %0, align 8, !tbaa !23
  store i32 -939524096, ptr %i.bn, align 8, !tbaa !24
  %i.dg = call i32 @sigemptyset(ptr noundef nonnull %i.bo) #16 ; 0 uses
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.dh ; 2 uses
  %i.dj = call i32 @sigaction(i32 noundef 3, ptr noundef nonnull %0, ptr noundef nonnull %i.di) #16 ; 0 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 152
  store i32 3, ptr %i.dk, align 8, !tbaa !27
  %i.dl = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  %i.dm = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  store ptr @_ZL13SignalHandleri, ptr %0, align 8, !tbaa !23
  store i32 -939524096, ptr %i.bn, align 8, !tbaa !24
  %i.dn = call i32 @sigemptyset(ptr noundef nonnull %i.bo) #16 ; 0 uses
  %i.do = zext i32 %i.dm to i64
  %i.dp = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.do ; 2 uses
  %i.dq = call i32 @sigaction(i32 noundef 31, ptr noundef nonnull %0, ptr noundef nonnull %i.dp) #16 ; 0 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 152
  store i32 31, ptr %i.dr, align 8, !tbaa !27
  %i.ds = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  %i.dt = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  store ptr @_ZL13SignalHandleri, ptr %0, align 8, !tbaa !23
  store i32 -939524096, ptr %i.bn, align 8, !tbaa !24
  %i.du = call i32 @sigemptyset(ptr noundef nonnull %i.bo) #16 ; 0 uses
  %i.dv = zext i32 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.dv ; 2 uses
  %i.dx = call i32 @sigaction(i32 noundef 24, ptr noundef nonnull %0, ptr noundef nonnull %i.dw) #16 ; 0 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 152
  store i32 24, ptr %i.dy, align 8, !tbaa !27
  %i.dz = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  %i.ea = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  store ptr @_ZL13SignalHandleri, ptr %0, align 8, !tbaa !23
  store i32 -939524096, ptr %i.bn, align 8, !tbaa !24
  %i.eb = call i32 @sigemptyset(ptr noundef nonnull %i.bo) #16 ; 0 uses
  %i.ec = zext i32 %i.ea to i64
  %i.ed = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %i.ec ; 2 uses
  %i.ee = call i32 @sigaction(i32 noundef 25, ptr noundef nonnull %0, ptr noundef nonnull %i.ed) #16 ; 0 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 152
  store i32 25, ptr %i.ef, align 8, !tbaa !27
  %i.eg = atomicrmw add ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  br label %.loopexit

.loopexit:                                        ; preds = %_ZL17CreateSigAltStackv.exit, %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit
  %i.eh = call noundef zeroext i1 @_ZN4llvh21llvm_is_multithreadedEv() #16
  br i1 %i.eh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.ei = call noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(13) %i.b) #16 ; 0 uses
  br label %_ZN4llvh3sys15SmartScopedLockILb1EED2Ev.exit

bb.m:                                             ; preds = %.loopexit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !13
  %i.el = add i32 %i.ek, -1
  store i32 %i.el, ptr %i.ej, align 8, !tbaa !13
  br label %_ZN4llvh3sys15SmartScopedLockILb1EED2Ev.exit

_ZN4llvh3sys15SmartScopedLockILb1EED2Ev.exit:     ; preds = %bb.l, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys18RemoveFileOnSignalENS_9StringRefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree readonly captures(address_is_null) %0, i64 %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = load atomic ptr, ptr @_ZZN4llvh3sys18RemoveFileOnSignalENS_9StringRefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE20FilesToRemoveCleanup acquire, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_120FilesToRemoveCleanupENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4llvh3sys18RemoveFileOnSignalENS_9StringRefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE20FilesToRemoveCleanup, ptr noundef nonnull @_ZN4llvh14object_creatorIN12_GLOBAL__N_120FilesToRemoveCleanupEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterIN12_GLOBAL__N_120FilesToRemoveCleanupEE4callEPv) #16
  br label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_120FilesToRemoveCleanupENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit

_ZN4llvh13ManagedStaticIN12_GLOBAL__N_120FilesToRemoveCleanupENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit: ; preds = %bb.a, %bb.b
  %i.c = load atomic ptr, ptr @_ZZN4llvh3sys18RemoveFileOnSignalENS_9StringRefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE20FilesToRemoveCleanup monotonic, align 8 ; 0 uses
  store atomic ptr @_ZL19RemoveFilesToRemovev, ptr @_ZN12_GLOBAL__N_126FilesToRemoveInterruptFuncE.0 seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %.not.i1 = icmp eq ptr %0, null
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !32, !alias.scope !29
  br i1 %.not.i1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_120FilesToRemoveCleanupENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !35, !alias.scope !29
  store i8 0, ptr %i.d, align 8, !tbaa !23, !alias.scope !29
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

bb.d:                                             ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_120FilesToRemoveCleanupENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16, !noalias !29
  store i64 %1, ptr %i.a, align 8, !tbaa !37, !noalias !29
  %i.f = icmp ugt i64 %1, 15
  br i1 %i.f, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !38, !alias.scope !29
  %i.h = load i64, ptr %i.a, align 8, !tbaa !37, !noalias !29
  store i64 %i.h, ptr %i.d, align 8, !tbaa !23, !alias.scope !29
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e, %bb.d
  %i.i = phi ptr [ %i.g, %bb.e ], [ %i.d, %bb.d ] ; 2 uses
  switch i64 %1, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %0, align 1, !tbaa !23
  store i8 %i.j, ptr %i.i, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !37, !noalias !29 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !35, !alias.scope !29
  %i.m = load ptr, ptr %3, align 8, !tbaa !38, !alias.scope !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16, !noalias !29
  %.val.pre = load ptr, ptr %3, align 8
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

_ZNK4llvh9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  %.val = phi ptr [ %i.d, %bb.c ], [ %.val.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i ]
  %4 = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18 ; 4 uses
  %i.o = call noalias ptr @strdup(ptr noundef readonly %.val) #16
  store ptr %i.o, ptr %4, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !41
  %i.q = cmpxchg ptr @_ZN12_GLOBAL__N_113FilesToRemoveE, ptr null, ptr %4 seq_cst seq_cst, align 8 ; 2 uses
  %i.r = extractvalue { ptr, i1 } %i.q, 1
  br i1 %i.r, label %_ZN12_GLOBAL__N_116FileToRemoveList6insertERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit, %.lr.ph.i
  %i.s = phi { ptr, i1 } [ %i.v, %.lr.ph.i ], [ %i.q, %_ZNK4llvh9StringRef3strB5cxx11Ev.exit ]
  %i.t = extractvalue { ptr, i1 } %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = cmpxchg ptr %i.u, ptr null, ptr %4 seq_cst seq_cst, align 8 ; 2 uses
  %i.w = extractvalue { ptr, i1 } %i.v, 1
  br i1 %i.w, label %_ZN12_GLOBAL__N_116FileToRemoveList6insertERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i, !llvm.loop !44

_ZN12_GLOBAL__N_116FileToRemoveList6insertERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i, %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  %i.x = load ptr, ptr %3, align 8, !tbaa !38     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN12_GLOBAL__N_116FileToRemoveList6insertERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !23
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_116FileToRemoveList6insertERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call fastcc void @_ZL16RegisterHandlersv()
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL19RemoveFilesToRemovev() #0 {
bb.a:
  %0 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = atomicrmw xchg ptr @_ZN12_GLOBAL__N_113FilesToRemoveE, ptr null seq_cst, align 8 ; 3 uses
  %.not1.i = icmp eq ptr %i.a, null
  br i1 %.not1.i, label %_ZN12_GLOBAL__N_116FileToRemoveList14removeAllFilesERSt6atomicIPS0_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %.0122.i = phi ptr [ %i.a, %.lr.ph.i ], [ %i.k, %bb.f ] ; 3 uses
  %i.c = atomicrmw xchg ptr %.0122.i, ptr null seq_cst, align 8 ; 4 uses
  %.not14.i = icmp eq ptr %i.c, null
  br i1 %.not14.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  %i.d = call i32 @stat(ptr noundef nonnull %i.c, ptr noundef nonnull %0) #16
  %.not15.i = icmp eq i32 %i.d, 0
  br i1 %.not15.i, label %bb.d, label %.sink.split.i

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %i.b, align 8, !tbaa !46
  %i.f = and i32 %i.e, 61440
  %i.g = icmp eq i32 %i.f, 32768
  br i1 %i.g, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @unlink(ptr noundef nonnull %i.c) #16 ; 0 uses
  %i.i = atomicrmw xchg ptr %.0122.i, ptr %i.c seq_cst, align 8 ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8
  %i.k = load atomic ptr, ptr %i.j seq_cst, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_116FileToRemoveList14removeAllFilesERSt6atomicIPS0_E.exit, label %bb.b, !llvm.loop !49

_ZN12_GLOBAL__N_116FileToRemoveList14removeAllFilesERSt6atomicIPS0_E.exit: ; preds = %bb.f, %bb.a
  %i.l = atomicrmw xchg ptr @_ZN12_GLOBAL__N_113FilesToRemoveE, ptr %i.a seq_cst, align 8 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys22DontRemoveFileOnSignalENS_9StringRefE(ptr nofree readonly captures(address_is_null) %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %.not.i = icmp eq ptr %0, null
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !32, !alias.scope !50
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !35, !alias.scope !50
  store i8 0, ptr %i.b, align 8, !tbaa !23, !alias.scope !50
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16, !noalias !50
  store i64 %1, ptr %i.a, align 8, !tbaa !37, !noalias !50
  %i.d = icmp ugt i64 %1, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !38, !alias.scope !50
  %i.f = load i64, ptr %i.a, align 8, !tbaa !37, !noalias !50
  store i64 %i.f, ptr %i.b, align 8, !tbaa !23, !alias.scope !50
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.g = phi ptr [ %i.e, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %1, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.h = load i8, ptr %0, align 1, !tbaa !23
  store i8 %i.h, ptr %i.g, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !37, !noalias !50 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !35, !alias.scope !50
  %i.k = load ptr, ptr %2, align 8, !tbaa !38, !alias.scope !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16, !noalias !50
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

_ZNK4llvh9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  %i.m = load atomic ptr, ptr @_ZZN12_GLOBAL__N_116FileToRemoveList5eraseERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4Lock acquire, align 8
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.g, label %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit.i

bb.g:                                             ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN12_GLOBAL__N_116FileToRemoveList5eraseERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4Lock, ptr noundef nonnull @_ZN4llvh14object_creatorINS_3sys10SmartMutexILb1EEEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterINS_3sys10SmartMutexILb1EEEE4callEPv) #16
  br label %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit.i

_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit.i: ; preds = %bb.g, %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  %i.n = load atomic ptr, ptr @_ZZN12_GLOBAL__N_116FileToRemoveList5eraseERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4Lock monotonic, align 8 ; 4 uses
  %i.o = call noundef zeroext i1 @_ZN4llvh21llvm_is_multithreadedEv() #16
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit.i
  %i.p = call noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7acquireEv(ptr noundef nonnull align 8 dereferenceable(13) %i.n) #16 ; 0 uses
  br label %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit.i

bb.i:                                             ; preds = %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !13
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !13
  br label %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit.i

_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit.i: ; preds = %bb.i, %bb.h
  %i.t = load atomic ptr, ptr @_ZN12_GLOBAL__N_113FilesToRemoveE seq_cst, align 8 ; 2 uses
  %.not3.i = icmp eq ptr %i.t, null
  br i1 %.not3.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.l

._crit_edge.i:                                    ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i, %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit.i
  %i.v = call noundef zeroext i1 @_ZN4llvh21llvm_is_multithreadedEv() #16
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i
  %i.w = call noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(13) %i.n) #16 ; 0 uses
  br label %_ZN12_GLOBAL__N_116FileToRemoveList5eraseERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.k:                                             ; preds = %._crit_edge.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !13
  %i.z = add i32 %i.y, -1
  store i32 %i.z, ptr %i.x, align 8, !tbaa !13
  br label %_ZN12_GLOBAL__N_116FileToRemoveList5eraseERSt6atomicIPS0_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.l:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i, %.lr.ph.i
  %.04.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.ai, %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i ] ; 3 uses
  %i.aa = load atomic ptr, ptr %.04.i seq_cst, align 8 ; 3 uses
  %.not12.i = icmp eq ptr %i.aa, null
  br i1 %.not12.i, label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = load i64, ptr %i.u, align 8, !tbaa !35  ; 3 uses
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #16
  %i.ad = icmp eq i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.n, label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i
end_hunk_0
