Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/sygus_unif_rl?download=true
inline.NumInlined: 4324
inline.NumDeleted: 1487
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers11SygusUnifRl20registerStrategyNodeENS0_12NodeTemplateILb1EEES5_NS2_8NodeRoleERSt3mapIS5_S7_IS6_bSt4lessIS6_ESaISt4pairIKS6_bEEES8_IS5_ESaISA_IKS5_SE_EEERSt6vectorIS5_SaIS5_EERS7_IS5_St13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESF_SaISA_ISG_SV_EEE:bb.a

bb.u:                                             ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %i.b, align 4, !tbaa !325
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !555
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !378
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = lshr exact i64 %i.dl, 3
  %i.dn = trunc i64 %i.dm to i32                  ; 2 uses
  %.not184 = icmp eq i32 %i.dn, 0
  br i1 %.not184, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.cf, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.ds = load ptr, ptr %16, align 8, !tbaa !342  ; 3 uses
  %i.dt = load i64, ptr %i.ds, align 8            ; 3 uses
  %i.du = and i64 %i.dt, 1152920405095219200
  %.not.i.i86 = icmp eq i64 %i.du, 1152920405095219200
  br i1 %.not.i.i86, label %_ZN4cvc58internal8TypeNodeD2Ev.exit87, label %bb.v, !prof !89

bb.v:                                             ; preds = %._crit_edge
  %i.dv = add i64 %i.dt, 1152920405095219200
  %i.dw = and i64 %i.dv, 1152920405095219200      ; 2 uses
  %i.dx = and i64 %i.dt, -1152920405095219201
  %i.dy = or disjoint i64 %i.dw, %i.dx
  store i64 %i.dy, ptr %i.ds, align 8
  %i.dz = icmp eq i64 %i.dw, 0
  br i1 %i.dz, label %bb.w, label %_ZN4cvc58internal8TypeNodeD2Ev.exit87, !prof !89

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit87 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #27
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit87:            ; preds = %._crit_edge, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.ch

bb.y:                                             ; preds = %bb.p, %.critedge.i84
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.z:                                             ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #19
  br label %bb.ci

bb.aa:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ab:                                            ; preds = %.lr.ph, %bb.cf
  %i.ef = phi i32 [ 0, %.lr.ph ], [ %i.kw, %bb.cf ]
  %i.eg = zext i32 %i.ef to i64
  %i.eh = load ptr, ptr %i.df, align 8, !tbaa !378
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.eg
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !380 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !563
  %i.el = icmp eq i32 %i.ek, 1
  %i.em = load i32, ptr %i.a, align 4
  %i.en = icmp eq i32 %i.em, 1
  %or.cond = select i1 %i.el, i1 %i.en, i1 false
  br i1 %or.cond, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.ab
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers8NodeRoleEED2Ev.exit, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers8NodeRoleEED2Ev.exit ], [ 1, %.preheader ] ; 3 uses
  %.023155 = phi i1 [ %.124, %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers8NodeRoleEED2Ev.exit ], [ true, %.preheader ]
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !564
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %indvars.iv ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !88 ; 8 uses
  %i.es = load i64, ptr %i.er, align 8            ; 4 uses
  %i.et = lshr i64 %i.es, 40
  %i.eu = trunc nuw nsw i64 %i.et to i32
  %i.ev = and i32 %i.eu, 1048575                  ; 3 uses
  %i.ew = icmp samesign ult i32 %i.ev, 1048574
  br i1 %i.ew, label %bb.ad, label %bb.ae, !prof !92

bb.ad:                                            ; preds = %bb.ac
  %i.ex = add nuw nsw i32 %i.ev, 1
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = shl nuw nsw i64 %i.ey, 40
  %i.fa = and i64 %i.es, -1152920405095219201
  %i.fb = or i64 %i.ez, %i.fa                     ; 2 uses
  store i64 %i.fb, ptr %i.er, align 8
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.fc = icmp eq i32 %i.ev, 1048574
  br i1 %i.fc, label %bb.af, label %bb.ag, !prof !89

bb.af:                                            ; preds = %bb.ae
  %i.fd = or i64 %i.es, 1152920405095219200
  store i64 %i.fd, ptr %i.er, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %._crit_edge159 unwind label %bb.ah

._crit_edge159:                                   ; preds = %bb.af
  %.pre = load i64, ptr %i.er, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge159, %bb.ae, %bb.ad
  %i.fe = phi i64 [ %.pre, %._crit_edge159 ], [ %i.es, %bb.ae ], [ %i.fb, %bb.ad ] ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !566
  %i.fh = load ptr, ptr %2, align 8, !tbaa !88
  %.not154 = icmp eq ptr %i.er, %i.fh
  %i.fi = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.fg, %i.fi
  %cond = select i1 %.not154, i1 %.not, i1 false  ; 2 uses
  %.124 = select i1 %cond, i1 %.023155, i1 false  ; 2 uses
  %i.fj = and i64 %i.fe, 1152920405095219200
  %.not.i.i.i89 = icmp eq i64 %i.fj, 1152920405095219200
  br i1 %.not.i.i.i89, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers8NodeRoleEED2Ev.exit, label %bb.ai, !prof !89

bb.ah:                                            ; preds = %bb.af
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.ai:                                            ; preds = %bb.ag
  %i.fl = add i64 %i.fe, 1152920405095219200
  %i.fm = and i64 %i.fl, 1152920405095219200      ; 2 uses
  %i.fn = and i64 %i.fe, -1152920405095219201
  %i.fo = or disjoint i64 %i.fm, %i.fn
  store i64 %i.fo, ptr %i.er, align 8
  %i.fp = icmp eq i64 %i.fm, 0
  br i1 %i.fp, label %bb.aj, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers8NodeRoleEED2Ev.exit, !prof !89

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers8NodeRoleEED2Ev.exit unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #27
  unreachable

_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers8NodeRoleEED2Ev.exit: ; preds = %bb.ag, %bb.ai, %bb.aj
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.fs = icmp samesign ult i64 %indvars.iv, 2
  %or.cond157 = select i1 %cond, i1 %i.fs, i1 false
  br i1 %or.cond157, label %bb.ac, label %bb.al, !llvm.loop !552

bb.al:                                            ; preds = %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers8NodeRoleEED2Ev.exit
  br i1 %.124, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.ft = load ptr, ptr %i.eo, align 8, !tbaa !564
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !88 ; 13 uses
  store ptr %i.fu, ptr %18, align 8, !tbaa !88
  %i.fv = load i64, ptr %i.fu, align 8            ; 3 uses
  %i.fw = lshr i64 %i.fv, 40
  %i.fx = trunc nuw nsw i64 %i.fw to i32
  %i.fy = and i32 %i.fx, 1048575                  ; 3 uses
  %i.fz = icmp samesign ult i32 %i.fy, 1048574
  br i1 %i.fz, label %bb.an, label %bb.ao, !prof !92

bb.an:                                            ; preds = %bb.am
  %i.ga = add nuw nsw i32 %i.fy, 1
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = shl nuw nsw i64 %i.gb, 40
  %i.gd = and i64 %i.fv, -1152920405095219201
  %i.ge = or i64 %i.gc, %i.gd
  store i64 %i.ge, ptr %i.fu, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.ao:                                            ; preds = %bb.am
  %i.gf = icmp eq i32 %i.fy, 1048574
  br i1 %i.gf, label %bb.ap, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !89

bb.ap:                                            ; preds = %bb.ao
  %i.gg = or i64 %i.fv, 1152920405095219200
  store i64 %i.gg, ptr %i.fu, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.bs

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.ao, %bb.an, %bb.ap
  %i.gh = load ptr, ptr %1, align 8, !tbaa !88    ; 5 uses
  store ptr %i.gh, ptr %19, align 8, !tbaa !88
  %i.gi = load i64, ptr %i.gh, align 8            ; 3 uses
  %i.gj = lshr i64 %i.gi, 40
  %i.gk = trunc nuw nsw i64 %i.gj to i32
  %i.gl = and i32 %i.gk, 1048575                  ; 3 uses
  %i.gm = icmp samesign ult i32 %i.gl, 1048574
  br i1 %i.gm, label %bb.aq, label %bb.ar, !prof !92

bb.aq:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.gn = add nuw nsw i32 %i.gl, 1
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = shl nuw nsw i64 %i.go, 40
  %i.gq = and i64 %i.gi, -1152920405095219201
  %i.gr = or i64 %i.gp, %i.gq
  store i64 %i.gr, ptr %i.gh, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit107

bb.ar:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.gs = icmp eq i32 %i.gl, 1048574
  br i1 %i.gs, label %bb.as, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit107, !prof !89

bb.as:                                            ; preds = %bb.ar
  %i.gt = or i64 %i.gi, 1152920405095219200
  store i64 %i.gt, ptr %i.gh, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit107 unwind label %bb.bt

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit107: ; preds = %bb.ar, %bb.aq, %bb.as
  %i.gu = load ptr, ptr %2, align 8, !tbaa !88    ; 5 uses
  store ptr %i.gu, ptr %20, align 8, !tbaa !88
  %i.gv = load i64, ptr %i.gu, align 8            ; 3 uses
  %i.gw = lshr i64 %i.gv, 40
  %i.gx = trunc nuw nsw i64 %i.gw to i32
  %i.gy = and i32 %i.gx, 1048575                  ; 3 uses
  %i.gz = icmp samesign ult i32 %i.gy, 1048574
  br i1 %i.gz, label %bb.at, label %bb.au, !prof !92

bb.at:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit107
  %i.ha = add nuw nsw i32 %i.gy, 1
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = shl nuw nsw i64 %i.hb, 40
  %i.hd = and i64 %i.gv, -1152920405095219201
  %i.he = or i64 %i.hc, %i.hd
  store i64 %i.he, ptr %i.gu, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit109

bb.au:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit107
  %i.hf = icmp eq i32 %i.gy, 1048574
  br i1 %i.hf, label %bb.av, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit109, !prof !89

bb.av:                                            ; preds = %bb.au
  %i.hg = or i64 %i.gv, 1152920405095219200
  store i64 %i.hg, ptr %i.gu, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit109 unwind label %bb.bu

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit109: ; preds = %bb.au, %bb.at, %bb.av
  store ptr %i.fu, ptr %21, align 8, !tbaa !88
  %i.hh = load i64, ptr %i.fu, align 8            ; 3 uses
  %i.hi = lshr i64 %i.hh, 40
  %i.hj = trunc nuw nsw i64 %i.hi to i32
  %i.hk = and i32 %i.hj, 1048575                  ; 3 uses
  %i.hl = icmp samesign ult i32 %i.hk, 1048574
  br i1 %i.hl, label %bb.aw, label %bb.ax, !prof !92

bb.aw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit109
  %i.hm = add nuw nsw i32 %i.hk, 1
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = shl nuw nsw i64 %i.hn, 40
  %i.hp = and i64 %i.hh, -1152920405095219201
  %i.hq = or i64 %i.ho, %i.hp
  store i64 %i.hq, ptr %i.fu, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit111

bb.ax:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit109
  %i.hr = icmp eq i32 %i.hk, 1048574
  br i1 %i.hr, label %bb.ay, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit111, !prof !89

bb.ay:                                            ; preds = %bb.ax
  %i.hs = or i64 %i.hh, 1152920405095219200
  store i64 %i.hs, ptr %i.fu, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit111 unwind label %bb.bv

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit111: ; preds = %bb.ax, %bb.aw, %bb.ay
  %i.ht = load i32, ptr %i.b, align 4, !tbaa !325
  invoke void @_ZN4cvc58internal6theory11quantifiers11SygusUnifRl29registerConditionalEnumeratorENS0_12NodeTemplateILb1EEES5_S5_j(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 %19, ptr noundef nonnull align 8 %20, ptr noundef nonnull align 8 %21, i32 noundef %i.ht)
          to label %bb.az unwind label %bb.bw

bb.az:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit111
  %i.hu = load ptr, ptr %21, align 8, !tbaa !88   ; 3 uses
  %i.hv = load i64, ptr %i.hu, align 8            ; 3 uses
  %i.hw = and i64 %i.hv, 1152920405095219200
  %.not.i.i112 = icmp eq i64 %i.hw, 1152920405095219200
  br i1 %.not.i.i112, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.ba, !prof !89

bb.ba:                                            ; preds = %bb.az
  %i.hx = add i64 %i.hv, 1152920405095219200
  %i.hy = and i64 %i.hx, 1152920405095219200      ; 2 uses
  %i.hz = and i64 %i.hv, -1152920405095219201
  %i.ia = or disjoint i64 %i.hy, %i.hz
  store i64 %i.ia, ptr %i.hu, align 8
  %i.ib = icmp eq i64 %i.hy, 0
  br i1 %i.ib, label %bb.bb, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !89

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ic = landingpad { ptr, i32 }
          catch ptr null
  %i.id = extractvalue { ptr, i32 } %i.ic, 0
  call void @__clang_call_terminate(ptr %i.id) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.az, %bb.ba, %bb.bb
  %i.ie = load ptr, ptr %20, align 8, !tbaa !88   ; 3 uses
  %i.if = load i64, ptr %i.ie, align 8            ; 3 uses
  %i.ig = and i64 %i.if, 1152920405095219200
  %.not.i.i113 = icmp eq i64 %i.ig, 1152920405095219200
  br i1 %.not.i.i113, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit114, label %bb.bd, !prof !89

bb.bd:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.ih = add i64 %i.if, 1152920405095219200
  %i.ii = and i64 %i.ih, 1152920405095219200      ; 2 uses
  %i.ij = and i64 %i.if, -1152920405095219201
  %i.ik = or disjoint i64 %i.ii, %i.ij
  store i64 %i.ik, ptr %i.ie, align 8
  %i.il = icmp eq i64 %i.ii, 0
  br i1 %i.il, label %bb.be, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit114, !prof !89

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ie)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit114 unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit114: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.bd, %bb.be
  %i.io = load ptr, ptr %19, align 8, !tbaa !88   ; 3 uses
  %i.ip = load i64, ptr %i.io, align 8            ; 3 uses
  %i.iq = and i64 %i.ip, 1152920405095219200
  %.not.i.i115 = icmp eq i64 %i.iq, 1152920405095219200
  br i1 %.not.i.i115, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit116, label %bb.bg, !prof !89

bb.bg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit114
  %i.ir = add i64 %i.ip, 1152920405095219200
  %i.is = and i64 %i.ir, 1152920405095219200      ; 2 uses
  %i.it = and i64 %i.ip, -1152920405095219201
  %i.iu = or disjoint i64 %i.is, %i.it
  store i64 %i.iu, ptr %i.io, align 8
  %i.iv = icmp eq i64 %i.is, 0
  br i1 %i.iv, label %bb.bh, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit116, !prof !89

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.io)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit116 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.iw = landingpad { ptr, i32 }
          catch ptr null
  %i.ix = extractvalue { ptr, i32 } %i.iw, 0
  call void @__clang_call_terminate(ptr %i.ix) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit116: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit114, %bb.bg, %bb.bh
  %i.iy = load ptr, ptr %i.dq, align 8, !tbaa !85 ; 3 uses
  %i.iz = load ptr, ptr %i.dr, align 8, !tbaa !91
  %.not.i117 = icmp eq ptr %i.iy, %i.iz
  br i1 %.not.i117, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit116
  %i.ja = load ptr, ptr %2, align 8, !tbaa !88    ; 5 uses
  store ptr %i.ja, ptr %i.iy, align 8, !tbaa !88
  %i.jb = load i64, ptr %i.ja, align 8            ; 3 uses
  %i.jc = lshr i64 %i.jb, 40
  %i.jd = trunc nuw nsw i64 %i.jc to i32
  %i.je = and i32 %i.jd, 1048575                  ; 3 uses
  %i.jf = icmp samesign ult i32 %i.je, 1048574
  br i1 %i.jf, label %bb.bk, label %bb.bl, !prof !92

bb.bk:                                            ; preds = %bb.bj
  %i.jg = add nuw nsw i32 %i.je, 1
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = shl nuw nsw i64 %i.jh, 40
  %i.jj = and i64 %i.jb, -1152920405095219201
  %i.jk = or i64 %i.ji, %i.jj
  store i64 %i.jk, ptr %i.ja, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

bb.bl:                                            ; preds = %bb.bj
  %i.jl = icmp eq i32 %i.je, 1048574
  br i1 %i.jl, label %bb.bm, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, !prof !89

bb.bm:                                            ; preds = %bb.bl
  %i.jm = or i64 %i.jb, 1152920405095219200
  store i64 %i.jm, ptr %i.ja, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ja)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i unwind label %bb.bt

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i: ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.jn = load ptr, ptr %i.dq, align 8, !tbaa !85
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  store ptr %i.jo, ptr %i.dq, align 8, !tbaa !85
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit

bb.bn:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit116
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.iy, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit unwind label %bb.bt

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, %bb.bn
  %i.jp = load i64, ptr %i.fu, align 8            ; 3 uses
  %i.jq = and i64 %i.jp, 1152920405095219200
  %.not.i.i120 = icmp eq i64 %i.jq, 1152920405095219200
  br i1 %.not.i.i120, label %bb.br, label %bb.bo, !prof !89

bb.bo:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %i.jr = add i64 %i.jp, 1152920405095219200
  %i.js = and i64 %i.jr, 1152920405095219200      ; 2 uses
  %i.jt = and i64 %i.jp, -1152920405095219201
  %i.ju = or disjoint i64 %i.js, %i.jt
  store i64 %i.ju, ptr %i.fu, align 8
  %i.jv = icmp eq i64 %i.js, 0
  br i1 %i.jv, label %bb.bp, label %bb.br, !prof !89

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fu)
          to label %bb.br unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jw = landingpad { ptr, i32 }
          catch ptr null
  %i.jx = extractvalue { ptr, i32 } %i.jw, 0
  call void @__clang_call_terminate(ptr %i.jx) #27
  unreachable

bb.br:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit, %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.cf

bb.bs:                                            ; preds = %bb.ap
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bt:                                            ; preds = %bb.bn, %bb.bm, %bb.as
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bu:                                            ; preds = %bb.av
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bv:                                            ; preds = %bb.ay
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit111
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #19
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pn.pn.a = phi { ptr, i32 } [ %22, %bb.bw ], [ %i.kb, %bb.bv ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #19
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bu
  %.pn38.a = phi { ptr, i32 } [ %.pn.pn.a, %bb.bx ], [ %i.ka, %bb.bu ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #19
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bt
  %.pn38.pn.a = phi { ptr, i32 } [ %i.jz, %bb.bt ], [ %.pn38.a, %bb.by ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #19
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bs
  %.pn38.pn = phi { ptr, i32 } [ %.pn38.pn.a, %bb.bz ], [ %i.jy, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.cg

.thread:                                          ; preds = %bb.ab, %bb.al
  %i.kc = load ptr, ptr %i.do, align 8, !tbaa !80 ; 2 uses
  %.not10.i.i.i.i122 = icmp eq ptr %i.kc, null
  br i1 %.not10.i.i.i.i122, label %.critedge.i132, label %.lr.ph.i.i.i.i123

.lr.ph.i.i.i.i123:                                ; preds = %.thread
  %i.kd = load ptr, ptr %2, align 8, !tbaa !88
  %i.ke = load i64, ptr %i.kd, align 8
  %i.kf = and i64 %i.ke, 1099511627775            ; 2 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.lr.ph.i.i.i.i123
  %.012.i.i.i.i124 = phi ptr [ %i.kc, %.lr.ph.i.i.i.i123 ], [ %.1.i.i.i.i129, %bb.cb ] ; 3 uses
  %.0811.i.i.i.i125 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i123 ], [ %.19.i.i.i.i126, %bb.cb ]
  %i.kg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i124, i64 32
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !88
  %i.ki = load i64, ptr %i.kh, align 8
  %i.kj = and i64 %i.ki, 1099511627775
  %i.kk = icmp samesign ult i64 %i.kj, %i.kf      ; 2 uses
  %.19.i.i.i.i126 = select i1 %i.kk, ptr %.0811.i.i.i.i125, ptr %.012.i.i.i.i124 ; 6 uses
  %.1.in.v.i.i.i.i127 = select i1 %i.kk, i64 24, i64 16
  %.1.in.i.i.i.i128 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i124, i64 %.1.in.v.i.i.i.i127
  %.1.i.i.i.i129 = load ptr, ptr %.1.in.i.i.i.i128, align 8, !tbaa !318 ; 2 uses
  %.not.i.i.i.i130 = icmp eq ptr %.1.i.i.i.i129, null
  br i1 %.not.i.i.i.i130, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i, label %bb.cb, !llvm.loop !553

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i: ; preds = %bb.cb
  %i.kl = icmp eq ptr %.19.i.i.i.i126, %i.dp
  br i1 %i.kl, label %.critedge.i132, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i
  %i.km = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i126, i64 32
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !88
  %i.ko = load i64, ptr %i.kn, align 8
  %i.kp = and i64 %i.ko, 1099511627775
  %i.kq = icmp samesign ult i64 %i.kf, %i.kp
  br i1 %i.kq, label %.critedge.i132, label %bb.cd

.critedge.i132:                                   ; preds = %bb.cc, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i, %.thread
  %.08.lcssa.i.i.i11.i133 = phi ptr [ %.19.i.i.i.i126, %bb.cc ], [ %.19.i.i.i.i126, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESt4lessIS3_ESaISt4pairIKS3_SA_EEE11lower_boundERSE_.exit.i ], [ %i.dp, %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr %2, ptr %8, align 8, !tbaa !324
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.kr = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEESt10_Select1stISD_ESt4lessIS3_ESaISD_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESO_IJEEEEESt17_Rb_tree_iteratorISD_ESt23_Rb_tree_const_iteratorISD_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr %.08.lcssa.i.i.i11.i133, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc134 unwind label %bb.ce

.noexc134:                                        ; preds = %.critedge.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.cd

bb.cd:                                            ; preds = %.noexc134, %bb.cc
  %.sroa.06.0.i131 = phi ptr [ %i.kr, %.noexc134 ], [ %.19.i.i.i.i126, %bb.cc ]
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i131, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr %i.ks, ptr %7, align 8, !tbaa !568
  %i.kt = invoke { ptr, i8 } @_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKjSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ks, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE6insertERKj.exit unwind label %bb.ce ; 0 uses

_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE6insertERKj.exit: ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cd, %.critedge.i132
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cf:                                            ; preds = %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE6insertERKj.exit, %bb.br
  %i.kv = load i32, ptr %i.b, align 4, !tbaa !325
  %i.kw = add i32 %i.kv, 1                        ; 3 uses
  store i32 %i.kw, ptr %i.b, align 4, !tbaa !325
  %i.kx = icmp ult i32 %i.kw, %i.dn
  br i1 %i.kx, label %bb.ab, label %._crit_edge, !llvm.loop !554

bb.cg:                                            ; preds = %bb.ce, %bb.ca, %bb.ah
  %.pn41 = phi { ptr, i32 } [ %i.ku, %bb.ce ], [ %.pn38.pn, %bb.ca ], [ %i.fk, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.ci

bb.ch:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_INS1_6theory11quantifiers8NodeRoleEbSt4lessIS6_ESaISt4pairIKS6_bEEES7_IS3_ESaIS9_IKS3_SD_EEEixERSF_.exit60, %_ZN4cvc58internal8TypeNodeD2Ev.exit87
  ret void

bb.ci:                                            ; preds = %bb.aa, %bb.cg, %bb.z, %bb.y
  %.pn41.pn.pn = phi { ptr, i32 } [ %i.ec, %bb.y ], [ %i.ed, %bb.z ], [ %.pn41, %bb.cg ], [ %i.ee, %bb.aa ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  resume { ptr, i32 } %.pn41.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_INS1_6theory11quantifiers8NodeRoleEbSt4lessIS6_ESaISt4pairIKS6_bEEES7_IS3_ESaIS9_IKS3_SD_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St3mapINS1_6theory11quantifiers8NodeRoleEbSt4lessIS9_ESaIS4_IKS9_bEEEESt10_Select1stISG_ESA_IS3_ESaISG_EE8_M_eraseEPSt13_Rb_tree_nodeISG_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St3mapINS1_6theory11quantifiers8NodeRoleEbSt4lessIS9_ESaIS4_IKS9_bEEEESt10_Select1stISG_ESA_IS3_ESaISG_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #27
  unreachable

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St3mapINS1_6theory11quantifiers8NodeRoleEbSt4lessIS9_ESaIS4_IKS9_bEEEESt10_Select1stISG_ESA_IS3_ESaISG_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapIN4cvc58internal6theory11quantifiers8NodeRoleEbSt4lessIS4_ESaISt4pairIKS4_bEEEixERS8_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !385    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !385
  %i.g = icmp slt i32 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !318 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIN4cvc58internal6theory11quantifiers8NodeRoleEbSt4lessIS4_ESaISt4pairIKS4_bEEE11lower_boundERS8_.exit, label %bb.b, !llvm.loop !12

_ZNSt3mapIN4cvc58internal6theory11quantifiers8NodeRoleEbSt4lessIS4_ESaISt4pairIKS4_bEEE11lower_boundERS8_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIN4cvc58internal6theory11quantifiers8NodeRoleEbSt4lessIS4_ESaISt4pairIKS4_bEEE11lower_boundERS8_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i32, ptr %i.i, align 4, !tbaa !385
  %i.k = icmp slt i32 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIN4cvc58internal6theory11quantifiers8NodeRoleESt4pairIKS4_bESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS6_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIN4cvc58internal6theory11quantifiers8NodeRoleEbSt4lessIS4_ESaISt4pairIKS4_bEEE11lower_boundERS8_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIN4cvc58internal6theory11quantifiers8NodeRoleEbSt4lessIS4_ESaISt4pairIKS4_bEEE11lower_boundERS8_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i32, ptr %1, align 4, !tbaa !385
  store i32 %i.n, ptr %i.m, align 4, !tbaa !570
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  store i8 0, ptr %i.o, align 4, !tbaa !571
  %i.p = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4cvc58internal6theory11quantifiers8NodeRoleESt4pairIKS4_bESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIN4cvc58internal6theory11quantifiers8NodeRoleESt4pairIKS4_bESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.d:                                             ; preds = %.critedge
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i32, ptr %i.m, align 4, !tbaa !385
  %i.v = load i32, ptr %i.t, align 4, !tbaa !385
  %i.w = icmp slt i32 %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.x = phi i1 [ %i.w, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #19
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !83
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !83
  br label %_ZNSt8_Rb_treeIN4cvc58internal6theory11quantifiers8NodeRoleESt4pairIKS4_bESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS6_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit

_ZNSt8_Rb_treeIN4cvc58internal6theory11quantifiers8NodeRoleESt4pairIKS4_bESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 40) #28
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 40) #28
  br label %_ZNSt8_Rb_treeIN4cvc58internal6theory11quantifiers8NodeRoleESt4pairIKS4_bESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS6_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit

_ZNSt8_Rb_treeIN4cvc58internal6theory11quantifiers8NodeRoleESt4pairIKS4_bESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS6_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit: ; preds = %bb.g, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 36
  ret ptr %i.ac
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers11SygusUnifRl29registerConditionalEnumeratorENS0_12NodeTemplateILb1EEES5_S5_j(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef align 8 %1, ptr noundef align 8 %2, ptr noundef align 8 %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::tuple.845", align 8    ; 4 uses
  %6 = alloca %"class.std::tuple.848", align 1    ; 3 uses
  %7 = alloca %"class.std::tuple.845", align 8    ; 4 uses
  %8 = alloca %"class.std::tuple.848", align 1    ; 3 uses
  %9 = alloca %"class.std::tuple.845", align 8    ; 4 uses
  %10 = alloca %"class.std::tuple.848", align 1   ; 3 uses
  %11 = alloca %"class.std::tuple.845", align 8   ; 4 uses
  %12 = alloca %"class.std::tuple.848", align 1   ; 3 uses
  %13 = alloca %"struct.std::__detail::_AllocNode.920", align 8 ; 4 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers11SygusUnifRl16DecisionTreeInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE4findERSB_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !88
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 1099511627775              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 1099511627775
  %i.l = icmp samesign ult i64 %i.k, %i.g         ; 2 uses
  %.19.i.i.i = select i1 %i.l, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.l, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !318 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers11SygusUnifRl16DecisionTreeInfoEESt10_Select1stISA_ESt4lessIS3_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.b, !llvm.loop !11

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers11SygusUnifRl16DecisionTreeInfoEESt10_Select1stISA_ESt4lessIS3_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %bb.b
  %i.m = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.m, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers11SygusUnifRl16DecisionTreeInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE4findERSB_.exit.thread, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers11SygusUnifRl16DecisionTreeInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE4findERSB_.exit

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers11SygusUnifRl16DecisionTreeInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE4findERSB_.exit: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers11SygusUnifRl16DecisionTreeInfoEESt10_Select1stISA_ESt4lessIS3_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.p = load i64, ptr %i.o, align 8
  %i.q = and i64 %i.p, 1099511627775
  %i.r = icmp samesign ult i64 %i.g, %i.q
  br i1 %i.r, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers11SygusUnifRl16DecisionTreeInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE4findERSB_.exit.thread, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit64

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers11SygusUnifRl16DecisionTreeInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE4findERSB_.exit.thread: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers11SygusUnifRl16DecisionTreeInfoEESt10_Select1stISA_ESt4lessIS3_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, %bb.a, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers11SygusUnifRl16DecisionTreeInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE4findERSB_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store ptr %i.s, ptr %13, align 8, !tbaa !383
  %i.t = call { ptr, i8 } @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SJ_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !324  ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !324  ; 6 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = ashr i64 %i.aa, 5                       ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i.i.i5, label %._crit_edge.i.i.i

.lr.ph.i.i.i5:                                    ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers11SygusUnifRl16DecisionTreeInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE4findERSB_.exit.thread
  %i.ad = load ptr, ptr %3, align 8, !tbaa !88    ; 4 uses
  %i.ae = and i64 %i.aa, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.v, i64 %i.ae ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i5
end_hunk_0
