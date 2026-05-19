inline.NumInlined: 1196
inline.NumDeleted: 282
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_18RawMatchIhEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEj:bb.a
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 72
  %i.ku = load ptr, ptr %i.kt, align 8, !noalias !53
  %i.kv = call noundef ptr %i.ku(ptr noundef nonnull align 8 dereferenceable(16) %i.kg) #12, !noalias !53, !inline_history !56
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i.i

bb.bn:                                            ; preds = %bb.bc
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #13, !noalias !57
  unreachable

_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i.i: ; preds = %bb.bm, %bb.bl, %bb.bi, %bb.bh, %bb.be, %bb.bd
  %.sroa.011.sroa.0.0.ph.i.i = phi ptr [ %i.kr, %bb.bl ], [ %i.jz, %bb.bh ], [ %i.kv, %bb.bm ], [ %i.kd, %bb.bi ], [ %i.jl, %bb.be ], [ %i.jk, %bb.bd ]
  %.sroa.011.sroa.8.0.ph.i.i = phi i32 [ 2, %bb.bl ], [ 1, %bb.bh ], [ 2, %bb.bm ], [ 1, %bb.bi ], [ 2, %bb.be ], [ 1, %bb.bd ]
  store ptr %.sroa.011.sroa.0.0.ph.i.i, ptr %13, align 8
  store i32 %i.je, ptr %.sroa.011.sroa.7.0..sroa_idx50.i.i, align 8
  store i32 %.sroa.011.sroa.8.0.ph.i.i, ptr %.sroa.011.sroa.8.0..sroa_idx56.i.i, align 4
  store ptr %14, ptr %.sroa.011.sroa.9.0..sroa_idx62.i.i, align 8
  br label %_ZN2v88internal6String13GetCharVectorIhEENS_4base6VectorIKT_EERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i.i

bb.bo:                                            ; preds = %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %13, ptr noundef nonnull align 4 dereferenceable(16) %i.jc, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(16) %12) #12
  br label %_ZN2v88internal6String13GetCharVectorIhEENS_4base6VectorIKT_EERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i.i

_ZN2v88internal6String13GetCharVectorIhEENS_4base6VectorIKT_EERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i.i: ; preds = %bb.bo, %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i.i
  %i.kw = load i8, ptr %i.ah, align 8, !range !5, !noundef !6
  %i.kx = trunc nuw i8 %i.kw to i1
  store i8 0, ptr %i.ah, align 8
  br i1 %i.kx, label %bb.bp, label %.thread67.i

bb.bp:                                            ; preds = %_ZN2v88internal6String13GetCharVectorIhEENS_4base6VectorIKT_EERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i.i
  %i.ky = load ptr, ptr %12, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.thread67.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ky) #12
  br label %.thread67.i

bb.br:                                            ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit39.i, %._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit39_crit_edge.i
  br i1 %i.ag, label %_ZN2v88internal12_GLOBAL__N_116HandleInterruptsIhEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateENS0_6RegExp10CallOriginEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS9_INS0_6StringEEEPPKhPNS_4base6VectorIKT_EESI_.exit.thread, label %.thread.i, !prof !58

.thread67.i:                                      ; preds = %bb.bq, %bb.bp, %_ZN2v88internal6String13GetCharVectorIhEENS_4base6VectorIKT_EERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12, !noalias !35
  %i.kz = load ptr, ptr %13, align 8              ; 2 uses
  %i.la = load i32, ptr %.sroa.011.sroa.7.0..sroa_idx50.i.i, align 8
  %i.lb = zext i32 %i.la to i64                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  br i1 %i.ag, label %bb.bt, label %.thread.i, !prof !58

.thread.i:                                        ; preds = %.thread67.i, %bb.br, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i, %bb.ax, %_ZN2v88internal12_GLOBAL__N_118ThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit.i
  %.sroa.31.1 = phi i64 [ %.sroa.31.0, %_ZN2v88internal12_GLOBAL__N_118ThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit.i ], [ %.sroa.31.0, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i ], [ %i.lb, %.thread67.i ], [ %.sroa.31.0, %bb.br ], [ %.sroa.31.0, %bb.ax ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %_ZN2v88internal12_GLOBAL__N_118ThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit.i ], [ %.sroa.0.0, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i ], [ %i.kz, %.thread67.i ], [ %.sroa.0.0, %bb.br ], [ %.sroa.0.0, %bb.ax ]
  %.11449 = phi ptr [ %.01448, %_ZN2v88internal12_GLOBAL__N_118ThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit.i ], [ %.01448, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i ], [ %.31451, %.thread67.i ], [ %.01448, %bb.br ], [ %.01448, %bb.ax ]
  %.259.i = phi i32 [ -1, %_ZN2v88internal12_GLOBAL__N_118ThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit.i ], [ -1, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i ], [ -2, %.thread67.i ], [ -2, %bb.br ], [ undef, %bb.ax ]
  %cond57.i = phi i1 [ false, %_ZN2v88internal12_GLOBAL__N_118ThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit.i ], [ false, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i ], [ true, %.thread67.i ], [ false, %bb.br ], [ true, %bb.ax ]
  store ptr %i.hd, ptr %i.ab, align 8
  %i.lc = load i32, ptr %i.ad, align 8
  %i.ld = add nsw i32 %i.lc, -1
  store i32 %i.ld, ptr %i.ad, align 8
  %i.le = load ptr, ptr %i.ac, align 8
  %.not.i.i = icmp eq ptr %i.le, %i.he
  br i1 %.not.i.i, label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, label %bb.bs, !prof !32

bb.bs:                                            ; preds = %.thread.i
  store ptr %i.he, ptr %i.ac, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #12
  br label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i

_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i: ; preds = %bb.bs, %.thread.i
  br i1 %cond57.i, label %bb.bt, label %_ZN2v88internal12_GLOBAL__N_116HandleInterruptsIhEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateENS0_6RegExp10CallOriginEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS9_INS0_6StringEEEPPKhPNS_4base6VectorIKT_EESI_.exit.thread

_ZN2v88internal12_GLOBAL__N_116HandleInterruptsIhEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateENS0_6RegExp10CallOriginEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS9_INS0_6StringEEEPPKhPNS_4base6VectorIKT_EESI_.exit.thread: ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, %bb.aq, %bb.ar, %bb.br
  %.3.i.ph = phi i32 [ -2, %bb.br ], [ -2, %bb.ar ], [ -1, %bb.aq ], [ %.259.i, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  br label %_ZN2v88internal12_GLOBAL__N_123MaybeThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit

bb.bt:                                            ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, %.thread67.i, %bb.ar
  %.sroa.31.2 = phi i64 [ %.sroa.31.0, %bb.ar ], [ %.sroa.31.1, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i ], [ %i.lb, %.thread67.i ]
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %bb.ar ], [ %.sroa.0.1, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i ], [ %i.kz, %.thread67.i ]
  %.21450 = phi ptr [ %.01448, %bb.ar ], [ %.11449, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i ], [ %.31451, %.thread67.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  %.val.i1122 = load ptr, ptr %17, align 8
  %.val1.i1123 = load ptr, ptr %i.t, align 8      ; 2 uses
  %i.lf = icmp eq ptr %.val1.i1123, %.val.i1122
  br i1 %i.lf, label %bb.bu, label %_ZN2v88internal12_GLOBAL__N_114BacktrackStack3popEv.exit1124, !prof !33

bb.bu:                                            ; preds = %bb.bt
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9) #13
  unreachable

_ZN2v88internal12_GLOBAL__N_114BacktrackStack3popEv.exit1124: ; preds = %bb.bt
  %i.lg = getelementptr inbounds i8, ptr %.val1.i1123, i64 -4 ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4
  store ptr %i.lg, ptr %i.t, align 8
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds i8, ptr %.21450, i64 %i.li ; 2 uses
  %.val1008 = load i32, ptr %i.lj, align 4        ; 2 uses
  %i.lk = and i32 %.val1008, 63
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12_GLOBAL__N_18RawMatchIhEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEjE14dispatch_table, i64 %i.ll
  %i.ln = load ptr, ptr %i.lm, align 8
  br label %.backedge.backedge

bb.bv:                                            ; preds = %.backedge
  %i.lo = getelementptr inbounds nuw i8, ptr %.01453, i64 4 ; 2 uses
  %.val1007 = load i32, ptr %i.lo, align 4        ; 2 uses
  %i.lp = and i32 %.val1007, 63
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12_GLOBAL__N_18RawMatchIhEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEjE14dispatch_table, i64 %i.lq
  %i.ls = load ptr, ptr %i.lr, align 8
  %.val.i1125 = load ptr, ptr %17, align 8
  %.val1.i1126 = load ptr, ptr %i.t, align 8      ; 2 uses
  %i.lt = icmp eq ptr %.val1.i1126, %.val.i1125
  br i1 %i.lt, label %bb.bw, label %_ZN2v88internal12_GLOBAL__N_114BacktrackStack3popEv.exit1127, !prof !33

bb.bw:                                            ; preds = %bb.bv
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9) #13
  unreachable

_ZN2v88internal12_GLOBAL__N_114BacktrackStack3popEv.exit1127: ; preds = %bb.bv
  %i.lu = getelementptr inbounds i8, ptr %.val1.i1126, i64 -4 ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 4
  store ptr %i.lu, ptr %i.t, align 8
  %i.lw = lshr i32 %.0745, 8                      ; 2 uses
  %.val1060 = load i32, ptr %i.m, align 8         ; 2 uses
  %i.lx = icmp sgt i32 %.val1060, 0
  %i.ly = icmp ult i32 %i.lw, %.val1060
  %.not2.i1128 = and i1 %i.lx, %i.ly
  br i1 %.not2.i1128, label %_ZN2v88internal12_GLOBAL__N_120InterpreterRegistersixEm.exit1129, label %bb.bx, !prof !32

bb.bx:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114BacktrackStack3popEv.exit1127
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #13
  unreachable

_ZN2v88internal12_GLOBAL__N_120InterpreterRegistersixEm.exit1129: ; preds = %_ZN2v88internal12_GLOBAL__N_114BacktrackStack3popEv.exit1127
  %i.lz = zext nneg i32 %i.lw to i64
  %.val1059 = load ptr, ptr %16, align 8
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.val1059, i64 %i.lz
  store i32 %i.lv, ptr %i.ma, align 4
  br label %.backedge.backedge

bb.by:                                            ; preds = %.backedge
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 58656
  %i.mc = load ptr, ptr %i.mb, align 8            ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 1984 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 2008 ; 3 uses
  %i.mf = load atomic ptr, ptr %i.me acquire, align 8
  %i.mg = icmp eq ptr %i.mf, null
  br i1 %i.mg, label %bb.bz, label %_ZN2v88internal8Counters17regexp_backtracksEv.exit

bb.bz:                                            ; preds = %bb.by
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mc, i64 2024 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mh) #12
  %i.mi = load atomic ptr, ptr %i.me monotonic, align 8
  %i.mj = icmp eq ptr %i.mi, null
  br i1 %i.mj, label %bb.ca, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.mk = call noundef ptr @_ZNK2v88internal9Histogram15CreateHistogramEv(ptr noundef nonnull align 8 dereferenceable(48) %i.md) #12
  store atomic ptr %i.mk, ptr %i.me release, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i:  ; preds = %bb.ca, %bb.bz
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mh) #12
  br label %_ZN2v88internal8Counters17regexp_backtracksEv.exit

_ZN2v88internal8Counters17regexp_backtracksEv.exit: ; preds = %bb.by, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i
  call void @_ZN2v88internal9Histogram9AddSampleEi(ptr noundef nonnull align 8 dereferenceable(48) %i.md, i32 noundef %.0730) #12
  br label %_ZN2v88internal12_GLOBAL__N_123MaybeThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit

bb.cb:                                            ; preds = %.backedge
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 58656
  %i.mm = load ptr, ptr %i.ml, align 8            ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 1984 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 2008 ; 3 uses
  %i.mp = load atomic ptr, ptr %i.mo acquire, align 8
  %i.mq = icmp eq ptr %i.mp, null
  br i1 %i.mq, label %bb.cc, label %_ZN2v88internal8Counters17regexp_backtracksEv.exit1131

bb.cc:                                            ; preds = %bb.cb
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mm, i64 2024 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mr) #12
  %i.ms = load atomic ptr, ptr %i.mo monotonic, align 8
  %i.mt = icmp eq ptr %i.ms, null
  br i1 %i.mt, label %bb.cd, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i1130

bb.cd:                                            ; preds = %bb.cc
  %i.mu = call noundef ptr @_ZNK2v88internal9Histogram15CreateHistogramEv(ptr noundef nonnull align 8 dereferenceable(48) %i.mn) #12
  store atomic ptr %i.mu, ptr %i.mo release, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i1130

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i1130: ; preds = %bb.cd, %bb.cc
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mr) #12
  br label %_ZN2v88internal8Counters17regexp_backtracksEv.exit1131

_ZN2v88internal8Counters17regexp_backtracksEv.exit1131: ; preds = %bb.cb, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i1130
  call void @_ZN2v88internal9Histogram9AddSampleEi(ptr noundef nonnull align 8 dereferenceable(48) %i.mn, i32 noundef %.0730) #12
  %i.mv = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.mw = load ptr, ptr %16, align 8              ; 5 uses
  %i.mx = load i32, ptr %i.n, align 4
  %i.my = sext i32 %i.mx to i64                   ; 2 uses
  %18 = and i64 %i.my, 4611686018427387903
  switch i64 %18, label %bb.ci [
    i64 4, label %bb.ch
    i64 2, label %bb.cf
    i64 3, label %bb.cg
    i64 1, label %bb.ce
  ]

bb.ce:                                            ; preds = %_ZN2v88internal8Counters17regexp_backtracksEv.exit1131
  %i.mz = load i32, ptr %i.mw, align 1
  store i32 %i.mz, ptr %i.mv, align 1
  br label %_ZN2v88internal12_GLOBAL__N_123MaybeThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit

bb.cf:                                            ; preds = %_ZN2v88internal8Counters17regexp_backtracksEv.exit1131
  %i.na = load i64, ptr %i.mw, align 1
  store i64 %i.na, ptr %i.mv, align 1
  br label %_ZN2v88internal12_GLOBAL__N_123MaybeThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit

bb.cg:                                            ; preds = %_ZN2v88internal8Counters17regexp_backtracksEv.exit1131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.mv, ptr noundef nonnull align 1 dereferenceable(12) %i.mw, i64 12, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_123MaybeThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit

bb.ch:                                            ; preds = %_ZN2v88internal8Counters17regexp_backtracksEv.exit1131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.mv, ptr noundef nonnull align 1 dereferenceable(16) %i.mw, i64 16, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_123MaybeThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit

bb.ci:                                            ; preds = %_ZN2v88internal8Counters17regexp_backtracksEv.exit1131
  %19 = shl nsw i64 %i.my, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mv, ptr align 1 %i.mw, i64 %19, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_123MaybeThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit

bb.cj:                                            ; preds = %.backedge
  %i.nb = getelementptr inbounds nuw i8, ptr %.01453, i64 4 ; 2 uses
  %.val1006 = load i32, ptr %i.nb, align 4        ; 2 uses
  %i.nc = and i32 %.val1006, 63
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12_GLOBAL__N_18RawMatchIhEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEjE14dispatch_table, i64 %i.nd
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = ashr i32 %.0745, 8
  %i.nh = add nsw i32 %.13, %i.ng
  br label %.backedge.backedge

bb.ck:                                            ; preds = %.backedge
  %i.ni = getelementptr inbounds nuw i8, ptr %.01453, i64 4
  %.val1005 = load i32, ptr %i.ni, align 4
  %i.nj = sext i32 %.val1005 to i64
  %i.nk = getelementptr inbounds i8, ptr %.01448, i64 %i.nj ; 2 uses
  %.val1004 = load i32, ptr %i.nk, align 4        ; 2 uses
  %i.nl = and i32 %.val1004, 63
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12_GLOBAL__N_18RawMatchIhEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEjE14dispatch_table, i64 %i.nm
  %i.no = load ptr, ptr %i.nn, align 8
  br label %.backedge.backedge

bb.cl:                                            ; preds = %.backedge
  %i.np = getelementptr inbounds nuw i8, ptr %.01453, i64 4
  %.val1003 = load i32, ptr %i.np, align 4
  %i.nq = sext i32 %.val1003 to i64
  %i.nr = getelementptr inbounds i8, ptr %.01448, i64 %i.nq ; 2 uses
  %.val1002 = load i32, ptr %i.nr, align 4        ; 2 uses
  %i.ns = and i32 %.val1002, 63
  %i.nt = zext nneg i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12_GLOBAL__N_18RawMatchIhEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEjE14dispatch_table, i64 %i.nt
  %i.nv = load ptr, ptr %i.nu, align 8
  %i.nw = ashr i32 %.0745, 8
  %i.nx = add nsw i32 %.13, %i.nw
  br label %.backedge.backedge

bb.cm:                                            ; preds = %.backedge
  %.val1093 = load ptr, ptr %17, align 8
  %.val1094 = load ptr, ptr %i.t, align 8         ; 2 uses
  %i.ny = icmp eq ptr %.val1094, %.val1093
  br i1 %i.ny, label %bb.cn, label %_ZNK2v88internal12_GLOBAL__N_114BacktrackStack4peekEv.exit, !prof !33

bb.cn:                                            ; preds = %bb.cm
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9) #13
  unreachable

_ZNK2v88internal12_GLOBAL__N_114BacktrackStack4peekEv.exit: ; preds = %bb.cm
  %i.nz = getelementptr inbounds i8, ptr %.val1094, i64 -4 ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 4
  %i.ob = icmp eq i32 %.13, %i.oa
  br i1 %i.ob, label %_ZN2v88internal12_GLOBAL__N_114BacktrackStack3popEv.exit1134, label %bb.co

_ZN2v88internal12_GLOBAL__N_114BacktrackStack3popEv.exit1134: ; preds = %_ZNK2v88internal12_GLOBAL__N_114BacktrackStack4peekEv.exit
  %i.oc = getelementptr inbounds nuw i8, ptr %.01453, i64 4
  %.val1001 = load i32, ptr %i.oc, align 4
  %i.od = sext i32 %.val1001 to i64
  %i.oe = getelementptr inbounds i8, ptr %.01448, i64 %i.od ; 2 uses
  %.val1000 = load i32, ptr %i.oe, align 4        ; 2 uses
  %i.of = and i32 %.val1000, 63
  %i.og = zext nneg i32 %i.of to i64
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12_GLOBAL__N_18RawMatchIhEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEjE14dispatch_table, i64 %i.og
  %i.oi = load ptr, ptr %i.oh, align 8
  store ptr %i.nz, ptr %i.t, align 8
  br label %.backedge.backedge

bb.co:                                            ; preds = %_ZNK2v88internal12_GLOBAL__N_114BacktrackStack4peekEv.exit
  %i.oj = getelementptr inbounds nuw i8, ptr %.01453, i64 8 ; 2 uses
  %.val999 = load i32, ptr %i.oj, align 4         ; 2 uses
  %i.ok = and i32 %.val999, 63
  %i.ol = zext nneg i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12_GLOBAL__N_18RawMatchIhEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEjE14dispatch_table, i64 %i.ol
  %i.on = load ptr, ptr %i.om, align 8
  br label %.backedge.backedge

bb.cp:                                            ; preds = %.backedge
  %i.oo = ashr i32 %.0745, 8
  %i.op = add nsw i32 %.13, %i.oo                 ; 2 uses
  %i.oq = icmp ult i64 %.sroa.31.0, 2147483648
  br i1 %i.oq, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.cq, !prof !32

bb.cq:                                            ; preds = %bb.cp
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #13
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.cp
  %i.or = trunc nuw nsw i64 %.sroa.31.0 to i32
  %or.cond.not = icmp ult i32 %i.op, %i.or
  br i1 %or.cond.not, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.os = getelementptr inbounds nuw i8, ptr %.01453, i64 4
  %.val998 = load i32, ptr %i.os, align 4
  %i.ot = sext i32 %.val998 to i64
  %i.ou = getelementptr inbounds i8, ptr %.01448, i64 %i.ot
  br label %bb.ct

bb.cs:                                            ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.ov = getelementptr inbounds nuw i8, ptr %.01453, i64 8
  %i.ow = zext nneg i32 %i.op to i64
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.ow
  %i.oy = load i8, ptr %i.ox, align 1
  %i.oz = zext i8 %i.oy to i32
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.1732 = phi ptr [ %i.ou, %bb.cr ], [ %i.ov, %bb.cs ] ; 2 uses
  %.0719 = phi i32 [ %.10729, %bb.cr ], [ %i.oz, %bb.cs ]
  %.1747 = load i32, ptr %.1732, align 4          ; 2 uses
  %.pn1468.in = and i32 %.1747, 63
  %.pn1468 = zext nneg i32 %.pn1468.in to i64
  %.1772.in = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12_GLOBAL__N_18RawMatchIhEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEjE14dispatch_table, i64 %.pn1468
  %.1772 = load ptr, ptr %.1772.in, align 8
  br label %.backedge.backedge

bb.cu:                                            ; preds = %.backedge
  %i.pa = getelementptr inbounds nuw i8, ptr %.01453, i64 4 ; 2 uses
  %.val995 = load i32, ptr %i.pa, align 4         ; 2 uses
  %i.pb = and i32 %.val995, 63
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12_GLOBAL__N_18RawMatchIhEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEjE14dispatch_table, i64 %i.pc
  %i.pe = load ptr, ptr %i.pd, align 8
  %i.pf = ashr i32 %.0745, 8
  %i.pg = add nsw i32 %.13, %i.pf
  %i.ph = sext i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1
  %i.pk = zext i8 %i.pj to i32
  br label %.backedge.backedge

bb.cv:                                            ; preds = %.backedge
  %i.pl = ashr i32 %.0745, 8
  %i.pm = add nsw i32 %.13, %i.pl                 ; 3 uses
  %i.pn = icmp ult i64 %.sroa.31.0, 2147483648
  br i1 %i.pn, label %_ZNK2v84base6VectorIKhE6lengthEv.exit1135, label %bb.cw, !prof !32

bb.cw:                                            ; preds = %bb.cv
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #13
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit1135:        ; preds = %bb.cv
  %i.po = add nsw i32 %i.pm, 2
  %i.pp = trunc nuw nsw i64 %.sroa.31.0 to i32
  %i.pq = icmp sgt i32 %i.po, %i.pp
  %i.pr = icmp slt i32 %i.pm, 0
  %or.cond3 = or i1 %i.pr, %i.pq
  br i1 %or.cond3, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit1135
  %i.ps = getelementptr inbounds nuw i8, ptr %.01453, i64 4
  %.val994 = load i32, ptr %i.ps, align 4
  %i.pt = sext i32 %.val994 to i64
  %i.pu = getelementptr inbounds i8, ptr %.01448, i64 %i.pt
  br label %bb.cz

bb.cy:                                            ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit1135
  %i.pv = getelementptr inbounds nuw i8, ptr %.01453, i64 8
  %i.pw = zext nneg i32 %i.pm to i64
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.pw ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 1
  %i.pz = load i8, ptr %i.py, align 1
  %i.qa = load i8, ptr %i.px, align 1
  %i.qb = zext i8 %i.qa to i32
  %i.qc = zext i8 %i.pz to i32
  %i.qd = shl nuw nsw i32 %i.qc, 8
  %i.qe = or disjoint i32 %i.qd, %i.qb
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.2733 = phi ptr [ %i.pu, %bb.cx ], [ %i.pv, %bb.cy ] ; 2 uses
  %.1720 = phi i32 [ %.10729, %bb.cx ], [ %i.qe, %bb.cy ]
  %.2748 = load i32, ptr %.2733, align 4          ; 2 uses
  %.pn1466.in = and i32 %.2748, 63
  %.pn1466 = zext nneg i32 %.pn1466.in to i64
  %.2773.in = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12_GLOBAL__N_18RawMatchIhEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEjE14dispatch_table, i64 %.pn1466
  %.2773 = load ptr, ptr %.2773.in, align 8
  br label %.backedge.backedge

bb.da:                                            ; preds = %.backedge
  %i.qf = getelementptr inbounds nuw i8, ptr %.01453, i64 4 ; 2 uses
  %.val991 = load i32, ptr %i.qf, align 4         ; 2 uses
  %i.qg = and i32 %.val991, 63
  %i.qh = zext nneg i32 %i.qg to i64
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12_GLOBAL__N_18RawMatchIhEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEjE14dispatch_table, i64 %i.qh
  %i.qj = load ptr, ptr %i.qi, align 8
  %i.qk = ashr i32 %.0745, 8
  %i.ql = add nsw i32 %.13, %i.qk
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr i8, ptr %.sroa.0.0, i64 %i.qm ; 2 uses
  %i.qo = getelementptr i8, ptr %i.qn, i64 1
  %i.qp = load i8, ptr %i.qo, align 1
  %i.qq = load i8, ptr %i.qn, align 1
  %i.qr = zext i8 %i.qq to i32
  %i.qs = zext i8 %i.qp to i32
  %i.qt = shl nuw nsw i32 %i.qs, 8
  %i.qu = or disjoint i32 %i.qt, %i.qr
  br label %.backedge.backedge

end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_18RawMatchItEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEj:bb.a
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 72
  %i.ku = load ptr, ptr %i.kt, align 8, !noalias !80
  %i.kv = call noundef ptr %i.ku(ptr noundef nonnull align 8 dereferenceable(16) %i.kg) #12, !noalias !80, !inline_history !83
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i.i

bb.bn:                                            ; preds = %bb.bc
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #13, !noalias !84
  unreachable

_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i.i: ; preds = %bb.bm, %bb.bl, %bb.bi, %bb.bh, %bb.be, %bb.bd
  %.sroa.014.sroa.0.0.ph.i.i = phi ptr [ %i.kr, %bb.bl ], [ %i.jz, %bb.bh ], [ %i.kv, %bb.bm ], [ %i.kd, %bb.bi ], [ %i.jl, %bb.be ], [ %i.jk, %bb.bd ]
  %.sroa.014.sroa.8.0.ph.i.i = phi i32 [ 2, %bb.bl ], [ 1, %bb.bh ], [ 2, %bb.bm ], [ 1, %bb.bi ], [ 2, %bb.be ], [ 1, %bb.bd ]
  store ptr %.sroa.014.sroa.0.0.ph.i.i, ptr %13, align 8
  store i32 %i.je, ptr %.sroa.014.sroa.7.0..sroa_idx53.i.i, align 8
  store i32 %.sroa.014.sroa.8.0.ph.i.i, ptr %.sroa.014.sroa.8.0..sroa_idx59.i.i, align 4
  store ptr %14, ptr %.sroa.014.sroa.9.0..sroa_idx65.i.i, align 8
  br label %_ZN2v88internal6String13GetCharVectorItEENS_4base6VectorIKT_EERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i.i

bb.bo:                                            ; preds = %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %13, ptr noundef nonnull align 4 dereferenceable(16) %i.jc, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(16) %12) #12
  br label %_ZN2v88internal6String13GetCharVectorItEENS_4base6VectorIKT_EERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i.i

_ZN2v88internal6String13GetCharVectorItEENS_4base6VectorIKT_EERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i.i: ; preds = %bb.bo, %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i.i
  %i.kw = load i8, ptr %i.ah, align 8, !range !5, !noundef !6
  %i.kx = trunc nuw i8 %i.kw to i1
  store i8 0, ptr %i.ah, align 8
  br i1 %i.kx, label %bb.bp, label %.thread67.i

bb.bp:                                            ; preds = %_ZN2v88internal6String13GetCharVectorItEENS_4base6VectorIKT_EERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i.i
  %i.ky = load ptr, ptr %12, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.thread67.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ky) #12
  br label %.thread67.i

bb.br:                                            ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit39.i, %._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit39_crit_edge.i
  br i1 %i.ag, label %_ZN2v88internal12_GLOBAL__N_116HandleInterruptsItEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateENS0_6RegExp10CallOriginEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS9_INS0_6StringEEEPPKhPNS_4base6VectorIKT_EESI_.exit.thread, label %.thread.i, !prof !58

.thread67.i:                                      ; preds = %bb.bq, %bb.bp, %_ZN2v88internal6String13GetCharVectorItEENS_4base6VectorIKT_EERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12, !noalias !62
  %i.kz = load ptr, ptr %13, align 8              ; 2 uses
  %i.la = load i32, ptr %.sroa.014.sroa.7.0..sroa_idx53.i.i, align 8
  %i.lb = zext i32 %i.la to i64                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  br i1 %i.ag, label %bb.bt, label %.thread.i, !prof !58

.thread.i:                                        ; preds = %.thread67.i, %bb.br, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i, %bb.ax, %_ZN2v88internal12_GLOBAL__N_118ThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit.i
  %.sroa.31.1 = phi i64 [ %.sroa.31.0, %_ZN2v88internal12_GLOBAL__N_118ThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit.i ], [ %.sroa.31.0, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i ], [ %i.lb, %.thread67.i ], [ %.sroa.31.0, %bb.br ], [ %.sroa.31.0, %bb.ax ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %_ZN2v88internal12_GLOBAL__N_118ThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit.i ], [ %.sroa.0.0, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i ], [ %i.kz, %.thread67.i ], [ %.sroa.0.0, %bb.br ], [ %.sroa.0.0, %bb.ax ]
  %.11414 = phi ptr [ %.01413, %_ZN2v88internal12_GLOBAL__N_118ThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit.i ], [ %.01413, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i ], [ %.31416, %.thread67.i ], [ %.01413, %bb.br ], [ %.01413, %bb.ax ]
  %.259.i = phi i32 [ -1, %_ZN2v88internal12_GLOBAL__N_118ThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit.i ], [ -1, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i ], [ -2, %.thread67.i ], [ -2, %bb.br ], [ undef, %bb.ax ]
  %cond57.i = phi i1 [ false, %_ZN2v88internal12_GLOBAL__N_118ThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit.i ], [ false, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i ], [ true, %.thread67.i ], [ false, %bb.br ], [ true, %bb.ax ]
  store ptr %i.hd, ptr %i.ab, align 8
  %i.lc = load i32, ptr %i.ad, align 8
  %i.ld = add nsw i32 %i.lc, -1
  store i32 %i.ld, ptr %i.ad, align 8
  %i.le = load ptr, ptr %i.ac, align 8
  %.not.i.i = icmp eq ptr %i.le, %i.he
  br i1 %.not.i.i, label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, label %bb.bs, !prof !32

bb.bs:                                            ; preds = %.thread.i
  store ptr %i.he, ptr %i.ac, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #12
  br label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i

_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i: ; preds = %bb.bs, %.thread.i
  br i1 %cond57.i, label %bb.bt, label %_ZN2v88internal12_GLOBAL__N_116HandleInterruptsItEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateENS0_6RegExp10CallOriginEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS9_INS0_6StringEEEPPKhPNS_4base6VectorIKT_EESI_.exit.thread

_ZN2v88internal12_GLOBAL__N_116HandleInterruptsItEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateENS0_6RegExp10CallOriginEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS9_INS0_6StringEEEPPKhPNS_4base6VectorIKT_EESI_.exit.thread: ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, %bb.aq, %bb.ar, %bb.br
  %.3.i.ph = phi i32 [ -2, %bb.br ], [ -2, %bb.ar ], [ -1, %bb.aq ], [ %.259.i, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  br label %_ZN2v88internal12_GLOBAL__N_123MaybeThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit

bb.bt:                                            ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, %.thread67.i, %bb.ar
  %.sroa.31.2 = phi i64 [ %.sroa.31.0, %bb.ar ], [ %.sroa.31.1, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i ], [ %i.lb, %.thread67.i ]
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %bb.ar ], [ %.sroa.0.1, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i ], [ %i.kz, %.thread67.i ]
  %.21415 = phi ptr [ %.01413, %bb.ar ], [ %.11414, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i ], [ %.31416, %.thread67.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  %.val.i1122 = load ptr, ptr %17, align 8
  %.val1.i1123 = load ptr, ptr %i.t, align 8      ; 2 uses
  %i.lf = icmp eq ptr %.val1.i1123, %.val.i1122
  br i1 %i.lf, label %bb.bu, label %_ZN2v88internal12_GLOBAL__N_114BacktrackStack3popEv.exit1124, !prof !33

bb.bu:                                            ; preds = %bb.bt
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9) #13
  unreachable

_ZN2v88internal12_GLOBAL__N_114BacktrackStack3popEv.exit1124: ; preds = %bb.bt
  %i.lg = getelementptr inbounds i8, ptr %.val1.i1123, i64 -4 ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4
  store ptr %i.lg, ptr %i.t, align 8
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds i8, ptr %.21415, i64 %i.li ; 2 uses
  %.val1008 = load i32, ptr %i.lj, align 4        ; 2 uses
  %i.lk = and i32 %.val1008, 63
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12_GLOBAL__N_18RawMatchItEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEjE14dispatch_table, i64 %i.ll
  %i.ln = load ptr, ptr %i.lm, align 8
  br label %.backedge.backedge

bb.bv:                                            ; preds = %.backedge
  %i.lo = getelementptr inbounds nuw i8, ptr %.01418, i64 4 ; 2 uses
  %.val1007 = load i32, ptr %i.lo, align 4        ; 2 uses
  %i.lp = and i32 %.val1007, 63
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12_GLOBAL__N_18RawMatchItEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEjE14dispatch_table, i64 %i.lq
  %i.ls = load ptr, ptr %i.lr, align 8
  %.val.i1125 = load ptr, ptr %17, align 8
  %.val1.i1126 = load ptr, ptr %i.t, align 8      ; 2 uses
  %i.lt = icmp eq ptr %.val1.i1126, %.val.i1125
  br i1 %i.lt, label %bb.bw, label %_ZN2v88internal12_GLOBAL__N_114BacktrackStack3popEv.exit1127, !prof !33

bb.bw:                                            ; preds = %bb.bv
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9) #13
  unreachable

_ZN2v88internal12_GLOBAL__N_114BacktrackStack3popEv.exit1127: ; preds = %bb.bv
  %i.lu = getelementptr inbounds i8, ptr %.val1.i1126, i64 -4 ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 4
  store ptr %i.lu, ptr %i.t, align 8
  %i.lw = lshr i32 %.0745, 8                      ; 2 uses
  %.val1060 = load i32, ptr %i.m, align 8         ; 2 uses
  %i.lx = icmp sgt i32 %.val1060, 0
  %i.ly = icmp ult i32 %i.lw, %.val1060
  %.not2.i1128 = and i1 %i.lx, %i.ly
  br i1 %.not2.i1128, label %_ZN2v88internal12_GLOBAL__N_120InterpreterRegistersixEm.exit1129, label %bb.bx, !prof !32

bb.bx:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114BacktrackStack3popEv.exit1127
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #13
  unreachable

_ZN2v88internal12_GLOBAL__N_120InterpreterRegistersixEm.exit1129: ; preds = %_ZN2v88internal12_GLOBAL__N_114BacktrackStack3popEv.exit1127
  %i.lz = zext nneg i32 %i.lw to i64
  %.val1059 = load ptr, ptr %16, align 8
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.val1059, i64 %i.lz
  store i32 %i.lv, ptr %i.ma, align 4
  br label %.backedge.backedge

bb.by:                                            ; preds = %.backedge
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 58656
  %i.mc = load ptr, ptr %i.mb, align 8            ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 1984 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 2008 ; 3 uses
  %i.mf = load atomic ptr, ptr %i.me acquire, align 8
  %i.mg = icmp eq ptr %i.mf, null
  br i1 %i.mg, label %bb.bz, label %_ZN2v88internal8Counters17regexp_backtracksEv.exit

bb.bz:                                            ; preds = %bb.by
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mc, i64 2024 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mh) #12
  %i.mi = load atomic ptr, ptr %i.me monotonic, align 8
  %i.mj = icmp eq ptr %i.mi, null
  br i1 %i.mj, label %bb.ca, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.mk = call noundef ptr @_ZNK2v88internal9Histogram15CreateHistogramEv(ptr noundef nonnull align 8 dereferenceable(48) %i.md) #12
  store atomic ptr %i.mk, ptr %i.me release, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i:  ; preds = %bb.ca, %bb.bz
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mh) #12
  br label %_ZN2v88internal8Counters17regexp_backtracksEv.exit

_ZN2v88internal8Counters17regexp_backtracksEv.exit: ; preds = %bb.by, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i
  call void @_ZN2v88internal9Histogram9AddSampleEi(ptr noundef nonnull align 8 dereferenceable(48) %i.md, i32 noundef %.0730) #12
  br label %_ZN2v88internal12_GLOBAL__N_123MaybeThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit

bb.cb:                                            ; preds = %.backedge
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 58656
  %i.mm = load ptr, ptr %i.ml, align 8            ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 1984 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 2008 ; 3 uses
  %i.mp = load atomic ptr, ptr %i.mo acquire, align 8
  %i.mq = icmp eq ptr %i.mp, null
  br i1 %i.mq, label %bb.cc, label %_ZN2v88internal8Counters17regexp_backtracksEv.exit1131

bb.cc:                                            ; preds = %bb.cb
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mm, i64 2024 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mr) #12
  %i.ms = load atomic ptr, ptr %i.mo monotonic, align 8
  %i.mt = icmp eq ptr %i.ms, null
  br i1 %i.mt, label %bb.cd, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i1130

bb.cd:                                            ; preds = %bb.cc
  %i.mu = call noundef ptr @_ZNK2v88internal9Histogram15CreateHistogramEv(ptr noundef nonnull align 8 dereferenceable(48) %i.mn) #12
  store atomic ptr %i.mu, ptr %i.mo release, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i1130

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i1130: ; preds = %bb.cd, %bb.cc
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mr) #12
  br label %_ZN2v88internal8Counters17regexp_backtracksEv.exit1131

_ZN2v88internal8Counters17regexp_backtracksEv.exit1131: ; preds = %bb.cb, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i1130
  call void @_ZN2v88internal9Histogram9AddSampleEi(ptr noundef nonnull align 8 dereferenceable(48) %i.mn, i32 noundef %.0730) #12
  %i.mv = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.mw = load ptr, ptr %16, align 8              ; 5 uses
  %i.mx = load i32, ptr %i.n, align 4
  %i.my = sext i32 %i.mx to i64                   ; 2 uses
  %18 = and i64 %i.my, 4611686018427387903
  switch i64 %18, label %bb.ci [
    i64 4, label %bb.ch
    i64 2, label %bb.cf
    i64 3, label %bb.cg
    i64 1, label %bb.ce
  ]

bb.ce:                                            ; preds = %_ZN2v88internal8Counters17regexp_backtracksEv.exit1131
  %i.mz = load i32, ptr %i.mw, align 1
  store i32 %i.mz, ptr %i.mv, align 1
  br label %_ZN2v88internal12_GLOBAL__N_123MaybeThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit

bb.cf:                                            ; preds = %_ZN2v88internal8Counters17regexp_backtracksEv.exit1131
  %i.na = load i64, ptr %i.mw, align 1
  store i64 %i.na, ptr %i.mv, align 1
  br label %_ZN2v88internal12_GLOBAL__N_123MaybeThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit

bb.cg:                                            ; preds = %_ZN2v88internal8Counters17regexp_backtracksEv.exit1131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.mv, ptr noundef nonnull align 1 dereferenceable(12) %i.mw, i64 12, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_123MaybeThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit

bb.ch:                                            ; preds = %_ZN2v88internal8Counters17regexp_backtracksEv.exit1131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.mv, ptr noundef nonnull align 1 dereferenceable(16) %i.mw, i64 16, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_123MaybeThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit

bb.ci:                                            ; preds = %_ZN2v88internal8Counters17regexp_backtracksEv.exit1131
  %19 = shl nsw i64 %i.my, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mv, ptr align 1 %i.mw, i64 %19, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_123MaybeThrowStackOverflowEPNS0_7IsolateENS0_6RegExp10CallOriginE.exit

bb.cj:                                            ; preds = %.backedge
  %i.nb = getelementptr inbounds nuw i8, ptr %.01418, i64 4 ; 2 uses
  %.val1006 = load i32, ptr %i.nb, align 4        ; 2 uses
  %i.nc = and i32 %.val1006, 63
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12_GLOBAL__N_18RawMatchItEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEjE14dispatch_table, i64 %i.nd
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = ashr i32 %.0745, 8
  %i.nh = add nsw i32 %.13, %i.ng
  br label %.backedge.backedge

bb.ck:                                            ; preds = %.backedge
  %i.ni = getelementptr inbounds nuw i8, ptr %.01418, i64 4
  %.val1005 = load i32, ptr %i.ni, align 4
  %i.nj = sext i32 %.val1005 to i64
  %i.nk = getelementptr inbounds i8, ptr %.01413, i64 %i.nj ; 2 uses
  %.val1004 = load i32, ptr %i.nk, align 4        ; 2 uses
  %i.nl = and i32 %.val1004, 63
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12_GLOBAL__N_18RawMatchItEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEjE14dispatch_table, i64 %i.nm
  %i.no = load ptr, ptr %i.nn, align 8
  br label %.backedge.backedge

bb.cl:                                            ; preds = %.backedge
  %i.np = getelementptr inbounds nuw i8, ptr %.01418, i64 4
  %.val1003 = load i32, ptr %i.np, align 4
  %i.nq = sext i32 %.val1003 to i64
  %i.nr = getelementptr inbounds i8, ptr %.01413, i64 %i.nq ; 2 uses
  %.val1002 = load i32, ptr %i.nr, align 4        ; 2 uses
  %i.ns = and i32 %.val1002, 63
  %i.nt = zext nneg i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12_GLOBAL__N_18RawMatchItEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEjE14dispatch_table, i64 %i.nt
  %i.nv = load ptr, ptr %i.nu, align 8
  %i.nw = ashr i32 %.0745, 8
  %i.nx = add nsw i32 %.13, %i.nw
  br label %.backedge.backedge

bb.cm:                                            ; preds = %.backedge
  %.val1093 = load ptr, ptr %17, align 8
  %.val1094 = load ptr, ptr %i.t, align 8         ; 2 uses
  %i.ny = icmp eq ptr %.val1094, %.val1093
  br i1 %i.ny, label %bb.cn, label %_ZNK2v88internal12_GLOBAL__N_114BacktrackStack4peekEv.exit, !prof !33

bb.cn:                                            ; preds = %bb.cm
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9) #13
  unreachable

_ZNK2v88internal12_GLOBAL__N_114BacktrackStack4peekEv.exit: ; preds = %bb.cm
  %i.nz = getelementptr inbounds i8, ptr %.val1094, i64 -4 ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 4
  %i.ob = icmp eq i32 %.13, %i.oa
  br i1 %i.ob, label %_ZN2v88internal12_GLOBAL__N_114BacktrackStack3popEv.exit1134, label %bb.co

_ZN2v88internal12_GLOBAL__N_114BacktrackStack3popEv.exit1134: ; preds = %_ZNK2v88internal12_GLOBAL__N_114BacktrackStack4peekEv.exit
  %i.oc = getelementptr inbounds nuw i8, ptr %.01418, i64 4
  %.val1001 = load i32, ptr %i.oc, align 4
  %i.od = sext i32 %.val1001 to i64
  %i.oe = getelementptr inbounds i8, ptr %.01413, i64 %i.od ; 2 uses
  %.val1000 = load i32, ptr %i.oe, align 4        ; 2 uses
  %i.of = and i32 %.val1000, 63
  %i.og = zext nneg i32 %i.of to i64
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12_GLOBAL__N_18RawMatchItEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEjE14dispatch_table, i64 %i.og
  %i.oi = load ptr, ptr %i.oh, align 8
  store ptr %i.nz, ptr %i.t, align 8
  br label %.backedge.backedge

bb.co:                                            ; preds = %_ZNK2v88internal12_GLOBAL__N_114BacktrackStack4peekEv.exit
  %i.oj = getelementptr inbounds nuw i8, ptr %.01418, i64 8 ; 2 uses
  %.val999 = load i32, ptr %i.oj, align 4         ; 2 uses
  %i.ok = and i32 %.val999, 63
  %i.ol = zext nneg i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12_GLOBAL__N_18RawMatchItEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEjE14dispatch_table, i64 %i.ol
  %i.on = load ptr, ptr %i.om, align 8
  br label %.backedge.backedge

bb.cp:                                            ; preds = %.backedge
  %i.oo = ashr i32 %.0745, 8
  %i.op = add nsw i32 %.13, %i.oo                 ; 2 uses
  %i.oq = icmp ult i64 %.sroa.31.0, 2147483648
  br i1 %i.oq, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.cq, !prof !32

bb.cq:                                            ; preds = %bb.cp
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #13
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.cp
  %i.or = trunc nuw nsw i64 %.sroa.31.0 to i32
  %or.cond.not = icmp ult i32 %i.op, %i.or
  br i1 %or.cond.not, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.os = getelementptr inbounds nuw i8, ptr %.01418, i64 4
  %.val998 = load i32, ptr %i.os, align 4
  %i.ot = sext i32 %.val998 to i64
  %i.ou = getelementptr inbounds i8, ptr %.01413, i64 %i.ot
  br label %bb.ct

bb.cs:                                            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.ov = getelementptr inbounds nuw i8, ptr %.01418, i64 8
  %i.ow = zext nneg i32 %i.op to i64
  %i.ox = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0, i64 %i.ow
  %i.oy = load i16, ptr %i.ox, align 2
  %i.oz = zext i16 %i.oy to i32
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.1732 = phi ptr [ %i.ou, %bb.cr ], [ %i.ov, %bb.cs ] ; 2 uses
  %.0719 = phi i32 [ %.10729, %bb.cr ], [ %i.oz, %bb.cs ]
  %.1747 = load i32, ptr %.1732, align 4          ; 2 uses
  %.pn1433.in = and i32 %.1747, 63
  %.pn1433 = zext nneg i32 %.pn1433.in to i64
  %.1772.in = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12_GLOBAL__N_18RawMatchItEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEjE14dispatch_table, i64 %.pn1433
  %.1772 = load ptr, ptr %.1772.in, align 8
  br label %.backedge.backedge

bb.cu:                                            ; preds = %.backedge
  %i.pa = getelementptr inbounds nuw i8, ptr %.01418, i64 4 ; 2 uses
  %.val995 = load i32, ptr %i.pa, align 4         ; 2 uses
  %i.pb = and i32 %.val995, 63
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12_GLOBAL__N_18RawMatchItEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEjE14dispatch_table, i64 %i.pc
  %i.pe = load ptr, ptr %i.pd, align 8
  %i.pf = ashr i32 %.0745, 8
  %i.pg = add nsw i32 %.13, %i.pf
  %i.ph = sext i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0, i64 %i.ph
  %i.pj = load i16, ptr %i.pi, align 2
  %i.pk = zext i16 %i.pj to i32
  br label %.backedge.backedge

bb.cv:                                            ; preds = %.backedge
  %i.pl = ashr i32 %.0745, 8
  %i.pm = add nsw i32 %.13, %i.pl                 ; 3 uses
  %i.pn = icmp ult i64 %.sroa.31.0, 2147483648
  br i1 %i.pn, label %_ZNK2v84base6VectorIKtE6lengthEv.exit1135, label %bb.cw, !prof !32

bb.cw:                                            ; preds = %bb.cv
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #13
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit1135:        ; preds = %bb.cv
  %i.po = add nsw i32 %i.pm, 2
  %i.pp = trunc nuw nsw i64 %.sroa.31.0 to i32
  %i.pq = icmp sgt i32 %i.po, %i.pp
  %i.pr = icmp slt i32 %i.pm, 0
  %or.cond3 = or i1 %i.pr, %i.pq
  br i1 %or.cond3, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit1135
  %i.ps = getelementptr inbounds nuw i8, ptr %.01418, i64 4
  %.val994 = load i32, ptr %i.ps, align 4
  %i.pt = sext i32 %.val994 to i64
  %i.pu = getelementptr inbounds i8, ptr %.01413, i64 %i.pt
  br label %bb.cz

bb.cy:                                            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit1135
  %i.pv = getelementptr inbounds nuw i8, ptr %.01418, i64 8
  %i.pw = zext nneg i32 %i.pm to i64
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0, i64 %i.pw ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 2
  %i.pz = load i16, ptr %i.py, align 2
  %i.qa = load i16, ptr %i.px, align 2
  %i.qb = zext i16 %i.qa to i32
  %i.qc = zext i16 %i.pz to i32
  %i.qd = shl nuw i32 %i.qc, 16
  %i.qe = or disjoint i32 %i.qd, %i.qb
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.2733 = phi ptr [ %i.pu, %bb.cx ], [ %i.pv, %bb.cy ] ; 2 uses
  %.1720 = phi i32 [ %.10729, %bb.cx ], [ %i.qe, %bb.cy ]
  %.2748 = load i32, ptr %.2733, align 4          ; 2 uses
  %.pn1431.in = and i32 %.2748, 63
  %.pn1431 = zext nneg i32 %.pn1431.in to i64
  %.2773.in = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12_GLOBAL__N_18RawMatchItEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEjE14dispatch_table, i64 %.pn1431
  %.2773 = load ptr, ptr %.2773.in, align 8
  br label %.backedge.backedge

bb.da:                                            ; preds = %.backedge
  %i.qf = getelementptr inbounds nuw i8, ptr %.01418, i64 4 ; 2 uses
  %.val991 = load i32, ptr %i.qf, align 4         ; 2 uses
  %i.qg = and i32 %.val991, 63
  %i.qh = zext nneg i32 %i.qg to i64
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12_GLOBAL__N_18RawMatchItEENS0_19IrregexpInterpreter6ResultEPNS0_7IsolateEPNS0_6TaggedINS0_16TrustedByteArrayEEEPNS7_INS0_6StringEEENS_4base6VectorIKT_EEPiiiijNS0_6RegExp10CallOriginEjE14dispatch_table, i64 %i.qh
  %i.qj = load ptr, ptr %i.qi, align 8
  %i.qk = ashr i32 %.0745, 8
  %i.ql = add nsw i32 %.13, %i.qk
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr [2 x i8], ptr %.sroa.0.0, i64 %i.qm ; 2 uses
  %i.qo = getelementptr i8, ptr %i.qn, i64 2
  %i.qp = load i16, ptr %i.qo, align 2
  %i.qq = load i16, ptr %i.qn, align 2
  %i.qr = zext i16 %i.qq to i32
  %i.qs = zext i16 %i.qp to i32
  %i.qt = shl nuw i32 %i.qs, 16
  %i.qu = or disjoint i32 %i.qt, %i.qr
  br label %.backedge.backedge

end_hunk_1
