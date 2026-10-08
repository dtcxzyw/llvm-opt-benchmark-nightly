Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rayon-rs/original/rayon_core-a506781b803648b8.rayon_core.f3c436e44465bf58-cgu.0?download=true
inline.NumInlined: 204
inline.NumDeleted: 98
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMsg_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE5stealB11_:bb.a
.loopexit.i:                                      ; preds = %.lr.ph
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  %i.h = icmp ult i32 %.sroa.0.05562, 11
  br i1 %i.h, label %.loopexit.i.thread, label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit

.preheader.i:                                     ; preds = %.lr.ph, %.preheader.i
  %.sroa.0.03.i = phi i32 [ %i.i, %.preheader.i ], [ 0, %.lr.ph ]
  %i.i = add nuw nsw i32 %.sroa.0.03.i, 1         ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i = lshr i32 %i.i, %.sroa.0.05562
  %i.j = icmp eq i32 %.sroa.0.0.highbits.i, 0
  br i1 %i.j, label %.preheader.i, label %.loopexit.i.thread

.loopexit.i.thread:                               ; preds = %.preheader.i, %.loopexit.i
  %i.k = add nuw nsw i32 %.sroa.0.05562, 1
  br label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit

_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit: ; preds = %.loopexit.i, %.loopexit.i.thread
  %.sroa.0.1 = phi i32 [ %i.k, %.loopexit.i.thread ], [ %.sroa.0.05562, %.loopexit.i ]
  %i.l = load atomic i64, ptr %1 acquire, align 128 ; 2 uses
  %i.m = load atomic ptr, ptr %i.a acquire, align 8
  %i.n = lshr i64 %i.l, 1                         ; 2 uses
  %i.o = and i64 %i.n, 63                         ; 2 uses
  %i.p = icmp eq i64 %i.o, 63
  br i1 %i.p, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit, %bb.a
  %.lcssa61 = phi i64 [ %i.b, %bb.a ], [ %i.l, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ] ; 4 uses
  %.lcssa59 = phi ptr [ %i.c, %bb.a ], [ %i.m, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ] ; 8 uses
  %.lcssa58 = phi i64 [ %i.d, %bb.a ], [ %i.n, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ]
  %.lcssa57 = phi i64 [ %i.e, %bb.a ], [ %i.o, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ] ; 4 uses
  %i.q = add i64 %.lcssa61, 2                     ; 2 uses
  %i.r = and i64 %.lcssa61, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  fence seq_cst
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.u = load atomic i64, ptr %i.t monotonic, align 128 ; 2 uses
  %i.v = lshr i64 %i.u, 1
  %i.w = icmp eq i64 %.lcssa58, %i.v
  br i1 %i.w, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.unshifted = xor i64 %i.u, %.lcssa61
  %.not = icmp ugt i64 %.not.unshifted, 127
  %i.x = zext i1 %.not to i64
  %spec.select = or disjoint i64 %i.q, %i.x
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.sroa.0.0 = phi i64 [ %i.q, %._crit_edge ], [ %spec.select, %bb.c ] ; 2 uses
  %i.y = cmpxchg weak ptr %1, i64 %.lcssa61, i64 %.sroa.0.0 seq_cst acquire, align 8
  %i.z = extractvalue { i64, i1 } %i.y, 1
  br i1 %i.z, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp eq i64 %.lcssa57, 62
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load atomic ptr, ptr %.lcssa59 acquire, align 8 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.lr.ph.i, label %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE9wait_nextBY_.exit

.lr.ph.i:                                         ; preds = %bb.f, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i
  %.sroa.0.02.i = phi i32 [ %.sroa.0.1.i, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ 0, %bb.f ] ; 5 uses
  %i.ad = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.ad, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  %i.ae = icmp ult i32 %.sroa.0.02.i, 11
  br i1 %i.ae, label %.loopexit.i.thread.i, label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.af, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.af = add nuw nsw i32 %.sroa.0.03.i.i, 1      ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i = lshr i32 %i.af, %.sroa.0.02.i
  %i.ag = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.ag, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.ah = add nuw nsw i32 %.sroa.0.02.i, 1
  br label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.1.i = phi i32 [ %i.ah, %.loopexit.i.thread.i ], [ %.sroa.0.02.i, %.loopexit.i.i ]
  %i.ai = load atomic ptr, ptr %.lcssa59 acquire, align 8 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.lr.ph.i, label %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE9wait_nextBY_.exit

_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE9wait_nextBY_.exit: ; preds = %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i, %bb.f
  %.lcssa.i = phi ptr [ %i.ab, %bb.f ], [ %i.ai, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ] ; 2 uses
  %i.ak = and i64 %.sroa.0.0, -2
  %i.al = add i64 %i.ak, 2
  %i.am = load atomic ptr, ptr %.lcssa.i monotonic, align 8
  %i.an = icmp ne ptr %i.am, null
  %i.ao = zext i1 %i.an to i64
  %spec.select31 = or disjoint i64 %i.al, %i.ao
  store atomic ptr %.lcssa.i, ptr %i.a release, align 8
  store atomic i64 %spec.select31, ptr %1 release, align 128
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa59, i64 1496
  %i.aq = getelementptr inbounds nuw i8, ptr %.lcssa59, i64 1512 ; 2 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8
  %i.as = and i64 %i.ar, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i33, label %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit

.lr.ph.i33:                                       ; preds = %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE9wait_nextBY_.exit, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i36
  %.sroa.0.02.i34 = phi i32 [ %.sroa.0.1.i37, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i36 ], [ 0, %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE9wait_nextBY_.exit ] ; 5 uses
  %i.au = icmp ult i32 %.sroa.0.02.i34, 7
  br i1 %i.au, label %.preheader.i.i39, label %.loopexit.i.i35

.loopexit.i.i35:                                  ; preds = %.lr.ph.i33
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  %i.av = icmp ult i32 %.sroa.0.02.i34, 11
  br i1 %i.av, label %.loopexit.i.thread.i38, label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i36

.preheader.i.i39:                                 ; preds = %.lr.ph.i33, %.preheader.i.i39
  %.sroa.0.03.i.i40 = phi i32 [ %i.aw, %.preheader.i.i39 ], [ 0, %.lr.ph.i33 ]
  %i.aw = add nuw nsw i32 %.sroa.0.03.i.i40, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i41 = lshr i32 %i.aw, %.sroa.0.02.i34
  %i.ax = icmp eq i32 %.sroa.0.0.highbits.i.i41, 0
  br i1 %i.ax, label %.preheader.i.i39, label %.loopexit.i.thread.i38

.loopexit.i.thread.i38:                           ; preds = %.preheader.i.i39, %.loopexit.i.i35
  %i.ay = add nuw nsw i32 %.sroa.0.02.i34, 1
  br label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i36

_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i36: ; preds = %.loopexit.i.thread.i38, %.loopexit.i.i35
  %.sroa.0.1.i37 = phi i32 [ %i.ay, %.loopexit.i.thread.i38 ], [ %.sroa.0.02.i34, %.loopexit.i.i35 ]
  %i.az = load atomic i64, ptr %i.aq acquire, align 8
  %i.ba = and i64 %i.az, 1
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.i33, label %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit

_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit: ; preds = %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i36, %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE9wait_nextBY_.exit
  %i.bc = load <2 x ptr>, ptr %i.ap, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %.lcssa59, i64 8
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.lcssa57 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 3 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8
  %i.bh = and i64 %i.bg, 1
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i42, label %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit51

.lr.ph.i42:                                       ; preds = %bb.g, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i45
  %.sroa.0.02.i43 = phi i32 [ %.sroa.0.1.i46, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i45 ], [ 0, %bb.g ] ; 5 uses
  %i.bj = icmp ult i32 %.sroa.0.02.i43, 7
  br i1 %i.bj, label %.preheader.i.i48, label %.loopexit.i.i44

.loopexit.i.i44:                                  ; preds = %.lr.ph.i42
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  %i.bk = icmp ult i32 %.sroa.0.02.i43, 11
  br i1 %i.bk, label %.loopexit.i.thread.i47, label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i45

.preheader.i.i48:                                 ; preds = %.lr.ph.i42, %.preheader.i.i48
  %.sroa.0.03.i.i49 = phi i32 [ %i.bl, %.preheader.i.i48 ], [ 0, %.lr.ph.i42 ]
  %i.bl = add nuw nsw i32 %.sroa.0.03.i.i49, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i50 = lshr i32 %i.bl, %.sroa.0.02.i43
  %i.bm = icmp eq i32 %.sroa.0.0.highbits.i.i50, 0
  br i1 %i.bm, label %.preheader.i.i48, label %.loopexit.i.thread.i47

.loopexit.i.thread.i47:                           ; preds = %.preheader.i.i48, %.loopexit.i.i44
  %i.bn = add nuw nsw i32 %.sroa.0.02.i43, 1
  br label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i45

_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i45: ; preds = %.loopexit.i.thread.i47, %.loopexit.i.i44
  %.sroa.0.1.i46 = phi i32 [ %i.bn, %.loopexit.i.thread.i47 ], [ %.sroa.0.02.i43, %.loopexit.i.i44 ]
  %i.bo = load atomic i64, ptr %i.bf acquire, align 8
  %i.bp = and i64 %i.bo, 1
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i42, label %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit51

_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit51: ; preds = %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i45, %bb.g
  %i.br = load <2 x ptr>, ptr %i.be, align 8      ; 2 uses
  %i.bs = atomicrmw or ptr %i.bf, i64 2 acq_rel, align 8
  %i.bt = and i64 %i.bs, 4
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7destroyBY_.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit51, %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit
  %i.bv = phi <2 x ptr> [ %i.bc, %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit ], [ %i.br, %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit51 ] ; 2 uses
  %.not4.i = icmp eq i64 %.lcssa57, 0
  br i1 %.not4.i, label %._crit_edge.i, label %.lr.ph.i52

._crit_edge.i:                                    ; preds = %bb.j, %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.lcssa59) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.lcssa59, i64 noundef 1520, i64 noundef 8) #18
  br label %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7destroyBY_.exit

.lr.ph.i52:                                       ; preds = %bb.h, %bb.j
  %.sroa.0.05.i = phi i64 [ %i.bw, %bb.j ], [ %.lcssa57, %bb.h ]
  %i.bw = add nsw i64 %.sroa.0.05.i, -1           ; 3 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %.lcssa59, i64 %i.bw
  %2 = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 2 uses
  %i.by = load atomic i64, ptr %2 acquire, align 8
  %i.bz = and i64 %i.by, 2
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i52
  %i.cb = atomicrmw or ptr %2, i64 4 acq_rel, align 8
  %i.cc = and i64 %i.cb, 2
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7destroyBY_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i52
  %.not.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i52

_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7destroyBY_.exit: ; preds = %bb.i, %._crit_edge.i, %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit51
  %i.ce = phi <2 x ptr> [ %i.br, %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit51 ], [ %i.bv, %._crit_edge.i ], [ %i.bv, %bb.i ] ; 2 uses
  %i.cf = extractelement <2 x ptr> %i.ce, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cf) ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.ce, ptr %i.cg, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.d, %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7destroyBY_.exit
  %storemerge56 = phi i64 [ 1, %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7destroyBY_.exit ], [ 0, %bb.b ], [ 2, %bb.d ]
  store i64 %storemerge56, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef zeroext i1 @_RNvMsg_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8is_emptyB11_(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load atomic i64, ptr %0 seq_cst, align 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load atomic i64, ptr %i.b seq_cst, align 128
  %.unshifted = xor i64 %i.c, %i.a
  %i.d = icmp ult i64 %.unshifted, 2
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvNtCskVyUMSjkkSy_10rayon_core11thread_pool11yield_local() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCskVyUMSjkkSy_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.a, align 8, !noalias !117, !noundef !5 ; 2 uses
  %i.b = icmp eq ptr %.val.i.i, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread11yield_local(ptr noundef nonnull align 128 %.val.i.i)
  %i.d = zext i1 %i.c to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.d, %bb.b ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvNtCskVyUMSjkkSy_10rayon_core11thread_pool9yield_now() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCskVyUMSjkkSy_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.a, align 8, !noalias !120, !noundef !5 ; 2 uses
  %i.b = icmp eq ptr %.val.i.i, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread9yield_now(ptr noundef nonnull align 128 %.val.i.i)
  %i.d = zext i1 %i.c to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.d, %bb.b ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = tail call fastcc noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !125
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i
    i64 1, label %bb.e
  ], !prof !10

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !126, !noalias !125
  store i8 3, ptr %i.a, align 8, !alias.scope !126, !noalias !125
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !125
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit

bb.f:                                             ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit
  ret i1 %.not

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
  resume { ptr, i32 } %i.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop() unnamed_addr #6 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 123 to ptr))
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core(ptr %i.b)
  call void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCskVyUMSjkkSy_10rayon_core11thread_poolNtB5_10ThreadPoolNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 520
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  store i64 %i.f, ptr %i.b, align 8
  %i.g = icmp ult i64 %i.f, 192153584101141163
  call void @llvm.assume(i1 %i.g)
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 11, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.j = ptrtoint ptr %i.i to i64
  store i64 %i.j, ptr %i.a, align 8
  %i.k = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
  %i.l = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs1xwejQucwHj_5alloc6string6StringNtB6_5Debug3fmtCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRbNtB6_5Debug3fmtCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXsg_NtCs3oUPovFnLWP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtReNtB6_5Debug3fmtCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}
end_hunk_0
