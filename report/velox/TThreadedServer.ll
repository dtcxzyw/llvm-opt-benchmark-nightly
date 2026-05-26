inline.NumInlined: 303
inline.NumDeleted: 163
begin_hunk_0_@_ZN6apache6thrift6server15TThreadedServer17onClientConnectedERKSt10shared_ptrINS1_16TConnectedClientEE:bb.a
  store i32 1, ptr %i.h, align 4, !tbaa !27, !noalias !40
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6apache6thrift6server15TThreadedServer22TConnectedClientRunnerESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.f, align 8, !tbaa !7, !noalias !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  invoke void @_ZN6apache6thrift6server15TThreadedServer22TConnectedClientRunnerC1ERKSt10shared_ptrINS1_16TConnectedClientEE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6apache6thrift6server15TThreadedServer22TConnectedClientRunnerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !40

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6apache6thrift6server15TThreadedServer22TConnectedClientRunnerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 56) #19, !noalias !40
  br label %bb.be

bb.b:                                             ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.k, align 8, !tbaa !9, !alias.scope !40
  store ptr %i.i, ptr %2, align 8, !tbaa !43, !alias.scope !40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45   ; 2 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.n, align 8, !tbaa !9
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.g, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.g, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN6apache6thrift11concurrency8RunnableEEC2INS1_6server15TThreadedServer22TConnectedClientRunnerEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.r = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6apache6thrift11concurrency8RunnableEEC2INS1_6server15TThreadedServer22TConnectedClientRunnerEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN6apache6thrift11concurrency8RunnableEEC2INS1_6server15TThreadedServer22TConnectedClientRunnerEvEERKS_IT_E.exit: ; preds = %bb.c, %bb.d
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.18") align 8 %3, ptr noundef nonnull align 8 dereferenceable(9) %i.m, ptr noundef nonnull %4)
          to label %bb.e unwind label %bb.ay

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN6apache6thrift11concurrency8RunnableEEC2INS1_6server15TThreadedServer22TConnectedClientRunnerEvEERKS_IT_E.exit
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !9    ; 8 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency8RunnableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.w, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !27
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #17, !inline_history !51
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #17, !inline_history !51
  br label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency8RunnableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i10 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.z, %bb.i ], [ %i.aj, %bb.j ]
  %i.ak = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ak, label %bb.k, label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency8RunnableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #17
  br label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency8RunnableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6apache6thrift11concurrency8RunnableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.al = load ptr, ptr %2, align 8, !tbaa !52    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !9  ; 2 uses
  %i.ap = load <2 x ptr>, ptr %3, align 16, !tbaa !13
  store <2 x ptr> %i.ap, ptr %5, align 16, !tbaa !13
  %.not.i.i.i11 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i11, label %_ZNSt10shared_ptrIN6apache6thrift11concurrency6ThreadEEC2ERKS4_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN6apache6thrift11concurrency8RunnableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i12 = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i12, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN6apache6thrift11concurrency6ThreadEEC2ERKS4_.exit

bb.n:                                             ; preds = %bb.l
  %i.au = atomicrmw volatile add ptr %i.aq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6apache6thrift11concurrency6ThreadEEC2ERKS4_.exit

_ZNSt10shared_ptrIN6apache6thrift11concurrency6ThreadEEC2ERKS4_.exit: ; preds = %_ZNSt12__shared_ptrIN6apache6thrift11concurrency8RunnableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.m, %bb.n
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull %5)
          to label %bb.o unwind label %bb.az

bb.o:                                             ; preds = %_ZNSt10shared_ptrIN6apache6thrift11concurrency6ThreadEEC2ERKS4_.exit
  %i.ay = load ptr, ptr %i.am, align 8, !tbaa !9  ; 8 uses
  %.not.i.i13 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.az, align 8, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !27
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #17, !inline_history !54
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #17, !inline_history !54
  br label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i14 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i14, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

bb.t:                                             ; preds = %bb.r
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i16 = phi i32 [ %i.bc, %bb.s ], [ %i.bm, %bb.t ]
  %i.bn = icmp eq i32 %.0.i.i.i.i16, 1
  br i1 %i.bn, label %bb.u, label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #17
  br label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.o, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.bo = load ptr, ptr %1, align 8, !tbaa !55    ; 3 uses
  store ptr %i.bo, ptr %6, align 8, !tbaa !58
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.an, align 8, !tbaa !9  ; 2 uses
  %i.bs = load <2 x ptr>, ptr %3, align 16, !tbaa !13
  store <2 x ptr> %i.bs, ptr %i.bp, align 8, !tbaa !13
  %.not.i.i.i.i17 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i17, label %_ZNSt4pairIKPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEEEC2IS4_RS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !3
  br label %_ZNSt4pairIKPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEEEC2IS4_RS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit

bb.x:                                             ; preds = %bb.v
  %i.bx = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.pre.pre.i.i.pre = load ptr, ptr %6, align 8, !tbaa !61
  br label %_ZNSt4pairIKPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEEEC2IS4_RS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit

_ZNSt4pairIKPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEEEC2IS4_RS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit: ; preds = %_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.w, %bb.x
  %.pre.i.pre.pre.i.i = phi ptr [ %i.bo, %_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.bo, %bb.w ], [ %.pre.i.pre.pre.i.i.pre, %bb.x ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.by, align 8, !tbaa !62 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIKPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEEEC2IS4_RS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %_ZNSt4pairIKPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEEEC2IS4_RS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !61 ; 2 uses
  %i.cc = icmp ult ptr %.pre.i.pre.pre.i.i, %i.cb ; 2 uses
  %.in.v.i.i.i = select i1 %i.cc, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !62 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i18, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !63

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.cc, label %._crit_edge.thread.i.i.i, label %bb.z

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZNSt4pairIKPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEEEC2IS4_RS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.bz, %_ZNSt4pairIKPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEEEC2IS4_RS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit ] ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !22
  %i.cf = icmp eq ptr %.019.lcssa29.i.i.i, %i.ce
  br i1 %i.cf, label %select.unfold.i.i, label %bb.y

bb.y:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.cg = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #21
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !61
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i
  %i.ch = phi ptr [ %.pre.i.i, %bb.y ], [ %i.cb, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.y ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ci = icmp ult ptr %i.ch, %.pre.i.pre.pre.i.i
  br i1 %i.ci, label %select.unfold.i.i, label %bb.ab

select.unfold.i.i:                                ; preds = %bb.z, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.z ] ; 3 uses
  %i.cj = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.bz
  br i1 %i.cj, label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE10_M_insert_ISB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %select.unfold.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !61
  %i.cm = icmp ult ptr %.pre.i.pre.pre.i.i, %i.cl
  br label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE10_M_insert_ISB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE10_M_insert_ISB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit.i.i: ; preds = %bb.aa, %select.unfold.i.i
  %i.cn = phi i1 [ %i.cm, %bb.aa ], [ true, %select.unfold.i.i ]
  %i.co = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #20
          to label %.noexc19 unwind label %bb.ba  ; 3 uses

.noexc19:                                         ; preds = %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE10_M_insert_ISB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  store ptr %.pre.i.pre.pre.i.i, ptr %i.cp, align 8, !tbaa !58
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cr = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !13
  store ptr null, ptr %i.bq, align 8, !tbaa !9
  store <2 x ptr> %i.cr, ptr %i.cq, align 8, !tbaa !13
  store ptr null, ptr %i.bp, align 8, !tbaa !34
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cn, ptr noundef nonnull %i.co, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bz) #17
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !24
  %i.cu = add i64 %i.ct, 1
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !24
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc19, %bb.z
  %i.cv = load ptr, ptr %i.bq, align 8, !tbaa !9  ; 8 uses
  %.not.i.i.i20 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i20, label %_ZNSt4pairIKPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 4 uses
  %i.cx = load atomic i64, ptr %i.cw acquire, align 8 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 4294967297
  %i.cz = trunc i64 %i.cx to i32                  ; 2 uses
  br i1 %i.cy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.cw, align 8, !tbaa !25
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  store i32 0, ptr %i.da, align 4, !tbaa !27
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #17, !inline_history !64
  %i.de = load ptr, ptr %i.cv, align 8, !tbaa !7
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #17, !inline_history !64
  br label %_ZNSt4pairIKPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEEED2Ev.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i21 = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i.i21, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.di = add nsw i32 %i.cz, -1
  store i32 %i.di, ptr %i.cw, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.dj = atomicrmw volatile add ptr %i.cw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i = phi i32 [ %i.cz, %bb.af ], [ %i.dj, %bb.ag ]
  %i.dk = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dk, label %bb.ah, label %_ZNSt4pairIKPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEEED2Ev.exit, !prof !29

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #17
  br label %_ZNSt4pairIKPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEEED2Ev.exit

_ZNSt4pairIKPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEEED2Ev.exit: ; preds = %bb.ab, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.dl = load ptr, ptr %3, align 16, !tbaa !34   ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !7
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  invoke void %i.do(ptr noundef nonnull align 8 dereferenceable(69) %i.dl)
          to label %bb.ai unwind label %bb.bb

bb.ai:                                            ; preds = %_ZNSt4pairIKPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEEED2Ev.exit
  %i.dp = load ptr, ptr %i.an, align 8, !tbaa !9  ; 8 uses
  %.not.i.i22 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i22, label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 4 uses
  %i.dr = load atomic i64, ptr %i.dq acquire, align 8 ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 4294967297
  %i.dt = trunc i64 %i.dr to i32                  ; 2 uses
  br i1 %i.ds, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.dq, align 8, !tbaa !25
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  store i32 0, ptr %i.du, align 4, !tbaa !27
  %i.dv = load ptr, ptr %i.dp, align 8, !tbaa !7
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #17, !inline_history !54
  %i.dy = load ptr, ptr %i.dp, align 8, !tbaa !7
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #17, !inline_history !54
  br label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26

bb.al:                                            ; preds = %bb.aj
  %i.eb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i23 = icmp eq i8 %i.eb, 0
  br i1 %.not.i.i.i23, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ec = add nsw i32 %i.dt, -1
  store i32 %i.ec, ptr %i.dq, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

bb.an:                                            ; preds = %bb.al
  %i.ed = atomicrmw volatile add ptr %i.dq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i25 = phi i32 [ %i.dt, %bb.am ], [ %i.ed, %bb.an ]
  %i.ee = icmp eq i32 %.0.i.i.i.i25, 1
  br i1 %i.ee, label %bb.ao, label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26, !prof !29

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #17
  br label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26

_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26: ; preds = %bb.ai, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.ef = load ptr, ptr %i.k, align 8, !tbaa !9   ; 8 uses
  %.not.i.i27 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i27, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 4 uses
  %i.eh = load atomic i64, ptr %i.eg acquire, align 8 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 4294967297
  %i.ej = trunc i64 %i.eh to i32                  ; 2 uses
  br i1 %i.ei, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.eg, align 8, !tbaa !25
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 0, ptr %i.ek, align 4, !tbaa !27
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !7
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #17, !inline_history !65
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !7
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #17, !inline_history !65
  br label %bb.av

bb.ar:                                            ; preds = %bb.ap
  %i.er = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i28 = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i28, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.es = add nsw i32 %i.ej, -1
  store i32 %i.es, ptr %i.eg, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i29

bb.at:                                            ; preds = %bb.ar
  %i.et = atomicrmw volatile add ptr %i.eg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i29

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i29: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i30 = phi i32 [ %i.ej, %bb.as ], [ %i.et, %bb.at ]
  %i.eu = icmp eq i32 %.0.i.i.i.i30, 1
  br i1 %i.eu, label %bb.au, label %bb.av, !prof !29

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i29
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #17
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i29, %bb.aq, %_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.ev = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  %i.ex = load ptr, ptr %i.ew, align 8
  invoke void %i.ex(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZN6apache6thrift11concurrency12SynchronizedD2Ev.exit unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  %i.ez = extractvalue { ptr, i32 } %i.ey, 0
  call void @__clang_call_terminate(ptr %i.ez) #18
  unreachable

_ZN6apache6thrift11concurrency12SynchronizedD2Ev.exit: ; preds = %bb.av
  ret void

bb.ax:                                            ; preds = %bb.a
  %i.fa = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZNSt12__shared_ptrIN6apache6thrift11concurrency8RunnableELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !27
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !28
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairIKPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !27
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !54
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !54
  br label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN6apache6thrift6server15TThreadedServer22TConnectedClientRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !27
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !28
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6apache6thrift6server15TThreadedServer20onClientDisconnectedEPNS1_16TConnectedClientE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef readnone captures(address) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6apache6thrift11concurrency7Monitor5mutexEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(24) %i.b), !inline_history !31
  %i.f = load ptr, ptr %0, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(304) %0)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEESt4lessIS4_ESaISt4pairIKS4_S8_EEE4findERSC_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.j, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.k, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61
  %i.n = icmp ult ptr %i.m, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !62 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS6_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !66

_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS6_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.k
  br i1 %i.o, label %_ZNSt3mapIPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEESt4lessIS4_ESaISt4pairIKS4_S8_EEE4findERSC_.exit.thread, label %_ZNSt3mapIPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEESt4lessIS4_ESaISt4pairIKS4_S8_EEE4findERSC_.exit

_ZNSt3mapIPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEESt4lessIS4_ESaISt4pairIKS4_S8_EEE4findERSC_.exit: ; preds = %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS6_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !61
  %i.r = icmp ult ptr %1, %i.q
  br i1 %i.r, label %_ZNSt3mapIPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEESt4lessIS4_ESaISt4pairIKS4_S8_EEE4findERSC_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEESt4lessIS4_ESaISt4pairIKS4_S8_EEE4findERSC_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.19.i.i.i) #21
  invoke void @_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE22_M_insert_range_uniqueISt17_Rb_tree_iteratorISB_EEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESM_SM_(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr nonnull %.19.i.i.i, ptr %i.t)
          to label %_ZNSt3mapIPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEESt4lessIS4_ESaISt4pairIKS4_S8_EEE6insertISt17_Rb_tree_iteratorISD_EEEvT_SJ_.exit unwind label %bb.m

_ZNSt3mapIPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEESt4lessIS4_ESaISt4pairIKS4_S8_EEE6insertISt17_Rb_tree_iteratorISD_EEEvT_SJ_.exit: ; preds = %bb.c
  %i.u = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #17 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !9    ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapIPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEESt4lessIS4_ESaISt4pairIKS4_S8_EEE6insertISt17_Rb_tree_iteratorISD_EEEvT_SJ_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.x, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !27
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #17, !inline_history !37
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #17, !inline_history !37
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.g ], [ %i.ak, %bb.h ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.al, label %bb.i, label %bb.j, !prof !29

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.e, %_ZNSt3mapIPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEESt4lessIS4_ESaISt4pairIKS4_S8_EEE6insertISt17_Rb_tree_iteratorISD_EEEvT_SJ_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 56) #19
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !24
  %i.ao = add i64 %i.an, -1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !24
  br label %_ZNSt3mapIPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEESt4lessIS4_ESaISt4pairIKS4_S8_EEE4findERSC_.exit.thread

bb.k:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.l:                                             ; preds = %bb.n
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.m:                                             ; preds = %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt3mapIPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEESt4lessIS4_ESaISt4pairIKS4_S8_EEE4findERSC_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS6_.exit.i.i, %bb.b, %bb.j, %_ZNSt3mapIPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEESt4lessIS4_ESaISt4pairIKS4_S8_EEE4findERSC_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.at = load i64, ptr %i.as, align 8, !tbaa !24
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt3mapIPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEESt4lessIS4_ESaISt4pairIKS4_S8_EEE4findERSC_.exit.thread
  invoke void @_ZNK6apache6thrift11concurrency7Monitor6notifyEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.o unwind label %bb.l

bb.o:                                             ; preds = %_ZNSt3mapIPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEESt4lessIS4_ESaISt4pairIKS4_S8_EEE4findERSC_.exit.thread, %bb.n
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZN6apache6thrift11concurrency12SynchronizedD2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  tail call void @__clang_call_terminate(ptr %i.az) #18
  unreachable

_ZN6apache6thrift11concurrency12SynchronizedD2Ev.exit: ; preds = %bb.o
  ret void

bb.q:                                             ; preds = %bb.k, %bb.m, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.k ], [ %i.aq, %bb.l ], [ %i.ar, %bb.m ]
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZN6apache6thrift11concurrency12SynchronizedD2Ev.exit10 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  tail call void @__clang_call_terminate(ptr %i.be) #18
  unreachable

_ZN6apache6thrift11concurrency12SynchronizedD2Ev.exit10: ; preds = %bb.q
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZNK6apache6thrift11concurrency7Monitor6notifyEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define void @_ZN6apache6thrift6server15TThreadedServer22TConnectedClientRunnerC2ERKSt10shared_ptrINS1_16TConnectedClientEE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6apache6thrift6server15TThreadedServer22TConnectedClientRunnerE, i64 16), ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !13
  store <2 x ptr> %i.e, ptr %i.b, align 8, !tbaa !13
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6apache6thrift6server16TConnectedClientEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN6apache6thrift6server16TConnectedClientEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6apache6thrift6server16TConnectedClientEEC2ERKS4_.exit

_ZNSt10shared_ptrIN6apache6thrift6server16TConnectedClientEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6apache6thrift6server15TThreadedServer22TConnectedClientRunnerD2Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6apache6thrift6server15TThreadedServer22TConnectedClientRunnerE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6apache6thrift6server16TConnectedClientELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !27
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !67
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !67
  br label %_ZNSt12__shared_ptrIN6apache6thrift6server16TConnectedClientELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6apache6thrift6server16TConnectedClientELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZNSt12__shared_ptrIN6apache6thrift6server16TConnectedClientELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6apache6thrift6server16TConnectedClientELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6apache6thrift11concurrency8RunnableE, i64 16), ptr %0, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68   ; 4 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZN6apache6thrift11concurrency8RunnableD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN6apache6thrift6server16TConnectedClientELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZN6apache6thrift11concurrency8RunnableD2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #17, !inline_history !70
  br label %_ZN6apache6thrift11concurrency8RunnableD2Ev.exit

_ZN6apache6thrift11concurrency8RunnableD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN6apache6thrift6server16TConnectedClientELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6apache6thrift6server15TThreadedServer22TConnectedClientRunnerD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN6apache6thrift6server15TThreadedServer22TConnectedClientRunnerD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6apache6thrift6server15TThreadedServer22TConnectedClientRunner3runEv(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(112) %i.b)
  store ptr null, ptr %i.a, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9    ; 8 uses
  store ptr null, ptr %i.f, align 8, !tbaa !9
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6apache6thrift6server16TConnectedClientELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !27
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #17, !inline_history !71
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #17, !inline_history !71
  br label %_ZNSt12__shared_ptrIN6apache6thrift6server16TConnectedClientELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZNSt12__shared_ptrIN6apache6thrift6server16TConnectedClientELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, !prof !29

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #17
  br label %_ZNSt12__shared_ptrIN6apache6thrift6server16TConnectedClientELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

_ZNSt12__shared_ptrIN6apache6thrift6server16TConnectedClientELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6apache6thrift6server7TServer3runEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(136) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6apache6thrift11concurrency8Runnable6threadEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68, !noalias !72 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !9, !alias.scope !72
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 8, !noalias !72
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i = phi i32 [ %i.f, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %.06.i.i.i.i.i, 1
  %i.h = cmpxchg weak ptr %i.e, i32 %.06.i.i.i.i.i, i32 %i.g acq_rel monotonic, align 8, !noalias !72 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  %i.j = extractvalue { i32, i1 } %i.h, 0
  br i1 %i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, label %bb.c, !llvm.loop !75

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.b, align 8, !tbaa !9, !alias.scope !72
  br label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i: ; preds = %bb.d
  %i.k = load atomic i32, ptr %i.e monotonic, align 8, !noalias !72
  %.fr.i.i.i = freeze i32 %i.k
  %.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %i.l = load ptr, ptr %i.a, align 8, !noalias !72
  br i1 %.not.i.i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i, label %_ZNKSt8weak_ptrIN6apache6thrift11concurrency6ThreadEE4lockEv.exit

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, %bb.a
  br label %_ZNKSt8weak_ptrIN6apache6thrift11concurrency6ThreadEE4lockEv.exit

_ZNKSt8weak_ptrIN6apache6thrift11concurrency6ThreadEE4lockEv.exit: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i
  %i.m = phi ptr [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i ], [ %i.l, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i ]
  store ptr %i.m, ptr %0, align 8, !tbaa !34, !alias.scope !72
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6apache6thrift11concurrency8Runnable6threadESt10shared_ptrINS1_6ThreadEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %1, align 8, !tbaa !34
  store ptr %i.b, ptr %i.a, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !9    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !68   ; 4 uses
  %.not6.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not6.i.i.i, label %_ZNSt8weak_ptrIN6apache6thrift11concurrency6ThreadEEaSIS3_EENSt9enable_ifIXsr13is_assignableIRSt10__weak_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EERKSt10shared_ptrIT_EEE5valueERS4_E4typeESG_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i7.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i7.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.l, align 4, !tbaa !3    ; 2 uses
  %i.o = add nsw i32 %i.n, -1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.n, %bb.f ], [ %i.p, %bb.g ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.h, label %_ZNSt8weak_ptrIN6apache6thrift11concurrency6ThreadEEaSIS3_EENSt9enable_ifIXsr13is_assignableIRSt10__weak_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EERKSt10shared_ptrIT_EEE5valueERS4_E4typeESG_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #17, !inline_history !78
  br label %_ZNSt8weak_ptrIN6apache6thrift11concurrency6ThreadEEaSIS3_EENSt9enable_ifIXsr13is_assignableIRSt10__weak_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EERKSt10shared_ptrIT_EEE5valueERS4_E4typeESG_.exit

_ZNSt8weak_ptrIN6apache6thrift11concurrency6ThreadEEaSIS3_EENSt9enable_ifIXsr13is_assignableIRSt10__weak_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EERKSt10shared_ptrIT_EEE5valueERS4_E4typeESG_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  store ptr %i.e, ptr %i.d, align 8, !tbaa !68
  ret void
}

declare void @_ZN6apache6thrift6server16TServerFramework4stopEv(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #1

declare noundef i64 @_ZNK6apache6thrift6server16TServerFramework24getConcurrentClientLimitEv(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #1

declare noundef i64 @_ZNK6apache6thrift6server16TServerFramework24getConcurrentClientCountEv(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #1

declare noundef i64 @_ZNK6apache6thrift6server16TServerFramework27getConcurrentClientCountHWMEv(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #1

declare void @_ZN6apache6thrift6server16TServerFramework24setConcurrentClientLimitEl(ptr noundef nonnull align 8 dereferenceable(176), i64 noundef) unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E:bb.a
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #17, !inline_history !82
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #17, !inline_history !82
  br label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, !prof !29

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #17
  br label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit

_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit: ; preds = %.lr.ph, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 56) #19
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !83

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6apache6thrift11concurrency7Monitor5mutexEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZNK6apache6thrift11concurrency7Monitor4waitERKNSt6chrono8durationIlSt5ratioILl1ELl1000EEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6apache6thrift11concurrency8RunnableD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6apache6thrift11concurrency8RunnableE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10__weak_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4, !tbaa !3    ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.h, label %bb.e, label %_ZNSt10__weak_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !84
  br label %_ZNSt10__weak_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6apache6thrift11concurrency8RunnableD0Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #18
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6apache6thrift6server15TThreadedServer22TConnectedClientRunnerESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6apache6thrift6server15TThreadedServer22TConnectedClientRunnerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #17, !inline_history !85
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6apache6thrift6server15TThreadedServer22TConnectedClientRunnerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6apache6thrift6server15TThreadedServer22TConnectedClientRunnerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6apache6thrift6server15TThreadedServer22TConnectedClientRunnerESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !14
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #17
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE22_M_insert_range_uniqueISt17_Rb_tree_iteratorISB_EEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESM_SM_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not7 = icmp eq ptr %1, %2
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE17_M_insert_unique_IRSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_.exit
  %.sroa.04.08 = phi ptr [ %1, %.lr.ph ], [ %i.z, %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE17_M_insert_unique_IRSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_.exit ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 32 ; 2 uses
  %i.d = tail call { ptr, ptr } @_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE17_M_insert_unique_IRSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = extractvalue { ptr, ptr } %i.d, 0
  %.not.i.i = icmp ne ptr %i.f, null
  %i.g = icmp eq ptr %i.e, %i.a
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.g
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !61 ; 2 uses
  br i1 %or.cond.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.j = icmp ult ptr %.pre.i.i, %i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi i1 [ %i.j, %bb.d ], [ true, %bb.c ]
  %i.l = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #20 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %.pre.i.i, ptr %i.m, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !9    ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.o, align 8, !tbaa !13
  store <2 x ptr> %i.r, ptr %i.n, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE10_M_insert_IRSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_EPSt18_Rb_tree_node_baseSO_OT_RT0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.s, align 4, !tbaa !3
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !3
  br label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE10_M_insert_IRSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_EPSt18_Rb_tree_node_baseSO_OT_RT0_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE10_M_insert_IRSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_EPSt18_Rb_tree_node_baseSO_OT_RT0_.exit.i

_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE10_M_insert_IRSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_EPSt18_Rb_tree_node_baseSO_OT_RT0_.exit.i: ; preds = %bb.h, %bb.g, %bb.e
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #17
  %i.x = load i64, ptr %i.b, align 8, !tbaa !24
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.b, align 8, !tbaa !24
  br label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE17_M_insert_unique_IRSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_.exit

_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE17_M_insert_unique_IRSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_.exit: ; preds = %bb.b, %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE10_M_insert_IRSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_EPSt18_Rb_tree_node_baseSO_OT_RT0_.exit.i
  %i.z = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.04.08) #21 ; 2 uses
  %.not = icmp eq ptr %i.z, %2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !89

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE17_M_insert_unique_IRSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.i = load ptr, ptr %2, align 8, !tbaa !61
  %i.j = icmp ult ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE24_M_get_insert_unique_posERS6_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !62 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load ptr, ptr %2, align 8, !tbaa !61     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61   ; 2 uses
  %i.o = icmp ult ptr %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !62 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !63

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE24_M_get_insert_unique_posERS6_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #21 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load ptr, ptr %.phi.trans.insert80, align 8, !tbaa !61
  %.pre82 = load ptr, ptr %2, align 8, !tbaa !61
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi ptr [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi ptr [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult ptr %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE24_M_get_insert_unique_posERS6_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %2, align 8, !tbaa !61     ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !61   ; 2 uses
  %i.z = icmp ult ptr %i.w, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE24_M_get_insert_unique_posERS6_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #21 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !61
  %i.ag = icmp ult ptr %i.af, %i.w
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !80
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE24_M_get_insert_unique_posERS6_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !62 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !61 ; 2 uses
  %i.an = icmp ult ptr %i.w, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !62 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !63

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE24_M_get_insert_unique_posERS6_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #21 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load ptr, ptr %.phi.trans.insert78, align 8, !tbaa !61
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi ptr [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult ptr %i.aq, %i.w                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE24_M_get_insert_unique_posERS6_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult ptr %i.y, %i.w
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE24_M_get_insert_unique_posERS6_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !62 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE24_M_get_insert_unique_posERS6_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #21 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !61
  %i.az = icmp ult ptr %i.w, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !80
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE24_M_get_insert_unique_posERS6_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !62 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !61 ; 2 uses
  %i.bg = icmp ult ptr %i.w, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !62 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !63

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !22
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE24_M_get_insert_unique_posERS6_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #21 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !61
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi ptr [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult ptr %i.bl, %i.w                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE24_M_get_insert_unique_posERS6_.exit

_ZNSt8_Rb_treeIPN6apache6thrift6server16TConnectedClientESt4pairIKS4_St10shared_ptrINS1_11concurrency6ThreadEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE24_M_get_insert_unique_posERS6_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { nounwind willreturn memory(read) }

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
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!11 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!16, !18, i64 0}
!16 = !{!"_ZTSSt15_Rb_tree_header", !17, i64 0, !20, i64 32}
!17 = !{!"_ZTSSt18_Rb_tree_node_base", !18, i64 0, !19, i64 8, !19, i64 16, !19, i64 24}
!18 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!19 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{!16, !19, i64 8}
!22 = !{!16, !19, i64 16}
!23 = !{!16, !19, i64 24}
!24 = !{!16, !20, i64 32}
!25 = !{!26, !4, i64 8}
!26 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!27 = !{!26, !4, i64 12}
!28 = distinct !{null, null}
!29 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!30 = distinct !{ptr @_ZNSt12__shared_ptrIN6apache6thrift11concurrency13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!31 = distinct !{null, null}
!32 = !{!33, !20, i64 0}
!33 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000EEEE", !20, i64 0}
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTSSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0, !10, i64 8}
!36 = !{!"p1 _ZTSN6apache6thrift11concurrency6ThreadE", !12, i64 0}
!37 = distinct !{null, null, null, null, null, ptr @_ZNSt4pairIKPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEEED2Ev, ptr @_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZSt11make_sharedIN6apache6thrift6server15TThreadedServer22TConnectedClientRunnerEJRKSt10shared_ptrINS2_16TConnectedClientEEEES5_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!42 = distinct !{!42, !"_ZSt11make_sharedIN6apache6thrift6server15TThreadedServer22TConnectedClientRunnerEJRKSt10shared_ptrINS2_16TConnectedClientEEEES5_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!43 = !{!44, !44, i64 0}
!44 = !{!"p1 _ZTSN6apache6thrift6server15TThreadedServer22TConnectedClientRunnerE", !12, i64 0}
!45 = !{!46, !47, i64 0}
!46 = !{!"_ZTSSt12__shared_ptrIN6apache6thrift11concurrency13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EE", !47, i64 0, !10, i64 8}
!47 = !{!"p1 _ZTSN6apache6thrift11concurrency13ThreadFactoryE", !12, i64 0}
!48 = !{!49, !50, i64 0}
!49 = !{!"_ZTSSt12__shared_ptrIN6apache6thrift11concurrency8RunnableELN9__gnu_cxx12_Lock_policyE2EE", !50, i64 0, !10, i64 8}
!50 = !{!"p1 _ZTSN6apache6thrift11concurrency8RunnableE", !12, i64 0}
!51 = distinct !{ptr @_ZNSt12__shared_ptrIN6apache6thrift11concurrency8RunnableELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!52 = !{!53, !44, i64 0}
!53 = !{!"_ZTSSt12__shared_ptrIN6apache6thrift6server15TThreadedServer22TConnectedClientRunnerELN9__gnu_cxx12_Lock_policyE2EE", !44, i64 0, !10, i64 8}
!54 = distinct !{ptr @_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!55 = !{!56, !57, i64 0}
!56 = !{!"_ZTSSt12__shared_ptrIN6apache6thrift6server16TConnectedClientELN9__gnu_cxx12_Lock_policyE2EE", !57, i64 0, !10, i64 8}
!57 = !{!"p1 _ZTSN6apache6thrift6server16TConnectedClientE", !12, i64 0}
!58 = !{!59, !57, i64 0}
!59 = !{!"_ZTSSt4pairIKPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEEE", !57, i64 0, !60, i64 8}
!60 = !{!"_ZTSSt10shared_ptrIN6apache6thrift11concurrency6ThreadEE", !35, i64 0}
!61 = !{!57, !57, i64 0}
!62 = !{!19, !19, i64 0}
!63 = distinct !{!63, !39}
!64 = distinct !{ptr @_ZNSt4pairIKPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEEED2Ev, ptr @_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!65 = distinct !{ptr @_ZNSt12__shared_ptrIN6apache6thrift6server15TThreadedServer22TConnectedClientRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!66 = distinct !{!66, !39}
!67 = distinct !{null, null, null}
!68 = !{!69, !11, i64 0}
!69 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!70 = distinct !{ptr @_ZN6apache6thrift11concurrency8RunnableD2Ev, null, null, null}
!71 = distinct !{null, null, null, null}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZNKSt8weak_ptrIN6apache6thrift11concurrency6ThreadEE4lockEv: argument 0"}
!74 = distinct !{!74, !"_ZNKSt8weak_ptrIN6apache6thrift11concurrency6ThreadEE4lockEv"}
!75 = distinct !{!75, !39}
!76 = !{!77, !36, i64 0}
!77 = !{!"_ZTSSt10__weak_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0, !69, i64 8}
!78 = distinct !{null, null, null, null}
!79 = distinct !{null}
!80 = !{!17, !19, i64 24}
!81 = !{!17, !19, i64 16}
!82 = distinct !{null, null, ptr @_ZNSt4pairIKPN6apache6thrift6server16TConnectedClientESt10shared_ptrINS1_11concurrency6ThreadEEED2Ev, ptr @_ZNSt12__shared_ptrIN6apache6thrift11concurrency6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!83 = distinct !{!83, !39}
!84 = distinct !{null, null, null}
!85 = distinct !{null}
!86 = !{!87, !88, i64 8}
!87 = !{!"_ZTSSt9type_info", !88, i64 8}
!88 = !{!"p1 omnipotent char", !12, i64 0}
!89 = distinct !{!89, !39}
end_hunk_2
