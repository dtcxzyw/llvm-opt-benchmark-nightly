Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/engine?download=true
inline.NumInlined: 3406
inline.NumDeleted: 1747
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !683
  %i.v = load ptr, ptr %1, align 8, !tbaa !49, !noalias !683 ; 9 uses
  %i.w = load i64, ptr %i.g, align 8, !tbaa !51, !noalias !683 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %xtraiter = and i64 %i.w, 7                     ; 3 uses
  %i.x = icmp ult i64 %i.w, 8
  br i1 %i.x, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.w, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.09.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.bt, %.lr.ph.i.i.i ] ; 9 uses
  %.078.i.i.i = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader.new ], [ %i.bs, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !52, !noalias !683
  %i.aa = sext i8 %i.z to i64
  %i.ab = xor i64 %.078.i.i.i, %i.aa
  %i.ac = mul i64 %i.ab, 1099511628211
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !52, !noalias !683
  %i.ag = sext i8 %i.af to i64
  %i.ah = xor i64 %i.ac, %i.ag
  %i.ai = mul i64 %i.ah, 1099511628211
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !52, !noalias !683
  %i.am = sext i8 %i.al to i64
  %i.an = xor i64 %i.ai, %i.am
  %i.ao = mul i64 %i.an, 1099511628211
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !52, !noalias !683
  %i.as = sext i8 %i.ar to i64
  %i.at = xor i64 %i.ao, %i.as
  %i.au = mul i64 %i.at, 1099511628211
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !52, !noalias !683
  %i.ay = sext i8 %i.ax to i64
  %i.az = xor i64 %i.au, %i.ay
  %i.ba = mul i64 %i.az, 1099511628211
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 5
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !52, !noalias !683
  %i.be = sext i8 %i.bd to i64
  %i.bf = xor i64 %i.ba, %i.be
  %i.bg = mul i64 %i.bf, 1099511628211
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !52, !noalias !683
  %i.bk = sext i8 %i.bj to i64
  %i.bl = xor i64 %i.bg, %i.bk
  %i.bm = mul i64 %i.bl, 1099511628211
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 7
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !52, !noalias !683
  %i.bq = sext i8 %i.bp to i64
  %i.br = xor i64 %i.bm, %i.bq
  %i.bs = mul i64 %i.br, 1099511628211            ; 3 uses
  %i.bt = add nuw i64 %.09.i.i.i, 8               ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !609

_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.bt, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa ]
  %.078.i.i.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader ], [ %i.bs, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod4)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.09.i.i.i.epil = phi i64 [ %i.bz, %.lr.ph.i.i.i.epil ], [ %.09.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.i.epil = phi i64 [ %i.by, %.lr.ph.i.i.i.epil ], [ %.078.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i.epil
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !52, !noalias !683
  %i.bw = sext i8 %i.bv to i64
  %i.bx = xor i64 %.078.i.i.i.epil, %i.bw
  %i.by = mul i64 %i.bx, 1099511628211            ; 2 uses
  %i.bz = add nuw i64 %.09.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !686

_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.07.lcssa.i.i.i = phi i64 [ -3750763034362895579, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.bs, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa ], [ %i.by, %.lr.ph.i.i.i.epil ]
  %i.ca = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 32, ptr noundef nonnull @.str.76, i64 noundef %.07.lcssa.i.i.i) #28, !noalias !683 ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr %i.cb, ptr %i.u, align 8, !tbaa !46, !alias.scope !683
  %i.cc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #28, !noalias !683 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !683
  store i64 %i.cc, ptr %i.a, align 8, !tbaa !25, !noalias !683
  %i.cd = icmp ugt i64 %i.cc, 15
  br i1 %i.cd, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ce = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #28 ; 2 uses
  store ptr %i.ce, ptr %i.u, align 8, !tbaa !49, !alias.scope !683
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !683
  store i64 %i.cf, ptr %i.cb, align 8, !tbaa !52, !alias.scope !683
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.cg = phi ptr [ %i.ce, %bb.e ], [ %i.cb, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ] ; 2 uses
  switch i64 %i.cc, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE18make_sentinel_baseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ch = load i8, ptr %i.b, align 16, !tbaa !52, !noalias !683
  store i8 %i.ch, ptr %i.cg, align 1, !tbaa !52
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE18make_sentinel_baseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr nonnull align 16 %i.b, i64 %i.cc, i1 false)
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE18make_sentinel_baseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE18make_sentinel_baseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !683 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !51, !alias.scope !683
  %i.ck = load ptr, ptr %i.u, align 8, !tbaa !49, !alias.scope !683
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci
  store i8 0, ptr %i.cl, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !683
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !46
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.co, align 8, !tbaa !51
  store i8 0, ptr %i.cn, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE4openERKS4_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 64 dereferenceable(137849344) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 6 uses
  %3 = alloca %class.anon.310, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr @_ZN9Stockfish3shm6detail12CleanupHooks24register_signal_handlersEv, ptr %3, align 8, !tbaa !172
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !172
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRDoFvvEJEEvRS_OT_DpOT0_EUlvE_EERS6_ENUlvE_8__invokeEv, ptr %i.b, align 8, !tbaa !172
  %i.c = call noundef i32 @pthread_once(ptr noundef nonnull @_ZN9Stockfish3shm6detail12CleanupHooks14register_once_E, ptr noundef nonnull @__once_proxy) #28 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN9Stockfish3shm6detail12CleanupHooks17ensure_registeredEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #32
  unreachable

_ZN9Stockfish3shm6detail12CleanupHooks17ensure_registeredEv.exit: ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !172
  store ptr null, ptr %i.b, align 8, !tbaa !172
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 22 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %_ZN9Stockfish3shm6detail12CleanupHooks17ensure_registeredEv.exit
  %.020 = phi i1 [ false, %_ZN9Stockfish3shm6detail12CleanupHooks17ensure_registeredEv.exit ], [ true, %.backedge.backedge ] ; 2 uses
  %i.m = load i32, ptr %i.d, align 8, !tbaa !270
  %.not.i = icmp eq i32 %i.m, -1
  %i.n = load ptr, ptr %i.e, align 8
  %.not1.i = icmp eq ptr %i.n, null
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  br i1 %or.cond.i, label %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread, label %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit

_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit: ; preds = %.backedge
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !687
  %.not74 = icmp eq ptr %i.o, null
  br i1 %.not74, label %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread, label %.thread70

_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread: ; preds = %.backedge, %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.q = call i32 @shm_open(ptr noundef %i.p, i32 noundef 194, i32 noundef 438) #28 ; 4 uses
  store i32 %i.q, ptr %i.d, align 8, !tbaa !270
  %i.r = icmp ne i32 %i.q, -1                     ; 5 uses
  br i1 %i.r, label %.preheader.i.preheader, label %bb.c

bb.c:                                             ; preds = %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.t = call i32 @shm_open(ptr noundef %i.s, i32 noundef 2, i32 noundef 438) #28 ; 2 uses
  store i32 %i.t, ptr %i.d, align 8, !tbaa !270
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %.thread70, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread, %bb.c
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.d
  %i.v = load i32, ptr %i.d, align 8, !tbaa !270
  %i.w = call i32 @flock(i32 noundef %i.v, i32 noundef 2) #28
  %.not.i30 = icmp eq i32 %i.w, -1
  br i1 %.not.i30, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader.i
  %i.x = tail call ptr @__errno_location() #34
  %i.y = load i32, ptr %i.x, align 4, !tbaa !121
  %i.z = icmp eq i32 %i.y, 4
  br i1 %i.z, label %.preheader.i, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE9lock_fileEi.exit, !llvm.loop !654

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE9lock_fileEi.exit: ; preds = %bb.d
  %i.aa = load i32, ptr %i.d, align 8, !tbaa !270
  %i.ab = call i32 @close(i32 noundef %i.aa) #28  ; 0 uses
  store i32 -1, ptr %i.d, align 8, !tbaa !270
  store i64 0, ptr %i.l, align 8, !tbaa !51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !49
  store i8 0, ptr %i.ac, align 1, !tbaa !52
  br label %.thread70

bb.e:                                             ; preds = %.preheader.i
  br i1 %i.r, label %.split, label %bb.f

.split:                                           ; preds = %bb.e
  %i.ad = call noundef zeroext i1 @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE16setup_new_regionERKS4_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 64 dereferenceable(137849344) %1) #28
  br i1 %i.ad, label %bb.n, label %.thread57

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !270
  %i.af = call i32 @fstat(i32 noundef %i.ae, ptr noundef nonnull %2) #28 ; 0 uses
  %i.ag = load i64, ptr %i.h, align 8, !tbaa !688
  %i.ah = load i64, ptr %i.i, align 8, !tbaa !647 ; 2 uses
  %i.ai = icmp ult i64 %i.ag, %i.ah
  br i1 %i.ai, label %.thread61, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.d, align 8, !tbaa !270
  %i.ak = call ptr @mmap(ptr noundef null, i64 noundef %i.ah, i32 noundef 3, i32 noundef 1, i32 noundef %i.aj, i64 noundef 0) #28 ; 5 uses
  store ptr %i.ak, ptr %i.e, align 8, !tbaa !656
  %i.al = icmp eq ptr %i.ak, inttoptr (i64 -1 to ptr)
  br i1 %i.al, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !687
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 137849344
  store ptr %i.am, ptr %i.j, align 8, !tbaa !274
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 137849388
  %i.ao = load atomic i8, ptr %i.an acquire, align 1, !range !44, !noundef !45
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !274
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !691
  %.not.i33 = icmp eq i32 %i.as, -1386276334
  br i1 %.not.i33, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !656 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.at, null
  br i1 %.not.i.i31, label %.thread61, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = load i64, ptr %i.i, align 8, !tbaa !647
  %i.av = call i32 @munmap(ptr noundef nonnull %i.at, i64 noundef %i.au) #28 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br label %.thread61

.thread:                                          ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.preheader.i37.preheader

.thread61:                                        ; preds = %bb.f, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.thread57

bb.l:                                             ; preds = %bb.g
  store ptr null, ptr %i.e, align 8, !tbaa !656
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.thread64

.thread57:                                        ; preds = %.split, %.thread61
  %4 = icmp eq i32 %i.q, -1                       ; 2 uses
  %i.aw = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.ax = call i32 @shm_unlink(ptr noundef %i.aw) #28 ; 0 uses
  %.pr = load ptr, ptr %i.e, align 8, !tbaa !656  ; 2 uses
  %.not25 = icmp eq ptr %.pr, null
  br i1 %.not25, label %.thread64, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit: ; preds = %.thread57
  %i.ay = load i64, ptr %i.i, align 8, !tbaa !647
  %i.az = call i32 @munmap(ptr noundef nonnull %.pr, i64 noundef %i.ay) #28 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br label %.thread64

.thread64:                                        ; preds = %bb.l, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit, %.thread57
  %.not26.a = phi i1 [ %4, %.thread57 ], [ %4, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit ], [ false, %bb.l ]
  %i.ba = load i32, ptr %i.d, align 8, !tbaa !270
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit, label %.preheader.i35

.preheader.i35:                                   ; preds = %.thread64, %bb.m
  %i.bc = load i32, ptr %i.d, align 8, !tbaa !270
  %i.bd = call i32 @flock(i32 noundef %i.bc, i32 noundef 8) #28
  %i.be = icmp eq i32 %i.bd, -1
  br i1 %i.be, label %bb.m, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit.loopexit

bb.m:                                             ; preds = %.preheader.i35
  %i.bf = tail call ptr @__errno_location() #34
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !121
  %i.bh = icmp eq i32 %i.bg, 4
  br i1 %i.bh, label %.preheader.i35, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit.loopexit, !llvm.loop !657

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit.loopexit: ; preds = %bb.m, %.preheader.i35
  %.pre = load i32, ptr %i.d, align 8, !tbaa !270
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit: ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit.loopexit, %.thread64
  %i.bi = phi i32 [ %.pre, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit.loopexit ], [ -1, %.thread64 ]
  %i.bj = call i32 @close(i32 noundef %i.bi) #28  ; 0 uses
  store i32 -1, ptr %i.d, align 8, !tbaa !270
  store i64 0, ptr %i.l, align 8, !tbaa !51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.bk = load ptr, ptr %i.k, align 8, !tbaa !49
  store i8 0, ptr %i.bk, align 1, !tbaa !52
  %.not = icmp eq i32 %i.q, -1
  %or.cond3 = and i1 %.not, %.not26.a
  %or.cond3.not = xor i1 %or.cond3, true
  %or.cond5 = or i1 %.020, %or.cond3.not
  br i1 %or.cond5, label %.thread70, label %.backedge.backedge

bb.n:                                             ; preds = %.split
  %.pre96 = load ptr, ptr %i.j, align 8, !tbaa !274
  %.not.i36 = icmp eq ptr %.pre96, null
  br i1 %.not.i36, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread.thread, label %.preheader.i37.preheader

.preheader.i37.preheader:                         ; preds = %.thread, %bb.n
  br label %.preheader.i37

.preheader.i37:                                   ; preds = %.preheader.i37.preheader, %.preheader.i37
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !274
  %i.bm = call i32 @pthread_mutex_lock(ptr noundef %i.bl) #28
  switch i32 %i.bm, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread [
    i32 0, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread67
    i32 130, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit
    i32 4, label %.preheader.i37
  ]

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit: ; preds = %.preheader.i37
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !274
  %i.bo = call i32 @pthread_mutex_consistent(ptr noundef %i.bn) #28
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread67, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread: ; preds = %.preheader.i37, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit
  br i1 %i.r, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread.thread, label %bb.o

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread.thread: ; preds = %bb.n, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread
  %i.bq = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.br = call i32 @shm_unlink(ptr noundef %i.bq) #28 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread.thread, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !656 ; 2 uses
  %.not.a = icmp eq ptr %i.bs, null
  br i1 %.not.a, label %bb.p, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit39

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit39: ; preds = %bb.o
  %i.bt = load i64, ptr %i.i, align 8, !tbaa !647
  %i.bu = call i32 @munmap(ptr noundef nonnull %i.bs, i64 noundef %i.bt) #28 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit39, %bb.o
  %i.bv = load i32, ptr %i.d, align 8, !tbaa !270
  %i.bw = icmp eq i32 %i.bv, -1
  br i1 %i.bw, label %.loopexit, label %.preheader.i40

.preheader.i40:                                   ; preds = %bb.p, %bb.q
  %i.bx = load i32, ptr %i.d, align 8, !tbaa !270
  %i.by = call i32 @flock(i32 noundef %i.bx, i32 noundef 8) #28
  %i.bz = icmp eq i32 %i.by, -1
  br i1 %i.bz, label %bb.q, label %.loopexit.loopexit

bb.q:                                             ; preds = %.preheader.i40
  %i.ca = tail call ptr @__errno_location() #34
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !121
  %i.cc = icmp eq i32 %i.cb, 4
  br i1 %i.cc, label %.preheader.i40, label %.loopexit.loopexit, !llvm.loop !657

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread67: ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit, %.preheader.i37
  %i.cd = call noundef zeroext i1 @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE27create_sentinel_file_lockedEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #28
  %i.ce = load ptr, ptr %i.j, align 8, !tbaa !274 ; 3 uses
  br i1 %i.cd, label %bb.x, label %bb.r

bb.r:                                             ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread67
  %.not.i42 = icmp eq ptr %i.ce, null
  br i1 %.not.i42, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ce) #28 ; 0 uses
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit: ; preds = %bb.r, %bb.s
  %i.cg = load ptr, ptr %i.e, align 8, !tbaa !656 ; 2 uses
  %.not.i43 = icmp eq ptr %i.cg, null
  br i1 %.not.i43, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit44, label %bb.t

bb.t:                                             ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit
  %i.ch = load i64, ptr %i.i, align 8, !tbaa !647
  %i.ci = call i32 @munmap(ptr noundef nonnull %i.cg, i64 noundef %i.ch) #28 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit44

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit44: ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit, %bb.t
  br i1 %i.r, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit44
  %i.cj = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.ck = call i32 @shm_unlink(ptr noundef %i.cj) #28 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit44
  %i.cl = load i32, ptr %i.d, align 8, !tbaa !270
  %i.cm = icmp eq i32 %i.cl, -1
  br i1 %i.cm, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46, label %.preheader.i45

.preheader.i45:                                   ; preds = %bb.v, %bb.w
  %i.cn = load i32, ptr %i.d, align 8, !tbaa !270
  %i.co = call i32 @flock(i32 noundef %i.cn, i32 noundef 8) #28
  %i.cp = icmp eq i32 %i.co, -1
  br i1 %i.cp, label %bb.w, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46.loopexit

bb.w:                                             ; preds = %.preheader.i45
  %i.cq = tail call ptr @__errno_location() #34
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !121
  %i.cs = icmp eq i32 %i.cr, 4
  br i1 %i.cs, label %.preheader.i45, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46.loopexit, !llvm.loop !657

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46.loopexit: ; preds = %bb.w, %.preheader.i45
  %.pre97 = load i32, ptr %i.d, align 8, !tbaa !270
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46: ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46.loopexit, %bb.v
  %i.ct = phi i32 [ %.pre97, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46.loopexit ], [ -1, %bb.v ]
  %i.cu = call i32 @close(i32 noundef %i.ct) #28  ; 0 uses
  store i32 -1, ptr %i.d, align 8, !tbaa !270
  store i64 0, ptr %i.l, align 8, !tbaa !51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.cv = load ptr, ptr %i.k, align 8, !tbaa !49
  store i8 0, ptr %i.cv, align 1, !tbaa !52
  br label %.thread70

bb.x:                                             ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread67
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cx = atomicrmw add ptr %i.cw, i32 1 acq_rel, align 4 ; 0 uses
  %i.cy = load ptr, ptr %i.j, align 8, !tbaa !274 ; 2 uses
  %.not.i47 = icmp eq ptr %i.cy, null
  br i1 %.not.i47, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit48, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cy) #28 ; 0 uses
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit48

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit48: ; preds = %bb.x, %bb.y
  %i.da = load i32, ptr %i.d, align 8, !tbaa !270
  %i.db = icmp eq i32 %i.da, -1
  br i1 %i.db, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit50, label %.preheader.i49

.preheader.i49:                                   ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit48, %bb.z
  %i.dc = load i32, ptr %i.d, align 8, !tbaa !270
  %i.dd = call i32 @flock(i32 noundef %i.dc, i32 noundef 8) #28
  %i.de = icmp eq i32 %i.dd, -1
  br i1 %i.de, label %bb.z, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit50

bb.z:                                             ; preds = %.preheader.i49
  %i.df = tail call ptr @__errno_location() #34
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !121
  %i.dh = icmp eq i32 %i.dg, 4
  br i1 %i.dh, label %.preheader.i49, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit50, !llvm.loop !657

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit50: ; preds = %.preheader.i49, %bb.z, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit48
  call void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17register_instanceEPNS1_16SharedMemoryBaseE(ptr noundef nonnull %0)
  br label %.thread70

.loopexit.loopexit:                               ; preds = %.preheader.i40, %bb.q
  %.pre98 = load i32, ptr %i.d, align 8, !tbaa !270
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.p
  %i.di = phi i32 [ %.pre98, %.loopexit.loopexit ], [ -1, %bb.p ]
  %i.dj = call i32 @close(i32 noundef %i.di) #28  ; 0 uses
  store i32 -1, ptr %i.d, align 8, !tbaa !270
  store i64 0, ptr %i.l, align 8, !tbaa !51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.dk = load ptr, ptr %i.k, align 8, !tbaa !49
  store i8 0, ptr %i.dk, align 1, !tbaa !52
  %or.cond7 = or i1 %i.r, %.020
  br i1 %or.cond7, label %.thread70, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.loopexit, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit
  br label %.backedge

.thread70:                                        ; preds = %bb.c, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit, %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit, %.loopexit, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit50, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE9lock_fileEi.exit
  %.3 = phi i1 [ false, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46 ], [ true, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit50 ], [ false, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE9lock_fileEi.exit ], [ false, %.loopexit ], [ false, %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit ], [ false, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit ], [ false, %bb.c ]
  ret i1 %.3
}

declare i32 @shm_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE16setup_new_regionERKS4_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 64 dereferenceable(137849344) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %union.pthread_mutexattr_t, align 4 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !270
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !647
  %i.e = tail call i32 @ftruncate(i32 noundef %i.b, i64 noundef %i.d) #28
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE23initialize_shared_mutexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.a, align 8, !tbaa !270
  %i.h = load i64, ptr %i.c, align 8, !tbaa !647
  %i.i = tail call noundef i32 @posix_fallocate(i32 noundef %i.g, i64 noundef 0, i64 noundef %i.h) #28
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE23initialize_shared_mutexEv.exit.thread

end_hunk_0
