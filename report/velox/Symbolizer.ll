inline.NumInlined: 174
inline.NumDeleted: 117
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5folly10symbolizer21SafeStackTracePrinter27printUnsymbolizedStackTraceEv:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.f, align 8, !tbaa !1096
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1099
  tail call void @backtrace_symbols_fd(ptr noundef nonnull %i.g, i32 noundef %i.i, i32 noundef %i.k) #18
  ret void
}

; Function Attrs: nounwind
declare void @backtrace_symbols_fd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline uwtable
define void @_ZN5folly10symbolizer21SafeStackTracePrinter15printStackTraceEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 30 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = invoke noundef i64 @_ZN5folly10symbolizer17getStackTraceSafeEPmm(ptr noundef nonnull %i.d, i64 noundef 100)
          to label %_ZN5folly10symbolizer17getStackTraceSafeILm100EEEbRNS0_10FrameArrayIXT_EEE.exit unwind label %bb.e ; 6 uses

_ZN5folly10symbolizer17getStackTraceSafeILm100EEEbRNS0_10FrameArrayIXT_EEE.exit: ; preds = %bb.a
  %.not.i.not = icmp eq i64 %i.e, -1
  br i1 %.not.i.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN5folly10symbolizer17getStackTraceSafeILm100EEEbRNS0_10FrameArrayIXT_EEE.exit
  store i64 %i.e, ptr %i.c, align 8, !tbaa !1096
  %.not12.i = icmp eq i64 %i.e, 0
  br i1 %.not12.i, label %.loopexit42, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 808 ; 5 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.g = icmp ult i64 %i.e, 4
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.e, -4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %.011.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.o, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.c ]
  %i.h = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %.011.i
  store i8 0, ptr %i.h, align 8, !tbaa !1138
  %i.i = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %.011.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  store i8 0, ptr %i.j, align 8, !tbaa !1138
  %i.k = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %.011.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 304
  store i8 0, ptr %i.l, align 8, !tbaa !1138
  %i.m = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %.011.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 456
  store i8 0, ptr %i.n, align 8, !tbaa !1138
  %i.o = add nuw i64 %.011.i, 4                   ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit42.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1149

bb.d:                                             ; preds = %_ZN5folly10symbolizer17getStackTraceSafeILm100EEEbRNS0_10FrameArrayIXT_EEE.exit
  store i64 0, ptr %i.c, align 8, !tbaa !1096
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(13) %i.p, ptr nonnull @.str.1, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.1, i64 31))
          to label %_ZN5folly10symbolizer21SafeStackTracePrinter5printENS_5RangeIPKcEE.exit unwind label %bb.e, !inline_history !1151

bb.e:                                             ; preds = %bb.ad, %.noexc34, %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit81.i", %bb.y, %.noexc31, %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit70.i", %.noexc29, %.noexc28, %.noexc27, %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit59.i", %.noexc25, %.noexc24, %.noexc23, %.critedge.i, %.noexc21, %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit43.i", %bb.q, %.noexc18, %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit.i", %.noexc16, %.noexc15, %.noexc, %bb.n, %bb.h, %bb.d, %_ZN5folly10symbolizer21SafeStackTracePrinter5printENS_5RangeIPKcEE.exit, %bb.a, %bb.ac, %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN5folly6detail14ScopeGuardImplIZNS_10symbolizer21SafeStackTracePrinter15printStackTraceEbE3$_0Lb1EED2Ev"(i8 0, ptr nonnull %0) #18
  resume { ptr, i32 } %i.t

.loopexit42.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit42, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit42.loopexit.unr-lcssa, %.lr.ph.i
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %.loopexit42.loopexit.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.011.i.epil = phi i64 [ %.011.i.epil.init, %.epil.preheader ], [ %i.v, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.u = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %.011.i.epil
  store i8 0, ptr %i.u, align 8, !tbaa !1138
  %i.v = add nuw i64 %.011.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit42, label %bb.f, !llvm.loop !1152

.loopexit42:                                      ; preds = %.loopexit42.loopexit.unr-lcssa, %bb.f, %bb.b
  br i1 %1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit42
  %i.w = load ptr, ptr %0, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %_ZN5folly10symbolizer21SafeStackTracePrinter5printENS_5RangeIPKcEE.exit unwind label %bb.e, !call_target !1154

bb.h:                                             ; preds = %.loopexit42
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(13) %i.z, ptr nonnull @.str, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 38))
          to label %_ZN5folly10symbolizer21SafeStackTracePrinter27printUnsymbolizedStackTraceEv.exit unwind label %bb.e, !inline_history !1819

_ZN5folly10symbolizer21SafeStackTracePrinter27printUnsymbolizedStackTraceEv.exit: ; preds = %bb.h
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !14  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !1096
  %i.ag = trunc i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1099
  tail call void @backtrace_symbols_fd(ptr noundef nonnull %i.ae, i32 noundef %i.ag, i32 noundef %i.ai) #18
  br label %_ZN5folly10symbolizer21SafeStackTracePrinter5printENS_5RangeIPKcEE.exit

_ZN5folly10symbolizer21SafeStackTracePrinter5printENS_5RangeIPKcEE.exit: ; preds = %bb.d, %_ZN5folly10symbolizer21SafeStackTracePrinter27printUnsymbolizedStackTraceEv.exit, %bb.g
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !14  ; 5 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !1096
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = invoke noundef i64 @_ZN5folly10symbolizer22getAsyncStackTraceSafeEPmm(ptr noundef nonnull %i.ak, i64 noundef 100)
          to label %_ZN5folly10symbolizer22getAsyncStackTraceSafeILm100EEEbRNS0_10FrameArrayIXT_EEE.exit unwind label %bb.e ; 6 uses

_ZN5folly10symbolizer22getAsyncStackTraceSafeILm100EEEbRNS0_10FrameArrayIXT_EEE.exit: ; preds = %_ZN5folly10symbolizer21SafeStackTracePrinter5printENS_5RangeIPKcEE.exit
  %.not.i8.not = icmp eq i64 %i.al, -1
  br i1 %.not.i8.not, label %_ZN5folly10symbolizer6detail13fixFrameArrayILm100EEEbRNS0_10FrameArrayIXT_EEEl.exit13, label %bb.i

bb.i:                                             ; preds = %_ZN5folly10symbolizer22getAsyncStackTraceSafeILm100EEEbRNS0_10FrameArrayIXT_EEE.exit
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !1096
  %.not12.i9 = icmp eq i64 %i.al, 0
  br i1 %.not12.i9, label %.loopexit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 808 ; 5 uses
  %xtraiter98 = and i64 %i.al, 3                  ; 3 uses
  %i.an = icmp ult i64 %i.al, 4
  br i1 %i.an, label %.epil.preheader97, label %.lr.ph.i10.new

.lr.ph.i10.new:                                   ; preds = %.lr.ph.i10
  %unroll_iter102 = and i64 %i.al, -4
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i10.new
  %.011.i11 = phi i64 [ 0, %.lr.ph.i10.new ], [ %i.av, %bb.j ] ; 5 uses
  %niter103 = phi i64 [ 0, %.lr.ph.i10.new ], [ %niter103.next.3, %bb.j ]
  %i.ao = getelementptr inbounds nuw [152 x i8], ptr %i.am, i64 %.011.i11
  store i8 0, ptr %i.ao, align 8, !tbaa !1138
  %i.ap = getelementptr inbounds nuw [152 x i8], ptr %i.am, i64 %.011.i11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 152
  store i8 0, ptr %i.aq, align 8, !tbaa !1138
  %i.ar = getelementptr inbounds nuw [152 x i8], ptr %i.am, i64 %.011.i11
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 304
  store i8 0, ptr %i.as, align 8, !tbaa !1138
  %i.at = getelementptr inbounds nuw [152 x i8], ptr %i.am, i64 %.011.i11
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 456
  store i8 0, ptr %i.au, align 8, !tbaa !1138
  %i.av = add nuw i64 %.011.i11, 4                ; 2 uses
  %niter103.next.3 = add nuw i64 %niter103, 4     ; 2 uses
  %niter103.ncmp.3 = icmp eq i64 %niter103.next.3, %unroll_iter102
  br i1 %niter103.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.j, !llvm.loop !1149

_ZN5folly10symbolizer6detail13fixFrameArrayILm100EEEbRNS0_10FrameArrayIXT_EEEl.exit13: ; preds = %_ZN5folly10symbolizer22getAsyncStackTraceSafeILm100EEEbRNS0_10FrameArrayIXT_EEE.exit
  store i64 0, ptr %i.aj, align 8, !tbaa !1096
  br label %bb.ae

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod100.not = icmp eq i64 %xtraiter98, 0
  br i1 %lcmp.mod100.not, label %.loopexit, label %.epil.preheader97

.epil.preheader97:                                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i10
  %.011.i11.epil.init = phi i64 [ 0, %.lr.ph.i10 ], [ %i.av, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod101 = icmp ne i64 %xtraiter98, 0
  tail call void @llvm.assume(i1 %lcmp.mod101)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader97
  %.011.i11.epil = phi i64 [ %.011.i11.epil.init, %.epil.preheader97 ], [ %i.ax, %bb.k ] ; 2 uses
  %epil.iter99 = phi i64 [ 0, %.epil.preheader97 ], [ %epil.iter99.next, %bb.k ]
  %i.aw = getelementptr inbounds nuw [152 x i8], ptr %i.am, i64 %.011.i11.epil
  store i8 0, ptr %i.aw, align 8, !tbaa !1138
  %i.ax = add nuw i64 %.011.i11.epil, 1
  %epil.iter99.next = add i64 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i64 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %.loopexit, label %bb.k, !llvm.loop !1820

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.k, %bb.i
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1096
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.ae, label %bb.l

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
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  invoke void %i.bh(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.2, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.2, i64 1))
          to label %.noexc unwind label %bb.e, !inline_history !1821

.noexc:                                           ; preds = %bb.n
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.3, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 41))
          to label %.noexc15 unwind label %bb.e, !inline_history !1821

.noexc15:                                         ; preds = %.noexc
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.4, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.4, i64 28))
          to label %.noexc16 unwind label %bb.e, !inline_history !1821

.noexc16:                                         ; preds = %.noexc15
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.10, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 2))
          to label %.noexc17 unwind label %bb.e, !inline_history !1821

.noexc17:                                         ; preds = %.noexc16
  %i.br = ptrtoint ptr %i.bb to i64               ; 3 uses
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.br, i1 true)
  %i.bt = sub nuw nsw i64 67, %i.bs
  %i.bu = lshr i64 %i.bt, 2                       ; 2 uses
  %.0.i1.i.i.i.i = select i1 %.not.i14, i64 1, i64 %i.bu, !prof !34 ; 3 uses
  %i.bv = icmp samesign ugt i64 %.0.i1.i.i.i.i, 2
  br i1 %i.bv, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc17, %.lr.ph.i.i.i.i
  %.0.i3.i.i.i.i = phi i64 [ %i.bx, %.lr.ph.i.i.i.i ], [ %i.br, %.noexc17 ] ; 2 uses
  %.014.i2.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i ], [ %i.bu, %.noexc17 ]
  %i.bw = add i64 %.014.i2.i.i.i.i, -2            ; 4 uses
  %i.bx = lshr i64 %.0.i3.i.i.i.i, 8              ; 2 uses
  %i.by = and i64 %.0.i3.i.i.i.i, 255
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !1822
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bw
  store i16 %i.ca, ptr %i.cb, align 1
  %i.cc = icmp ugt i64 %i.bw, 2
  br i1 %i.cc, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1823

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.noexc17
  %.014.i.lcssa.i.i.i.i = phi i64 [ %.0.i1.i.i.i.i, %.noexc17 ], [ %i.bw, %.lr.ph.i.i.i.i ]
  %.0.i.lcssa.i.i.i.i = phi i64 [ %i.br, %.noexc17 ], [ %i.bx, %.lr.ph.i.i.i.i ]
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i.i
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !1822 ; 2 uses
  %i.cf = icmp eq i64 %.014.i.lcssa.i.i.i.i, 2
  br i1 %i.cf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  store i16 %i.ce, ptr %i.a, align 16
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit.i"

bb.p:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cg = lshr i16 %i.ce, 8
  %i.ch = trunc nuw i16 %i.cg to i8
  store i8 %i.ch, ptr %i.a, align 16, !tbaa !32
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit.i"

"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit.i": ; preds = %bb.p, %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i1.i.i.i.i
  %i.cj = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  invoke void %i.cl(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull %i.a, ptr nonnull %i.ci)
          to label %.noexc18 unwind label %bb.e, !inline_history !1821

.noexc18:                                         ; preds = %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit.i"
  %i.cm = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.5, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.5, i64 55))
          to label %.noexc19 unwind label %bb.e, !inline_history !1821

.noexc19:                                         ; preds = %.noexc18
  br i1 %.not.i14, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %.noexc19
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1824 ; 2 uses
  %i.cr = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.10, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 2))
          to label %.noexc20 unwind label %bb.e, !inline_history !1821

.noexc20:                                         ; preds = %bb.q
  %i.cu = ptrtoint ptr %i.cq to i64               ; 3 uses
  %.not.i.i.i.i34.i = icmp eq ptr %i.cq, null
  %i.cv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cu, i1 true)
  %i.cw = sub nuw nsw i64 67, %i.cv
  %i.cx = lshr i64 %i.cw, 2                       ; 2 uses
  %.0.i1.i.i.i35.i = select i1 %.not.i.i.i.i34.i, i64 1, i64 %i.cx, !prof !34 ; 3 uses
  %i.cy = icmp samesign ugt i64 %.0.i1.i.i.i35.i, 2
  br i1 %i.cy, label %.lr.ph.i.i.i40.i, label %._crit_edge.i.i.i36.i

.lr.ph.i.i.i40.i:                                 ; preds = %.noexc20, %.lr.ph.i.i.i40.i
  %.0.i3.i.i.i41.i = phi i64 [ %i.da, %.lr.ph.i.i.i40.i ], [ %i.cu, %.noexc20 ] ; 2 uses
  %.014.i2.i.i.i42.i = phi i64 [ %i.cz, %.lr.ph.i.i.i40.i ], [ %i.cx, %.noexc20 ]
  %i.cz = add i64 %.014.i2.i.i.i42.i, -2          ; 4 uses
  %i.da = lshr i64 %.0.i3.i.i.i41.i, 8            ; 2 uses
  %i.db = and i64 %.0.i3.i.i.i41.i, 255
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !1822
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cz
  store i16 %i.dd, ptr %i.de, align 1
  %i.df = icmp ugt i64 %i.cz, 2
  br i1 %i.df, label %.lr.ph.i.i.i40.i, label %._crit_edge.i.i.i36.i, !llvm.loop !1823

._crit_edge.i.i.i36.i:                            ; preds = %.lr.ph.i.i.i40.i, %.noexc20
  %.014.i.lcssa.i.i.i37.i = phi i64 [ %.0.i1.i.i.i35.i, %.noexc20 ], [ %i.cz, %.lr.ph.i.i.i40.i ]
  %.0.i.lcssa.i.i.i38.i = phi i64 [ %i.cu, %.noexc20 ], [ %i.da, %.lr.ph.i.i.i40.i ]
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i38.i
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !1822 ; 2 uses
  %i.di = icmp eq i64 %.014.i.lcssa.i.i.i37.i, 2
  br i1 %i.di, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i.i36.i
  store i16 %i.dh, ptr %i.a, align 16
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit43.i"

bb.s:                                             ; preds = %._crit_edge.i.i.i36.i
  %i.dj = lshr i16 %i.dh, 8
  %i.dk = trunc nuw i16 %i.dj to i8
  store i8 %i.dk, ptr %i.a, align 16, !tbaa !32
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit43.i"

"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit43.i": ; preds = %bb.s, %bb.r
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i1.i.i.i35.i
  %i.dm = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  invoke void %i.do(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull %i.a, ptr nonnull %i.dl)
          to label %.noexc21 unwind label %bb.e, !inline_history !1821

.noexc21:                                         ; preds = %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit43.i"
  %i.dp = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.6, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 18))
          to label %.noexc22 unwind label %bb.e, !inline_history !1821

.noexc22:                                         ; preds = %.noexc21
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1830
  %.fr88.i = freeze ptr %i.dt
  %i.du = ptrtoint ptr %.fr88.i to i64
  br label %.noexc25

.critedge.i:                                      ; preds = %.noexc19
  %i.dv = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.10, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 2))
          to label %.noexc23 unwind label %bb.e, !inline_history !1821

.noexc23:                                         ; preds = %.critedge.i
  %i.dy = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !1822
  %i.dz = lshr i16 %i.dy, 8
  %i.ea = trunc nuw i16 %i.dz to i8
  store i8 %i.ea, ptr %i.a, align 16, !tbaa !32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ec = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  invoke void %i.ee(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull %i.a, ptr nonnull %i.eb)
          to label %.noexc24 unwind label %bb.e, !inline_history !1821

.noexc24:                                         ; preds = %.noexc23
  %i.ef = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8
  invoke void %i.eh(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.6, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 18))
          to label %.noexc25 unwind label %bb.e, !inline_history !1821

.noexc25:                                         ; preds = %.noexc24, %.noexc22
  %.fr.i = phi i64 [ %i.du, %.noexc22 ], [ 0, %.noexc24 ] ; 5 uses
  %i.ei = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8
  invoke void %i.ek(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.10, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 2))
          to label %.noexc26 unwind label %bb.e, !inline_history !1821

.noexc26:                                         ; preds = %.noexc25
  %.not.i.i.i.i50.i = icmp eq i64 %.fr.i, 0
  %i.el = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.fr.i, i1 true)
  %i.em = sub nuw nsw i64 67, %i.el
  %i.en = lshr i64 %i.em, 2                       ; 4 uses
  br i1 %.not.i.i.i.i50.i, label %._crit_edge.i.i.i52.thread.i, label %3, !prof !34

._crit_edge.i.i.i52.thread.i:                     ; preds = %.noexc26
  %2 = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !1822
  br label %bb.u

3:                                                ; preds = %.noexc26
  %4 = icmp ugt i64 %.fr.i, 255
  br i1 %4, label %.lr.ph.i.i.i56.i, label %._crit_edge.i.i.i52.i

.lr.ph.i.i.i56.i:                                 ; preds = %3, %.lr.ph.i.i.i56.i
  %.0.i3.i.i.i57.i = phi i64 [ %i.ep, %.lr.ph.i.i.i56.i ], [ %.fr.i, %3 ] ; 2 uses
  %.014.i2.i.i.i58.i = phi i64 [ %i.eo, %.lr.ph.i.i.i56.i ], [ %i.en, %3 ]
  %i.eo = add i64 %.014.i2.i.i.i58.i, -2          ; 4 uses
  %i.ep = lshr i64 %.0.i3.i.i.i57.i, 8            ; 2 uses
  %i.eq = and i64 %.0.i3.i.i.i57.i, 255
  %i.er = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.eq
  %i.es = load i16, ptr %i.er, align 2, !tbaa !1822
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eo
  store i16 %i.es, ptr %i.et, align 1
  %i.eu = icmp ugt i64 %i.eo, 2
  br i1 %i.eu, label %.lr.ph.i.i.i56.i, label %._crit_edge.i.i.i52.i, !llvm.loop !1823

._crit_edge.i.i.i52.i:                            ; preds = %.lr.ph.i.i.i56.i, %3
  %.014.i.lcssa.i.i.i53.i = phi i64 [ %i.en, %3 ], [ %i.eo, %.lr.ph.i.i.i56.i ]
  %.0.i.lcssa.i.i.i54.i = phi i64 [ %.fr.i, %3 ], [ %i.ep, %.lr.ph.i.i.i56.i ]
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i54.i
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !1822 ; 2 uses
  %i.ex = icmp eq i64 %.014.i.lcssa.i.i.i53.i, 2
  br i1 %i.ex, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i.i52.i
  store i16 %i.ew, ptr %i.a, align 16
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit59.i"

bb.u:                                             ; preds = %._crit_edge.i.i.i52.i, %._crit_edge.i.i.i52.thread.i
  %5 = phi i16 [ %2, %._crit_edge.i.i.i52.thread.i ], [ %i.ew, %._crit_edge.i.i.i52.i ]
  %6 = phi i64 [ 1, %._crit_edge.i.i.i52.thread.i ], [ %i.en, %._crit_edge.i.i.i52.i ]
  %i.ey = lshr i16 %5, 8
  %i.ez = trunc nuw i16 %i.ey to i8
  store i8 %i.ez, ptr %i.a, align 16, !tbaa !32
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit59.i"

"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit59.i": ; preds = %bb.u, %bb.t
  %7 = phi i64 [ %i.en, %bb.t ], [ %6, %bb.u ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 %7
  %i.fb = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8
  invoke void %i.fd(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull %i.a, ptr nonnull %i.fa)
          to label %.noexc27 unwind label %bb.e, !inline_history !1821

.noexc27:                                         ; preds = %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit59.i"
  %i.fe = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8
  invoke void %i.fg(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.7, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.7, i64 5))
          to label %.noexc28 unwind label %bb.e, !inline_history !1821

.noexc28:                                         ; preds = %.noexc27
  %i.fh = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8
  invoke void %i.fj(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.8, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.8, i64 37))
          to label %.noexc29 unwind label %bb.e, !inline_history !1821

.noexc29:                                         ; preds = %.noexc28
  %i.fk = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  invoke void %i.fm(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.10, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 2))
          to label %.noexc30 unwind label %bb.e, !inline_history !1821

.noexc30:                                         ; preds = %.noexc29
  %i.fn = ptrtoint ptr %i.bd to i64               ; 3 uses
  %.not.i.i.i.i61.i = icmp eq ptr %i.bd, null     ; 2 uses
  %i.fo = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fn, i1 true)
  %i.fp = sub nuw nsw i64 67, %i.fo
  %i.fq = lshr i64 %i.fp, 2                       ; 2 uses
  %.0.i1.i.i.i62.i = select i1 %.not.i.i.i.i61.i, i64 1, i64 %i.fq, !prof !34 ; 3 uses
  %i.fr = icmp samesign ugt i64 %.0.i1.i.i.i62.i, 2
  br i1 %i.fr, label %.lr.ph.i.i.i67.i, label %._crit_edge.i.i.i63.i

.lr.ph.i.i.i67.i:                                 ; preds = %.noexc30, %.lr.ph.i.i.i67.i
  %.0.i3.i.i.i68.i = phi i64 [ %i.ft, %.lr.ph.i.i.i67.i ], [ %i.fn, %.noexc30 ] ; 2 uses
  %.014.i2.i.i.i69.i = phi i64 [ %i.fs, %.lr.ph.i.i.i67.i ], [ %i.fq, %.noexc30 ]
  %i.fs = add i64 %.014.i2.i.i.i69.i, -2          ; 4 uses
  %i.ft = lshr i64 %.0.i3.i.i.i68.i, 8            ; 2 uses
  %i.fu = and i64 %.0.i3.i.i.i68.i, 255
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.fu
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !1822
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fs
  store i16 %i.fw, ptr %i.fx, align 1
  %i.fy = icmp ugt i64 %i.fs, 2
  br i1 %i.fy, label %.lr.ph.i.i.i67.i, label %._crit_edge.i.i.i63.i, !llvm.loop !1823

._crit_edge.i.i.i63.i:                            ; preds = %.lr.ph.i.i.i67.i, %.noexc30
  %.014.i.lcssa.i.i.i64.i = phi i64 [ %.0.i1.i.i.i62.i, %.noexc30 ], [ %i.fs, %.lr.ph.i.i.i67.i ]
  %.0.i.lcssa.i.i.i65.i = phi i64 [ %i.fn, %.noexc30 ], [ %i.ft, %.lr.ph.i.i.i67.i ]
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i65.i
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !1822 ; 2 uses
  %i.gb = icmp eq i64 %.014.i.lcssa.i.i.i64.i, 2
  br i1 %i.gb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i63.i
  store i16 %i.ga, ptr %i.a, align 16
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit70.i"

bb.w:                                             ; preds = %._crit_edge.i.i.i63.i
  %i.gc = lshr i16 %i.ga, 8
  %i.gd = trunc nuw i16 %i.gc to i8
  store i8 %i.gd, ptr %i.a, align 16, !tbaa !32
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit70.i"

"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit70.i": ; preds = %bb.w, %bb.v
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i1.i.i.i62.i
  %i.gf = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8
  invoke void %i.gh(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull %i.a, ptr nonnull %i.ge)
          to label %.noexc31 unwind label %bb.e, !inline_history !1821

.noexc31:                                         ; preds = %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit70.i"
  %i.gi = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  invoke void %i.gk(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.6, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 18))
          to label %.noexc32 unwind label %bb.e, !inline_history !1821

.noexc32:                                         ; preds = %.noexc31
  br i1 %.not.i.i.i.i61.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.noexc32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !1831
  %.fr90.i = freeze ptr %i.gm
  %i.gn = ptrtoint ptr %.fr90.i to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.noexc32
  %.fr89.i = phi i64 [ %i.gn, %bb.x ], [ 0, %.noexc32 ] ; 5 uses
  %i.go = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8
  invoke void %i.gq(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.10, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 2))
          to label %.noexc33 unwind label %bb.e, !inline_history !1821

.noexc33:                                         ; preds = %bb.y
  %.not.i.i.i.i72.i = icmp eq i64 %.fr89.i, 0
  %i.gr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.fr89.i, i1 true)
  %i.gs = sub nuw nsw i64 67, %i.gr
  %i.gt = lshr i64 %i.gs, 2                       ; 4 uses
  br i1 %.not.i.i.i.i72.i, label %._crit_edge.i.i.i74.thread.i, label %9, !prof !34

._crit_edge.i.i.i74.thread.i:                     ; preds = %.noexc33
  %8 = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !1822
  br label %bb.aa

9:                                                ; preds = %.noexc33
  %10 = icmp ugt i64 %.fr89.i, 255
  br i1 %10, label %.lr.ph.i.i.i78.i, label %._crit_edge.i.i.i74.i

.lr.ph.i.i.i78.i:                                 ; preds = %9, %.lr.ph.i.i.i78.i
  %.0.i3.i.i.i79.i = phi i64 [ %i.gv, %.lr.ph.i.i.i78.i ], [ %.fr89.i, %9 ] ; 2 uses
  %.014.i2.i.i.i80.i = phi i64 [ %i.gu, %.lr.ph.i.i.i78.i ], [ %i.gt, %9 ]
  %i.gu = add i64 %.014.i2.i.i.i80.i, -2          ; 4 uses
  %i.gv = lshr i64 %.0.i3.i.i.i79.i, 8            ; 2 uses
  %i.gw = and i64 %.0.i3.i.i.i79.i, 255
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.gw
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !1822
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gu
  store i16 %i.gy, ptr %i.gz, align 1
  %i.ha = icmp ugt i64 %i.gu, 2
  br i1 %i.ha, label %.lr.ph.i.i.i78.i, label %._crit_edge.i.i.i74.i, !llvm.loop !1823

._crit_edge.i.i.i74.i:                            ; preds = %.lr.ph.i.i.i78.i, %9
  %.014.i.lcssa.i.i.i75.i = phi i64 [ %i.gt, %9 ], [ %i.gu, %.lr.ph.i.i.i78.i ]
  %.0.i.lcssa.i.i.i76.i = phi i64 [ %.fr89.i, %9 ], [ %i.gv, %.lr.ph.i.i.i78.i ]
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm16ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i76.i
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !1822 ; 2 uses
  %i.hd = icmp eq i64 %.014.i.lcssa.i.i.i75.i, 2
  br i1 %i.hd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i.i74.i
  store i16 %i.hc, ptr %i.a, align 16
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit81.i"

bb.aa:                                            ; preds = %._crit_edge.i.i.i74.i, %._crit_edge.i.i.i74.thread.i
  %11 = phi i16 [ %8, %._crit_edge.i.i.i74.thread.i ], [ %i.hc, %._crit_edge.i.i.i74.i ]
  %12 = phi i64 [ 1, %._crit_edge.i.i.i74.thread.i ], [ %i.gt, %._crit_edge.i.i.i74.i ]
  %i.he = lshr i16 %11, 8
  %i.hf = trunc nuw i16 %i.he to i8
  store i8 %i.hf, ptr %i.a, align 16, !tbaa !32
  br label %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit81.i"

"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit81.i": ; preds = %bb.aa, %bb.z
  %13 = phi i64 [ %i.gt, %bb.z ], [ %12, %bb.aa ]
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 %13
  %i.hh = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8
  invoke void %i.hj(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull %i.a, ptr nonnull %i.hg)
          to label %.noexc34 unwind label %bb.e, !inline_history !1821

.noexc34:                                         ; preds = %"_ZZN5folly10symbolizer12_GLOBAL__N_119printAsyncStackInfoIZNS0_21SafeStackTracePrinter15printStackTraceEbE3$_1EEvT_ENKUlmE_clEm.exit81.i"
  %i.hk = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8
  invoke void %i.hm(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str.9, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.9, i64 25))
          to label %bb.ab unwind label %bb.e, !inline_history !1821

bb.ab:                                            ; preds = %.noexc34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %1, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hn = load ptr, ptr %0, align 8, !tbaa !12
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  invoke void %i.hp(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.ae unwind label %bb.e, !call_target !1154

bb.ad:                                            ; preds = %bb.ab
  %i.hq = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8
  invoke void %i.hs(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr nonnull @.str, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 38))
          to label %_ZN5folly10symbolizer21SafeStackTracePrinter27printUnsymbolizedStackTraceEv.exit37 unwind label %bb.e, !inline_history !1819

_ZN5folly10symbolizer21SafeStackTracePrinter27printUnsymbolizedStackTraceEv.exit37: ; preds = %bb.ad
  %i.ht = load ptr, ptr %i.b, align 8, !tbaa !14  ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load i64, ptr %i.ht, align 8, !tbaa !1096
  %i.hw = trunc i64 %i.hv to i32
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !1099
  call void @backtrace_symbols_fd(ptr noundef nonnull %i.hu, i32 noundef %i.hw, i32 noundef %i.hy) #18
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit, %bb.ac, %_ZN5folly10symbolizer21SafeStackTracePrinter27printUnsymbolizedStackTraceEv.exit37, %_ZN5folly10symbolizer6detail13fixFrameArrayILm100EEEbRNS0_10FrameArrayIXT_EEEl.exit13
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN5folly10symbolizer18FDSymbolizePrinter5flushEv(ptr noundef nonnull align 8 dereferenceable(32) %i.hz)
          to label %.noexc.i.i.i unwind label %bb.af

.noexc.i.i.i:                                     ; preds = %bb.ae
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !1099
  %i.ic = invoke noundef i32 @_ZN5folly10fsyncNoIntEi(i32 noundef %i.ib)
          to label %"_ZN5folly6detail14ScopeGuardImplIZNS_10symbolizer21SafeStackTracePrinter15printStackTraceEbE3$_0Lb1EED2Ev.exit" unwind label %bb.af ; 0 uses

bb.af:                                            ; preds = %.noexc.i.i.i, %bb.ae
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #22
  unreachable

"_ZN5folly6detail14ScopeGuardImplIZNS_10symbolizer21SafeStackTracePrinter15printStackTraceEbE3$_0Lb1EED2Ev.exit": ; preds = %.noexc.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN5folly6detail14ScopeGuardImplIZNS_10symbolizer21SafeStackTracePrinter15printStackTraceEbE3$_0Lb1EED2Ev"(i8 %.0.val, ptr %.8.val) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = trunc nuw i8 %.0.val to i1
  br i1 %i.a, label %"_ZN5folly6detail14ScopeGuardImplIZNS_10symbolizer21SafeStackTracePrinter15printStackTraceEbE3$_0Lb1EE7executeEv.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  invoke void @_ZN5folly10symbolizer18FDSymbolizePrinter5flushEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc.i.i unwind label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1099
  %i.e = invoke noundef i32 @_ZN5folly10fsyncNoIntEi(i32 noundef %i.d)
          to label %"_ZN5folly6detail14ScopeGuardImplIZNS_10symbolizer21SafeStackTracePrinter15printStackTraceEbE3$_0Lb1EE7executeEv.exit" unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %.noexc.i.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #22
  unreachable

"_ZN5folly6detail14ScopeGuardImplIZNS_10symbolizer21SafeStackTracePrinter15printStackTraceEbE3$_0Lb1EE7executeEv.exit": ; preds = %.noexc.i.i, %bb.a
  ret void
}

declare noundef i64 @_ZN5folly10symbolizer17getStackTraceSafeEPmm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef i64 @_ZN5folly10symbolizer22getAsyncStackTraceSafeEPmm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef ptr @_ZN5folly27tryGetCurrentAsyncStackRootEv() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: nounwind returns_twice
declare i32 @getcontext(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @makecontext(ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @swapcontext(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @mprotect(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZN5folly10symbolizer35UnsafeSelfAllocateStackTracePrinter25printSymbolizedStackTraceEvEN3$_08__invokeEPS1_"(ptr noundef %0) #15 align 2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %"_ZZN5folly10symbolizer35UnsafeSelfAllocateStackTracePrinter25printSymbolizedStackTraceEvENK3$_0clEPS1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(13) %i.a, ptr nonnull @.str, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 38)), !call_target !36, !inline_history !1833
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.f, align 8, !tbaa !1096
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1099
  tail call void @backtrace_symbols_fd(ptr noundef nonnull %i.g, i32 noundef %i.i, i32 noundef %i.k) #18
  br label %"_ZZN5folly10symbolizer35UnsafeSelfAllocateStackTracePrinter25printSymbolizedStackTraceEvENK3$_0clEPS1_.exit"

"_ZZN5folly10symbolizer35UnsafeSelfAllocateStackTracePrinter25printSymbolizedStackTraceEvENK3$_0clEPS1_.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #1 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #1 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind returns_twice }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !11, i64 0}
!14 = !{!15, !15, i64 0}
end_hunk_0
