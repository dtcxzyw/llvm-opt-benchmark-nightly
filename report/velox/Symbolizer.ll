inline.NumInlined: 174
inline.NumDeleted: 117
begin_hunk_0_@_ZN5folly10symbolizer21SafeStackTracePrinter15printStackTraceEb:bb.a
.epil.preheader97:                                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i10
  %.011.i11.epil.init = phi i64 [ 0, %.lr.ph.i10 ], [ %i.av, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod101 = icmp ne i64 %xtraiter98, 0
  tail call void @llvm.assume(i1 %lcmp.mod101)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader97
  %.011.i11.epil = phi i64 [ %.011.i11.epil.init, %.epil.preheader97 ], [ %i.ax, %bb.k ] ; 2 uses
  %epil.iter99 = phi i64 [ 0, %.epil.preheader97 ], [ %epil.iter99.next, %bb.k ]
  %i.aw = getelementptr inbounds nuw [152 x i8], ptr %i.am, i64 %.011.i11.epil
  store i8 0, ptr %i.aw, align 8, !tbaa !1136
  %i.ax = add nuw i64 %.011.i11.epil, 1
  %epil.iter99.next = add i64 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i64 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %.loopexit, label %bb.k, !llvm.loop !1818

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.k, %bb.i
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1094
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.ag, label %bb.l

bb.l:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.bb = tail call noundef ptr @_ZN5folly27tryGetCurrentAsyncStackRootEv() #18 ; 5 uses
  %.not.i14 = icmp eq ptr %i.bb, null             ; 3 uses
  br i1 %.not.i14, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bd = phi ptr [ %i.bc, %bb.m ], [ null, %bb.l ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 46 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  invoke void %i.bh(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.2, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.2, i64 1))
          to label %.noexc unwind label %bb.e, !inline_history !1819

.noexc:                                           ; preds = %bb.n
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.3, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 41))
          to label %.noexc15 unwind label %bb.e, !inline_history !1819

.noexc15:                                         ; preds = %.noexc
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.4, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.4, i64 28))
          to label %.noexc16 unwind label %bb.e, !inline_history !1819

.noexc16:                                         ; preds = %.noexc15
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.10, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 2))
          to label %.noexc17 unwind label %bb.e, !inline_history !1819

.noexc17:                                         ; preds = %.noexc16
  %i.br = ptrtoint ptr %i.bb to i64               ; 3 uses
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.br, i1 true)
  %i.bt = sub nuw nsw i64 67, %i.bs
  %i.bu = lshr i64 %i.bt, 2                       ; 2 uses
  %.0.i1.i.i.i.i = select i1 %.not.i14, i64 1, i64 %i.bu, !prof !32 ; 3 uses
  %i.bv = icmp samesign ugt i64 %.0.i1.i.i.i.i, 2
  br i1 %i.bv, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc17, %.lr.ph.i.i.i.i
  %.0.i3.i.i.i.i = phi i64 [ %i.bx, %.lr.ph.i.i.i.i ], [ %i.br, %.noexc17 ] ; 2 uses
  %.014.i2.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i ], [ %i.bu, %.noexc17 ]
  %i.bw = add i64 %.014.i2.i.i.i.i, -2            ; 4 uses
  %i.bx = lshr i64 %.0.i3.i.i.i.i, 8              ; 2 uses
  %i.by = and i64 %.0.i3.i.i.i.i, 255
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !1820
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bw
  store i16 %i.ca, ptr %i.cb, align 1
  %i.cc = icmp ugt i64 %i.bw, 2
  br i1 %i.cc, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1821

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.noexc17
  %.014.i.lcssa.i.i.i.i = phi i64 [ %.0.i1.i.i.i.i, %.noexc17 ], [ %i.bw, %.lr.ph.i.i.i.i ]
  %.0.i.lcssa.i.i.i.i = phi i64 [ %i.br, %.noexc17 ], [ %i.bx, %.lr.ph.i.i.i.i ]
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i.i
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !1820 ; 2 uses
  %i.cf = icmp eq i64 %.014.i.lcssa.i.i.i.i, 2
  br i1 %i.cf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  store i16 %i.ce, ptr %i.a, align 16
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit.i"

bb.p:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cg = lshr i16 %i.ce, 8
  %i.ch = trunc nuw i16 %i.cg to i8
  store i8 %i.ch, ptr %i.a, align 16, !tbaa !31
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit.i"

"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit.i": ; preds = %bb.p, %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i1.i.i.i.i
  %i.cj = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  invoke void %i.cl(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull %i.a, ptr nonnull %i.ci)
          to label %.noexc18 unwind label %bb.e, !inline_history !1819

.noexc18:                                         ; preds = %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit.i"
  %i.cm = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.5, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.5, i64 55))
          to label %.noexc19 unwind label %bb.e, !inline_history !1819

.noexc19:                                         ; preds = %.noexc18
  br i1 %.not.i14, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %.noexc19
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1822 ; 2 uses
  %i.cr = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.10, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 2))
          to label %.noexc20 unwind label %bb.e, !inline_history !1819

.noexc20:                                         ; preds = %bb.q
  %i.cu = ptrtoint ptr %i.cq to i64               ; 3 uses
  %.not.i.i.i.i34.i = icmp eq ptr %i.cq, null
  %i.cv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cu, i1 true)
  %i.cw = sub nuw nsw i64 67, %i.cv
  %i.cx = lshr i64 %i.cw, 2                       ; 2 uses
  %.0.i1.i.i.i35.i = select i1 %.not.i.i.i.i34.i, i64 1, i64 %i.cx, !prof !32 ; 3 uses
  %i.cy = icmp samesign ugt i64 %.0.i1.i.i.i35.i, 2
  br i1 %i.cy, label %.lr.ph.i.i.i40.i, label %._crit_edge.i.i.i36.i

.lr.ph.i.i.i40.i:                                 ; preds = %.noexc20, %.lr.ph.i.i.i40.i
  %.0.i3.i.i.i41.i = phi i64 [ %i.da, %.lr.ph.i.i.i40.i ], [ %i.cu, %.noexc20 ] ; 2 uses
  %.014.i2.i.i.i42.i = phi i64 [ %i.cz, %.lr.ph.i.i.i40.i ], [ %i.cx, %.noexc20 ]
  %i.cz = add i64 %.014.i2.i.i.i42.i, -2          ; 4 uses
  %i.da = lshr i64 %.0.i3.i.i.i41.i, 8            ; 2 uses
  %i.db = and i64 %.0.i3.i.i.i41.i, 255
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !1820
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cz
  store i16 %i.dd, ptr %i.de, align 1
  %i.df = icmp ugt i64 %i.cz, 2
  br i1 %i.df, label %.lr.ph.i.i.i40.i, label %._crit_edge.i.i.i36.i, !llvm.loop !1821

._crit_edge.i.i.i36.i:                            ; preds = %.lr.ph.i.i.i40.i, %.noexc20
  %.014.i.lcssa.i.i.i37.i = phi i64 [ %.0.i1.i.i.i35.i, %.noexc20 ], [ %i.cz, %.lr.ph.i.i.i40.i ]
  %.0.i.lcssa.i.i.i38.i = phi i64 [ %i.cu, %.noexc20 ], [ %i.da, %.lr.ph.i.i.i40.i ]
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i38.i
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !1820 ; 2 uses
  %i.di = icmp eq i64 %.014.i.lcssa.i.i.i37.i, 2
  br i1 %i.di, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i.i36.i
  store i16 %i.dh, ptr %i.a, align 16
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit43.i"

bb.s:                                             ; preds = %._crit_edge.i.i.i36.i
  %i.dj = lshr i16 %i.dh, 8
  %i.dk = trunc nuw i16 %i.dj to i8
  store i8 %i.dk, ptr %i.a, align 16, !tbaa !31
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit43.i"

"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit43.i": ; preds = %bb.s, %bb.r
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i1.i.i.i35.i
  %i.dm = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  invoke void %i.do(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull %i.a, ptr nonnull %i.dl)
          to label %.noexc21 unwind label %bb.e, !inline_history !1819

.noexc21:                                         ; preds = %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit43.i"
  %i.dp = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.6, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 18))
          to label %.noexc22 unwind label %bb.e, !inline_history !1819

.noexc22:                                         ; preds = %.noexc21
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1828
  %.fr88.i = freeze ptr %i.dt
  %i.du = ptrtoint ptr %.fr88.i to i64
  br label %.noexc25

.critedge.i:                                      ; preds = %.noexc19
  %i.dv = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.10, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 2))
          to label %.noexc23 unwind label %bb.e, !inline_history !1819

.noexc23:                                         ; preds = %.critedge.i
  %2 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 1), align 1, !tbaa !1820
  store i8 %2, ptr %i.a, align 16, !tbaa !31
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.dz = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  invoke void %i.eb(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull %i.a, ptr nonnull %i.dy)
          to label %.noexc24 unwind label %bb.e, !inline_history !1819

.noexc24:                                         ; preds = %.noexc23
  %i.ec = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  invoke void %i.ee(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.6, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 18))
          to label %.noexc25 unwind label %bb.e, !inline_history !1819

.noexc25:                                         ; preds = %.noexc24, %.noexc22
  %.fr.i = phi i64 [ %i.du, %.noexc22 ], [ 0, %.noexc24 ] ; 5 uses
  %i.ef = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8
  invoke void %i.eh(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.10, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 2))
          to label %.noexc26 unwind label %bb.e, !inline_history !1819

.noexc26:                                         ; preds = %.noexc25
  %.not.i.i.i.i50.i = icmp eq i64 %.fr.i, 0
  %i.ei = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.fr.i, i1 true)
  %i.ej = sub nuw nsw i64 67, %i.ei
  %i.ek = lshr i64 %i.ej, 2                       ; 4 uses
  br i1 %.not.i.i.i.i50.i, label %._crit_edge.i.i.i52.thread.i, label %bb.t, !prof !32

._crit_edge.i.i.i52.thread.i:                     ; preds = %.noexc26
  %i.el = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !1820
  br label %bb.v

bb.t:                                             ; preds = %.noexc26
  %i.em = icmp ugt i64 %.fr.i, 255
  br i1 %i.em, label %.lr.ph.i.i.i56.i, label %._crit_edge.i.i.i52.i

.lr.ph.i.i.i56.i:                                 ; preds = %bb.t, %.lr.ph.i.i.i56.i
  %.0.i3.i.i.i57.i = phi i64 [ %i.eo, %.lr.ph.i.i.i56.i ], [ %.fr.i, %bb.t ] ; 2 uses
  %.014.i2.i.i.i58.i = phi i64 [ %i.en, %.lr.ph.i.i.i56.i ], [ %i.ek, %bb.t ]
  %i.en = add i64 %.014.i2.i.i.i58.i, -2          ; 4 uses
  %i.eo = lshr i64 %.0.i3.i.i.i57.i, 8            ; 2 uses
  %i.ep = and i64 %.0.i3.i.i.i57.i, 255
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !1820
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.en
  store i16 %i.er, ptr %i.es, align 1
  %i.et = icmp ugt i64 %i.en, 2
  br i1 %i.et, label %.lr.ph.i.i.i56.i, label %._crit_edge.i.i.i52.i, !llvm.loop !1821

._crit_edge.i.i.i52.i:                            ; preds = %.lr.ph.i.i.i56.i, %bb.t
  %.014.i.lcssa.i.i.i53.i = phi i64 [ %i.ek, %bb.t ], [ %i.en, %.lr.ph.i.i.i56.i ]
  %.0.i.lcssa.i.i.i54.i = phi i64 [ %.fr.i, %bb.t ], [ %i.eo, %.lr.ph.i.i.i56.i ]
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i54.i
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !1820 ; 2 uses
  %i.ew = icmp eq i64 %.014.i.lcssa.i.i.i53.i, 2
  br i1 %i.ew, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i.i52.i
  store i16 %i.ev, ptr %i.a, align 16
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit59.i"

bb.v:                                             ; preds = %._crit_edge.i.i.i52.i, %._crit_edge.i.i.i52.thread.i
  %i.ex = phi i16 [ %i.el, %._crit_edge.i.i.i52.thread.i ], [ %i.ev, %._crit_edge.i.i.i52.i ]
  %i.ey = phi i64 [ 1, %._crit_edge.i.i.i52.thread.i ], [ %i.ek, %._crit_edge.i.i.i52.i ]
  %i.ez = lshr i16 %i.ex, 8
  %i.fa = trunc nuw i16 %i.ez to i8
  store i8 %i.fa, ptr %i.a, align 16, !tbaa !31
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit59.i"

"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit59.i": ; preds = %bb.v, %bb.u
  %i.fb = phi i64 [ %i.ek, %bb.u ], [ %i.ey, %bb.v ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fb
  %i.fd = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8
  invoke void %i.ff(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull %i.a, ptr nonnull %i.fc)
          to label %.noexc27 unwind label %bb.e, !inline_history !1819

.noexc27:                                         ; preds = %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit59.i"
  %i.fg = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  invoke void %i.fi(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.7, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.7, i64 5))
          to label %.noexc28 unwind label %bb.e, !inline_history !1819

.noexc28:                                         ; preds = %.noexc27
  %i.fj = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  invoke void %i.fl(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.8, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.8, i64 37))
          to label %.noexc29 unwind label %bb.e, !inline_history !1819

.noexc29:                                         ; preds = %.noexc28
  %i.fm = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8
  invoke void %i.fo(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.10, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 2))
          to label %.noexc30 unwind label %bb.e, !inline_history !1819

.noexc30:                                         ; preds = %.noexc29
  %i.fp = ptrtoint ptr %i.bd to i64               ; 3 uses
  %.not.i.i.i.i61.i = icmp eq ptr %i.bd, null     ; 2 uses
  %i.fq = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fp, i1 true)
  %i.fr = sub nuw nsw i64 67, %i.fq
  %i.fs = lshr i64 %i.fr, 2                       ; 2 uses
  %.0.i1.i.i.i62.i = select i1 %.not.i.i.i.i61.i, i64 1, i64 %i.fs, !prof !32 ; 3 uses
  %i.ft = icmp samesign ugt i64 %.0.i1.i.i.i62.i, 2
  br i1 %i.ft, label %.lr.ph.i.i.i67.i, label %._crit_edge.i.i.i63.i

.lr.ph.i.i.i67.i:                                 ; preds = %.noexc30, %.lr.ph.i.i.i67.i
  %.0.i3.i.i.i68.i = phi i64 [ %i.fv, %.lr.ph.i.i.i67.i ], [ %i.fp, %.noexc30 ] ; 2 uses
  %.014.i2.i.i.i69.i = phi i64 [ %i.fu, %.lr.ph.i.i.i67.i ], [ %i.fs, %.noexc30 ]
  %i.fu = add i64 %.014.i2.i.i.i69.i, -2          ; 4 uses
  %i.fv = lshr i64 %.0.i3.i.i.i68.i, 8            ; 2 uses
  %i.fw = and i64 %.0.i3.i.i.i68.i, 255
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !1820
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fu
  store i16 %i.fy, ptr %i.fz, align 1
  %i.ga = icmp ugt i64 %i.fu, 2
  br i1 %i.ga, label %.lr.ph.i.i.i67.i, label %._crit_edge.i.i.i63.i, !llvm.loop !1821

._crit_edge.i.i.i63.i:                            ; preds = %.lr.ph.i.i.i67.i, %.noexc30
  %.014.i.lcssa.i.i.i64.i = phi i64 [ %.0.i1.i.i.i62.i, %.noexc30 ], [ %i.fu, %.lr.ph.i.i.i67.i ]
  %.0.i.lcssa.i.i.i65.i = phi i64 [ %i.fp, %.noexc30 ], [ %i.fv, %.lr.ph.i.i.i67.i ]
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i65.i
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !1820 ; 2 uses
  %i.gd = icmp eq i64 %.014.i.lcssa.i.i.i64.i, 2
  br i1 %i.gd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i.i63.i
  store i16 %i.gc, ptr %i.a, align 16
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit70.i"

bb.x:                                             ; preds = %._crit_edge.i.i.i63.i
  %i.ge = lshr i16 %i.gc, 8
  %i.gf = trunc nuw i16 %i.ge to i8
  store i8 %i.gf, ptr %i.a, align 16, !tbaa !31
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit70.i"

"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit70.i": ; preds = %bb.x, %bb.w
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i1.i.i.i62.i
  %i.gh = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  invoke void %i.gj(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull %i.a, ptr nonnull %i.gg)
          to label %.noexc31 unwind label %bb.e, !inline_history !1819

.noexc31:                                         ; preds = %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit70.i"
  %i.gk = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8
  invoke void %i.gm(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.6, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 18))
          to label %.noexc32 unwind label %bb.e, !inline_history !1819

.noexc32:                                         ; preds = %.noexc31
  br i1 %.not.i.i.i.i61.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.noexc32
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !1829
  %.fr90.i = freeze ptr %i.go
  %i.gp = ptrtoint ptr %.fr90.i to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.noexc32
  %.fr89.i = phi i64 [ %i.gp, %bb.y ], [ 0, %.noexc32 ] ; 5 uses
  %i.gq = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8
  invoke void %i.gs(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.10, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 2))
          to label %.noexc33 unwind label %bb.e, !inline_history !1819

.noexc33:                                         ; preds = %bb.z
  %.not.i.i.i.i72.i = icmp eq i64 %.fr89.i, 0
  %i.gt = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.fr89.i, i1 true)
  %i.gu = sub nuw nsw i64 67, %i.gt
  %i.gv = lshr i64 %i.gu, 2                       ; 4 uses
  br i1 %.not.i.i.i.i72.i, label %._crit_edge.i.i.i74.thread.i, label %bb.aa, !prof !32

._crit_edge.i.i.i74.thread.i:                     ; preds = %.noexc33
  %i.gw = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !1820
  br label %bb.ac

bb.aa:                                            ; preds = %.noexc33
  %i.gx = icmp ugt i64 %.fr89.i, 255
  br i1 %i.gx, label %.lr.ph.i.i.i78.i, label %._crit_edge.i.i.i74.i

.lr.ph.i.i.i78.i:                                 ; preds = %bb.aa, %.lr.ph.i.i.i78.i
  %.0.i3.i.i.i79.i = phi i64 [ %i.gz, %.lr.ph.i.i.i78.i ], [ %.fr89.i, %bb.aa ] ; 2 uses
  %.014.i2.i.i.i80.i = phi i64 [ %i.gy, %.lr.ph.i.i.i78.i ], [ %i.gv, %bb.aa ]
  %i.gy = add i64 %.014.i2.i.i.i80.i, -2          ; 4 uses
  %i.gz = lshr i64 %.0.i3.i.i.i79.i, 8            ; 2 uses
  %i.ha = and i64 %.0.i3.i.i.i79.i, 255
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.ha
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !1820
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gy
  store i16 %i.hc, ptr %i.hd, align 1
  %i.he = icmp ugt i64 %i.gy, 2
end_hunk_0
