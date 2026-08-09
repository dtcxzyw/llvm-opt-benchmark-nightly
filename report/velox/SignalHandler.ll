inline.NumInlined: 229
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5folly10symbolizer12_GLOBAL__N_113signalHandlerEiP9siginfo_tPv:bb.a
bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 0, ptr %5, align 8, !tbaa !67
  store i64 100000000, ptr %i.r, align 8, !tbaa !69
  %i.ac = invoke i32 @nanosleep(ptr noundef nonnull %5, ptr noundef null)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc11:                                         ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.ad = cmpxchg ptr @_ZN5folly10symbolizer12_GLOBAL__N_113gSignalThreadE, i64 0, i64 %i.o seq_cst seq_cst, align 8 ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %._crit_edge.i, label %bb.b, !llvm.loop !70

._crit_edge.i:                                    ; preds = %.noexc11, %bb.a
  %i.af = call i64 @time(ptr noundef null) #19    ; 2 uses
  %i.ag = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(13) %i.ah, ptr nonnull @.str.9, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.9, i64 15))
          to label %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit.i.i unwind label %bb.i, !inline_history !71

_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit.i.i: ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  %i.al = invoke noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %i.k, i64 noundef %i.af)
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit.i.i
  %i.am = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(13) %i.ao, ptr nonnull %i.k, ptr nonnull %i.an)
          to label %bb.f unwind label %bb.i, !inline_history !72

bb.f:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  %i.as = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(13) %i.at, ptr nonnull @.str.10, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 27))
          to label %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit6.i.i unwind label %bb.i, !inline_history !71

_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit6.i.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  %i.ax = invoke noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %i.j, i64 noundef %i.af)
          to label %.noexc7.i.i unwind label %bb.i

.noexc7.i.i:                                      ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit6.i.i
  %i.ay = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(13) %i.ba, ptr nonnull %i.j, ptr nonnull %i.az)
          to label %bb.g unwind label %bb.i, !inline_history !72

bb.g:                                             ; preds = %.noexc7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  %i.be = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr noundef nonnull align 8 dereferenceable(13) %i.bf, ptr nonnull @.str.11, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.11, i64 7))
          to label %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit11.i.i unwind label %bb.i, !inline_history !71

_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit11.i.i: ; preds = %bb.g
  %i.bj = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  invoke void @_ZN5folly10symbolizer21SafeStackTracePrinter5flushEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bj)
          to label %_ZN5folly10symbolizer12_GLOBAL__N_112dumpTimeInfoEv.exit.i unwind label %bb.h

bb.h:                                             ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit11.i.i
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #22
  unreachable

bb.i:                                             ; preds = %bb.g, %.noexc7.i.i, %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit6.i.i, %bb.f, %.noexc.i.i, %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit.i.i, %._crit_edge.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN5folly6detail14ScopeGuardImplIZNS_10symbolizer12_GLOBAL__N_112dumpTimeInfoEvE3$_0Lb1EED2Ev"(i8 0) #19
  br label %.body

_ZN5folly10symbolizer12_GLOBAL__N_112dumpTimeInfoEv.exit.i: ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit11.i.i
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly10symbolizer12_GLOBAL__N_113kFatalSignalsE, i64 8), align 8, !tbaa !59 ; 2 uses
  %.not119.i.i = icmp eq ptr %i.bn, null
  br i1 %.not119.i.i, label %._crit_edge.i.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_112dumpTimeInfoEv.exit.i
  %i.bo = load i32, ptr @_ZN5folly10symbolizer12_GLOBAL__N_113kFatalSignalsE, align 16, !tbaa !62
  %i.bp = icmp eq i32 %i.bo, %0
  br i1 %i.bp, label %._crit_edge.i.i, label %.lr.ph11.i

.lr.ph11.i:                                       ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i
  %.022120.i10.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ @_ZN5folly10symbolizer12_GLOBAL__N_113kFatalSignalsE, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.022120.i10.i, i64 176
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !59 ; 2 uses
  %.not.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i, label %.._crit_edge.i.loopexit_crit_edge.i, label %.lr.ph.i.i, !llvm.loop !73

.lr.ph.i.i:                                       ; preds = %.lr.ph11.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.022120.i10.i, i64 168 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !62
  %i.bu = icmp eq i32 %i.bt, %0
  br i1 %i.bu, label %._crit_edge.i.i, label %.lr.ph11.i, !llvm.loop !73

.._crit_edge.i.loopexit_crit_edge.i:              ; preds = %.lr.ph11.i
  br label %._crit_edge.i.i, !llvm.loop !73

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.._crit_edge.i.loopexit_crit_edge.i, %.lr.ph.i.preheader.i, %_ZN5folly10symbolizer12_GLOBAL__N_112dumpTimeInfoEv.exit.i
  %.lcssa118.i.i = phi ptr [ null, %_ZN5folly10symbolizer12_GLOBAL__N_112dumpTimeInfoEv.exit.i ], [ null, %.._crit_edge.i.loopexit_crit_edge.i ], [ %i.bn, %.lr.ph.i.preheader.i ], [ %i.br, %.lr.ph.i.i ] ; 4 uses
  %i.bv = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  invoke void %i.bz(ptr noundef nonnull align 8 dereferenceable(13) %i.bw, ptr nonnull @.str.12, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.12, i64 11))
          to label %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit.i6.i unwind label %bb.l, !inline_history !71

_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit.i6.i: ; preds = %._crit_edge.i.i
  %i.ca = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  %i.cb = invoke noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %i.i, i64 noundef %i.ca)
          to label %.noexc.i7.i unwind label %bb.l

.noexc.i7.i:                                      ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit.i6.i
  %i.cc = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.cd = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cb
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke void %i.ch(ptr noundef nonnull align 8 dereferenceable(13) %i.ce, ptr nonnull %i.i, ptr nonnull %i.cd)
          to label %bb.j unwind label %bb.l, !inline_history !72

bb.j:                                             ; preds = %.noexc.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  %.not26.i.i = icmp eq ptr %.lcssa118.i.i, null
  br i1 %.not26.i.i, label %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit36.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  invoke void %i.cm(ptr noundef nonnull align 8 dereferenceable(13) %i.cj, ptr nonnull @.str.13, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.13, i64 2))
          to label %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit32.i.i unwind label %bb.l, !inline_history !71

_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit32.i.i: ; preds = %bb.k
  %i.cn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa118.i.i) #19
  %i.co = getelementptr inbounds nuw i8, ptr %.lcssa118.i.i, i64 %i.cn
  %i.cp = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(13) %i.cq, ptr nonnull %.lcssa118.i.i, ptr nonnull %i.co)
          to label %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit34.i.i unwind label %bb.l, !inline_history !71

_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit34.i.i: ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit32.i.i
  %i.cu = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  invoke void %i.cy(ptr noundef nonnull align 8 dereferenceable(13) %i.cv, ptr nonnull @.str.14, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.14, i64 1))
          to label %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit36.i.i unwind label %bb.l, !inline_history !71

bb.l:                                             ; preds = %.noexc70.i.i, %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit69.i.i, %bb.v, %.noexc65.i.i, %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit64.i.i, %bb.u, %.noexc60.i.i, %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit59.i.i, %bb.s, %_ZN5folly14to_ascii_lowerILm16EEEmPcPKcm.exit.i52.i.i, %bb.p, %.noexc42.i.i, %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit41.i.i, %bb.o, %_ZN5folly14to_ascii_lowerILm16EEEmPcPKcm.exit.i.i.i, %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit36.i.i, %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit34.i.i, %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit32.i.i, %bb.k, %.noexc.i7.i, %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit.i6.i, %._crit_edge.i.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit36.i.i: ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit34.i.i, %bb.j
  %i.da = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  invoke void %i.de(ptr noundef nonnull align 8 dereferenceable(13) %i.db, ptr nonnull @.str.13, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.13, i64 2))
          to label %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit38.i.i unwind label %bb.l, !inline_history !71

_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit38.i.i: ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit36.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !58 ; 2 uses
  %i.dh = ptrtoint ptr %i.dg to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  %i.di = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 48, ptr %i.h, align 16, !tbaa !58
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 2 uses
  store i8 120, ptr %i.di, align 1, !tbaa !58
  %ctlz.nonzero.i.i.i.i.i = or i64 %i.dh, 1
  %i.dk = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %ctlz.nonzero.i.i.i.i.i, i1 true)
  %i.dl = sub nuw nsw i64 67, %i.dk
  %i.dm = lshr i64 %i.dl, 2                       ; 3 uses
  %i.dn = icmp ugt ptr %i.dg, inttoptr (i64 255 to ptr)
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit38.i.i, %.lr.ph.i.i.i.i.i
  %.0.i35.i.i.i.i.i = phi i64 [ %i.dp, %.lr.ph.i.i.i.i.i ], [ %i.dh, %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit38.i.i ] ; 2 uses
  %.014.i4.i.i.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i.i.i ], [ %i.dm, %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit38.i.i ] ; 2 uses
  %i.do = add i64 %.014.i4.i.i.i.i.i, -2          ; 3 uses
  %i.dp = lshr i64 %.0.i35.i.i.i.i.i, 8           ; 2 uses
  %i.dq = and i64 %.0.i35.i.i.i.i.i, 255
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !74
  %i.dt = getelementptr i8, ptr %i.h, i64 %.014.i4.i.i.i.i.i
  store i16 %i.ds, ptr %i.dt, align 1
  %i.du = icmp ugt i64 %i.do, 2
  br i1 %i.du, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !76

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit38.i.i
  %.014.i.lcssa.i.i.i.i.i = phi i64 [ %i.dm, %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit38.i.i ], [ %i.do, %.lr.ph.i.i.i.i.i ]
  %.0.i3.lcssa.i.i.i.i.i = phi i64 [ %i.dh, %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit38.i.i ], [ %i.dp, %.lr.ph.i.i.i.i.i ]
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i3.lcssa.i.i.i.i.i
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !74 ; 2 uses
  %i.dx = icmp eq i64 %.014.i.lcssa.i.i.i.i.i, 2
  br i1 %i.dx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i
  store i16 %i.dw, ptr %i.dj, align 2
  br label %_ZN5folly14to_ascii_lowerILm16EEEmPcPKcm.exit.i.i.i

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.dy = lshr i16 %i.dw, 8
  %i.dz = trunc nuw i16 %i.dy to i8
  store i8 %i.dz, ptr %i.dj, align 2, !tbaa !58
  br label %_ZN5folly14to_ascii_lowerILm16EEEmPcPKcm.exit.i.i.i

_ZN5folly14to_ascii_lowerILm16EEEmPcPKcm.exit.i.i.i: ; preds = %bb.n, %bb.m
  %i.ea = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.eb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dm
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !32
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  invoke void %i.eg(ptr noundef nonnull align 8 dereferenceable(13) %i.ed, ptr nonnull %i.h, ptr nonnull %i.ec)
          to label %bb.o unwind label %bb.l, !inline_history !77

bb.o:                                             ; preds = %_ZN5folly14to_ascii_lowerILm16EEEmPcPKcm.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  %i.eh = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !32
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  invoke void %i.el(ptr noundef nonnull align 8 dereferenceable(13) %i.ei, ptr nonnull @.str.15, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 18))
          to label %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit41.i.i unwind label %bb.l, !inline_history !71

_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit41.i.i: ; preds = %bb.o
  %i.em = call i32 @getpid() #19
  %i.en = sext i32 %i.em to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.eo = invoke noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %i.g, i64 noundef %i.en)
          to label %.noexc42.i.i unwind label %bb.l

.noexc42.i.i:                                     ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit41.i.i
  %i.ep = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.eq = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.eo
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !32
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.et, align 8
  invoke void %i.eu(ptr noundef nonnull align 8 dereferenceable(13) %i.er, ptr nonnull %i.g, ptr nonnull %i.eq)
          to label %bb.p unwind label %bb.l, !inline_history !72

bb.p:                                             ; preds = %.noexc42.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  %i.ev = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8
  invoke void %i.ez(ptr noundef nonnull align 8 dereferenceable(13) %i.ew, ptr nonnull @.str.16, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.16, i64 14))
          to label %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit46.i.i unwind label %bb.l, !inline_history !71

_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit46.i.i: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.fa = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 48, ptr %i.f, align 16, !tbaa !58
  %i.fb = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  store i8 120, ptr %i.fa, align 1, !tbaa !58
  %ctlz.nonzero.i.i.i47.i.i = or i64 %i.o, 1
  %i.fc = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %ctlz.nonzero.i.i.i47.i.i, i1 true)
  %i.fd = sub nuw nsw i64 67, %i.fc
  %i.fe = lshr i64 %i.fd, 2                       ; 3 uses
  %i.ff = icmp ugt i64 %i.o, 255
  br i1 %i.ff, label %.lr.ph.i.i.i53.i.i, label %._crit_edge.i.i.i49.i.i

.lr.ph.i.i.i53.i.i:                               ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit46.i.i, %.lr.ph.i.i.i53.i.i
  %.0.i35.i.i.i54.i.i = phi i64 [ %i.fh, %.lr.ph.i.i.i53.i.i ], [ %i.o, %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit46.i.i ] ; 2 uses
  %.014.i4.i.i.i55.i.i = phi i64 [ %i.fg, %.lr.ph.i.i.i53.i.i ], [ %i.fe, %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit46.i.i ] ; 2 uses
  %i.fg = add i64 %.014.i4.i.i.i55.i.i, -2        ; 3 uses
  %i.fh = lshr i64 %.0.i35.i.i.i54.i.i, 8         ; 2 uses
  %i.fi = and i64 %.0.i35.i.i.i54.i.i, 255
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !74
  %i.fl = getelementptr i8, ptr %i.f, i64 %.014.i4.i.i.i55.i.i
  store i16 %i.fk, ptr %i.fl, align 1
  %i.fm = icmp ugt i64 %i.fg, 2
  br i1 %i.fm, label %.lr.ph.i.i.i53.i.i, label %._crit_edge.i.i.i49.i.i, !llvm.loop !76

._crit_edge.i.i.i49.i.i:                          ; preds = %.lr.ph.i.i.i53.i.i, %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit46.i.i
  %.014.i.lcssa.i.i.i50.i.i = phi i64 [ %i.fe, %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit46.i.i ], [ %i.fg, %.lr.ph.i.i.i53.i.i ]
  %.0.i3.lcssa.i.i.i51.i.i = phi i64 [ %i.o, %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit46.i.i ], [ %i.fh, %.lr.ph.i.i.i53.i.i ]
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i3.lcssa.i.i.i51.i.i
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !74 ; 2 uses
  %i.fp = icmp eq i64 %.014.i.lcssa.i.i.i50.i.i, 2
  br i1 %i.fp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i49.i.i
  store i16 %i.fo, ptr %i.fb, align 2
  br label %_ZN5folly14to_ascii_lowerILm16EEEmPcPKcm.exit.i52.i.i

bb.r:                                             ; preds = %._crit_edge.i.i.i49.i.i
  %i.fq = lshr i16 %i.fo, 8
  %i.fr = trunc nuw i16 %i.fq to i8
  store i8 %i.fr, ptr %i.fb, align 2, !tbaa !58
  br label %_ZN5folly14to_ascii_lowerILm16EEEmPcPKcm.exit.i52.i.i

_ZN5folly14to_ascii_lowerILm16EEEmPcPKcm.exit.i52.i.i: ; preds = %bb.r, %bb.q
  %i.fs = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.ft = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.fe
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 2
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8
  invoke void %i.fy(ptr noundef nonnull align 8 dereferenceable(13) %i.fv, ptr nonnull %i.f, ptr nonnull %i.fu)
          to label %bb.s unwind label %bb.l, !inline_history !77

bb.s:                                             ; preds = %_ZN5folly14to_ascii_lowerILm16EEEmPcPKcm.exit.i52.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  %i.fz = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !32
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8
  invoke void %i.gd(ptr noundef nonnull align 8 dereferenceable(13) %i.ga, ptr nonnull @.str.17, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.17, i64 13))
          to label %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit59.i.i unwind label %bb.l, !inline_history !71

_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit59.i.i: ; preds = %bb.s
  %i.ge = call i64 (i64, ...) @syscall(i64 noundef 186) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.gf = invoke noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %i.e, i64 noundef %i.ge)
          to label %.noexc60.i.i unwind label %bb.l

.noexc60.i.i:                                     ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit59.i.i
  %i.gg = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gf
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !32
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8
  invoke void %i.gl(ptr noundef nonnull align 8 dereferenceable(13) %i.gi, ptr nonnull %i.e, ptr nonnull %i.gh)
          to label %bb.t unwind label %bb.l, !inline_history !72

bb.t:                                             ; preds = %.noexc60.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !78 ; 2 uses
  %i.go = icmp slt i32 %i.gn, 1
  br i1 %i.go, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.gp = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !32
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8
  invoke void %i.gt(ptr noundef nonnull align 8 dereferenceable(13) %i.gq, ptr nonnull @.str.18, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.18, i64 18))
          to label %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit64.i.i unwind label %bb.l, !inline_history !71

_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit64.i.i: ; preds = %bb.u
  %i.gu = load i32, ptr %i.df, align 8, !tbaa !58
  %i.gv = sext i32 %i.gu to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.gw = invoke noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %i.d, i64 noundef %i.gv)
          to label %.noexc65.i.i unwind label %bb.l

.noexc65.i.i:                                     ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit64.i.i
  %i.gx = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.gy = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gw
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !32
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8
  invoke void %i.hc(ptr noundef nonnull align 8 dereferenceable(13) %i.gz, ptr nonnull %i.d, ptr nonnull %i.gy)
          to label %bb.v unwind label %bb.l, !inline_history !72

bb.v:                                             ; preds = %.noexc65.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.hd = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !32
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8
  invoke void %i.hh(ptr noundef nonnull align 8 dereferenceable(13) %i.he, ptr nonnull @.str.19, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.19, i64 6))
          to label %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit69.i.i unwind label %bb.l, !inline_history !71

_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit69.i.i: ; preds = %bb.v
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !58
  %i.hk = zext i32 %i.hj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.hl = invoke noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %i.c, i64 noundef %i.hk)
          to label %.noexc70.i.i unwind label %bb.l

.noexc70.i.i:                                     ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit69.i.i
  %i.hm = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.hn = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.hl
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !32
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8
  invoke void %i.hr(ptr noundef nonnull align 8 dereferenceable(13) %i.ho, ptr nonnull %i.c, ptr nonnull %i.hn)
          to label %_ZN5folly10symbolizer12_GLOBAL__N_18printDecEm.exit72.i.i unwind label %bb.l, !inline_history !72

_ZN5folly10symbolizer12_GLOBAL__N_18printDecEm.exit72.i.i: ; preds = %.noexc70.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %.pr.i.i = load i32, ptr %i.gm, align 8, !tbaa !78
  br label %bb.w

bb.w:                                             ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_18printDecEm.exit72.i.i, %bb.t
  %i.hs = phi i32 [ %.pr.i.i, %_ZN5folly10symbolizer12_GLOBAL__N_18printDecEm.exit72.i.i ], [ %i.gn, %bb.t ] ; 9 uses
  switch i32 %0, label %_ZN5folly10symbolizer12_GLOBAL__N_113signal_reasonEii.exit.i.i [
    i32 4, label %bb.x
    i32 8, label %bb.y
    i32 11, label %bb.z
    i32 7, label %bb.aa
    i32 5, label %bb.ab
    i32 17, label %bb.ac
    i32 29, label %bb.ad
  ]

bb.x:                                             ; preds = %bb.w
  %switch.tableidx = add i32 %i.hs, -1            ; 2 uses
  %i.ht = icmp ult i32 %switch.tableidx, 8
  br i1 %i.ht, label %switch.lookup, label %_ZN5folly10symbolizer12_GLOBAL__N_113signal_reasonEii.exit.i.i

bb.y:                                             ; preds = %bb.w
  %switch.tableidx57 = add i32 %i.hs, -1          ; 2 uses
  %i.hu = icmp ult i32 %switch.tableidx57, 8
  br i1 %i.hu, label %switch.lookup58, label %_ZN5folly10symbolizer12_GLOBAL__N_113signal_reasonEii.exit.i.i

bb.z:                                             ; preds = %bb.w
  %switch.selectcmp.i.i.i.i = icmp eq i32 %i.hs, 2
  %switch.select.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i, ptr @.str.40, ptr null
  %switch.selectcmp1.i.i.i.i = icmp eq i32 %i.hs, 1
  %switch.select2.i.i.i.i = select i1 %switch.selectcmp1.i.i.i.i, ptr @.str.39, ptr %switch.select.i.i.i.i
  br label %_ZN5folly10symbolizer12_GLOBAL__N_113signal_reasonEii.exit.i.i

bb.aa:                                            ; preds = %bb.w
  %switch.tableidx61 = add i32 %i.hs, -1          ; 2 uses
  %i.hv = icmp ult i32 %switch.tableidx61, 3
  br i1 %i.hv, label %switch.lookup62, label %_ZN5folly10symbolizer12_GLOBAL__N_113signal_reasonEii.exit.i.i

bb.ab:                                            ; preds = %bb.w
  %switch.selectcmp.i10.i.i.i = icmp eq i32 %i.hs, 2
  %switch.select.i11.i.i.i = select i1 %switch.selectcmp.i10.i.i.i, ptr @.str.45, ptr null
  %switch.selectcmp1.i12.i.i.i = icmp eq i32 %i.hs, 1
  %switch.select2.i13.i.i.i = select i1 %switch.selectcmp1.i12.i.i.i, ptr @.str.44, ptr %switch.select.i11.i.i.i
  br label %_ZN5folly10symbolizer12_GLOBAL__N_113signal_reasonEii.exit.i.i

bb.ac:                                            ; preds = %bb.w
  %switch.tableidx65 = add i32 %i.hs, -1          ; 2 uses
  %i.hw = icmp ult i32 %switch.tableidx65, 6
  br i1 %i.hw, label %switch.lookup66, label %_ZN5folly10symbolizer12_GLOBAL__N_113signal_reasonEii.exit.i.i

bb.ad:                                            ; preds = %bb.w
  %switch.tableidx69 = add i32 %i.hs, -1          ; 2 uses
  %i.hx = icmp ult i32 %switch.tableidx69, 6
  br i1 %i.hx, label %switch.lookup70, label %_ZN5folly10symbolizer12_GLOBAL__N_113signal_reasonEii.exit.i.i

switch.lookup:                                    ; preds = %bb.x
  %i.hy = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5folly10symbolizer12_GLOBAL__N_113signalHandlerEiP9siginfo_tPv, i64 %i.hy
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN5folly10symbolizer12_GLOBAL__N_113signal_reasonEii.exit.i.i

switch.lookup58:                                  ; preds = %bb.y
  %i.hz = zext nneg i32 %switch.tableidx57 to i64
  %switch.gep59 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5folly10symbolizer12_GLOBAL__N_113signalHandlerEiP9siginfo_tPv.23, i64 %i.hz
  %switch.load60 = load ptr, ptr %switch.gep59, align 8
  br label %_ZN5folly10symbolizer12_GLOBAL__N_113signal_reasonEii.exit.i.i

switch.lookup62:                                  ; preds = %bb.aa
  %i.ia = zext nneg i32 %switch.tableidx61 to i64
  %switch.gep63 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5folly10symbolizer12_GLOBAL__N_113signalHandlerEiP9siginfo_tPv.24, i64 %i.ia
  %switch.load64 = load ptr, ptr %switch.gep63, align 8
  br label %_ZN5folly10symbolizer12_GLOBAL__N_113signal_reasonEii.exit.i.i

switch.lookup66:                                  ; preds = %bb.ac
  %i.ib = zext nneg i32 %switch.tableidx65 to i64
  %switch.gep67 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5folly10symbolizer12_GLOBAL__N_113signalHandlerEiP9siginfo_tPv.25, i64 %i.ib
  %switch.load68 = load ptr, ptr %switch.gep67, align 8
  br label %_ZN5folly10symbolizer12_GLOBAL__N_113signal_reasonEii.exit.i.i

switch.lookup70:                                  ; preds = %bb.ad
  %i.ic = zext nneg i32 %switch.tableidx69 to i64
  %switch.gep71 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5folly10symbolizer12_GLOBAL__N_113signalHandlerEiP9siginfo_tPv.26, i64 %i.ic
  %switch.load72 = load ptr, ptr %switch.gep71, align 8
  br label %_ZN5folly10symbolizer12_GLOBAL__N_113signal_reasonEii.exit.i.i

_ZN5folly10symbolizer12_GLOBAL__N_113signal_reasonEii.exit.i.i: ; preds = %bb.x, %bb.y, %bb.aa, %bb.ac, %bb.ad, %switch.lookup70, %switch.lookup66, %switch.lookup62, %switch.lookup58, %switch.lookup, %bb.ab, %bb.z, %bb.w
  %.0.i.i.i = phi ptr [ %switch.load68, %switch.lookup66 ], [ null, %bb.w ], [ %switch.load, %switch.lookup ], [ %switch.select2.i.i.i.i, %bb.z ], [ %switch.load60, %switch.lookup58 ], [ %switch.select2.i13.i.i.i, %bb.ab ], [ %switch.load64, %switch.lookup62 ], [ %switch.load72, %switch.lookup70 ], [ null, %bb.ad ], [ null, %bb.ac ], [ null, %bb.aa ], [ null, %bb.y ], [ null, %bb.x ] ; 4 uses
  %i.id = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !32
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8
  invoke void %i.ih(ptr noundef nonnull align 8 dereferenceable(13) %i.ie, ptr nonnull @.str.20, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.20, i64 9))
          to label %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit74.i.i unwind label %bb.af, !inline_history !71

_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit74.i.i: ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_113signal_reasonEii.exit.i.i
  %.not27.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not27.i.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %_ZN5folly10symbolizer12_GLOBAL__N_15printENS_5RangeIPKcEE.exit74.i.i
  %i.ii = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i.i) #19
  %i.ij = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.ii
  %i.ik = load ptr, ptr @_ZN5folly10symbolizer12_GLOBAL__N_118gStackTracePrinterE, align 8, !tbaa !53
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16 ; 2 uses
end_hunk_0
