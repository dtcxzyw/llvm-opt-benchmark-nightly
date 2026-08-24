Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/lock_pool?download=true
inline.NumInlined: 71
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state9long_lockEv:_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit
bb.e:                                             ; preds = %.critedge.3
  %i.ab = or disjoint i32 %i.y, 1
  %i.ac = cmpxchg volatile ptr %0, i32 %i.y, i32 %i.ab acquire monotonic, align 4
  %i.ad = extractvalue { i32, i1 } %i.ac, 1
  br i1 %i.ad, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state14lock_slow_pathEv.exit, label %.critedge.4

.critedge.4:                                      ; preds = %bb.e, %.critedge.3
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !13
  %i.ae = load atomic volatile i32, ptr %0 monotonic, align 8 ; 3 uses
  %i.af = and i32 %i.ae, 1
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.f, label %.critedge.5, !prof !12

bb.f:                                             ; preds = %.critedge.4
  %i.ah = or disjoint i32 %i.ae, 1
  %i.ai = cmpxchg volatile ptr %0, i32 %i.ae, i32 %i.ah acquire monotonic, align 4
  %i.aj = extractvalue { i32, i1 } %i.ai, 1
  br i1 %i.aj, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state14lock_slow_pathEv.exit, label %.critedge.5

.critedge.5:                                      ; preds = %bb.f, %.critedge.4
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !13
  %i.ak = load atomic volatile i32, ptr %0 monotonic, align 8 ; 3 uses
  %i.al = and i32 %i.ak, 1
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.g, label %.critedge.6, !prof !12

bb.g:                                             ; preds = %.critedge.5
  %i.an = or disjoint i32 %i.ak, 1
  %i.ao = cmpxchg volatile ptr %0, i32 %i.ak, i32 %i.an acquire monotonic, align 4
  %i.ap = extractvalue { i32, i1 } %i.ao, 1
  br i1 %i.ap, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state14lock_slow_pathEv.exit, label %.critedge.6

.critedge.6:                                      ; preds = %bb.g, %.critedge.5
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !13
  %i.aq = load atomic volatile i32, ptr %0 monotonic, align 8 ; 3 uses
  %i.ar = and i32 %i.aq, 1
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.h, label %.critedge.7, !prof !12

bb.h:                                             ; preds = %.critedge.6
  %i.at = or disjoint i32 %i.aq, 1
  %i.au = cmpxchg volatile ptr %0, i32 %i.aq, i32 %i.at acquire monotonic, align 4
  %i.av = extractvalue { i32, i1 } %i.au, 1
  br i1 %i.av, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state14lock_slow_pathEv.exit, label %.critedge.7

.critedge.7:                                      ; preds = %bb.h, %.critedge.6
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !13
  %i.aw = load atomic volatile i32, ptr %0 monotonic, align 8 ; 3 uses
  %i.ax = and i32 %i.aw, 1
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %.critedge.8, !prof !12

bb.i:                                             ; preds = %.critedge.7
  %i.az = or disjoint i32 %i.aw, 1
  %i.ba = cmpxchg volatile ptr %0, i32 %i.aw, i32 %i.az acquire monotonic, align 4
  %i.bb = extractvalue { i32, i1 } %i.ba, 1
  br i1 %i.bb, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state14lock_slow_pathEv.exit, label %.critedge.8

.critedge.8:                                      ; preds = %bb.i, %.critedge.7
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !13
  %i.bc = load atomic volatile i32, ptr %0 monotonic, align 8 ; 3 uses
  %i.bd = and i32 %i.bc, 1
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.j, label %.critedge.9, !prof !12

bb.j:                                             ; preds = %.critedge.8
  %i.bf = or disjoint i32 %i.bc, 1
  %i.bg = cmpxchg volatile ptr %0, i32 %i.bc, i32 %i.bf acquire monotonic, align 4
  %i.bh = extractvalue { i32, i1 } %i.bg, 1
  br i1 %i.bh, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state14lock_slow_pathEv.exit, label %.critedge.9

.critedge.9:                                      ; preds = %bb.j, %.critedge.8
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !13
  %i.bi = load atomic volatile i32, ptr %0 monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %.backedge, %.critedge.9
  %.0.i8 = phi i32 [ %i.bi, %.critedge.9 ], [ %.0.i8.be, %.backedge ] ; 5 uses
  %i.bj = and i32 %.0.i8, 1
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.l, label %bb.m, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.bl = or disjoint i32 %.0.i8, 1
  %i.bm = cmpxchg weak volatile ptr %0, i32 %.0.i8, i32 %i.bl acquire monotonic, align 4 ; 2 uses
  %i.bn = extractvalue { i32, i1 } %i.bm, 1
  br i1 %i.bn, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state14lock_slow_pathEv.exit, label %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit6.i

_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit6.i: ; preds = %bb.l
  %i.bo = extractvalue { i32, i1 } %i.bm, 0
  br label %.backedge

bb.m:                                             ; preds = %bb.k
  %i.bp = or i32 %.0.i8, 2                        ; 2 uses
  %i.bq = cmpxchg weak volatile ptr %0, i32 %.0.i8, i32 %i.bp monotonic monotonic, align 4 ; 2 uses
  %i.br = extractvalue { i32, i1 } %i.bq, 1
  br i1 %i.br, label %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit.i, label %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i

_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i: ; preds = %bb.m
  %i.bs = extractvalue { i32, i1 } %i.bq, 0
  br label %.backedge

_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit.i: ; preds = %bb.m
  %i.bt = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 128, i32 noundef %i.bp, ptr noundef null, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  %i.bu = load atomic volatile i32, ptr %0 monotonic, align 8
  br label %.backedge

.backedge:                                        ; preds = %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit.i, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit6.i
  %.0.i8.be = phi i32 [ %i.bo, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit6.i ], [ %i.bu, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit.i ], [ %i.bs, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i ]
  br label %bb.k, !llvm.loop !14

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state14lock_slow_pathEv.exit: ; preds = %bb.l, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost7atomics6detail9lock_pool6unlockEPv(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load atomic volatile i32, ptr %0 monotonic, align 4 ; 3 uses
  %i.b = and i32 %i.a, -2
  %i.c = add i32 %i.b, 4                          ; 2 uses
  %i.d = cmpxchg weak volatile ptr %0, i32 %i.a, i32 %i.c release monotonic, align 4 ; 2 uses
  %i.e = extractvalue { i32, i1 } %i.d, 1
  br i1 %i.e, label %._crit_edge.i, label %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i

_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i: ; preds = %bb.a, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i
  %i.f = phi { i32, i1 } [ %i.j, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i ], [ %i.d, %bb.a ]
  %i.g = extractvalue { i32, i1 } %i.f, 0         ; 3 uses
  %i.h = and i32 %i.g, -2
  %i.i = add i32 %i.h, 4                          ; 2 uses
  %i.j = cmpxchg weak volatile ptr %0, i32 %i.g, i32 %i.i release monotonic, align 4 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %._crit_edge.i, label %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i

._crit_edge.i:                                    ; preds = %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i, %bb.a
  %.0.lcssa.i = phi i32 [ %i.a, %bb.a ], [ %i.g, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i ]
  %.lcssa.i = phi i32 [ %i.c, %bb.a ], [ %i.i, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i ] ; 2 uses
  %i.l = and i32 %.0.lcssa.i, 2
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.m = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 129, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0) #15
  %i.n = and i64 %i.m, 4294967295
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit

bb.c:                                             ; preds = %bb.b
  %i.p = and i32 %.lcssa.i, -4
  %i.q = cmpxchg volatile ptr %0, i32 %.lcssa.i, i32 %i.p monotonic monotonic, align 4 ; 0 uses
  br label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit: ; preds = %._crit_edge.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 align 2 {
_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit:
  %i.a = load atomic volatile i32, ptr %0 monotonic, align 8 ; 3 uses
  %i.b = and i32 %i.a, -2
  %i.c = add i32 %i.b, 4                          ; 2 uses
  %i.d = cmpxchg weak volatile ptr %0, i32 %i.a, i32 %i.c release monotonic, align 4 ; 2 uses
  %i.e = extractvalue { i32, i1 } %i.d, 1
  br i1 %i.e, label %._crit_edge, label %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit

_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit: ; preds = %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit
  %i.f = phi { i32, i1 } [ %i.j, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit ], [ %i.d, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit ]
  %i.g = extractvalue { i32, i1 } %i.f, 0         ; 3 uses
  %i.h = and i32 %i.g, -2
  %i.i = add i32 %i.h, 4                          ; 2 uses
  %i.j = cmpxchg weak volatile ptr %0, i32 %i.g, i32 %i.i release monotonic, align 4 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %._crit_edge, label %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit

._crit_edge:                                      ; preds = %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit
  %.0.lcssa = phi i32 [ %i.a, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit ], [ %i.g, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit ]
  %.lcssa = phi i32 [ %i.c, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit ], [ %i.i, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit ] ; 2 uses
  %i.l = and i32 %.0.lcssa, 2
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE23compare_exchange_strongERVjRjjNS_12memory_orderES7_.exit, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  %i.m = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull %0, i32 noundef 129, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0) #15
  %i.n = and i64 %i.m, 4294967295
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.b, label %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE23compare_exchange_strongERVjRjjNS_12memory_orderES7_.exit

bb.b:                                             ; preds = %bb.a
  %i.p = and i32 %.lcssa, -4
  %i.q = cmpxchg volatile ptr %0, i32 %.lcssa, i32 %i.p monotonic monotonic, align 4 ; 0 uses
  br label %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE23compare_exchange_strongERVjRjjNS_12memory_orderES7_.exit

_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE23compare_exchange_strongERVjRjjNS_12memory_orderES7_.exit: ; preds = %bb.b, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN5boost7atomics6detail9lock_pool19allocate_wait_stateEPvPVKv(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc noundef ptr @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list15allocate_bufferEmPNS4_6headerE(i64 noundef 2, ptr noundef null) #15 ; 3 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !15
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list14find_or_createEPVKv.exit.thread, label %.critedge.thread.i, !prof !19

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.h = load atomic volatile i64, ptr @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_114g_find_addressE monotonic, align 8
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = invoke noundef i64 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i64 noundef %i.g)
          to label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i.i unwind label %bb.d, !inline_history !23 ; 2 uses

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i.i: ; preds = %bb.c
  %i.k = icmp ult i64 %i.j, %i.g
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !15 ; 6 uses
  br i1 %i.k, label %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.i, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i._ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.thread_crit_edge.i

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i._ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.thread_crit_edge.i: ; preds = %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre32.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  br label %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #16
  unreachable

_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.i: ; preds = %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !24   ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.j
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.thread.i, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list14find_or_createEPVKv.exit, !prof !27

_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.thread.i: ; preds = %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.i, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i._ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.thread_crit_edge.i
  %i.t = phi i64 [ %.pre32.i, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i._ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.thread_crit_edge.i ], [ %i.p, %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.i ] ; 2 uses
  %i.u = load i64, ptr %.pre.i, align 8, !tbaa !20
  %i.v = icmp eq i64 %i.u, %i.t
  br i1 %i.v, label %bb.e, label %.critedge.thread.i, !prof !19

bb.e:                                             ; preds = %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.thread.i
  %i.w = shl i64 %i.t, 1
  %i.x = tail call fastcc noundef ptr @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list15allocate_bufferEmPNS4_6headerE(i64 noundef %i.w, ptr noundef nonnull %.pre.i) #15 ; 3 uses
  %.not26.i = icmp eq ptr %i.x, null
  br i1 %.not26.i, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list14find_or_createEPVKv.exit.thread, label %bb.f, !prof !19

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.y) #15
  store ptr %i.x, ptr %i.a, align 8, !tbaa !15
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.f, %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.thread.i, %bb.b
  %i.z = phi ptr [ %.pre.i, %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.thread.i ], [ %i.x, %bb.f ], [ %i.d, %bb.b ] ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !20  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aa ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.g, label %bb.i, !prof !19

bb.g:                                             ; preds = %.critedge.thread.i
  %i.ai = tail call noalias noundef dereferenceable_or_null(24) ptr @_ZnwmRKSt9nothrow_t(i64 noundef 24, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #17 ; 7 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list14find_or_createEPVKv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.ai, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.aa, ptr %i.ak, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i32 0, ptr %i.al, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store i32 0, ptr %i.am, align 4, !tbaa !33
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !25
  %.val27.pre.i = load ptr, ptr %i.a, align 8, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge.thread.i
  %.val27.i = phi ptr [ %.val27.pre.i, %bb.h ], [ %i.z, %.critedge.thread.i ]
  %.018.i = phi ptr [ %i.ai, %bb.h ], [ %i.ag, %.critedge.thread.i ]
  %2 = getelementptr inbounds nuw i8, ptr %.val27.i, i64 16
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aa
  store ptr %1, ptr %i.an, align 8, !tbaa !8
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !20
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !20
  br label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list14find_or_createEPVKv.exit

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list14find_or_createEPVKv.exit: ; preds = %bb.i, %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.i
  %.4.i = phi ptr [ %i.s, %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.i ], [ %.018.i, %bb.i ] ; 3 uses
  %i.ar = load i64, ptr %.4.i, align 8, !tbaa !28
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %.4.i, align 8, !tbaa !28
  br label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list14find_or_createEPVKv.exit.thread

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list14find_or_createEPVKv.exit.thread: ; preds = %bb.g, %bb.e, %bb.b, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list14find_or_createEPVKv.exit
  %.4.i8 = phi ptr [ %.4.i, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list14find_or_createEPVKv.exit ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.g ]
  ret ptr %.4.i8
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost7atomics6detail9lock_pool15free_wait_stateEPvS3_(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list5eraseEPNS3_10wait_stateE.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !28
  %i.b = add i64 %i.a, -1                         ; 2 uses
  store i64 %i.b, ptr %1, align 8, !tbaa !28
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list5eraseEPNS3_10wait_stateE.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val24.i = load ptr, ptr %i.d, align 8, !tbaa !15 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val24.i, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !30   ; 5 uses
  %i.h = load i64, ptr %.val24.i, align 8, !tbaa !20
  %i.i = add i64 %i.h, -1                         ; 4 uses
  %.not.i = icmp eq i64 %i.g, %i.i
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.val24.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.i ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  store ptr %i.n, ptr %i.o, align 8, !tbaa !8
  store ptr null, ptr %i.m, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25   ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.g
  store ptr %i.q, ptr %i.r, align 8, !tbaa !25
  store ptr %1, ptr %i.p, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.g, ptr %i.s, align 8, !tbaa !30
  store i64 %i.i, ptr %i.f, align 8, !tbaa !30
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  store ptr null, ptr %i.t, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !20
  %i.w = add i64 %i.v, -1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i8, ptr %i.x, align 8, !tbaa !34, !range !35, !noundef !36
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.g, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list5eraseEPNS3_10wait_stateE.exit, !prof !19

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list10free_spareEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #15
  br label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list5eraseEPNS3_10wait_stateE.exit

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list5eraseEPNS3_10wait_stateE.exit: ; preds = %bb.g, %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost7atomics6detail9lock_pool4waitEPvS3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load atomic volatile i32, ptr %i.a monotonic, align 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !33
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !33
  %i.f = load atomic volatile i32, ptr %0 monotonic, align 4 ; 3 uses
  %i.g = and i32 %i.f, -2
  %i.h = add i32 %i.g, 4                          ; 2 uses
  %i.i = cmpxchg weak volatile ptr %0, i32 %i.f, i32 %i.h release monotonic, align 4 ; 2 uses
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %._crit_edge.i.i, label %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i.i

_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i.i: ; preds = %bb.b, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i.i
  %i.k = phi { i32, i1 } [ %i.o, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i.i ], [ %i.i, %bb.b ]
  %i.l = extractvalue { i32, i1 } %i.k, 0         ; 3 uses
  %i.m = and i32 %i.l, -2
  %i.n = add i32 %i.m, 4                          ; 2 uses
  %i.o = cmpxchg weak volatile ptr %0, i32 %i.l, i32 %i.n release monotonic, align 4 ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 1
  br i1 %i.p, label %._crit_edge.i.i, label %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i.i

._crit_edge.i.i:                                  ; preds = %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i.i, %bb.b
  %.0.lcssa.i.i = phi i32 [ %i.f, %bb.b ], [ %i.l, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i.i ]
  %.lcssa.i.i = phi i32 [ %i.h, %bb.b ], [ %i.n, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i.i ] ; 2 uses
  %i.q = and i32 %.0.lcssa.i.i, 2
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit.i.preheader, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.r = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 129, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0) #15
  %i.s = and i64 %i.r, 4294967295
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.u = and i32 %.lcssa.i.i, -4
  %i.v = cmpxchg volatile ptr %0, i32 %.lcssa.i.i, i32 %i.u monotonic monotonic, align 4 ; 0 uses
  br label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit.i.preheader

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit.i.preheader: ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  br label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit.i

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit.i: ; preds = %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit.i.preheader, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit.i
  %i.w = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull %i.a, i32 noundef 128, i32 noundef %i.b, ptr noundef null, ptr noundef null, i32 noundef 0) #15
  %i.x = and i64 %i.w, 2147483648
  %.not10.i = icmp eq i64 %i.x, 0
  br i1 %.not10.i, label %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit.i
  %i.y = tail call ptr @__errno_location() #18
  %i.z = load i32, ptr %i.y, align 4, !tbaa !37
  %.not.i = icmp eq i32 %i.z, 4
  br i1 %.not.i, label %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit.i, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state4waitERNS3_10lock_stateE.exit, !prof !19

_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit.i: ; preds = %bb.e, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit.i
  %i.aa = load atomic volatile i32, ptr %i.a monotonic, align 4
  %i.ab = icmp eq i32 %i.aa, %i.b
  br i1 %i.ab, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit.i, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state4waitERNS3_10lock_stateE.exit, !llvm.loop !38

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state4waitERNS3_10lock_stateE.exit: ; preds = %bb.e, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit.i
  tail call fastcc void @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state9long_lockEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !33
  %i.ad = add i32 %i.ac, -1
  store i32 %i.ad, ptr %i.c, align 4, !tbaa !33
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %2, align 8
  store i64 1000, ptr %i.ae, align 8, !tbaa !39
  %i.af = invoke i32 @nanosleep(ptr noundef nonnull %2, ptr noundef null)
          to label %_ZN5boost7atomics6detail9wait_someEv.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #16
  unreachable

_ZN5boost7atomics6detail9wait_someEv.exit:        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call fastcc void @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state9long_lockEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost7atomics6detail9wait_someEv.exit, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state4waitERNS3_10lock_stateE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN5boost7atomics6detail9lock_pool10wait_untilEPvS3_iRK8timespec(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 4 uses
  %5 = alloca %struct.timespec, align 8           ; 7 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.n, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load atomic volatile i32, ptr %i.a monotonic, align 4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
end_hunk_0
