inline.NumInlined: 1567
inline.NumDeleted: 747
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE16RunActiveThreadsEv:bb.a
    i32 7, label %bb.cy
    i32 9, label %bb.dd
    i32 10, label %bb.dd
    i32 11, label %bb.dd
    i32 12, label %bb.dd
    i32 13, label %bb.de
    i32 14, label %bb.df
    i32 15, label %bb.di
    i32 16, label %bb.dj
    i32 17, label %bb.dm
    i32 18, label %bb.du
  ]

bb.h:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %i.be = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.bf = load i32, ptr %i.ad, align 4            ; 3 uses
  %i.bg = load i32, ptr %i.ak, align 8            ; 3 uses
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %i.aj, align 8
  %i.bj = add nsw i32 %i.bf, 1
  store i32 %i.bj, ptr %i.ad, align 4
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [56 x i8], ptr %i.bi, i64 %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bl, ptr noundef nonnull readonly align 8 dereferenceable(52) %1, i64 52, i1 false)
  br label %bb.eg

bb.j:                                             ; preds = %bb.h
  %i.bm = shl nsw i32 %i.bg, 1
  %i.bn = or disjoint i32 %i.bm, 1                ; 2 uses
  %i.bo = icmp sgt i32 %i.bg, -1
  br i1 %i.bo, label %bb.l, label %bb.k, !prof !30

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bp = zext nneg i32 %i.bn to i64
  %i.bq = mul nuw nsw i64 %i.bp, 56               ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8            ; 2 uses
  %i.bv = sub i64 %i.bs, %i.bu
  %i.bw = icmp ugt i64 %i.bq, %i.bv
  br i1 %i.bw, label %bb.m, label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i, !prof !31

bb.m:                                             ; preds = %bb.l
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.be, i64 noundef %i.bq) #8
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.bt, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.bx = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.m ], [ %i.bu, %bb.l ] ; 2 uses
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = add i64 %i.bx, %i.bq
  store i64 %i.bz, ptr %i.bt, align 8
  %i.ca = load i32, ptr %i.ad, align 4            ; 3 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %bb.n, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i

bb.n:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i
  %i.cc = load ptr, ptr %i.aj, align 8
  %i.cd = zext nneg i32 %i.ca to i64
  %i.ce = mul nuw nsw i64 %i.cd, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.cc, i64 %i.ce, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.ad, align 4
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i: ; preds = %bb.n, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i
  %i.cf = phi i32 [ %i.ca, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i ], [ %.pre.i.i.i.i, %bb.n ] ; 2 uses
  store ptr %i.by, ptr %i.aj, align 8
  store i32 %i.bn, ptr %i.ak, align 8
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ad, align 4
  %i.ch = sext i32 %i.cf to i64
  %i.ci = getelementptr inbounds [56 x i8], ptr %i.by, i64 %i.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.ci, ptr noundef nonnull align 8 dereferenceable(52) %1, i64 52, i1 false)
  br label %bb.eg

bb.o:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8 ; 5 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 7 uses
  %i.cj = load i32, ptr %i.i, align 8             ; 10 uses
  switch i32 %.sroa.4258.0.extract.trunc.i, label %bb.ac [
    i32 1, label %bb.p
    i32 3, label %bb.q
    i32 0, label %bb.s
    i32 2, label %bb.u
    i32 4, label %bb.w
    i32 5, label %.loopexit50.i.i
  ]

bb.p:                                             ; preds = %bb.o
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i, label %bb.ad

bb.q:                                             ; preds = %bb.o
  %i.cl = icmp ult i64 %.sroa.2.0.copyload.i, 2147483648
  br i1 %i.cl, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i, label %bb.r, !prof !30

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9, !inline_history !78
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i:        ; preds = %bb.q
  %i.cm = trunc nuw nsw i64 %.sroa.2.0.copyload.i to i32
  %i.cn = icmp eq i32 %i.cj, %i.cm
  br i1 %i.cn, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i, label %bb.ad

bb.s:                                             ; preds = %bb.o
  %i.co = icmp eq i32 %i.cj, 0
  br i1 %i.co, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = sext i32 %i.cj to i64
  %i.cq = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1
  %i.cs = load i8, ptr %i.cr, align 1
  switch i8 %i.cs, label %bb.ad [
    i8 13, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i
    i8 10, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i
  ]

bb.u:                                             ; preds = %bb.o
  %i.ct = icmp ult i64 %.sroa.2.0.copyload.i, 2147483648
  br i1 %i.ct, label %_ZNK2v84base6VectorIKhE6lengthEv.exit16.i.i, label %bb.v, !prof !30

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9, !inline_history !78
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit16.i.i:      ; preds = %bb.u
  %i.cu = trunc nuw nsw i64 %.sroa.2.0.copyload.i to i32
  %i.cv = icmp eq i32 %i.cj, %i.cu
  br i1 %i.cv, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.i

.loopexit50.i.i:                                  ; preds = %bb.o
  br label %bb.w

bb.w:                                             ; preds = %.loopexit50.i.i, %bb.o
  %accumulator.tr.lcssa43.i.i = phi i1 [ false, %bb.o ], [ true, %.loopexit50.i.i ] ; 2 uses
  %i.cw = icmp ult i64 %.sroa.2.0.copyload.i, 2147483648
  br i1 %i.cw, label %_ZNK2v84base6VectorIKhE6lengthEv.exit17.i.i, label %bb.x, !prof !30

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9, !inline_history !78
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit17.i.i:      ; preds = %bb.w
  %i.cx = trunc nuw nsw i64 %.sroa.2.0.copyload.i to i32
  %i.cy = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %i.cy, label %_ZNK2v84base6VectorIKhE6lengthEv.exit17.i._ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit_crit_edge.i, label %bb.y

_ZNK2v84base6VectorIKhE6lengthEv.exit17.i._ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit_crit_edge.i: ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit17.i.i
  br i1 %accumulator.tr.lcssa43.i.i, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i, label %bb.ad

bb.y:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit17.i.i
  %i.cz = icmp eq i32 %i.cj, 0
  br i1 %i.cz, label %bb.z, label %_ZNK2v84base6VectorIKhE6lengthEv.exit18.i.i

bb.z:                                             ; preds = %bb.y
  %i.da = load i8, ptr %.sroa.0.0.copyload.i, align 1 ; 3 uses
  %i.db = or i8 %i.da, 32
  %i.dc = add i8 %i.db, -97
  %i.dd = icmp ult i8 %i.dc, 26
  %i.de = add i8 %i.da, -48
  %i.df = icmp ult i8 %i.de, 10
  %i.dg = or i1 %i.df, %i.dd
  %i.dh = icmp eq i8 %i.da, 95
  %i.di = or i1 %i.dh, %i.dg
  br label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.i

_ZNK2v84base6VectorIKhE6lengthEv.exit18.i.i:      ; preds = %bb.y
  %i.dj = icmp eq i32 %i.cj, %i.cx
  br i1 %i.dj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit18.i.i
  %i.dk = zext nneg i32 %i.cj to i64
  %i.dl = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 -1
  %i.dn = load i8, ptr %i.dm, align 1             ; 3 uses
  %i.do = or i8 %i.dn, 32
  %i.dp = add i8 %i.do, -97
  %i.dq = icmp ult i8 %i.dp, 26
  %i.dr = add i8 %i.dn, -48
  %i.ds = icmp ult i8 %i.dr, 10
  %i.dt = or i1 %i.ds, %i.dq
  %i.du = icmp eq i8 %i.dn, 95
  %i.dv = or i1 %i.du, %i.dt
  br label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.i

bb.ab:                                            ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit18.i.i
  %i.dw = sext i32 %i.cj to i64
  %i.dx = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 -1
  %i.dz = load <2 x i8>, ptr %i.dy, align 1       ; 3 uses
  %i.ea = or <2 x i8> %i.dz, splat (i8 32)
  %i.eb = add <2 x i8> %i.ea, splat (i8 -97)
  %i.ec = icmp ult <2 x i8> %i.eb, splat (i8 26)
  %i.ed = add <2 x i8> %i.dz, splat (i8 -48)
  %i.ee = icmp ult <2 x i8> %i.ed, splat (i8 10)
  %i.ef = or <2 x i1> %i.ee, %i.ec
  %i.eg = icmp eq <2 x i8> %i.dz, splat (i8 95)
  %i.eh = or <2 x i1> %i.eg, %i.ef                ; 2 uses
  %shift = shufflevector <2 x i1> %i.eh, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = xor <2 x i1> %i.eh, %shift
  %i.ei = extractelement <2 x i1> %foldExtExtBinop, i64 0
  br label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.i

bb.ac:                                            ; preds = %bb.o
  unreachable

_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.i: ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit16.i.i
  %i.ej = sext i32 %i.cj to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1
  switch i8 %i.el, label %bb.ad [
    i8 13, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i
    i8 10, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i
  ]

_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.i: ; preds = %bb.ab, %bb.aa, %bb.z
  %.0.i91.i = phi i1 [ %i.di, %bb.z ], [ %i.dv, %bb.aa ], [ %i.ei, %bb.ab ]
  %accumulator.ret.tr.i.i = xor i1 %accumulator.tr.lcssa43.i.i, %.0.i91.i
  br i1 %accumulator.ret.tr.i.i, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.i, %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit17.i._ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit_crit_edge.i, %bb.t, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i, %bb.p
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull byval(%"class.v8::internal::(anonymous namespace)::NfaInterpreter<unsigned char>::InterpreterThread") align 8 %1)
  br label %bb.eg

_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i: ; preds = %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.i, %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.i, %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit17.i._ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionIhEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit_crit_edge.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit16.i.i, %bb.t, %bb.t, %bb.s, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i, %bb.p
  %i.em = add nuw nsw i32 %i.ar, 1
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.sink.split.i

bb.ae:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %i.en = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1611), align 1, !range !28, !noalias !79, !noundef !29
  %i.eo = trunc nuw i8 %i.en to i1
  %i.ep = load i32, ptr %i.p, align 8, !noalias !79 ; 3 uses
  %i.eq = sext i32 %i.ep to i64                   ; 4 uses
  %i.er = load ptr, ptr %i.r, align 8, !noalias !79 ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.er, null         ; 2 uses
  br i1 %i.eo, label %bb.af, label %bb.bm

bb.af:                                            ; preds = %bb.ae
  br i1 %.not.i.i.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load i64, ptr %i.es, align 8, !noalias !79
  %.not5.i.i.i.i = icmp ult i64 %i.et, %i.eq
  br i1 %.not5.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eu = load ptr, ptr %i.er, align 8, !noalias !79
  store ptr %i.eu, ptr %i.r, align 8, !noalias !79
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE29NewRegisterArrayUninitializedEv.exit.i.i

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.ev = load ptr, ptr %i.q, align 8, !noalias !79 ; 3 uses
  %i.ew = icmp sgt i32 %i.ep, -1
  br i1 %i.ew, label %bb.ak, label %bb.aj, !prof !30

bb.aj:                                            ; preds = %bb.ai
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9, !noalias !79
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ex = shl nuw nsw i64 %i.eq, 2
  %i.ey = add nuw nsw i64 %i.ex, 4
  %i.ez = and i64 %i.ey, 17179869176              ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.fb = load i64, ptr %i.fa, align 8, !noalias !79
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 3 uses
  %i.fd = load i64, ptr %i.fc, align 8, !noalias !79 ; 2 uses
  %i.fe = sub i64 %i.fb, %i.fd
  %i.ff = icmp ugt i64 %i.ez, %i.fe
  br i1 %i.ff, label %bb.al, label %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i.i, !prof !31

bb.al:                                            ; preds = %bb.ak
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ev, i64 noundef %i.ez) #8, !noalias !79
  %.pre.i.i.i.i.i.i92.i = load i64, ptr %i.fc, align 8, !noalias !79
  br label %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i.i

_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i.i: ; preds = %bb.al, %bb.ak
  %i.fg = phi i64 [ %.pre.i.i.i.i.i.i92.i, %bb.al ], [ %i.fd, %bb.ak ] ; 2 uses
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = add i64 %i.fg, %i.ez
  store i64 %i.fi, ptr %i.fc, align 8, !noalias !79
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE29NewRegisterArrayUninitializedEv.exit.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE29NewRegisterArrayUninitializedEv.exit.i.i: ; preds = %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i.i, %bb.ah
  %.0.i.i.i.i = phi ptr [ %i.er, %bb.ah ], [ %i.fh, %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i.i ] ; 3 uses
  %i.fj = load i8, ptr %i.k, align 8, !range !28, !noalias !79, !noundef !29
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE41NewLookaroundMatchIndexArrayUninitializedEv.exit.i.i, label %bb.am

bb.am:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE29NewRegisterArrayUninitializedEv.exit.i.i
  %i.fl = load ptr, ptr %i.l, align 8, !noalias !79
  %i.fm = load ptr, ptr %i.m, align 8, !noalias !79
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 2 uses
  %i.fq = ashr exact i64 %i.fp, 5                 ; 2 uses
  %i.fr = load ptr, ptr %i.t, align 8, !noalias !79 ; 4 uses
  %.not.i.i2.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i2.i.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !noalias !79
  %.not5.i.i3.i.i = icmp ult i64 %i.ft, %i.fq
  br i1 %.not5.i.i3.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fu = load ptr, ptr %i.fr, align 8, !noalias !79
  store ptr %i.fu, ptr %i.t, align 8, !noalias !79
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE41NewLookaroundMatchIndexArrayUninitializedEv.exit.i.i

bb.ap:                                            ; preds = %bb.an, %bb.am
  %i.fv = load ptr, ptr %i.s, align 8, !noalias !79 ; 3 uses
  %i.fw = icmp ult i64 %i.fq, 4611686018427387903
  br i1 %i.fw, label %bb.ar, label %bb.aq, !prof !30

bb.aq:                                            ; preds = %bb.ap
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9, !noalias !79
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.fx = ashr exact i64 %i.fp, 3
  %i.fy = add nuw nsw i64 %i.fx, 4
  %i.fz = and i64 %i.fy, -8                       ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.gb = load i64, ptr %i.ga, align 8, !noalias !79
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 3 uses
  %i.gd = load i64, ptr %i.gc, align 8, !noalias !79 ; 2 uses
  %i.ge = sub i64 %i.gb, %i.gd
  %i.gf = icmp ugt i64 %i.fz, %i.ge
  br i1 %i.gf, label %bb.as, label %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i5.i.i, !prof !31

bb.as:                                            ; preds = %bb.ar
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.fv, i64 noundef %i.fz) #8, !noalias !79
  %.pre.i.i.i.i.i6.i.i = load i64, ptr %i.gc, align 8, !noalias !79
  br label %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i5.i.i

_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i5.i.i: ; preds = %bb.as, %bb.ar
  %i.gg = phi i64 [ %.pre.i.i.i.i.i6.i.i, %bb.as ], [ %i.gd, %bb.ar ] ; 2 uses
  %i.gh = inttoptr i64 %i.gg to ptr
  %i.gi = add i64 %i.gg, %i.fz
  store i64 %i.gi, ptr %i.gc, align 8, !noalias !79
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE41NewLookaroundMatchIndexArrayUninitializedEv.exit.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE41NewLookaroundMatchIndexArrayUninitializedEv.exit.i.i: ; preds = %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i5.i.i, %bb.ao, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE29NewRegisterArrayUninitializedEv.exit.i.i
  %i.gj = phi ptr [ null, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE29NewRegisterArrayUninitializedEv.exit.i.i ], [ %i.fr, %bb.ao ], [ %i.gh, %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i5.i.i ] ; 3 uses
  %i.gk = load i32, ptr %i.v, align 4, !noalias !79 ; 2 uses
  %i.gl = sext i32 %i.gk to i64                   ; 2 uses
  %i.gm = load ptr, ptr %i.w, align 8, !noalias !79 ; 4 uses
  %.not.i.i7.i.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i7.i.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE41NewLookaroundMatchIndexArrayUninitializedEv.exit.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !noalias !79
  %.not5.i.i8.i.i = icmp ult i64 %i.go, %i.gl
  br i1 %.not5.i.i8.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gp = load ptr, ptr %i.gm, align 8, !noalias !79
  store ptr %i.gp, ptr %i.w, align 8, !noalias !79
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE36NewQuantifierClockArrayUninitializedEv.exit.i.i

bb.av:                                            ; preds = %bb.at, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE41NewLookaroundMatchIndexArrayUninitializedEv.exit.i.i
  %i.gq = load ptr, ptr %i.u, align 8, !noalias !79 ; 3 uses
  %i.gr = icmp sgt i32 %i.gk, -1
  br i1 %i.gr, label %bb.ax, label %bb.aw, !prof !30

bb.aw:                                            ; preds = %bb.av
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9, !noalias !79
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.gs = shl nuw nsw i64 %i.gl, 3                ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gu = load i64, ptr %i.gt, align 8, !noalias !79
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 3 uses
  %i.gw = load i64, ptr %i.gv, align 8, !noalias !79 ; 2 uses
  %i.gx = sub i64 %i.gu, %i.gw
  %i.gy = icmp ugt i64 %i.gs, %i.gx
  br i1 %i.gy, label %bb.ay, label %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i.i, !prof !31

bb.ay:                                            ; preds = %bb.ax
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.gq, i64 noundef %i.gs) #8, !noalias !79
  %.pre.i.i.i.i.i10.i.i = load i64, ptr %i.gv, align 8, !noalias !79
  br label %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i.i

_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i.i: ; preds = %bb.ay, %bb.ax
  %i.gz = phi i64 [ %.pre.i.i.i.i.i10.i.i, %bb.ay ], [ %i.gw, %bb.ax ] ; 2 uses
  %i.ha = inttoptr i64 %i.gz to ptr
  %i.hb = add i64 %i.gz, %i.gs
  store i64 %i.hb, ptr %i.gv, align 8, !noalias !79
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE36NewQuantifierClockArrayUninitializedEv.exit.i.i

end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16RunActiveThreadsEv:bb.a
    i32 17, label %bb.dl
    i32 18, label %bb.dt
  ]

bb.h:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %i.be = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.bf = load i32, ptr %i.ad, align 4            ; 3 uses
  %i.bg = load i32, ptr %i.ak, align 8            ; 3 uses
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %i.aj, align 8
  %i.bj = add nsw i32 %i.bf, 1
  store i32 %i.bj, ptr %i.ad, align 4
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [56 x i8], ptr %i.bi, i64 %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bl, ptr noundef nonnull readonly align 8 dereferenceable(52) %1, i64 52, i1 false)
  br label %bb.ef

bb.j:                                             ; preds = %bb.h
  %i.bm = shl nsw i32 %i.bg, 1
  %i.bn = or disjoint i32 %i.bm, 1                ; 2 uses
  %i.bo = icmp sgt i32 %i.bg, -1
  br i1 %i.bo, label %bb.l, label %bb.k, !prof !30

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bp = zext nneg i32 %i.bn to i64
  %i.bq = mul nuw nsw i64 %i.bp, 56               ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8            ; 2 uses
  %i.bv = sub i64 %i.bs, %i.bu
  %i.bw = icmp ugt i64 %i.bq, %i.bv
  br i1 %i.bw, label %bb.m, label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i, !prof !31

bb.m:                                             ; preds = %bb.l
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.be, i64 noundef %i.bq) #8
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.bt, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.bx = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.m ], [ %i.bu, %bb.l ] ; 2 uses
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = add i64 %i.bx, %i.bq
  store i64 %i.bz, ptr %i.bt, align 8
  %i.ca = load i32, ptr %i.ad, align 4            ; 3 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %bb.n, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i

bb.n:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i
  %i.cc = load ptr, ptr %i.aj, align 8
  %i.cd = zext nneg i32 %i.ca to i64
  %i.ce = mul nuw nsw i64 %i.cd, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.cc, i64 %i.ce, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.ad, align 4
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i: ; preds = %bb.n, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i
  %i.cf = phi i32 [ %i.ca, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i ], [ %.pre.i.i.i.i, %bb.n ] ; 2 uses
  store ptr %i.by, ptr %i.aj, align 8
  store i32 %i.bn, ptr %i.ak, align 8
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ad, align 4
  %i.ch = sext i32 %i.cf to i64
  %i.ci = getelementptr inbounds [56 x i8], ptr %i.by, i64 %i.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.ci, ptr noundef nonnull align 8 dereferenceable(52) %1, i64 52, i1 false)
  br label %bb.ef

bb.o:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8 ; 5 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 7 uses
  %i.cj = load i32, ptr %i.i, align 8             ; 10 uses
  switch i32 %.sroa.4258.0.extract.trunc.i, label %bb.ac [
    i32 1, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.i
    i32 3, label %bb.p
    i32 0, label %bb.r
    i32 2, label %bb.t
    i32 4, label %bb.w
    i32 5, label %.loopexit47.i.i
  ]

bb.p:                                             ; preds = %bb.o
  %i.ck = icmp ult i64 %.sroa.2.0.copyload.i, 2147483648
  br i1 %i.ck, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i, label %bb.q, !prof !30

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9, !inline_history !131
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i:        ; preds = %bb.p
  %i.cl = trunc nuw nsw i64 %.sroa.2.0.copyload.i to i32
  %i.cm = icmp eq i32 %i.cj, %i.cl
  br i1 %i.cm, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread290.i

bb.r:                                             ; preds = %bb.o
  %i.cn = icmp eq i32 %i.cj, 0
  br i1 %i.cn, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = sext i32 %i.cj to i64
  %i.cp = getelementptr [2 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 -2
  %i.cr = load i16, ptr %i.cq, align 2
  switch i16 %i.cr, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread290.i [
    i16 8232, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i
    i16 13, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i
    i16 10, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i
    i16 8233, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i
  ]

bb.t:                                             ; preds = %bb.o
  %i.cs = icmp ult i64 %.sroa.2.0.copyload.i, 2147483648
  br i1 %i.cs, label %_ZNK2v84base6VectorIKtE6lengthEv.exit16.i.i, label %bb.u, !prof !30

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9, !inline_history !131
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit16.i.i:      ; preds = %bb.t
  %i.ct = trunc nuw nsw i64 %.sroa.2.0.copyload.i to i32
  %i.cu = icmp eq i32 %i.cj, %i.ct
  br i1 %i.cu, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i, label %bb.v

bb.v:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit16.i.i
  %i.cv = sext i32 %i.cj to i64
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2
  switch i16 %i.cx, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread290.i [
    i16 8232, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i
    i16 13, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i
    i16 10, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i
    i16 8233, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i
  ]

.loopexit47.i.i:                                  ; preds = %bb.o
  br label %bb.w

bb.w:                                             ; preds = %.loopexit47.i.i, %bb.o
  %accumulator.tr.lcssa40.i.i = phi i1 [ false, %bb.o ], [ true, %.loopexit47.i.i ] ; 2 uses
  %i.cy = icmp ult i64 %.sroa.2.0.copyload.i, 2147483648
  br i1 %i.cy, label %_ZNK2v84base6VectorIKtE6lengthEv.exit17.i.i, label %bb.x, !prof !30

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9, !inline_history !131
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit17.i.i:      ; preds = %bb.w
  %i.cz = trunc nuw nsw i64 %.sroa.2.0.copyload.i to i32
  %i.da = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %i.da, label %_ZNK2v84base6VectorIKtE6lengthEv.exit17.i._ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit_crit_edge.i, label %bb.y

_ZNK2v84base6VectorIKtE6lengthEv.exit17.i._ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit_crit_edge.i: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit17.i.i
  br i1 %accumulator.tr.lcssa40.i.i, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread290.i

bb.y:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit17.i.i
  %i.db = icmp eq i32 %i.cj, 0
  br i1 %i.db, label %bb.z, label %_ZNK2v84base6VectorIKtE6lengthEv.exit18.i.i

bb.z:                                             ; preds = %bb.y
  %i.dc = load i16, ptr %.sroa.0.0.copyload.i, align 2 ; 3 uses
  %i.dd = or i16 %i.dc, 32
  %i.de = add i16 %i.dd, -97
  %i.df = icmp ult i16 %i.de, 26
  %i.dg = add i16 %i.dc, -48
  %i.dh = icmp ult i16 %i.dg, 10
  %i.di = or i1 %i.dh, %i.df
  %i.dj = icmp eq i16 %i.dc, 95
  %i.dk = or i1 %i.dj, %i.di
  br label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.i

_ZNK2v84base6VectorIKtE6lengthEv.exit18.i.i:      ; preds = %bb.y
  %i.dl = icmp eq i32 %i.cj, %i.cz
  br i1 %i.dl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit18.i.i
  %i.dm = zext nneg i32 %i.cj to i64
  %i.dn = getelementptr [2 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -2
  %i.dp = load i16, ptr %i.do, align 2            ; 3 uses
  %i.dq = or i16 %i.dp, 32
  %i.dr = add i16 %i.dq, -97
  %i.ds = icmp ult i16 %i.dr, 26
  %i.dt = add i16 %i.dp, -48
  %i.du = icmp ult i16 %i.dt, 10
  %i.dv = or i1 %i.du, %i.ds
  %i.dw = icmp eq i16 %i.dp, 95
  %i.dx = or i1 %i.dw, %i.dv
  br label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.i

bb.ab:                                            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit18.i.i
  %i.dy = sext i32 %i.cj to i64
  %i.dz = getelementptr [2 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 -2
  %i.eb = load <2 x i16>, ptr %i.ea, align 2      ; 3 uses
  %i.ec = or <2 x i16> %i.eb, splat (i16 32)
  %i.ed = add <2 x i16> %i.ec, splat (i16 -97)
  %i.ee = icmp ult <2 x i16> %i.ed, splat (i16 26)
  %i.ef = add <2 x i16> %i.eb, splat (i16 -48)
  %i.eg = icmp ult <2 x i16> %i.ef, splat (i16 10)
  %i.eh = or <2 x i1> %i.eg, %i.ee
  %i.ei = icmp eq <2 x i16> %i.eb, splat (i16 95)
  %i.ej = or <2 x i1> %i.ei, %i.eh                ; 2 uses
  %shift = shufflevector <2 x i1> %i.ej, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = xor <2 x i1> %i.ej, %shift
  %i.ek = extractelement <2 x i1> %foldExtExtBinop, i64 0
  br label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.i

bb.ac:                                            ; preds = %bb.o
  unreachable

_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.i: ; preds = %bb.o
  %i.el = icmp eq i32 %i.cj, 0
  br i1 %i.el, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread290.i

_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.i: ; preds = %bb.ab, %bb.aa, %bb.z
  %.0.i91.i = phi i1 [ %i.dk, %bb.z ], [ %i.dx, %bb.aa ], [ %i.ek, %bb.ab ]
  %accumulator.ret.tr.i.i = xor i1 %accumulator.tr.lcssa40.i.i, %.0.i91.i
  br i1 %accumulator.ret.tr.i.i, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread290.i

_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread290.i: ; preds = %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.i, %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.i, %_ZNK2v84base6VectorIKtE6lengthEv.exit17.i._ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit_crit_edge.i, %bb.v, %bb.s, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull byval(%"class.v8::internal::(anonymous namespace)::NfaInterpreter<unsigned short>::InterpreterThread") align 8 %1)
  br label %bb.ef

_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i: ; preds = %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.i, %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.i, %_ZNK2v84base6VectorIKtE6lengthEv.exit17.i._ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit_crit_edge.i, %bb.v, %bb.v, %bb.v, %bb.v, %_ZNK2v84base6VectorIKtE6lengthEv.exit16.i.i, %bb.s, %bb.s, %bb.s, %bb.s, %bb.r, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i
  %i.em = add nuw nsw i32 %i.ar, 1
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.sink.split.i

bb.ad:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %i.en = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1611), align 1, !range !28, !noalias !132, !noundef !29
  %i.eo = trunc nuw i8 %i.en to i1
  %i.ep = load i32, ptr %i.p, align 8, !noalias !132 ; 3 uses
  %i.eq = sext i32 %i.ep to i64                   ; 4 uses
  %i.er = load ptr, ptr %i.r, align 8, !noalias !132 ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.er, null         ; 2 uses
  br i1 %i.eo, label %bb.ae, label %bb.bl

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not.i.i.i.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load i64, ptr %i.es, align 8, !noalias !132
  %.not5.i.i.i.i = icmp ult i64 %i.et, %i.eq
  br i1 %.not5.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eu = load ptr, ptr %i.er, align 8, !noalias !132
  store ptr %i.eu, ptr %i.r, align 8, !noalias !132
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE29NewRegisterArrayUninitializedEv.exit.i.i

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.ev = load ptr, ptr %i.q, align 8, !noalias !132 ; 3 uses
  %i.ew = icmp sgt i32 %i.ep, -1
  br i1 %i.ew, label %bb.aj, label %bb.ai, !prof !30

bb.ai:                                            ; preds = %bb.ah
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9, !noalias !132
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ex = shl nuw nsw i64 %i.eq, 2
  %i.ey = add nuw nsw i64 %i.ex, 4
  %i.ez = and i64 %i.ey, 17179869176              ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.fb = load i64, ptr %i.fa, align 8, !noalias !132
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 3 uses
  %i.fd = load i64, ptr %i.fc, align 8, !noalias !132 ; 2 uses
  %i.fe = sub i64 %i.fb, %i.fd
  %i.ff = icmp ugt i64 %i.ez, %i.fe
  br i1 %i.ff, label %bb.ak, label %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i.i, !prof !31

bb.ak:                                            ; preds = %bb.aj
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ev, i64 noundef %i.ez) #8, !noalias !132
  %.pre.i.i.i.i.i.i92.i = load i64, ptr %i.fc, align 8, !noalias !132
  br label %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i.i

_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %i.fg = phi i64 [ %.pre.i.i.i.i.i.i92.i, %bb.ak ], [ %i.fd, %bb.aj ] ; 2 uses
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = add i64 %i.fg, %i.ez
  store i64 %i.fi, ptr %i.fc, align 8, !noalias !132
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE29NewRegisterArrayUninitializedEv.exit.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE29NewRegisterArrayUninitializedEv.exit.i.i: ; preds = %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i.i, %bb.ag
  %.0.i.i.i.i = phi ptr [ %i.er, %bb.ag ], [ %i.fh, %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i.i ] ; 3 uses
  %i.fj = load i8, ptr %i.k, align 8, !range !28, !noalias !132, !noundef !29
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE41NewLookaroundMatchIndexArrayUninitializedEv.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE29NewRegisterArrayUninitializedEv.exit.i.i
  %i.fl = load ptr, ptr %i.l, align 8, !noalias !132
  %i.fm = load ptr, ptr %i.m, align 8, !noalias !132
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 2 uses
  %i.fq = ashr exact i64 %i.fp, 5                 ; 2 uses
  %i.fr = load ptr, ptr %i.t, align 8, !noalias !132 ; 4 uses
  %.not.i.i2.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i2.i.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !noalias !132
  %.not5.i.i3.i.i = icmp ult i64 %i.ft, %i.fq
  br i1 %.not5.i.i3.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fu = load ptr, ptr %i.fr, align 8, !noalias !132
  store ptr %i.fu, ptr %i.t, align 8, !noalias !132
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE41NewLookaroundMatchIndexArrayUninitializedEv.exit.i.i

bb.ao:                                            ; preds = %bb.am, %bb.al
  %i.fv = load ptr, ptr %i.s, align 8, !noalias !132 ; 3 uses
  %i.fw = icmp ult i64 %i.fq, 4611686018427387903
  br i1 %i.fw, label %bb.aq, label %bb.ap, !prof !30

bb.ap:                                            ; preds = %bb.ao
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9, !noalias !132
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.fx = ashr exact i64 %i.fp, 3
  %i.fy = add nuw nsw i64 %i.fx, 4
  %i.fz = and i64 %i.fy, -8                       ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.gb = load i64, ptr %i.ga, align 8, !noalias !132
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 3 uses
  %i.gd = load i64, ptr %i.gc, align 8, !noalias !132 ; 2 uses
  %i.ge = sub i64 %i.gb, %i.gd
  %i.gf = icmp ugt i64 %i.fz, %i.ge
  br i1 %i.gf, label %bb.ar, label %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i5.i.i, !prof !31

bb.ar:                                            ; preds = %bb.aq
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.fv, i64 noundef %i.fz) #8, !noalias !132
  %.pre.i.i.i.i.i6.i.i = load i64, ptr %i.gc, align 8, !noalias !132
  br label %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i5.i.i

_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i5.i.i: ; preds = %bb.ar, %bb.aq
  %i.gg = phi i64 [ %.pre.i.i.i.i.i6.i.i, %bb.ar ], [ %i.gd, %bb.aq ] ; 2 uses
  %i.gh = inttoptr i64 %i.gg to ptr
  %i.gi = add i64 %i.gg, %i.fz
  store i64 %i.gi, ptr %i.gc, align 8, !noalias !132
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE41NewLookaroundMatchIndexArrayUninitializedEv.exit.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE41NewLookaroundMatchIndexArrayUninitializedEv.exit.i.i: ; preds = %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i5.i.i, %bb.an, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE29NewRegisterArrayUninitializedEv.exit.i.i
  %i.gj = phi ptr [ null, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE29NewRegisterArrayUninitializedEv.exit.i.i ], [ %i.fr, %bb.an ], [ %i.gh, %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i5.i.i ] ; 3 uses
  %i.gk = load i32, ptr %i.v, align 4, !noalias !132 ; 2 uses
  %i.gl = sext i32 %i.gk to i64                   ; 2 uses
  %i.gm = load ptr, ptr %i.w, align 8, !noalias !132 ; 4 uses
  %.not.i.i7.i.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i7.i.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE41NewLookaroundMatchIndexArrayUninitializedEv.exit.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !noalias !132
  %.not5.i.i8.i.i = icmp ult i64 %i.go, %i.gl
  br i1 %.not5.i.i8.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gp = load ptr, ptr %i.gm, align 8, !noalias !132
  store ptr %i.gp, ptr %i.w, align 8, !noalias !132
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE36NewQuantifierClockArrayUninitializedEv.exit.i.i

bb.au:                                            ; preds = %bb.as, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE41NewLookaroundMatchIndexArrayUninitializedEv.exit.i.i
  %i.gq = load ptr, ptr %i.u, align 8, !noalias !132 ; 3 uses
  %i.gr = icmp sgt i32 %i.gk, -1
  br i1 %i.gr, label %bb.aw, label %bb.av, !prof !30

bb.av:                                            ; preds = %bb.au
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9, !noalias !132
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.gs = shl nuw nsw i64 %i.gl, 3                ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gu = load i64, ptr %i.gt, align 8, !noalias !132
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 3 uses
  %i.gw = load i64, ptr %i.gv, align 8, !noalias !132 ; 2 uses
  %i.gx = sub i64 %i.gu, %i.gw
  %i.gy = icmp ugt i64 %i.gs, %i.gx
  br i1 %i.gy, label %bb.ax, label %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i.i, !prof !31

bb.ax:                                            ; preds = %bb.aw
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.gq, i64 noundef %i.gs) #8, !noalias !132
  %.pre.i.i.i.i.i10.i.i = load i64, ptr %i.gv, align 8, !noalias !132
  br label %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i.i

_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i.i: ; preds = %bb.ax, %bb.aw
  %i.gz = phi i64 [ %.pre.i.i.i.i.i10.i.i, %bb.ax ], [ %i.gw, %bb.aw ] ; 2 uses
  %i.ha = inttoptr i64 %i.gz to ptr
  %i.hb = add i64 %i.gz, %i.gs
  store i64 %i.hb, ptr %i.gv, align 8, !noalias !132
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE36NewQuantifierClockArrayUninitializedEv.exit.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE36NewQuantifierClockArrayUninitializedEv.exit.i.i: ; preds = %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i.i, %bb.at
  %.0.i.i9.i.i = phi ptr [ %i.gm, %bb.at ], [ %i.ha, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i.i ] ; 3 uses
  %i.hc = load i32, ptr %i.p, align 8, !noalias !132 ; 2 uses
  %i.hd = sext i32 %i.hc to i64                   ; 2 uses
  %i.he = load ptr, ptr %i.y, align 8, !noalias !132 ; 4 uses
end_hunk_1
