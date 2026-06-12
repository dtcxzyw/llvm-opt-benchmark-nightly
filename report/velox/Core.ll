inline.NumInlined: 948
inline.NumDeleted: 505
begin_hunk_0_@_ZN5folly15observer_detail4Core7refreshEm:bb.a
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.cw, %bb.ay
  %i.mz = phi i1 [ false, %bb.cw ], [ true, %bb.et ], [ false, %bb.ay ]
  %.0 = phi i64 [ %i.hb, %bb.cw ], [ undef, %bb.et ], [ %i.dl, %bb.ay ]
  call void @_ZN5folly15observer_detail15ObserverManager18DependencyRecorderD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %15) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.j
  %.115 = phi i1 [ false, %bb.j ], [ %i.mz, %bb.eu ]
  %.1 = phi i64 [ %i.ae, %bb.j ], [ %.0, %bb.eu ]
  %i.na = load ptr, ptr %14, align 8, !tbaa !187, !nonnull !43, !align !189 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.nb = atomicrmw and ptr %i.na, i32 -401 seq_cst, align 4 ; 2 uses
  %i.nc = and i32 %i.nb, -401
  store i32 %i.nc, ptr %i.d, align 4, !tbaa !7
  %i.nd = and i32 %i.nb, 15
  %.not.i.i.i75 = icmp eq i32 %i.nd, 0
  br i1 %.not.i.i.i75, label %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.ew, !prof !122

bb.ew:                                            ; preds = %bb.ev
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.na, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef 15)
          to label %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ne = landingpad { ptr, i32 }
          catch ptr null
  %i.nf = extractvalue { ptr, i32 } %i.ne, 0
  call void @__clang_call_terminate(ptr %i.nf) #29
  unreachable

_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.ev, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  br i1 %.115, label %bb.ey, label %bb.gf

bb.ey:                                            ; preds = %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #10
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNK5folly12SynchronizedINS_15observer_detail4Core10DependentsENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEE4copyEv(ptr dead_on_unwind nonnull writable sret(%"struct.folly::observer_detail::Core::Dependents") align 8 %23, ptr noundef nonnull align 8 dereferenceable(36) %i.ng)
          to label %bb.ez unwind label %bb.fk

bb.ez:                                            ; preds = %bb.ey
  %i.nh = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !190 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !190 ; 2 uses
  %i.nl = icmp eq ptr %i.ni, %i.nk
  br i1 %i.nl, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ez
  %i.nm = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 5 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  br label %bb.fl

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, %bb.ez
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.np = load atomic i64, ptr %i.no seq_cst, align 16
  %i.nq = load ptr, ptr %i.nh, align 8, !tbaa !192 ; 3 uses
  %i.nr = load ptr, ptr %i.nj, align 8, !tbaa !194 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.nq, %i.nr
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt8weak_ptrIN5folly15observer_detail4CoreEES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %_ZSt8_DestroyISt8weak_ptrIN5folly15observer_detail4CoreEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.od, %_ZSt8_DestroyISt8weak_ptrIN5folly15observer_detail4CoreEEEvPT_.exit.i.i.i.i ], [ %i.nq, %._crit_edge ] ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !17 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.nt, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt8weak_ptrIN5folly15observer_detail4CoreEEEvPT_.exit.i.i.i.i, label %bb.fa

bb.fa:                                            ; preds = %.lr.ph.i.i.i.i
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 12 ; 3 uses
  %i.nv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.nv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.nw = load i32, ptr %i.nu, align 4, !tbaa !7  ; 2 uses
  %i.nx = add nsw i32 %i.nw, -1
  store i32 %i.nx, ptr %i.nu, align 4, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.fc:                                            ; preds = %bb.fa
  %i.ny = atomicrmw volatile add ptr %i.nu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.fc, %bb.fb
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.nw, %bb.fb ], [ %i.ny, %bb.fc ]
  %i.nz = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.nz, label %bb.fd, label %_ZSt8_DestroyISt8weak_ptrIN5folly15observer_detail4CoreEEEvPT_.exit.i.i.i.i

bb.fd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  %i.oa = load ptr, ptr %i.nt, align 8, !tbaa !24
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 24
  %i.oc = load ptr, ptr %i.ob, align 8
  call void %i.oc(ptr noundef nonnull align 8 dereferenceable(16) %i.nt) #10, !call_target !69, !inline_history !195
  br label %_ZSt8_DestroyISt8weak_ptrIN5folly15observer_detail4CoreEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt8weak_ptrIN5folly15observer_detail4CoreEEEvPT_.exit.i.i.i.i: ; preds = %bb.fd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.od = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i76 = icmp eq ptr %i.od, %i.nr
  br i1 %.not.i.i.i.i76, label %_ZSt8_DestroyIPSt8weak_ptrIN5folly15observer_detail4CoreEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !196

_ZSt8_DestroyIPSt8weak_ptrIN5folly15observer_detail4CoreEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt8weak_ptrIN5folly15observer_detail4CoreEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.nh, align 8, !tbaa !192
  br label %_ZSt8_DestroyIPSt8weak_ptrIN5folly15observer_detail4CoreEES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt8weak_ptrIN5folly15observer_detail4CoreEES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt8weak_ptrIN5folly15observer_detail4CoreEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, %._crit_edge
  %i.oe = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt8weak_ptrIN5folly15observer_detail4CoreEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.nq, %._crit_edge ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.oe, null
  br i1 %.not.i.i1.i.i, label %_ZN5folly15observer_detail4Core10DependentsD2Ev.exit, label %bb.fe

bb.fe:                                            ; preds = %_ZSt8_DestroyIPSt8weak_ptrIN5folly15observer_detail4CoreEES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.of = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !197
  %i.oh = ptrtoint ptr %i.og to i64
  %i.oi = ptrtoint ptr %i.oe to i64
  %i.oj = sub i64 %i.oh, %i.oi
  call void @_ZdlPvm(ptr noundef nonnull %i.oe, i64 noundef %i.oj) #30
  br label %_ZN5folly15observer_detail4Core10DependentsD2Ev.exit

_ZN5folly15observer_detail4Core10DependentsD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8weak_ptrIN5folly15observer_detail4CoreEES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #10
  br label %bb.gf

bb.ff:                                            ; preds = %bb.da
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fg:                                            ; preds = %.critedge.i.i.i.i.i.i.i
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %.body73

.body73:                                          ; preds = %.body.i, %bb.fg
  %eh.lpad-body74 = phi { ptr, i32 } [ %i.ol, %bb.fg ], [ %eh.lpad-body.i, %.body.i ]
  call void @_ZNSt10_HashtableISt10shared_ptrIN5folly15observer_detail4CoreEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %22) #10
  br label %bb.fh

bb.fh:                                            ; preds = %.body73, %bb.ff
  %.pn38 = phi { ptr, i32 } [ %eh.lpad-body74, %.body73 ], [ %i.ok, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #10
  br label %.body

.body:                                            ; preds = %bb.ba, %.body91, %bb.cy, %bb.fh, %bb.cx
  %.pn38.pn = phi { ptr, i32 } [ %.pn38, %bb.fh ], [ %.pn35, %bb.cy ], [ %i.hc, %bb.cx ], [ %i.dn, %bb.ba ], [ %eh.lpad-body92, %.body91 ]
  call void @_ZN5folly15observer_detail15ObserverManager18DependencyRecorderD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %15) #10
  br label %bb.fi

bb.fi:                                            ; preds = %.body, %bb.az
  %.pn38.pn.pn = phi { ptr, i32 } [ %.pn38.pn, %.body ], [ %i.dm, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  call void @_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #10
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.k
  %.pn38.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn, %bb.fi ], [ %i.af, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  br label %bb.gg

bb.fk:                                            ; preds = %bb.ey
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.fl:                                            ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87
  %.sroa.0104.0139 = phi ptr [ %i.ni, %.lr.ph ], [ %i.qe, %_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.0104.0139, i64 8
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !17, !noalias !198 ; 3 uses
  store ptr %i.oo, ptr %i.nm, align 8, !tbaa !20, !alias.scope !198
  %.not.i.i.i.i77 = icmp eq ptr %i.oo, null
  br i1 %.not.i.i.i.i77, label %_ZNKSt8weak_ptrIN5folly15observer_detail4CoreEE4lockEv.exit.thread, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8 ; 3 uses
  %i.oq = load atomic i32, ptr %i.op monotonic, align 8, !noalias !198
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fo, %bb.fm
  %.06.i.i.i.i.i = phi i32 [ %i.oq, %bb.fm ], [ %i.ou, %bb.fo ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.or = add nsw i32 %.06.i.i.i.i.i, 1
  %i.os = cmpxchg weak ptr %i.op, i32 %.06.i.i.i.i.i, i32 %i.or acq_rel monotonic, align 8, !noalias !198 ; 2 uses
  %i.ot = extractvalue { i32, i1 } %i.os, 1
  %i.ou = extractvalue { i32, i1 } %i.os, 0
  br i1 %i.ot, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, label %bb.fn, !llvm.loop !22

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.fn
  store ptr null, ptr %i.nm, align 8, !tbaa !20, !alias.scope !198
  br label %_ZNKSt8weak_ptrIN5folly15observer_detail4CoreEE4lockEv.exit.thread

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i: ; preds = %bb.fo
  %i.ov = load atomic i32, ptr %i.op monotonic, align 8, !noalias !198
  %.not.i.i.i78 = icmp eq i32 %i.ov, 0
  br i1 %.not.i.i.i78, label %_ZNKSt8weak_ptrIN5folly15observer_detail4CoreEE4lockEv.exit.thread, label %_ZNKSt8weak_ptrIN5folly15observer_detail4CoreEE4lockEv.exit

_ZNKSt8weak_ptrIN5folly15observer_detail4CoreEE4lockEv.exit.thread: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, %bb.fl
  store ptr null, ptr %24, align 8, !tbaa !29, !alias.scope !198
  br label %_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNKSt8weak_ptrIN5folly15observer_detail4CoreEE4lockEv.exit: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i
  %26 = load ptr, ptr %.sroa.0104.0139, align 8, !tbaa !26, !noalias !198 ; 3 uses
  store ptr %26, ptr %24, align 8, !tbaa !29, !alias.scope !198
  %.not133 = icmp eq ptr %26, null
  br i1 %.not133, label %_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.fp

bb.fp:                                            ; preds = %_ZNKSt8weak_ptrIN5folly15observer_detail4CoreEE4lockEv.exit
  store ptr %26, ptr %25, align 8, !tbaa !29
  %i.ow = load ptr, ptr %i.nm, align 8, !tbaa !20
  store ptr null, ptr %i.nm, align 8, !tbaa !20
  store ptr %i.ow, ptr %i.nn, align 8, !tbaa !20
  store ptr null, ptr %24, align 8, !tbaa !29
  invoke void @_ZN5folly15observer_detail15ObserverManager15scheduleRefreshESt10shared_ptrINS0_4CoreEEm(ptr noundef nonnull %25, i64 noundef %1)
          to label %bb.fq unwind label %bb.fx

bb.fq:                                            ; preds = %bb.fp
  %i.ox = load ptr, ptr %i.nn, align 8, !tbaa !20 ; 8 uses
  %.not.i.i79 = icmp eq ptr %i.ox, null
  br i1 %.not.i.i79, label %_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8 ; 4 uses
  %i.oz = load atomic i64, ptr %i.oy acquire, align 8 ; 2 uses
  %i.pa = icmp eq i64 %i.oz, 4294967297
  %i.pb = trunc i64 %i.oz to i32                  ; 2 uses
  br i1 %i.pa, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  store i32 0, ptr %i.oy, align 8, !tbaa !33
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ox, i64 12
  store i32 0, ptr %i.pc, align 4, !tbaa !35
  %i.pd = load ptr, ptr %i.ox, align 8, !tbaa !24
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  %i.pf = load ptr, ptr %i.pe, align 8
  call void %i.pf(ptr noundef nonnull align 8 dereferenceable(16) %i.ox) #10, !call_target !36, !inline_history !105
  %i.pg = load ptr, ptr %i.ox, align 8, !tbaa !24
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 24
  %i.pi = load ptr, ptr %i.ph, align 8
  call void %i.pi(ptr noundef nonnull align 8 dereferenceable(16) %i.ox) #10, !call_target !69, !inline_history !105
  br label %_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ft:                                            ; preds = %bb.fr
  %i.pj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i.i.i80 = icmp eq i8 %i.pj, 0
  br i1 %.not.i.i.i80, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.pk = add nsw i32 %i.pb, -1
  store i32 %i.pk, ptr %i.oy, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81

bb.fv:                                            ; preds = %bb.ft
  %i.pl = atomicrmw volatile add ptr %i.oy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81: ; preds = %bb.fv, %bb.fu
  %.0.i.i.i.i82 = phi i32 [ %i.pb, %bb.fu ], [ %i.pl, %bb.fv ]
  %i.pm = icmp eq i32 %.0.i.i.i.i82, 1
  br i1 %i.pm, label %bb.fw, label %_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !107

bb.fw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ox) #10
  br label %_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fx:                                            ; preds = %bb.fp
  %i.pn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %25) #10
  call void @_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %24) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #10
  call void @_ZN5folly15observer_detail4Core10DependentsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %23) #10
  br label %bb.ge

_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.fw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81, %bb.fs, %bb.fq, %_ZNKSt8weak_ptrIN5folly15observer_detail4CoreEE4lockEv.exit.thread, %_ZNKSt8weak_ptrIN5folly15observer_detail4CoreEE4lockEv.exit
  %i.po = load ptr, ptr %i.nm, align 8, !tbaa !20 ; 8 uses
  %.not.i.i83 = icmp eq ptr %i.po, null
  br i1 %.not.i.i83, label %_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, label %bb.fy

bb.fy:                                            ; preds = %_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8 ; 4 uses
  %i.pq = load atomic i64, ptr %i.pp acquire, align 8 ; 2 uses
  %i.pr = icmp eq i64 %i.pq, 4294967297
  %i.ps = trunc i64 %i.pq to i32                  ; 2 uses
  br i1 %i.pr, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  store i32 0, ptr %i.pp, align 8, !tbaa !33
  %i.pt = getelementptr inbounds nuw i8, ptr %i.po, i64 12
  store i32 0, ptr %i.pt, align 4, !tbaa !35
  %i.pu = load ptr, ptr %i.po, align 8, !tbaa !24
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.pw = load ptr, ptr %i.pv, align 8
  call void %i.pw(ptr noundef nonnull align 8 dereferenceable(16) %i.po) #10, !call_target !36, !inline_history !105
  %i.px = load ptr, ptr %i.po, align 8, !tbaa !24
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 24
  %i.pz = load ptr, ptr %i.py, align 8
  call void %i.pz(ptr noundef nonnull align 8 dereferenceable(16) %i.po) #10, !call_target !69, !inline_history !105
  br label %_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

bb.ga:                                            ; preds = %bb.fy
  %i.qa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i.i.i84 = icmp eq i8 %i.qa, 0
  br i1 %.not.i.i.i84, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.qb = add nsw i32 %i.ps, -1
  store i32 %i.qb, ptr %i.pp, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

bb.gc:                                            ; preds = %bb.ga
  %i.qc = atomicrmw volatile add ptr %i.pp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85: ; preds = %bb.gc, %bb.gb
  %.0.i.i.i.i86 = phi i32 [ %i.ps, %bb.gb ], [ %i.qc, %bb.gc ]
  %i.qd = icmp eq i32 %.0.i.i.i.i86, 1
  br i1 %i.qd, label %bb.gd, label %_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, !prof !107

bb.gd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.po) #10
  br label %_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87: ; preds = %_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.fz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85, %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #10
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.0104.0139, i64 16 ; 2 uses
  %i.qf = icmp eq ptr %i.qe, %i.nk
  br i1 %i.qf, label %._crit_edge, label %bb.fl

bb.ge:                                            ; preds = %bb.fx, %bb.fk
  %.pn43 = phi { ptr, i32 } [ %i.pn, %bb.fx ], [ %i.om, %bb.fk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #10
  br label %bb.gg

bb.gf:                                            ; preds = %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, %_ZN5folly15observer_detail4Core10DependentsD2Ev.exit, %bb.f
  %.2 = phi i64 [ %i.s, %bb.f ], [ %i.np, %_ZN5folly15observer_detail4Core10DependentsD2Ev.exit ], [ %.1, %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit ]
  ret i64 %.2

bb.gg:                                            ; preds = %bb.ge, %bb.fj
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %bb.ge ], [ %.pn38.pn.pn.pn, %bb.fj ]
  resume { ptr, i32 } %.pn43.pn

bb.gh:                                            ; preds = %bb.cy
  %i.qg = landingpad { ptr, i32 }
          catch ptr null
  %i.qh = extractvalue { ptr, i32 } %i.qg, 0
  call void @__clang_call_terminate(ptr %i.qh) #29
  unreachable

bb.gi:                                            ; preds = %bb.ck, %bb.bd
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !107

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #31
  br label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit

_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ %i.d, %bb.a ]
  %i.g = tail call nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE26tls_lastDeferredReaderSlotEvE2tl) ; 2 uses
  %i.h = tail call i32 @llvm.umin.i32(i32 %i.f, i32 256)
  %.sroa.speculated.i = zext nneg i32 %i.h to i64
  %i.i = getelementptr inbounds nuw [256 x i8], ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 %.sroa.speculated.i
  %i.j = icmp eq ptr %2, null                     ; 2 uses
  %i.k = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.l = or disjoint i64 %i.k, 1
  %i.m = tail call nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21tls_lastTokenlessSlotEvE2tl)
  br label %bb.c

end_hunk_0
begin_hunk_1_@_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_:bb.a
  br label %.thread81

.thread82:                                        ; preds = %.thread79
  %i.ch = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %0)
  br i1 %i.ch, label %.backedge, label %bb.t

bb.t:                                             ; preds = %.thread82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.ci = atomicrmw sub ptr %0, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cj = add i32 %i.ci, -2048                    ; 2 uses
  store i32 %i.cj, ptr %i.b, align 4, !tbaa !7
  %i.ck = icmp ugt i32 %i.cj, 2047
  %i.cl = and i32 %i.ci, 16
  %.not.i.i = icmp eq i32 %i.cl, 0
  %or.cond.i = or i1 %i.ck, %.not.i.i
  br i1 %or.cond.i, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit, label %bb.u, !prof !117

bb.u:                                             ; preds = %bb.t
  call void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit

_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %.backedge

bb.v:                                             ; preds = %bb.r
  %i.cm = cmpxchg ptr %i.bu, i64 %i.k, i64 0 seq_cst seq_cst, align 8
  %i.cn = extractvalue { i64, i1 } %i.cm, 1
  br i1 %i.cn, label %.backedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.co = atomicrmw sub ptr %0, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cp = add i32 %i.co, -2048                    ; 2 uses
  store i32 %i.cp, ptr %i.a, align 4, !tbaa !7
  %i.cq = icmp ugt i32 %i.cp, 2047
  %i.cr = and i32 %i.co, 16
  %.not.i.i61 = icmp eq i32 %i.cr, 0
  %or.cond.i62 = or i1 %i.cq, %.not.i.i61
  br i1 %or.cond.i62, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit64, label %bb.x, !prof !117

bb.x:                                             ; preds = %bb.w
  call void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit64

_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit64: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.backedge

.thread81:                                        ; preds = %.thread79, %bb.l, %bb.m, %bb.s
  ret i1 true
}

declare noundef zeroext i1 @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @sched_yield() #10 ; 0 uses
  %i.b = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.b, ptr %1, align 4, !tbaa !7
  %i.c = and i32 %i.b, %2
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @sched_yield() #10 ; 0 uses
  %i.f = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.f, ptr %1, align 4, !tbaa !7
  %i.g = and i32 %i.f, %2
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_ZN5folly19shared_mutex_detail45getCurrentThreadInvoluntaryContextSwitchCountEv() ; 0 uses
  %i.j = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.j, ptr %1, align 4, !tbaa !7
  %i.k = and i32 %i.j, %2
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load atomic i32, ptr %0 acquire, align 4 ; 4 uses
  store i32 %i.m, ptr %1, align 4, !tbaa !7
  %i.n = and i32 %i.m, %2
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.p = icmp eq i32 %3, 12
  br i1 %i.p, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.g
  %i.q = phi i32 [ %i.y, %bb.g ], [ %i.m, %.lr.ph.i ] ; 6 uses
  %i.r = and i32 %i.q, 4
  %.not.us.i = icmp eq i32 %i.r, 0
  br i1 %.not.us.i, label %.thread.us.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us.i
  %i.s = or i32 %i.q, 8                           ; 2 uses
  %.not22.us.i = icmp eq i32 %i.s, %i.q
  br i1 %.not22.us.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us.i, label %bb.f

.thread.us.i:                                     ; preds = %.lr.ph.split.us.i
  %i.t = or disjoint i32 %i.q, 4
  br label %bb.f

bb.f:                                             ; preds = %.thread.us.i, %bb.e
  %.01925.us.i = phi i32 [ %i.t, %.thread.us.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.u = cmpxchg ptr %0, i32 %i.q, i32 %.01925.us.i seq_cst seq_cst, align 4 ; 2 uses
  %i.v = extractvalue { i32, i1 } %i.u, 1
  br i1 %i.v, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.us.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.us.i: ; preds = %bb.f
  %i.w = extractvalue { i32, i1 } %i.u, 0
  store i32 %i.w, ptr %1, align 4
  br label %bb.g, !llvm.loop !258

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us.i: ; preds = %bb.f, %bb.e
  %.01926.us.i = phi i32 [ %i.q, %bb.e ], [ %.01925.us.i, %bb.f ]
  %i.x = tail call noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %.01926.us.i, ptr noundef null, ptr noundef null, i32 noundef 12) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us.i, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.us.i
  %i.y = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.y, ptr %1, align 4, !tbaa !7
  %i.z = and i32 %i.y, %2
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.i
  %i.ab = phi i32 [ %i.ah, %bb.i ], [ %i.m, %.lr.ph.i ] ; 3 uses
  %i.ac = or i32 %i.ab, %3                        ; 3 uses
  %.not22.i = icmp eq i32 %i.ac, %i.ab
  br i1 %.not22.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.i
  %i.ad = cmpxchg ptr %0, i32 %i.ab, i32 %i.ac seq_cst seq_cst, align 4 ; 2 uses
  %i.ae = extractvalue { i32, i1 } %i.ad, 1
  br i1 %i.ae, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i: ; preds = %bb.h
  %i.af = extractvalue { i32, i1 } %i.ad, 0
  store i32 %i.af, ptr %1, align 4
  br label %bb.i, !llvm.loop !258

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i: ; preds = %bb.h, %.lr.ph.split.i
  %i.ag = tail call noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %i.ac, ptr noundef null, ptr noundef null, i32 noundef %3) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i
  %i.ah = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.ah, ptr %1, align 4, !tbaa !7
  %i.ai = and i32 %i.ah, %2
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, label %.lr.ph.split.i

_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE20futexWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit: ; preds = %bb.i, %bb.g, %bb.a, %bb.b, %bb.c, %bb.d
  ret i1 true
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #1 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail8function5call_IZNS_15observer_detail15ObserverManager15scheduleRefreshESt10shared_ptrINS3_4CoreEEmEUlvE_Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(48) %0) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.19", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17, !noalias !259 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !20, !alias.scope !259
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8weak_ptrIN5folly15observer_detail4CoreEE4lockEv.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 8, !noalias !259
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.e, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.g = cmpxchg weak ptr %i.d, i32 %.06.i.i.i.i.i.i, i32 %i.f acq_rel monotonic, align 8, !noalias !259 ; 2 uses
  %i.h = extractvalue { i32, i1 } %i.g, 1
  %i.i = extractvalue { i32, i1 } %i.g, 0
  br i1 %i.h, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, label %bb.c, !llvm.loop !22

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !20, !alias.scope !259
  br label %_ZNKSt8weak_ptrIN5folly15observer_detail4CoreEE4lockEv.exit.thread.i

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i: ; preds = %bb.d
  %i.j = load atomic i32, ptr %i.d monotonic, align 8, !noalias !259
  %.not.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZNKSt8weak_ptrIN5folly15observer_detail4CoreEE4lockEv.exit.thread.i, label %_ZNKSt8weak_ptrIN5folly15observer_detail4CoreEE4lockEv.exit.i

_ZNKSt8weak_ptrIN5folly15observer_detail4CoreEE4lockEv.exit.thread.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, %bb.a
  store ptr null, ptr %1, align 8, !tbaa !29, !alias.scope !259
  br label %bb.g

_ZNKSt8weak_ptrIN5folly15observer_detail4CoreEE4lockEv.exit.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %2 = load ptr, ptr %0, align 16, !tbaa !26, !noalias !259 ; 3 uses
  store ptr %2, ptr %1, align 8, !tbaa !29, !alias.scope !259
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8weak_ptrIN5folly15observer_detail4CoreEE4lockEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !262, !nonnull !43, !align !265
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load atomic i64, ptr %i.m seq_cst, align 8
  %i.o = invoke noundef i64 @_ZN5folly15observer_detail4Core7refreshEm(ptr noundef nonnull align 16 dereferenceable(293) %2, i64 noundef %i.n)
          to label %bb.g unwind label %bb.f, !inline_history !266 ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5folly15observer_detail4CoreELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #10, !inline_history !266
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  resume { ptr, i32 } %i.p

bb.g:                                             ; preds = %bb.e, %_ZNKSt8weak_ptrIN5folly15observer_detail4CoreEE4lockEv.exit.i, %_ZNKSt8weak_ptrIN5folly15observer_detail4CoreEE4lockEv.exit.thread.i
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !20   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZZN5folly15observer_detail15ObserverManager15scheduleRefreshESt10shared_ptrINS0_4CoreEEmENKUlvE_clEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.r, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !35
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #10, !call_target !36, !inline_history !267
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #10, !call_target !69, !inline_history !267
  br label %_ZZN5folly15observer_detail15ObserverManager15scheduleRefreshESt10shared_ptrINS0_4CoreEEmENKUlvE_clEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i.i.i2.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i2.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.k ], [ %i.ae, %bb.l ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.m, label %_ZZN5folly15observer_detail15ObserverManager15scheduleRefreshESt10shared_ptrINS0_4CoreEEmENKUlvE_clEv.exit, !prof !107

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #10, !inline_history !266
  br label %_ZZN5folly15observer_detail15ObserverManager15scheduleRefreshESt10shared_ptrINS0_4CoreEEmENKUlvE_clEv.exit

_ZZN5folly15observer_detail15ObserverManager15scheduleRefreshESt10shared_ptrINS0_4CoreEEmENKUlvE_clEv.exit: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail8function13DispatchSmall4execIZNS_15observer_detail15ObserverManager15scheduleRefreshESt10shared_ptrINS4_4CoreEEmEUlvE_EEmNS1_2OpEPNS1_4DataESC_(i32 noundef %0, ptr noundef %1, ptr noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %0, label %bb.j [
    i32 0, label %bb.b
    i32 1, label %._crit_edge
    i32 2, label %_ZZN5folly15observer_detail15ObserverManager15scheduleRefreshESt10shared_ptrINS0_4CoreEEmENUlvE_D2Ev.exit
  ]

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !114
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !116
  store <2 x ptr> %i.a, ptr %2, align 8, !tbaa !116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !262, !nonnull !43, !align !265
  store ptr %i.d, ptr %i.b, align 8, !tbaa !231
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !233
  store ptr %i.h, ptr %i.e, align 8, !tbaa !233
  store ptr null, ptr %i.f, align 8, !tbaa !233
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = load i32, ptr %i.g, align 8              ; 2 uses
  %i.k = load i32, ptr %i.i, align 8
  store i32 %i.k, ptr %i.g, align 8
  store i32 %i.j, ptr %i.i, align 8
  %i.l = trunc i32 %i.j to i16
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.m = phi i16 [ %.pre, %._crit_edge ], [ %i.l, %bb.b ]
  %.not.i.i = icmp eq i16 %i.m, 0
  br i1 %.not.i.i, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb1EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !225
  invoke void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 2 dereferenceable(4) %i.n)
          to label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb1EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #29
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb1EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit.i: ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZZN5folly15observer_detail15ObserverManager15scheduleRefreshESt10shared_ptrINS0_4CoreEEmENUlvE_D2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt11shared_lockIN5folly15SharedMutexImplILb1EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i32, ptr %i.u, align 4, !tbaa !7    ; 2 uses
  %i.x = add nsw i32 %i.w, -1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.y = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.g ], [ %i.y, %bb.h ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.z, label %bb.i, label %_ZZN5folly15observer_detail15ObserverManager15scheduleRefreshESt10shared_ptrINS0_4CoreEEmENUlvE_D2Ev.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #10, !call_target !69, !inline_history !268
  br label %_ZZN5folly15observer_detail15ObserverManager15scheduleRefreshESt10shared_ptrINS0_4CoreEEmENUlvE_D2Ev.exit

bb.j:                                             ; preds = %bb.a
  tail call void @abort() #29
  unreachable

_ZZN5folly15observer_detail15ObserverManager15scheduleRefreshESt10shared_ptrINS0_4CoreEEmENUlvE_D2Ev.exit: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %_ZNSt11shared_lockIN5folly15SharedMutexImplILb1EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit.i, %bb.a
  ret i64 0
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_() local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_function_call", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %0, align 8, !tbaa !24
  invoke void @_ZN5folly15throw_exceptionISt17bad_function_callEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt17bad_function_callD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt17bad_function_callEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #22 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #10 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.a, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #28
  unreachable
}

end_hunk_1
