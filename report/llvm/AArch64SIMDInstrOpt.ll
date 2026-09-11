Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64SIMDInstrOpt?download=true
inline.NumInlined: 958
inline.NumDeleted: 431
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_123AArch64SIMDInstrOptImpl3runERN4llvm15MachineFunctionE:bb.a
  %i.mb = load i64, ptr %i.s, align 8, !tbaa !178 ; 7 uses
  %i.mc = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.ma, i64 %i.mb) #18
  %i.md = call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.lz, ptr %i.ma, i64 %i.mb, i32 noundef %i.mc) #18 ; 2 uses
  %i.me = load ptr, ptr %i.lz, align 8, !tbaa !182
  %i.mf = zext i32 %i.md to i64
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.mf ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !185 ; 2 uses
  %.not.i.i.i30.i = icmp eq ptr %i.mh, null
  br i1 %.not.i.i.i30.i, label %bb.v, label %_ZN4llvm9StringMapIbNS_15MallocAllocatorEEixENS_9StringRefE.exit34.i

bb.v:                                             ; preds = %.critedge.i
  %i.mi = add i64 %i.mb, 17
  %i.mj = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.mi, i64 noundef 8) #18 ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16 ; 2 uses
  %.not.i.i.i.i.i31.i = icmp eq i64 %i.mb, 0
  br i1 %.not.i.i.i.i.i31.i, label %_ZN4llvm14StringMapEntryIbE6createINS_15MallocAllocatorEJEEEPS1_NS_9StringRefERT_DpOT0_.exit.i.i.i32.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mk, ptr align 1 %i.ma, i64 %i.mb, i1 false)
  br label %_ZN4llvm14StringMapEntryIbE6createINS_15MallocAllocatorEJEEEPS1_NS_9StringRefERT_DpOT0_.exit.i.i.i32.i

_ZN4llvm14StringMapEntryIbE6createINS_15MallocAllocatorEJEEEPS1_NS_9StringRefERT_DpOT0_.exit.i.i.i32.i: ; preds = %bb.w, %bb.v
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mb
  store i8 0, ptr %i.ml, align 1, !tbaa !171
  store i64 %i.mb, ptr %i.mj, align 8, !tbaa !188
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  store i8 0, ptr %i.mm, align 8, !tbaa !394
  store ptr %i.mj, ptr %i.mg, align 8, !tbaa !185
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lz, i64 12 ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !189
  %i.mp = add i32 %i.mo, 1
  store i32 %i.mp, ptr %i.mn, align 4, !tbaa !189
  %i.mq = call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %i.lz, i32 noundef %i.md) #18
  %i.mr = load ptr, ptr %i.lz, align 8, !tbaa !182
  %i.ms = zext i32 %i.mq to i64
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.ms
  %.pre.i33.i = load ptr, ptr %i.mt, align 8, !tbaa !185
  br label %_ZN4llvm9StringMapIbNS_15MallocAllocatorEEixENS_9StringRefE.exit34.i

_ZN4llvm9StringMapIbNS_15MallocAllocatorEEixENS_9StringRefE.exit34.i: ; preds = %_ZN4llvm14StringMapEntryIbE6createINS_15MallocAllocatorEJEEEPS1_NS_9StringRefERT_DpOT0_.exit.i.i.i32.i, %.critedge.i
  %i.mu = phi ptr [ %.pre.i33.i, %_ZN4llvm14StringMapEntryIbE6createINS_15MallocAllocatorEJEEEPS1_NS_9StringRefERT_DpOT0_.exit.i.i.i32.i ], [ %i.mh, %.critedge.i ]
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  store i8 1, ptr %i.mv, align 1, !tbaa !17
  br label %bb.x

bb.x:                                             ; preds = %_ZN4llvm9StringMapIbNS_15MallocAllocatorEEixENS_9StringRefE.exit34.i, %bb.u, %bb.m
  %.3.i = phi i1 [ %i.kb, %bb.m ], [ false, %_ZN4llvm9StringMapIbNS_15MallocAllocatorEEixENS_9StringRefE.exit34.i ], [ false, %bb.u ]
  %.2.i = phi i1 [ false, %bb.m ], [ true, %_ZN4llvm9StringMapIbNS_15MallocAllocatorEEixENS_9StringRefE.exit34.i ], [ false, %bb.u ]
  %i.mw = load ptr, ptr %75, align 8, !tbaa !177  ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.r
  br i1 %i.mx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.x
  %i.my = load i64, ptr %i.r, align 8, !tbaa !171
  %i.mz = add i64 %i.my, 1
  call void @_ZdlPvm(ptr noundef %i.mw, i64 noundef %i.mz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #18
  br i1 %.2.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit27.i, %bb.d
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit27.i
  %.4.i = phi i1 [ true, %bb.y ], [ %.3.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ false, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit27.i ]
  %i.na = load ptr, ptr %74, align 8, !tbaa !30   ; 2 uses
  %i.nb = icmp eq ptr %i.na, %i.n
  br i1 %i.nb, label %_ZN12_GLOBAL__N_123AArch64SIMDInstrOptImpl15shouldExitEarlyEPN4llvm15MachineFunctionENS0_7SubpassE.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef %i.na) #18
  br label %_ZN12_GLOBAL__N_123AArch64SIMDInstrOptImpl15shouldExitEarlyEPN4llvm15MachineFunctionENS0_7SubpassE.exit

_ZN12_GLOBAL__N_123AArch64SIMDInstrOptImpl15shouldExitEarlyEPN4llvm15MachineFunctionENS0_7SubpassE.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #18
  br i1 %.4.i, label %bb.cb, label %bb.ab

bb.ab:                                            ; preds = %_ZN12_GLOBAL__N_123AArch64SIMDInstrOptImpl15shouldExitEarlyEPN4llvm15MachineFunctionENS0_7SubpassE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #18
  store ptr %i.v, ptr %76, align 8, !tbaa !30
  store i32 0, ptr %i.w, align 8, !tbaa !31
  store i32 8, ptr %i.x, align 4, !tbaa !32
  %.sroa.0358.0537 = load ptr, ptr %i.y, align 8, !tbaa !400 ; 3 uses
  %.not477538 = icmp eq ptr %.sroa.0358.0537, %i.z
  br i1 %.not477538, label %._crit_edge543.thread, label %.lr.ph542

._crit_edge543.thread:                            ; preds = %bb.ab
  %i.nc = load ptr, ptr %76, align 8, !tbaa !30
  br label %._crit_edge

.lr.ph542:                                        ; preds = %bb.ab
  %i.nd = icmp eq i32 %i.ii, 0
  br i1 %i.nd, label %.lr.ph542.split.us, label %.lr.ph542.split

.lr.ph542.split.us:                               ; preds = %.lr.ph542, %._crit_edge.split.us.us
  %.sroa.0358.0540.us = phi ptr [ %.sroa.0358.0.us, %._crit_edge.split.us.us ], [ %.sroa.0358.0537, %.lr.ph542 ] ; 3 uses
  %.1539.us = phi i1 [ %.2.lcssa.us, %._crit_edge.split.us.us ], [ %.035549, %.lr.ph542 ] ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0358.0540.us, i64 56
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.0358.0540.us, i64 48 ; 2 uses
  %.sroa.0355.0528.us = load ptr, ptr %i.ne, align 8, !tbaa !405 ; 2 uses
  %.not478529.us = icmp eq ptr %.sroa.0355.0528.us, %i.nf
  br i1 %.not478529.us, label %._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph542.split.us, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.us.us
  %.sroa.0355.0531.us.us = phi ptr [ %.sroa.0355.0.us.us, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.us.us ], [ %.sroa.0355.0528.us, %.lr.ph542.split.us ] ; 41 uses
  %.2530.us.us = phi i1 [ %.3.us.us, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.us.us ], [ %.1539.us, %.lr.ph542.split.us ] ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.0355.0531.us.us, i64 52
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !417 ; 2 uses
  switch i32 %i.nh, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.us.us [
    i32 3722, label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit.i.us.us
    i32 3780, label %bb.am
    i32 3888, label %bb.al
    i32 3925, label %bb.ak
    i32 3718, label %bb.aj
    i32 3776, label %bb.ai
    i32 3884, label %bb.ah
    i32 3921, label %bb.ag
    i32 3717, label %bb.af
    i32 3775, label %bb.ae
    i32 3883, label %bb.ad
    i32 3920, label %bb.ac
  ]

bb.ac:                                            ; preds = %.lr.ph.us
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit.i.us.us

bb.ad:                                            ; preds = %.lr.ph.us
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit.i.us.us

bb.ae:                                            ; preds = %.lr.ph.us
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit.i.us.us

bb.af:                                            ; preds = %.lr.ph.us
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit.i.us.us

bb.ag:                                            ; preds = %.lr.ph.us
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit.i.us.us

bb.ah:                                            ; preds = %.lr.ph.us
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit.i.us.us

bb.ai:                                            ; preds = %.lr.ph.us
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit.i.us.us

bb.aj:                                            ; preds = %.lr.ph.us
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit.i.us.us

bb.ak:                                            ; preds = %.lr.ph.us
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit.i.us.us

bb.al:                                            ; preds = %.lr.ph.us
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit.i.us.us

bb.am:                                            ; preds = %.lr.ph.us
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit.i.us.us

_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit.i.us.us: ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %.lr.ph.us
  %.sink164.i.us.us = phi i64 [ -87040, %bb.ac ], [ -87040, %bb.ad ], [ -87040, %bb.ae ], [ -87040, %bb.af ], [ -87104, %bb.ag ], [ -87104, %bb.ah ], [ -87104, %bb.ai ], [ -87104, %bb.aj ], [ -87232, %bb.ak ], [ -87232, %bb.al ], [ -87232, %bb.am ], [ -87232, %.lr.ph.us ]
  %.sink162.i.us.us = phi i64 [ -125376, %bb.ac ], [ -124192, %bb.ad ], [ -120736, %bb.ae ], [ -118880, %bb.af ], [ -125408, %bb.ag ], [ -124224, %bb.ah ], [ -120768, %bb.ai ], [ -118912, %bb.aj ], [ -125536, %bb.ak ], [ -124352, %bb.al ], [ -120896, %bb.am ], [ -119040, %.lr.ph.us ]
  %.071.i.us.us = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3520), %bb.ac ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3520), %bb.ad ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3520), %bb.ae ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3520), %bb.af ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 5824), %bb.ag ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 5824), %bb.ah ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 5824), %bb.ai ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 5824), %bb.aj ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 5824), %bb.ak ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 5824), %bb.al ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 5824), %bb.am ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 5824), %.lr.ph.us ] ; 2 uses
  %i.ni = load ptr, ptr %0, align 8, !tbaa !388
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8 ; 2 uses
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !391 ; 2 uses
  %i.nl = getelementptr inbounds i8, ptr %i.nk, i64 %.sink164.i.us.us ; 5 uses
  %i.nm = getelementptr inbounds i8, ptr %i.nk, i64 %.sink162.i.us.us ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #18
  store ptr %i.gh, ptr %73, align 8, !tbaa !30
  store i32 2, ptr %i.gj, align 4, !tbaa !32
  store ptr %i.nl, ptr %i.gh, align 8
  store ptr %i.nm, ptr %i.gk, align 8
  store i32 2, ptr %i.gi, align 8, !tbaa !31
  %i.nn = load ptr, ptr %i.nj, align 8, !tbaa !391
  %i.no = zext nneg i32 %i.nh to i64
  %i.np = sub nsw i64 0, %i.no
  %i.nq = getelementptr inbounds [32 x i8], ptr %i.nn, i64 %i.np
  %i.nr = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123AArch64SIMDInstrOptImpl17shouldReplaceInstEPN4llvm15MachineFunctionEPKNS1_11MCInstrDescERNS1_15SmallVectorImplIS6_EE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.nq, ptr noundef nonnull align 8 dereferenceable(16) %73)
  br i1 %i.nr, label %bb.an, label %bb.ay

bb.an:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit.i.us.us
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.0355.0531.us.us, i64 24
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.0355.0531.us.us, i64 72 ; 4 uses
  %i.nu = load ptr, ptr %i.ns, align 8, !tbaa !418 ; 11 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 32 ; 5 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !459
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 32
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !385 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.0355.0531.us.us, i64 32
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !460 ; 9 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 4
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !171 ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 32
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oa, i64 36
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !171 ; 2 uses
  %i.og = load i32, ptr %i.od, align 8            ; 2 uses
  %i.oh = lshr i32 %i.og, 26
  %i.oi = lshr i32 %i.og, 24
  %.lobit.i.i.us.us = and i32 %i.oi, 1
  %i.oj = xor i32 %.lobit.i.i.us.us, 1
  %i.ok = and i32 %i.oj, %i.oh
  %.not.i40.us.us = icmp eq i32 %i.ok, 0          ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oa, i64 64
  %i.om = getelementptr inbounds nuw i8, ptr %i.oa, i64 68
  %i.on = load i32, ptr %i.om, align 4, !tbaa !171 ; 3 uses
  %i.oo = load i32, ptr %i.ol, align 8            ; 2 uses
  %i.op = lshr i32 %i.oo, 26
  %i.oq = lshr i32 %i.oo, 24
  %.lobit.i74.i.us.us = and i32 %i.oq, 1
  %i.or = xor i32 %.lobit.i74.i.us.us, 1
  %i.os = and i32 %i.or, %i.op
  %.not140.i.us.us = icmp eq i32 %i.os, 0         ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0355.0531.us.us, i64 40
  %i.ou = load i24, ptr %i.ot, align 8
  switch i24 %i.ou, label %bb.ay [
    i24 5, label %bb.at
    i24 4, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oa, i64 112
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !171
  %i.ox = load i32, ptr %i.nl, align 8, !tbaa !191
  %i.oy = getelementptr inbounds nuw i8, ptr %i.nu, i64 56
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !405 ; 2 uses
  %.not9.not.i80.i.us.us = icmp eq ptr %.sroa.0355.0531.us.us, %i.oz
  %.pre153.i.us.us = and i64 %i.ow, 4294967295    ; 2 uses
  br i1 %.not9.not.i80.i.us.us, label %.loopexit142.i.us.us, label %.lr.ph.i81.i.us.us

.lr.ph.i81.i.us.us:                               ; preds = %bb.ao, %.critedge.i88.i.us.us
  %.sroa.03.010.i82.i.us.us = phi ptr [ %.sroa.0.1.i.i.i.i.i87.i.us.us, %.critedge.i88.i.us.us ], [ %.sroa.0355.0531.us.us, %bb.ao ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i83.i.us.us = load i64, ptr %.sroa.03.010.i82.i.us.us, align 8
  %i.pa = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i83.i.us.us, -8
  %i.pb = inttoptr i64 %i.pa to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pb) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i.i84.i.us.us = load i64, ptr %i.pb, align 8
  %i.pc = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i.i84.i.us.us, 4
  %.not.i5.i.i.i.i85.i.us.us = icmp eq i64 %i.pc, 0
  br i1 %.not.i5.i.i.i.i85.i.us.us, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i91.i.us.us, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEi.exit.i86.i.us.us

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i91.i.us.us: ; preds = %.lr.ph.i81.i.us.us
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 44
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !461
  %i.pf = and i32 %i.pe, 4
  %.not45.i.i.i.i.i92.i.us.us = icmp eq i32 %i.pf, 0
  br i1 %.not45.i.i.i.i.i92.i.us.us, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEi.exit.i86.i.us.us, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i93.i.us.us

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i93.i.us.us: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i91.i.us.us, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i93.i.us.us
  %.sroa.0.06.i.i.i.i.i94.i.us.us = phi ptr [ %i.ph, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i93.i.us.us ], [ %i.pb, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i91.i.us.us ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i95.i.us.us = load i64, ptr %.sroa.0.06.i.i.i.i.i94.i.us.us, align 8
  %i.pg = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i95.i.us.us, -8
  %i.ph = inttoptr i64 %i.pg to ptr               ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 44
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !461
  %i.pk = and i32 %i.pj, 4
  %.not4.i.i.i.i.i96.i.us.us = icmp eq i32 %i.pk, 0
  br i1 %.not4.i.i.i.i.i96.i.us.us, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEi.exit.i86.i.us.us, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i93.i.us.us, !llvm.loop !242

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEi.exit.i86.i.us.us: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i93.i.us.us, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i91.i.us.us, %.lr.ph.i81.i.us.us
  %.sroa.0.1.i.i.i.i.i87.i.us.us = phi ptr [ %i.pb, %.lr.ph.i81.i.us.us ], [ %i.pb, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i91.i.us.us ], [ %i.ph, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i93.i.us.us ] ; 5 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i87.i.us.us, i64 52
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !417
  %i.pn = icmp eq i32 %i.pm, %i.ox
  br i1 %i.pn, label %bb.ap, label %.critedge.i88.i.us.us

bb.ap:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEi.exit.i86.i.us.us
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i87.i.us.us, i64 40
  %i.pp = load i24, ptr %i.po, align 8
  %i.pq = icmp eq i24 %i.pp, 3
  br i1 %i.pq, label %bb.aq, label %.critedge.i88.i.us.us

bb.aq:                                            ; preds = %bb.ap
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i87.i.us.us, i64 32
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !460 ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 36
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !171
  %i.pv = icmp eq i32 %i.pu, %i.on
  br i1 %i.pv, label %bb.ar, label %.critedge.i88.i.us.us

bb.ar:                                            ; preds = %bb.aq
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ps, i64 80
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !171
  %i.py = icmp eq i64 %i.px, %.pre153.i.us.us
  br i1 %i.py, label %_ZNK12_GLOBAL__N_123AArch64SIMDInstrOptImpl8reuseDUPERN4llvm12MachineInstrEjjjPj.exit97.i.us.us, label %.critedge.i88.i.us.us

.critedge.i88.i.us.us:                            ; preds = %bb.ar, %bb.aq, %bb.ap, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEi.exit.i86.i.us.us
  %.not.not.i89.i.us.us = icmp eq ptr %.sroa.0.1.i.i.i.i.i87.i.us.us, %i.oz
  br i1 %.not.not.i89.i.us.us, label %.loopexit142.i.us.us, label %.lr.ph.i81.i.us.us, !llvm.loop !243

_ZNK12_GLOBAL__N_123AArch64SIMDInstrOptImpl8reuseDUPERN4llvm12MachineInstrEjjjPj.exit97.i.us.us: ; preds = %bb.ar
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ps, i64 4
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !171
  %.pre149.i.us.us = select i1 %.not140.i.us.us, i32 0, i32 67108864
  br label %bb.as

.loopexit142.i.us.us:                             ; preds = %.critedge.i88.i.us.us, %bb.ao
  %i.qb = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.ny, ptr noundef nonnull %.071.i.us.us, ptr nonnull @.str.3, i64 0) #18 ; 3 uses
  %.sroa.04.0.copyload.i.us.us = load ptr, ptr %i.nt, align 8, !tbaa !462
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.0355.0531.us.us, i64 44
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !461
  %i.qe = and i32 %i.qd, 4
  %.not.i56.us.us = icmp eq i32 %i.qe, 0
  %i.qf = load ptr, ptr %i.nv, align 8, !tbaa !459 ; 5 uses
  %i.qg = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.qf, ptr noundef nonnull align 8 dereferenceable(32) %i.nl, ptr %.sroa.04.0.copyload.i.us.us, i1 noundef zeroext false) #18 ; 11 uses
  br i1 %.not.i56.us.us, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit234.us.us, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i61.us.us

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i61.us.us: ; preds = %.loopexit142.i.us.us
  %i.qh = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %i.nu, ptr nonnull align 8 dereferenceable(80) %.sroa.0355.0531.us.us, ptr noundef %i.qg) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  store ptr null, ptr %i.gl, align 8, !tbaa !465, !alias.scope !466
  store i32 %i.qb, ptr %i.gm, align 4, !tbaa !171, !alias.scope !466
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, i8 0, i64 16, i1 false), !alias.scope !466
  store i32 16777216, ptr %28, align 8, !alias.scope !466
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qg, ptr noundef nonnull align 8 dereferenceable(1065) %i.qf, ptr noundef nonnull align 8 dereferenceable(32) %28) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit65.us.us

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit234.us.us: ; preds = %.loopexit142.i.us.us
  %i.qi = getelementptr inbounds nuw i8, ptr %i.nu, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.qi, ptr noundef %i.qg) #18
  %.0.copyload.i.i.i.i.i.i.i.i.i.i226.us.us = load i64, ptr %.sroa.0355.0531.us.us, align 8
  %i.qj = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i226.us.us, -8 ; 2 uses
  %i.qk = inttoptr i64 %i.qj to ptr
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  store ptr %.sroa.0355.0531.us.us, ptr %i.ql, align 8, !tbaa !405
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i227.us.us = load i64, ptr %i.qg, align 8
  %i.qm = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i227.us.us, 7
  %i.qn = or disjoint i64 %i.qm, %i.qj
  store i64 %i.qn, ptr %i.qg, align 8
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  store ptr %i.qg, ptr %i.qo, align 8, !tbaa !405
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i228.us.us = load i64, ptr %.sroa.0355.0531.us.us, align 8
  %i.qp = ptrtoint ptr %i.qg to i64
  %i.qq = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i228.us.us, 7
  %i.qr = or disjoint i64 %i.qq, %i.qp
  store i64 %i.qr, ptr %.sroa.0355.0531.us.us, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  store ptr null, ptr %i.go, align 8, !tbaa !465, !alias.scope !467
  store i32 %i.qb, ptr %i.gp, align 4, !tbaa !171, !alias.scope !467
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gq, i8 0, i64 16, i1 false), !alias.scope !467
  store i32 16777216, ptr %14, align 8, !alias.scope !467
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qg, ptr noundef nonnull align 8 dereferenceable(1065) %i.qf, ptr noundef nonnull align 8 dereferenceable(32) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit65.us.us

_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit65.us.us: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit234.us.us, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i61.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #18
  store ptr null, ptr %i.gr, align 8, !tbaa !465, !alias.scope !468
  %77 = select i1 %.not140.i.us.us, i32 0, i32 67108864 ; 2 uses
  store i32 %i.on, ptr %i.gs, align 4, !tbaa !171, !alias.scope !468
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, i8 0, i64 16, i1 false), !alias.scope !468
  store i32 %77, ptr %67, align 8, !alias.scope !468
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qg, ptr noundef nonnull align 8 dereferenceable(1065) %i.qf, ptr noundef nonnull align 8 dereferenceable(32) %67) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #18
  store i32 1, ptr %66, align 8, !alias.scope !469
  store ptr null, ptr %i.gu, align 8, !tbaa !465, !alias.scope !469
  store i64 %.pre153.i.us.us, ptr %i.gv, align 8, !tbaa !171, !alias.scope !469
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qg, ptr noundef nonnull align 8 dereferenceable(1065) %i.qf, ptr noundef nonnull align 8 dereferenceable(32) %66) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #18
  br label %bb.as

bb.as:                                            ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit65.us.us, %_ZNK12_GLOBAL__N_123AArch64SIMDInstrOptImpl8reuseDUPERN4llvm12MachineInstrEjjjPj.exit97.i.us.us
  %.pre-phi150.i.us.us = phi i32 [ %.pre149.i.us.us, %_ZNK12_GLOBAL__N_123AArch64SIMDInstrOptImpl8reuseDUPERN4llvm12MachineInstrEjjjPj.exit97.i.us.us ], [ %77, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit65.us.us ]
  %.1134.i.us.us = phi i32 [ %i.qa, %_ZNK12_GLOBAL__N_123AArch64SIMDInstrOptImpl8reuseDUPERN4llvm12MachineInstrEjjjPj.exit97.i.us.us ], [ %i.qb, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit65.us.us ]
  %.sroa.02.0.copyload.i.us.us = load ptr, ptr %i.nt, align 8, !tbaa !462
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0355.0531.us.us, i64 44
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !461
  %i.qu = and i32 %i.qt, 4
  %.not.i54.us.us = icmp eq i32 %i.qu, 0
  %i.qv = load ptr, ptr %i.nv, align 8, !tbaa !459 ; 5 uses
  %i.qw = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.qv, ptr noundef nonnull align 8 dereferenceable(32) %i.nm, ptr %.sroa.02.0.copyload.i.us.us, i1 noundef zeroext false) #18 ; 11 uses
  br i1 %.not.i54.us.us, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.us.us, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i.us.us

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i.us.us: ; preds = %bb.as
  %i.qx = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %i.nu, ptr nonnull align 8 dereferenceable(80) %.sroa.0355.0531.us.us, ptr noundef %i.qw) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  store ptr null, ptr %i.gw, align 8, !tbaa !465, !alias.scope !470
  store i32 %i.oc, ptr %i.gx, align 4, !tbaa !171, !alias.scope !470
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i8 0, i64 16, i1 false), !alias.scope !470
  store i32 16777216, ptr %29, align 8, !alias.scope !470
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qw, ptr noundef nonnull align 8 dereferenceable(1065) %i.qv, ptr noundef nonnull align 8 dereferenceable(32) %29) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.us.us

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.us.us: ; preds = %bb.as
  %i.qy = getelementptr inbounds nuw i8, ptr %i.nu, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.qy, ptr noundef %i.qw) #18
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.us.us = load i64, ptr %.sroa.0355.0531.us.us, align 8
  %i.qz = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.us.us, -8 ; 2 uses
  %i.ra = inttoptr i64 %i.qz to ptr
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  store ptr %.sroa.0355.0531.us.us, ptr %i.rb, align 8, !tbaa !405
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.us.us = load i64, ptr %i.qw, align 8
  %i.rc = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.us.us, 7
  %i.rd = or disjoint i64 %i.rc, %i.qz
  store i64 %i.rd, ptr %i.qw, align 8
  %i.re = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  store ptr %i.qw, ptr %i.re, align 8, !tbaa !405
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.us.us = load i64, ptr %.sroa.0355.0531.us.us, align 8
  %i.rf = ptrtoint ptr %i.qw to i64
  %i.rg = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.us.us, 7
  %i.rh = or disjoint i64 %i.rg, %i.rf
  store i64 %i.rh, ptr %.sroa.0355.0531.us.us, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  store ptr null, ptr %i.gz, align 8, !tbaa !465, !alias.scope !471
  store i32 %i.oc, ptr %i.ha, align 4, !tbaa !171, !alias.scope !471
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hb, i8 0, i64 16, i1 false), !alias.scope !471
  store i32 16777216, ptr %15, align 8, !alias.scope !471
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qw, ptr noundef nonnull align 8 dereferenceable(1065) %i.qv, ptr noundef nonnull align 8 dereferenceable(32) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.us.us

_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.us.us: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.us.us, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #18
  store ptr null, ptr %i.hc, align 8, !tbaa !465, !alias.scope !472
  %78 = select i1 %.not.i40.us.us, i32 0, i32 67108864
  store i32 %i.of, ptr %i.hd, align 4, !tbaa !171, !alias.scope !472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.he, i8 0, i64 16, i1 false), !alias.scope !472
  store i32 %78, ptr %65, align 8, !alias.scope !472
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qw, ptr noundef nonnull align 8 dereferenceable(1065) %i.qv, ptr noundef nonnull align 8 dereferenceable(32) %65) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #18
  store ptr null, ptr %i.hf, align 8, !tbaa !465, !alias.scope !473
  store i32 %.1134.i.us.us, ptr %i.hg, align 4, !tbaa !171, !alias.scope !473
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i8 0, i64 16, i1 false), !alias.scope !473
  store i32 %.pre-phi150.i.us.us, ptr %64, align 8, !alias.scope !473
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qw, ptr noundef nonnull align 8 dereferenceable(1065) %i.qv, ptr noundef nonnull align 8 dereferenceable(32) %64) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #18
  br label %bb.ay

bb.at:                                            ; preds = %bb.an
  %i.ri = getelementptr inbounds nuw i8, ptr %i.oa, i64 96
  %i.rj = getelementptr inbounds nuw i8, ptr %i.oa, i64 100
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !171 ; 2 uses
  %i.rl = load i32, ptr %i.ri, align 8            ; 2 uses
  %i.rm = lshr i32 %i.rl, 26
  %i.rn = lshr i32 %i.rl, 24
  %.lobit.i75.i.us.us = and i32 %i.rn, 1
  %i.ro = xor i32 %.lobit.i75.i.us.us, 1
  %i.rp = and i32 %i.ro, %i.rm
  %.not141.i.us.us = icmp eq i32 %i.rp, 0         ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.oa, i64 144
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !171
  %i.rs = load i32, ptr %i.nl, align 8, !tbaa !191
  %i.rt = getelementptr inbounds nuw i8, ptr %i.nu, i64 56
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !405 ; 2 uses
  %.not9.not.i.i.us.us = icmp eq ptr %.sroa.0355.0531.us.us, %i.ru
  %.pre151.i.us.us = and i64 %i.rr, 4294967295    ; 2 uses
  br i1 %.not9.not.i.i.us.us, label %.loopexit.i.us.us, label %.lr.ph.i.i.us.us

.lr.ph.i.i.us.us:                                 ; preds = %bb.at, %.critedge.i.i.us.us
  %.sroa.03.010.i.i.us.us = phi ptr [ %.sroa.0.1.i.i.i.i.i.i.us.us, %.critedge.i.i.us.us ], [ %.sroa.0355.0531.us.us, %bb.at ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.us.us = load i64, ptr %.sroa.03.010.i.i.us.us, align 8
  %i.rv = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.us.us, -8
  %i.rw = inttoptr i64 %i.rv to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rw) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i.i.i.us.us = load i64, ptr %i.rw, align 8
  %i.rx = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i.i.i.us.us, 4
  %.not.i5.i.i.i.i.i.us.us = icmp eq i64 %i.rx, 0
  br i1 %.not.i5.i.i.i.i.i.us.us, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.us.us, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEi.exit.i.i.us.us

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.us.us: ; preds = %.lr.ph.i.i.us.us
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 44
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !461
  %i.sa = and i32 %i.rz, 4
  %.not45.i.i.i.i.i.i.us.us = icmp eq i32 %i.sa, 0
  br i1 %.not45.i.i.i.i.i.i.us.us, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEi.exit.i.i.us.us, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.us.us

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.us.us: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.us.us, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.us.us
  %.sroa.0.06.i.i.i.i.i.i.us.us = phi ptr [ %i.sc, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.us.us ], [ %i.rw, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.us.us ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i.us.us = load i64, ptr %.sroa.0.06.i.i.i.i.i.i.us.us, align 8
  %i.sb = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i.us.us, -8
  %i.sc = inttoptr i64 %i.sb to ptr               ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 44
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !461
  %i.sf = and i32 %i.se, 4
  %.not4.i.i.i.i.i.i.us.us = icmp eq i32 %i.sf, 0
  br i1 %.not4.i.i.i.i.i.i.us.us, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEi.exit.i.i.us.us, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.us.us, !llvm.loop !242

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEi.exit.i.i.us.us: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.us.us, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.us.us, %.lr.ph.i.i.us.us
  %.sroa.0.1.i.i.i.i.i.i.us.us = phi ptr [ %i.rw, %.lr.ph.i.i.us.us ], [ %i.rw, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.us.us ], [ %i.sc, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.us.us ] ; 5 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i.i.us.us, i64 52
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !417
  %i.si = icmp eq i32 %i.sh, %i.rs
  br i1 %i.si, label %bb.au, label %.critedge.i.i.us.us

bb.au:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEi.exit.i.i.us.us
  %i.sj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i.i.us.us, i64 40
  %i.sk = load i24, ptr %i.sj, align 8
  %i.sl = icmp eq i24 %i.sk, 3
  br i1 %i.sl, label %bb.av, label %.critedge.i.i.us.us

bb.av:                                            ; preds = %bb.au
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i.i.us.us, i64 32
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !460 ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 36
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !171
  %i.sq = icmp eq i32 %i.sp, %i.rk
  br i1 %i.sq, label %bb.aw, label %.critedge.i.i.us.us

bb.aw:                                            ; preds = %bb.av
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sn, i64 80
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !171
  %i.st = icmp eq i64 %i.ss, %.pre151.i.us.us
  br i1 %i.st, label %_ZNK12_GLOBAL__N_123AArch64SIMDInstrOptImpl8reuseDUPERN4llvm12MachineInstrEjjjPj.exit.i.us.us, label %.critedge.i.i.us.us

.critedge.i.i.us.us:                              ; preds = %bb.aw, %bb.av, %bb.au, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEi.exit.i.i.us.us
  %.not.not.i.i.us.us = icmp eq ptr %.sroa.0.1.i.i.i.i.i.i.us.us, %i.ru
  br i1 %.not.not.i.i.us.us, label %.loopexit.i.us.us, label %.lr.ph.i.i.us.us, !llvm.loop !243

_ZNK12_GLOBAL__N_123AArch64SIMDInstrOptImpl8reuseDUPERN4llvm12MachineInstrEjjjPj.exit.i.us.us: ; preds = %bb.aw
  %i.su = getelementptr inbounds nuw i8, ptr %i.sn, i64 4
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !171
  %.pre.i.us.us = select i1 %.not141.i.us.us, i32 0, i32 67108864
  br label %bb.ax

.loopexit.i.us.us:                                ; preds = %.critedge.i.i.us.us, %bb.at
  %i.sw = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.ny, ptr noundef nonnull %.071.i.us.us, ptr nonnull @.str.3, i64 0) #18 ; 3 uses
  %.sroa.011.0.copyload.i.us.us = load ptr, ptr %i.nt, align 8, !tbaa !462
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.0355.0531.us.us, i64 44
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !461
  %i.sz = and i32 %i.sy, 4
  %.not.i76.us.us = icmp eq i32 %i.sz, 0
  %i.ta = load ptr, ptr %i.nv, align 8, !tbaa !459 ; 5 uses
  %i.tb = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.ta, ptr noundef nonnull align 8 dereferenceable(32) %i.nl, ptr %.sroa.011.0.copyload.i.us.us, i1 noundef zeroext false) #18 ; 11 uses
  br i1 %.not.i76.us.us, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit254.us.us, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i81.us.us

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i81.us.us: ; preds = %.loopexit.i.us.us
  %i.tc = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %i.nu, ptr nonnull align 8 dereferenceable(80) %.sroa.0355.0531.us.us, ptr noundef %i.tb) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18
  store ptr null, ptr %i.hi, align 8, !tbaa !465, !alias.scope !474
  store i32 %i.sw, ptr %i.hj, align 4, !tbaa !171, !alias.scope !474
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, i8 0, i64 16, i1 false), !alias.scope !474
  store i32 16777216, ptr %26, align 8, !alias.scope !474
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.tb, ptr noundef nonnull align 8 dereferenceable(1065) %i.ta, ptr noundef nonnull align 8 dereferenceable(32) %26) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit85.us.us

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit254.us.us: ; preds = %.loopexit.i.us.us
  %i.td = getelementptr inbounds nuw i8, ptr %i.nu, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.td, ptr noundef %i.tb) #18
  %.0.copyload.i.i.i.i.i.i.i.i.i.i246.us.us = load i64, ptr %.sroa.0355.0531.us.us, align 8
  %i.te = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i246.us.us, -8 ; 2 uses
  %i.tf = inttoptr i64 %i.te to ptr
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  store ptr %.sroa.0355.0531.us.us, ptr %i.tg, align 8, !tbaa !405
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i247.us.us = load i64, ptr %i.tb, align 8
  %i.th = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i247.us.us, 7
  %i.ti = or disjoint i64 %i.th, %i.te
  store i64 %i.ti, ptr %i.tb, align 8
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  store ptr %i.tb, ptr %i.tj, align 8, !tbaa !405
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i248.us.us = load i64, ptr %.sroa.0355.0531.us.us, align 8
  %i.tk = ptrtoint ptr %i.tb to i64
  %i.tl = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i248.us.us, 7
  %i.tm = or disjoint i64 %i.tl, %i.tk
  store i64 %i.tm, ptr %.sroa.0355.0531.us.us, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  store ptr null, ptr %i.hl, align 8, !tbaa !465, !alias.scope !475
  store i32 %i.sw, ptr %i.hm, align 4, !tbaa !171, !alias.scope !475
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hn, i8 0, i64 16, i1 false), !alias.scope !475
  store i32 16777216, ptr %12, align 8, !alias.scope !475
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.tb, ptr noundef nonnull align 8 dereferenceable(1065) %i.ta, ptr noundef nonnull align 8 dereferenceable(32) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit85.us.us

_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit85.us.us: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit254.us.us, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i81.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #18
  store ptr null, ptr %i.ho, align 8, !tbaa !465, !alias.scope !476
  %79 = select i1 %.not141.i.us.us, i32 0, i32 67108864 ; 2 uses
  store i32 %i.rk, ptr %i.hp, align 4, !tbaa !171, !alias.scope !476
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hq, i8 0, i64 16, i1 false), !alias.scope !476
  store i32 %79, ptr %72, align 8, !alias.scope !476
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.tb, ptr noundef nonnull align 8 dereferenceable(1065) %i.ta, ptr noundef nonnull align 8 dereferenceable(32) %72) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #18
  store i32 1, ptr %71, align 8, !alias.scope !477
  store ptr null, ptr %i.hr, align 8, !tbaa !465, !alias.scope !477
  store i64 %.pre151.i.us.us, ptr %i.hs, align 8, !tbaa !171, !alias.scope !477
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.tb, ptr noundef nonnull align 8 dereferenceable(1065) %i.ta, ptr noundef nonnull align 8 dereferenceable(32) %71) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #18
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit85.us.us, %_ZNK12_GLOBAL__N_123AArch64SIMDInstrOptImpl8reuseDUPERN4llvm12MachineInstrEjjjPj.exit.i.us.us
  %.pre-phi.i.us.us = phi i32 [ %.pre.i.us.us, %_ZNK12_GLOBAL__N_123AArch64SIMDInstrOptImpl8reuseDUPERN4llvm12MachineInstrEjjjPj.exit.i.us.us ], [ %79, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit85.us.us ]
  %.0133.i.us.us = phi i32 [ %i.sv, %_ZNK12_GLOBAL__N_123AArch64SIMDInstrOptImpl8reuseDUPERN4llvm12MachineInstrEjjjPj.exit.i.us.us ], [ %i.sw, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit85.us.us ]
  %.sroa.09.0.copyload.i.us.us = load ptr, ptr %i.nt, align 8, !tbaa !462
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.0355.0531.us.us, i64 44
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !461
  %i.tp = and i32 %i.to, 4
  %.not.i66.us.us = icmp eq i32 %i.tp, 0
  %i.tq = load ptr, ptr %i.nv, align 8, !tbaa !459 ; 6 uses
  %i.tr = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.tq, ptr noundef nonnull align 8 dereferenceable(32) %i.nm, ptr %.sroa.09.0.copyload.i.us.us, i1 noundef zeroext false) #18 ; 12 uses
  br i1 %.not.i66.us.us, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit244.us.us, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i71.us.us

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i71.us.us: ; preds = %bb.ax
  %i.ts = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %i.nu, ptr nonnull align 8 dereferenceable(80) %.sroa.0355.0531.us.us, ptr noundef %i.tr) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  store ptr null, ptr %i.ht, align 8, !tbaa !465, !alias.scope !478
  store i32 %i.oc, ptr %i.hu, align 4, !tbaa !171, !alias.scope !478
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i8 0, i64 16, i1 false), !alias.scope !478
  store i32 16777216, ptr %27, align 8, !alias.scope !478
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.tr, ptr noundef nonnull align 8 dereferenceable(1065) %i.tq, ptr noundef nonnull align 8 dereferenceable(32) %27) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit75.us.us

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit244.us.us: ; preds = %bb.ax
  %i.tt = getelementptr inbounds nuw i8, ptr %i.nu, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.tt, ptr noundef %i.tr) #18
  %.0.copyload.i.i.i.i.i.i.i.i.i.i236.us.us = load i64, ptr %.sroa.0355.0531.us.us, align 8
  %i.tu = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i236.us.us, -8 ; 2 uses
  %i.tv = inttoptr i64 %i.tu to ptr
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  store ptr %.sroa.0355.0531.us.us, ptr %i.tw, align 8, !tbaa !405
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i237.us.us = load i64, ptr %i.tr, align 8
  %i.tx = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i237.us.us, 7
  %i.ty = or disjoint i64 %i.tx, %i.tu
  store i64 %i.ty, ptr %i.tr, align 8
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  store ptr %i.tr, ptr %i.tz, align 8, !tbaa !405
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i238.us.us = load i64, ptr %.sroa.0355.0531.us.us, align 8
  %i.ua = ptrtoint ptr %i.tr to i64
  %i.ub = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i238.us.us, 7
  %i.uc = or disjoint i64 %i.ub, %i.ua
  store i64 %i.uc, ptr %.sroa.0355.0531.us.us, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  store ptr null, ptr %i.hw, align 8, !tbaa !465, !alias.scope !479
  store i32 %i.oc, ptr %i.hx, align 4, !tbaa !171, !alias.scope !479
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hy, i8 0, i64 16, i1 false), !alias.scope !479
  store i32 16777216, ptr %13, align 8, !alias.scope !479
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.tr, ptr noundef nonnull align 8 dereferenceable(1065) %i.tq, ptr noundef nonnull align 8 dereferenceable(32) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit75.us.us

_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit75.us.us: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit244.us.us, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i71.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #18
  store ptr null, ptr %i.hz, align 8, !tbaa !465, !alias.scope !480
  %80 = select i1 %.not.i40.us.us, i32 0, i32 67108864
  store i32 %i.of, ptr %i.ia, align 4, !tbaa !171, !alias.scope !480
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ib, i8 0, i64 16, i1 false), !alias.scope !480
  store i32 %80, ptr %70, align 8, !alias.scope !480
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.tr, ptr noundef nonnull align 8 dereferenceable(1065) %i.tq, ptr noundef nonnull align 8 dereferenceable(32) %70) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #18
  store ptr null, ptr %i.ic, align 8, !tbaa !465, !alias.scope !481
  %81 = select i1 %.not140.i.us.us, i32 0, i32 67108864
  store i32 %i.on, ptr %i.id, align 4, !tbaa !171, !alias.scope !481
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, i8 0, i64 16, i1 false), !alias.scope !481
  store i32 %81, ptr %69, align 8, !alias.scope !481
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.tr, ptr noundef nonnull align 8 dereferenceable(1065) %i.tq, ptr noundef nonnull align 8 dereferenceable(32) %69) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #18
  store ptr null, ptr %i.if, align 8, !tbaa !465, !alias.scope !482
  store i32 %.0133.i.us.us, ptr %i.ig, align 4, !tbaa !171, !alias.scope !482
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ih, i8 0, i64 16, i1 false), !alias.scope !482
  store i32 %.pre-phi.i.us.us, ptr %68, align 8, !alias.scope !482
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.tr, ptr noundef nonnull align 8 dereferenceable(1065) %i.tq, ptr noundef nonnull align 8 dereferenceable(32) %68) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #18
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit75.us.us, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.us.us, %bb.an, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit.i.us.us
  %.1.i.us.us = phi i1 [ false, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit.i.us.us ], [ false, %bb.an ], [ true, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.us.us ], [ true, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit75.us.us ]
  %i.ud = load ptr, ptr %73, align 8, !tbaa !30   ; 2 uses
  %i.ue = icmp eq ptr %i.ud, %i.gh
  br i1 %i.ue, label %_ZN12_GLOBAL__N_123AArch64SIMDInstrOptImpl19optimizeVectElementERN4llvm12MachineInstrE.exit.us.us, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @free(ptr noundef %i.ud) #18
  br label %_ZN12_GLOBAL__N_123AArch64SIMDInstrOptImpl19optimizeVectElementERN4llvm12MachineInstrE.exit.us.us

_ZN12_GLOBAL__N_123AArch64SIMDInstrOptImpl19optimizeVectElementERN4llvm12MachineInstrE.exit.us.us: ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #18
  br i1 %.1.i.us.us, label %bb.ba, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.us.us

bb.ba:                                            ; preds = %_ZN12_GLOBAL__N_123AArch64SIMDInstrOptImpl19optimizeVectElementERN4llvm12MachineInstrE.exit.us.us
  %i.uf = load i32, ptr %i.w, align 8, !tbaa !31  ; 2 uses
  %i.ug = load i32, ptr %i.x, align 4, !tbaa !32
  %.not.i53.us.us = icmp ult i32 %i.uf, %i.ug
  br i1 %.not.i53.us.us, label %bb.bc, label %bb.bb, !prof !399

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %76, ptr noundef nonnull %.sroa.0355.0531.us.us)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.us.us

bb.bc:                                            ; preds = %bb.ba
  %i.uh = zext i32 %i.uf to i64
  %i.ui = load ptr, ptr %76, align 8, !tbaa !30
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %i.uh
  store ptr %.sroa.0355.0531.us.us, ptr %i.uj, align 1
  %i.uk = load i32, ptr %i.w, align 8, !tbaa !31
  %i.ul = add i32 %i.uk, 1
  store i32 %i.ul, ptr %i.w, align 8, !tbaa !31
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.us.us

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.us.us: ; preds = %bb.bc, %bb.bb, %_ZN12_GLOBAL__N_123AArch64SIMDInstrOptImpl19optimizeVectElementERN4llvm12MachineInstrE.exit.us.us, %.lr.ph.us
  %.3.us.us = phi i1 [ %.2530.us.us, %.lr.ph.us ], [ %.2530.us.us, %_ZN12_GLOBAL__N_123AArch64SIMDInstrOptImpl19optimizeVectElementERN4llvm12MachineInstrE.exit.us.us ], [ true, %bb.bc ], [ true, %bb.bb ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0355.0531.us.us) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.us.us = load i64, ptr %.sroa.0355.0531.us.us, align 8
  %i.um = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.us.us, 4
  %.not.i.i.i.us.us = icmp eq i64 %i.um, 0
  br i1 %.not.i.i.i.us.us, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.us.us, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.us.us

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.us.us: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.us.us
  %i.un = getelementptr inbounds nuw i8, ptr %.sroa.0355.0531.us.us, i64 44
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !461
  %i.up = and i32 %i.uo, 8
  %.not34.i.i.i.us.us = icmp eq i32 %i.up, 0
  br i1 %.not34.i.i.i.us.us, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.us.us, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.us.us

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.us.us: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.us.us, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.us.us
  %.sroa.0.05.i.i.i.us.us = phi ptr [ %i.ur, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.us.us ], [ %.sroa.0355.0531.us.us, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.us.us ]
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.us.us, i64 8
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !405 ; 3 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 44
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !461
  %i.uu = and i32 %i.ut, 8
  %.not3.i.i.i.us.us = icmp eq i32 %i.uu, 0
  br i1 %.not3.i.i.i.us.us, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.us.us, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.us.us, !llvm.loop !278

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.us.us: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.us.us, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.us.us, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.us.us
  %.sroa.0.1.i.i.i.us.us = phi ptr [ %.sroa.0355.0531.us.us, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.us.us ], [ %.sroa.0355.0531.us.us, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.us.us ], [ %i.ur, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.us.us ]
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.us.us, i64 8
  %.sroa.0355.0.us.us = load ptr, ptr %i.uv, align 8, !tbaa !405 ; 2 uses
  %.not478.us.us = icmp eq ptr %.sroa.0355.0.us.us, %i.nf
  br i1 %.not478.us.us, label %._crit_edge.split.us.us, label %.lr.ph.us

._crit_edge.split.us.us:                          ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.us.us, %.lr.ph542.split.us
  %.2.lcssa.us = phi i1 [ %.1539.us, %.lr.ph542.split.us ], [ %.3.us.us, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.us.us ] ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.0358.0540.us, i64 8
  %.sroa.0358.0.us = load ptr, ptr %i.uw, align 8, !tbaa !400 ; 2 uses
  %.not477.us = icmp eq ptr %.sroa.0358.0.us, %i.z
  br i1 %.not477.us, label %._crit_edge543, label %.lr.ph542.split.us

._crit_edge543:                                   ; preds = %._crit_edge.split, %._crit_edge.split.us.us
  %.1.lcssa.ph = phi i1 [ %.2.lcssa.us, %._crit_edge.split.us.us ], [ %.2.lcssa, %._crit_edge.split ] ; 2 uses
  %.pr = load i32, ptr %i.w, align 8, !tbaa !31   ; 2 uses
  %i.ux = load ptr, ptr %76, align 8, !tbaa !30   ; 3 uses
  %i.uy = zext i32 %.pr to i64
  %.idx = shl nuw nsw i64 %i.uy, 3
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ux, i64 %.idx
  %.not36546 = icmp eq i32 %.pr, 0
  br i1 %.not36546, label %._crit_edge, label %.lr.ph548

.lr.ph542.split:                                  ; preds = %.lr.ph542, %._crit_edge.split
  %.sroa.0358.0540 = phi ptr [ %.sroa.0358.0, %._crit_edge.split ], [ %.sroa.0358.0537, %.lr.ph542 ] ; 3 uses
  %.1539 = phi i1 [ %.2.lcssa, %._crit_edge.split ], [ %.035549, %.lr.ph542 ] ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.0358.0540, i64 56
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.0358.0540, i64 48 ; 2 uses
  %.sroa.0355.0528 = load ptr, ptr %i.va, align 8, !tbaa !405 ; 2 uses
  %.not478529 = icmp eq ptr %.sroa.0355.0528, %i.vb
  br i1 %.not478529, label %._crit_edge.split, label %.lr.ph

._crit_edge.split:                                ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %.lr.ph542.split
  %.2.lcssa = phi i1 [ %.1539, %.lr.ph542.split ], [ %.3, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ] ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.0358.0540, i64 8
  %.sroa.0358.0 = load ptr, ptr %i.vc, align 8, !tbaa !400 ; 2 uses
  %.not477.a = icmp eq ptr %.sroa.0358.0, %i.z
  br i1 %.not477.a, label %._crit_edge543, label %.lr.ph542.split

.lr.ph:                                           ; preds = %.lr.ph542.split, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %.sroa.0355.0531 = phi ptr [ %.sroa.0355.0, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.0355.0528, %.lr.ph542.split ] ; 79 uses
  %.2530 = phi i1 [ %.3, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.1539, %.lr.ph542.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.0355.0531, i64 72 ; 13 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.0355.0531, i64 24
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !418 ; 38 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #18
  store ptr %i.aa, ptr %62, align 8, !tbaa !30
  store i32 0, ptr %i.ab, align 8, !tbaa !31
  store i32 10, ptr %i.ac, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #18
  store ptr %i.ad, ptr %63, align 8, !tbaa !30
  store i32 0, ptr %i.ae, align 8, !tbaa !31
  store i32 10, ptr %i.af, align 4, !tbaa !32
  %i.vg = getelementptr inbounds nuw i8, ptr %.sroa.0355.0531, i64 52 ; 4 uses
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !417
  switch i32 %i.vh, label %.thread.thread.i [
    i32 7412, label %switch.lookup
    i32 7418, label %.fold.split.i
    i32 7414, label %.fold.split244.i
    i32 7422, label %.fold.split245.i
    i32 7416, label %.fold.split246.i
    i32 7410, label %.fold.split247.i
    i32 7420, label %.fold.split248.i
    i32 7472, label %.fold.split249.i
    i32 7478, label %.fold.split250.i
    i32 7474, label %.fold.split251.i
    i32 7482, label %.fold.split252.i
    i32 7476, label %.fold.split253.i
    i32 7470, label %.fold.split254.i
    i32 7480, label %.fold.split255.i
  ]

.fold.split.i:                                    ; preds = %.lr.ph
  br label %switch.lookup

.fold.split244.i:                                 ; preds = %.lr.ph
  br label %switch.lookup

.fold.split245.i:                                 ; preds = %.lr.ph
  br label %switch.lookup

.fold.split246.i:                                 ; preds = %.lr.ph
  br label %switch.lookup

.fold.split247.i:                                 ; preds = %.lr.ph
  br label %switch.lookup

.fold.split248.i:                                 ; preds = %.lr.ph
  br label %switch.lookup

.fold.split249.i:                                 ; preds = %.lr.ph
  br label %switch.lookup

.fold.split250.i:                                 ; preds = %.lr.ph
  br label %switch.lookup

.fold.split251.i:                                 ; preds = %.lr.ph
  br label %switch.lookup

.fold.split252.i:                                 ; preds = %.lr.ph
  br label %switch.lookup

.fold.split253.i:                                 ; preds = %.lr.ph
  br label %switch.lookup

.fold.split254.i:                                 ; preds = %.lr.ph
  br label %switch.lookup

.fold.split255.i:                                 ; preds = %.lr.ph
  br label %switch.lookup

switch.lookup:                                    ; preds = %.fold.split255.i, %.fold.split254.i, %.fold.split253.i, %.fold.split252.i, %.fold.split251.i, %.fold.split250.i, %.fold.split249.i, %.fold.split248.i, %.fold.split247.i, %.fold.split246.i, %.fold.split245.i, %.fold.split244.i, %.fold.split.i, %.lr.ph
  %.093.ptr234.lcssa.i = phi ptr [ @_ZN12_GLOBAL__N_13IRTE, %.lr.ph ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_13IRTE, i64 672), %.fold.split254.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_13IRTE, i64 56), %.fold.split.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_13IRTE, i64 112), %.fold.split244.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_13IRTE, i64 168), %.fold.split245.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_13IRTE, i64 224), %.fold.split246.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_13IRTE, i64 280), %.fold.split247.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_13IRTE, i64 336), %.fold.split248.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_13IRTE, i64 392), %.fold.split249.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_13IRTE, i64 448), %.fold.split250.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_13IRTE, i64 504), %.fold.split251.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_13IRTE, i64 560), %.fold.split252.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_13IRTE, i64 616), %.fold.split253.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_13IRTE, i64 728), %.fold.split255.i ] ; 3 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.0355.0531, i64 32
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !460 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !171
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vj, i64 36
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !171 ; 3 uses
  %i.vo = load ptr, ptr %i.g, align 8, !tbaa !386
  %i.vp = call noundef ptr @_ZNK4llvm19MachineRegisterInfo16getUniqueVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.vo, i32 %i.vl) #18 ; 2 uses
  %.val.i = load i32, ptr %i.vg, align 4, !tbaa !417 ; 2 uses
  %i.vq = sext i32 %.val.i to i64
  %i.vr = getelementptr i8, ptr @switch.table._ZN12_GLOBAL__N_123AArch64SIMDInstrOptImpl3runERN4llvm15MachineFunctionE, i64 %i.vq
  %switch.gep = getelementptr i8, ptr %i.vr, i64 -7410
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vp, i64 52
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !417
  %.not.i.i = icmp eq i32 %i.vt, 19
  br i1 %.not.i.i, label %.preheader.i.i, label %.thread.thread.i

.preheader.i.i:                                   ; preds = %switch.lookup
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vp, i64 32
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !460
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bf, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.bf ] ; 4 uses
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i, 6
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 %.idx.i.i ; 4 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 32
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vw, i64 36
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !171
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store i32 %i.vz, ptr %i.wa, align 4, !tbaa !16
  %i.wb = load i32, ptr %i.vx, align 8            ; 2 uses
  %i.wc = lshr i32 %i.wb, 26
  %i.wd = lshr i32 %i.wb, 24
  %.lobit.i.i.i = and i32 %i.wd, 1
  %i.we = xor i32 %.lobit.i.i.i, 1
  %i.wf = and i32 %i.we, %i.wc
  %.not1.i.i = icmp eq i32 %i.wf, 0
  %82 = select i1 %.not1.i.i, i16 0, i16 8
  %i.wg = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i
  store i16 %82, ptr %i.wg, align 2, !tbaa !484
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vw, i64 64
  %i.wi = load i32, ptr %i.wh, align 8
  %i.wj = and i32 %i.wi, 255
  %i.wk = icmp eq i32 %i.wj, 1
  br i1 %i.wk, label %bb.be, label %.thread.thread.i

bb.be:                                            ; preds = %bb.bd
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vw, i64 80
  %i.wm = load i64, ptr %i.wl, align 8, !tbaa !171
  switch i64 %i.wm, label %.thread.thread.i [
    i64 4, label %bb.bf
    i64 5, label %bb.bf
    i64 6, label %bb.bf
    i64 7, label %bb.bf
    i64 14, label %bb.bf
    i64 15, label %bb.bf
    i64 16, label %bb.bf
    i64 17, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be, %bb.be, %bb.be, %bb.be, %bb.be, %bb.be, %bb.be, %bb.be
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %switch.ext
  br i1 %exitcond.not.i.i, label %_ZNK12_GLOBAL__N_123AArch64SIMDInstrOptImpl17processSeqRegInstEPN4llvm12MachineInstrEPjPNS1_8RegStateEj.exit.preheader.i, label %bb.bd, !llvm.loop !279

_ZNK12_GLOBAL__N_123AArch64SIMDInstrOptImpl17processSeqRegInstEPN4llvm12MachineInstrEPjPNS1_8RegStateEj.exit.preheader.i: ; preds = %bb.bf
  %i.wn = getelementptr inbounds nuw i8, ptr %.093.ptr234.lcssa.i, i64 44
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !398 ; 2 uses
  %.not.i42 = icmp eq i32 %i.wo, 0
  br i1 %.not.i42, label %.thread.i, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %_ZNK12_GLOBAL__N_123AArch64SIMDInstrOptImpl17processSeqRegInstEPN4llvm12MachineInstrEPjPNS1_8RegStateEj.exit.preheader.i
  %i.wp = getelementptr inbounds nuw i8, ptr %.093.ptr234.lcssa.i, i64 4
  %i.wq = getelementptr inbounds nuw i8, ptr %.093.ptr234.lcssa.i, i64 48
  %wide.trip.count.i44 = zext i32 %i.wo to i64
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i, %.lr.ph.i43
  %indvars.iv.i45 = phi i64 [ 0, %.lr.ph.i43 ], [ %indvars.iv.next.i47, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i ] ; 2 uses
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv.i45
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !16 ; 2 uses
  %i.wt = load ptr, ptr %0, align 8, !tbaa !388
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !391
  %i.ww = zext i32 %i.ws to i64
  %i.wx = sub nsw i64 0, %i.ww
  %i.wy = getelementptr inbounds [32 x i8], ptr %i.wv, i64 %i.wx ; 2 uses
  %i.wz = load i32, ptr %i.ae, align 8, !tbaa !31 ; 2 uses
  %i.xa = load i32, ptr %i.af, align 4, !tbaa !32
  %.not.i98.i = icmp ult i32 %i.wz, %i.xa
  br i1 %.not.i98.i, label %bb.bi, label %bb.bh, !prof !399

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %63, ptr noundef nonnull %i.wy)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit.i46

bb.bi:                                            ; preds = %bb.bg
  %i.xb = zext i32 %i.wz to i64
  %i.xc = load ptr, ptr %63, align 8, !tbaa !30
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %i.xb
  store ptr %i.wy, ptr %i.xd, align 1
  %i.xe = load i32, ptr %i.ae, align 8, !tbaa !31
  %i.xf = add i32 %i.xe, 1
  store i32 %i.xf, ptr %i.ae, align 8, !tbaa !31
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit.i46

_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit.i46: ; preds = %bb.bi, %bb.bh
  switch i32 %i.ws, label %bb.bj [
    i32 7638, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i
    i32 7635, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i
  ]

bb.bj:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit.i46
  %i.xg = load ptr, ptr %i.g, align 8, !tbaa !386
  %i.xh = load ptr, ptr %i.wq, align 8, !tbaa !485
  %i.xi = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.xg, ptr noundef %i.xh, ptr nonnull @.str.3, i64 0) #18 ; 2 uses
  %i.xj = load i32, ptr %i.ab, align 8, !tbaa !31 ; 2 uses
  %i.xk = load i32, ptr %i.ac, align 4, !tbaa !32
  %.not.i99.i = icmp ult i32 %i.xj, %i.xk
  br i1 %.not.i99.i, label %bb.bl, label %bb.bk, !prof !399

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %62, i32 noundef %i.xi)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i

bb.bl:                                            ; preds = %bb.bj
  %i.xl = zext i32 %i.xj to i64
  %i.xm = load ptr, ptr %62, align 8, !tbaa !30
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %i.xl
  store i32 %i.xi, ptr %i.xn, align 1
  %i.xo = load i32, ptr %i.ab, align 8, !tbaa !31
  %i.xp = add i32 %i.xo, 1
  store i32 %i.xp, ptr %i.ab, align 8, !tbaa !31
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i: ; preds = %bb.bl, %bb.bk, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit.i46, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MCInstrDescELb1EE9push_backES3_.exit.i46
  %indvars.iv.next.i47 = add nuw nsw i64 %indvars.iv.i45, 1 ; 2 uses
  %exitcond.not.i48 = icmp eq i64 %indvars.iv.next.i47, %wide.trip.count.i44
  br i1 %exitcond.not.i48, label %.thread.loopexit.i, label %bb.bg, !llvm.loop !280

.thread.loopexit.i:                               ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i
  %.pre.i49 = load i32, ptr %i.vg, align 4, !tbaa !417
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %_ZNK12_GLOBAL__N_123AArch64SIMDInstrOptImpl17processSeqRegInstEPN4llvm12MachineInstrEPjPNS1_8RegStateEj.exit.preheader.i
  %i.xq = phi i32 [ %.pre.i49, %.thread.loopexit.i ], [ %.val.i, %_ZNK12_GLOBAL__N_123AArch64SIMDInstrOptImpl17processSeqRegInstEPN4llvm12MachineInstrEPjPNS1_8RegStateEj.exit.preheader.i ]
  %i.xr = load ptr, ptr %0, align 8, !tbaa !388
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !391
  %i.xu = zext i32 %i.xq to i64
  %i.xv = sub nsw i64 0, %i.xu
  %i.xw = getelementptr inbounds [32 x i8], ptr %i.xt, i64 %i.xv
  %i.xx = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123AArch64SIMDInstrOptImpl17shouldReplaceInstEPN4llvm15MachineFunctionEPKNS1_11MCInstrDescERNS1_15SmallVectorImplIS6_EE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.xw, ptr noundef nonnull align 8 dereferenceable(16) %63)
  br i1 %i.xx, label %bb.bm, label %.thread.thread.i

bb.bm:                                            ; preds = %.thread.i
  %i.xy = load i32, ptr %i.vg, align 4, !tbaa !417
  switch i32 %i.xy, label %.thread.thread.i [
    i32 7410, label %bb.bn
    i32 7420, label %bb.bn
    i32 7422, label %bb.bn
    i32 7416, label %bb.bn
    i32 7418, label %bb.bn
    i32 7414, label %bb.bn
    i32 7412, label %bb.bn
    i32 7470, label %bb.bq
    i32 7480, label %bb.bq
    i32 7482, label %bb.bq
    i32 7476, label %bb.bq
    i32 7478, label %bb.bq
    i32 7474, label %bb.bq
    i32 7472, label %bb.bq
  ]

bb.bn:                                            ; preds = %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm
  %.sroa.014.0.copyload.i = load ptr, ptr %i.vd, align 8, !tbaa !462
  %i.xz = load ptr, ptr %63, align 8, !tbaa !30
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !192
  %i.yb = load ptr, ptr %62, align 8, !tbaa !30
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !16 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %.sroa.0355.0531, i64 44 ; 3 uses
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !461
  %i.yf = and i32 %i.ye, 4
  %.not.i213 = icmp eq i32 %i.yf, 0
  %i.yg = getelementptr inbounds nuw i8, ptr %i.vf, i64 32
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !459 ; 5 uses
  %i.yi = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.yh, ptr noundef nonnull align 8 dereferenceable(32) %i.ya, ptr %.sroa.014.0.copyload.i, i1 noundef zeroext false) #18 ; 11 uses
  br i1 %.not.i213, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit354, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i218

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i218: ; preds = %bb.bn
  %i.yj = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %i.vf, ptr nonnull align 8 dereferenceable(80) %.sroa.0355.0531, ptr noundef %i.yi) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store ptr null, ptr %i.ez, align 8, !tbaa !465, !alias.scope !486
  store i32 %i.yc, ptr %i.fa, align 4, !tbaa !171, !alias.scope !486
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i8 0, i64 16, i1 false), !alias.scope !486
  store i32 16777216, ptr %16, align 8, !alias.scope !486
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.yi, ptr noundef nonnull align 8 dereferenceable(1065) %i.yh, ptr noundef nonnull align 8 dereferenceable(32) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit222

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit354: ; preds = %bb.bn
  %i.yk = getelementptr inbounds nuw i8, ptr %i.vf, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.yk, ptr noundef %i.yi) #18
  %.0.copyload.i.i.i.i.i.i.i.i.i.i346 = load i64, ptr %.sroa.0355.0531, align 8
  %i.yl = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i346, -8 ; 2 uses
  %i.ym = inttoptr i64 %i.yl to ptr
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  store ptr %.sroa.0355.0531, ptr %i.yn, align 8, !tbaa !405
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i347 = load i64, ptr %i.yi, align 8
  %i.yo = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i347, 7
  %i.yp = or disjoint i64 %i.yo, %i.yl
  store i64 %i.yp, ptr %i.yi, align 8
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  store ptr %i.yi, ptr %i.yq, align 8, !tbaa !405
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i348 = load i64, ptr %.sroa.0355.0531, align 8
  %i.yr = ptrtoint ptr %i.yi to i64
  %i.ys = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i348, 7
  %i.yt = or disjoint i64 %i.ys, %i.yr
  store i64 %i.yt, ptr %.sroa.0355.0531, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr null, ptr %i.fc, align 8, !tbaa !465, !alias.scope !487
  store i32 %i.yc, ptr %i.fd, align 4, !tbaa !171, !alias.scope !487
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i8 0, i64 16, i1 false), !alias.scope !487
  store i32 16777216, ptr %2, align 8, !alias.scope !487
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.yi, ptr noundef nonnull align 8 dereferenceable(1065) %i.yh, ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit222

_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit222: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i218, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit354
  %i.yu = load i32, ptr %i.a, align 16, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #18
  store ptr null, ptr %i.ff, align 8, !tbaa !465, !alias.scope !488
  store i32 %i.yu, ptr %i.fg, align 4, !tbaa !171, !alias.scope !488
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fh, i8 0, i64 16, i1 false), !alias.scope !488
  store i32 0, ptr %61, align 8, !alias.scope !488
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.yi, ptr noundef nonnull align 8 dereferenceable(1065) %i.yh, ptr noundef nonnull align 8 dereferenceable(32) %61) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #18
  %i.yv = load i32, ptr %i.bm, align 4, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #18
  store ptr null, ptr %i.fi, align 8, !tbaa !465, !alias.scope !489
end_hunk_0
