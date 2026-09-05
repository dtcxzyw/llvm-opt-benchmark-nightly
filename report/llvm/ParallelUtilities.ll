Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ParallelUtilities?download=true
inline.NumInlined: 1195
inline.NumDeleted: 812
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm4bolt17ParallelUtilities17runOnEachFunctionERNS0_13BinaryContextENS1_16SchedulingPolicyESt8functionIFvRNS0_14BinaryFunctionEEES5_IFbRKS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbj:bb.a
  %.not.i.i.i3.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i3.i, label %_ZN4llvm4bolt17ParallelUtilities13getThreadPoolEj.exit, label %_ZNSt10unique_ptrIN4llvm13StdThreadPoolESt14default_deleteIS1_EED2Ev.exit.sink.split.i

_ZNSt10unique_ptrIN4llvm13StdThreadPoolESt14default_deleteIS1_EED2Ev.exit.sink.split.i: ; preds = %bb.u, %bb.t
  %.sink17.i = phi ptr [ %i.cd, %bb.t ], [ %i.cf, %bb.u ] ; 2 uses
  %i.cg = load ptr, ptr %.sink17.i, align 8, !tbaa !23
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %.sink17.i) #18, !inline_history !452
  %.pre = load ptr, ptr @_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_113ThreadPoolPtrE, align 8, !tbaa !37
  br label %_ZN4llvm4bolt17ParallelUtilities13getThreadPoolEj.exit

_ZN4llvm4bolt17ParallelUtilities13getThreadPoolEj.exit: ; preds = %bb.t, %bb.u, %_ZNSt10unique_ptrIN4llvm13StdThreadPoolESt14default_deleteIS1_EED2Ev.exit.sink.split.i, %bb.r
  %.0.i34 = phi ptr [ %i.ca, %bb.r ], [ %.pre, %_ZNSt10unique_ptrIN4llvm13StdThreadPoolESt14default_deleteIS1_EED2Ev.exit.sink.split.i ], [ %i.ce, %bb.u ], [ %i.cc, %bb.t ] ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !55 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %.not6369 = icmp eq ptr %i.ck, %i.cl
  br i1 %.not6369, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm4bolt17ParallelUtilities13getThreadPoolEj.exit
  %i.cm = icmp eq i32 %.162, 0
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.ab

._crit_edge:                                      ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit47, %_ZN4llvm4bolt17ParallelUtilities13getThreadPoolEj.exit
  %.sroa.053.0.lcssa = phi ptr [ %i.cl, %_ZN4llvm4bolt17ParallelUtilities13getThreadPoolEj.exit ], [ %.sroa.053.1, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit47 ]
  %i.cq = ptrtoint ptr %.sroa.053.0.lcssa to i64
  %i.cr = ptrtoint ptr %i.cl to i64
  call fastcc void @"_ZN4llvm19ThreadPoolInterface5asyncIRZNS_4bolt17ParallelUtilities17runOnEachFunctionERNS2_13BinaryContextENS3_16SchedulingPolicyESt8functionIFvRNS2_14BinaryFunctionEEES7_IFbRKS8_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjE3$_0JRSt17_Rb_tree_iteratorISt4pairIKmS8_EESS_EEEDaOT_DpOT0_"(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %.0.i34, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 %i.cq, i64 %i.cr)
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !453 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i, label %_ZNSt14__basic_futureIvED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 4 uses
  %i.cv = load atomic i64, ptr %i.cu acquire, align 8 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 4294967297
  %i.cx = trunc i64 %i.cv to i32                  ; 2 uses
  br i1 %i.cw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.cu, align 8, !tbaa !455
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 0, ptr %i.cy, align 4, !tbaa !456
  %i.cz = load ptr, ptr %i.ct, align 8, !tbaa !23
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  tail call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #18, !inline_history !4
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !23
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  tail call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #18, !inline_history !4
  br label %_ZNSt14__basic_futureIvED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i35 = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.i35, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = add nsw i32 %i.cx, -1
  store i32 %i.dg, ptr %i.cu, align 8, !tbaa !457
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.dh = atomicrmw volatile add ptr %i.cu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i = phi i32 [ %i.cx, %bb.y ], [ %i.dh, %bb.z ]
  %i.di = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.di, label %bb.aa, label %_ZNSt14__basic_futureIvED2Ev.exit, !prof !458

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #18
  br label %_ZNSt14__basic_futureIvED2Ev.exit

_ZNSt14__basic_futureIvED2Ev.exit:                ; preds = %._crit_edge, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.aa
  %i.dj = load ptr, ptr %.0.i34, align 8, !tbaa !23
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  tail call void %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %.0.i34) #18
  br label %bb.ao

bb.ab:                                            ; preds = %.lr.ph, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit47
  %.072 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit47 ]
  %.sroa.050.071 = phi ptr [ %i.ck, %.lr.ph ], [ %i.ex, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit47 ] ; 8 uses
  %.sroa.053.070 = phi ptr [ %i.ck, %.lr.ph ], [ %.sroa.053.1, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit47 ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.050.071, i64 40
  br i1 %i.cm, label %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dn = load ptr, ptr %i.cn, align 8, !tbaa !26
  %.not.i.i.not.i36 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.not.i36, label %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit._crit_edge.i, label %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit.i37

_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit.i37: ; preds = %bb.ac
  %i.do = load ptr, ptr %i.co, align 8, !tbaa !72
  %i.dp = tail call noundef zeroext i1 %i.do(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(1360) %i.dm) #18, !inline_history !5
  br i1 %i.dp, label %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit, label %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit._crit_edge.i

_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit._crit_edge.i: ; preds = %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit.i37, %bb.ac
  switch i32 %.162, label %bb.ah [
    i32 1, label %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit
    i32 2, label %bb.ad
    i32 3, label %bb.ae
    i32 4, label %bb.af
    i32 5, label %bb.ag
  ]

bb.ad:                                            ; preds = %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit._crit_edge.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.050.071, i64 112
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !195
  %i.ds = trunc i64 %i.dr to i32
  br label %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit

bb.ae:                                            ; preds = %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit._crit_edge.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.050.071, i64 112
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !195 ; 2 uses
  %i.dv = mul i64 %i.du, %i.du
  %i.dw = trunc i64 %i.dv to i32
  br label %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit

bb.af:                                            ; preds = %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit._crit_edge.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.050.071, i64 1288
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !196
  br label %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit

bb.ag:                                            ; preds = %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit._crit_edge.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.050.071, i64 1288
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !196 ; 2 uses
  %i.eb = mul i32 %i.ea, %i.ea
  br label %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit

bb.ah:                                            ; preds = %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit._crit_edge.i
  unreachable

_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit: ; preds = %bb.ab, %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit.i37, %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit._crit_edge.i, %bb.ad, %bb.ae, %bb.af, %bb.ag
  %.0.i38 = phi i32 [ %i.eb, %bb.ag ], [ 1, %bb.ab ], [ 0, %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit.i37 ], [ %i.ds, %bb.ad ], [ %i.dw, %bb.ae ], [ %i.dy, %bb.af ], [ %.162, %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit._crit_edge.i ]
  %i.ec = add i32 %.0.i38, %.072                  ; 2 uses
  %.not = icmp ult i32 %i.ec, %i.bz
  br i1 %.not, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit47, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit
  %i.ed = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.050.071) #21
  %i.ee = ptrtoint ptr %.sroa.053.070 to i64
  %i.ef = ptrtoint ptr %i.ed to i64
  call fastcc void @"_ZN4llvm19ThreadPoolInterface5asyncIRZNS_4bolt17ParallelUtilities17runOnEachFunctionERNS2_13BinaryContextENS3_16SchedulingPolicyESt8functionIFvRNS2_14BinaryFunctionEEES7_IFbRKS8_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjE3$_0JRSt17_Rb_tree_iteratorISt4pairIKmS8_EESS_EEEDaOT_DpOT0_"(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %.0.i34, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 %i.ee, i64 %i.ef)
  %i.eg = load ptr, ptr %i.cp, align 8, !tbaa !453 ; 8 uses
  %.not.i.i.i39 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i39, label %_ZNSt14__basic_futureIvED2Ev.exit43, label %bb.ai

bb.ai:                                            ; preds = %.preheader.preheader
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 4 uses
  %i.ei = load atomic i64, ptr %i.eh acquire, align 8 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 4294967297
  %i.ek = trunc i64 %i.ei to i32                  ; 2 uses
  br i1 %i.ej, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.eh, align 8, !tbaa !455
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  store i32 0, ptr %i.el, align 4, !tbaa !456
  %i.em = load ptr, ptr %i.eg, align 8, !tbaa !23
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  tail call void %i.eo(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #18, !inline_history !4
  %i.ep = load ptr, ptr %i.eg, align 8, !tbaa !23
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load ptr, ptr %i.eq, align 8
  tail call void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #18, !inline_history !4
  br label %_ZNSt14__basic_futureIvED2Ev.exit43

bb.ak:                                            ; preds = %bb.ai
  %i.es = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i40 = icmp eq i8 %i.es, 0
  br i1 %.not.i.i.i.i40, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.et = add nsw i32 %i.ek, -1
  store i32 %i.et, ptr %i.eh, align 8, !tbaa !457
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i41

bb.am:                                            ; preds = %bb.ak
  %i.eu = atomicrmw volatile add ptr %i.eh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i41

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i41: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i42 = phi i32 [ %i.ek, %bb.al ], [ %i.eu, %bb.am ]
  %i.ev = icmp eq i32 %.0.i.i.i.i.i42, 1
  br i1 %i.ev, label %bb.an, label %_ZNSt14__basic_futureIvED2Ev.exit43, !prof !458

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i41
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #18
  br label %_ZNSt14__basic_futureIvED2Ev.exit43

_ZNSt14__basic_futureIvED2Ev.exit43:              ; preds = %.preheader.preheader, %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i41, %bb.an
  %i.ew = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.050.071) #21
  br label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit47

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit47: ; preds = %_ZNSt14__basic_futureIvED2Ev.exit43, %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit
  %.sroa.053.1 = phi ptr [ %.sroa.053.070, %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit ], [ %i.ew, %_ZNSt14__basic_futureIvED2Ev.exit43 ] ; 2 uses
  %.1 = phi i32 [ %i.ec, %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit ], [ 0, %_ZNSt14__basic_futureIvED2Ev.exit43 ]
  %i.ex = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.050.071) #21 ; 2 uses
  %.not63 = icmp eq ptr %i.ex, %i.cl
  br i1 %.not63, label %._crit_edge, label %bb.ab, !llvm.loop !536

bb.ao:                                            ; preds = %_ZNSt14__basic_futureIvED2Ev.exit, %"_ZZN4llvm4bolt17ParallelUtilities17runOnEachFunctionERNS0_13BinaryContextENS1_16SchedulingPolicyESt8functionIFvRNS0_14BinaryFunctionEEES5_IFbRKS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjENK3$_0clESt17_Rb_tree_iteratorISt4pairIKmS6_EESP_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.ap

bb.ap:                                            ; preds = %bb.a, %bb.ao
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN4llvm19ThreadPoolInterface5asyncIRZNS_4bolt17ParallelUtilities17runOnEachFunctionERNS2_13BinaryContextENS3_16SchedulingPolicyESt8functionIFvRNS2_14BinaryFunctionEEES7_IFbRKS8_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjE3$_0JRSt17_Rb_tree_iteratorISt4pairIKmS8_EESS_EEEDaOT_DpOT0_"(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i64 %.0.val, i64 %.0.val1) unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"class.std::future", align 8       ; 5 uses
  %4 = alloca %"class.llvm::unique_function", align 8 ; 8 uses
  %5 = alloca %"class.llvm::unique_function", align 8 ; 7 uses
  %.sroa.0.i.i.sroa.0.0.copyload5 = load <3 x ptr>, ptr %2, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.c = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef 40, i64 noundef 8) #18, !noalias !549 ; 4 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !62, !noalias !549
  store <3 x ptr> %.sroa.0.i.i.sroa.0.0.copyload5, ptr %i.c, align 8, !noalias !549
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.0.val1, ptr %i.d, align 8, !tbaa !459, !noalias !549
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.0.val, ptr %i.e, align 8, !tbaa !459, !noalias !549
  store ptr @"_ZZN4llvm6detail18UniqueFunctionBaseIvJEEC1ISt5_BindIFZNS_4bolt17ParallelUtilities17runOnEachFunctionERNS5_13BinaryContextENS6_16SchedulingPolicyESt8functionIFvRNS5_14BinaryFunctionEEESA_IFbRKSB_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjE3$_0St17_Rb_tree_iteratorISt4pairIKmSB_EESU_EESW_EET_NS2_8CalledAsIT0_EEENUlPKS2_E_8__invokeES12_", ptr %i.a, align 8, !tbaa !461, !noalias !549
  store ptr @"_ZZN4llvm6detail18UniqueFunctionBaseIvJEEC1ISt5_BindIFZNS_4bolt17ParallelUtilities17runOnEachFunctionERNS5_13BinaryContextENS6_16SchedulingPolicyESt8functionIFvRNS5_14BinaryFunctionEEESA_IFbRKSB_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjE3$_0St17_Rb_tree_iteratorISt4pairIKmSB_EESU_EESW_EET_NS2_8CalledAsIT0_EEENUlPS2_S11_E_8__invokeES11_S11_", ptr %i.b, align 8, !tbaa !462, !noalias !549
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !549
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !551
  call void @_ZSt5asyncIN4llvm15unique_functionIFvvEEEJEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNS6_IT0_E4typeEEE4typeEESt6launchOS7_DpOSA_(ptr dead_on_unwind nonnull writable sret(%"class.std::future") align 8 %3, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(40) %5), !noalias !551
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %i.f = load ptr, ptr %3, align 8, !tbaa !465, !noalias !553 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !465, !alias.scope !553
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !453, !noalias !553 ; 4 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !453, !alias.scope !553
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !551
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt13shared_futureIvEC2ERKS0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62, !noalias !551
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.j, align 4, !tbaa !457, !noalias !551
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !457, !noalias !551
  br label %_ZNSt13shared_futureIvEC2ERKS0_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4, !noalias !551 ; 0 uses
  br label %_ZNSt13shared_futureIvEC2ERKS0_.exit.i.i

_ZNSt13shared_futureIvEC2ERKS0_.exit.i.i:         ; preds = %bb.d, %bb.c, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !465, !noalias !551
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.i, ptr %i.q, align 8, !tbaa !453, !noalias !551
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseIvJEEC1IZNS_19ThreadPoolInterface9asyncImplIvEESt13shared_futureIT_ENS_15unique_functionIFS7_vEEEPNS_19ThreadPoolTaskGroupEEUlvE_SE_EES7_NS2_8CalledAsIT0_EEENUlPKS2_E_8__invokeESJ_, ptr %i.o, align 8, !tbaa !461, !noalias !551
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseIvJEEC1IZNS_19ThreadPoolInterface9asyncImplIvEESt13shared_futureIT_ENS_15unique_functionIFS7_vEEEPNS_19ThreadPoolTaskGroupEEUlvE_SE_EES7_NS2_8CalledAsIT0_EEENUlPS2_SI_E_8__invokeESI_SI_, ptr %i.p, align 8, !tbaa !462, !noalias !551
  %i.r = load ptr, ptr %1, align 8, !tbaa !23, !noalias !551
  %i.s = load ptr, ptr %i.r, align 8, !noalias !551
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull align 8 dereferenceable(40) %4, ptr noundef null) #18, !noalias !551, !inline_history !546
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !462, !noalias !551 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZN4llvm19ThreadPoolInterface9asyncImplIvEESt13shared_futureIT_ENS_15unique_functionIFS3_vEEEPNS_19ThreadPoolTaskGroupE.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt13shared_futureIvEC2ERKS0_.exit.i.i
  call void %i.t(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %4) #18, !noalias !551, !inline_history !547
  br label %_ZN4llvm19ThreadPoolInterface9asyncImplIvEESt13shared_futureIT_ENS_15unique_functionIFS3_vEEEPNS_19ThreadPoolTaskGroupE.exit.i

_ZN4llvm19ThreadPoolInterface9asyncImplIvEESt13shared_futureIT_ENS_15unique_functionIFS3_vEEEPNS_19ThreadPoolTaskGroupE.exit.i: ; preds = %bb.e, %_ZNSt13shared_futureIvEC2ERKS0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !549
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !462, !noalias !549 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %"_ZN4llvm19ThreadPoolInterface5asyncISt5_BindIFZNS_4bolt17ParallelUtilities17runOnEachFunctionERNS3_13BinaryContextENS4_16SchedulingPolicyESt8functionIFvRNS3_14BinaryFunctionEEES8_IFbRKS9_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjE3$_0St17_Rb_tree_iteratorISt4pairIKmS9_EESS_EEEESt13shared_futureIDTclfp_EEEOT_.exit", label %bb.f

bb.f:                                             ; preds = %_ZN4llvm19ThreadPoolInterface9asyncImplIvEESt13shared_futureIT_ENS_15unique_functionIFS3_vEEEPNS_19ThreadPoolTaskGroupE.exit.i
  call void %i.u(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %5) #18, !noalias !549, !inline_history !548
  br label %"_ZN4llvm19ThreadPoolInterface5asyncISt5_BindIFZNS_4bolt17ParallelUtilities17runOnEachFunctionERNS3_13BinaryContextENS4_16SchedulingPolicyESt8functionIFvRNS3_14BinaryFunctionEEES8_IFbRKS9_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjE3$_0St17_Rb_tree_iteratorISt4pairIKmS9_EESS_EEEESt13shared_futureIDTclfp_EEEOT_.exit"

"_ZN4llvm19ThreadPoolInterface5asyncISt5_BindIFZNS_4bolt17ParallelUtilities17runOnEachFunctionERNS3_13BinaryContextENS4_16SchedulingPolicyESt8functionIFvRNS3_14BinaryFunctionEEES8_IFbRKS9_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjE3$_0St17_Rb_tree_iteratorISt4pairIKmS9_EESS_EEEESt13shared_futureIDTclfp_EEEOT_.exit": ; preds = %_ZN4llvm19ThreadPoolInterface9asyncImplIvEESt13shared_futureIT_ENS_15unique_functionIFS3_vEEEPNS_19ThreadPoolTaskGroupE.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS0_13BinaryContextENS1_16SchedulingPolicyESt8functionIFvRNS0_14BinaryFunctionEtEES5_IFbRKS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbj(ptr noundef nonnull align 8 dereferenceable(2268) %0, i32 noundef %1, ptr nofree noundef align 8 dereferenceable(32) %2, ptr nofree noundef align 8 dereferenceable(32) %3, ptr nofree noundef align 8 dereferenceable(32) %4, i1 noundef zeroext %5, i32 noundef %6) local_unnamed_addr #4 {
bb.a:
  %7 = alloca %"class.llvm::sys::SmartRWMutex", align 8 ; 6 uses
  %8 = alloca %class.anon.484, align 8            ; 9 uses
  %9 = alloca %"class.std::shared_future", align 8 ; 2 uses
  %10 = alloca %"class.std::shared_future", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !43
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.bj, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store ptr %4, ptr %8, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %7, ptr %i.d, align 8, !tbaa !560
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %3, ptr %i.e, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %2, ptr %i.f, align 8, !tbaa !561
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts9NoThreadsE, i64 120), align 8, !tbaa !54, !range !31, !noundef !32
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond = or i1 %5, %i.h
  br i1 %or.cond, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %.val31.val = load ptr, ptr %i.i, align 8, !tbaa !562 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val31.val, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !469
  %.not.not.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.not.i.i.i.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.val31.val, i64 24
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %i.l, %bb.d ], [ %.sroa.06.0.i.i.i.i.i, %bb.f ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !470 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.n = load i16, ptr %i.m, align 2, !tbaa !471
  %i.o = icmp eq i16 %i.n, 1
  br i1 %i.o, label %"_ZZN4llvm4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS0_13BinaryContextENS1_16SchedulingPolicyESt8functionIFvRNS0_14BinaryFunctionEtEES5_IFbRKS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjENK3$_1clEj.exit", label %bb.e, !llvm.loop !554

bb.g:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.val31.val, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.val31.val, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !472  ; 2 uses
  %i.s = icmp ne i64 %i.r, 1
  %i.t = zext i1 %i.s to i64                      ; 2 uses
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !473
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !474  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !470  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i16, ptr %i.y, align 2, !tbaa !471
  %i.aa = icmp eq i16 %i.z, 1
  br i1 %i.aa, label %"_ZZN4llvm4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS0_13BinaryContextENS1_16SchedulingPolicyESt8functionIFvRNS0_14BinaryFunctionEtEES5_IFbRKS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjENK3$_1clEj.exit", label %.lr.ph.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.j
  %i.ab = icmp eq i16 %i.ae, 1
  br i1 %i.ab, label %"_ZZN4llvm4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS0_13BinaryContextENS1_16SchedulingPolicyESt8functionIFvRNS0_14BinaryFunctionEtEES5_IFbRKS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjENK3$_1clEj.exit", label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h, %bb.i
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.ac, %bb.i ], [ %i.x, %bb.h ]
  %i.ac = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !470 ; 3 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !471 ; 2 uses
  %i.af = zext i16 %i.ae to i64
  %i.ag = urem i64 %i.af, %i.r
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.ag, %i.t
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.j
  br label %.loopexit.i, !llvm.loop !6

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.e, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.g
  %i.ah = call noundef zeroext i16 @_ZN4llvm4bolt13MCPlusBuilder32initializeNewAnnotationAllocatorEv(ptr noundef nonnull align 8 dereferenceable(536) %.val31.val) ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS0_13BinaryContextENS1_16SchedulingPolicyESt8functionIFvRNS0_14BinaryFunctionEtEES5_IFbRKS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbj:bb.a
  %.not19.i.i.i.i.i.i.i46 = icmp eq i64 %i.dw, %i.dj
  br i1 %.not19.i.i.i.i.i.i.i46, label %bb.af, label %..loopexit_crit_edge21.i.i.i.i.i.i.i47, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i.i.i47:           ; preds = %bb.ag
  br label %.loopexit.i48, !llvm.loop !6

.loopexit.i48:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i43, %bb.ab, %..loopexit_crit_edge21.i.i.i.i.i.i.i47, %bb.ad
  %i.dx = call noundef zeroext i16 @_ZN4llvm4bolt13MCPlusBuilder32initializeNewAnnotationAllocatorEv(ptr noundef nonnull align 8 dereferenceable(536) %.val.val) ; 0 uses
  br label %"_ZZN4llvm4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS0_13BinaryContextENS1_16SchedulingPolicyESt8functionIFvRNS0_14BinaryFunctionEtEES5_IFbRKS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjENK3$_1clEj.exit52"

"_ZZN4llvm4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS0_13BinaryContextENS1_16SchedulingPolicyESt8functionIFvRNS0_14BinaryFunctionEtEES5_IFbRKS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjENK3$_1clEj.exit52": ; preds = %bb.af, %bb.ac, %bb.ae, %.loopexit.i48
  %i.dy = ptrtoint ptr %.sroa.085.0.lcssa to i64
  %i.dz = ptrtoint ptr %i.cr to i64
  call fastcc void @"_ZN4llvm19ThreadPoolInterface5asyncIRZNS_4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS2_13BinaryContextENS3_16SchedulingPolicyESt8functionIFvRNS2_14BinaryFunctionEtEES7_IFbRKS8_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjE3$_0JRSt17_Rb_tree_iteratorISt4pairIKmS8_EESS_RjEEEDaOT_DpOT0_"(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %.0.i39, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 %i.dy, i64 %i.dz, i32 %.0104.lcssa)
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !453 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %"_ZZN4llvm4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS0_13BinaryContextENS1_16SchedulingPolicyESt8functionIFvRNS0_14BinaryFunctionEtEES5_IFbRKS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjENK3$_1clEj.exit52"
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 4 uses
  %i.ed = load atomic i64, ptr %i.ec acquire, align 8 ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 4294967297
  %i.ef = trunc i64 %i.ed to i32                  ; 2 uses
  br i1 %i.ee, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.ec, align 8, !tbaa !455
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  store i32 0, ptr %i.eg, align 4, !tbaa !456
  %i.eh = load ptr, ptr %i.eb, align 8, !tbaa !23
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #18, !inline_history !4
  %i.ek = load ptr, ptr %i.eb, align 8, !tbaa !23
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #18, !inline_history !4
  br label %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit

bb.aj:                                            ; preds = %bb.ah
  %i.en = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i53 = icmp eq i8 %i.en, 0
  br i1 %.not.i.i.i.i53, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eo = add nsw i32 %i.ef, -1
  store i32 %i.eo, ptr %i.ec, align 8, !tbaa !457
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.ep = atomicrmw volatile add ptr %i.ec, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i = phi i32 [ %i.ef, %bb.ak ], [ %i.ep, %bb.al ]
  %i.eq = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.eq, label %bb.am, label %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit, !prof !458

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #18
  br label %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit

_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit: ; preds = %"_ZZN4llvm4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS0_13BinaryContextENS1_16SchedulingPolicyESt8functionIFvRNS0_14BinaryFunctionEtEES5_IFbRKS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjENK3$_1clEj.exit52", %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.am
  %i.er = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %7) #18 ; 0 uses
  %i.es = load ptr, ptr %.0.i39, align 8, !tbaa !23
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %.0.i39) #18
  br label %bb.bi

bb.an:                                            ; preds = %.lr.ph, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit79
  %.0125 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit79 ]
  %.sroa.082.0124 = phi ptr [ %i.cq, %.lr.ph ], [ %i.hf, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit79 ] ; 8 uses
  %.sroa.085.0123 = phi ptr [ %i.cq, %.lr.ph ], [ %.sroa.085.1, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit79 ] ; 2 uses
  %.0104122 = phi i32 [ 1, %.lr.ph ], [ %.1105, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit79 ] ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.082.0124, i64 40
  br i1 %i.cs, label %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ew = load ptr, ptr %i.ct, align 8, !tbaa !26
  %.not.i.i.not.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.not.i, label %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit._crit_edge.i, label %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit.i

_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit.i: ; preds = %bb.ao
  %i.ex = load ptr, ptr %i.cu, align 8, !tbaa !72
  %i.ey = call noundef zeroext i1 %i.ex(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(1360) %i.ev) #18, !inline_history !5
  br i1 %i.ey, label %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit, label %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit._crit_edge.i

_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit._crit_edge.i: ; preds = %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit.i, %bb.ao
  switch i32 %.1107, label %bb.at [
    i32 1, label %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit
    i32 2, label %bb.ap
    i32 3, label %bb.aq
    i32 4, label %bb.ar
    i32 5, label %bb.as
  ]

bb.ap:                                            ; preds = %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit._crit_edge.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.082.0124, i64 112
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !195
  %i.fb = trunc i64 %i.fa to i32
  br label %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit

bb.aq:                                            ; preds = %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit._crit_edge.i
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.082.0124, i64 112
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !195 ; 2 uses
  %i.fe = mul i64 %i.fd, %i.fd
  %i.ff = trunc i64 %i.fe to i32
  br label %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit

bb.ar:                                            ; preds = %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit._crit_edge.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.082.0124, i64 1288
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !196
  br label %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit

bb.as:                                            ; preds = %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit._crit_edge.i
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.082.0124, i64 1288
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !196 ; 2 uses
  %i.fk = mul i32 %i.fj, %i.fj
  br label %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit

bb.at:                                            ; preds = %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit._crit_edge.i
  unreachable

_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit: ; preds = %bb.an, %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit.i, %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit._crit_edge.i, %bb.ap, %bb.aq, %bb.ar, %bb.as
  %.0.i55 = phi i32 [ %i.fk, %bb.as ], [ 1, %bb.an ], [ 0, %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit.i ], [ %i.fb, %bb.ap ], [ %i.ff, %bb.aq ], [ %i.fh, %bb.ar ], [ %.1107, %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit._crit_edge.i ]
  %i.fl = add i32 %.0.i55, %.0125                 ; 2 uses
  %.not = icmp ult i32 %i.fl, %i.cf
  br i1 %.not, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit79, label %bb.au

bb.au:                                            ; preds = %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit
  %.val30.val = load ptr, ptr %i.cv, align 8, !tbaa !562 ; 5 uses
  %i.fm = trunc i32 %.0104122 to i16              ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.val30.val, i64 32
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !469
  %.not.not.i.i.i.i.i56 = icmp eq i64 %i.fo, 0
  br i1 %.not.not.i.i.i.i.i56, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.fp = getelementptr inbounds nuw i8, ptr %.val30.val, i64 24
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %bb.av
  %.sroa.06.0.in.i.i.i.i.i65 = phi ptr [ %i.fp, %bb.av ], [ %.sroa.06.0.i.i.i.i.i66, %bb.ax ]
  %.sroa.06.0.i.i.i.i.i66 = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i65, align 8, !tbaa !470 ; 3 uses
  %.not.i.i.i.i.i67 = icmp eq ptr %.sroa.06.0.i.i.i.i.i66, null
  br i1 %.not.i.i.i.i.i67, label %.loopexit.i64, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i66, i64 8
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !471
  %i.fs = icmp eq i16 %i.fr, %i.fm
  br i1 %i.fs, label %"_ZZN4llvm4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS0_13BinaryContextENS1_16SchedulingPolicyESt8functionIFvRNS0_14BinaryFunctionEtEES5_IFbRKS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjENK3$_1clEj.exit68", label %bb.aw, !llvm.loop !554

bb.ay:                                            ; preds = %bb.au
  %i.ft = getelementptr inbounds nuw i8, ptr %.val30.val, i64 8
  %.mask.i57 = and i32 %.0104122, 65535
  %i.fu = zext nneg i32 %.mask.i57 to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %.val30.val, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !472 ; 2 uses
  %i.fx = urem i64 %i.fu, %i.fw                   ; 2 uses
  %i.fy = load ptr, ptr %i.ft, align 8, !tbaa !473
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fx
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !474 ; 2 uses
  %.not.i.i.i.i.i.i.i58 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i.i.i.i.i58, label %.loopexit.i64, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !470 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !471
  %i.ge = icmp eq i16 %i.gd, %i.fm
  br i1 %i.ge, label %"_ZZN4llvm4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS0_13BinaryContextENS1_16SchedulingPolicyESt8functionIFvRNS0_14BinaryFunctionEtEES5_IFbRKS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjENK3$_1clEj.exit68", label %.lr.ph.i.i.i.i.i.i.i59

bb.ba:                                            ; preds = %bb.bb
  %i.gf = icmp eq i16 %i.gi, %i.fm
  br i1 %i.gf, label %"_ZZN4llvm4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS0_13BinaryContextENS1_16SchedulingPolicyESt8functionIFvRNS0_14BinaryFunctionEtEES5_IFbRKS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjENK3$_1clEj.exit68", label %.lr.ph.i.i.i.i.i.i.i59, !llvm.loop !6

.lr.ph.i.i.i.i.i.i.i59:                           ; preds = %bb.az, %bb.ba
  %.020.i.i.i.i.i.i.i60 = phi ptr [ %i.gg, %bb.ba ], [ %i.gb, %bb.az ]
  %i.gg = load ptr, ptr %.020.i.i.i.i.i.i.i60, align 8, !tbaa !470 ; 3 uses
  %.not18.i.i.i.i.i.i.i61 = icmp eq ptr %i.gg, null
  br i1 %.not18.i.i.i.i.i.i.i61, label %.loopexit.i64, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i59
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !471 ; 2 uses
  %i.gj = zext i16 %i.gi to i64
  %i.gk = urem i64 %i.gj, %i.fw
  %.not19.i.i.i.i.i.i.i62 = icmp eq i64 %i.gk, %i.fx
  br i1 %.not19.i.i.i.i.i.i.i62, label %bb.ba, label %..loopexit_crit_edge21.i.i.i.i.i.i.i63, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i.i.i63:           ; preds = %bb.bb
  br label %.loopexit.i64, !llvm.loop !6

.loopexit.i64:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i59, %bb.aw, %..loopexit_crit_edge21.i.i.i.i.i.i.i63, %bb.ay
  %i.gl = call noundef zeroext i16 @_ZN4llvm4bolt13MCPlusBuilder32initializeNewAnnotationAllocatorEv(ptr noundef nonnull align 8 dereferenceable(536) %.val30.val) ; 0 uses
  br label %"_ZZN4llvm4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS0_13BinaryContextENS1_16SchedulingPolicyESt8functionIFvRNS0_14BinaryFunctionEtEES5_IFbRKS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjENK3$_1clEj.exit68"

"_ZZN4llvm4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS0_13BinaryContextENS1_16SchedulingPolicyESt8functionIFvRNS0_14BinaryFunctionEtEES5_IFbRKS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjENK3$_1clEj.exit68": ; preds = %bb.ba, %bb.ax, %bb.az, %.loopexit.i64
  %i.gm = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.082.0124) #21
  %i.gn = ptrtoint ptr %.sroa.085.0123 to i64
  %i.go = ptrtoint ptr %i.gm to i64
  call fastcc void @"_ZN4llvm19ThreadPoolInterface5asyncIRZNS_4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS2_13BinaryContextENS3_16SchedulingPolicyESt8functionIFvRNS2_14BinaryFunctionEtEES7_IFbRKS8_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjE3$_0JRSt17_Rb_tree_iteratorISt4pairIKmS8_EESS_RjEEEDaOT_DpOT0_"(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %.0.i39, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 %i.gn, i64 %i.go, i32 %.0104122)
  %i.gp = load ptr, ptr %i.cw, align 8, !tbaa !453 ; 8 uses
  %.not.i.i.i70 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i70, label %_ZNSt14__basic_futureIvED2Ev.exit74, label %bb.bc

bb.bc:                                            ; preds = %"_ZZN4llvm4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS0_13BinaryContextENS1_16SchedulingPolicyESt8functionIFvRNS0_14BinaryFunctionEtEES5_IFbRKS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjENK3$_1clEj.exit68"
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 4 uses
  %i.gr = load atomic i64, ptr %i.gq acquire, align 8 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 4294967297
  %i.gt = trunc i64 %i.gr to i32                  ; 2 uses
  br i1 %i.gs, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.gq, align 8, !tbaa !455
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.gu, align 4, !tbaa !456
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !23
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #18, !inline_history !4
  %i.gy = load ptr, ptr %i.gp, align 8, !tbaa !23
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #18, !inline_history !4
  br label %_ZNSt14__basic_futureIvED2Ev.exit74

bb.be:                                            ; preds = %bb.bc
  %i.hb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i71 = icmp eq i8 %i.hb, 0
  br i1 %.not.i.i.i.i71, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hc = add nsw i32 %i.gt, -1
  store i32 %i.hc, ptr %i.gq, align 8, !tbaa !457
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i72

bb.bg:                                            ; preds = %bb.be
  %i.hd = atomicrmw volatile add ptr %i.gq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i72

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i72: ; preds = %bb.bg, %bb.bf
  %.0.i.i.i.i.i73 = phi i32 [ %i.gt, %bb.bf ], [ %i.hd, %bb.bg ]
  %i.he = icmp eq i32 %.0.i.i.i.i.i73, 1
  br i1 %i.he, label %bb.bh, label %_ZNSt14__basic_futureIvED2Ev.exit74, !prof !458

bb.bh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i72
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #18
  br label %_ZNSt14__basic_futureIvED2Ev.exit74

_ZNSt14__basic_futureIvED2Ev.exit74:              ; preds = %"_ZZN4llvm4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS0_13BinaryContextENS1_16SchedulingPolicyESt8functionIFvRNS0_14BinaryFunctionEtEES5_IFbRKS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjENK3$_1clEj.exit68", %bb.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i72, %bb.bh
  %11 = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.082.0124) #21
  %12 = add i32 %.0104122, 1
  br label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit79

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit79: ; preds = %_ZNSt14__basic_futureIvED2Ev.exit74, %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit
  %.1105 = phi i32 [ %.0104122, %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit ], [ %12, %_ZNSt14__basic_futureIvED2Ev.exit74 ] ; 2 uses
  %.sroa.085.1 = phi ptr [ %.sroa.085.0123, %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit ], [ %11, %_ZNSt14__basic_futureIvED2Ev.exit74 ] ; 2 uses
  %.1 = phi i32 [ %i.fl, %_ZN4llvm4bolt17ParallelUtilities12_GLOBAL__N_114computeCostForERKNS0_14BinaryFunctionERKSt8functionIFbS5_EERKNS1_16SchedulingPolicyE.exit ], [ 0, %_ZNSt14__basic_futureIvED2Ev.exit74 ]
  %i.hf = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.082.0124) #21 ; 2 uses
  %.not108 = icmp eq ptr %i.hf, %i.cr
  br i1 %.not108, label %._crit_edge, label %bb.an, !llvm.loop !559

bb.bi:                                            ; preds = %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit, %"_ZZN4llvm4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS0_13BinaryContextENS1_16SchedulingPolicyESt8functionIFvRNS0_14BinaryFunctionEtEES5_IFbRKS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjENK3$_1clEj.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.bj

bb.bj:                                            ; preds = %bb.a, %bb.bi
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN4llvm4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS0_13BinaryContextENS1_16SchedulingPolicyESt8functionIFvRNS0_14BinaryFunctionEtEES5_IFbRKS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjENK3$_0clESt17_Rb_tree_iteratorISt4pairIKmS6_EESP_t"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr %1, ptr nofree readnone captures(address) %2, i16 noundef zeroext %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %4 = alloca %"class.llvm::Timer", align 8       ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.b = load ptr, ptr %0, align 8, !tbaa !569, !nonnull !32, !align !441 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !60   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %4, i8 0, i64 80, i1 false)
  store ptr %i.g, ptr %i.f, align 8, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 0, ptr %i.h, align 8, !tbaa !60
  store i8 0, ptr %i.g, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 0, ptr %i.k, align 8, !tbaa !60
  store i8 0, ptr %i.j, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 144
  store i8 0, ptr %i.l, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 145
  store i8 0, ptr %i.m, align 1, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  call void @_ZN4llvm5Timer4initENS_9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(176) %4, ptr %i.c, i64 %i.e, ptr %i.c, i64 %i.e) #18
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !570, !nonnull !32, !align !441 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.q = call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(64) %i.p) #18
  switch i32 %i.q, label %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.preheader [
    i32 11, label %bb.b
    i32 35, label %bb.c
  ]

_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.preheader: ; preds = %bb.b
  %.not12 = icmp eq ptr %1, %2
  br i1 %.not12, label %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_system_errori(i32 noundef 35) #20
  unreachable

_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit: ; preds = %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit, %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.preheader
  %i.t = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.p) #18 ; 0 uses
  call void @_ZN4llvm5TimerD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit
  %.sroa.0.013 = phi ptr [ %1, %.lr.ph ], [ %i.ag, %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 40 ; 2 uses
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !571, !nonnull !32, !align !441 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26
  %.not.i.i.not = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not, label %bb.e, label %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit

_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit: ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72
  %i.aa = call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(1360) %i.u) #18, !inline_history !565
  br i1 %i.aa, label %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit, %bb.d
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !572, !nonnull !32, !align !441 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %3, ptr %i.a, align 2, !tbaa !471
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26
  %.not.i.i4 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i4, label %bb.f, label %_ZNKSt8functionIFvRN4llvm4bolt14BinaryFunctionEtEEclES3_t.exit

bb.f:                                             ; preds = %bb.e
  call void @_ZSt25__throw_bad_function_callv() #20
  unreachable

_ZNKSt8functionIFvRN4llvm4bolt14BinaryFunctionEtEEclES3_t.exit: ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !574
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(1360) %i.u, ptr noundef nonnull align 2 dereferenceable(2) %i.a) #18, !inline_history !566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit

_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit: ; preds = %_ZNKSt8functionIFbRKN4llvm4bolt14BinaryFunctionEEEclES4_.exit, %_ZNKSt8functionIFvRN4llvm4bolt14BinaryFunctionEtEEclES3_t.exit
  %i.ag = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.013) #21 ; 2 uses
  %.not = icmp eq ptr %i.ag, %2
  br i1 %.not, label %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit, label %bb.d, !llvm.loop !567
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN4llvm19ThreadPoolInterface5asyncIRZNS_4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS2_13BinaryContextENS3_16SchedulingPolicyESt8functionIFvRNS2_14BinaryFunctionEtEES7_IFbRKS8_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjE3$_0JRSt17_Rb_tree_iteratorISt4pairIKmS8_EESS_RjEEEDaOT_DpOT0_"(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i64 %.0.val, i64 %.0.val1, i32 %.0.val3) unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"class.std::future", align 8       ; 5 uses
  %4 = alloca %"class.llvm::unique_function", align 8 ; 8 uses
  %5 = alloca %"class.llvm::unique_function", align 8 ; 7 uses
  %.sroa.0.i.i.sroa.0.0.copyload8 = load <4 x ptr>, ptr %2, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.c = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef 56, i64 noundef 8) #18, !noalias !584 ; 5 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !62, !noalias !584
  store <4 x ptr> %.sroa.0.i.i.sroa.0.0.copyload8, ptr %i.c, align 8, !noalias !584
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 %.0.val3, ptr %i.d, align 8, !tbaa !457, !noalias !584
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %.0.val1, ptr %i.e, align 8, !tbaa !459, !noalias !584
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %.0.val, ptr %i.f, align 8, !tbaa !459, !noalias !584
  store ptr @"_ZZN4llvm6detail18UniqueFunctionBaseIvJEEC1ISt5_BindIFZNS_4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS5_13BinaryContextENS6_16SchedulingPolicyESt8functionIFvRNS5_14BinaryFunctionEtEESA_IFbRKSB_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjE3$_0St17_Rb_tree_iteratorISt4pairIKmSB_EESU_jEESW_EET_NS2_8CalledAsIT0_EEENUlPKS2_E_8__invokeES12_", ptr %i.a, align 8, !tbaa !461, !noalias !584
  store ptr @"_ZZN4llvm6detail18UniqueFunctionBaseIvJEEC1ISt5_BindIFZNS_4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS5_13BinaryContextENS6_16SchedulingPolicyESt8functionIFvRNS5_14BinaryFunctionEtEESA_IFbRKSB_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjE3$_0St17_Rb_tree_iteratorISt4pairIKmSB_EESU_jEESW_EET_NS2_8CalledAsIT0_EEENUlPS2_S11_E_8__invokeES11_S11_", ptr %i.b, align 8, !tbaa !462, !noalias !584
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !584
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !586
  call void @_ZSt5asyncIN4llvm15unique_functionIFvvEEEJEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNS6_IT0_E4typeEEE4typeEESt6launchOS7_DpOSA_(ptr dead_on_unwind nonnull writable sret(%"class.std::future") align 8 %3, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(40) %5), !noalias !586
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.g = load ptr, ptr %3, align 8, !tbaa !465, !noalias !588 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !465, !alias.scope !588
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !453, !noalias !588 ; 4 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !453, !alias.scope !588
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !586
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt13shared_futureIvEC2ERKS0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62, !noalias !586
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.k, align 4, !tbaa !457, !noalias !586
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !457, !noalias !586
  br label %_ZNSt13shared_futureIvEC2ERKS0_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4, !noalias !586 ; 0 uses
  br label %_ZNSt13shared_futureIvEC2ERKS0_.exit.i.i

_ZNSt13shared_futureIvEC2ERKS0_.exit.i.i:         ; preds = %bb.d, %bb.c, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !465, !noalias !586
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.j, ptr %i.r, align 8, !tbaa !453, !noalias !586
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseIvJEEC1IZNS_19ThreadPoolInterface9asyncImplIvEESt13shared_futureIT_ENS_15unique_functionIFS7_vEEEPNS_19ThreadPoolTaskGroupEEUlvE_SE_EES7_NS2_8CalledAsIT0_EEENUlPKS2_E_8__invokeESJ_, ptr %i.p, align 8, !tbaa !461, !noalias !586
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseIvJEEC1IZNS_19ThreadPoolInterface9asyncImplIvEESt13shared_futureIT_ENS_15unique_functionIFS7_vEEEPNS_19ThreadPoolTaskGroupEEUlvE_SE_EES7_NS2_8CalledAsIT0_EEENUlPS2_SI_E_8__invokeESI_SI_, ptr %i.q, align 8, !tbaa !462, !noalias !586
  %i.s = load ptr, ptr %1, align 8, !tbaa !23, !noalias !586
  %i.t = load ptr, ptr %i.s, align 8, !noalias !586
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull align 8 dereferenceable(40) %4, ptr noundef null) #18, !noalias !586, !inline_history !581
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !462, !noalias !586 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZN4llvm19ThreadPoolInterface9asyncImplIvEESt13shared_futureIT_ENS_15unique_functionIFS3_vEEEPNS_19ThreadPoolTaskGroupE.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt13shared_futureIvEC2ERKS0_.exit.i.i
  call void %i.u(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %4) #18, !noalias !586, !inline_history !582
  br label %_ZN4llvm19ThreadPoolInterface9asyncImplIvEESt13shared_futureIT_ENS_15unique_functionIFS3_vEEEPNS_19ThreadPoolTaskGroupE.exit.i

_ZN4llvm19ThreadPoolInterface9asyncImplIvEESt13shared_futureIT_ENS_15unique_functionIFS3_vEEEPNS_19ThreadPoolTaskGroupE.exit.i: ; preds = %bb.e, %_ZNSt13shared_futureIvEC2ERKS0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !584
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !462, !noalias !584 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %"_ZN4llvm19ThreadPoolInterface5asyncISt5_BindIFZNS_4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS3_13BinaryContextENS4_16SchedulingPolicyESt8functionIFvRNS3_14BinaryFunctionEtEES8_IFbRKS9_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjE3$_0St17_Rb_tree_iteratorISt4pairIKmS9_EESS_jEEEESt13shared_futureIDTclfp_EEEOT_.exit", label %bb.f

bb.f:                                             ; preds = %_ZN4llvm19ThreadPoolInterface9asyncImplIvEESt13shared_futureIT_ENS_15unique_functionIFS3_vEEEPNS_19ThreadPoolTaskGroupE.exit.i
  call void %i.v(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %5) #18, !noalias !584, !inline_history !583
  br label %"_ZN4llvm19ThreadPoolInterface5asyncISt5_BindIFZNS_4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS3_13BinaryContextENS4_16SchedulingPolicyESt8functionIFvRNS3_14BinaryFunctionEtEES8_IFbRKS9_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjE3$_0St17_Rb_tree_iteratorISt4pairIKmS9_EESS_jEEEESt13shared_futureIDTclfp_EEEOT_.exit"

"_ZN4llvm19ThreadPoolInterface5asyncISt5_BindIFZNS_4bolt17ParallelUtilities34runOnEachFunctionWithUniqueAllocIdERNS3_13BinaryContextENS4_16SchedulingPolicyESt8functionIFvRNS3_14BinaryFunctionEtEES8_IFbRKS9_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbjE3$_0St17_Rb_tree_iteratorISt4pairIKmS9_EESS_jEEEESt13shared_futureIDTclfp_EEEOT_.exit": ; preds = %_ZN4llvm19ThreadPoolInterface9asyncImplIvEESt13shared_futureIT_ENS_15unique_functionIFS3_vEEEPNS_19ThreadPoolTaskGroupE.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
end_hunk_1
