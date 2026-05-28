inline.NumInlined: 35
inline.NumDeleted: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.boost::atomics::detail::lock_pool::(anonymous namespace)::padded_lock_state" = type { %"struct.boost::atomics::detail::lock_pool::(anonymous namespace)::lock_state", [40 x i8] }
%"struct.boost::atomics::detail::lock_pool::(anonymous namespace)::lock_state" = type { i32, %"struct.boost::atomics::detail::lock_pool::(anonymous namespace)::wait_state_list" }
%"struct.boost::atomics::detail::lock_pool::(anonymous namespace)::wait_state_list" = type { ptr, i8 }
%"struct.std::nothrow_t" = type { i8 }
%"struct.boost::atomics::detail::once_flag" = type { i8 }
%"union.boost::atomics::detail::lock_pool::(anonymous namespace)::find_address_ptr" = type { ptr }
%struct.timespec = type { i64, i64 }

$__clang_call_terminate = comdat any

@_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_111g_lock_poolE = internal global [256 x %"struct.boost::atomics::detail::lock_pool::(anonymous namespace)::padded_lock_state"] zeroinitializer, align 64
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1
@_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_125g_pool_cleanup_registeredE = internal global %"struct.boost::atomics::detail::once_flag" zeroinitializer, align 1
@_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_114g_find_addressE = internal global %"union.boost::atomics::detail::lock_pool::(anonymous namespace)::find_address_ptr" { ptr @_ZN5boost7atomics6detail18find_address_sse41EPVKvPKS3_m }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN5boost7atomics6detail20find_address_genericEPVKvPKS3_m(ptr noundef readnone captures(address) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0912 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]  ; 3 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0912
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = icmp eq ptr %i.b, %0
  br i1 %i.c, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = add nuw i64 %.0912, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.d, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %i.e = phi i64 [ 0, %bb.a ], [ %2, %bb.b ], [ %.0912, %.lr.ph ]
  ret i64 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @_ZN5boost7atomics6detail9lock_pool10short_lockEm(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = and i64 %0, 255
  %i.b = getelementptr inbounds nuw [64 x i8], ptr @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_111g_lock_poolE, i64 %i.a ; 2 uses
  tail call fastcc void @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state9long_lockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #14
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @_ZN5boost7atomics6detail9lock_pool9long_lockEm(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = and i64 %0, 255
  %i.b = getelementptr inbounds nuw [64 x i8], ptr @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_111g_lock_poolE, i64 %i.a ; 2 uses
  tail call fastcc void @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state9long_lockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #14
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state9long_lockEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 align 2 {
_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit:
  %i.a = load atomic volatile i32, ptr %0 monotonic, align 8 ; 3 uses
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.a, label %.critedge, !prof !11

bb.a:                                             ; preds = %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit
  %i.d = or disjoint i32 %i.a, 1
  %i.e = cmpxchg volatile ptr %0, i32 %i.a, i32 %i.d acquire monotonic, align 4
  %i.f = extractvalue { i32, i1 } %i.e, 1
  br i1 %i.f, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state14lock_slow_pathEv.exit, label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit
  tail call void asm sideeffect "pause;", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !12
  %i.g = load atomic volatile i32, ptr %0 monotonic, align 8 ; 3 uses
  %i.h = and i32 %i.g, 1
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %.critedge.1, !prof !11

bb.b:                                             ; preds = %.critedge
  %i.j = or disjoint i32 %i.g, 1
  %i.k = cmpxchg volatile ptr %0, i32 %i.g, i32 %i.j acquire monotonic, align 4
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state14lock_slow_pathEv.exit, label %.critedge.1

.critedge.1:                                      ; preds = %bb.b, %.critedge
  tail call void asm sideeffect "pause;", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !12
  %i.m = load atomic volatile i32, ptr %0 monotonic, align 8 ; 3 uses
  %i.n = and i32 %i.m, 1
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %.critedge.2, !prof !11

bb.c:                                             ; preds = %.critedge.1
  %i.p = or disjoint i32 %i.m, 1
  %i.q = cmpxchg volatile ptr %0, i32 %i.m, i32 %i.p acquire monotonic, align 4
  %i.r = extractvalue { i32, i1 } %i.q, 1
  br i1 %i.r, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state14lock_slow_pathEv.exit, label %.critedge.2

.critedge.2:                                      ; preds = %bb.c, %.critedge.1
  tail call void asm sideeffect "pause;", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !12
  %i.s = load atomic volatile i32, ptr %0 monotonic, align 8 ; 3 uses
  %i.t = and i32 %i.s, 1
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %.critedge.3, !prof !11

bb.d:                                             ; preds = %.critedge.2
  %i.v = or disjoint i32 %i.s, 1
  %i.w = cmpxchg volatile ptr %0, i32 %i.s, i32 %i.v acquire monotonic, align 4
  %i.x = extractvalue { i32, i1 } %i.w, 1
  br i1 %i.x, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state14lock_slow_pathEv.exit, label %.critedge.3

.critedge.3:                                      ; preds = %bb.d, %.critedge.2
  tail call void asm sideeffect "pause;", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !12
  %i.y = load atomic volatile i32, ptr %0 monotonic, align 8 ; 3 uses
  %i.z = and i32 %i.y, 1
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.e, label %.critedge.4, !prof !11

bb.e:                                             ; preds = %.critedge.3
  %i.ab = or disjoint i32 %i.y, 1
  %i.ac = cmpxchg volatile ptr %0, i32 %i.y, i32 %i.ab acquire monotonic, align 4
  %i.ad = extractvalue { i32, i1 } %i.ac, 1
  br i1 %i.ad, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state14lock_slow_pathEv.exit, label %.critedge.4

.critedge.4:                                      ; preds = %bb.e, %.critedge.3
  tail call void asm sideeffect "pause;", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !12
  %i.ae = load atomic volatile i32, ptr %0 monotonic, align 8 ; 3 uses
  %i.af = and i32 %i.ae, 1
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.f, label %.critedge.5, !prof !11

bb.f:                                             ; preds = %.critedge.4
  %i.ah = or disjoint i32 %i.ae, 1
  %i.ai = cmpxchg volatile ptr %0, i32 %i.ae, i32 %i.ah acquire monotonic, align 4
  %i.aj = extractvalue { i32, i1 } %i.ai, 1
  br i1 %i.aj, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state14lock_slow_pathEv.exit, label %.critedge.5

.critedge.5:                                      ; preds = %bb.f, %.critedge.4
  tail call void asm sideeffect "pause;", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !12
  %i.ak = load atomic volatile i32, ptr %0 monotonic, align 8 ; 3 uses
  %i.al = and i32 %i.ak, 1
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.g, label %.critedge.6, !prof !11

bb.g:                                             ; preds = %.critedge.5
  %i.an = or disjoint i32 %i.ak, 1
  %i.ao = cmpxchg volatile ptr %0, i32 %i.ak, i32 %i.an acquire monotonic, align 4
  %i.ap = extractvalue { i32, i1 } %i.ao, 1
  br i1 %i.ap, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state14lock_slow_pathEv.exit, label %.critedge.6

.critedge.6:                                      ; preds = %bb.g, %.critedge.5
  tail call void asm sideeffect "pause;", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !12
  %i.aq = load atomic volatile i32, ptr %0 monotonic, align 8 ; 3 uses
  %i.ar = and i32 %i.aq, 1
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.h, label %.critedge.7, !prof !11

bb.h:                                             ; preds = %.critedge.6
  %i.at = or disjoint i32 %i.aq, 1
  %i.au = cmpxchg volatile ptr %0, i32 %i.aq, i32 %i.at acquire monotonic, align 4
  %i.av = extractvalue { i32, i1 } %i.au, 1
  br i1 %i.av, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state14lock_slow_pathEv.exit, label %.critedge.7

.critedge.7:                                      ; preds = %bb.h, %.critedge.6
  tail call void asm sideeffect "pause;", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !12
  %i.aw = load atomic volatile i32, ptr %0 monotonic, align 8 ; 3 uses
  %i.ax = and i32 %i.aw, 1
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %.critedge.8, !prof !11

bb.i:                                             ; preds = %.critedge.7
  %i.az = or disjoint i32 %i.aw, 1
  %i.ba = cmpxchg volatile ptr %0, i32 %i.aw, i32 %i.az acquire monotonic, align 4
  %i.bb = extractvalue { i32, i1 } %i.ba, 1
  br i1 %i.bb, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state14lock_slow_pathEv.exit, label %.critedge.8

.critedge.8:                                      ; preds = %bb.i, %.critedge.7
  tail call void asm sideeffect "pause;", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !12
  %i.bc = load atomic volatile i32, ptr %0 monotonic, align 8 ; 3 uses
  %i.bd = and i32 %i.bc, 1
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.j, label %.critedge.9, !prof !11

bb.j:                                             ; preds = %.critedge.8
  %i.bf = or disjoint i32 %i.bc, 1
  %i.bg = cmpxchg volatile ptr %0, i32 %i.bc, i32 %i.bf acquire monotonic, align 4
  %i.bh = extractvalue { i32, i1 } %i.bg, 1
  br i1 %i.bh, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state14lock_slow_pathEv.exit, label %.critedge.9

.critedge.9:                                      ; preds = %bb.j, %.critedge.8
  tail call void asm sideeffect "pause;", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !12
  %i.bi = load atomic volatile i32, ptr %0 monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %.backedge, %.critedge.9
  %.0.i8 = phi i32 [ %i.bi, %.critedge.9 ], [ %.0.i8.be, %.backedge ] ; 5 uses
  %i.bj = and i32 %.0.i8, 1
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.l, label %bb.m, !prof !11

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
  %i.bt = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 128, i32 noundef %i.bp, ptr noundef null, ptr noundef null, i32 noundef 0) #14 ; 0 uses
  %i.bu = load atomic volatile i32, ptr %0 monotonic, align 8
  br label %.backedge

.backedge:                                        ; preds = %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit.i, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit6.i
  %.0.i8.be = phi i32 [ %i.bo, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit6.i ], [ %i.bu, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit.i ], [ %i.bs, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i ]
  br label %bb.k, !llvm.loop !13

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
  %i.m = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 129, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0) #14
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
  %i.m = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull %0, i32 noundef 129, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0) #14
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
define noundef ptr @_ZN5boost7atomics6detail9lock_pool19allocate_wait_stateEPvPVKv(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc noundef ptr @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list15allocate_bufferEmPNS4_6headerE(i64 noundef 2, ptr noundef null) #14 ; 3 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !14
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list14find_or_createEPVKv.exit.thread, label %.critedge.thread.i, !prof !18

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.h = load atomic volatile i64, ptr @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_114g_find_addressE monotonic, align 8
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = invoke noundef i64 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i64 noundef %i.g)
          to label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i.i unwind label %bb.d, !inline_history !22 ; 2 uses

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i.i: ; preds = %bb.c
  %i.k = icmp ult i64 %i.j, %i.g
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !14 ; 6 uses
  br i1 %i.k, label %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.i, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i._ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.thread_crit_edge.i

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i._ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.thread_crit_edge.i: ; preds = %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre32.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !23
  br label %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #15
  unreachable

_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.i: ; preds = %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !23   ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.j
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24   ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.thread.i, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list14find_or_createEPVKv.exit, !prof !26

_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.thread.i: ; preds = %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.i, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i._ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.thread_crit_edge.i
  %i.t = phi i64 [ %.pre32.i, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i._ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.thread_crit_edge.i ], [ %i.p, %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.i ] ; 2 uses
  %i.u = load i64, ptr %.pre.i, align 8, !tbaa !19
  %i.v = icmp eq i64 %i.u, %i.t
  br i1 %i.v, label %bb.e, label %.critedge.thread.i, !prof !18

bb.e:                                             ; preds = %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.thread.i
  %i.w = shl i64 %i.t, 1
  %i.x = tail call fastcc noundef ptr @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list15allocate_bufferEmPNS4_6headerE(i64 noundef %i.w, ptr noundef nonnull %.pre.i) #14 ; 3 uses
  %.not26.i = icmp eq ptr %i.x, null
  br i1 %.not26.i, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list14find_or_createEPVKv.exit.thread, label %bb.f, !prof !18

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.y) #14
  store ptr %i.x, ptr %i.a, align 8, !tbaa !14
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.f, %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.thread.i, %bb.b
  %i.z = phi ptr [ %.pre.i, %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.thread.i ], [ %i.x, %bb.f ], [ %i.d, %bb.b ] ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !19  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aa ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !24 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.g, label %bb.i, !prof !18

bb.g:                                             ; preds = %.critedge.thread.i
  %i.ai = tail call noalias noundef dereferenceable_or_null(24) ptr @_ZnwmRKSt9nothrow_t(i64 noundef 24, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #16 ; 7 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list14find_or_createEPVKv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.ai, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.aa, ptr %i.ak, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i32 0, ptr %i.al, align 8, !tbaa !30
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store i32 0, ptr %i.am, align 4, !tbaa !32
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge.thread.i
  %.018.i = phi ptr [ %i.ai, %bb.h ], [ %i.ag, %.critedge.thread.i ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  store ptr %1, ptr %i.an, align 8, !tbaa !7
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !19
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !19
  br label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list14find_or_createEPVKv.exit

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list14find_or_createEPVKv.exit: ; preds = %bb.i, %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.i
  %.4.i = phi ptr [ %i.s, %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit.i ], [ %.018.i, %bb.i ] ; 3 uses
  %i.ar = load i64, ptr %.4.i, align 8, !tbaa !27
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %.4.i, align 8, !tbaa !27
  br label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list14find_or_createEPVKv.exit.thread

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list14find_or_createEPVKv.exit.thread: ; preds = %bb.g, %bb.e, %bb.b, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list14find_or_createEPVKv.exit
  %.4.i8 = phi ptr [ %.4.i, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list14find_or_createEPVKv.exit ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.g ]
  ret ptr %.4.i8
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost7atomics6detail9lock_pool15free_wait_stateEPvS3_(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list5eraseEPNS3_10wait_stateE.exit, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !27
  %i.b = add i64 %i.a, -1                         ; 2 uses
  store i64 %i.b, ptr %1, align 8, !tbaa !27
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list5eraseEPNS3_10wait_stateE.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val24.i = load ptr, ptr %i.d, align 8, !tbaa !14 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val24.i, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !29   ; 5 uses
  %i.h = load i64, ptr %.val24.i, align 8, !tbaa !19
  %i.i = add i64 %i.h, -1                         ; 4 uses
  %.not.i = icmp eq i64 %i.g, %i.i
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.val24.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.i ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  store ptr %i.n, ptr %i.o, align 8, !tbaa !7
  store ptr null, ptr %i.m, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24   ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.g
  store ptr %i.q, ptr %i.r, align 8, !tbaa !24
  store ptr %1, ptr %i.p, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.g, ptr %i.s, align 8, !tbaa !29
  store i64 %i.i, ptr %i.f, align 8, !tbaa !29
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  store ptr null, ptr %i.t, align 8, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !19
  %i.w = add i64 %i.v, -1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i8, ptr %i.x, align 8, !tbaa !33, !range !34, !noundef !35
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.g, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list5eraseEPNS3_10wait_stateE.exit, !prof !18

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list10free_spareEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #14
  br label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list5eraseEPNS3_10wait_stateE.exit

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list5eraseEPNS3_10wait_stateE.exit: ; preds = %bb.g, %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost7atomics6detail9lock_pool4waitEPvS3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !32
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
  %i.r = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 129, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0) #14
  %i.s = and i64 %i.r, 4294967295
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.u = and i32 %.lcssa.i.i, -4
  %i.v = cmpxchg volatile ptr %0, i32 %.lcssa.i.i, i32 %i.u monotonic monotonic, align 4 ; 0 uses
  br label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit.i.preheader

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit.i.preheader: ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  br label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit.i

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit.i: ; preds = %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit.i.preheader, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit.i
  %i.w = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull %i.a, i32 noundef 128, i32 noundef %i.b, ptr noundef null, ptr noundef null, i32 noundef 0) #14
  %i.x = and i64 %i.w, 4294967295
  %.not.i = icmp eq i64 %i.x, 4
  br i1 %.not.i, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit.i, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state4waitERNS3_10lock_stateE.exit

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state4waitERNS3_10lock_stateE.exit: ; preds = %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit.i
  tail call fastcc void @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state9long_lockEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  %i.y = load i32, ptr %i.c, align 4, !tbaa !32
  %i.z = add i32 %i.y, -1
  store i32 %i.z, ptr %i.c, align 4, !tbaa !32
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %2, align 8
  store i64 1000, ptr %i.aa, align 8, !tbaa !36
  %i.ab = invoke i32 @nanosleep(ptr noundef nonnull %2, ptr noundef null)
          to label %_ZN5boost7atomics6detail9wait_someEv.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #15
  unreachable

_ZN5boost7atomics6detail9wait_someEv.exit:        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call fastcc void @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state9long_lockEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost7atomics6detail9wait_someEv.exit, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state4waitERNS3_10lock_stateE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost7atomics6detail9lock_pool10notify_oneEPvPVKv(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_oneERNS3_10lock_stateE.exit, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.e = load atomic volatile i64, ptr @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_114g_find_addressE monotonic, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = invoke noundef i64 %i.f(ptr noundef %1, ptr noundef nonnull %i.c, i64 noundef %i.d)
          to label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i unwind label %bb.c, !inline_history !22 ; 2 uses

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i: ; preds = %bb.b
  %i.h = icmp ult i64 %i.g, %i.d
  br i1 %i.h, label %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_oneERNS3_10lock_stateE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #15
  unreachable

_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit: ; preds = %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.g
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24   ; 3 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_oneERNS3_10lock_stateE.exit, label %bb.d, !prof !26

bb.d:                                             ; preds = %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !30
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !32
  %.not.i6 = icmp eq i32 %i.u, 0
  br i1 %.not.i6, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_oneERNS3_10lock_stateE.exit, label %bb.e, !prof !18

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull %i.q, i32 noundef 131, i32 noundef 0, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 0) #14 ; 0 uses
  tail call void asm sideeffect "lock; orl $1, $0\0A\09", "=*m,ir,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) align 8 dereferenceable(24) %0, i32 2, ptr nonnull elementtype(i32) align 8 dereferenceable(24) %0) #14, !srcloc !38
  br label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_oneERNS3_10lock_stateE.exit

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_oneERNS3_10lock_stateE.exit: ; preds = %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i, %bb.a, %bb.e, %bb.d, %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost7atomics6detail9lock_pool10notify_allEPvPVKv(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_allERNS3_10lock_stateE.exit, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.e = load atomic volatile i64, ptr @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_114g_find_addressE monotonic, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = invoke noundef i64 %i.f(ptr noundef %1, ptr noundef nonnull %i.c, i64 noundef %i.d)
          to label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i unwind label %bb.c, !inline_history !22 ; 2 uses

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i: ; preds = %bb.b
  %i.h = icmp ult i64 %i.g, %i.d
  br i1 %i.h, label %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_allERNS3_10lock_stateE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #15
  unreachable

_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit: ; preds = %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.g
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24   ; 3 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_allERNS3_10lock_stateE.exit, label %bb.d, !prof !26

bb.d:                                             ; preds = %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !30
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !32
  %.not.i6 = icmp eq i32 %i.u, 0
  br i1 %.not.i6, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_allERNS3_10lock_stateE.exit, label %bb.e, !prof !18

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull %i.q, i32 noundef 131, i32 noundef 0, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 0) #14 ; 0 uses
  tail call void asm sideeffect "lock; orl $1, $0\0A\09", "=*m,ir,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) align 8 dereferenceable(24) %0, i32 2, ptr nonnull elementtype(i32) align 8 dereferenceable(24) %0) #14, !srcloc !38
  br label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_allERNS3_10lock_stateE.exit

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_allERNS3_10lock_stateE.exit: ; preds = %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i, %bb.a, %bb.e, %bb.d, %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost7atomics6detail9lock_pool12thread_fenceEv() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i8 0, ptr %i.a, align 1, !tbaa !39
  call void asm sideeffect "lock; notb $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.a, ptr nonnull elementtype(i8) %i.a) #14, !srcloc !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define void @_ZN5boost7atomics6detail9lock_pool12signal_fenceEv() local_unnamed_addr #3 {
_ZN5boost7atomics6detail27fence_operations_gcc_atomic12signal_fenceENS_12memory_orderE.exit:
  fence syncscope("singlethread") seq_cst
  ret void
}

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc noundef ptr @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list15allocate_bufferEmPNS4_6headerE(i64 noundef %0, ptr noundef readonly captures(address_is_null) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load atomic volatile i8, ptr @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_125g_pool_cleanup_registeredE monotonic, align 1
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw volatile xchg ptr @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_125g_pool_cleanup_registeredE, i8 1 monotonic, align 1
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @atexit(ptr noundef nonnull @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_117cleanup_lock_poolEv) #14 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.g = shl i64 %0, 4
  %i.h = add i64 %i.g, 16                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.i = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 16, i64 noundef %i.h) #14
  %.not.i = icmp ne i32 %i.i, 0
  %.pre.i = load ptr, ptr %i.a, align 8           ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.j = icmp eq ptr %.pre.i, null
  %i.k = select i1 %.not.i, i1 true, i1 %i.j
  br i1 %i.k, label %bb.i, label %bb.e, !prof !18

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %bb.f, !prof !18

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %0 ; 2 uses
  %i.n = load i64, ptr %1, align 8, !tbaa !19     ; 2 uses
  store i64 %i.n, ptr %.pre.i, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = shl i64 %i.n, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.o, i64 %i.p, i1 false)
  %i.q = load i64, ptr %1, align 8, !tbaa !19     ; 2 uses
  %.idx = shl i64 %i.q, 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %i.s = sub i64 %0, %i.q
  %i.t = shl i64 %i.s, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.r, i8 0, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.v
  %i.x = shl i64 %i.v, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.w, i64 %i.x, i1 false)
  %i.y = load i64, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %.idx34 = shl i64 %i.y, 6
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx34
  %i.aa = sub i64 %0, %i.y
  %i.ab = shl i64 %i.aa, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.z, i8 0, i64 %i.ab, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.pre.i, i8 0, i64 %i.h, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  store i64 %0, ptr %i.ac, align 8, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h
  %.0 = phi ptr [ %.pre.i, %bb.h ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_117cleanup_lock_poolEv() #2 {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit
  %.08 = phi i64 [ 0, %bb.a ], [ %i.ah, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit ] ; 2 uses
  %i.a = getelementptr inbounds nuw [64 x i8], ptr @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_111g_lock_poolE, i64 %.08 ; 8 uses
  tail call fastcc void @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state9long_lockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 1, ptr %i.c, align 16, !tbaa !41
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !14   ; 5 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list10free_spareEv.exit, label %bb.d, !prof !18

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !23   ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  %i.i = load i64, ptr %i.d, align 8, !tbaa !19   ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.013.i = phi i64 [ %i.m, %bb.e ], [ %i.i, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.013.i ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 2 uses
  %.not12.not.i = icmp eq ptr %i.l, null
  br i1 %.not12.not.i, label %.critedge.loopexit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 24) #17
  store ptr null, ptr %i.k, align 8, !tbaa !24
  %i.m = add i64 %.013.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, %i.g
  br i1 %exitcond.not.i, label %.critedge.loopexit.i, label %.lr.ph.i, !llvm.loop !43

.critedge.loopexit.i:                             ; preds = %bb.e, %.lr.ph.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %.pre15.i = load i64, ptr %.pre.i, align 8, !tbaa !19
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.d
  %i.n = phi i64 [ %.pre15.i, %.critedge.loopexit.i ], [ %i.i, %bb.d ]
  %i.o = phi ptr [ %.pre.i, %.critedge.loopexit.i ], [ %i.d, %bb.d ]
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %bb.f, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list10free_spareEv.exit

bb.f:                                             ; preds = %.critedge.i
  tail call void @free(ptr noundef nonnull %i.o) #14
  store ptr null, ptr %i.b, align 8, !tbaa !14
  br label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list10free_spareEv.exit

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list10free_spareEv.exit: ; preds = %bb.c, %.critedge.i, %bb.f
  %i.q = load atomic volatile i32, ptr %i.a monotonic, align 64 ; 3 uses
  %i.r = and i32 %i.q, -2
  %i.s = add i32 %i.r, 4                          ; 2 uses
  %i.t = cmpxchg weak volatile ptr %i.a, i32 %i.q, i32 %i.s release monotonic, align 4 ; 2 uses
  %i.u = extractvalue { i32, i1 } %i.t, 1
  br i1 %i.u, label %._crit_edge.i, label %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i

_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i: ; preds = %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list10free_spareEv.exit, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i
  %i.v = phi { i32, i1 } [ %i.z, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i ], [ %i.t, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list10free_spareEv.exit ]
  %i.w = extractvalue { i32, i1 } %i.v, 0         ; 3 uses
  %i.x = and i32 %i.w, -2
  %i.y = add i32 %i.x, 4                          ; 2 uses
  %i.z = cmpxchg weak volatile ptr %i.a, i32 %i.w, i32 %i.y release monotonic, align 4 ; 2 uses
  %i.aa = extractvalue { i32, i1 } %i.z, 1
  br i1 %i.aa, label %._crit_edge.i, label %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i

._crit_edge.i:                                    ; preds = %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list10free_spareEv.exit
  %.0.lcssa.i = phi i32 [ %i.q, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list10free_spareEv.exit ], [ %i.w, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i ]
  %.lcssa.i = phi i32 [ %i.s, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list10free_spareEv.exit ], [ %i.y, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i ] ; 2 uses
  %i.ab = and i32 %.0.lcssa.i, 2
  %.not.i6 = icmp eq i32 %i.ab, 0
  br i1 %.not.i6, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef 129, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0) #14
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit

bb.h:                                             ; preds = %bb.g
  %i.af = and i32 %.lcssa.i, -4
  %i.ag = cmpxchg volatile ptr %i.a, i32 %.lcssa.i, i32 %i.af monotonic monotonic, align 4 ; 0 uses
  br label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit: ; preds = %._crit_edge.i, %bb.g, %bb.h
  %i.ah = add nuw nsw i64 %.08, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, 256
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !44
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list10free_spareEv(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23   ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load i64, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.013 = phi i64 [ %i.j, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.013 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %.not12.not = icmp eq ptr %i.i, null
  br i1 %.not12.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 24) #17
  store ptr null, ptr %i.h, align 8, !tbaa !24
  %i.j = add i64 %.013, 1                         ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %i.d
  br i1 %exitcond.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !43

.critedge.loopexit:                               ; preds = %.lr.ph, %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %.pre15 = load i64, ptr %.pre, align 8, !tbaa !19
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.b
  %i.k = phi i64 [ %.pre15, %.critedge.loopexit ], [ %i.f, %bb.b ]
  %i.l = phi ptr [ %.pre, %.critedge.loopexit ], [ %i.a, %bb.b ]
  %i.m = icmp eq i64 %i.k, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.l) #14
  store ptr null, ptr %0, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #11

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

declare noundef i64 @_ZN5boost7atomics6detail18find_address_sse41EPVKvPKS3_m(ptr noundef, ptr noundef, i64 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind allocsize(0) }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{i64 1726017}
!13 = distinct !{!13, !10}
!14 = !{!15, !16, i64 0}
!15 = !{!"_ZTSN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_listE", !16, i64 0, !17, i64 8}
!16 = !{!"p1 _ZTSN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list6headerE", !8, i64 0}
!17 = !{!"bool", !5, i64 0}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!20, !21, i64 0}
!20 = !{!"_ZTSN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list6headerE", !21, i64 0, !21, i64 8}
!21 = !{!"long", !5, i64 0}
!22 = distinct !{null}
!23 = !{!20, !21, i64 8}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_stateE", !8, i64 0}
!26 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!27 = !{!28, !21, i64 0}
!28 = !{!"_ZTSN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_baseE", !21, i64 0, !21, i64 8}
!29 = !{!28, !21, i64 8}
!30 = !{!31, !5, i64 16}
!31 = !{!"_ZTSN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_stateE", !28, i64 0, !5, i64 16, !5, i64 20}
!32 = !{!31, !5, i64 20}
!33 = !{!15, !17, i64 8}
!34 = !{i8 0, i8 2}
!35 = !{}
!36 = !{!37, !21, i64 8}
!37 = !{!"_ZTS8timespec", !21, i64 0, !21, i64 8}
!38 = !{i64 1649078, i64 1649114}
!39 = !{!5, !5, i64 0}
!40 = !{i64 1717671}
!41 = !{!42, !17, i64 16}
!42 = !{!"_ZTSN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_stateE", !5, i64 0, !15, i64 8}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !10}
end_hunk_0
