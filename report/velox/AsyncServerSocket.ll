inline.NumInlined: 2640
inline.NumDeleted: 1337
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN5folly17AsyncServerSocket4bindEt:bb.a
  %i.ah = invoke noundef zeroext i16 @_ZNK5folly13SocketAddress7getPortEv(ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.ai = zext i16 %i.ah to i32
  %i.aj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 6, ptr noundef nonnull @.str.57, i32 noundef %i.ai) #39 ; 0 uses
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !10725
  call void @freeaddrinfo(ptr noundef %i.ak) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.al = invoke i32 @getaddrinfo(ptr noundef null, ptr noundef nonnull %i.f, ptr noundef nonnull %3, ptr noundef nonnull %i.e)
          to label %bb.m unwind label %bb.u       ; 2 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 0, ptr %i.c, align 4, !tbaa !7
  store i32 %i.al, ptr %i.d, align 4, !tbaa !7
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.thread, label %bb.n, !prof !10731

.thread:                                          ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.an = invoke noundef ptr @_ZN6google17MakeCheckOpStringIiiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @.str.59)
          to label %bb.o unwind label %bb.u       ; 2 uses

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.an, ptr %5, align 8, !tbaa !10732
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.p, label %bb.v

bb.p:                                             ; preds = %.thread, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  %i.ao = load i8, ptr %i.o, align 8, !tbaa !10696
  %cond.i.i = icmp eq i8 %i.ao, 1
  br i1 %cond.i.i, label %bb.q, label %_ZN5folly13SocketAddressD2Ev.exit, !prof !10698

bb.q:                                             ; preds = %bb.p
  %i.ap = load ptr, ptr %4, align 8, !tbaa !10699 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN5folly13SocketAddressD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 110) #50
  br label %_ZN5folly13SocketAddressD2Ev.exit

_ZN5folly13SocketAddressD2Ev.exit:                ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.ae

bb.s:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly13SocketAddressD2Ev.exit65

bb.t:                                             ; preds = %bb.k, %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.u:                                             ; preds = %bb.n, %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.v:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  invoke void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull @.str.30, i32 noundef 549, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %bb.x unwind label %bb.z       ; 0 uses

bb.x:                                             ; preds = %bb.w
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #48
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #48
  unreachable

bb.aa:                                            ; preds = %bb.y, %bb.u
  %.pn52 = phi { ptr, i32 } [ %i.av, %bb.y ], [ %i.at, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.t
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %bb.aa ], [ %i.as, %bb.t ] ; 3 uses
  %i.ax = load i8, ptr %i.o, align 8, !tbaa !10696
  %cond.i.i64 = icmp eq i8 %i.ax, 1
  br i1 %cond.i.i64, label %bb.ac, label %_ZN5folly13SocketAddressD2Ev.exit65, !prof !10698

bb.ac:                                            ; preds = %bb.ab
  %i.ay = load ptr, ptr %4, align 8, !tbaa !10699 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN5folly13SocketAddressD2Ev.exit65, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 110) #50
  br label %_ZN5folly13SocketAddressD2Ev.exit65

_ZN5folly13SocketAddressD2Ev.exit65:              ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.s
  %.pn52.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.s ], [ %.pn52.pn, %bb.ab ], [ %.pn52.pn, %bb.ac ], [ %.pn52.pn, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_17AsyncServerSocket4bindEtE3$_0Lb1EED2Ev.exit71"

bb.ae:                                            ; preds = %_ZN5folly13SocketAddressD2Ev.exit, %._crit_edge
  %.040120 = load ptr, ptr %i.e, align 8, !tbaa !10725 ; 2 uses
  %.not45121 = icmp eq ptr %.040120, null
  br i1 %.not45121, label %._crit_edge125, label %.lr.ph124

._crit_edge125:                                   ; preds = %bb.ae, %bb.ak
  %i.ba = load ptr, ptr %i.k, align 8, !tbaa !10676
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !10676
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.bk, label %"_ZN5folly6detail14ScopeGuardImplIZNS_17AsyncServerSocket4bindEtE3$_0Lb1EED2Ev.exit"

.lr.ph124:                                        ; preds = %bb.ae, %bb.ak
  %.040122 = phi ptr [ %.040, %bb.ak ], [ %.040120, %bb.ae ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.040122, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !10728
  %.not46 = icmp eq i32 %i.be, 10
  br i1 %.not46, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %.lr.ph124
  invoke fastcc void @"_ZZN5folly17AsyncServerSocket4bindEtENK3$_1clEP8addrinfo"(ptr nonnull %0, ptr noundef %.040122)
          to label %bb.ak unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12system_error         ; 3 uses
  %i.bg = extractvalue { ptr, i32 } %i.bf, 1
  %i.bh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12system_error) #39
  %i.bi = icmp eq i32 %i.bg, %i.bh
  br i1 %i.bi, label %bb.ah, label %"_ZN5folly6detail14ScopeGuardImplIZNS_17AsyncServerSocket4bindEtE3$_0Lb1EED2Ev.exit71"

bb.ah:                                            ; preds = %bb.ag
  %i.bj = extractvalue { ptr, i32 } %i.bf, 0
  %i.bk = call ptr @__cxa_begin_catch(ptr %i.bj) #39 ; 0 uses
  br i1 %i.m, label %bb.ai, label %bb.bf

bb.ai:                                            ; preds = %bb.ah
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !10676 ; 2 uses
  %i.bm = load ptr, ptr %i.l, align 8, !tbaa !10676 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  %i.bo = icmp eq i32 %.038, 25
  %or.cond4.not = select i1 %i.bn, i1 true, i1 %i.bo
  br i1 %or.cond4.not, label %bb.bf, label %.preheader

bb.aj:                                            ; preds = %bb.at
  %i.bp = load ptr, ptr %i.k, align 8, !tbaa !10727 ; 3 uses
  %i.bq = load ptr, ptr %i.l, align 8, !tbaa !10726 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bq, %i.bp
  br i1 %.not.i.i, label %_ZNSt6vectorIN5folly17AsyncServerSocket18ServerEventHandlerESaIS2_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aj, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %i.bp, %bb.aj ] ; 3 uses
  %i.br = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !14
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(210) %.05.i.i.i.i) #39, !call_target !10735, !inline_history !10738
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 216 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bt, %i.bq
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5folly17AsyncServerSocket18ServerEventHandlerES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !10739

_ZSt8_DestroyIPN5folly17AsyncServerSocket18ServerEventHandlerES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.bp, ptr %i.l, align 8, !tbaa !10726
  br label %_ZNSt6vectorIN5folly17AsyncServerSocket18ServerEventHandlerESaIS2_EE5clearEv.exit

_ZNSt6vectorIN5folly17AsyncServerSocket18ServerEventHandlerESaIS2_EE5clearEv.exit: ; preds = %bb.aj, %_ZSt8_DestroyIPN5folly17AsyncServerSocket18ServerEventHandlerES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.bu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 6, ptr noundef nonnull @.str.57, i32 noundef 0) #39 ; 0 uses
  %i.bv = load ptr, ptr %i.e, align 8, !tbaa !10725
  call void @freeaddrinfo(ptr noundef %i.bv) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.bw = invoke i32 @getaddrinfo(ptr noundef null, ptr noundef nonnull %i.f, ptr noundef nonnull %3, ptr noundef nonnull %i.e)
          to label %bb.au unwind label %bb.ay     ; 2 uses

bb.ak:                                            ; preds = %bb.af, %.lr.ph124
  %i.bx = getelementptr inbounds nuw i8, ptr %.040122, i64 40
  %.040 = load ptr, ptr %i.bx, align 8, !tbaa !10725 ; 2 uses
  %.not45 = icmp eq ptr %.040, null
  br i1 %.not45, label %._crit_edge125, label %.lr.ph124, !llvm.loop !10740

.preheader:                                       ; preds = %bb.ai, %bb.at
  %.sroa.073.0130 = phi ptr [ %i.cn, %bb.at ], [ %i.bl, %bb.ai ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.073.0130, i64 192 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !10741 ; 2 uses
  %i.ca = icmp eq i32 %i.bz, -1
  br i1 %i.ca, label %bb.at, label %bb.al

bb.al:                                            ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  call void @llvm.experimental.noalias.scope.decl(metadata !10743)
  %i.cb = load ptr, ptr %i.r, align 8, !tbaa !10746, !noalias !10743 ; 3 uses
  store ptr %i.cb, ptr %i.q, align 8, !tbaa !10747, !alias.scope !10743
  %.not.i.i.i.i66 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i66, label %_ZNKSt8weak_ptrIN5folly17ShutdownSocketSetEE4lockEv.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 3 uses
  %i.cd = load atomic i32, ptr %i.cc monotonic, align 8, !noalias !10743
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  %.06.i.i.i.i.i = phi i32 [ %i.cd, %bb.am ], [ %i.ch, %bb.ao ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ce = add nsw i32 %.06.i.i.i.i.i, 1
  %i.cf = cmpxchg weak ptr %i.cc, i32 %.06.i.i.i.i.i, i32 %i.ce acq_rel monotonic, align 8, !noalias !10743 ; 2 uses
  %i.cg = extractvalue { i32, i1 } %i.cf, 1
  %i.ch = extractvalue { i32, i1 } %i.cf, 0
  br i1 %i.cg, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, label %bb.an, !llvm.loop !10748

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.an
  store ptr null, ptr %i.q, align 8, !tbaa !10747, !alias.scope !10743
  %.sroa.0.0.copyload.pre.pre = load i32, ptr %i.by, align 8, !tbaa !7
  br label %_ZNKSt8weak_ptrIN5folly17ShutdownSocketSetEE4lockEv.exit.thread

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i: ; preds = %bb.ao
  %i.ci = load atomic i32, ptr %i.cc monotonic, align 8, !noalias !10743
  %.not.i.i.i = icmp eq i32 %i.ci, 0
  %.sroa.0.0.copyload.pre.pre139 = load i32, ptr %i.by, align 8, !tbaa !7 ; 3 uses
  br i1 %.not.i.i.i, label %_ZNKSt8weak_ptrIN5folly17ShutdownSocketSetEE4lockEv.exit.thread, label %_ZNKSt8weak_ptrIN5folly17ShutdownSocketSetEE4lockEv.exit

_ZNKSt8weak_ptrIN5folly17ShutdownSocketSetEE4lockEv.exit.thread: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, %bb.al
  %.sroa.0.0.copyload.pre = phi i32 [ %.sroa.0.0.copyload.pre.pre139, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i ], [ %.sroa.0.0.copyload.pre.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i ], [ %i.bz, %bb.al ]
  store ptr null, ptr %7, align 8, !tbaa !10749, !alias.scope !10743
  br label %bb.ar

_ZNKSt8weak_ptrIN5folly17ShutdownSocketSetEE4lockEv.exit: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i
  %i.cj = load ptr, ptr %i.p, align 8, !tbaa !10751, !noalias !10743 ; 3 uses
  store ptr %i.cj, ptr %7, align 8, !tbaa !10749, !alias.scope !10743
  %.not84 = icmp eq ptr %i.cj, null
  br i1 %.not84, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt8weak_ptrIN5folly17ShutdownSocketSetEE4lockEv.exit
  %i.ck = invoke noundef i32 @_ZN5folly17ShutdownSocketSet5closeENS_13NetworkSocketE(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i32 %.sroa.0.0.copyload.pre.pre139)
          to label %bb.as unwind label %bb.aq     ; 0 uses

bb.aq:                                            ; preds = %bb.ar, %bb.ap
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5folly17ShutdownSocketSetELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.bj

bb.ar:                                            ; preds = %_ZNKSt8weak_ptrIN5folly17ShutdownSocketSetEE4lockEv.exit.thread, %_ZNKSt8weak_ptrIN5folly17ShutdownSocketSetEE4lockEv.exit
  %.sroa.0.0.copyload = phi i32 [ %.sroa.0.0.copyload.pre, %_ZNKSt8weak_ptrIN5folly17ShutdownSocketSetEE4lockEv.exit.thread ], [ %.sroa.0.0.copyload.pre.pre139, %_ZNKSt8weak_ptrIN5folly17ShutdownSocketSetEE4lockEv.exit ]
  %i.cm = invoke noundef i32 @_ZN5folly10closeNoIntENS_13NetworkSocketE(i32 %.sroa.0.0.copyload)
          to label %bb.as unwind label %bb.aq     ; 0 uses

bb.as:                                            ; preds = %bb.ar, %bb.ap
  call void @_ZNSt12__shared_ptrIN5folly17ShutdownSocketSetELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.at

bb.at:                                            ; preds = %.preheader, %bb.as
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.073.0130, i64 216 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.bm
  br i1 %i.co, label %bb.aj, label %.preheader

bb.au:                                            ; preds = %_ZNSt6vectorIN5folly17AsyncServerSocket18ServerEventHandlerESaIS2_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 %i.bw, ptr %i.b, align 4, !tbaa !7
  %i.cp = icmp eq i32 %i.bw, 0
  br i1 %i.cp, label %.thread82, label %bb.av, !prof !10731

.thread82:                                        ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.cq = invoke noundef ptr @_ZN6google17MakeCheckOpStringIiiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull @.str.59)
          to label %bb.aw unwind label %bb.ay     ; 2 uses

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.cq, ptr %8, align 8, !tbaa !10732
  %.not85 = icmp eq ptr %i.cq, null
  br i1 %.not85, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %.thread82, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  invoke void @__cxa_end_catch()
          to label %bb.bh unwind label %bb.bi

bb.ay:                                            ; preds = %bb.av, %_ZNSt6vectorIN5folly17AsyncServerSocket18ServerEventHandlerESaIS2_EE5clearEv.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.az:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  invoke void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull @.str.30, i32 noundef 577, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %9)
          to label %bb.bb unwind label %bb.bd     ; 0 uses

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %9) #48
  unreachable

bb.bc:                                            ; preds = %bb.az
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %bb.be

bb.bd:                                            ; preds = %bb.ba
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %9) #48
  unreachable

bb.be:                                            ; preds = %bb.bc, %bb.ay
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.bc ], [ %i.cr, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %bb.bj

bb.bf:                                            ; preds = %bb.ai, %bb.ah
  invoke void @__cxa_rethrow() #51
          to label %bb.bq unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bh:                                            ; preds = %bb.ax
  %i.cw = add nuw nsw i32 %.038, 1
  br label %bb.e, !llvm.loop !10752

bb.bi:                                            ; preds = %bb.ax
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_17AsyncServerSocket4bindEtE3$_0Lb1EED2Ev.exit71"

bb.bj:                                            ; preds = %bb.bg, %bb.be, %bb.aq
  %.pn49 = phi { ptr, i32 } [ %i.cl, %bb.aq ], [ %.pn, %bb.be ], [ %i.cv, %bb.bg ]
  invoke void @__cxa_end_catch()
          to label %"_ZN5folly6detail14ScopeGuardImplIZNS_17AsyncServerSocket4bindEtE3$_0Lb1EED2Ev.exit71" unwind label %bb.bp

bb.bk:                                            ; preds = %._crit_edge125
  %i.cy = call ptr @__cxa_allocate_exception(i64 16) #39 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull @.str.60)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  invoke void @__cxa_throw(ptr nonnull %i.cy, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #51
          to label %bb.bq unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cy) #39
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_17AsyncServerSocket4bindEtE3$_0Lb1EED2Ev.exit71"

bb.bn:                                            ; preds = %bb.bl
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_17AsyncServerSocket4bindEtE3$_0Lb1EED2Ev.exit71"

"_ZN5folly6detail14ScopeGuardImplIZNS_17AsyncServerSocket4bindEtE3$_0Lb1EED2Ev.exit": ; preds = %._crit_edge125
  %.val.val.i = load ptr, ptr %i.e, align 8, !tbaa !10725
  call void @freeaddrinfo(ptr noundef %.val.val.i) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  ret void

"_ZN5folly6detail14ScopeGuardImplIZNS_17AsyncServerSocket4bindEtE3$_0Lb1EED2Ev.exit71": ; preds = %bb.ag, %bb.g, %_ZN5folly13SocketAddressD2Ev.exit65, %bb.bj, %bb.bi, %bb.bn, %bb.bm
  %.merged56 = phi { ptr, i32 } [ %i.cz, %bb.bm ], [ %i.da, %bb.bn ], [ %i.ad, %bb.g ], [ %.pn52.pn.pn, %_ZN5folly13SocketAddressD2Ev.exit65 ], [ %i.cx, %bb.bi ], [ %.pn49, %bb.bj ], [ %i.bf, %bb.ag ]
  %.val.val.i70 = load ptr, ptr %i.e, align 8, !tbaa !10725
  call void @freeaddrinfo(ptr noundef %.val.val.i70) #39
  br label %bb.bo

bb.bo:                                            ; preds = %"_ZN5folly6detail14ScopeGuardImplIZNS_17AsyncServerSocket4bindEtE3$_0Lb1EED2Ev.exit71", %bb.d
  %.merged = phi { ptr, i32 } [ %i.t, %bb.d ], [ %.merged56, %"_ZN5folly6detail14ScopeGuardImplIZNS_17AsyncServerSocket4bindEtE3$_0Lb1EED2Ev.exit71" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  resume { ptr, i32 } %.merged

bb.bp:                                            ; preds = %bb.bj
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #48
  unreachable

bb.bq:                                            ; preds = %bb.bl, %bb.bf
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly17AsyncServerSocket10getAddressEPNS_13SocketAddressE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %3 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10676 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10676 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.critedge, !prof !10753

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str.30, i32 noundef 631)
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.69, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #48
  unreachable

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #48
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 216
  %i.m = icmp ugt i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %.critedge21

bb.e:                                             ; preds = %.critedge
  %i.n = load ptr, ptr @_ZZNK5folly17AsyncServerSocket10getAddressEPNS_13SocketAddressEE8vlocal__, align 8, !tbaa !10754 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZNK5folly17AsyncServerSocket10getAddressEPNS_13SocketAddressEE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str.30, i32 noundef 2)
  br i1 %i.p, label %bb.h, label %.critedge21
end_hunk_0
