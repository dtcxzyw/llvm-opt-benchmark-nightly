Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/theory_strings?download=true
inline.NumInlined: 4488
inline.NumDeleted: 1655
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4cvc58internal6theory7strings13TheoryStrings20collectModelInfoTypeENS0_8TypeNodeERSt13unordered_setIS4_St4hashIS4_ESt8equal_toIS4_ESaIS4_EERKSt3mapIS4_S5_INS0_12NodeTemplateILb1EEES6_ISF_ES8_ISF_ESaISF_EESt4lessIS4_ESaISt4pairIKS4_SJ_EEEPNS1_11TheoryModelE:bb.a
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !582 ; 3 uses
  %i.al = load ptr, ptr %37, align 8              ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !606
  %i.ap = icmp eq i64 %i.ad, %i.ao
  %i.aq = load ptr, ptr %i.am, align 8
  %i.ar = icmp eq ptr %i.al, %i.aq
  %i.as = select i1 %i.ap, i1 %i.ar, i1 false
  br i1 %i.as, label %_ZNSt13unordered_setIN4cvc58internal8TypeNodeESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE4findERKS2_.exit, label %.lr.ph.i.i.i.i

bb.l:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.au = icmp eq i64 %i.ad, %i.ba
  %i.av = load ptr, ptr %i.at, align 8
  %i.aw = icmp eq ptr %i.al, %i.av
  %i.ax = select i1 %i.au, i1 %i.aw, i1 false
  br i1 %i.ax, label %_ZNSt13unordered_setIN4cvc58internal8TypeNodeESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE4findERKS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %bb.l
  %.020.i.i.i.i = phi ptr [ %i.ay, %bb.l ], [ %i.ak, %bb.k ]
  %i.ay = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !582 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not18.i.i.i.i, label %_ZN4cvc58internal8TypeNodeD2Ev.exit495, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !606 ; 2 uses
  %i.bb = urem i64 %i.ba, %i.af
  %.not19.i.i.i.i = icmp eq i64 %i.bb, %i.ag
  br i1 %.not19.i.i.i.i, label %bb.l, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.m
  br label %_ZN4cvc58internal8TypeNodeD2Ev.exit495, !llvm.loop !6

_ZNSt13unordered_setIN4cvc58internal8TypeNodeESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE4findERKS2_.exit: ; preds = %bb.l, %bb.i, %bb.k
  %i.bc = phi ptr [ %i.z, %bb.i ], [ %i.al, %bb.k ], [ %i.al, %bb.l ] ; 5 uses
  store ptr %i.bc, ptr %38, align 8, !tbaa !581
  %i.bd = load i64, ptr %i.bc, align 8            ; 3 uses
  %i.be = lshr i64 %i.bd, 40
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = and i32 %i.bf, 1048575                  ; 3 uses
  %i.bh = icmp samesign ult i32 %i.bg, 1048574
  br i1 %i.bh, label %bb.n, label %bb.o, !prof !258

bb.n:                                             ; preds = %_ZNSt13unordered_setIN4cvc58internal8TypeNodeESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE4findERKS2_.exit
  %i.bi = add nuw nsw i32 %i.bg, 1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 40
  %i.bl = and i64 %i.bd, -1152920405095219201
  %i.bm = or i64 %i.bk, %i.bl
  store i64 %i.bm, ptr %i.bc, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit

bb.o:                                             ; preds = %_ZNSt13unordered_setIN4cvc58internal8TypeNodeESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE4findERKS2_.exit
  %i.bn = icmp eq i32 %i.bg, 1048574
  br i1 %i.bn, label %bb.p, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit, !prof !255

bb.p:                                             ; preds = %bb.o
  %i.bo = or i64 %i.bd, 1152920405095219200
  store i64 %i.bo, ptr %i.bc, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit unwind label %bb.y

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit:          ; preds = %bb.o, %bb.n, %bb.p
  %i.bp = invoke noundef zeroext i1 @_ZN4cvc58internal6theory7strings13TheoryStrings20collectModelInfoTypeENS0_8TypeNodeERSt13unordered_setIS4_St4hashIS4_ESt8equal_toIS4_ESaIS4_EERKSt3mapIS4_S5_INS0_12NodeTemplateILb1EEES6_ISF_ES8_ISF_ESaISF_EESt4lessIS4_ESaISt4pairIKS4_SJ_EEEPNS1_11TheoryModelE(ptr noundef nonnull align 8 dereferenceable(6200) %0, ptr noundef nonnull align 8 %38, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %4)
          to label %bb.q unwind label %bb.z       ; 3 uses

bb.q:                                             ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.bq = load ptr, ptr %38, align 8, !tbaa !581  ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8            ; 3 uses
  %i.bs = and i64 %i.br, 1152920405095219200
  %.not.i.i494 = icmp eq i64 %i.bs, 1152920405095219200
  br i1 %.not.i.i494, label %_ZN4cvc58internal8TypeNodeD2Ev.exit495, label %bb.r, !prof !255

bb.r:                                             ; preds = %bb.q
  %i.bt = add i64 %i.br, 1152920405095219200
  %i.bu = and i64 %i.bt, 1152920405095219200      ; 2 uses
  %i.bv = and i64 %i.br, -1152920405095219201
  %i.bw = or disjoint i64 %i.bu, %i.bv
  store i64 %i.bw, ptr %i.bq, align 8
  %i.bx = icmp eq i64 %i.bu, 0
  br i1 %i.bx, label %bb.s, label %_ZN4cvc58internal8TypeNodeD2Ev.exit495, !prof !255

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit495 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #31
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit495:           ; preds = %.lr.ph.i.i.i.i, %bb.h, %bb.s, %bb.r, %bb.q, %.noexc, %..loopexit_crit_edge21.i.i.i.i
  %i.ca = phi i1 [ true, %bb.h ], [ true, %..loopexit_crit_edge21.i.i.i.i ], [ %i.bp, %bb.s ], [ true, %.noexc ], [ %i.bp, %bb.q ], [ %i.bp, %bb.r ], [ true, %.lr.ph.i.i.i.i ]
  %i.cb = load ptr, ptr %37, align 8, !tbaa !581  ; 3 uses
  %i.cc = load i64, ptr %i.cb, align 8            ; 3 uses
  %i.cd = and i64 %i.cc, 1152920405095219200
  %.not.i.i496 = icmp eq i64 %i.cd, 1152920405095219200
  br i1 %.not.i.i496, label %_ZN4cvc58internal8TypeNodeD2Ev.exit497, label %bb.u, !prof !255

bb.u:                                             ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit495
  %i.ce = add i64 %i.cc, 1152920405095219200
  %i.cf = and i64 %i.ce, 1152920405095219200      ; 2 uses
  %i.cg = and i64 %i.cc, -1152920405095219201
  %i.ch = or disjoint i64 %i.cf, %i.cg
  store i64 %i.ch, ptr %i.cb, align 8
  %i.ci = icmp eq i64 %i.cf, 0
  br i1 %i.ci, label %bb.v, label %_ZN4cvc58internal8TypeNodeD2Ev.exit497, !prof !255

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit497 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #31
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit497:           ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit495, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  br i1 %i.ca, label %.critedge481.thread, label %bb.amx

bb.x:                                             ; preds = %bb.j
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.y:                                             ; preds = %bb.p
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #28
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %i.cl, %bb.x ], [ %i.cn, %bb.z ], [ %i.cm, %bb.y ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  br label %bb.amy

.critedge481.thread:                              ; preds = %bb.a, %_ZN4cvc58internal8TypeNodeD2Ev.exit497, %.critedge481
  %i.co = call noundef i64 @_ZNSt10_HashtableIN4cvc58internal8TypeNodeES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #28
  call void @_ZN4cvc58internal6theory7strings11SEnumLenSetC1EPNS1_24TypeEnumeratorPropertiesE(ptr noundef nonnull align 8 dereferenceable(56) %39, ptr noundef null)
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.cq = invoke noundef ptr @_ZN4cvc58internal6theory7strings11SolverState19getModelConstructorEv(ptr noundef nonnull align 8 dereferenceable(560) %i.cp)
          to label %bb.ab unwind label %bb.am     ; 6 uses

bb.ab:                                            ; preds = %.critedge481.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #28
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !559 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not10.i.i.i.i, label %.critedge.i511.invoke, label %.lr.ph.i.i.i.i498

.lr.ph.i.i.i.i498:                                ; preds = %bb.ab
  %i.cu = load ptr, ptr %1, align 8, !tbaa !581
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = and i64 %i.cv, 1099511627775            ; 4 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i.i.i.i498
  %.012.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i498 ], [ %.1.i.i.i.i, %bb.ac ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i498 ], [ %.19.i.i.i.i, %bb.ac ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !581
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = and i64 %i.cz, 1099511627775
  %i.db = icmp samesign ult i64 %i.da, %i.cw      ; 2 uses
  %.19.i.i.i.i = select i1 %i.db, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.db, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !607 ; 2 uses
  %.not.i.i.i.i499 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i499, label %_ZNKSt3mapIN4cvc58internal8TypeNodeESt13unordered_setINS1_12NodeTemplateILb1EEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EESt4lessIS2_ESaISt4pairIKS2_SB_EEE11lower_boundERSF_.exit.i, label %bb.ac, !llvm.loop !747

_ZNKSt3mapIN4cvc58internal8TypeNodeESt13unordered_setINS1_12NodeTemplateILb1EEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EESt4lessIS2_ESaISt4pairIKS2_SB_EEE11lower_boundERSF_.exit.i: ; preds = %bb.ac
  %i.dc = icmp eq ptr %.19.i.i.i.i, %i.ct
  br i1 %i.dc, label %.critedge.i511.invoke, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt3mapIN4cvc58internal8TypeNodeESt13unordered_setINS1_12NodeTemplateILb1EEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EESt4lessIS2_ESaISt4pairIKS2_SB_EEE11lower_boundERSF_.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !581
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = and i64 %i.df, 1099511627775
  %i.dh = icmp samesign ult i64 %i.cw, %i.dg
  br i1 %i.dh, label %.critedge.i511.invoke, label %.lr.ph.i.i.i.i502

.lr.ph.i.i.i.i502:                                ; preds = %bb.ad
  %151 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %152 = load ptr, ptr %151, align 8, !tbaa !608  ; 3 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i.i.i.i502
  %.012.i.i.i.i503 = phi ptr [ %i.cs, %.lr.ph.i.i.i.i502 ], [ %.1.i.i.i.i508, %bb.ae ] ; 3 uses
  %.0811.i.i.i.i504 = phi ptr [ %i.ct, %.lr.ph.i.i.i.i502 ], [ %.19.i.i.i.i505, %bb.ae ]
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i503, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !581
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = and i64 %i.dk, 1099511627775
  %i.dm = icmp samesign ult i64 %i.dl, %i.cw      ; 2 uses
  %.19.i.i.i.i505 = select i1 %i.dm, ptr %.0811.i.i.i.i504, ptr %.012.i.i.i.i503 ; 3 uses
  %.1.in.v.i.i.i.i506 = select i1 %i.dm, i64 24, i64 16
  %.1.in.i.i.i.i507 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i503, i64 %.1.in.v.i.i.i.i506
  %.1.i.i.i.i508 = load ptr, ptr %.1.in.i.i.i.i507, align 8, !tbaa !607 ; 2 uses
  %.not.i.i.i.i509 = icmp eq ptr %.1.i.i.i.i508, null
  br i1 %.not.i.i.i.i509, label %_ZNKSt3mapIN4cvc58internal8TypeNodeESt13unordered_setINS1_12NodeTemplateILb1EEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EESt4lessIS2_ESaISt4pairIKS2_SB_EEE11lower_boundERSF_.exit.i510, label %bb.ae, !llvm.loop !747

_ZNKSt3mapIN4cvc58internal8TypeNodeESt13unordered_setINS1_12NodeTemplateILb1EEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EESt4lessIS2_ESaISt4pairIKS2_SB_EEE11lower_boundERSF_.exit.i510: ; preds = %bb.ae
  %i.dn = icmp eq ptr %.19.i.i.i.i505, %i.ct
  br i1 %i.dn, label %.critedge.i511.invoke, label %bb.af

bb.af:                                            ; preds = %_ZNKSt3mapIN4cvc58internal8TypeNodeESt13unordered_setINS1_12NodeTemplateILb1EEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EESt4lessIS2_ESaISt4pairIKS2_SB_EEE11lower_boundERSF_.exit.i510
  %i.do = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i505, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !581
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = and i64 %i.dq, 1099511627775
  %i.ds = icmp samesign ult i64 %i.cw, %i.dr
  br i1 %i.ds, label %.critedge.i511.invoke, label %_ZNKSt3mapIN4cvc58internal8TypeNodeESt13unordered_setINS1_12NodeTemplateILb1EEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EESt4lessIS2_ESaISt4pairIKS2_SB_EEE2atERSF_.exit513

.critedge.i511.invoke:                            ; preds = %_ZNKSt3mapIN4cvc58internal8TypeNodeESt13unordered_setINS1_12NodeTemplateILb1EEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EESt4lessIS2_ESaISt4pairIKS2_SB_EEE11lower_boundERSF_.exit.i510, %bb.af, %bb.ab, %_ZNKSt3mapIN4cvc58internal8TypeNodeESt13unordered_setINS1_12NodeTemplateILb1EEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EESt4lessIS2_ESaISt4pairIKS2_SB_EEE11lower_boundERSF_.exit.i, %bb.ad
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.135) #30
          to label %.critedge.i511.cont unwind label %bb.an

.critedge.i511.cont:                              ; preds = %.critedge.i511.invoke
  unreachable

_ZNKSt3mapIN4cvc58internal8TypeNodeESt13unordered_setINS1_12NodeTemplateILb1EEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EESt4lessIS2_ESaISt4pairIKS2_SB_EEE2atERSF_.exit513: ; preds = %bb.af
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %.not4.i.i.i = icmp eq ptr %152, null
  br i1 %.not4.i.i.i, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt3mapIN4cvc58internal8TypeNodeESt13unordered_setINS1_12NodeTemplateILb1EEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EESt4lessIS2_ESaISt4pairIKS2_SB_EEE2atERSF_.exit513, %.lr.ph.i.i.i
  %.06.i.i.i = phi i64 [ %i.du, %.lr.ph.i.i.i ], [ 0, %_ZNKSt3mapIN4cvc58internal8TypeNodeESt13unordered_setINS1_12NodeTemplateILb1EEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EESt4lessIS2_ESaISt4pairIKS2_SB_EEE2atERSF_.exit513 ] ; 2 uses
  %.sroa.02.05.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i ], [ %152, %_ZNKSt3mapIN4cvc58internal8TypeNodeESt13unordered_setINS1_12NodeTemplateILb1EEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EESt4lessIS2_ESaISt4pairIKS2_SB_EEE2atERSF_.exit513 ]
  %i.dt = load ptr, ptr %.sroa.02.05.i.i.i, align 8, !tbaa !582 ; 2 uses
  %i.du = add nuw nsw i64 %.06.i.i.i, 1           ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i, label %_ZSt10__distanceINSt8__detail20_Node_const_iteratorIN4cvc58internal12NodeTemplateILb1EEELb1ELb1EEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !748

_ZSt10__distanceINSt8__detail20_Node_const_iteratorIN4cvc58internal12NodeTemplateILb1EEELb1ELb1EEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.dv = icmp samesign ugt i64 %.06.i.i.i, 1152921504606846974
  br i1 %i.dv, label %bb.ag, label %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i

bb.ag:                                            ; preds = %_ZSt10__distanceINSt8__detail20_Node_const_iteratorIN4cvc58internal12NodeTemplateILb1EEELb1ELb1EEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.136) #30
          to label %.noexc.i unwind label %bb.ah

.noexc.i:                                         ; preds = %bb.ag
  unreachable

_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i: ; preds = %_ZSt10__distanceINSt8__detail20_Node_const_iteratorIN4cvc58internal12NodeTemplateILb1EEELb1ELb1EEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i
  %i.dw = shl nuw nsw i64 %i.du, 3
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #29
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i, %_ZNKSt3mapIN4cvc58internal8TypeNodeESt13unordered_setINS1_12NodeTemplateILb1EEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EESt4lessIS2_ESaISt4pairIKS2_SB_EEE2atERSF_.exit513
  %.0.lcssa.i912.i.i = phi i64 [ 0, %_ZNKSt3mapIN4cvc58internal8TypeNodeESt13unordered_setINS1_12NodeTemplateILb1EEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EESt4lessIS2_ESaISt4pairIKS2_SB_EEE2atERSF_.exit513 ], [ %i.du, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i ]
  %i.dy = phi ptr [ null, %_ZNKSt3mapIN4cvc58internal8TypeNodeESt13unordered_setINS1_12NodeTemplateILb1EEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EESt4lessIS2_ESaISt4pairIKS2_SB_EEE2atERSF_.exit513 ], [ %i.dx, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i ] ; 3 uses
  store ptr %i.dy, ptr %42, align 8, !tbaa !253
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.0.lcssa.i912.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 3 uses
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !257
  %i.eb = invoke noundef ptr @_ZSt16__do_uninit_copyINSt8__detail20_Node_const_iteratorIN4cvc58internal12NodeTemplateILb1EEELb1ELb1EEEPS5_ET0_T_S9_S8_(ptr %152, ptr null, ptr noundef %i.dy)
          to label %bb.aj unwind label %bb.ah

bb.ah:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i, %bb.ag
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = load ptr, ptr %42, align 8, !tbaa !253  ; 3 uses
  %.not.i.i7.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i7.i, label %.body, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ee = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !257
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ed to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.ei) #27
  br label %.body

bb.aj:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 4 uses
  store ptr %i.eb, ptr %i.ej, align 8, !tbaa !254
  %i.ek = load ptr, ptr %i.cq, align 8, !tbaa !31
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  invoke void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 8 dereferenceable(24) %40, ptr noundef nonnull align 8 dereferenceable(24) %41)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #28
  %i.en = getelementptr inbounds nuw i8, ptr %43, i64 48 ; 3 uses
  store ptr %i.en, ptr %43, align 8, !tbaa !610
  %i.eo = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 6 uses
  store i64 1, ptr %i.eo, align 8, !tbaa !611
  %i.ep = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %43, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.eq, align 8, !tbaa !577
  %i.er = getelementptr inbounds nuw i8, ptr %43, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.er, i8 0, i64 16, i1 false)
  %i.es = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.al unwind label %bb.ap     ; 2 uses

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #28
  %i.et = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 24 uses
  store i32 0, ptr %i.et, align 8, !tbaa !570
  %i.eu = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 9 uses
  store ptr null, ptr %i.eu, align 8, !tbaa !559
  %i.ev = getelementptr inbounds nuw i8, ptr %44, i64 24
  store ptr %i.et, ptr %i.ev, align 8, !tbaa !571
  %i.ew = getelementptr inbounds nuw i8, ptr %44, i64 32
  store ptr %i.et, ptr %i.ew, align 8, !tbaa !572
  %i.ex = getelementptr inbounds nuw i8, ptr %44, i64 40 ; 5 uses
  store i64 0, ptr %i.ex, align 8, !tbaa !573
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %45, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #28
  %i.ey = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 7 uses
  store i32 0, ptr %i.ey, align 8, !tbaa !570
  %i.ez = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 5 uses
  store ptr null, ptr %i.ez, align 8, !tbaa !559
  %i.fa = getelementptr inbounds nuw i8, ptr %46, i64 24
  store ptr %i.ey, ptr %i.fa, align 8, !tbaa !571
  %i.fb = getelementptr inbounds nuw i8, ptr %46, i64 32
  store ptr %i.ey, ptr %i.fb, align 8, !tbaa !572
  %i.fc = getelementptr inbounds nuw i8, ptr %46, i64 40
  store i64 0, ptr %i.fc, align 8, !tbaa !573
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 0, ptr %i.a, align 8, !tbaa !612
  %i.fd = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !615 ; 2 uses
  %i.ff = load ptr, ptr %40, align 8, !tbaa !616  ; 2 uses
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = sdiv exact i64 %i.fi, 24
  %.not4190 = icmp eq ptr %i.fe, %i.ff
  br i1 %.not4190, label %._crit_edge, label %_ZN4cvc58internal11Cvc5ostreamlsISt6vectorINS0_12NodeTemplateILb1EEESaIS5_EEEERS1_RKT_.exit.lr.ph

_ZN4cvc58internal11Cvc5ostreamlsISt6vectorINS0_12NodeTemplateILb1EEESaIS5_EEEERS1_RKT_.exit.lr.ph: ; preds = %bb.al
  %i.fk = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 9 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 3 uses
  br label %_ZN4cvc58internal11Cvc5ostreamlsISt6vectorINS0_12NodeTemplateILb1EEESaIS5_EEEERS1_RKT_.exit

bb.am:                                            ; preds = %.critedge481.thread
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.amv

bb.an:                                            ; preds = %.critedge.i511.invoke
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ao:                                            ; preds = %bb.aj
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.amm

bb.ap:                                            ; preds = %bb.ak
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.amk

_ZN4cvc58internal11Cvc5ostreamlsISt6vectorINS0_12NodeTemplateILb1EEESaIS5_EEEERS1_RKT_.exit: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsISt6vectorINS0_12NodeTemplateILb1EEESaIS5_EEEERS1_RKT_.exit.lr.ph, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit564
  %i.fq = phi i64 [ 0, %_ZN4cvc58internal11Cvc5ostreamlsISt6vectorINS0_12NodeTemplateILb1EEESaIS5_EEEERS1_RKT_.exit.lr.ph ], [ %i.ne, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit564 ]
  %.sroa.02384.03378 = phi ptr [ null, %_ZN4cvc58internal11Cvc5ostreamlsISt6vectorINS0_12NodeTemplateILb1EEESaIS5_EEEERS1_RKT_.exit.lr.ph ], [ %.sroa.02384.4, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit564 ] ; 21 uses
  %.sroa.10.03377 = phi ptr [ null, %_ZN4cvc58internal11Cvc5ostreamlsISt6vectorINS0_12NodeTemplateILb1EEESaIS5_EEEERS1_RKT_.exit.lr.ph ], [ %.sroa.10.2, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit564 ] ; 13 uses
  %.sroa.15.03375 = phi ptr [ null, %_ZN4cvc58internal11Cvc5ostreamlsISt6vectorINS0_12NodeTemplateILb1EEESaIS5_EEEERS1_RKT_.exit.lr.ph ], [ %.sroa.15.4, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit564 ] ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #28
  %i.fr = load ptr, ptr %41, align 8, !tbaa !253
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fq
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !36 ; 5 uses
  store ptr %i.ft, ptr %47, align 8, !tbaa !36
  %i.fu = load i64, ptr %i.ft, align 8            ; 3 uses
  %i.fv = lshr i64 %i.fu, 40
  %i.fw = trunc nuw nsw i64 %i.fv to i32
  %i.fx = and i32 %i.fw, 1048575                  ; 3 uses
  %i.fy = icmp samesign ult i32 %i.fx, 1048574
  br i1 %i.fy, label %bb.aq, label %bb.ar, !prof !258

bb.aq:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsISt6vectorINS0_12NodeTemplateILb1EEESaIS5_EEEERS1_RKT_.exit
  %i.fz = add nuw nsw i32 %i.fx, 1
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = shl nuw nsw i64 %i.ga, 40
  %i.gc = and i64 %i.fu, -1152920405095219201
  %i.gd = or i64 %i.gb, %i.gc
  store i64 %i.gd, ptr %i.ft, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.ar:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsISt6vectorINS0_12NodeTemplateILb1EEESaIS5_EEEERS1_RKT_.exit
  %i.ge = icmp eq i32 %i.fx, 1048574
  br i1 %i.ge, label %bb.as, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !255

bb.as:                                            ; preds = %bb.ar
  %i.gf = or i64 %i.fu, 1152920405095219200
  store i64 %i.gf, ptr %i.ft, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ft)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.bk

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.ar, %bb.aq, %bb.as
  %i.gg = load ptr, ptr %47, align 8, !tbaa !36
  %i.gh = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.gi = icmp eq i8 %i.gh, 0
  br i1 %i.gi, label %bb.at, label %bb.ax, !prof !32
end_hunk_0
