Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/theory_pb?download=true
inline.NumInlined: 3714
inline.NumDeleted: 1173
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dsmergeEjjPKN3sat7literalEjS7_R7svectorIS5_jE:bb.a

bb.ab:                                            ; preds = %split359
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @__cxa_free_exception(ptr %i.da) #26
  br label %.body180

bb.ac:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i229
  unreachable

bb.ad:                                            ; preds = %bb.x
  store i32 2, ptr %i.cz, align 4, !tbaa !38
  %i.du = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 0, ptr %i.du, align 4, !tbaa !38
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  store ptr %i.dv, ptr %16, align 8, !tbaa !641
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dx = load i32, ptr %i.cs, align 4, !tbaa !38
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !38
  store i32 1, ptr %i.dw, align 4, !tbaa !38
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.dz = load i32, ptr %i.cz, align 4, !tbaa !38
  %i.ea = icmp eq i32 %i.dz, 1
  br i1 %i.ea, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.eb = load i32, ptr %i.cz, align 4, !tbaa !38 ; 3 uses
  %i.ec = mul i32 %i.eb, 3
  %i.ed = add i32 %i.ec, 1
  %i.ee = lshr i32 %i.ed, 1                       ; 3 uses
  %i.ef = shl i32 %i.ee, 2
  %i.eg = add i32 %i.ef, 8                        ; 2 uses
  %.not.i224.1 = icmp ugt i32 %i.ee, %i.eb
  br i1 %.not.i224.1, label %bb.af, label %split359

bb.af:                                            ; preds = %bb.ae
  %i.eh = shl i32 %i.eb, 2
  %i.ei = add i32 %i.eh, 8
  %.not27.i233.1 = icmp ugt i32 %i.eg, %i.ei
  br i1 %.not27.i233.1, label %bb.ag, label %split359

bb.ag:                                            ; preds = %bb.af
  %i.ej = zext i32 %i.eg to i64
  %i.ek = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.cz, i64 noundef %i.ej)
          to label %.noexc179.1 unwind label %bb.at ; 3 uses

.noexc179.1:                                      ; preds = %bb.ag
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  store ptr %i.el, ptr %16, align 8, !tbaa !641
  store i32 %i.ee, ptr %i.ek, align 4, !tbaa !38
  %.phi.trans.insert.i.i.i.i177.1 = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %.pre2.i.i.i.i178.1 = load i32, ptr %.phi.trans.insert.i.i.i.i177.1, align 4, !tbaa !38
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ad, %.noexc179.1
  %i.em = phi ptr [ %i.el, %.noexc179.1 ], [ %i.dv, %bb.ad ] ; 5 uses
  %i.en = phi i32 [ %.pre2.i.i.i.i178.1, %.noexc179.1 ], [ 1, %bb.ad ] ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 -4
  %i.ep = zext i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.ep
  %i.er = load i32, ptr %i.dy, align 4, !tbaa !38
  store i32 %i.er, ptr %i.eq, align 4, !tbaa !38
  %i.es = add i32 %i.en, 1                        ; 3 uses
  store i32 %i.es, ptr %i.eo, align 4, !tbaa !38
  %i.et = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.eu = getelementptr inbounds i8, ptr %i.em, i64 -8
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !38
  %i.ew = icmp eq i32 %i.es, %i.ev
  br i1 %i.ew, label %bb.ai, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i171.2

bb.ai:                                            ; preds = %bb.ah
  %i.ex = getelementptr inbounds i8, ptr %i.em, i64 -8 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !38 ; 3 uses
  %i.ez = mul i32 %i.ey, 3
  %i.fa = add i32 %i.ez, 1
  %i.fb = lshr i32 %i.fa, 1                       ; 3 uses
  %i.fc = shl i32 %i.fb, 2
  %i.fd = add i32 %i.fc, 8                        ; 2 uses
  %.not.i224.2 = icmp ugt i32 %i.fb, %i.ey
  br i1 %.not.i224.2, label %bb.aj, label %split359

bb.aj:                                            ; preds = %bb.ai
  %i.fe = shl i32 %i.ey, 2
  %i.ff = add i32 %i.fe, 8
  %.not27.i233.2 = icmp ugt i32 %i.fd, %i.ff
  br i1 %.not27.i233.2, label %bb.ak, label %split359

bb.ak:                                            ; preds = %bb.aj
  %i.fg = zext i32 %i.fd to i64
  %i.fh = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fg)
          to label %.noexc179.2 unwind label %bb.at ; 3 uses

.noexc179.2:                                      ; preds = %bb.ak
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  store ptr %i.fi, ptr %16, align 8, !tbaa !641
  store i32 %i.fb, ptr %i.fh, align 4, !tbaa !38
  %.phi.trans.insert.i.i.i.i177.2 = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %.pre2.i.i.i.i178.2 = load i32, ptr %.phi.trans.insert.i.i.i.i177.2, align 4, !tbaa !38
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i171.2

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i171.2: ; preds = %.noexc179.2, %bb.ah
  %i.fj = phi ptr [ %i.fi, %.noexc179.2 ], [ %i.em, %bb.ah ] ; 3 uses
  %i.fk = phi i32 [ %.pre2.i.i.i.i178.2, %.noexc179.2 ], [ %i.es, %bb.ah ] ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %i.fj, i64 -4
  %i.fm = zext i32 %i.fk to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fm
  %i.fo = load i32, ptr %i.et, align 4, !tbaa !38
  store i32 %i.fo, ptr %i.fn, align 4, !tbaa !38
  %i.fp = add i32 %i.fk, 1
  store i32 %i.fp, ptr %i.fl, align 4, !tbaa !38
  %i.fq = load ptr, ptr %i.cy, align 8, !tbaa !797, !nonnull !90, !align !91
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !799, !nonnull !90, !align !91
  %i.ft = invoke noundef ptr @_ZN3smt9theory_pb7justifyERK7svectorIN3sat7literalEjE(ptr noundef nonnull align 8 dereferenceable(968) %i.fs, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i171.2
  %i.fu = invoke noundef ptr @_ZN3smt7context9mk_clauseEjPN3sat7literalEPNS_13justificationENS_11clause_kindEPNS_13clause_del_ehE(ptr noundef nonnull align 8 dereferenceable(10728) %i.fq, i32 noundef 3, ptr noundef nonnull %i.fj, ptr noundef %i.ft, i32 noundef 0, ptr noundef null)
          to label %bb.am unwind label %bb.ap     ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.fv = load ptr, ptr %16, align 8, !tbaa !641  ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i5.i, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fw)
          to label %bb.aq unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  %i.fy = extractvalue { ptr, i32 } %i.fx, 0
  call void @__clang_call_terminate(ptr %i.fy) #27
  unreachable

bb.ap:                                            ; preds = %bb.al, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i171.2
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %.body180

bb.aq:                                            ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.ga = load ptr, ptr %22, align 8, !tbaa !641  ; 2 uses
  %.not.i.i13.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i13.i, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gb)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.i unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.i:       ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE.exit

bb.at:                                            ; preds = %bb.ak, %bb.ag, %bb.x
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body180

.body180:                                         ; preds = %bb.at, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i231, %bb.ap
  %eh.lpad-body181 = phi { ptr, i32 } [ %i.fz, %bb.ap ], [ %i.ge, %bb.at ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i231 ], [ %i.dt, %bb.ab ]
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %common.resume

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE.exit: ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit103, %.lr.ph.i.2, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit103.thread, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.i
  %i.gf = add i32 %.085298, 1                     ; 2 uses
  %.not96 = icmp ugt i32 %i.gf, %4
  br i1 %.not96, label %.critedge, label %bb.k, !llvm.loop !1105

._crit_edge303:                                   ; preds = %.critedge, %.preheader276, %.preheader276.thread, %.preheader275
  %.pr = load i32, ptr %i.c, align 8, !tbaa !750
  %.not92 = icmp eq i32 %.pr, 0
  br i1 %.not92, label %bb.dq, label %.thread

.thread:                                          ; preds = %._crit_edge, %._crit_edge303
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  store ptr null, ptr %27, align 8, !tbaa !641
  br i1 %.not310, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, label %.lr.ph308

.lr.ph308:                                        ; preds = %.thread
  %i.gg = getelementptr inbounds nuw i8, ptr %24, i64 4
  %i.gh = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gl = zext i32 %4 to i64                      ; 3 uses
  %i.gm = zext i32 %2 to i64                      ; 2 uses
  %wide.trip.count336 = zext i32 %1 to i64
  %.not314 = icmp eq i32 %2, 0
  br label %bb.aw

.loopexit274:                                     ; preds = %bb.dp, %bb.bm
  %indvars.iv.next330 = add i32 %indvars.iv329, 1
  %exitcond337.not = icmp eq i64 %indvars.iv.next334, %wide.trip.count336
  br i1 %exitcond337.not, label %._crit_edge309, label %bb.aw, !llvm.loop !1106

._crit_edge309:                                   ; preds = %.loopexit274
  %.pre390 = load ptr, ptr %27, align 8, !tbaa !641 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre390, null
  br i1 %.not.i.i, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %._crit_edge309
  %i.gn = getelementptr inbounds i8, ptr %.pre390, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gn)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit:         ; preds = %.thread, %._crit_edge309, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  br label %bb.dq

bb.aw:                                            ; preds = %.lr.ph308, %.loopexit274
  %indvars.iv333 = phi i64 [ 0, %.lr.ph308 ], [ %indvars.iv.next334, %.loopexit274 ] ; 9 uses
  %indvars.iv329 = phi i32 [ 1, %.lr.ph308 ], [ %indvars.iv.next330, %.loopexit274 ] ; 2 uses
  %umin = call i32 @llvm.umin.i32(i32 %2, i32 %indvars.iv329)
  %i.gq = load ptr, ptr %27, align 8, !tbaa !641  ; 5 uses
  %.not.i = icmp eq ptr %i.gq, null               ; 2 uses
  br i1 %.not.i, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 -4
  store i32 0, ptr %i.gr, align 4, !tbaa !38
  br label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit

_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit:     ; preds = %bb.aw, %bb.ax
  %i.gs = load ptr, ptr %6, align 8, !tbaa !641
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv333
  %.sroa.012.0.copyload = load i32, ptr %i.gt, align 4, !tbaa !38 ; 2 uses
  switch i32 %.sroa.012.0.copyload, label %bb.az [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit105
    i32 1, label %bb.ay
  ]

bb.ay:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit105

bb.az:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit
  %i.gu = xor i32 %.sroa.012.0.copyload, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit105

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit105: ; preds = %bb.az, %bb.ay, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit
  %.sroa.06.0.i104 = phi i32 [ %i.gu, %bb.az ], [ 0, %bb.ay ], [ 1, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit ]
  br i1 %.not.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit105
  %i.gv = getelementptr inbounds i8, ptr %i.gq, i64 -4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !38 ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %i.gq, i64 -8
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !38
  %i.gz = icmp eq i32 %i.gw, %i.gy
  br i1 %i.gz, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit105
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %.noexc unwind label %bb.bg

.noexc:                                           ; preds = %bb.bb
  %.pre.i106 = load ptr, ptr %27, align 8, !tbaa !641 ; 2 uses
  %.phi.trans.insert.i107 = getelementptr inbounds i8, ptr %.pre.i106, i64 -4
  %.pre2.i108 = load i32, ptr %.phi.trans.insert.i107, align 4, !tbaa !38
  br label %bb.bc

bb.bc:                                            ; preds = %.noexc, %bb.ba
  %i.ha = phi i32 [ %.pre2.i108, %.noexc ], [ %i.gw, %bb.ba ] ; 2 uses
  %i.hb = phi ptr [ %.pre.i106, %.noexc ], [ %i.gq, %bb.ba ] ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %i.hb, i64 -4
  %i.hd = zext i32 %i.ha to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.hd
  store i32 %.sroa.06.0.i104, ptr %i.he, align 4, !tbaa !38
  %i.hf = add i32 %i.ha, 1
  store i32 %i.hf, ptr %i.hc, align 4, !tbaa !38
  %.not93 = icmp samesign ult i64 %indvars.iv333, %i.gm
  br i1 %.not93, label %bb.bi, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hg = load ptr, ptr %6, align 8, !tbaa !641
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv333
  %.sroa.09.0.copyload = load i32, ptr %i.hh, align 4, !tbaa !38 ; 2 uses
  switch i32 %.sroa.09.0.copyload, label %bb.bf [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit111
    i32 1, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit111

bb.bf:                                            ; preds = %bb.bd
  %i.hi = xor i32 %.sroa.09.0.copyload, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit111

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit111: ; preds = %bb.bf, %bb.be, %bb.bd
  %.sroa.06.0.i110 = phi i32 [ %i.hi, %bb.bf ], [ 0, %bb.be ], [ 1, %bb.bd ]
  %i.hj = sub nuw nsw i64 %indvars.iv333, %i.gm
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.hj
  %.sroa.08.0.copyload = load i32, ptr %i.hk, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  store i32 %.sroa.06.0.i110, ptr %24, align 4, !tbaa !38
  store i32 %.sroa.08.0.copyload, ptr %i.gg, align 4, !tbaa !38
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %24)
          to label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEN3sat7literalES5_.exit unwind label %bb.bh

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEN3sat7literalES5_.exit: ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit111
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.bi

bb.bg:                                            ; preds = %bb.bb
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bh:                                            ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit114, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit111
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bi:                                            ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEN3sat7literalES5_.exit, %bb.bc
  %.not94 = icmp samesign ult i64 %indvars.iv333, %i.gl
  br i1 %.not94, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hn = load ptr, ptr %6, align 8, !tbaa !641
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv333
  %.sroa.06.0.copyload = load i32, ptr %i.ho, align 4, !tbaa !38 ; 2 uses
  switch i32 %.sroa.06.0.copyload, label %bb.bl [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit114
    i32 1, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit114

bb.bl:                                            ; preds = %bb.bj
  %i.hp = xor i32 %.sroa.06.0.copyload, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit114

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit114: ; preds = %bb.bl, %bb.bk, %bb.bj
  %.sroa.06.0.i113 = phi i32 [ %i.hp, %bb.bl ], [ 0, %bb.bk ], [ 1, %bb.bj ]
  %i.hq = sub nuw nsw i64 %indvars.iv333, %i.gl
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.hq
  %.sroa.0.0.copyload = load i32, ptr %i.hr, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  store i32 %.sroa.06.0.i113, ptr %23, align 4, !tbaa !38
  store i32 %.sroa.0.0.copyload, ptr %i.gh, align 4, !tbaa !38
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %23)
          to label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEN3sat7literalES5_.exit116 unwind label %bb.bh

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEN3sat7literalES5_.exit116: ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit114
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEN3sat7literalES5_.exit116, %bb.bi
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 1 ; 2 uses
  br i1 %.not314, label %.loopexit274, label %.lr.ph306.preheader

.lr.ph306.preheader:                              ; preds = %bb.bm
  %wide.trip.count331 = zext i32 %umin to i64
  br label %.lr.ph306

.lr.ph306:                                        ; preds = %.lr.ph306.preheader, %bb.dp
  %indvars.iv326 = phi i64 [ 0, %.lr.ph306.preheader ], [ %indvars.iv.next327, %bb.dp ] ; 3 uses
  %28 = sub nuw nsw i64 %indvars.iv333, %indvars.iv326 ; 2 uses
  %i.hs = icmp samesign ult i64 %28, %i.gl
  br i1 %i.hs, label %bb.bn, label %bb.dp

bb.bn:                                            ; preds = %.lr.ph306
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv326
  %i.hu = load ptr, ptr %27, align 8, !tbaa !641  ; 4 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hw = getelementptr inbounds i8, ptr %i.hu, i64 -4
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !38 ; 5 uses
  %i.hy = getelementptr inbounds i8, ptr %i.hu, i64 -8 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !38
  %i.ia = icmp eq i32 %i.hx, %i.hz
  br i1 %i.ia, label %bb.bq, label %bb.bz

bb.bp:                                            ; preds = %bb.bn
  %i.ib = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc130 unwind label %.loopexit.split-lp ; 3 uses

.noexc130:                                        ; preds = %bb.bp
  store i32 2, ptr %i.ib, align 4, !tbaa !38
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  store i32 0, ptr %i.ic, align 4, !tbaa !38
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 2 uses
  store ptr %i.id, ptr %27, align 8, !tbaa !641
  br label %.noexc120

bb.bq:                                            ; preds = %bb.bo
  %i.ie = mul i32 %i.hx, 3
  %i.if = add i32 %i.ie, 1
  %i.ig = lshr i32 %i.if, 1                       ; 3 uses
  %i.ih = shl i32 %i.ig, 2
  %i.ii = add i32 %i.ih, 8                        ; 2 uses
  %.not.i127 = icmp ugt i32 %i.ig, %i.hx
  br i1 %.not.i127, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ij = shl i32 %i.hx, 2
  %i.ik = add i32 %i.ij, 8
  %.not27.i = icmp ugt i32 %i.ii, %i.ik
  br i1 %.not27.i, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.il = call ptr @__cxa_allocate_exception(i64 40) #26 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.il, align 8, !tbaa !639
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 24 ; 3 uses
  store ptr %i.in, ptr %i.im, align 8, !tbaa !640
  %i.io = load ptr, ptr %20, align 8, !tbaa !55   ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %bb.bu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.ir = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !56 ; 3 uses
  %i.it = icmp ult i64 %i.is, 16
  call void @llvm.assume(i1 %i.it)
  %i.iu = add nuw nsw i64 %i.is, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.in, ptr noundef nonnull align 8 dereferenceable(1) %i.ip, i64 %i.iu, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bt
  store ptr %i.io, ptr %i.im, align 8, !tbaa !55
  %i.iv = load i64, ptr %i.ip, align 8, !tbaa !57
  store i64 %i.iv, ptr %i.in, align 8, !tbaa !57
  %.phi.trans.insert.i128 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %.pre.i129 = load i64, ptr %.phi.trans.insert.i128, align 8, !tbaa !56
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.bu
  %i.iw = phi i64 [ %i.is, %bb.bu ], [ %.pre.i129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ix = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store i64 %i.iw, ptr %i.iy, align 8, !tbaa !56
  store ptr %i.ip, ptr %20, align 8, !tbaa !55
  store i64 0, ptr %i.ix, align 8, !tbaa !56
  store i8 0, ptr %i.ip, align 8, !tbaa !57
  invoke void @__cxa_throw(ptr nonnull %i.il, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #29
          to label %bb.by unwind label %bb.bv

bb.bv:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.iz = landingpad { ptr, i32 }
          cleanup
  %i.ja = load ptr, ptr %20, align 8, !tbaa !55   ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.ip
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.bv
  %i.jc = load i64, ptr %i.ip, align 8, !tbaa !57
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %.body

bb.bw:                                            ; preds = %bb.bs
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @__cxa_free_exception(ptr %i.il) #26
  br label %.body

bb.bx:                                            ; preds = %bb.br
  %i.jf = zext i32 %i.ii to i64
  %i.jg = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.hy, i64 noundef %i.jf)
          to label %.noexc131 unwind label %.loopexit.split-lp ; 2 uses

.noexc131:                                        ; preds = %bb.bx
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 2 uses
  store ptr %i.jh, ptr %27, align 8, !tbaa !641
  store i32 %i.ig, ptr %i.jg, align 4, !tbaa !38
  br label %.noexc120

bb.by:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc120:                                        ; preds = %.noexc131, %.noexc130
  %.pre.i117 = phi ptr [ %i.jh, %.noexc131 ], [ %i.id, %.noexc130 ] ; 2 uses
  %.phi.trans.insert.i118 = getelementptr inbounds i8, ptr %.pre.i117, i64 -4
  %.pre2.i119 = load i32, ptr %.phi.trans.insert.i118, align 4, !tbaa !38
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bo, %.noexc120
  %i.ji = phi i32 [ %.pre2.i119, %.noexc120 ], [ %i.hx, %bb.bo ] ; 2 uses
  %i.jj = phi ptr [ %.pre.i117, %.noexc120 ], [ %i.hu, %bb.bo ] ; 4 uses
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 -4
  %i.jl = zext i32 %i.ji to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.jl
  %i.jn = load i32, ptr %i.ht, align 4, !tbaa !38
  store i32 %i.jn, ptr %i.jm, align 4, !tbaa !38
  %i.jo = add i32 %i.ji, 1                        ; 6 uses
  store i32 %i.jo, ptr %i.jk, align 4, !tbaa !38
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %28
  %i.jq = getelementptr inbounds i8, ptr %i.jj, i64 -8 ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !38
  %i.js = icmp eq i32 %i.jo, %i.jr
  br i1 %i.js, label %bb.ca, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i

bb.ca:                                            ; preds = %bb.bz
  %i.jt = mul i32 %i.jo, 3
  %i.ju = add i32 %i.jt, 1
  %i.jv = lshr i32 %i.ju, 1                       ; 3 uses
  %i.jw = shl i32 %i.jv, 2
  %i.jx = add i32 %i.jw, 8                        ; 2 uses
  %.not.i132 = icmp ugt i32 %i.jv, %i.jo
  br i1 %.not.i132, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.jy = shl i32 %i.jo, 2
  %i.jz = add i32 %i.jy, 8
  %.not27.i141 = icmp ugt i32 %i.jx, %i.jz
  br i1 %.not27.i141, label %bb.ch, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.ka = call ptr @__cxa_allocate_exception(i64 40) #26 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.cd unwind label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.ka, align 8, !tbaa !639
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 24 ; 3 uses
  store ptr %i.kc, ptr %i.kb, align 8, !tbaa !640
  %i.kd = load ptr, ptr %18, align 8, !tbaa !55   ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %bb.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134

bb.ce:                                            ; preds = %bb.cd
  %i.kg = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !56 ; 3 uses
  %i.ki = icmp ult i64 %i.kh, 16
  call void @llvm.assume(i1 %i.ki)
  %i.kj = add nuw nsw i64 %i.kh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kc, ptr noundef nonnull align 8 dereferenceable(1) %i.ke, i64 %i.kj, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134: ; preds = %bb.cd
  store ptr %i.kd, ptr %i.kb, align 8, !tbaa !55
  %i.kk = load i64, ptr %i.ke, align 8, !tbaa !57
  store i64 %i.kk, ptr %i.kc, align 8, !tbaa !57
  %.phi.trans.insert.i135 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.pre.i136 = load i64, ptr %.phi.trans.insert.i135, align 8, !tbaa !56
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i137

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i137: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134, %bb.ce
  %i.kl = phi i64 [ %i.kh, %bb.ce ], [ %.pre.i136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134 ]
  %i.km = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  store i64 %i.kl, ptr %i.kn, align 8, !tbaa !56
  store ptr %i.ke, ptr %18, align 8, !tbaa !55
  store i64 0, ptr %i.km, align 8, !tbaa !56
  store i8 0, ptr %i.ke, align 8, !tbaa !57
  invoke void @__cxa_throw(ptr nonnull %i.ka, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #29
          to label %bb.ci unwind label %bb.cf

bb.cf:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i137
  %i.ko = landingpad { ptr, i32 }
          cleanup
  %i.kp = load ptr, ptr %18, align 8, !tbaa !55   ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.ke
  br i1 %i.kq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i138: ; preds = %bb.cf
  %i.kr = load i64, ptr %i.ke, align 8, !tbaa !57
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.ks) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i139: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %.body

bb.cg:                                            ; preds = %bb.cc
  %i.kt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @__cxa_free_exception(ptr %i.ka) #26
  br label %.body

bb.ch:                                            ; preds = %bb.cb
  %i.ku = zext i32 %i.jx to i64
  %i.kv = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.jq, i64 noundef %i.ku)
          to label %.noexc124 unwind label %.loopexit.split-lp ; 3 uses

bb.ci:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i137
  unreachable

.noexc124:                                        ; preds = %bb.ch
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8 ; 2 uses
  store ptr %i.kw, ptr %27, align 8, !tbaa !641
  store i32 %i.jv, ptr %i.kv, align 4, !tbaa !38
  %.phi.trans.insert.i122.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.kv, i64 4
  %.pre2.i123.pre = load i32, ptr %.phi.trans.insert.i122.phi.trans.insert, align 4, !tbaa !38
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i:   ; preds = %bb.bz, %.noexc124
  %i.kx = phi i32 [ %.pre2.i123.pre, %.noexc124 ], [ %i.jo, %bb.bz ] ; 2 uses
  %i.ky = phi ptr [ %i.kw, %.noexc124 ], [ %i.jj, %bb.bz ] ; 5 uses
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 -4
  %i.la = zext i32 %i.kx to i64
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.la
  %i.lc = load i32, ptr %i.jp, align 4, !tbaa !38
  store i32 %i.lc, ptr %i.lb, align 4, !tbaa !38
  %i.ld = add i32 %i.kx, 1                        ; 6 uses
  store i32 %i.ld, ptr %i.kz, align 4, !tbaa !38
  %.not.i147 = icmp eq i32 %i.ld, 0
  br i1 %.not.i147, label %_ZN7svectorIN3sat7literalEjEC2EjPKS1_.exit.i159.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i
  %wide.trip.count.i = zext i32 %i.ld to i64      ; 3 uses
  br label %.lr.ph.i148

bb.cj:                                            ; preds = %.lr.ph.i148
  %indvars.iv.next.i151 = add nuw nsw i64 %indvars.iv.i149, 1 ; 2 uses
  %exitcond.not.i152 = icmp eq i64 %indvars.iv.next.i151, %wide.trip.count.i
  br i1 %exitcond.not.i152, label %._crit_edge.i153, label %.lr.ph.i148, !llvm.loop !21

.lr.ph.i148:                                      ; preds = %bb.cj, %.lr.ph.preheader.i
  %indvars.iv.i149 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i151, %bb.cj ] ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i149
  %.sroa.0.0.copyload.i150 = load i32, ptr %i.le, align 4, !tbaa !38
  %i.lf = icmp eq i32 %.sroa.0.0.copyload.i150, 0
  br i1 %i.lf, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseERK7svectorIN3sat7literalEjE.exit, label %bb.cj

._crit_edge.i153:                                 ; preds = %bb.cj
  %i.lg = load i32, ptr %i.gi, align 8, !tbaa !800
  %i.lh = add i32 %i.lg, 1
  store i32 %i.lh, ptr %i.gi, align 8, !tbaa !800
  %i.li = load i32, ptr %i.gj, align 4, !tbaa !801
  %i.lj = add i32 %i.li, %i.ld
  store i32 %i.lj, ptr %i.gj, align 4, !tbaa !801
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store ptr null, ptr %17, align 8, !tbaa !641
  br label %.lr.ph.i.i.i154

.lr.ph.i.i.i154:                                  ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i156, %._crit_edge.i153
  %i.lk = phi ptr [ null, %._crit_edge.i153 ], [ %i.nb, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i156 ] ; 5 uses
  %indvars.iv.i.i.i155 = phi i64 [ 0, %._crit_edge.i153 ], [ %indvars.iv.next.i.i.i157, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i156 ] ; 2 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i.i.i155
  %i.lm = icmp eq ptr %i.lk, null
  br i1 %i.lm, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph.i.i.i154
  %i.ln = getelementptr inbounds i8, ptr %i.lk, i64 -4
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !38 ; 2 uses
  %i.lp = getelementptr inbounds i8, ptr %i.lk, i64 -8
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !38
  %i.lr = icmp eq i32 %i.lo, %i.lq
  br i1 %i.lr, label %bb.cm, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i156

bb.cl:                                            ; preds = %.lr.ph.i.i.i154
  %i.ls = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc219 unwind label %.loopexit ; 3 uses

.noexc219:                                        ; preds = %bb.cl
  store i32 2, ptr %i.ls, align 4, !tbaa !38
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  store i32 0, ptr %i.lt, align 4, !tbaa !38
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 8 ; 2 uses
  store ptr %i.lu, ptr %17, align 8, !tbaa !641
  br label %.noexc165

bb.cm:                                            ; preds = %bb.ck
  %i.lv = getelementptr inbounds i8, ptr %i.lk, i64 -8 ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !38 ; 3 uses
  %i.lx = mul i32 %i.lw, 3
  %i.ly = add i32 %i.lx, 1
  %i.lz = lshr i32 %i.ly, 1                       ; 3 uses
  %i.ma = shl i32 %i.lz, 2
  %i.mb = add i32 %i.ma, 8                        ; 2 uses
  %.not.i209 = icmp ugt i32 %i.lz, %i.lw
  br i1 %.not.i209, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.mc = shl i32 %i.lw, 2
  %i.md = add i32 %i.mc, 8
  %.not27.i218 = icmp ugt i32 %i.mb, %i.md
  br i1 %.not27.i218, label %bb.ct, label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.me = call ptr @__cxa_allocate_exception(i64 40) #26 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.cp unwind label %bb.cs

bb.cp:                                            ; preds = %bb.co
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.me, align 8, !tbaa !639
end_hunk_0
