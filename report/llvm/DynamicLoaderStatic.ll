Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DynamicLoaderStatic?download=true
inline.NumInlined: 140
inline.NumDeleted: 113
begin_hunk_0_@_ZN19DynamicLoaderStatic28LoadAllImagesAtFileAddressesEv:bb.a
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #14, !inline_history !26
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #14, !inline_history !26
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

bb.e:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i1.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i1.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.f, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ab = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.f ], [ %i.ab, %bb.g ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.h, label %_ZN12lldb_private7Process9GetTargetEv.exit, !prof !29

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #14
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

_ZN12lldb_private7Process9GetTargetEv.exit:       ; preds = %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @_ZN12lldb_private10ModuleListC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %1) #14
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !100
  call void @_ZN12lldb_private7Process9SetCanJITEb(ptr noundef nonnull align 8 dereferenceable(3224) %i.ad, i1 noundef zeroext false) #14
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !100 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !8, !noalias !105, !nonnull !15, !noundef !15 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 7 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 8, !noalias !105
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN12lldb_private7Process9GetTargetEv.exit
  %.06.i.i.i.i.i.i23 = phi i32 [ %i.ai, %_ZN12lldb_private7Process9GetTargetEv.exit ], [ %i.am, %bb.i ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i24 = icmp ne i32 %.06.i.i.i.i.i.i23, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i24)
  %i.aj = add nsw i32 %.06.i.i.i.i.i.i23, 1
  %i.ak = cmpxchg weak ptr %i.ah, i32 %.06.i.i.i.i.i.i23, i32 %i.aj acq_rel monotonic, align 8, !noalias !105 ; 2 uses
  %i.al = extractvalue { i32, i1 } %i.ak, 1
  %i.am = extractvalue { i32, i1 } %i.ak, 0
  br i1 %i.al, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i25, label %bb.i, !llvm.loop !16

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i25: ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 896
  %i.ao = load atomic i32, ptr %i.ah monotonic, align 8, !noalias !105
  %.not.i.i.i.i26 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i26, label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i27, label %bb.j

bb.j:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i25
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 144
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !18, !noalias !105
  br label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i27

_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i27: ; preds = %bb.j, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i25
  %i.ar = phi ptr [ %i.aq, %bb.j ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i25 ] ; 3 uses
  %i.as = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i27
  store i32 0, ptr %i.ah, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !23
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #14, !inline_history !26
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #14, !inline_history !26
  br label %_ZN12lldb_private7Process9GetTargetEv.exit31

bb.l:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i27
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i1.i28 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i1.i28, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ah, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i29

bb.n:                                             ; preds = %bb.l
  %i.be = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i29

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i29: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i30 = phi i32 [ %i.au, %bb.m ], [ %i.be, %bb.n ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i30, 1
  br i1 %i.bf, label %bb.o, label %_ZN12lldb_private7Process9GetTargetEv.exit31, !prof !29

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i29
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #14
  br label %_ZN12lldb_private7Process9GetTargetEv.exit31

_ZN12lldb_private7Process9GetTargetEv.exit31:     ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i29, %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 920 ; 2 uses
  %i.bh = load ptr, ptr %i.an, align 8, !tbaa !108, !noalias !110 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 904
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !108, !noalias !110 ; 2 uses
  %i.bk = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bg) #14, !noalias !110 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i, label %_ZNK12lldb_private10ModuleList7ModulesEv.exit.preheader, label %bb.p

_ZNK12lldb_private10ModuleList7ModulesEv.exit.preheader: ; preds = %_ZN12lldb_private7Process9GetTargetEv.exit31
  %.not4450 = icmp eq ptr %i.bh, %i.bj
  br i1 %.not4450, label %_ZN12lldb_private22LockingAdaptedIterableISt15recursive_mutexSt6vectorISt10shared_ptrINS_6ModuleEESaIS5_EEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEED2Ev.exit, label %.lr.ph52

.lr.ph52:                                         ; preds = %_ZNK12lldb_private10ModuleList7ModulesEv.exit.preheader
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.q

bb.p:                                             ; preds = %_ZN12lldb_private7Process9GetTargetEv.exit31
  call void @_ZSt20__throw_system_errori(i32 noundef %i.bk) #16, !noalias !110
  unreachable

_ZN12lldb_private22LockingAdaptedIterableISt15recursive_mutexSt6vectorISt10shared_ptrINS_6ModuleEESaIS5_EEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNK12lldb_private10ModuleList7ModulesEv.exit.preheader
  %i.bn = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bg) #14 ; 0 uses
  call void @_ZN12lldb_private6Target14ModulesDidLoadERNS_10ModuleListE(ptr noundef nonnull align 8 dereferenceable(2200) %i.ar, ptr noundef nonnull align 8 dereferenceable(72) %1) #14
  call void @_ZN12lldb_private10ModuleListD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void

bb.q:                                             ; preds = %.lr.ph52, %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.040.051 = phi ptr [ %i.bh, %.lr.ph52 ], [ %i.eb, %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.bo = load ptr, ptr %.sroa.040.051, align 8, !tbaa !113 ; 3 uses
  store ptr %i.bo, ptr %2, align 8, !tbaa !113
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.040.051, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !115 ; 3 uses
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !115
  %.not.i.i.i33 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i33, label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i34 = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i34, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !28
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !28
  br label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit

bb.t:                                             ; preds = %bb.r
  %i.bv = atomicrmw volatile add ptr %i.br, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !113
  br label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit

_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit: ; preds = %bb.q, %bb.s, %bb.t
  %i.bw = phi ptr [ %i.bo, %bb.q ], [ %i.bo, %bb.s ], [ %.pre, %bb.t ] ; 3 uses
  %.not45 = icmp eq ptr %i.bw, null
  br i1 %.not45, label %bb.aj, label %bb.u

bb.u:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i8 0, ptr %i.a, align 1, !tbaa !116
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !24
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call noundef ptr %i.bz(ptr noundef nonnull align 8 dereferenceable(952) %i.bw) #14 ; 3 uses
  %.not = icmp eq ptr %i.ca, null
  br i1 %.not, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 112
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = call noundef ptr %i.cd(ptr noundef nonnull align 8 dereferenceable(200) %i.ca, i1 noundef zeroext true) #14 ; 4 uses
  %.not21 = icmp eq ptr %i.ce, null
  br i1 %.not21, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !117 ; 2 uses
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !120 ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 4
  %.not53 = icmp eq ptr %i.cg, %i.ch
  br i1 %.not53, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w, %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.048 = phi i64 [ %i.de, %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 0, %bb.w ] ; 2 uses
  %.01847 = phi i1 [ %cond, %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ true, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZNK12lldb_private11SectionList17GetSectionAtIndexEm(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.454") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 noundef %.048) #14
  %i.cm = load ptr, ptr %3, align 8, !tbaa !121
  %.not46 = icmp eq ptr %i.cm, null
  br i1 %.not46, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  %i.cn = call noundef i64 @_ZN12lldb_private6Target21GetSectionLoadAddressERKSt10shared_ptrINS_7SectionEE(ptr noundef nonnull align 8 dereferenceable(2200) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  %.not22 = icmp eq i64 %i.cn, -1
  br i1 %.not22, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %.lr.ph
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.1.a = phi i1 [ true, %bb.y ], [ false, %bb.x ]
  %cond = phi i1 [ %.01847, %bb.y ], [ false, %bb.x ] ; 2 uses
  %i.co = load ptr, ptr %i.bm, align 8, !tbaa !115 ; 8 uses
  %.not.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 4 uses
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 4294967297
  %i.cs = trunc i64 %i.cq to i32                  ; 2 uses
  br i1 %i.cr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.cp, align 8, !tbaa !21
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store i32 0, ptr %i.ct, align 4, !tbaa !23
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #14, !inline_history !124
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #14, !inline_history !124
  br label %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ac:                                            ; preds = %bb.aa
  %i.da = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i35 = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i35, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.db = add nsw i32 %i.cs, -1
  store i32 %i.db, ptr %i.cp, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.dc = atomicrmw volatile add ptr %i.cp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i = phi i32 [ %i.cs, %bb.ad ], [ %i.dc, %bb.ae ]
  %i.dd = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dd, label %bb.af, label %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #14
  br label %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.z, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.de = add nuw i64 %.048, 1                    ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.cl
  %or.cond = select i1 %.1.a, i1 %i.df, i1 false
  br i1 %or.cond, label %.lr.ph, label %._crit_edge, !llvm.loop !125

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  br i1 %cond, label %.critedge, label %bb.ag

.critedge:                                        ; preds = %bb.w, %bb.u, %bb.v, %._crit_edge
  %i.dg = load ptr, ptr %2, align 8, !tbaa !113
  %i.dh = call noundef zeroext i1 @_ZN12lldb_private6Module14SetLoadAddressERNS_6TargetEmbRb(ptr noundef nonnull align 8 dereferenceable(952) %i.dg, ptr noundef nonnull align 8 dereferenceable(2200) %i.ar, i64 noundef 0, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #14 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge, %._crit_edge
  %i.di = load i8, ptr %i.a, align 1, !tbaa !116, !range !126, !noundef !15
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dk = call noundef zeroext i1 @_ZN12lldb_private10ModuleList14AppendIfNeededERKSt10shared_ptrINS_6ModuleEEb(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext true) #14 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit
  %i.dl = load ptr, ptr %i.bl, align 8, !tbaa !115 ; 8 uses
  %.not.i.i36 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i36, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 4 uses
  %i.dn = load atomic i64, ptr %i.dm acquire, align 8 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 4294967297
  %i.dp = trunc i64 %i.dn to i32                  ; 2 uses
  br i1 %i.do, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.dm, align 8, !tbaa !21
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 0, ptr %i.dq, align 4, !tbaa !23
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !24
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #14, !inline_history !127
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #14, !inline_history !127
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.am:                                            ; preds = %bb.ak
  %i.dx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i37 = icmp eq i8 %i.dx, 0
  br i1 %.not.i.i.i37, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dy = add nsw i32 %i.dp, -1
  store i32 %i.dy, ptr %i.dm, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38

bb.ao:                                            ; preds = %bb.am
  %i.dz = atomicrmw volatile add ptr %i.dm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i39 = phi i32 [ %i.dp, %bb.an ], [ %i.dz, %bb.ao ]
  %i.ea = icmp eq i32 %.0.i.i.i.i39, 1
  br i1 %i.ea, label %bb.ap, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #14
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aj, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.040.051, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.eb, %i.bj
  br i1 %.not44, label %_ZN12lldb_private22LockingAdaptedIterableISt15recursive_mutexSt6vectorISt10shared_ptrINS_6ModuleEESaIS5_EEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEED2Ev.exit, label %bb.q
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN19DynamicLoaderStatic9DidLaunchEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN19DynamicLoaderStatic28LoadAllImagesAtFileAddressesEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  ret void
}

declare void @_ZN12lldb_private10ModuleListC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare void @_ZN12lldb_private7Process9SetCanJITEb(ptr noundef nonnull align 8 dereferenceable(3224), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZNK12lldb_private11SectionList17GetSectionAtIndexEm(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.454") align 8, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN12lldb_private6Target21GetSectionLoadAddressERKSt10shared_ptrINS_7SectionEE(ptr noundef nonnull align 8 dereferenceable(2200), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN12lldb_private6Module14SetLoadAddressERNS_6TargetEmbRb(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef nonnull align 8 dereferenceable(2200), i64 noundef, i1 noundef zeroext, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN12lldb_private10ModuleList14AppendIfNeededERKSt10shared_ptrINS_6ModuleEEb(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN12lldb_private6Target14ModulesDidLoadERNS_10ModuleListE(ptr noundef nonnull align 8 dereferenceable(2200), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN12lldb_private10ModuleListD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN19DynamicLoaderStatic28GetStepThroughTrampolinePlanERN12lldb_private6ThreadEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.457") align 8 captures(none) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, i1 zeroext %3) unnamed_addr #5 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN19DynamicLoaderStatic12CanLoadImageEv(ptr dead_on_unwind noalias writable sret(%"class.lldb_private::Status") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN12lldb_private6Status15FromErrorStringEPKc(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8 %0, ptr noundef nonnull @.str)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private6Status15FromErrorStringEPKc(ptr dead_on_unwind noalias writable sret(%"class.lldb_private::Status") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %._crit_edge.i.i2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !128
  %i.c = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.c, ptr %i.a, align 8, !tbaa !129
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #14 ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !130
  %i.f = load i64, ptr %i.a, align 8, !tbaa !129
  store i64 %i.f, ptr %i.b, align 8, !tbaa !27
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %i.e, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.c, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !27
  store i8 %i.h, ptr %i.g, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.i = load i64, ptr %i.a, align 8, !tbaa !129  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !131
  %i.k = load ptr, ptr %2, align 8, !tbaa !130
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @_ZN12lldb_private6StatusC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %2) #14
  %i.m = load ptr, ptr %2, align 8, !tbaa !130    ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.o = load i64, ptr %i.b, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split

._crit_edge.i.i2:                                 ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.p, ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 10, ptr %i.q, align 8, !tbaa !131
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i8 0, ptr %i.r, align 2, !tbaa !27
  call void @_ZN12lldb_private6StatusC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %3) #14
  %i.s = load ptr, ptr %3, align 8, !tbaa !130    ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.p
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %._crit_edge.i.i2
  %i.u = load i64, ptr %i.p, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %.sink13 = phi i64 [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %.sink = phi ptr [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4 ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.v = add i64 %.sink13, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.v) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split, %._crit_edge.i.i2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ret void
}

declare noundef zeroext i1 @_ZN12lldb_private13PluginManager14RegisterPluginEN4llvm9StringRefES2_PFPNS_13DynamicLoaderEPNS_7ProcessEbEPFvRNS_8DebuggerEE(ptr, i64, ptr, i64, ptr noundef, ptr noundef) local_unnamed_addr #2
end_hunk_0
