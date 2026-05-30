inline.NumInlined: 2195
inline.NumDeleted: 874
begin_hunk_0_@_ZN2v88internal5Scope21DeserializeScopeChainINS0_12LocalIsolateEEEPS1_PT_PNS0_4ZoneENS0_6TaggedINS0_9ScopeInfoEEEPNS0_16DeclarationScopeEPNS0_15AstValueFactoryENS1_19DeserializationModeEPNS0_9ParseInfoE:bb.a
bb.br:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  store i64 %.sroa.0147.0238, ptr %16, align 8
  %i.gs = call i64 @_ZNK2v88internal9ScopeInfo23ContextInlinedLocalNameEi(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  store i64 %.sroa.0147.0238, ptr %17, align 8
  %i.gt = call noundef zeroext i8 @_ZNK2v88internal9ScopeInfo29ContextLocalMaybeAssignedFlagEi(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  store i8 0, ptr %i.d, align 8
  br i1 %.not.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit, label %_ZN2v88internal31SharedStringAccessGuardIfNeeded8IsNeededEPNS0_12LocalIsolateE.exit.i

_ZN2v88internal31SharedStringAccessGuardIfNeeded8IsNeededEPNS0_12LocalIsolateE.exit.i: ; preds = %bb.br
  %i.gu = load i8, ptr %i.e, align 8, !range !7, !noundef !8
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit, label %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i

_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i: ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeeded8IsNeededEPNS0_12LocalIsolateE.exit.i
  %i.gw = load ptr, ptr %i.f, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 58696 ; 2 uses
  store ptr %i.gx, ptr %18, align 8
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gx) #21
  store i8 1, ptr %i.d, align 8
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit: ; preds = %bb.br, %_ZN2v88internal31SharedStringAccessGuardIfNeeded8IsNeededEPNS0_12LocalIsolateE.exit.i, %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i
  %i.gy = call noundef ptr @_ZN2v88internal15AstValueFactory9GetStringENS0_6TaggedINS0_6StringEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 8 dereferenceable(72) %4, i64 %i.gs, ptr noundef nonnull align 8 dereferenceable(16) %18) #21
  %i.gz = load i8, ptr %i.e, align 8, !range !7, !noundef !8
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit
  %i.hb = call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.h, i64 noundef %.sroa.0147.0238) #21
  br label %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit71

bb.bt:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit
  %i.hc = load ptr, ptr %i.g, align 8             ; 5 uses
  %i.hd = load ptr, ptr %i.hc, align 8            ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = icmp eq ptr %i.hd, %i.hf
  br i1 %i.hg, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.hh = call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.hc) #21
  %.pre = load ptr, ptr %i.hc, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.hi = phi ptr [ %.pre, %bb.bu ], [ %i.hd, %bb.bt ]
  %.0.i69 = phi ptr [ %i.hh, %bb.bu ], [ %i.hd, %bb.bt ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store ptr %i.hj, ptr %i.hc, align 8
  store i64 %.sroa.0147.0238, ptr %.0.i69, align 8
  br label %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit71

_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit71: ; preds = %bb.bs, %bb.bv
  %.012.i70 = phi ptr [ %i.hb, %bb.bs ], [ %.0.i69, %bb.bv ]
  %i.hk = load i64, ptr %i.i, align 8
  %i.hl = load i64, ptr %i.j, align 8             ; 2 uses
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = icmp ult i64 %i.hm, 128
  br i1 %i.hn, label %bb.bw, label %_ZN2v88internal4Zone3NewINS0_5ScopeEJRPS1_PKNS0_12AstRawStringERNS0_17MaybeAssignedFlagENS0_6HandleINS0_9ScopeInfoEEEEEEPT_DpOT0_.exit, !prof !5

bb.bw:                                            ; preds = %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit71
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef 128) #21
  %.pre.i.i91 = load i64, ptr %i.j, align 8
  br label %_ZN2v88internal4Zone3NewINS0_5ScopeEJRPS1_PKNS0_12AstRawStringERNS0_17MaybeAssignedFlagENS0_6HandleINS0_9ScopeInfoEEEEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_5ScopeEJRPS1_PKNS0_12AstRawStringERNS0_17MaybeAssignedFlagENS0_6HandleINS0_9ScopeInfoEEEEEEPT_DpOT0_.exit: ; preds = %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit71, %bb.bw
  %i.ho = phi i64 [ %.pre.i.i91, %bb.bw ], [ %i.hl, %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit71 ] ; 2 uses
  %i.hp = inttoptr i64 %i.ho to ptr               ; 2 uses
  %i.hq = add i64 %i.ho, 128
  store i64 %i.hq, ptr %i.j, align 8
  call void @_ZN2v88internal5ScopeC2EPNS0_4ZoneEPKNS0_12AstRawStringENS0_17MaybeAssignedFlagENS0_6HandleINS0_9ScopeInfoEEE(ptr noundef nonnull align 8 dereferenceable(124) %i.hp, ptr noundef nonnull %1, ptr noundef %i.gy, i8 noundef zeroext %i.gt, ptr %.012.i70)
  %i.hr = load i8, ptr %i.d, align 8, !range !7, !noundef !8
  %i.hs = trunc nuw i8 %i.hr to i1
  store i8 0, ptr %i.d, align 8
  br i1 %i.hs, label %bb.bx, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.bx:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_5ScopeEJRPS1_PKNS0_12AstRawStringERNS0_17MaybeAssignedFlagENS0_6HandleINS0_9ScopeInfoEEEEEEPT_DpOT0_.exit
  %i.ht = load ptr, ptr %18, align 8              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ht) #21
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZN2v88internal4Zone3NewINS0_5ScopeEJRPS1_PKNS0_12AstRawStringERNS0_17MaybeAssignedFlagENS0_6HandleINS0_9ScopeInfoEEEEEEPT_DpOT0_.exit, %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_16DeclarationScopeEJRPS1_NS0_9ScopeTypeERPNS0_15AstValueFactoryENS0_6HandleINS0_9ScopeInfoEEEEEEPT_DpOT0_.exit79, %_ZN2v88internal4Zone3NewINS0_5ScopeEJRPS1_NS0_9ScopeTypeERPNS0_15AstValueFactoryENS0_6HandleINS0_9ScopeInfoEEEEEEPT_DpOT0_.exit87, %_ZN2v88internal4Zone3NewINS0_16DeclarationScopeEJRPS1_NS0_9ScopeTypeERPNS0_15AstValueFactoryENS0_6HandleINS0_9ScopeInfoEEEEEEPT_DpOT0_.exit84, %_ZN2v88internal4Zone3NewINS0_11ModuleScopeEJNS0_6HandleINS0_9ScopeInfoEEERPNS0_15AstValueFactoryEEEEPT_DpOT0_.exit, %bb.bq, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, %_ZN2v88internal4Zone3NewINS0_10ClassScopeEJRPNS0_12LocalIsolateERPS1_RPNS0_15AstValueFactoryENS0_6HandleINS0_9ScopeInfoEEEEEEPT_DpOT0_.exit, %_ZN2v88internal4Zone3NewINS0_16DeclarationScopeEJRPS1_NS0_9ScopeTypeERPNS0_15AstValueFactoryENS0_6HandleINS0_9ScopeInfoEEEEEEPT_DpOT0_.exit76, %_ZN2v88internal5Scope18AsDeclarationScopeEv.exit, %_ZN2v88internal4Zone3NewINS0_16DeclarationScopeEJRPS1_NS0_9ScopeTypeERPNS0_15AstValueFactoryENS0_6HandleINS0_9ScopeInfoEEEEEEPT_DpOT0_.exit, %_ZN2v88internal4Zone3NewINS0_5ScopeEJRPS1_NS0_9ScopeTypeERPNS0_15AstValueFactoryENS0_6HandleINS0_9ScopeInfoEEEEEEPT_DpOT0_.exit
  %.041 = phi ptr [ %i.ag, %_ZN2v88internal4Zone3NewINS0_16DeclarationScopeEJRPS1_NS0_9ScopeTypeERPNS0_15AstValueFactoryENS0_6HandleINS0_9ScopeInfoEEEEEEPT_DpOT0_.exit ], [ %i.az, %_ZN2v88internal4Zone3NewINS0_5ScopeEJRPS1_NS0_9ScopeTypeERPNS0_15AstValueFactoryENS0_6HandleINS0_9ScopeInfoEEEEEEPT_DpOT0_.exit ], [ %i.cg, %_ZN2v88internal5Scope18AsDeclarationScopeEv.exit ], [ %i.cg, %_ZN2v88internal4Zone3NewINS0_16DeclarationScopeEJRPS1_NS0_9ScopeTypeERPNS0_15AstValueFactoryENS0_6HandleINS0_9ScopeInfoEEEEEEPT_DpOT0_.exit76 ], [ %i.dk, %_ZN2v88internal4Zone3NewINS0_16DeclarationScopeEJRPS1_NS0_9ScopeTypeERPNS0_15AstValueFactoryENS0_6HandleINS0_9ScopeInfoEEEEEEPT_DpOT0_.exit79 ], [ %i.ee, %_ZN2v88internal4Zone3NewINS0_10ClassScopeEJRPNS0_12LocalIsolateERPS1_RPNS0_15AstValueFactoryENS0_6HandleINS0_9ScopeInfoEEEEEEPT_DpOT0_.exit ], [ %i.ez, %_ZN2v88internal4Zone3NewINS0_16DeclarationScopeEJRPS1_NS0_9ScopeTypeERPNS0_15AstValueFactoryENS0_6HandleINS0_9ScopeInfoEEEEEEPT_DpOT0_.exit84 ], [ %i.fp, %_ZN2v88internal4Zone3NewINS0_5ScopeEJRPS1_NS0_9ScopeTypeERPNS0_15AstValueFactoryENS0_6HandleINS0_9ScopeInfoEEEEEEPT_DpOT0_.exit87 ], [ %i.gj, %bb.bq ], [ %i.gj, %_ZN2v88internal4Zone3NewINS0_11ModuleScopeEJNS0_6HandleINS0_9ScopeInfoEEERPNS0_15AstValueFactoryEEEEPT_DpOT0_.exit ], [ %i.hp, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit ] ; 9 uses
  br i1 %i.m, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.hu = getelementptr inbounds nuw i8, ptr %.041, i64 96
  store ptr null, ptr %i.hu, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.not44 = icmp eq ptr %.039241, null
  br i1 %.not44, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hv = getelementptr inbounds nuw i8, ptr %.041, i64 8 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %.039241, i64 16
  store ptr %i.hw, ptr %i.hx, align 8
  store ptr %.039241, ptr %i.hv, align 8
  store ptr %.041, ptr %.039241, align 8
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  store i64 %.sroa.0147.0238, ptr %19, align 8
  %i.hy = call noundef i32 @_ZNK2v88internal9ScopeInfo13StartPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #21
  %i.hz = getelementptr inbounds nuw i8, ptr %.041, i64 104
  store i32 %i.hy, ptr %i.hz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  store i64 %.sroa.0147.0238, ptr %20, align 8
  %i.ia = call noundef i32 @_ZNK2v88internal9ScopeInfo11EndPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #21
  %i.ib = getelementptr inbounds nuw i8, ptr %.041, i64 108
  store i32 %i.ia, ptr %i.ib, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  %i.ic = icmp eq ptr %.040240, null
  %spec.select = select i1 %i.ic, ptr %.041, ptr %.040240 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  store i64 %.sroa.0147.0238, ptr %21, align 8
  %i.id = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo17HasOuterScopeInfoEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  br i1 %i.id, label %bb.ce, label %.thread272

.thread272:                                       ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %._crit_edge

bb.ce:                                            ; preds = %bb.cd
  store i64 %.sroa.0147.0238, ptr %22, align 8
  %i.ie = call i64 @_ZNK2v88internal9ScopeInfo14OuterScopeInfoEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %._crit_edge, label %bb.d, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.ce, %.thread272, %.critedge
  %.040.lcssa = phi ptr [ null, %.critedge ], [ %spec.select, %.thread272 ], [ %spec.select, %bb.ce ] ; 2 uses
  %.039.lcssa = phi ptr [ null, %.critedge ], [ %.041, %.thread272 ], [ %.041, %bb.ce ] ; 2 uses
  %i.ig = icmp eq i32 %5, 0
  br i1 %i.ig, label %._crit_edge._crit_edge, label %_ZN2v88internal5Scope18SetScriptScopeInfoINS0_12LocalIsolateEEEvPT_PNS0_16DeclarationScopeE.exit

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.pre258 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.cf

bb.cf:                                            ; preds = %._crit_edge._crit_edge, %.thread
  %i.ih = phi ptr [ %.012.i49, %.thread ], [ %.pre258, %._crit_edge._crit_edge ]
  %.040235 = phi ptr [ %.040240, %.thread ], [ %.040.lcssa, %._crit_edge._crit_edge ] ; 2 uses
  %.039231 = phi ptr [ %.039241, %.thread ], [ %.039.lcssa, %._crit_edge._crit_edge ] ; 2 uses
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %bb.cg, label %_ZN2v88internal5Scope18SetScriptScopeInfoINS0_12LocalIsolateEEEvPT_PNS0_16DeclarationScopeE.exit

bb.cg:                                            ; preds = %bb.cf
  %i.ij = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 2032
  store ptr %i.im, ptr %i.ij, align 8
  br label %_ZN2v88internal5Scope18SetScriptScopeInfoINS0_12LocalIsolateEEEvPT_PNS0_16DeclarationScopeE.exit

_ZN2v88internal5Scope18SetScriptScopeInfoINS0_12LocalIsolateEEEvPT_PNS0_16DeclarationScopeE.exit: ; preds = %bb.cg, %bb.cf, %bb.s, %._crit_edge
  %.040234 = phi ptr [ %.040235, %bb.cg ], [ %.040235, %bb.cf ], [ %.040240, %bb.s ], [ %.040.lcssa, %._crit_edge ] ; 2 uses
  %.039230 = phi ptr [ %.039231, %bb.cg ], [ %.039231, %bb.cf ], [ %.039241, %bb.s ], [ %.039.lcssa, %._crit_edge ] ; 3 uses
  %i.in = icmp eq ptr %.040234, null
  br i1 %i.in, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZN2v88internal5Scope18SetScriptScopeInfoINS0_12LocalIsolateEEEvPT_PNS0_16DeclarationScopeE.exit
  %i.io = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %.039230, i64 16
  store ptr %i.ip, ptr %i.iq, align 8
  store ptr %.039230, ptr %i.io, align 8
  store ptr %3, ptr %.039230, align 8
  br label %bb.ci

bb.ci:                                            ; preds = %_ZN2v88internal5Scope18SetScriptScopeInfoINS0_12LocalIsolateEEEvPT_PNS0_16DeclarationScopeE.exit, %bb.ch
  %.0 = phi ptr [ %.040234, %bb.ch ], [ %3, %_ZN2v88internal5Scope18SetScriptScopeInfoINS0_12LocalIsolateEEEvPT_PNS0_16DeclarationScopeE.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN2v88internal5Scope6LookupILNS1_15ScopeLookupModeE0EEEPNS0_8VariableEPNS0_13VariableProxyEPS1_S8_S8_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 256
  %.not.i = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %.pn.i = select i1 %.not.i, ptr %0, ptr %i.f
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %i.g = load ptr, ptr %.in.i, align 8            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i32, ptr %i.h, align 8
  %i.j = lshr i32 %i.i, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %.043.in = phi i1 [ %4, %bb.a ], [ %5, %bb.n ]  ; 4 uses
  %.041 = phi ptr [ %1, %bb.a ], [ %i.ao, %bb.n ] ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.041, i64 40
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add i32 %i.l, -1                         ; 2 uses
  %i.n = and i32 %i.m, %i.j
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.041, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.o ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit.thread

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.v = zext i32 %i.m to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.w = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.d ] ; 2 uses
  %.013.i.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i.i ], [ %i.aa, %bb.d ]
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.g, %i.x
  br i1 %i.y, label %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = add nsw i64 %.013.i.i.i.i, 1
  %i.aa = and i64 %i.z, %i.v                      ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit.thread, !llvm.loop !9

_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load ptr, ptr %i.af, align 8            ; 5 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit
  br i1 %.043.in, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 8            ; 2 uses
  %i.aj = trunc i16 %i.ai to i8
  %i.ak = and i8 %i.aj, 15
  %i.al = add nsw i8 %i.ak, -6
  %i.am = icmp ult i8 %i.al, 3
  br i1 %i.am, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = or i16 %i.ai, 1024
  store i16 %i.an, ptr %i.ah, align 8
  br label %.thread

_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit.thread: ; preds = %bb.d, %bb.b, %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit
  %i.ao = load ptr, ptr %.041, align 8            ; 5 uses
  %i.ap = icmp eq ptr %i.ao, %2
  br i1 %i.ap, label %bb.p, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %.041, i64 121
  %i.ar = load i16, ptr %i.aq, align 1            ; 2 uses
  %i.as = and i16 %i.ar, 32
  %.not47 = icmp eq i16 %i.as, 0
  br i1 %.not47, label %bb.n, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  %i.at = and i16 %i.ar, 260
  %or.cond = icmp eq i16 %i.at, 260
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = tail call noundef ptr @_ZN2v88internal5Scope16LookupSloppyEvalEPNS0_13VariableProxyEPS1_S4_S4_b(ptr noundef nonnull %0, ptr noundef nonnull %.041, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %.043.in)
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.041, i64 120
  %i.aw = load i8, ptr %i.av, align 8
  %i.ax = icmp eq i8 %i.aw, 8
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = tail call noundef ptr @_ZN2v88internal5Scope10LookupWithEPNS0_13VariableProxyEPS1_S4_S4_b(ptr noundef nonnull %0, ptr noundef nonnull %.041, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %.043.in)
  br label %.thread

bb.m:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #22
  unreachable

bb.n:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %.041, i64 120
  %i.ba = load i8, ptr %i.az, align 8
  %i.bb = icmp eq i8 %i.ba, 4
  %5 = or i1 %.043.in, %i.bb
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.b, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = tail call noundef ptr @_ZN2v88internal5Scope6LookupILNS1_15ScopeLookupModeE1EEEPNS0_8VariableEPNS0_13VariableProxyEPS1_S8_S8_b(ptr noundef nonnull %0, ptr noundef nonnull %i.ao, ptr noundef %2, ptr noundef nonnull %i.ao, i1 noundef zeroext false)
  br label %.thread

bb.p:                                             ; preds = %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit.thread
  %i.bg = getelementptr inbounds nuw i8, ptr %.041, i64 120
  %i.bh = load i8, ptr %i.bg, align 8
  %spec.select.i = icmp ult i8 %i.bh, 2
  br i1 %spec.select.i, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %.041, i64 121
  %i.bj = load i16, ptr %i.bi, align 1
  %i.bk = and i16 %i.bj, 256
  %.not.i53 = icmp eq i16 %i.bk, 0
  br i1 %.not.i53, label %bb.r, label %_ZN2v88internal5Scope18AsDeclarationScopeEv.exit54, !prof !5

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #22
  unreachable

_ZN2v88internal5Scope18AsDeclarationScopeEv.exit54: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.bl = getelementptr inbounds nuw i8, ptr %.041, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.bl, align 8
  %i.bm = call noundef ptr @_ZN2v88internal11VariableMap7DeclareEPNS0_4ZoneEPNS0_5ScopeEPKNS0_12AstRawStringENS0_12VariableModeENS0_12VariableKindENS0_18InitializationFlagENS0_17MaybeAssignedFlagENS0_12IsStaticFlagEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef %.sroa.0.0.copyload.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(216) %.041, ptr noundef %i.g, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.l, %bb.j, %bb.e, %bb.o, %bb.p, %_ZN2v88internal5Scope18AsDeclarationScopeEv.exit54
  %.2 = phi ptr [ null, %bb.p ], [ %i.bm, %_ZN2v88internal5Scope18AsDeclarationScopeEv.exit54 ], [ %i.ag, %bb.f ], [ %i.ag, %bb.g ], [ %i.ay, %bb.l ], [ %i.au, %bb.j ], [ %i.ag, %bb.e ], [ %i.bf, %bb.o ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal5Scope16LookupSloppyEvalEPNS0_13VariableProxyEPS1_S4_S4_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %i.c = icmp eq ptr %3, null                     ; 3 uses
  %.pre = load ptr, ptr %1, align 8               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.pre, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN2v88internal5Scope6LookupILNS1_15ScopeLookupModeE0EEEPNS0_8VariableEPNS0_13VariableProxyEPS1_S8_S8_b(ptr noundef %0, ptr noundef nonnull %.pre, ptr noundef %2, ptr noundef null, i1 noundef zeroext %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %spec.select = select i1 %i.c, ptr %.pre, ptr %3
  %i.h = tail call noundef ptr @_ZN2v88internal5Scope6LookupILNS1_15ScopeLookupModeE1EEEPNS0_8VariableEPNS0_13VariableProxyEPS1_S8_S8_b(ptr noundef %0, ptr noundef nonnull %.pre, ptr noundef %2, ptr noundef %spec.select, i1 noundef zeroext false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.c ] ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef zeroext i1 @_ZNK2v88internal8Variable22IsGlobalObjectPropertyEv(ptr noundef nonnull align 8 dereferenceable(48) %i.i) #21
  br i1 %i.k, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.pre42 = load i16, ptr %.phi.trans.insert, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = select i1 %i.c, ptr %1, ptr %3           ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 256
  %.not.i = icmp eq i32 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %.pn.i = select i1 %.not.i, ptr %0, ptr %i.q
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %i.r = load ptr, ptr %.in.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.s, align 8
  %i.t = call noundef ptr @_ZN2v88internal11VariableMap7DeclareEPNS0_4ZoneEPNS0_5ScopeEPKNS0_12AstRawStringENS0_12VariableModeENS0_12VariableKindENS0_18InitializationFlagENS0_17MaybeAssignedFlagENS0_12IsStaticFlagEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef %.sroa.0.0.copyload.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(124) %i.l, ptr noundef %i.r, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %i.b) ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 2 uses
  %i.v = load i16, ptr %i.u, align 8
  %i.w = and i16 %i.v, -897
  %i.x = or disjoint i16 %i.w, 512                ; 2 uses
  store i16 %i.x, ptr %i.u, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i32 -1, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.z = phi i16 [ %i.x, %bb.f ], [ %.pre42, %._crit_edge ]
  %.034 = phi ptr [ %i.t, %bb.f ], [ %i.i, %._crit_edge ] ; 3 uses
  %i.aa = trunc i16 %i.z to i8
  %i.ab = and i8 %i.aa, 15
  %i.ac = add nsw i8 %i.ab, -6
  %i.ad = icmp ult i8 %i.ac, 3
  br i1 %i.ad, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.c, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  tail call void @_ZN2v88internal11VariableMap6RemoveEPNS0_8VariableE(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull %.034)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = phi ptr [ %3, %bb.i ], [ %1, %bb.h ]    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = and i32 %i.ah, 256
  %.not.i38 = icmp eq i32 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %.pn.i39 = select i1 %.not.i38, ptr %0, ptr %i.ak
  %.in.i40 = getelementptr inbounds nuw i8, ptr %.pn.i39, i64 8
  %i.al = load ptr, ptr %.in.i40, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i41 = load ptr, ptr %i.am, align 8
  %i.an = call noundef ptr @_ZN2v88internal11VariableMap7DeclareEPNS0_4ZoneEPNS0_5ScopeEPKNS0_12AstRawStringENS0_12VariableModeENS0_12VariableKindENS0_18InitializationFlagENS0_17MaybeAssignedFlagENS0_12IsStaticFlagEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef %.sroa.0.0.copyload.i.i.i.i41, ptr noundef nonnull align 8 dereferenceable(124) %i.af, ptr noundef %i.al, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %i.a) ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 8
  %i.aq = and i16 %i.ap, -897
  %i.ar = or disjoint i16 %i.aq, 512
  store i16 %i.ar, ptr %i.ao, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store i32 -1, ptr %i.as, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %.034, ptr %i.at, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.d, %bb.j
  %.0 = phi ptr [ %i.an, %bb.j ], [ null, %bb.d ], [ %.034, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal5Scope10LookupWithEPNS0_13VariableProxyEPS1_S4_S4_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = load ptr, ptr %1, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN2v88internal5Scope6LookupILNS1_15ScopeLookupModeE0EEEPNS0_8VariableEPNS0_13VariableProxyEPS1_S8_S8_b(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef null, i1 noundef zeroext %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN2v88internal5Scope6LookupILNS1_15ScopeLookupModeE1EEEPNS0_8VariableEPNS0_13VariableProxyEPS1_S8_S8_b(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ] ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.k = load i16, ptr %i.j, align 8              ; 3 uses
  %i.l = trunc i16 %i.k to i8
  %i.m = and i8 %i.l, 15
  %i.n = add nsw i8 %i.m, -9
  %i.o = icmp ult i8 %i.n, -3
  %i.p = and i16 %i.k, 896
  %i.q = icmp eq i16 %i.p, 0
  %or.cond = and i1 %i.q, %i.o
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = or i16 %i.k, 3072
  store i16 %i.r, ptr %i.j, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 128
  %.not31 = icmp eq i32 %i.u, 0
  br i1 %.not31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal8Variable16SetMaybeAssignedEv(ptr noundef nonnull align 8 dereferenceable(48) %i.h)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  tail call void @_ZN2v88internal11VariableMap6RemoveEPNS0_8VariableE(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull %i.h)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = phi ptr [ %3, %bb.i ], [ %1, %bb.h ]     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 4
  %i.z = and i32 %i.y, 256
  %.not.i = icmp eq i32 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %.pn.i = select i1 %.not.i, ptr %0, ptr %i.ab
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %i.ac = load ptr, ptr %.in.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ad, align 8
  %i.ae = call noundef ptr @_ZN2v88internal11VariableMap7DeclareEPNS0_4ZoneEPNS0_5ScopeEPKNS0_12AstRawStringENS0_12VariableModeENS0_12VariableKindENS0_18InitializationFlagENS0_17MaybeAssignedFlagENS0_12IsStaticFlagEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef %.sroa.0.0.copyload.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(124) %i.w, ptr noundef %i.ac, i8 noundef zeroext 6, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %i.a) ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 8
  %i.ah = and i16 %i.ag, -897
  %i.ai = or disjoint i16 %i.ah, 512
  store i16 %i.ai, ptr %i.af, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i32 -1, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.h, ptr %i.ak, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.j
  %.0 = phi ptr [ %i.ae, %bb.j ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal5Scope23is_debug_evaluate_scopeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(124) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.b = load i16, ptr %i.a, align 1
  %i.c = and i16 %i.b, 32
  %.not = icmp eq i16 %i.c, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load i64, ptr %i.e, align 8
  store i64 %i.f, ptr %1, align 8
  %i.g = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo20IsDebugEvaluateScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal5Scope8NonLocalEPKNS0_12AstRawStringENS0_12VariableModeE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.b, align 8
  %i.c = call noundef ptr @_ZN2v88internal11VariableMap7DeclareEPNS0_4ZoneEPNS0_5ScopeEPKNS0_12AstRawStringENS0_12VariableModeENS0_12VariableKindENS0_18InitializationFlagENS0_17MaybeAssignedFlagENS0_12IsStaticFlagEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %.sroa.0.0.copyload.i.i.i, ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %i.a) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8
  %i.f = and i16 %i.e, -897
  %i.g = or disjoint i16 %i.f, 512
  store i16 %i.g, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 -1, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN2v88internal5Scope6LookupILNS1_15ScopeLookupModeE1EEEPNS0_8VariableEPNS0_13VariableProxyEPS1_S8_S8_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 256
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.pn.i = select i1 %.not.i, ptr %0, ptr %i.g
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %i.h = load ptr, ptr %.in.i, align 8            ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8
  %i.k = lshr i32 %i.j, 2
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.m = load i32, ptr %i.l, align 8
  %i.n = add i32 %i.m, -1                         ; 2 uses
  %i.o = and i32 %i.n, %i.k
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.i, label %.preheader

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.w = zext i32 %i.n to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.x = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.ac, %bb.c ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.p, %.lr.ph.i.i.i ], [ %i.ab, %bb.c ]
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp eq ptr %i.h, %i.y
  br i1 %i.z, label %_ZN2v88internal11VariableMap6LookupEPKNS0_12AstRawStringE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = add nsw i64 %.013.i.i.i, 1
  %i.ab = and i64 %i.aa, %i.w                     ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.b, label %.preheader, !llvm.loop !9

_ZN2v88internal11VariableMap6LookupEPKNS0_12AstRawStringE.exit: ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not.not = icmp eq ptr %i.ah, null
  br i1 %.not.not, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.c, %bb.a, %_ZN2v88internal11VariableMap6LookupEPKNS0_12AstRawStringE.exit
  %i.ai = tail call noundef ptr @_ZN2v88internal5Scope17LookupInScopeInfoEPKNS0_12AstRawStringEPS1_(ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef %i.h, ptr noundef %3) ; 2 uses
  %.not4482 = icmp eq ptr %i.ai, null
  br i1 %.not4482, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader, %bb.k
  %.03784 = phi ptr [ %i.aj, %bb.k ], [ %1, %.preheader ] ; 9 uses
  %.041.in83 = phi i1 [ %6, %bb.k ], [ %4, %.preheader ] ; 3 uses
  %i.aj = load ptr, ptr %.03784, align 8          ; 3 uses
  %i.ak = icmp eq ptr %i.aj, %2
  %i.al = getelementptr inbounds nuw i8, ptr %.03784, i64 121
  %i.am = load i16, ptr %i.al, align 1            ; 3 uses
  br i1 %i.ak, label %bb.l, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.an = and i16 %i.am, 32
  %.not45 = icmp eq i16 %i.an, 0
  br i1 %.not45, label %bb.k, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  %i.ao = and i16 %i.am, 260
  %or.cond = icmp eq i16 %i.ao, 260
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = tail call noundef ptr @_ZN2v88internal5Scope16LookupSloppyEvalEPNS0_13VariableProxyEPS1_S4_S4_b(ptr noundef nonnull %0, ptr noundef nonnull %.03784, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %.041.in83)
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.03784, i64 120
  %i.ar = load i8, ptr %i.aq, align 8
  %i.as = icmp eq i8 %i.ar, 8
  br i1 %i.as, label %bb.h, label %_ZNK2v88internal5Scope23is_debug_evaluate_scopeEv.exit

bb.h:                                             ; preds = %bb.g
  %i.at = tail call noundef ptr @_ZN2v88internal5Scope10LookupWithEPNS0_13VariableProxyEPS1_S4_S4_b(ptr noundef nonnull %0, ptr noundef nonnull %.03784, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %.041.in83)
  br label %.thread

_ZNK2v88internal5Scope23is_debug_evaluate_scopeEv.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.au = getelementptr inbounds nuw i8, ptr %.03784, i64 96
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = load i64, ptr %i.av, align 8
  store i64 %i.aw, ptr %5, align 8
  %i.ax = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo20IsDebugEvaluateScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %i.ax, label %bb.j, label %bb.i, !prof !6

bb.i:                                             ; preds = %_ZNK2v88internal5Scope23is_debug_evaluate_scopeEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #22
  unreachable

bb.j:                                             ; preds = %_ZNK2v88internal5Scope23is_debug_evaluate_scopeEv.exit
  %i.ay = load i32, ptr %i.c, align 4
  %i.az = and i32 %i.ay, 256
  %.not.i51 = icmp eq i32 %i.az, 0
  %i.ba = load ptr, ptr %i.f, align 8
  %.pn.i52 = select i1 %.not.i51, ptr %0, ptr %i.ba
  %.in.i53 = getelementptr inbounds nuw i8, ptr %.pn.i52, i64 8
  %i.bb = load ptr, ptr %.in.i53, align 8
  %i.bc = call noundef ptr @_ZN2v88internal5Scope8NonLocalEPKNS0_12AstRawStringENS0_12VariableModeE(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef %i.bb, i8 noundef zeroext 6)
  br label %.thread

bb.k:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %.03784, i64 120
  %i.be = load i8, ptr %i.bd, align 8
  %i.bf = icmp eq i8 %i.be, 4
  %6 = or i1 %.041.in83, %i.bf
  %i.bg = load i32, ptr %i.c, align 4
  %i.bh = and i32 %i.bg, 256
  %.not.i46 = icmp eq i32 %i.bh, 0
  %i.bi = load ptr, ptr %i.f, align 8
  %.pn.i47 = select i1 %.not.i46, ptr %0, ptr %i.bi
  %.in.i48 = getelementptr inbounds nuw i8, ptr %.pn.i47, i64 8
  %i.bj = load ptr, ptr %.in.i48, align 8
  %i.bk = tail call noundef ptr @_ZN2v88internal5Scope17LookupInScopeInfoEPKNS0_12AstRawStringEPS1_(ptr noundef nonnull align 8 dereferenceable(124) %i.aj, ptr noundef %i.bj, ptr noundef %3) ; 2 uses
  %.not44 = icmp eq ptr %i.bk, null
  br i1 %.not44, label %.lr.ph, label %.thread

bb.l:                                             ; preds = %.lr.ph
  %i.bl = and i16 %i.am, 256
  %.not.i54 = icmp eq i16 %i.bl, 0
  br i1 %.not.i54, label %bb.m, label %_ZN2v88internal5Scope18AsDeclarationScopeEv.exit55, !prof !5

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #22
  unreachable

_ZN2v88internal5Scope18AsDeclarationScopeEv.exit55: ; preds = %bb.l
  %i.bm = load i32, ptr %i.c, align 4
  %i.bn = and i32 %i.bm, 256
  %.not.i56 = icmp eq i32 %i.bn, 0
  %i.bo = load ptr, ptr %i.f, align 8
  %.pn.i57 = select i1 %.not.i56, ptr %0, ptr %i.bo
  %.in.i58 = getelementptr inbounds nuw i8, ptr %.pn.i57, i64 8
  %i.bp = load ptr, ptr %.in.i58, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.bq = getelementptr inbounds nuw i8, ptr %.03784, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.bq, align 8
  %i.br = call noundef ptr @_ZN2v88internal11VariableMap7DeclareEPNS0_4ZoneEPNS0_5ScopeEPKNS0_12AstRawStringENS0_12VariableModeENS0_12VariableKindENS0_18InitializationFlagENS0_17MaybeAssignedFlagENS0_12IsStaticFlagEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %.sroa.0.0.copyload.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(216) %.03784, ptr noundef %i.bp, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.thread

.thread:                                          ; preds = %bb.k, %.preheader, %bb.j, %bb.h, %bb.f, %_ZN2v88internal11VariableMap6LookupEPKNS0_12AstRawStringE.exit, %_ZN2v88internal5Scope18AsDeclarationScopeEv.exit55
  %.3 = phi ptr [ %i.ah, %_ZN2v88internal11VariableMap6LookupEPKNS0_12AstRawStringE.exit ], [ %i.br, %_ZN2v88internal5Scope18AsDeclarationScopeEv.exit55 ], [ %i.bc, %bb.j ], [ %i.at, %bb.h ], [ %i.ap, %bb.f ], [ %i.ai, %.preheader ], [ %i.bk, %bb.k ]
  ret ptr %.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal16DeclarationScope20DeclareDynamicGlobalEPKNS0_12AstRawStringENS0_12VariableKindEPNS0_5ScopeE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.c, align 8
  %i.d = call noundef ptr @_ZN2v88internal11VariableMap7DeclareEPNS0_4ZoneEPNS0_5ScopeEPKNS0_12AstRawStringENS0_12VariableModeENS0_12VariableKindENS0_18InitializationFlagENS0_17MaybeAssignedFlagENS0_12IsStaticFlagEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %.sroa.0.0.copyload.i.i.i, ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN2v88internal11VariableMap6LookupEPKNS0_12AstRawStringE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %i.f = add i32 %i.e, -1                         ; 2 uses
  %i.g = and i32 %i.f, %i.c
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.h ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i, label %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS_8internal20ZoneAllocationPolicyEE6LookupERKS2_j.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.o = zext i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.p = phi ptr [ %i.k, %.lr.ph.i.i ], [ %i.u, %bb.c ] ; 2 uses
  %.013.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.t, %bb.c ]
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %1, %i.q
  br i1 %i.r, label %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS_8internal20ZoneAllocationPolicyEE6LookupERKS2_j.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = add nsw i64 %.013.i.i, 1
  %i.t = and i64 %i.s, %i.o                       ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS_8internal20ZoneAllocationPolicyEE6LookupERKS2_j.exit.thread, !llvm.loop !9

_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS_8internal20ZoneAllocationPolicyEE6LookupERKS2_j.exit: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  br label %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS_8internal20ZoneAllocationPolicyEE6LookupERKS2_j.exit.thread

_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS_8internal20ZoneAllocationPolicyEE6LookupERKS2_j.exit.thread: ; preds = %bb.c, %bb.a, %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS_8internal20ZoneAllocationPolicyEE6LookupERKS2_j.exit
  %.0 = phi ptr [ %i.z, %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS_8internal20ZoneAllocationPolicyEE6LookupERKS2_j.exit ], [ null, %bb.a ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal5Scope29AllocateScopeInfosRecursivelyINS0_7IsolateEEEvPT_NS0_11MaybeHandleINS0_9ScopeInfoEEERSt13unordered_mapIiNS0_6HandleIS7_EESt4hashIiESt8equal_toIiESaISt4pairIKiSB_EEE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(56) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8               ; 3 uses
  %i.c = icmp ult i8 %i.b, 6
  %switch.shifted = lshr i8 43, %i.b
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %_ZNK2v88internal5Scope16UniqueIdInScriptEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.e = load i16, ptr %i.d, align 1              ; 2 uses
  %i.f = icmp slt i16 %i.e, 0
  br i1 %i.f, label %_ZNK2v88internal5Scope16UniqueIdInScriptEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i16 %i.e, 256
  %.not.i = icmp eq i16 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  br i1 %.not.i, label %_ZNK2v88internal5Scope16UniqueIdInScriptEv.exit, label %_ZNK2v88internal5Scope18AsDeclarationScopeEv.exit.i

_ZNK2v88internal5Scope18AsDeclarationScopeEv.exit.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 126
  %i.k = load i8, ptr %i.j, align 2
  %i.l = and i8 %i.k, -2
  %i.m = icmp eq i8 %i.l, 4
  %i.n = zext i1 %i.m to i32
  %i.o = add nsw i32 %i.i, %i.n
  br label %_ZNK2v88internal5Scope16UniqueIdInScriptEv.exit

_ZNK2v88internal5Scope16UniqueIdInScriptEv.exit:  ; preds = %bb.a, %bb.b, %bb.c, %_ZNK2v88internal5Scope18AsDeclarationScopeEv.exit.i
  %.0.i = phi i32 [ -1, %bb.b ], [ %i.i, %bb.c ], [ %i.o, %_ZNK2v88internal5Scope18AsDeclarationScopeEv.exit.i ], [ -2, %bb.a ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %.not.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZNK2v88internal5Scope16UniqueIdInScriptEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.06.0.in.i.i = phi ptr [ %i.r, %bb.d ], [ %.sroa.06.0.i.i, %bb.f ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8 ; 4 uses
  %i.s = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.s, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp eq i32 %.0.i, %i.u
  br i1 %i.v, label %_ZNSt13unordered_mapIiN2v88internal6HandleINS1_9ScopeInfoEEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit, label %bb.e, !llvm.loop !14

bb.g:                                             ; preds = %_ZNK2v88internal5Scope16UniqueIdInScriptEv.exit
  %i.w = sext i32 %.0.i to i64
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = urem i64 %i.w, %i.y                      ; 2 uses
  %i.aa = load ptr, ptr %3, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp eq i32 %.0.i, %i.af
  br i1 %i.ag, label %_ZNSt13unordered_mapIiN2v88internal6HandleINS1_9ScopeInfoEEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %bb.j
  %i.ah = icmp eq i32 %.0.i, %i.ak
  br i1 %i.ah, label %_ZNSt13unordered_mapIiN2v88internal6HandleINS1_9ScopeInfoEEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !15

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %bb.i
  %.020.i.i.i.i = phi ptr [ %i.ai, %bb.i ], [ %i.ad, %bb.h ]
  %i.ai = load ptr, ptr %.020.i.i.i.i, align 8    ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = urem i64 %i.al, %i.y
  %.not19.i.i.i.i = icmp eq i64 %i.am, %i.z
  br i1 %.not19.i.i.i.i, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !15

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.j
  br label %.loopexit, !llvm.loop !15

end_hunk_0
begin_hunk_1_@_ZN2v88internal5Scope19GetDeclarationScopeEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.b = load i16, ptr %i.a, align 1
  %i.c = and i16 %i.b, 256
  %.not4 = icmp eq i16 %i.c, 0
  br i1 %.not4, label %.lr.ph, label %_ZN2v88internal5Scope18AsDeclarationScopeEv.exit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.05 = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ]
  %i.d = load ptr, ptr %.05, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 121
  %i.f = load i16, ptr %i.e, align 1
  %i.g = and i16 %i.f, 256
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %.lr.ph, label %_ZN2v88internal5Scope18AsDeclarationScopeEv.exit, !llvm.loop !31

_ZN2v88internal5Scope18AsDeclarationScopeEv.exit: ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.d, %.lr.ph ]
  ret ptr %.0.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal5Scope24DeclareCatchVariableNameEPKNS0_12AstRawStringE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.b, align 8
  %i.c = call noundef ptr @_ZN2v88internal11VariableMap7DeclareEPNS0_4ZoneEPNS0_5ScopeEPKNS0_12AstRawStringENS0_12VariableModeENS0_12VariableKindENS0_18InitializationFlagENS0_17MaybeAssignedFlagENS0_12IsStaticFlagEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %.sroa.0.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %i.a) ; 3 uses
  %i.d = load i8, ptr %i.a, align 1, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN2v88internal5Scope7DeclareEPNS0_4ZoneEPKNS0_12AstRawStringENS0_12VariableModeENS0_12VariableKindENS0_18InitializationFlagENS0_17MaybeAssignedFlagEPb.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  store ptr %i.c, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.h, ptr %i.f, align 8
  br label %_ZN2v88internal5Scope7DeclareEPNS0_4ZoneEPKNS0_12AstRawStringENS0_12VariableModeENS0_12VariableKindENS0_18InitializationFlagENS0_17MaybeAssignedFlagEPb.exit

_ZN2v88internal5Scope7DeclareEPNS0_4ZoneEPKNS0_12AstRawStringENS0_12VariableModeENS0_12VariableKindENS0_18InitializationFlagENS0_17MaybeAssignedFlagEPb.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal5Scope13AddUnresolvedEPNS0_13VariableProxyE(ptr noundef nonnull align 8 captures(none) dereferenceable(124) %0, ptr noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not7.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not7.i.i.i, label %_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE3AddEPS3_.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 512
  %.not6.i1.i.i = icmp eq i32 %i.g, 0
  br i1 %.not6.i1.i.i, label %_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE3AddEPS3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i
  %i.h = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.d, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %._ZN2v88internal13VariableProxy14UnresolvedNext6filterEPPS1_.exit.loopexit_crit_edge.i.i, label %.lr.ph.i.i.i, !llvm.loop !34

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 512
  %.not6.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not6.i.i.i, label %_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE3AddEPS3_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !34

._ZN2v88internal13VariableProxy14UnresolvedNext6filterEPPS1_.exit.loopexit_crit_edge.i.i: ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE3AddEPS3_.exit, !llvm.loop !34

_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE3AddEPS3_.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE3AddEPS3_.exit

_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE3AddEPS3_.exit: ; preds = %_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE3AddEPS3_.exit.loopexit, %bb.a, %.lr.ph.i.preheader.i.i, %._ZN2v88internal13VariableProxy14UnresolvedNext6filterEPPS1_.exit.loopexit_crit_edge.i.i
  %.0.lcssa.i.i.i = phi ptr [ %i.c, %bb.a ], [ %i.c, %.lr.ph.i.preheader.i.i ], [ %i.n, %._ZN2v88internal13VariableProxy14UnresolvedNext6filterEPPS1_.exit.loopexit_crit_edge.i.i ], [ %i.o, %_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE3AddEPS3_.exit.loopexit ]
  store ptr %.0.lcssa.i.i.i, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2v88internal5Scope16DeleteUnresolvedEPNS0_13VariableProxyE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(124) %0, ptr noundef captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = or i32 %i.b, 512
  store i32 %i.c, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal16DeclarationScope31CheckConflictingVarDeclarationsEPb(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(216) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i16, ptr %i.a, align 4
  %i.c = and i16 %i.b, 1024
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.b, label %.loopexit110

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.thread80
  %.sroa.071.0116 = phi ptr [ %i.bc, %.thread80 ], [ %i.d, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.071.0116, align 8   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, 127
  %or.cond.not = icmp eq i32 %i.k, 64
  br i1 %or.cond.not, label %bb.c, label %.thread80

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load i16, ptr %i.n, align 8
  %i.p = trunc i16 %i.o to i8
  %i.q = and i8 %i.p, 15
  switch i8 %i.q, label %.thread80 [
    i8 4, label %bb.d
    i8 6, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %.051 = phi ptr [ %i.s, %bb.d ], [ %.152.ph, %bb.j ] ; 4 uses
  %i.t = load ptr, ptr %i.l, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i32, ptr %i.w, align 8
  %i.y = lshr i32 %i.x, 2
  %i.z = getelementptr inbounds nuw i8, ptr %.051, i64 40
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  %i.ac = and i32 %i.ab, %i.y
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.051, i64 32
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ad ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i, label %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.e
  %i.ak = zext i32 %i.ab to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.al = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %i.aq, %bb.g ] ; 2 uses
  %.013.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.ap, %bb.g ]
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = icmp eq ptr %i.v, %i.am
  br i1 %i.an, label %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS_8internal20ZoneAllocationPolicyEE6LookupERKS2_j.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = add nsw i64 %.013.i.i.i.i, 1
  %i.ap = and i64 %i.ao, %i.ak                    ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.f, label %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit, !llvm.loop !9

_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS_8internal20ZoneAllocationPolicyEE6LookupERKS2_j.exit.i.i: ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  br label %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit

_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit: ; preds = %bb.g, %bb.e, %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS_8internal20ZoneAllocationPolicyEE6LookupERKS2_j.exit.i.i
  %.0.i.i = phi ptr [ %i.av, %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS_8internal20ZoneAllocationPolicyEE6LookupERKS2_j.exit.i.i ], [ null, %bb.e ], [ null, %bb.g ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.051, i64 120
  %i.ax = load i8, ptr %i.aw, align 8
  %i.ay = icmp eq i8 %i.ax, 6
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit
  %i.az = icmp ne ptr %.0.i.i, null
  %i.ba = load i8, ptr %1, align 1, !range !7, !noundef !8
  %2 = trunc nuw i8 %i.ba to i1
  %3 = or i1 %i.az, %2
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %1, align 1
  br label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit
  %.not57 = icmp eq ptr %.0.i.i, null
  br i1 %.not57, label %bb.j, label %.loopexit110

bb.j:                                             ; preds = %bb.i, %bb.h
  %.152.ph = load ptr, ptr %.051, align 8         ; 2 uses
  %.not58 = icmp eq ptr %.152.ph, %0
  br i1 %.not58, label %.thread80.loopexit, label %bb.e, !llvm.loop !46

.thread80.loopexit:                               ; preds = %bb.j
  %.pre = load ptr, ptr %.sroa.071.0116, align 8
  br label %.thread80

.thread80:                                        ; preds = %.thread80.loopexit, %bb.c, %.lr.ph
  %i.bb = phi ptr [ %.pre, %.thread80.loopexit ], [ %i.h, %bb.c ], [ %i.h, %.lr.ph ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.f
  br i1 %i.bd, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.thread80, %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bf = load i8, ptr %i.be, align 8
  %i.bg = icmp eq i8 %i.bf, 3
  br i1 %i.bg, label %bb.k, label %.loopexit110, !prof !5

bb.k:                                             ; preds = %._crit_edge
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.bi = load i16, ptr %i.bh, align 1
  %i.bj = trunc i16 %i.bi to i1
  br i1 %i.bj, label %.loopexit110, label %.preheader

.preheader:                                       ; preds = %bb.k, %.preheader.backedge
  %.0.i.in = phi ptr [ %.0.i, %.preheader.backedge ], [ %0, %bb.k ]
  %.0.i = load ptr, ptr %.0.i.in, align 8         ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i, i64 121
  %i.bl = load i16, ptr %i.bk, align 1
  %i.bm = and i16 %i.bl, 256
  %.not.i66 = icmp eq i16 %i.bm, 0
  br i1 %.not.i66, label %.preheader.backedge, label %bb.l

bb.l:                                             ; preds = %.preheader
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i, i64 120
  %i.bo = load i8, ptr %i.bn, align 8
  %i.bp = icmp eq i8 %i.bo, 3
  br i1 %i.bp, label %.preheader.backedge, label %_ZN2v88internal5Scope26GetNonEvalDeclarationScopeEv.exit

.preheader.backedge:                              ; preds = %bb.l, %.preheader
  br label %.preheader, !llvm.loop !29

_ZN2v88internal5Scope26GetNonEvalDeclarationScopeEv.exit: ; preds = %bb.l
  %i.bq = load ptr, ptr %.0.i, align 8
  %i.br = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bs = icmp eq ptr %i.d, %i.br
  br i1 %i.bs, label %.loopexit110, label %.lr.ph118

.lr.ph118:                                        ; preds = %_ZN2v88internal5Scope26GetNonEvalDeclarationScopeEv.exit, %.loopexit
  %.sroa.067.0117 = phi ptr [ %i.co, %.loopexit ], [ %i.d, %_ZN2v88internal5Scope26GetNonEvalDeclarationScopeEv.exit ] ; 2 uses
  %i.bt = load ptr, ptr %.sroa.067.0117, align 8  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load i16, ptr %i.bw, align 8
  %i.by = and i16 %i.bx, 12
  %i.bz = icmp eq i16 %i.by, 0
  br i1 %i.bz, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %.lr.ph118
  %i.ca = load ptr, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %.041 = phi ptr [ %i.ca, %bb.m ], [ %i.cm, %bb.q ] ; 4 uses
  %i.cb = load ptr, ptr %i.bu, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call noundef ptr @_ZN2v88internal5Scope24LookupInScopeOrScopeInfoEPKNS0_12AstRawStringEPS1_(ptr noundef nonnull align 8 dereferenceable(124) %.041, ptr noundef %i.cd, ptr noundef %.041) ; 2 uses
  %.not59 = icmp eq ptr %i.ce, null
  br i1 %.not59, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %.041, i64 120
  %i.cg = load i8, ptr %i.cf, align 8
  %i.ch = icmp eq i8 %i.cg, 6
  br i1 %i.ch, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cj = load i16, ptr %i.ci, align 8
  %i.ck = and i16 %i.cj, 12
  %i.cl = icmp eq i16 %i.ck, 0
  br i1 %i.cl, label %.loopexit110, label %.loopexit

bb.q:                                             ; preds = %bb.n, %bb.o
  %i.cm = load ptr, ptr %.041, align 8            ; 2 uses
  %.not60 = icmp eq ptr %i.cm, %i.bq
  br i1 %.not60, label %.loopexit, label %bb.n, !llvm.loop !47

.loopexit:                                        ; preds = %bb.q, %.lr.ph118, %bb.p
  %i.cn = load ptr, ptr %.sroa.067.0117, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.br
  br i1 %i.cp, label %.loopexit110, label %.lr.ph118

.loopexit110:                                     ; preds = %bb.i, %bb.p, %.loopexit, %_ZN2v88internal5Scope26GetNonEvalDeclarationScopeEv.exit, %bb.k, %._crit_edge, %bb.a
  %.13 = phi ptr [ null, %bb.k ], [ null, %bb.a ], [ null, %.loopexit ], [ null, %._crit_edge ], [ null, %_ZN2v88internal5Scope26GetNonEvalDeclarationScopeEv.exit ], [ %i.bt, %bb.p ], [ %i.h, %bb.i ]
  ret ptr %.13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN2v88internal5Scope22FindVariableDeclaredInEPS1_NS0_12VariableModeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(124) %0, ptr noundef readonly captures(none) %1, i8 noundef zeroext %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i32, ptr %i.d, align 8
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.f ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn.i.i = phi ptr [ %i.c, %bb.a ], [ %.08.i.i, %bb.c ] ; 2 uses
  %.08.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24 ; 3 uses
  %i.h = icmp ult ptr %.08.i.i, %i.g
  br i1 %i.h, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 40
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %bb.b, !llvm.loop !25

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8
  %i.n = add i32 %i.m, -1                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = zext i32 %i.n to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS_8internal20ZoneAllocationPolicyEE4NextEPNS0_20TemplateHashMapEntryIS2_S2_EE.exit, %.lr.ph
  %.01529 = phi ptr [ %.08.i.i, %.lr.ph ], [ %.08.i, %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS_8internal20ZoneAllocationPolicyEE4NextEPNS0_20TemplateHashMapEntryIS2_S2_EE.exit ] ; 2 uses
  %i.r = load ptr, ptr %.01529, align 8           ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load i32, ptr %i.s, align 8
  %i.u = lshr i32 %i.t, 2
  %i.v = and i32 %i.n, %i.u
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i.i.i.i, label %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit.thread.preheader

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.e
  %i.ab = phi ptr [ %i.ag, %bb.e ], [ %i.x, %bb.d ] ; 2 uses
  %.013.i.i.i.i = phi i64 [ %i.af, %bb.e ], [ %i.w, %bb.d ]
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = icmp eq ptr %i.r, %i.ac
  br i1 %i.ad, label %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ae = add nsw i64 %.013.i.i.i.i, 1
  %i.af = and i64 %i.ae, %i.q                     ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i, label %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit.thread.preheader, !llvm.loop !9

_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit: ; preds = %.lr.ph.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not19 = icmp eq ptr %i.al, null
  br i1 %.not19, label %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit.thread.preheader, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load i16, ptr %i.am, align 8
  %i.ao = trunc i16 %i.an to i8
  %i.ap = and i8 %i.ao, 15
  %.not20 = icmp ugt i8 %i.ap, %2
  br i1 %.not20, label %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit.thread.preheader, label %._crit_edge

_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit.thread.preheader: ; preds = %bb.e, %bb.d, %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit, %bb.f
  br label %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit.thread

_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit.thread: ; preds = %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit.thread.preheader, %bb.g
  %.pn.i = phi ptr [ %.08.i, %bb.g ], [ %.01529, %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit.thread.preheader ] ; 2 uses
  %.08.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24 ; 3 uses
  %i.aq = icmp ult ptr %.08.i, %i.g
  br i1 %i.aq, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn.i, i64 40
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = icmp slt i32 %i.as, 0
end_hunk_1
begin_hunk_2_@_ZN2v88internal16DeclarationScope40RecordNeedsPrivateNameContextChainRecalcEv:bb.a
  ]

.critedge.i:                                      ; preds = %bb.b, %bb.b, %.preheader
  %i.p = load ptr, ptr %.0.i, align 8
  br label %.preheader, !llvm.loop !27

_ZN2v88internal5Scope15GetClosureScopeEv.exit.thread: ; preds = %_ZN2v88internal5Scope15GetClosureScopeEv.exit.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 2147483647, 2147483646) i32 @_ZNK2v88internal5Scope17ContextLocalCountEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(124) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i8, ptr %i.d, align 8
  switch i8 %i.e, label %._ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.i_crit_edge [
    i8 4, label %bb.c
    i8 5, label %_ZNK2v88internal5Scope19ContextHeaderLengthEv.exit
    i8 8, label %_ZNK2v88internal5Scope19ContextHeaderLengthEv.exit
  ]

._ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.i_crit_edge: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 121
  %.pre = load i16, ptr %.phi.trans.insert, align 1
  br label %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.g = load i16, ptr %i.f, align 1              ; 3 uses
  %i.h = and i16 %i.g, 256
  %.not.i = icmp eq i16 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #22
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load i16, ptr %i.k, align 8
  %i.m = and i16 %i.l, 896
  %i.n = icmp eq i16 %i.m, 384
  %.neg = sext i1 %i.n to i32
  br label %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.i

_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.i: ; preds = %._ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.i_crit_edge, %bb.e, %bb.f
  %i.o = phi i16 [ %.pre, %._ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.i_crit_edge ], [ %i.g, %bb.f ], [ %i.g, %bb.e ]
  %.neg512 = phi i32 [ 0, %._ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.i_crit_edge ], [ %.neg, %bb.f ], [ 0, %bb.e ]
  %.fr3.i = freeze i16 %i.o
  %i.p = and i16 %.fr3.i, 4
  %.not.i6 = icmp eq i16 %i.p, 0
  %spec.select.neg = select i1 %.not.i6, i32 -2, i32 -3
  br label %_ZNK2v88internal5Scope19ContextHeaderLengthEv.exit

_ZNK2v88internal5Scope19ContextHeaderLengthEv.exit: ; preds = %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.i, %bb.b, %bb.b
  %.neg511 = phi i32 [ %.neg512, %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.i ], [ 0, %bb.b ], [ 0, %bb.b ]
  %.neg13 = phi i32 [ %spec.select.neg, %_ZNK2v88internal5Scope23HasContextExtensionSlotEv.exit.i ], [ -3, %bb.b ], [ -3, %bb.b ]
  %i.q = add i32 %.neg511, %i.b
  %i.r = add i32 %i.q, %.neg13
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNK2v88internal5Scope19ContextHeaderLengthEv.exit
  %.0 = phi i32 [ %i.r, %_ZNK2v88internal5Scope19ContextHeaderLengthEv.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal27IsComplementaryAccessorPairENS0_12VariableModeES1_(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #14 {
bb.a:
  switch i8 %0, label %bb.d [
    i8 11, label %bb.b
    i8 10, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i8 %1, 10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i8 %1, 11
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i1 [ %i.b, %bb.c ], [ %i.a, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal10ClassScope18DeclarePrivateNameEPKNS0_12AstRawStringENS0_12VariableModeENS0_12IsStaticFlagEPb(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef captures(none) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %_ZN2v88internal10ClassScope14EnsureRareDataEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 16 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = sub i64 %i.f, %i.h
  %i.j = icmp ult i64 %i.i, 48
  br i1 %i.j, label %bb.c, label %_ZN2v88internal4Zone8AllocateINS0_10ClassScope8RareDataEEEPvm.exit.i, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0.copyload.i.i.i, i64 noundef 48) #21
  %.pre.i.i = load i64, ptr %i.g, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_10ClassScope8RareDataEEEPvm.exit.i

_ZN2v88internal4Zone8AllocateINS0_10ClassScope8RareDataEEEPvm.exit.i: ; preds = %bb.c, %bb.b
  %i.k = phi i64 [ %.pre.i.i, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 8 uses
  %i.m = add i64 %i.k, 48
  store i64 %i.m, ptr %i.g, align 8
  store ptr null, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = load i64, ptr %i.e, align 8
  %i.r = load i64, ptr %i.g, align 8              ; 2 uses
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp ult i64 %i.s, 192
  br i1 %i.t, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS_4base20TemplateHashMapEntryIPvS5_EEA_S6_EEPT_m.exit.i.i.i.i.i.i, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal4Zone8AllocateINS0_10ClassScope8RareDataEEEPvm.exit.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0.copyload.i.i.i, i64 noundef 192) #21
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS_4base20TemplateHashMapEntryIPvS5_EEA_S6_EEPT_m.exit.i.i.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayINS_4base20TemplateHashMapEntryIPvS5_EEA_S6_EEPT_m.exit.i.i.i.i.i.i: ; preds = %bb.d, %_ZN2v88internal4Zone8AllocateINS0_10ClassScope8RareDataEEEPvm.exit.i
  %i.u = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %bb.d ], [ %i.r, %_ZN2v88internal4Zone8AllocateINS0_10ClassScope8RareDataEEEPvm.exit.i ] ; 3 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = add i64 %i.u, 192
  store i64 %i.w, ptr %i.g, align 8
  store ptr %i.v, ptr %i.p, align 8
  %i.x = icmp eq i64 %i.u, 0
  br i1 %i.x, label %bb.e, label %_ZN2v88internal4Zone3NewINS0_10ClassScope8RareDataEJPS1_EEEPT_DpOT0_.exit

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS_4base20TemplateHashMapEntryIPvS5_EEA_S6_EEPT_m.exit.i.i.i.i.i.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.16) #22
  unreachable

_ZN2v88internal4Zone3NewINS0_10ClassScope8RareDataEJPS1_EEEPT_DpOT0_.exit: ; preds = %_ZN2v88internal4Zone13AllocateArrayINS_4base20TemplateHashMapEntryIPvS5_EEA_S6_EEPT_m.exit.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i32 8, ptr %i.y, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.v, i8 0, i64 192, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  store i32 0, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr null, ptr %i.aa, align 8
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = and i64 %i.ab, 1
  %i.ad = or i64 %i.ac, %i.k                      ; 2 uses
  store i64 %i.ad, ptr %i.a, align 8
  br label %_ZN2v88internal10ClassScope14EnsureRareDataEv.exit

_ZN2v88internal10ClassScope14EnsureRareDataEv.exit: ; preds = %bb.a, %_ZN2v88internal4Zone3NewINS0_10ClassScope8RareDataEJPS1_EEEPT_DpOT0_.exit
  %i.ae = phi i64 [ %i.b, %bb.a ], [ %i.ad, %_ZN2v88internal4Zone3NewINS0_10ClassScope8RareDataEJPS1_EEEPT_DpOT0_.exit ]
  %i.af = and i64 %i.ae, -2
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i17 = load ptr, ptr %i.ai, align 8
  %i.aj = tail call noundef ptr @_ZN2v88internal11VariableMap7DeclareEPNS0_4ZoneEPNS0_5ScopeEPKNS0_12AstRawStringENS0_12VariableModeENS0_12VariableKindENS0_18InitializationFlagENS0_17MaybeAssignedFlagENS0_12IsStaticFlagEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef %.sroa.0.0.copyload.i.i.i17, ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %3, ptr noundef %4) ; 6 uses
  %i.ak = load i8, ptr %4, align 1, !range !7, !noundef !8
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal10ClassScope14EnsureRareDataEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  store ptr %i.aj, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.ao, ptr %i.am, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 8            ; 2 uses
  %i.ar = and i16 %i.aq, 16384
  %.not = icmp ne i16 %i.ar, 0
  %i.as = trunc i16 %i.aq to i8
  %i.at = and i8 %i.as, 15
  %i.au = add nsw i8 %i.at, -9
  %i.av = icmp ult i8 %i.au, 4
  %narrow = select i1 %.not, i1 %i.av, i1 false
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8             ; 2 uses
  %5 = trunc i8 %i.ax to i1
  %6 = or i1 %narrow, %5
  %7 = zext i1 %6 to i8
  %8 = and i8 %i.ax, -2
  %i.ay = or disjoint i8 %8, %7
  store i8 %i.ay, ptr %i.aw, align 8
  %.pre = load i16, ptr %i.ap, align 8
  br label %_ZN2v88internal27IsComplementaryAccessorPairENS0_12VariableModeES1_.exit.thread

bb.g:                                             ; preds = %_ZN2v88internal10ClassScope14EnsureRareDataEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 2 uses
  %i.ba = load i16, ptr %i.az, align 8            ; 6 uses
  %i.bb = trunc i16 %i.ba to i8
  %i.bc = and i8 %i.bb, 15
  switch i8 %i.bc, label %_ZN2v88internal27IsComplementaryAccessorPairENS0_12VariableModeES1_.exit.thread [
    i8 11, label %_ZN2v88internal27IsComplementaryAccessorPairENS0_12VariableModeES1_.exit
    i8 10, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.bd = icmp eq i8 %2, 11
  br i1 %i.bd, label %bb.i, label %_ZN2v88internal27IsComplementaryAccessorPairENS0_12VariableModeES1_.exit.thread

_ZN2v88internal27IsComplementaryAccessorPairENS0_12VariableModeES1_.exit: ; preds = %bb.g
  %i.be = icmp eq i8 %2, 10
  br i1 %i.be, label %bb.i, label %_ZN2v88internal27IsComplementaryAccessorPairENS0_12VariableModeES1_.exit.thread

bb.i:                                             ; preds = %bb.h, %_ZN2v88internal27IsComplementaryAccessorPairENS0_12VariableModeES1_.exit
  %i.bf = lshr i16 %i.ba, 14
  %i.bg = trunc nuw nsw i16 %i.bf to i8
  %i.bh = and i8 %i.bg, 1
  %i.bi = icmp eq i8 %i.bh, %3
  br i1 %i.bi, label %bb.j, label %_ZN2v88internal27IsComplementaryAccessorPairENS0_12VariableModeES1_.exit.thread

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %4, align 1
  %i.bj = load i16, ptr %i.az, align 8
  %i.bk = and i16 %i.bj, -16
  %i.bl = or disjoint i16 %i.bk, 12
  br label %_ZN2v88internal27IsComplementaryAccessorPairENS0_12VariableModeES1_.exit.thread

_ZN2v88internal27IsComplementaryAccessorPairENS0_12VariableModeES1_.exit.thread: ; preds = %bb.g, %bb.h, %_ZN2v88internal27IsComplementaryAccessorPairENS0_12VariableModeES1_.exit, %bb.i, %bb.j, %bb.f
  %i.bm = phi i16 [ %i.ba, %bb.g ], [ %i.ba, %bb.h ], [ %i.ba, %_ZN2v88internal27IsComplementaryAccessorPairENS0_12VariableModeES1_.exit ], [ %i.ba, %bb.i ], [ %i.bl, %bb.j ], [ %.pre, %bb.f ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.bo = or i16 %i.bm, 1024
  store i16 %i.bo, ptr %i.bn, align 8
  ret ptr %i.aj
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(145) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, -2                         ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN2v88internal11VariableMap6LookupEPKNS0_12AstRawStringE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8
  %i.h = lshr i32 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = and i32 %i.k, %i.h
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.m ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i.i, label %_ZN2v88internal11VariableMap6LookupEPKNS0_12AstRawStringE.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.t = zext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %i.u = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %i.z, %bb.d ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i ], [ %i.y, %bb.d ]
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %1, %i.v
  br i1 %i.w, label %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS_8internal20ZoneAllocationPolicyEE6LookupERKS2_j.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = add nsw i64 %.013.i.i.i, 1
  %i.y = and i64 %i.x, %i.t                       ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %_ZN2v88internal11VariableMap6LookupEPKNS0_12AstRawStringE.exit, !llvm.loop !9

_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS_8internal20ZoneAllocationPolicyEE6LookupERKS2_j.exit.i: ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  br label %_ZN2v88internal11VariableMap6LookupEPKNS0_12AstRawStringE.exit

_ZN2v88internal11VariableMap6LookupEPKNS0_12AstRawStringE.exit: ; preds = %bb.d, %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS_8internal20ZoneAllocationPolicyEE6LookupERKS2_j.exit.i, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.ae, %_ZNK2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS_8internal20ZoneAllocationPolicyEE6LookupERKS2_j.exit.i ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @_ZN2v88internal10ClassScope28GetUnresolvedPrivateNameTailEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(145) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, -2                         ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.c to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal10ClassScope30ResetUnresolvedPrivateNameTailENS_4base16ThreadedListBaseINS0_13VariableProxyENS2_9EmptyBaseENS4_14UnresolvedNextELb0EE8IteratorE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(145) %0, ptr %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, -2                         ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.d, align 8
  store ptr %i.d, ptr %i.f, align 8
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  store ptr %1, ptr %i.f, align 8
  store ptr null, ptr %1, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10ClassScope32MigrateUnresolvedPrivateNameTailEPNS0_14AstNodeFactoryENS_4base16ThreadedListBaseINS0_13VariableProxyENS4_9EmptyBaseENS6_14UnresolvedNextELb0EE8IteratorE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(145) %0, ptr noundef readonly captures(none) %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::base::ThreadedListBase.0", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, -2                         ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 6 uses
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.g, %2
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %3, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr %3, ptr %i.i, align 8
  %i.j = icmp eq ptr %2, null                     ; 2 uses
  br i1 %i.j, label %bb.d, label %_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE5beginEv.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not7.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not7.i.i.i, label %_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE5beginEv.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 512
  %.not6.i1.i.i = icmp eq i32 %i.n, 0
  br i1 %.not6.i1.i.i, label %_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE5beginEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.k, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %._ZN2v88internal13VariableProxy14UnresolvedNext6filterEPPS1_.exit.loopexit_crit_edge.i.i, label %.lr.ph.i.i.i, !llvm.loop !34

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i
end_hunk_2
begin_hunk_3_@_ZN2v88internal10ClassScope28ResolvePrivateNamesPartiallyEv:bb.a
  %i.d = inttoptr i64 %i.c to ptr                 ; 5 uses
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8              ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i8 0, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load i8, ptr %i.j, align 8
  %i.l = icmp ne i8 %i.k, 2
  %i.m = trunc i64 %i.b to i1
  %or.cond = or i1 %i.l, %i.m
  br i1 %or.cond, label %bb.d, label %_ZN2v88internal24PrivateNameScopeIteratorC2EPNS0_5ScopeE.exit

bb.d:                                             ; preds = %bb.c
  %.010.i.i = load ptr, ptr %0, align 8           ; 2 uses
  %.not11.i.i = icmp eq ptr %.010.i.i, null
  br i1 %.not11.i.i, label %_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.f
  %i.n = phi i8 [ %i.u, %bb.f ], [ 0, %bb.d ]     ; 2 uses
  %.013.i.i = phi ptr [ %.0.i.i, %bb.f ], [ %.010.i.i, %bb.d ] ; 4 uses
  %.0812.i.i = phi ptr [ %.013.i.i, %bb.f ], [ %0, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 120
  %i.p = load i8, ptr %i.o, align 8
  %i.q = icmp eq i8 %i.p, 2
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 121
  %i.s = load i16, ptr %i.r, align 1
  %i.t = and i16 %i.s, 512
  %.not9.i.i = icmp eq i16 %i.t, 0
  br i1 %.not9.i.i, label %_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit.i.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.u = phi i8 [ %i.n, %.lr.ph.i.i ], [ 1, %bb.e ] ; 2 uses
  %.0.i.i = load ptr, ptr %.013.i.i, align 8      ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit.i.loopexit, label %.lr.ph.i.i, !llvm.loop !38

_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit.i.loopexit: ; preds = %bb.e, %bb.f
  %i.v = phi i8 [ %i.u, %bb.f ], [ %i.n, %bb.e ]  ; 2 uses
  %.0.lcssa.i.i.ph = phi ptr [ null, %bb.f ], [ %.013.i.i, %bb.e ]
  store i8 %i.v, ptr %1, align 8
  br label %_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit.i

_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit.i: ; preds = %_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit.i.loopexit, %bb.d
  %i.w = phi i8 [ 0, %bb.d ], [ %i.v, %_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit.i.loopexit ]
  %.0.lcssa.i.i = phi ptr [ null, %bb.d ], [ %.0.lcssa.i.i.ph, %_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit.i.loopexit ] ; 2 uses
  store ptr %.0.lcssa.i.i, ptr %i.i, align 8
  br label %_ZN2v88internal24PrivateNameScopeIteratorC2EPNS0_5ScopeE.exit

_ZN2v88internal24PrivateNameScopeIteratorC2EPNS0_5ScopeE.exit: ; preds = %bb.c, %_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit.i
  %i.x = phi i8 [ 0, %bb.c ], [ %i.w, %_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit.i ]
  %i.y = phi ptr [ %0, %bb.c ], [ %.0.lcssa.i.i, %_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit.i ] ; 2 uses
  %.010.i = load ptr, ptr %i.y, align 8           ; 2 uses
  %.not11.i = icmp eq ptr %.010.i, null
  br i1 %.not11.i, label %_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal24PrivateNameScopeIteratorC2EPNS0_5ScopeE.exit, %bb.h
  %i.z = phi i8 [ %i.ag, %bb.h ], [ %i.x, %_ZN2v88internal24PrivateNameScopeIteratorC2EPNS0_5ScopeE.exit ] ; 2 uses
  %.013.i = phi ptr [ %.0.i, %bb.h ], [ %.010.i, %_ZN2v88internal24PrivateNameScopeIteratorC2EPNS0_5ScopeE.exit ] ; 4 uses
  %.0812.i = phi ptr [ %.013.i, %bb.h ], [ %i.y, %_ZN2v88internal24PrivateNameScopeIteratorC2EPNS0_5ScopeE.exit ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i, i64 120
  %i.ab = load i8, ptr %i.aa, align 8
  %i.ac = icmp eq i8 %i.ab, 2
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0812.i, i64 121
  %i.ae = load i16, ptr %i.ad, align 1
  %i.af = and i16 %i.ae, 512
  %.not9.i = icmp eq i16 %i.af, 0
  br i1 %.not9.i, label %_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %i.ag = phi i8 [ %i.z, %.lr.ph.i ], [ 1, %bb.g ] ; 2 uses
  %.0.i = load ptr, ptr %.013.i, align 8          ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit.loopexit, label %.lr.ph.i, !llvm.loop !38

_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit.loopexit: ; preds = %bb.h, %bb.g
  %i.ah = phi i8 [ %i.z, %bb.g ], [ %i.ag, %bb.h ]
  %.0.lcssa.i.ph = phi ptr [ %.013.i, %bb.g ], [ null, %bb.h ]
  store i8 %i.ah, ptr %1, align 8
  %i.ai = freeze ptr %.0.lcssa.i.ph
  br label %_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit

_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit: ; preds = %_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit.loopexit, %_ZN2v88internal24PrivateNameScopeIteratorC2EPNS0_5ScopeE.exit
  %.0.lcssa.i = phi ptr [ null, %_ZN2v88internal24PrivateNameScopeIteratorC2EPNS0_5ScopeE.exit ], [ %i.ai, %_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit.loopexit ] ; 2 uses
  store ptr %.0.lcssa.i, ptr %i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ak = load i32, ptr %i.aj, align 8
  %.fr51 = freeze i32 %i.ak
  %.not = icmp eq i32 %.fr51, 0                   ; 2 uses
  %i.al = icmp eq ptr %.0.lcssa.i, null           ; 3 uses
  %or.cond45 = and i1 %i.al, %.not
  br i1 %or.cond45, label %.thread, label %.preheader

.preheader:                                       ; preds = %_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  br i1 %.not, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  br i1 %i.al, label %_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit.thread.us.us, label %_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit.thread.us

_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit.thread.us.us: ; preds = %.preheader.split.us
  %i.an = tail call noundef zeroext i1 @_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE6RemoveEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.f) ; 0 uses
  br label %.thread

_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit.thread.us: ; preds = %.preheader.split.us, %_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit.thread.us
  %.02949.us = phi ptr [ %i.ap, %_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit.thread.us ], [ %i.f, %.preheader.split.us ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.02949.us, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = tail call noundef zeroext i1 @_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE6RemoveEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %.02949.us) ; 0 uses
  call void @_ZN2v88internal24PrivateNameScopeIterator24AddUnresolvedPrivateNameEPNS0_13VariableProxyE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %.02949.us)
  %.not36.us = icmp eq ptr %i.ap, null
  br i1 %.not36.us, label %.thread, label %_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit.thread.us, !llvm.loop !75

.preheader.split:                                 ; preds = %.preheader, %bb.m
  %.02949 = phi ptr [ %i.as, %bb.m ], [ %i.f, %.preheader ] ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02949, i64 16
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = tail call noundef zeroext i1 @_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE6RemoveEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %.02949) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.02949, i64 4
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = and i32 %i.av, 256
  %.not.i38 = icmp eq i32 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %.02949, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %.pn.i = select i1 %.not.i38, ptr %.02949, ptr %i.ay
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %i.az = load ptr, ptr %.in.i, align 8           ; 2 uses
  %i.ba = load i64, ptr %i.a, align 8
  %i.bb = and i64 %i.ba, -2                       ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit.thread, label %bb.i

bb.i:                                             ; preds = %.preheader.split
  %i.bd = inttoptr i64 %i.bb to ptr               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = lshr i32 %i.bf, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = add i32 %i.bi, -1                       ; 2 uses
  %i.bk = and i32 %i.bj, %i.bg
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bl ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i.i.i, label %_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit.thread

.lr.ph.i.i.i.i:                                   ; preds = %bb.i
  %i.bs = zext i32 %i.bj to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i
  %i.bt = phi ptr [ %i.bo, %.lr.ph.i.i.i.i ], [ %i.by, %bb.k ] ; 2 uses
  %.013.i.i.i.i = phi i64 [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.bx, %bb.k ]
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = icmp eq ptr %i.az, %i.bu
  br i1 %i.bv, label %_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = add nsw i64 %.013.i.i.i.i, 1
  %i.bx = and i64 %i.bw, %i.bs                    ; 2 uses
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %bb.j, label %_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit.thread, !llvm.loop !9

_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit: ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8            ; 3 uses
  %.not37 = icmp eq ptr %i.cd, null
  br i1 %.not37, label %_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit.thread, label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40 ; 3 uses
  %i.cf = load i16, ptr %i.ce, align 8
  %i.cg = or i16 %i.cf, 2048
  store i16 %i.cg, ptr %i.ce, align 8
  tail call void @_ZN2v88internal13VariableProxy6BindToEPNS0_8VariableE(ptr noundef nonnull align 8 dereferenceable(24) %.02949, ptr noundef nonnull %i.cd) #21
  %i.ch = load i16, ptr %i.ce, align 8            ; 2 uses
  %i.ci = and i16 %i.ch, 16384
  %2 = icmp ne i16 %i.ci, 0
  %i.cj = trunc i16 %i.ch to i8
  %i.ck = and i8 %i.cj, 15
  %i.cl = add nsw i8 %i.ck, -9
  %i.cm = icmp ult i8 %i.cl, 4
  %i.cn = select i1 %2, i1 %i.cm, i1 false
  %3 = load i8, ptr %i.am, align 8                ; 2 uses
  %4 = and i8 %3, 2
  %5 = icmp ne i8 %4, 0
  %6 = or i1 %5, %i.cn
  %i.co = select i1 %6, i8 2, i8 0
  %7 = and i8 %3, -3
  %i.cp = or disjoint i8 %i.co, %7
  store i8 %i.cp, ptr %i.am, align 8
  br label %bb.m

_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit.thread: ; preds = %bb.k, %bb.i, %.preheader.split, %_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit
  br i1 %i.al, label %.thread, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit.thread
  call void @_ZN2v88internal24PrivateNameScopeIterator24AddUnresolvedPrivateNameEPNS0_13VariableProxyE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %.02949)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge
  %.not36 = icmp eq ptr %i.as, null
  br i1 %.not36, label %.thread, label %.preheader.split, !llvm.loop !75

.thread:                                          ; preds = %_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit.thread, %bb.m, %_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit.thread.us, %_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit.thread.us.us, %_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit
  %.3 = phi ptr [ %i.f, %_ZN2v88internal24PrivateNameScopeIterator4NextEv.exit ], [ null, %_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit.thread.us ], [ %i.f, %_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit.thread.us.us ], [ %.02949, %_ZN2v88internal10ClassScope22LookupLocalPrivateNameEPKNS0_12AstRawStringE.exit.thread ], [ null, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.b, %.thread
  %.4 = phi ptr [ %.3, %.thread ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE6RemoveEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, %1
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %.not7.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not7.i.i.i, label %bb.c, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 512
  %.not6.i1.i.i = icmp eq i32 %i.h, 0
  br i1 %.not6.i1.i.i, label %_ZN2v88internal13VariableProxy14UnresolvedNext4nextEPS1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i
  %i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %i.e, %.lr.ph.i.preheader.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %._ZN2v88internal13VariableProxy14UnresolvedNext6filterEPPS1_.exit.loopexit_crit_edge.i.i, label %.lr.ph.i.i.i, !llvm.loop !34

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 512
  %.not6.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not6.i.i.i, label %_ZN2v88internal13VariableProxy14UnresolvedNext4nextEPS1_.exit.i, label %.lr.ph.i.i, !llvm.loop !34

._ZN2v88internal13VariableProxy14UnresolvedNext6filterEPPS1_.exit.loopexit_crit_edge.i.i: ; preds = %.lr.ph.i.i
  br label %bb.c, !llvm.loop !34

_ZN2v88internal13VariableProxy14UnresolvedNext4nextEPS1_.exit.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.preheader.i.i
  %.pr.i = phi ptr [ %i.e, %.lr.ph.i.preheader.i.i ], [ %i.k, %.lr.ph.i.i.i ]
  store ptr %.pr.i, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %._ZN2v88internal13VariableProxy14UnresolvedNext6filterEPPS1_.exit.loopexit_crit_edge.i.i, %bb.b
  store ptr null, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %0, ptr %i.o, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN2v88internal13VariableProxy14UnresolvedNext4nextEPS1_.exit.i
  %i.p = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not7.i.i2.i = icmp eq ptr %i.p, null
  br i1 %.not7.i.i2.i, label %_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE8DropHeadEv.exit, label %.lr.ph.i.preheader.i3.i

.lr.ph.i.preheader.i3.i:                          ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 512
  %.not6.i1.i4.i = icmp eq i32 %i.s, 0
  br i1 %.not6.i1.i4.i, label %_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE8DropHeadEv.exit, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph.i.preheader.i3.i, %.lr.ph.i.i7.i
  %i.t = phi ptr [ %i.v, %.lr.ph.i.i7.i ], [ %i.p, %.lr.ph.i.preheader.i3.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i6.i, label %._ZN2v88internal13VariableProxy14UnresolvedNext6filterEPPS1_.exit.loopexit_crit_edge.i11.i, label %.lr.ph.i.i7.i, !llvm.loop !34

.lr.ph.i.i7.i:                                    ; preds = %.lr.ph.i5.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 512
  %.not6.i.i8.i = icmp eq i32 %i.y, 0
  br i1 %.not6.i.i8.i, label %_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE8DropHeadEv.exit.loopexit, label %.lr.ph.i5.i, !llvm.loop !34

._ZN2v88internal13VariableProxy14UnresolvedNext6filterEPPS1_.exit.loopexit_crit_edge.i11.i: ; preds = %.lr.ph.i5.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  br label %_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE8DropHeadEv.exit, !llvm.loop !34

_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE8DropHeadEv.exit.loopexit: ; preds = %.lr.ph.i.i7.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  br label %_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE8DropHeadEv.exit

_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE8DropHeadEv.exit: ; preds = %_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE8DropHeadEv.exit.loopexit, %bb.d, %.lr.ph.i.preheader.i3.i, %._ZN2v88internal13VariableProxy14UnresolvedNext6filterEPPS1_.exit.loopexit_crit_edge.i11.i
  %.0.lcssa.i.i10.i = phi ptr [ %i.d, %bb.d ], [ %i.d, %.lr.ph.i.preheader.i3.i ], [ %i.z, %._ZN2v88internal13VariableProxy14UnresolvedNext6filterEPPS1_.exit.loopexit_crit_edge.i11.i ], [ %i.aa, %_ZN2v84base16ThreadedListBaseINS_8internal13VariableProxyENS0_9EmptyBaseENS3_14UnresolvedNextELb0EE8DropHeadEv.exit.loopexit ]
  store ptr null, ptr %.0.lcssa.i.i10.i, align 8
  br label %.loopexit

bb.e:                                             ; preds = %.preheader, %bb.i
  %.015 = phi ptr [ %.116, %bb.i ], [ %i.a, %.preheader ] ; 4 uses
  %.not.not.not = icmp ne ptr %.015, null         ; 3 uses
  br i1 %.not.not.not, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.015, i64 16 ; 6 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 6 uses
  %.not7.i.i = icmp eq ptr %i.ac, null            ; 2 uses
  br i1 %.not7.i.i, label %_ZN2v88internal13VariableProxy14UnresolvedNext4nextEPS1_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = and i32 %i.ae, 512
  %.not6.i1.i = icmp eq i32 %i.af, 0
  br i1 %.not6.i1.i, label %_ZN2v88internal13VariableProxy14UnresolvedNext4nextEPS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i22
  %i.ag = phi ptr [ %i.ai, %.lr.ph.i.i22 ], [ %i.ac, %.lr.ph.i.preheader.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8            ; 4 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %._ZN2v88internal13VariableProxy14UnresolvedNext6filterEPPS1_.exit.loopexit_crit_edge.i, label %.lr.ph.i.i22, !llvm.loop !34

.lr.ph.i.i22:                                     ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = and i32 %i.ak, 512
  %.not6.i.i = icmp eq i32 %i.al, 0
  br i1 %.not6.i.i, label %_ZN2v88internal13VariableProxy14UnresolvedNext4nextEPS1_.exit, label %.lr.ph.i, !llvm.loop !34

._ZN2v88internal13VariableProxy14UnresolvedNext6filterEPPS1_.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i
  br label %_ZN2v88internal13VariableProxy14UnresolvedNext4nextEPS1_.exit, !llvm.loop !34

_ZN2v88internal13VariableProxy14UnresolvedNext4nextEPS1_.exit: ; preds = %.lr.ph.i.i22, %bb.f, %.lr.ph.i.preheader.i, %._ZN2v88internal13VariableProxy14UnresolvedNext6filterEPPS1_.exit.loopexit_crit_edge.i
  %i.am = phi ptr [ null, %bb.f ], [ %i.ac, %.lr.ph.i.preheader.i ], [ null, %._ZN2v88internal13VariableProxy14UnresolvedNext6filterEPPS1_.exit.loopexit_crit_edge.i ], [ %i.ai, %.lr.ph.i.i22 ] ; 3 uses
  %.not21 = icmp eq ptr %i.am, %1                 ; 2 uses
  br i1 %.not21, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN2v88internal13VariableProxy14UnresolvedNext4nextEPS1_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 7 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 4 uses
  %.not7.i.i23 = icmp eq ptr %i.ao, null
  br i1 %.not7.i.i23, label %_ZN2v88internal13VariableProxy14UnresolvedNext4nextEPS1_.exit33, label %.lr.ph.i.preheader.i24

.lr.ph.i.preheader.i24:                           ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 512
  %.not6.i1.i25 = icmp eq i32 %i.ar, 0
  br i1 %.not6.i1.i25, label %_ZN2v88internal13VariableProxy14UnresolvedNext4nextEPS1_.exit33, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.lr.ph.i.preheader.i24, %.lr.ph.i.i28
  %i.as = phi ptr [ %i.au, %.lr.ph.i.i28 ], [ %i.ao, %.lr.ph.i.preheader.i24 ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8            ; 4 uses
  %.not.i.i27 = icmp eq ptr %i.au, null
  br i1 %.not.i.i27, label %._ZN2v88internal13VariableProxy14UnresolvedNext6filterEPPS1_.exit.loopexit_crit_edge.i32, label %.lr.ph.i.i28, !llvm.loop !34

.lr.ph.i.i28:                                     ; preds = %.lr.ph.i26
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = and i32 %i.aw, 512
  %.not6.i.i29 = icmp eq i32 %i.ax, 0
  br i1 %.not6.i.i29, label %_ZN2v88internal13VariableProxy14UnresolvedNext4nextEPS1_.exit33, label %.lr.ph.i26, !llvm.loop !34

._ZN2v88internal13VariableProxy14UnresolvedNext6filterEPPS1_.exit.loopexit_crit_edge.i32: ; preds = %.lr.ph.i26
  br label %_ZN2v88internal13VariableProxy14UnresolvedNext4nextEPS1_.exit33, !llvm.loop !34

_ZN2v88internal13VariableProxy14UnresolvedNext4nextEPS1_.exit33: ; preds = %.lr.ph.i.i28, %bb.g, %.lr.ph.i.preheader.i24, %._ZN2v88internal13VariableProxy14UnresolvedNext6filterEPPS1_.exit.loopexit_crit_edge.i32
  %i.ay = phi ptr [ null, %bb.g ], [ %i.ao, %.lr.ph.i.preheader.i24 ], [ null, %._ZN2v88internal13VariableProxy14UnresolvedNext6filterEPPS1_.exit.loopexit_crit_edge.i32 ], [ %i.au, %.lr.ph.i.i28 ]
  br i1 %.not7.i.i, label %_ZN2v88internal13VariableProxy14UnresolvedNext4nextEPS1_.exit44, label %.lr.ph.i.preheader.i35

.lr.ph.i.preheader.i35:                           ; preds = %_ZN2v88internal13VariableProxy14UnresolvedNext4nextEPS1_.exit33
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = and i32 %i.ba, 512
  %.not6.i1.i36 = icmp eq i32 %i.bb, 0
  br i1 %.not6.i1.i36, label %_ZN2v88internal13VariableProxy14UnresolvedNext4nextEPS1_.exit44, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %.lr.ph.i.preheader.i35, %.lr.ph.i.i39
  %i.bc = phi ptr [ %i.be, %.lr.ph.i.i39 ], [ %i.ac, %.lr.ph.i.preheader.i35 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8            ; 3 uses
end_hunk_3
