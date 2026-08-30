Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/default-platform?download=true
inline.NumInlined: 682
inline.NumDeleted: 448
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88platform15DefaultPlatform23GetForegroundTaskRunnerEPNS_7IsolateENS_12TaskPriorityE:bb.a
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPN2v87IsolateESt4pairIKS2_St10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !22

_ZNSt8_Rb_treeIPN2v87IsolateESt4pairIKS2_St10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.j = icmp eq ptr %.19.i.i.i, %i.f
  br i1 %i.j, label %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.thread, label %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit

_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit: ; preds = %_ZNSt8_Rb_treeIPN2v87IsolateESt4pairIKS2_St10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp ult ptr %2, %i.l
  br i1 %i.m, label %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.thread, label %.lr.ph.i.i.i.i5

_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPN2v87IsolateESt4pairIKS2_St10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, %bb.a, %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not = icmp eq ptr %i.p, null
  %spec.select = select i1 %.not, ptr @_ZN2v88platform12_GLOBAL__N_119DefaultTimeFunctionEv, ptr %i.p
  %i.q = tail call noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #13, !noalias !47 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 1, ptr %i.r, align 8, !noalias !52
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 1, ptr %i.s, align 4, !noalias !52
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2v88platform27DefaultForegroundTaskRunnerESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.q, align 8, !noalias !52
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.u = load i32, ptr %i.n, align 4, !noalias !52
  tail call void @_ZN2v88platform27DefaultForegroundTaskRunnerC1ENS0_15IdleTaskSupportEPFdvE(ptr noundef nonnull align 8 dereferenceable(248) %i.t, i32 noundef %i.u, ptr noundef nonnull %spec.select) #12, !noalias !52
  store ptr %2, ptr %6, align 8, !alias.scope !53
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.t, ptr %i.v, align 8, !alias.scope !53
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.w, align 8, !alias.scope !53
  %i.x = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not10.i.i.i.i, label %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE6insertIS9_IS2_S6_EEENSt9enable_ifIXsr16is_constructibleISB_T_EE5valueES9_ISt17_Rb_tree_iteratorISB_EbEE4typeEOSH_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.thread, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.x, %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.thread ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.f, %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.thread ]
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp ult ptr %i.z, %2                   ; 2 uses
  %.19.i.i.i.i = select i1 %i.aa, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.aa, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE11lower_boundERSA_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !22

_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE11lower_boundERSA_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ab = icmp eq ptr %.19.i.i.i.i, %i.f
  br i1 %i.ab, label %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE6insertIS9_IS2_S6_EEENSt9enable_ifIXsr16is_constructibleISB_T_EE5valueES9_ISt17_Rb_tree_iteratorISB_EbEE4typeEOSH_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE11lower_boundERSA_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp ult ptr %2, %i.ad
  br i1 %i.ae, label %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE6insertIS9_IS2_S6_EEENSt9enable_ifIXsr16is_constructibleISB_T_EE5valueES9_ISt17_Rb_tree_iteratorISB_EbEE4typeEOSH_.exit, label %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE6insertIS9_IS2_S6_EEENSt9enable_ifIXsr16is_constructibleISB_T_EE5valueES9_ISt17_Rb_tree_iteratorISB_EbEE4typeEOSH_.exit.thread

_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE6insertIS9_IS2_S6_EEENSt9enable_ifIXsr16is_constructibleISB_T_EE5valueES9_ISt17_Rb_tree_iteratorISB_EbEE4typeEOSH_.exit: ; preds = %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.thread, %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE11lower_boundERSA_.exit.i, %bb.b
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.b ], [ %.19.i.i.i.i, %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE11lower_boundERSA_.exit.i ], [ %i.f, %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.thread ]
  %i.af = call ptr @_ZNSt8_Rb_treeIPN2v87IsolateESt4pairIKS2_St10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE22_M_emplace_hint_uniqueIJS3_IS2_S8_EEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(24) %6) ; 0 uses
  %.pre = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i1, label %bb.h, label %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE6insertIS9_IS2_S6_EEENSt9enable_ifIXsr16is_constructibleISB_T_EE5valueES9_ISt17_Rb_tree_iteratorISB_EbEE4typeEOSH_.exit.thread

_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE6insertIS9_IS2_S6_EEENSt9enable_ifIXsr16is_constructibleISB_T_EE5valueES9_ISt17_Rb_tree_iteratorISB_EbEE4typeEOSH_.exit.thread: ; preds = %bb.b, %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE6insertIS9_IS2_S6_EEENSt9enable_ifIXsr16is_constructibleISB_T_EE5valueES9_ISt17_Rb_tree_iteratorISB_EbEE4typeEOSH_.exit
  %i.ag = phi ptr [ %.pre, %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE6insertIS9_IS2_S6_EEENSt9enable_ifIXsr16is_constructibleISB_T_EE5valueES9_ISt17_Rb_tree_iteratorISB_EbEE4typeEOSH_.exit ], [ %i.q, %bb.b ] ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE6insertIS9_IS2_S6_EEENSt9enable_ifIXsr16is_constructibleISB_T_EE5valueES9_ISt17_Rb_tree_iteratorISB_EbEE4typeEOSH_.exit.thread
  store i32 0, ptr %i.ah, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4
  %i.am = load ptr, ptr %i.ag, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #12, !inline_history !56
  %i.ap = load ptr, ptr %i.ag, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #12, !inline_history !56
  br label %bb.h

bb.d:                                             ; preds = %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE6insertIS9_IS2_S6_EEENSt9enable_ifIXsr16is_constructibleISB_T_EE5valueES9_ISt17_Rb_tree_iteratorISB_EbEE4typeEOSH_.exit.thread
  %i.as = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i2 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.ak, %bb.e ], [ %i.au, %bb.f ]
  %i.av = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.av, label %bb.g, label %bb.h, !prof !20

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #12
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE6insertIS9_IS2_S6_EEENSt9enable_ifIXsr16is_constructibleISB_T_EE5valueES9_ISt17_Rb_tree_iteratorISB_EbEE4typeEOSH_.exit, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %.pre22 = load ptr, ptr %i.d, align 8           ; 2 uses
  %.not10.i.i.i.i4 = icmp eq ptr %.pre22, null
  br i1 %.not10.i.i.i.i4, label %.critedge.i14, label %.lr.ph.i.i.i.i5

.lr.ph.i.i.i.i5:                                  ; preds = %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit, %bb.h
  %i.aw = phi ptr [ %.pre22, %bb.h ], [ %i.e, %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit ]
  %i.ax = load ptr, ptr %i.a, align 8             ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i5
  %.012.i.i.i.i6 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i5 ], [ %.1.i.i.i.i11, %bb.i ] ; 3 uses
  %.0811.i.i.i.i7 = phi ptr [ %i.f, %.lr.ph.i.i.i.i5 ], [ %.19.i.i.i.i8, %bb.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i6, i64 32
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp ult ptr %i.az, %i.ax               ; 2 uses
  %.19.i.i.i.i8 = select i1 %i.ba, ptr %.0811.i.i.i.i7, ptr %.012.i.i.i.i6 ; 6 uses
  %.1.in.v.i.i.i.i9 = select i1 %i.ba, i64 24, i64 16
  %.1.in.i.i.i.i10 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i6, i64 %.1.in.v.i.i.i.i9
  %.1.i.i.i.i11 = load ptr, ptr %.1.in.i.i.i.i10, align 8 ; 2 uses
  %.not.i.i.i.i12 = icmp eq ptr %.1.i.i.i.i11, null
  br i1 %.not.i.i.i.i12, label %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE11lower_boundERSA_.exit.i13, label %bb.i, !llvm.loop !22

_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE11lower_boundERSA_.exit.i13: ; preds = %bb.i
  %i.bb = icmp eq ptr %.19.i.i.i.i8, %i.f
  br i1 %i.bb, label %.critedge.i14, label %bb.j

bb.j:                                             ; preds = %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE11lower_boundERSA_.exit.i13
  %i.bc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i8, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = icmp ult ptr %i.ax, %i.bd
  br i1 %i.be, label %.critedge.i14, label %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEEixERSA_.exit

.critedge.i14:                                    ; preds = %bb.j, %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE11lower_boundERSA_.exit.i13, %bb.h
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i8, %bb.j ], [ %.19.i.i.i.i8, %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEE11lower_boundERSA_.exit.i13 ], [ %i.f, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %i.a, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.bf = call ptr @_ZNSt8_Rb_treeIPN2v87IsolateESt4pairIKS2_St10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEEixERSA_.exit

_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEEixERSA_.exit: ; preds = %bb.j, %.critedge.i14
  %.sroa.06.0.i = phi ptr [ %i.bf, %.critedge.i14 ], [ %.19.i.i.i.i8, %bb.j ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8
  store ptr %i.bh, ptr %0, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8            ; 3 uses
  store ptr %i.bk, ptr %i.bi, align 8
  %.not.i.i.i15 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i15, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEEixERSA_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bm = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i16 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i16, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = load i32, ptr %i.bl, align 4
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bl, align 4
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bp = atomicrmw volatile add ptr %i.bl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZNSt3mapIPN2v87IsolateESt10shared_ptrINS0_8platform27DefaultForegroundTaskRunnerEESt4lessIS2_ESaISt4pairIKS2_S6_EEEixERSA_.exit, %bb.l, %bb.m
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v88platform15DefaultPlatform26PostTaskOnWorkerThreadImplENS_12TaskPriorityESt10unique_ptrINS_4TaskESt14default_deleteIS4_EERKNS_14SourceLocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, i8 noundef zeroext %1, ptr nofree noundef align 8 captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::SourceLocation", align 8 ; 4 uses
  %5 = alloca %"class.std::unique_ptr.129", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i8, ptr %i.a, align 8, !range !33, !noundef !34
  %i.c = trunc nuw i8 %i.b to i1
  %narrow.i = select i1 %i.c, i8 %1, i8 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = zext i8 %narrow.i to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load i64, ptr %2, align 8
  store ptr null, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr @.constant, ptr %4, align 8
  store i64 %i.h, ptr %5, align 8
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #12, !inline_history !57
  %i.l = load ptr, ptr %5, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #12, !inline_history !58
  br label %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v88platform15DefaultPlatform33PostDelayedTaskOnWorkerThreadImplENS_12TaskPriorityESt10unique_ptrINS_4TaskESt14default_deleteIS4_EEdRKNS_14SourceLocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, i8 noundef zeroext %1, ptr nofree noundef align 8 captures(none) %2, double noundef %3, ptr nofree nonnull readnone align 8 captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::SourceLocation", align 8 ; 4 uses
  %6 = alloca %"class.std::unique_ptr.129", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i8, ptr %i.a, align 8, !range !33, !noundef !34
  %i.c = trunc nuw i8 %i.b to i1
  %narrow.i = select i1 %i.c, i8 %1, i8 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = zext i8 %narrow.i to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load i64, ptr %2, align 8
  store ptr null, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr @.constant.3, ptr %5, align 8
  store i64 %i.h, ptr %6, align 8
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 %6, double noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #12, !inline_history !59
  %i.l = load ptr, ptr %6, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #12, !inline_history !60
  br label %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN2v88platform15DefaultPlatform16IdleTasksEnabledEPNS_7IsolateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree readnone captures(none) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v88platform15DefaultPlatform13CreateJobImplENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS4_EERKNS_14SourceLocationE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.18") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, i8 noundef zeroext %2, ptr nofree noundef align 8 captures(none) %3, ptr nofree nonnull readnone align 8 captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.std::unique_ptr.26", align 8 ; 3 uses
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(168) %1) #12 ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = icmp eq i8 %2, 0
  %i.g = icmp ugt i32 %i.d, 2
  %or.cond = and i1 %i.f, %i.g
  %spec.store.select = select i1 %or.cond, i64 2, i64 %i.e
  %i.h = load i64, ptr %3, align 8
  store i64 %i.h, ptr %5, align 8
  store ptr null, ptr %3, align 8
  call void @_ZN2v88platform19NewDefaultJobHandleEPNS_8PlatformENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS5_EEm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8 %0, ptr noundef nonnull %1, i8 noundef zeroext %2, ptr noundef nonnull align 8 %5, i64 noundef %spec.store.select)
  %i.i = load ptr, ptr %5, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v87JobTaskESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v87JobTaskEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v87JobTaskEEclEPS1_.exit.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #12, !inline_history !61
  br label %_ZNSt10unique_ptrIN2v87JobTaskESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v87JobTaskESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN2v87JobTaskEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN2v88platform15DefaultPlatform27MonotonicallyIncreasingTimeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef double %i.b() #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @_ZN2v84base9TimeTicks3NowEv() #12
  %i.e = sitofp i64 %i.d to double
  %i.f = fdiv double %i.e, 1.000000e+06
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi double [ %i.c, %bb.b ], [ %i.f, %bb.c ]
  ret double %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN2v88platform15DefaultPlatform22CurrentClockTimeMillisEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZN2v84base2OS17TimeCurrentMillisEv() #12
  ret double %i.a
}

declare noundef double @_ZN2v84base2OS17TimeCurrentMillisEv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN2v88platform15DefaultPlatform20GetTracingControllerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v88platform15DefaultPlatform20SetTracingControllerESt10unique_ptrINS_17TracingControllerESt14default_deleteIS3_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef align 8 captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %1, align 8
  store ptr null, ptr %1, align 8
  %i.c = load ptr, ptr %i.a, align 8              ; 3 uses
  store ptr %i.b, ptr %i.a, align 8
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN2v817TracingControllerESt14default_deleteIS1_EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN2v817TracingControllerEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN2v817TracingControllerEEclEPS1_.exit.i.i.i.i: ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #12, !inline_history !62
  br label %_ZNSt10unique_ptrIN2v817TracingControllerESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN2v817TracingControllerESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN2v817TracingControllerEEclEPS1_.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN2v88platform15DefaultPlatform21NumberOfWorkerThreadsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN2v88platform15DefaultPlatform20GetStackTracePrinterEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  ret ptr @_ZN2v88platform12_GLOBAL__N_115PrintStackTraceEv
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88platform12_GLOBAL__N_115PrintStackTraceEv() #0 {
bb.a:
  %0 = alloca %"class.v8::base::debug::StackTrace", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #12
  call void @_ZN2v84base5debug10StackTraceC1Ev(ptr noundef nonnull align 8 dereferenceable(504) %0) #12
  call void @_ZNK2v84base5debug10StackTrace5PrintEv(ptr noundef nonnull align 8 dereferenceable(504) %0) #12
  call void @_ZN2v84base5debug22DisableSignalStackDumpEv() #12
  call void @_ZN2v84base5debug10StackTraceD1Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %0) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN2v88platform15DefaultPlatform16GetPageAllocatorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN2v88platform15DefaultPlatform26GetThreadIsolatedAllocatorEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_ZNK2v88platform30DefaultThreadIsolatedAllocator5ValidEv(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #12
  %. = select i1 %i.b, ptr %i.a, ptr null
  ret ptr %.
}

declare noundef zeroext i1 @_ZNK2v88platform30DefaultThreadIsolatedAllocator5ValidEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88Platform24OnCriticalMemoryPressureEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88Platform19CreateBlockingScopeENS_12BlockingTypeE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.152") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN2v88Platform28CurrentClockTimeMillisecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef double %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  %i.e = tail call double @llvm.floor.f64(double %i.d)
  %i.f = fptosi double %i.e to i64
  ret i64 %i.f
end_hunk_0
