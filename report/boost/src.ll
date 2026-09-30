Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/src?download=true
inline.NumInlined: 7222
inline.NumDeleted: 1430
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 62
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_numberILb1ELc45ELNS0_16number_precisionE2EEEPKcS8_St17integral_constantIbXT_EES9_IcXT0_EES9_IS6_XT1_EE:bb.a

.lr.ph552:                                        ; preds = %.lr.ph552.prol.loopexit, %bb.ac
  %.11428550 = phi ptr [ %i.ee, %bb.ac ], [ %.11428550.unr, %.lr.ph552.prol.loopexit ] ; 9 uses
  %i.dk = load i8, ptr %.11428550, align 1, !tbaa !93 ; 2 uses
  %i.dl = add i8 %i.dk, -48
  %i.dm = icmp ult i8 %i.dl, 10
  br i1 %i.dm, label %.lr.ph552.1, label %.loopexit, !prof !251

.loopexit.split.loop.exit:                        ; preds = %.lr.ph552.3
  %i.dn = getelementptr inbounds nuw i8, ptr %.11428550, i64 3
  br label %.loopexit

.loopexit.split.loop.exit660:                     ; preds = %.lr.ph552.2
  %i.do = getelementptr inbounds nuw i8, ptr %.11428550, i64 2
  br label %.loopexit

.loopexit.split.loop.exit663:                     ; preds = %.lr.ph552.1
  %i.dp = getelementptr inbounds nuw i8, ptr %.11428550, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph552.prol, %.loopexit.split.loop.exit, %.loopexit.split.loop.exit660, %.loopexit.split.loop.exit663, %.lr.ph552
  %.11428550.lcssa = phi ptr [ %.11428550, %.lr.ph552 ], [ %i.dp, %.loopexit.split.loop.exit663 ], [ %i.do, %.loopexit.split.loop.exit660 ], [ %i.dn, %.loopexit.split.loop.exit ], [ %.11428550.prol, %.lr.ph552.prol ] ; 2 uses
  %.lcssa = phi i8 [ %i.dk, %.lr.ph552 ], [ %i.dt, %.loopexit.split.loop.exit663 ], [ %i.dx, %.loopexit.split.loop.exit660 ], [ %i.eb, %.loopexit.split.loop.exit ], [ %i.db, %.lr.ph552.prol ]
  %i.dq = and i8 %.lcssa, -33
  %i.dr = icmp eq i8 %i.dq, 69
  br i1 %i.dr, label %.thread458, label %.thread454

.lr.ph552.1:                                      ; preds = %.lr.ph552
  %i.ds = getelementptr inbounds nuw i8, ptr %.11428550, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !93  ; 2 uses
  %i.du = add i8 %i.dt, -48
  %i.dv = icmp ult i8 %i.du, 10
  br i1 %i.dv, label %.lr.ph552.2, label %.loopexit.split.loop.exit663, !prof !251

.lr.ph552.2:                                      ; preds = %.lr.ph552.1
  %i.dw = getelementptr inbounds nuw i8, ptr %.11428550, i64 2
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !93  ; 2 uses
  %i.dy = add i8 %i.dx, -48
  %i.dz = icmp ult i8 %i.dy, 10
  br i1 %i.dz, label %.lr.ph552.3, label %.loopexit.split.loop.exit660, !prof !251

.lr.ph552.3:                                      ; preds = %.lr.ph552.2
  %i.ea = getelementptr inbounds nuw i8, ptr %.11428550, i64 3
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !93  ; 2 uses
  %i.ec = add i8 %i.eb, -48
  %i.ed = icmp ult i8 %i.ec, 10
  br i1 %i.ed, label %bb.ac, label %.loopexit.split.loop.exit, !prof !251

bb.ac:                                            ; preds = %.lr.ph552.3
  %i.ee = getelementptr inbounds nuw i8, ptr %.11428550, i64 4 ; 2 uses
  %exitcond587.not.3 = icmp eq ptr %i.ee, %i.c
  br i1 %exitcond587.not.3, label %._crit_edge553, label %.lr.ph552, !prof !353, !llvm.loop !927

.thread476.loopexit.loopexit.split.loop.exit:     ; preds = %.lr.ph.3
  %i.ef = getelementptr inbounds nuw i8, ptr %.5424.us538544, i64 3
  br label %.thread476

.thread476.loopexit.loopexit.split.loop.exit651:  ; preds = %.lr.ph.2
  %i.eg = getelementptr inbounds nuw i8, ptr %.5424.us538544, i64 2
  br label %.thread476

.thread476.loopexit.loopexit.split.loop.exit653:  ; preds = %.lr.ph.1
  %i.eh = getelementptr inbounds nuw i8, ptr %.5424.us538544, i64 1
  br label %.thread476

.thread476:                                       ; preds = %.lr.ph, %.thread476.loopexit.loopexit.split.loop.exit653, %.thread476.loopexit.loopexit.split.loop.exit651, %.thread476.loopexit.loopexit.split.loop.exit, %.lr.ph.prol, %bb.u
  %i.ei = phi i64 [ 0, %bb.u ], [ %.fr561, %.lr.ph.prol ], [ %.fr561, %.thread476.loopexit.loopexit.split.loop.exit ], [ %.fr561, %.thread476.loopexit.loopexit.split.loop.exit651 ], [ %.fr561, %.thread476.loopexit.loopexit.split.loop.exit653 ], [ %.fr561, %.lr.ph ] ; 2 uses
  %.13429 = phi ptr [ %i.bp, %bb.u ], [ %.5424.us538544, %.lr.ph ], [ %i.eh, %.thread476.loopexit.loopexit.split.loop.exit653 ], [ %i.eg, %.thread476.loopexit.loopexit.split.loop.exit651 ], [ %i.ef, %.thread476.loopexit.loopexit.split.loop.exit ], [ %.5424.us538544.prol, %.lr.ph.prol ] ; 7 uses
  %i.ej = icmp ult ptr %.13429, %i.c
  br i1 %i.ej, label %bb.af, label %bb.ad, !prof !251

bb.ad:                                            ; preds = %.thread476
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !226, !range !231, !noundef !125
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.ae, label %bb.bd, !prof !252

bb.ae:                                            ; preds = %bb.ad
  %i.en = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE7suspendEPKcNS4_5stateERKNS4_6numberE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.13429, i8 noundef signext 43, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %.thread434

bb.af:                                            ; preds = %.thread476
  %i.eo = load i8, ptr %.13429, align 1, !tbaa !93 ; 2 uses
  %i.ep = icmp eq i8 %i.eo, 46
  br i1 %i.ep, label %.thread506, label %bb.ag, !prof !251

.thread506:                                       ; preds = %bb.af
  %i.eq = getelementptr inbounds nuw i8, ptr %.13429, i64 1
  br label %.thread442

bb.ag:                                            ; preds = %bb.af
  %i.er = and i8 %i.eo, -33
  %i.es = icmp eq i8 %i.er, 69
  br i1 %i.es, label %.thread458, label %bb.bd

.thread442:                                       ; preds = %bb.l, %.thread506
  %.15430 = phi ptr [ %i.eq, %.thread506 ], [ %i.ah, %bb.l ] ; 6 uses
  %i.et = icmp ult ptr %.15430, %i.c
  br i1 %i.et, label %bb.ak, label %bb.ah, !prof !251

bb.ah:                                            ; preds = %.thread442
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !226, !range !231, !noundef !125
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.ai, label %bb.aj, !prof !252

bb.ai:                                            ; preds = %bb.ah
  %i.ex = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE7suspendEPKcNS4_5stateERKNS4_6numberE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.15430, i8 noundef signext 44, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %.thread434

bb.aj:                                            ; preds = %bb.ah
  %i.ey = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.15430, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_numberILb1ELc45ELNS0_16number_precisionE2EEEPKcS8_St17integral_constantIbXT_EES9_IcXT0_EES9_IS6_XT1_EEE3loc_4) #47
  br label %.thread434

bb.ak:                                            ; preds = %.thread442
  %i.ez = load i8, ptr %.15430, align 1, !tbaa !93
  %i.fa = add i8 %i.ez, -48
  %i.fb = icmp ult i8 %i.fa, 10
  br i1 %i.fb, label %.thread446, label %bb.al, !prof !251

bb.al:                                            ; preds = %bb.ak
  %i.fc = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.15430, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_numberILb1ELc45ELNS0_16number_precisionE2EEEPKcS8_St17integral_constantIbXT_EES9_IcXT0_EES9_IS6_XT1_EEE3loc_5) #47
  br label %.thread434

.thread446:                                       ; preds = %bb.ak, %bb.n
  %i.fd = phi i32 [ %i.as, %bb.n ], [ 0, %bb.ak ]
  %.16 = phi ptr [ %i.au, %bb.n ], [ %.15430, %bb.ak ] ; 5 uses
  %.16632 = ptrtoaddr ptr %.16 to i64
  %i.fe = icmp ult ptr %.16, %i.c
  br i1 %i.fe, label %bb.z, label %bb.am, !prof !251

bb.am:                                            ; preds = %.thread446
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.fg = load i8, ptr %i.ff, align 8, !tbaa !226, !range !231, !noundef !125
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.an, label %.thread454, !prof !252

bb.an:                                            ; preds = %bb.am
  %i.fi = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE7suspendEPKcNS4_5stateERKNS4_6numberE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.16, i8 noundef signext 45, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %.thread434

.thread458:                                       ; preds = %bb.ag, %.loopexit, %bb.m, %bb.i
  %.13429.sink = phi ptr [ %.11428550.lcssa, %.loopexit ], [ %i.au, %bb.m ], [ %.0421, %bb.i ], [ %.13429, %bb.ag ] ; 3 uses
  %i.fj = phi i32 [ %i.fd, %.loopexit ], [ %i.as, %bb.m ], [ 0, %bb.i ], [ 0, %bb.ag ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.13429.sink, i64 1 ; 4 uses
  %i.fl = icmp ult ptr %i.fk, %i.c
  br i1 %i.fl, label %bb.ap, label %bb.ao, !prof !251

bb.ao:                                            ; preds = %.thread458
  %i.fm = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE13maybe_suspendEPKcNS4_5stateERKNS4_6numberE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %i.fk, i8 noundef signext 46, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %.thread434

bb.ap:                                            ; preds = %.thread458
  %i.fn = load i8, ptr %i.fk, align 1, !tbaa !93
  switch i8 %i.fn, label %bb.as [
    i8 43, label %bb.aq
    i8 45, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.fo = getelementptr inbounds nuw i8, ptr %.13429.sink, i64 2
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.fp = getelementptr inbounds nuw i8, ptr %.13429.sink, i64 2
  store i8 1, ptr %i.f, align 8, !tbaa !358
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.aq, %bb.ar
  %i.fq = phi i1 [ false, %bb.aq ], [ true, %bb.ar ], [ false, %bb.ap ]
  %.19 = phi ptr [ %i.fo, %bb.aq ], [ %i.fp, %bb.ar ], [ %i.fk, %bb.ap ] ; 8 uses
  %.19588 = ptrtoaddr ptr %.19 to i64             ; 2 uses
  %i.fr = icmp ult ptr %.19, %i.c
  br i1 %i.fr, label %bb.aw, label %bb.at, !prof !251

bb.at:                                            ; preds = %bb.as
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !226, !range !231, !noundef !125
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.au, label %bb.av, !prof !252

bb.au:                                            ; preds = %bb.at
  %i.fv = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE7suspendEPKcNS4_5stateERKNS4_6numberE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.19, i8 noundef signext 47, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %.thread434

bb.av:                                            ; preds = %bb.at
  %i.fw = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.19, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_numberILb1ELc45ELNS0_16number_precisionE2EEEPKcS8_St17integral_constantIbXT_EES9_IcXT0_EES9_IS6_XT1_EEE3loc_7) #47
  br label %.thread434

bb.aw:                                            ; preds = %bb.as
  %i.fx = load i8, ptr %.19, align 1, !tbaa !93   ; 2 uses
  %i.fy = add i8 %i.fx, -48
  %i.fz = icmp ult i8 %i.fy, 10
  br i1 %i.fz, label %bb.ax, label %.thread520, !prof !251

.thread520:                                       ; preds = %bb.aw
  %i.ga = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.19, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_numberILb1ELc45ELNS0_16number_precisionE2EEEPKcS8_St17integral_constantIbXT_EES9_IcXT0_EES9_IS6_XT1_EEE3loc_8) #47
  br label %.thread434

bb.ax:                                            ; preds = %bb.aw
  %i.gb = zext nneg i8 %i.fx to i32               ; 2 uses
  %i.gc = add nsw i32 %i.gb, -48                  ; 2 uses
  store i32 %i.gc, ptr %i.e, align 4, !tbaa !359
  %.21555 = getelementptr inbounds nuw i8, ptr %.19, i64 1 ; 4 uses
  %i.gd = icmp ult ptr %.21555, %i.c
  br i1 %i.gd, label %.lr.ph558.preheader, label %._crit_edge559, !prof !276

.lr.ph558.preheader:                              ; preds = %bb.ax
  %i.ge = sub i64 %i.j, %.19588
  %scevgep589 = getelementptr i8, ptr %.19, i64 %i.ge ; 2 uses
  %i.gf = xor i64 %.19588, -1
  %i.gg = add i64 %i.gf, %i.j
  %i.gh = freeze i64 %i.gg                        ; 2 uses
  %i.gi = add i64 %i.gh, -1
  %xtraiter639 = and i64 %i.gh, 3                 ; 2 uses
  %lcmp.mod640.not = icmp eq i64 %xtraiter639, 0
  br i1 %lcmp.mod640.not, label %.lr.ph558.prol.loopexit, label %.lr.ph558.prol, !prof !276

.lr.ph558.prol:                                   ; preds = %.lr.ph558.preheader, %bb.ay
  %.21556.prol = phi ptr [ %.21.prol, %bb.ay ], [ %.21555, %.lr.ph558.preheader ] ; 3 uses
  %prol.iter641 = phi i64 [ %prol.iter641.next, %bb.ay ], [ 0, %.lr.ph558.preheader ]
  %i.gj = load i8, ptr %.21556.prol, align 1, !tbaa !93
  %i.gk = add i8 %i.gj, -48
  %i.gl = icmp ult i8 %i.gk, 10
  br i1 %i.gl, label %bb.ay, label %.thread523, !prof !251

bb.ay:                                            ; preds = %.lr.ph558.prol
  %.21.prol = getelementptr inbounds nuw i8, ptr %.21556.prol, i64 1 ; 2 uses
  %prol.iter641.next = add i64 %prol.iter641, 1   ; 2 uses
  %prol.iter641.cmp.not = icmp eq i64 %prol.iter641.next, %xtraiter639
  br i1 %prol.iter641.cmp.not, label %.lr.ph558.prol.loopexit, label %.lr.ph558.prol, !prof !355, !llvm.loop !928

.lr.ph558.prol.loopexit:                          ; preds = %bb.ay, %.lr.ph558.preheader
  %.21556.unr = phi ptr [ %.21555, %.lr.ph558.preheader ], [ %.21.prol, %bb.ay ]
  %i.gm = icmp ult i64 %i.gi, 3
  br i1 %i.gm, label %._crit_edge559, label %.lr.ph558, !prof !357

._crit_edge559:                                   ; preds = %.lr.ph558.prol.loopexit, %bb.ba, %bb.ax
  %.21.lcssa = phi ptr [ %.21555, %bb.ax ], [ %scevgep589, %bb.ba ], [ %scevgep589, %.lr.ph558.prol.loopexit ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.go = load i8, ptr %i.gn, align 8, !tbaa !226, !range !231, !noundef !125
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.az, label %.thread523, !prof !252

bb.az:                                            ; preds = %._crit_edge559
  %i.gq = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE7suspendEPKcNS4_5stateERKNS4_6numberE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.21.lcssa, i8 noundef signext 48, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %.thread434

.lr.ph558:                                        ; preds = %.lr.ph558.prol.loopexit, %bb.ba
  %.21556 = phi ptr [ %.21.3, %bb.ba ], [ %.21556.unr, %.lr.ph558.prol.loopexit ] ; 9 uses
  %i.gr = load i8, ptr %.21556, align 1, !tbaa !93
  %i.gs = add i8 %i.gr, -48
  %i.gt = icmp ult i8 %i.gs, 10
  br i1 %i.gt, label %.lr.ph558.1, label %.thread523, !prof !251

.lr.ph558.1:                                      ; preds = %.lr.ph558
  %.21 = getelementptr inbounds nuw i8, ptr %.21556, i64 1
  %i.gu = load i8, ptr %.21, align 1, !tbaa !93
  %i.gv = add i8 %i.gu, -48
  %i.gw = icmp ult i8 %i.gv, 10
  br i1 %i.gw, label %.lr.ph558.2, label %.thread523.loopexit.loopexit.split.loop.exit674, !prof !251

.lr.ph558.2:                                      ; preds = %.lr.ph558.1
  %.21.1 = getelementptr inbounds nuw i8, ptr %.21556, i64 2
  %i.gx = load i8, ptr %.21.1, align 1, !tbaa !93
  %i.gy = add i8 %i.gx, -48
  %i.gz = icmp ult i8 %i.gy, 10
  br i1 %i.gz, label %.lr.ph558.3, label %.thread523.loopexit.loopexit.split.loop.exit672, !prof !251

.lr.ph558.3:                                      ; preds = %.lr.ph558.2
  %.21.2 = getelementptr inbounds nuw i8, ptr %.21556, i64 3
  %i.ha = load i8, ptr %.21.2, align 1, !tbaa !93
  %i.hb = add i8 %i.ha, -48
  %i.hc = icmp ult i8 %i.hb, 10
  br i1 %i.hc, label %bb.ba, label %.thread523.loopexit.loopexit.split.loop.exit, !prof !251

bb.ba:                                            ; preds = %.lr.ph558.3
  %.21.3 = getelementptr inbounds nuw i8, ptr %.21556, i64 4 ; 2 uses
  %exitcond590.not.3 = icmp eq ptr %.21.3, %i.c
  br i1 %exitcond590.not.3, label %._crit_edge559, label %.lr.ph558, !prof !353, !llvm.loop !929

.thread523.loopexit.loopexit.split.loop.exit:     ; preds = %.lr.ph558.3
  %.21.2.le = getelementptr inbounds nuw i8, ptr %.21556, i64 3
  br label %.thread523

.thread523.loopexit.loopexit.split.loop.exit672:  ; preds = %.lr.ph558.2
  %.21.1.le = getelementptr inbounds nuw i8, ptr %.21556, i64 2
  br label %.thread523

.thread523.loopexit.loopexit.split.loop.exit674:  ; preds = %.lr.ph558.1
  %.21.le = getelementptr inbounds nuw i8, ptr %.21556, i64 1
  br label %.thread523

.thread523:                                       ; preds = %.lr.ph558, %.thread523.loopexit.loopexit.split.loop.exit674, %.thread523.loopexit.loopexit.split.loop.exit672, %.thread523.loopexit.loopexit.split.loop.exit, %.lr.ph558.prol, %._crit_edge559
  %.21527 = phi ptr [ %.21.lcssa, %._crit_edge559 ], [ %.21556, %.lr.ph558 ], [ %.21.le, %.thread523.loopexit.loopexit.split.loop.exit674 ], [ %.21.1.le, %.thread523.loopexit.loopexit.split.loop.exit672 ], [ %.21.2.le, %.thread523.loopexit.loopexit.split.loop.exit ], [ %.21556.prol, %.lr.ph558.prol ] ; 3 uses
  br i1 %i.fq, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.thread523
  %3 = or disjoint i32 %i.gc, -2147483648
  %i.hd = icmp slt i32 %i.fj, %3
  br i1 %i.hd, label %.thread454.sink.split, label %.thread454, !prof !252

bb.bc:                                            ; preds = %.thread523
  %i.he = sub nuw i32 -2147483601, %i.gb
  %i.hf = icmp sgt i32 %i.fj, %i.he
  br i1 %i.hf, label %.thread454.sink.split, label %.thread454, !prof !252

bb.bd:                                            ; preds = %bb.ag, %bb.ad, %.split.us
  %i.hg = phi i64 [ %.fr561, %.split.us ], [ %i.ei, %bb.ad ], [ %i.ei, %bb.ag ]
  %.24 = phi ptr [ %.us-phi, %.split.us ], [ %.13429, %bb.ad ], [ %.13429, %bb.ag ]
  %i.hh = sub nsw i64 0, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !224 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !323 ; 2 uses
  %.not.i.i.i = icmp ult ptr %i.hk, %i.hm
  br i1 %.not.i.i.i, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !225
  %i.hp = ptrtoint ptr %i.hm to i64
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = sub i64 %i.hp, %i.hq                    ; 2 uses
  %i.hs = sdiv exact i64 %i.hr, 24
  %i.ht = add nsw i64 %i.hs, 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i = phi i64 [ 16, %bb.be ], [ %i.hv, %bb.bf ] ; 4 uses
  %i.hu = icmp ult i64 %.0.i.i.i.i, %i.ht
  %i.hv = shl i64 %.0.i.i.i.i, 1
  br i1 %i.hu, label %bb.bf, label %bb.bg, !llvm.loop !49

bb.bg:                                            ; preds = %bb.bf
  %i.hw = load i64, ptr %0, align 8, !tbaa !96    ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.hw, 0
  %i.hx = and i64 %i.hw, -4
  %i.hy = inttoptr i64 %i.hx to ptr
  %.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.hy ; 2 uses
  %i.hz = mul i64 %.0.i.i.i.i, 24
  %i.ia = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !98
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = tail call noundef ptr %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i.i.i.i, i64 noundef %i.hz, i64 noundef 16), !inline_history !69 ; 4 uses
  %i.ie = load ptr, ptr %i.hj, align 8, !tbaa !224
  %i.if = load ptr, ptr %i.hn, align 8, !tbaa !225 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.if, null
  %.pre.i.i.i.i = ptrtoint ptr %i.ie to i64       ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ig = ptrtoint ptr %i.if to i64
  %i.ih = sub i64 %.pre.i.i.i.i, %i.ig            ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.id, ptr nonnull align 1 %i.if, i64 %i.ih, i1 false)
  %i.ii = load ptr, ptr %i.hn, align 8, !tbaa !225 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !322
  %.not12.i.i.i.i = icmp eq ptr %i.ii, %i.ik
  br i1 %.not12.i.i.i.i, label %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.il = load i64, ptr %0, align 8, !tbaa !96    ; 2 uses
  %.not.i.i13.i.i.i.i = icmp eq i64 %i.il, 0
  %i.im = and i64 %i.il, -4
  %i.in = inttoptr i64 %i.im to ptr
  %.0.i.i14.i.i.i.i = select i1 %.not.i.i13.i.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.in ; 2 uses
  %i.io = load ptr, ptr %.0.i.i14.i.i.i.i, align 8, !tbaa !98
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8
  tail call void %i.iq(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i14.i.i.i.i, ptr noundef %i.ii, i64 noundef %i.hr, i64 noundef 16), !inline_history !70
  br label %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i

_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i: ; preds = %bb.bi, %bb.bh, %bb.bg
  %.pre-phi18.i.i.i.i = phi i64 [ %i.ih, %bb.bi ], [ %i.ih, %bb.bh ], [ %.pre.i.i.i.i, %bb.bg ]
  %i.ir = getelementptr inbounds nuw i8, ptr %i.id, i64 %.pre-phi18.i.i.i.i ; 2 uses
  store ptr %i.ir, ptr %i.hj, align 8, !tbaa !224
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %i.id, i64 %.0.i.i.i.i
  store ptr %i.is, ptr %i.hl, align 8, !tbaa !323
  store ptr %i.id, ptr %i.hn, align 8, !tbaa !225
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i, %bb.bd
  %i.it = phi ptr [ %i.ir, %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i ], [ %i.hk, %bb.bd ] ; 3 uses
  %i.iu = load i64, ptr %i.hi, align 8, !tbaa !96 ; 3 uses
  %i.iv = trunc i64 %i.iu to i1
  br i1 %i.iv, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.iw = and i64 %i.iu, -4
  %i.ix = inttoptr i64 %i.iw to ptr
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = atomicrmw add ptr %i.iy, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  store i64 %i.iu, ptr %i.it, align 8, !tbaa !96
  %i.ja = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store i8 2, ptr %i.ja, align 8, !tbaa !136
  %i.jb = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  store i64 %i.hh, ptr %i.jb, align 8, !tbaa !93
  %i.jc = load ptr, ptr %i.hj, align 8, !tbaa !224
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  store ptr %i.jd, ptr %i.hj, align 8, !tbaa !224
  br label %.thread434

bb.bm:                                            ; preds = %bb.i
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !224 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !323 ; 2 uses
  %.not.i.i.i145 = icmp ult ptr %i.jg, %i.ji
  br i1 %.not.i.i.i145, label %bb.bs, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !225
  %i.jl = ptrtoint ptr %i.ji to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm                    ; 2 uses
  %i.jo = sdiv exact i64 %i.jn, 24
  %i.jp = add nsw i64 %i.jo, 1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %bb.bn
  %.0.i.i.i.i146 = phi i64 [ 16, %bb.bn ], [ %i.jr, %bb.bo ] ; 4 uses
  %i.jq = icmp ult i64 %.0.i.i.i.i146, %i.jp
  %i.jr = shl i64 %.0.i.i.i.i146, 1
  br i1 %i.jq, label %bb.bo, label %bb.bp, !llvm.loop !49

bb.bp:                                            ; preds = %bb.bo
  %i.js = load i64, ptr %0, align 8, !tbaa !96    ; 2 uses
  %.not.i.i.i.i.i.i147 = icmp eq i64 %i.js, 0
  %i.jt = and i64 %i.js, -4
  %i.ju = inttoptr i64 %i.jt to ptr
  %.0.i.i.i.i.i.i148 = select i1 %.not.i.i.i.i.i.i147, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.ju ; 2 uses
  %i.jv = mul i64 %.0.i.i.i.i146, 24
  %i.jw = load ptr, ptr %.0.i.i.i.i.i.i148, align 8, !tbaa !98
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8
  %i.jz = tail call noundef ptr %i.jy(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i.i.i.i148, i64 noundef %i.jv, i64 noundef 16), !inline_history !69 ; 4 uses
  %i.ka = load ptr, ptr %i.jf, align 8, !tbaa !224
  %i.kb = load ptr, ptr %i.jj, align 8, !tbaa !225 ; 3 uses
  %.not.i.i.i.i149 = icmp eq ptr %i.kb, null
  %.pre.i.i.i.i150 = ptrtoint ptr %i.ka to i64    ; 2 uses
  br i1 %.not.i.i.i.i149, label %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i154, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = sub i64 %.pre.i.i.i.i150, %i.kc         ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jz, ptr nonnull align 1 %i.kb, i64 %i.kd, i1 false)
  %i.ke = load ptr, ptr %i.jj, align 8, !tbaa !225 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !322
  %.not12.i.i.i.i151 = icmp eq ptr %i.ke, %i.kg
  br i1 %.not12.i.i.i.i151, label %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i154, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kh = load i64, ptr %0, align 8, !tbaa !96    ; 2 uses
  %.not.i.i13.i.i.i.i152 = icmp eq i64 %i.kh, 0
  %i.ki = and i64 %i.kh, -4
  %i.kj = inttoptr i64 %i.ki to ptr
  %.0.i.i14.i.i.i.i153 = select i1 %.not.i.i13.i.i.i.i152, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.kj ; 2 uses
  %i.kk = load ptr, ptr %.0.i.i14.i.i.i.i153, align 8, !tbaa !98
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load ptr, ptr %i.kl, align 8
  tail call void %i.km(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i14.i.i.i.i153, ptr noundef %i.ke, i64 noundef %i.jn, i64 noundef 16), !inline_history !70
  br label %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i154

_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i154: ; preds = %bb.br, %bb.bq, %bb.bp
  %.pre-phi18.i.i.i.i155 = phi i64 [ %i.kd, %bb.br ], [ %i.kd, %bb.bq ], [ %.pre.i.i.i.i150, %bb.bp ]
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jz, i64 %.pre-phi18.i.i.i.i155 ; 2 uses
  store ptr %i.kn, ptr %i.jf, align 8, !tbaa !224
  %i.ko = getelementptr inbounds nuw [24 x i8], ptr %i.jz, i64 %.0.i.i.i.i146
  store ptr %i.ko, ptr %i.jh, align 8, !tbaa !323
  store ptr %i.jz, ptr %i.jj, align 8, !tbaa !225
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i154, %bb.bm
  %i.kp = phi ptr [ %i.kn, %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i154 ], [ %i.jg, %bb.bm ] ; 3 uses
  %i.kq = load i64, ptr %i.je, align 8, !tbaa !96 ; 3 uses
  %i.kr = trunc i64 %i.kq to i1
  br i1 %i.kr, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ks = and i64 %i.kq, -4
  %i.kt = inttoptr i64 %i.ks to ptr
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = atomicrmw add ptr %i.ku, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  store i64 %i.kq, ptr %i.kp, align 8, !tbaa !96
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store i8 2, ptr %i.kw, align 8, !tbaa !136
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  store i64 0, ptr %i.kx, align 8, !tbaa !93
end_hunk_0
begin_hunk_1_@_ZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_numberILb1ELc43ELNS0_16number_precisionE2EEEPKcS8_St17integral_constantIbXT_EES9_IcXT0_EES9_IS6_XT1_EE:bb.a

._crit_edge510:                                   ; preds = %.lr.ph509.prol.loopexit, %bb.z, %bb.w
  %.9390.lcssa = phi ptr [ %.8389, %bb.w ], [ %scevgep543, %bb.z ], [ %scevgep543, %.lr.ph509.prol.loopexit ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !226, !range !231, !noundef !125
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.y, label %.thread416, !prof !252

bb.y:                                             ; preds = %._crit_edge510
  %i.dr = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE7suspendEPKcNS4_5stateERKNS4_6numberE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.9390.lcssa, i8 noundef signext 42, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.by

.lr.ph509:                                        ; preds = %.lr.ph509.prol.loopexit, %bb.z
  %.9390507 = phi ptr [ %i.em, %bb.z ], [ %.9390507.unr, %.lr.ph509.prol.loopexit ] ; 9 uses
  %i.ds = load i8, ptr %.9390507, align 1, !tbaa !93 ; 2 uses
  %i.dt = add i8 %i.ds, -48
  %i.du = icmp ult i8 %i.dt, 10
  br i1 %i.du, label %.lr.ph509.1, label %.loopexit, !prof !251

.loopexit.split.loop.exit:                        ; preds = %.lr.ph509.3
  %i.dv = getelementptr inbounds nuw i8, ptr %.9390507, i64 3
  br label %.loopexit

.loopexit.split.loop.exit681:                     ; preds = %.lr.ph509.2
  %i.dw = getelementptr inbounds nuw i8, ptr %.9390507, i64 2
  br label %.loopexit

.loopexit.split.loop.exit684:                     ; preds = %.lr.ph509.1
  %i.dx = getelementptr inbounds nuw i8, ptr %.9390507, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph509.prol, %.loopexit.split.loop.exit, %.loopexit.split.loop.exit681, %.loopexit.split.loop.exit684, %.lr.ph509
  %.9390507.lcssa = phi ptr [ %.9390507, %.lr.ph509 ], [ %i.dx, %.loopexit.split.loop.exit684 ], [ %i.dw, %.loopexit.split.loop.exit681 ], [ %i.dv, %.loopexit.split.loop.exit ], [ %.9390507.prol, %.lr.ph509.prol ] ; 2 uses
  %.lcssa = phi i8 [ %i.ds, %.lr.ph509 ], [ %i.eb, %.loopexit.split.loop.exit684 ], [ %i.ef, %.loopexit.split.loop.exit681 ], [ %i.ej, %.loopexit.split.loop.exit ], [ %i.dj, %.lr.ph509.prol ]
  %i.dy = and i8 %.lcssa, -33
  %i.dz = icmp eq i8 %i.dy, 69
  br i1 %i.dz, label %.thread420, label %.thread416

.lr.ph509.1:                                      ; preds = %.lr.ph509
  %i.ea = getelementptr inbounds nuw i8, ptr %.9390507, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !93  ; 2 uses
  %i.ec = add i8 %i.eb, -48
  %i.ed = icmp ult i8 %i.ec, 10
  br i1 %i.ed, label %.lr.ph509.2, label %.loopexit.split.loop.exit684, !prof !251

.lr.ph509.2:                                      ; preds = %.lr.ph509.1
  %i.ee = getelementptr inbounds nuw i8, ptr %.9390507, i64 2
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !93  ; 2 uses
  %i.eg = add i8 %i.ef, -48
  %i.eh = icmp ult i8 %i.eg, 10
  br i1 %i.eh, label %.lr.ph509.3, label %.loopexit.split.loop.exit681, !prof !251

.lr.ph509.3:                                      ; preds = %.lr.ph509.2
  %i.ei = getelementptr inbounds nuw i8, ptr %.9390507, i64 3
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !93  ; 2 uses
  %i.ek = add i8 %i.ej, -48
  %i.el = icmp ult i8 %i.ek, 10
  br i1 %i.el, label %bb.z, label %.loopexit.split.loop.exit, !prof !251

bb.z:                                             ; preds = %.lr.ph509.3
  %i.em = getelementptr inbounds nuw i8, ptr %.9390507, i64 4 ; 2 uses
  %exitcond544.not.3 = icmp eq ptr %i.em, %i.b
  br i1 %exitcond544.not.3, label %._crit_edge510, label %.lr.ph509, !prof !353, !llvm.loop !940

.split492.us.loopexit.loopexit.split.loop.exit:   ; preds = %.lr.ph.3
  %i.en = getelementptr inbounds nuw i8, ptr %.3384.us495501, i64 3
  br label %.split492.us

.split492.us.loopexit.loopexit.split.loop.exit669: ; preds = %.lr.ph.2
  %i.eo = getelementptr inbounds nuw i8, ptr %.3384.us495501, i64 2
  br label %.split492.us

.split492.us.loopexit.loopexit.split.loop.exit672: ; preds = %.lr.ph.1
  %i.ep = getelementptr inbounds nuw i8, ptr %.3384.us495501, i64 1
  br label %.split492.us

.split492.us:                                     ; preds = %.lr.ph, %.split492.us.loopexit.loopexit.split.loop.exit672, %.split492.us.loopexit.loopexit.split.loop.exit669, %.split492.us.loopexit.loopexit.split.loop.exit, %.lr.ph.prol, %bb.i
  %.fr518580 = phi i64 [ %i.ap, %bb.i ], [ %.fr518581, %.lr.ph.prol ], [ %.fr518581, %.split492.us.loopexit.loopexit.split.loop.exit ], [ %.fr518581, %.split492.us.loopexit.loopexit.split.loop.exit669 ], [ %.fr518581, %.split492.us.loopexit.loopexit.split.loop.exit672 ], [ %.fr518581, %.lr.ph ]
  %i.eq = phi i8 [ %i.as, %bb.i ], [ %i.be, %.lr.ph ], [ %i.bi, %.split492.us.loopexit.loopexit.split.loop.exit672 ], [ %i.bm, %.split492.us.loopexit.loopexit.split.loop.exit669 ], [ %i.bq, %.split492.us.loopexit.loopexit.split.loop.exit ], [ %i.az, %.lr.ph.prol ] ; 2 uses
  %.us-phi493 = phi ptr [ %i.an, %bb.i ], [ %.3384.us495501, %.lr.ph ], [ %i.ep, %.split492.us.loopexit.loopexit.split.loop.exit672 ], [ %i.eo, %.split492.us.loopexit.loopexit.split.loop.exit669 ], [ %i.en, %.split492.us.loopexit.loopexit.split.loop.exit ], [ %.3384.us495501.prol, %.lr.ph.prol ] ; 3 uses
  %i.er = icmp eq i8 %i.eq, 46
  br i1 %i.er, label %.thread460, label %bb.aa, !prof !251

.thread460:                                       ; preds = %.split492.us
  %i.es = getelementptr inbounds nuw i8, ptr %.us-phi493, i64 1
  br label %.thread404

bb.aa:                                            ; preds = %.split492.us
  %i.et = and i8 %i.eq, -33
  %i.eu = icmp eq i8 %i.et, 69
  br i1 %i.eu, label %.thread420, label %bb.ax

.thread404:                                       ; preds = %bb.f, %.thread460
  %.12 = phi ptr [ %i.es, %.thread460 ], [ %i.v, %bb.f ] ; 6 uses
  %i.ev = icmp ult ptr %.12, %i.b
  br i1 %i.ev, label %bb.ae, label %bb.ab, !prof !251

bb.ab:                                            ; preds = %.thread404
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ex = load i8, ptr %i.ew, align 8, !tbaa !226, !range !231, !noundef !125
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.ac, label %bb.ad, !prof !252

bb.ac:                                            ; preds = %bb.ab
  %i.ez = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE7suspendEPKcNS4_5stateERKNS4_6numberE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.12, i8 noundef signext 44, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.by

bb.ad:                                            ; preds = %bb.ab
  %i.fa = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.12, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_numberILb1ELc43ELNS0_16number_precisionE2EEEPKcS8_St17integral_constantIbXT_EES9_IcXT0_EES9_IS6_XT1_EEE3loc_4) #47
  br label %bb.by

bb.ae:                                            ; preds = %.thread404
  %i.fb = load i8, ptr %.12, align 1, !tbaa !93
  %i.fc = add i8 %i.fb, -48
  %i.fd = icmp ult i8 %i.fc, 10
  br i1 %i.fd, label %.thread408, label %bb.af, !prof !251

bb.af:                                            ; preds = %bb.ae
  %i.fe = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.12, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_numberILb1ELc43ELNS0_16number_precisionE2EEEPKcS8_St17integral_constantIbXT_EES9_IcXT0_EES9_IS6_XT1_EEE3loc_5) #47
  br label %bb.by

.thread408:                                       ; preds = %bb.ae, %bb.h
  %i.ff = phi i32 [ %i.af, %bb.h ], [ 0, %bb.ae ]
  %.13393 = phi ptr [ %i.ah, %bb.h ], [ %.12, %bb.ae ] ; 4 uses
  %i.fg = icmp ult ptr %.13393, %i.b
  br i1 %i.fg, label %.thread468, label %bb.ag, !prof !251

bb.ag:                                            ; preds = %.thread408
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !226, !range !231, !noundef !125
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.ah, label %.thread416, !prof !252

bb.ah:                                            ; preds = %bb.ag
  %i.fk = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE7suspendEPKcNS4_5stateERKNS4_6numberE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.13393, i8 noundef signext 45, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.by

.thread468:                                       ; preds = %.thread408
  %i.fl = getelementptr inbounds nuw i8, ptr %.13393, i64 1
  br label %bb.w

.thread420:                                       ; preds = %bb.aa, %.loopexit, %bb.n, %bb.g, %bb.d
  %.us-phi493.sink = phi ptr [ %.9390507.lcssa, %.loopexit ], [ %.5386503.lcssa, %bb.n ], [ %i.ah, %bb.g ], [ %i.q, %bb.d ], [ %.us-phi493, %bb.aa ] ; 3 uses
  %i.fm = phi i32 [ %i.de, %.loopexit ], [ %storemerge504.lcssa, %bb.n ], [ %i.af, %bb.g ], [ 0, %bb.d ], [ 0, %bb.aa ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.us-phi493.sink, i64 1 ; 4 uses
  %i.fo = icmp ult ptr %i.fn, %i.b
  br i1 %i.fo, label %bb.aj, label %bb.ai, !prof !251

bb.ai:                                            ; preds = %.thread420
  %i.fp = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE13maybe_suspendEPKcNS4_5stateERKNS4_6numberE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %i.fn, i8 noundef signext 46, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.by

bb.aj:                                            ; preds = %.thread420
  %i.fq = load i8, ptr %i.fn, align 1, !tbaa !93
  switch i8 %i.fq, label %bb.am [
    i8 43, label %bb.ak
    i8 45, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.fr = getelementptr inbounds nuw i8, ptr %.us-phi493.sink, i64 2
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fs = getelementptr inbounds nuw i8, ptr %.us-phi493.sink, i64 2
  store i8 1, ptr %i.e, align 8, !tbaa !358
  br label %bb.am

bb.am:                                            ; preds = %bb.aj, %bb.ak, %bb.al
  %i.ft = phi i1 [ false, %bb.ak ], [ true, %bb.al ], [ false, %bb.aj ]
  %.16 = phi ptr [ %i.fr, %bb.ak ], [ %i.fs, %bb.al ], [ %i.fn, %bb.aj ] ; 8 uses
  %.16545 = ptrtoaddr ptr %.16 to i64             ; 2 uses
  %i.fu = icmp ult ptr %.16, %i.b
  br i1 %i.fu, label %bb.aq, label %bb.an, !prof !251

bb.an:                                            ; preds = %bb.am
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.fw = load i8, ptr %i.fv, align 8, !tbaa !226, !range !231, !noundef !125
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.ao, label %bb.ap, !prof !252

bb.ao:                                            ; preds = %bb.an
  %i.fy = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE7suspendEPKcNS4_5stateERKNS4_6numberE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.16, i8 noundef signext 47, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.by

bb.ap:                                            ; preds = %bb.an
  %i.fz = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.16, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_numberILb1ELc43ELNS0_16number_precisionE2EEEPKcS8_St17integral_constantIbXT_EES9_IcXT0_EES9_IS6_XT1_EEE3loc_7) #47
  br label %bb.by

bb.aq:                                            ; preds = %bb.am
  %i.ga = load i8, ptr %.16, align 1, !tbaa !93   ; 2 uses
  %i.gb = add i8 %i.ga, -48
  %i.gc = icmp ult i8 %i.gb, 10
  br i1 %i.gc, label %bb.ar, label %.thread474, !prof !251

.thread474:                                       ; preds = %bb.aq
  %i.gd = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.16, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_numberILb1ELc43ELNS0_16number_precisionE2EEEPKcS8_St17integral_constantIbXT_EES9_IcXT0_EES9_IS6_XT1_EEE3loc_8) #47
  br label %bb.by

bb.ar:                                            ; preds = %bb.aq
  %i.ge = zext nneg i8 %i.ga to i32               ; 2 uses
  %i.gf = add nsw i32 %i.ge, -48                  ; 2 uses
  store i32 %i.gf, ptr %i.d, align 4, !tbaa !359
  %.18512 = getelementptr inbounds nuw i8, ptr %.16, i64 1 ; 4 uses
  %i.gg = icmp ult ptr %.18512, %i.b
  br i1 %i.gg, label %.lr.ph515.preheader, label %._crit_edge516, !prof !276

.lr.ph515.preheader:                              ; preds = %bb.ar
  %i.gh = sub i64 %i.g, %.16545
  %scevgep546 = getelementptr i8, ptr %.16, i64 %i.gh ; 2 uses
  %i.gi = xor i64 %.16545, -1
  %i.gj = add i64 %i.gi, %i.g
  %i.gk = freeze i64 %i.gj                        ; 2 uses
  %i.gl = add i64 %i.gk, -1
  %xtraiter638 = and i64 %i.gk, 3                 ; 2 uses
  %lcmp.mod639.not = icmp eq i64 %xtraiter638, 0
  br i1 %lcmp.mod639.not, label %.lr.ph515.prol.loopexit, label %.lr.ph515.prol, !prof !276

.lr.ph515.prol:                                   ; preds = %.lr.ph515.preheader, %bb.as
  %.18513.prol = phi ptr [ %.18.prol, %bb.as ], [ %.18512, %.lr.ph515.preheader ] ; 3 uses
  %prol.iter640 = phi i64 [ %prol.iter640.next, %bb.as ], [ 0, %.lr.ph515.preheader ]
  %i.gm = load i8, ptr %.18513.prol, align 1, !tbaa !93
  %i.gn = add i8 %i.gm, -48
  %i.go = icmp ult i8 %i.gn, 10
  br i1 %i.go, label %bb.as, label %.thread477, !prof !251

bb.as:                                            ; preds = %.lr.ph515.prol
  %.18.prol = getelementptr inbounds nuw i8, ptr %.18513.prol, i64 1 ; 2 uses
  %prol.iter640.next = add i64 %prol.iter640, 1   ; 2 uses
  %prol.iter640.cmp.not = icmp eq i64 %prol.iter640.next, %xtraiter638
  br i1 %prol.iter640.cmp.not, label %.lr.ph515.prol.loopexit, label %.lr.ph515.prol, !prof !355, !llvm.loop !941

.lr.ph515.prol.loopexit:                          ; preds = %bb.as, %.lr.ph515.preheader
  %.18513.unr = phi ptr [ %.18512, %.lr.ph515.preheader ], [ %.18.prol, %bb.as ]
  %i.gp = icmp ult i64 %i.gl, 3
  br i1 %i.gp, label %._crit_edge516, label %.lr.ph515, !prof !357

._crit_edge516:                                   ; preds = %.lr.ph515.prol.loopexit, %bb.au, %bb.ar
  %.18.lcssa = phi ptr [ %.18512, %bb.ar ], [ %scevgep546, %bb.au ], [ %scevgep546, %.lr.ph515.prol.loopexit ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gr = load i8, ptr %i.gq, align 8, !tbaa !226, !range !231, !noundef !125
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %bb.at, label %.thread477, !prof !252

bb.at:                                            ; preds = %._crit_edge516
  %i.gt = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE7suspendEPKcNS4_5stateERKNS4_6numberE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.18.lcssa, i8 noundef signext 48, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.by

.lr.ph515:                                        ; preds = %.lr.ph515.prol.loopexit, %bb.au
  %.18513 = phi ptr [ %.18.3, %bb.au ], [ %.18513.unr, %.lr.ph515.prol.loopexit ] ; 9 uses
  %i.gu = load i8, ptr %.18513, align 1, !tbaa !93
  %i.gv = add i8 %i.gu, -48
  %i.gw = icmp ult i8 %i.gv, 10
  br i1 %i.gw, label %.lr.ph515.1, label %.thread477, !prof !251

.lr.ph515.1:                                      ; preds = %.lr.ph515
  %.18 = getelementptr inbounds nuw i8, ptr %.18513, i64 1
  %i.gx = load i8, ptr %.18, align 1, !tbaa !93
  %i.gy = add i8 %i.gx, -48
  %i.gz = icmp ult i8 %i.gy, 10
  br i1 %i.gz, label %.lr.ph515.2, label %.thread477.loopexit.loopexit.split.loop.exit695, !prof !251

.lr.ph515.2:                                      ; preds = %.lr.ph515.1
  %.18.1 = getelementptr inbounds nuw i8, ptr %.18513, i64 2
  %i.ha = load i8, ptr %.18.1, align 1, !tbaa !93
  %i.hb = add i8 %i.ha, -48
  %i.hc = icmp ult i8 %i.hb, 10
  br i1 %i.hc, label %.lr.ph515.3, label %.thread477.loopexit.loopexit.split.loop.exit693, !prof !251

.lr.ph515.3:                                      ; preds = %.lr.ph515.2
  %.18.2 = getelementptr inbounds nuw i8, ptr %.18513, i64 3
  %i.hd = load i8, ptr %.18.2, align 1, !tbaa !93
  %i.he = add i8 %i.hd, -48
  %i.hf = icmp ult i8 %i.he, 10
  br i1 %i.hf, label %bb.au, label %.thread477.loopexit.loopexit.split.loop.exit, !prof !251

bb.au:                                            ; preds = %.lr.ph515.3
  %.18.3 = getelementptr inbounds nuw i8, ptr %.18513, i64 4 ; 2 uses
  %exitcond547.not.3 = icmp eq ptr %.18.3, %i.b
  br i1 %exitcond547.not.3, label %._crit_edge516, label %.lr.ph515, !prof !353, !llvm.loop !942

.thread477.loopexit.loopexit.split.loop.exit:     ; preds = %.lr.ph515.3
  %.18.2.le = getelementptr inbounds nuw i8, ptr %.18513, i64 3
  br label %.thread477

.thread477.loopexit.loopexit.split.loop.exit693:  ; preds = %.lr.ph515.2
  %.18.1.le = getelementptr inbounds nuw i8, ptr %.18513, i64 2
  br label %.thread477

.thread477.loopexit.loopexit.split.loop.exit695:  ; preds = %.lr.ph515.1
  %.18.le = getelementptr inbounds nuw i8, ptr %.18513, i64 1
  br label %.thread477

.thread477:                                       ; preds = %.lr.ph515, %.thread477.loopexit.loopexit.split.loop.exit695, %.thread477.loopexit.loopexit.split.loop.exit693, %.thread477.loopexit.loopexit.split.loop.exit, %.lr.ph515.prol, %._crit_edge516
  %.18481 = phi ptr [ %.18.lcssa, %._crit_edge516 ], [ %.18513, %.lr.ph515 ], [ %.18.le, %.thread477.loopexit.loopexit.split.loop.exit695 ], [ %.18.1.le, %.thread477.loopexit.loopexit.split.loop.exit693 ], [ %.18.2.le, %.thread477.loopexit.loopexit.split.loop.exit ], [ %.18513.prol, %.lr.ph515.prol ] ; 3 uses
  br i1 %i.ft, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.thread477
  %3 = or disjoint i32 %i.gf, -2147483648
  %i.hg = icmp slt i32 %i.fm, %3
  br i1 %i.hg, label %.thread416.sink.split, label %.thread416, !prof !252

bb.aw:                                            ; preds = %.thread477
  %i.hh = sub nuw i32 -2147483601, %i.ge
  %i.hi = icmp sgt i32 %i.fm, %i.hh
  br i1 %i.hi, label %.thread416.sink.split, label %.thread416, !prof !252

bb.ax:                                            ; preds = %bb.aa, %.split.us
  %.fr518578 = phi i64 [ %.fr518580, %bb.aa ], [ %.fr518579, %.split.us ] ; 3 uses
  %.3384489 = phi ptr [ %.us-phi493, %bb.aa ], [ %.us-phi, %.split.us ] ; 2 uses
  %i.hj = icmp sgt i64 %.fr518578, -1
  br i1 %i.hj, label %bb.ay, label %bb.bh

bb.ay:                                            ; preds = %bb.d, %bb.ax
  %i.hk = phi i64 [ %.fr518578, %bb.ax ], [ 0, %bb.d ]
  %.22 = phi ptr [ %.3384489, %bb.ax ], [ %i.q, %bb.d ]
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !224 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !323 ; 2 uses
  %.not.i.i.i = icmp ult ptr %i.hn, %i.hp
  br i1 %.not.i.i.i, label %bb.be, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !225
  %i.hs = ptrtoint ptr %i.hp to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht                    ; 2 uses
  %i.hv = sdiv exact i64 %i.hu, 24
  %i.hw = add nsw i64 %i.hv, 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i = phi i64 [ 16, %bb.az ], [ %i.hy, %bb.ba ] ; 4 uses
  %i.hx = icmp ult i64 %.0.i.i.i.i, %i.hw
  %i.hy = shl i64 %.0.i.i.i.i, 1
  br i1 %i.hx, label %bb.ba, label %bb.bb, !llvm.loop !49

bb.bb:                                            ; preds = %bb.ba
  %i.hz = load i64, ptr %0, align 8, !tbaa !96    ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.hz, 0
  %i.ia = and i64 %i.hz, -4
  %i.ib = inttoptr i64 %i.ia to ptr
  %.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.ib ; 2 uses
  %i.ic = mul i64 %.0.i.i.i.i, 24
  %i.id = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !98
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = tail call noundef ptr %i.if(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i.i.i.i, i64 noundef %i.ic, i64 noundef 16), !inline_history !69 ; 4 uses
  %i.ih = load ptr, ptr %i.hm, align 8, !tbaa !224
  %i.ii = load ptr, ptr %i.hq, align 8, !tbaa !225 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ii, null
  %.pre.i.i.i.i = ptrtoint ptr %i.ih to i64       ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = sub i64 %.pre.i.i.i.i, %i.ij            ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ig, ptr nonnull align 1 %i.ii, i64 %i.ik, i1 false)
  %i.il = load ptr, ptr %i.hq, align 8, !tbaa !225 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !322
  %.not12.i.i.i.i = icmp eq ptr %i.il, %i.in
  br i1 %.not12.i.i.i.i, label %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.io = load i64, ptr %0, align 8, !tbaa !96    ; 2 uses
  %.not.i.i13.i.i.i.i = icmp eq i64 %i.io, 0
  %i.ip = and i64 %i.io, -4
  %i.iq = inttoptr i64 %i.ip to ptr
  %.0.i.i14.i.i.i.i = select i1 %.not.i.i13.i.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.iq ; 2 uses
  %i.ir = load ptr, ptr %.0.i.i14.i.i.i.i, align 8, !tbaa !98
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.it = load ptr, ptr %i.is, align 8
  tail call void %i.it(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i14.i.i.i.i, ptr noundef %i.il, i64 noundef %i.hu, i64 noundef 16), !inline_history !70
  br label %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i

_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i: ; preds = %bb.bd, %bb.bc, %bb.bb
  %.pre-phi18.i.i.i.i = phi i64 [ %i.ik, %bb.bd ], [ %i.ik, %bb.bc ], [ %.pre.i.i.i.i, %bb.bb ]
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.pre-phi18.i.i.i.i ; 2 uses
  store ptr %i.iu, ptr %i.hm, align 8, !tbaa !224
  %i.iv = getelementptr inbounds nuw [24 x i8], ptr %i.ig, i64 %.0.i.i.i.i
  store ptr %i.iv, ptr %i.ho, align 8, !tbaa !323
  store ptr %i.ig, ptr %i.hq, align 8, !tbaa !225
  br label %bb.be

bb.be:                                            ; preds = %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i, %bb.ay
  %i.iw = phi ptr [ %i.iu, %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i ], [ %i.hn, %bb.ay ] ; 3 uses
  %i.ix = load i64, ptr %i.hl, align 8, !tbaa !96 ; 3 uses
  %i.iy = trunc i64 %i.ix to i1
  br i1 %i.iy, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.iz = and i64 %i.ix, -4
  %i.ja = inttoptr i64 %i.iz to ptr
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = atomicrmw add ptr %i.jb, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  store i64 %i.ix, ptr %i.iw, align 8, !tbaa !96
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store i8 2, ptr %i.jd, align 8, !tbaa !136
  %i.je = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store i64 %i.hk, ptr %i.je, align 8, !tbaa !93
  %i.jf = load ptr, ptr %i.hm, align 8, !tbaa !224
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  store ptr %i.jg, ptr %i.hm, align 8, !tbaa !224
  br label %bb.by

bb.bh:                                            ; preds = %bb.ax
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !224 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !323 ; 2 uses
  %.not.i.i.i133 = icmp ult ptr %i.jj, %i.jl
  br i1 %.not.i.i.i133, label %bb.bn, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !225
  %i.jo = ptrtoint ptr %i.jl to i64
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = sub i64 %i.jo, %i.jp                    ; 2 uses
  %i.jr = sdiv exact i64 %i.jq, 24
  %i.js = add nsw i64 %i.jr, 1
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i134 = phi i64 [ 16, %bb.bi ], [ %i.ju, %bb.bj ] ; 4 uses
  %i.jt = icmp ult i64 %.0.i.i.i.i134, %i.js
  %i.ju = shl i64 %.0.i.i.i.i134, 1
  br i1 %i.jt, label %bb.bj, label %bb.bk, !llvm.loop !49

bb.bk:                                            ; preds = %bb.bj
  %i.jv = load i64, ptr %0, align 8, !tbaa !96    ; 2 uses
  %.not.i.i.i.i.i.i135 = icmp eq i64 %i.jv, 0
  %i.jw = and i64 %i.jv, -4
  %i.jx = inttoptr i64 %i.jw to ptr
  %.0.i.i.i.i.i.i136 = select i1 %.not.i.i.i.i.i.i135, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.jx ; 2 uses
  %i.jy = mul i64 %.0.i.i.i.i134, 24
  %i.jz = load ptr, ptr %.0.i.i.i.i.i.i136, align 8, !tbaa !98
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = tail call noundef ptr %i.kb(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i.i.i.i136, i64 noundef %i.jy, i64 noundef 16), !inline_history !71 ; 4 uses
  %i.kd = load ptr, ptr %i.ji, align 8, !tbaa !224
  %i.ke = load ptr, ptr %i.jm, align 8, !tbaa !225 ; 3 uses
  %.not.i.i.i.i137 = icmp eq ptr %i.ke, null
  %.pre.i.i.i.i138 = ptrtoint ptr %i.kd to i64    ; 2 uses
  br i1 %.not.i.i.i.i137, label %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i142, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kf = ptrtoint ptr %i.ke to i64
  %i.kg = sub i64 %.pre.i.i.i.i138, %i.kf         ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kc, ptr nonnull align 1 %i.ke, i64 %i.kg, i1 false)
  %i.kh = load ptr, ptr %i.jm, align 8, !tbaa !225 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !322
  %.not12.i.i.i.i139 = icmp eq ptr %i.kh, %i.kj
  br i1 %.not12.i.i.i.i139, label %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i142, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kk = load i64, ptr %0, align 8, !tbaa !96    ; 2 uses
  %.not.i.i13.i.i.i.i140 = icmp eq i64 %i.kk, 0
  %i.kl = and i64 %i.kk, -4
  %i.km = inttoptr i64 %i.kl to ptr
  %.0.i.i14.i.i.i.i141 = select i1 %.not.i.i13.i.i.i.i140, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.km ; 2 uses
  %i.kn = load ptr, ptr %.0.i.i14.i.i.i.i141, align 8, !tbaa !98
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8
  tail call void %i.kp(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i14.i.i.i.i141, ptr noundef %i.kh, i64 noundef %i.jq, i64 noundef 16), !inline_history !72
  br label %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i142

_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i142: ; preds = %bb.bm, %bb.bl, %bb.bk
  %.pre-phi18.i.i.i.i143 = phi i64 [ %i.kg, %bb.bm ], [ %i.kg, %bb.bl ], [ %.pre.i.i.i.i138, %bb.bk ]
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kc, i64 %.pre-phi18.i.i.i.i143 ; 2 uses
  store ptr %i.kq, ptr %i.ji, align 8, !tbaa !224
  %i.kr = getelementptr inbounds nuw [24 x i8], ptr %i.kc, i64 %.0.i.i.i.i134
  store ptr %i.kr, ptr %i.jk, align 8, !tbaa !323
  store ptr %i.kc, ptr %i.jm, align 8, !tbaa !225
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i142, %bb.bh
  %i.ks = phi ptr [ %i.kq, %_ZN5boost4json11value_stack5stack8grow_oneEv.exit.i.i.i142 ], [ %i.jj, %bb.bh ] ; 3 uses
  %i.kt = load i64, ptr %i.jh, align 8, !tbaa !96 ; 3 uses
  %i.ku = trunc i64 %i.kt to i1
  br i1 %i.ku, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.kv = and i64 %i.kt, -4
  %i.kw = inttoptr i64 %i.kv to ptr
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ky = atomicrmw add ptr %i.kx, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
end_hunk_1
