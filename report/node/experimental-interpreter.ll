inline.NumInlined: 1567
inline.NumDeleted: 747
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16RunActiveThreadsEv:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 6 uses
  %.sroa.1136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.1.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %.sroa.1146.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.1141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.1156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE6RemoveEi.exit

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE6RemoveEi.exit: ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE6RemoveEi.exit.lr.ph, %bb.ef
  %i.al = phi i32 [ %i.c, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE6RemoveEi.exit.lr.ph ], [ %.pr, %bb.ef ]
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !128
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [56 x i8], ptr %.val.i, i64 %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.ao, i64 56, i1 false)
  store i32 %i.am, ptr %i.b, align 4, !noalias !128
  %i.ap = load i32, ptr %1, align 8               ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %.lr.ph.i6, label %._crit_edge.i, !prof !32

._crit_edge.i:                                    ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE6RemoveEi.exit, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #9
  unreachable

.lr.ph.i6:                                        ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE6RemoveEi.exit, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i
  %i.ar = phi i32 [ %i.po, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i ], [ %i.ap, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE6RemoveEi.exit ] ; 11 uses
  %i.as = load i64, ptr %i.f, align 8
  %i.at = zext nneg i32 %i.ar to i64              ; 3 uses
  %i.au = icmp ugt i64 %i.as, %i.at
  br i1 %i.au, label %bb.c, label %bb.b, !prof !30

bb.b:                                             ; preds = %.lr.ph.i6
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #9
  unreachable

bb.c:                                             ; preds = %.lr.ph.i6
  %i.av = load i64, ptr %i.g, align 8
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %i.g, align 8
  %i.ax = load i32, ptr %i.h, align 8             ; 4 uses
  %.val47.i = load i32, ptr %i.i, align 8         ; 3 uses
  %.val48.i = load ptr, ptr %i.j, align 8
  %i.ay = icmp eq i32 %i.ax, 0
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.val48.i, i64 %i.at ; 3 uses
  %.pn.in.idx.i.i = select i1 %i.ay, i64 0, i64 4
  %.pn.in.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 %.pn.in.idx.i.i
  %.pn.i.i = load i32, ptr %.pn.in.i.i, align 4
  %.0.i.i = icmp eq i32 %.pn.i.i, %.val47.i
  br i1 %.0.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull byval(%"class.v8::internal::(anonymous namespace)::NfaInterpreter<unsigned short>::InterpreterThread") align 8 %1)
  br label %bb.ef

bb.e:                                             ; preds = %bb.c
  switch i32 %i.ax, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i [
    i32 0, label %bb.f
    i32 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  store i32 %.val47.i, ptr %i.az, align 4
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 %.val47.i, ptr %i.ba, align 4
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.bb = load ptr, ptr %i.e, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.at
  %i.bd = load i64, ptr %i.bc, align 4            ; 7 uses
  %.sroa.0257.0.extract.trunc.i = trunc i64 %i.bd to i32
  %.sroa.4258.0.extract.shift.i = lshr i64 %i.bd, 32 ; 4 uses
  %.sroa.4258.0.extract.trunc.i = trunc nuw i64 %.sroa.4258.0.extract.shift.i to i32 ; 7 uses
  switch i32 %.sroa.0257.0.extract.trunc.i, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i [
    i32 3, label %bb.h
    i32 4, label %bb.h
    i32 1, label %bb.o
    i32 5, label %bb.ad
    i32 6, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.sink.split.i
    i32 0, label %bb.cq
    i32 8, label %bb.ct
    i32 2, label %bb.cu
    i32 7, label %bb.cx
    i32 9, label %bb.dc
    i32 10, label %bb.dc
    i32 11, label %bb.dc
    i32 12, label %bb.dc
    i32 13, label %bb.dd
    i32 14, label %bb.de
    i32 15, label %bb.dh
    i32 16, label %bb.di
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
  %i.cj = load i32, ptr %i.i, align 8             ; 9 uses
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
  br label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.i

bb.r:                                             ; preds = %bb.o
  %i.cm = icmp eq i32 %i.cj, 0
  br i1 %i.cm, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = sext i32 %i.cj to i64
  %i.co = getelementptr [2 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 -2
  %i.cq = load i16, ptr %i.cp, align 2
  switch i16 %i.cq, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread290.i [
    i16 8232, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i
    i16 13, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i
    i16 10, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i
    i16 8233, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i
  ]

bb.t:                                             ; preds = %bb.o
  %i.cr = icmp ult i64 %.sroa.2.0.copyload.i, 2147483648
  br i1 %i.cr, label %_ZNK2v84base6VectorIKtE6lengthEv.exit16.i.i, label %bb.u, !prof !30

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9, !inline_history !131
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit16.i.i:      ; preds = %bb.t
  %i.cs = trunc nuw nsw i64 %.sroa.2.0.copyload.i to i32
  %i.ct = icmp eq i32 %i.cj, %i.cs
  br i1 %i.ct, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i, label %bb.v

bb.v:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit16.i.i
  %i.cu = sext i32 %i.cj to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2
  switch i16 %i.cw, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread290.i [
    i16 8232, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i
    i16 13, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i
    i16 10, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i
    i16 8233, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i
  ]

.loopexit47.i.i:                                  ; preds = %bb.o
  br label %bb.w

bb.w:                                             ; preds = %.loopexit47.i.i, %bb.o
  %accumulator.tr.lcssa40.i.i = phi i1 [ false, %bb.o ], [ true, %.loopexit47.i.i ] ; 2 uses
  %i.cx = icmp ult i64 %.sroa.2.0.copyload.i, 2147483648
  br i1 %i.cx, label %_ZNK2v84base6VectorIKtE6lengthEv.exit17.i.i, label %bb.x, !prof !30

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9, !inline_history !131
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit17.i.i:      ; preds = %bb.w
  %i.cy = trunc nuw nsw i64 %.sroa.2.0.copyload.i to i32
  %i.cz = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %i.cz, label %_ZNK2v84base6VectorIKtE6lengthEv.exit17.i._ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit_crit_edge.i, label %bb.y

_ZNK2v84base6VectorIKtE6lengthEv.exit17.i._ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit_crit_edge.i: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit17.i.i
  br i1 %accumulator.tr.lcssa40.i.i, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread290.i

bb.y:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit17.i.i
  %i.da = icmp eq i32 %i.cj, 0
  br i1 %i.da, label %bb.z, label %_ZNK2v84base6VectorIKtE6lengthEv.exit18.i.i

bb.z:                                             ; preds = %bb.y
  %i.db = load i16, ptr %.sroa.0.0.copyload.i, align 2 ; 3 uses
  %i.dc = or i16 %i.db, 32
  %i.dd = add i16 %i.dc, -97
  %i.de = icmp ult i16 %i.dd, 26
  %i.df = add i16 %i.db, -48
  %i.dg = icmp ult i16 %i.df, 10
  %i.dh = or i1 %i.dg, %i.de
  %i.di = icmp eq i16 %i.db, 95
  %i.dj = or i1 %i.di, %i.dh
  br label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.i

_ZNK2v84base6VectorIKtE6lengthEv.exit18.i.i:      ; preds = %bb.y
  %i.dk = icmp eq i32 %i.cj, %i.cy
  br i1 %i.dk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit18.i.i
  %i.dl = zext nneg i32 %i.cj to i64
  %i.dm = getelementptr [2 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 -2
  %i.do = load i16, ptr %i.dn, align 2            ; 3 uses
  %i.dp = or i16 %i.do, 32
  %i.dq = add i16 %i.dp, -97
  %i.dr = icmp ult i16 %i.dq, 26
  %i.ds = add i16 %i.do, -48
  %i.dt = icmp ult i16 %i.ds, 10
  %i.du = or i1 %i.dt, %i.dr
  %i.dv = icmp eq i16 %i.do, 95
  %i.dw = or i1 %i.dv, %i.du
  br label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.i

bb.ab:                                            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit18.i.i
  %i.dx = sext i32 %i.cj to i64
  %i.dy = getelementptr [2 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.dy, i64 -2
  %i.ea = load <2 x i16>, ptr %i.dz, align 2      ; 3 uses
  %i.eb = or <2 x i16> %i.ea, splat (i16 32)
  %i.ec = add <2 x i16> %i.eb, splat (i16 -97)
  %i.ed = icmp ult <2 x i16> %i.ec, splat (i16 26)
  %i.ee = add <2 x i16> %i.ea, splat (i16 -48)
  %i.ef = icmp ult <2 x i16> %i.ee, splat (i16 10)
  %i.eg = or <2 x i1> %i.ef, %i.ed
  %i.eh = icmp eq <2 x i16> %i.ea, splat (i16 95)
  %i.ei = or <2 x i1> %i.eh, %i.eg                ; 2 uses
  %shift = shufflevector <2 x i1> %i.ei, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = xor <2 x i1> %i.ei, %shift
  %i.ej = extractelement <2 x i1> %foldExtExtBinop, i64 0
  br label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.i

bb.ac:                                            ; preds = %bb.o
  unreachable

_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.i: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i, %bb.o
  %.pn.i = phi i32 [ %i.cl, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i ], [ 0, %bb.o ]
  %i.ek = icmp eq i32 %i.cj, %.pn.i
  br i1 %i.ek, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread290.i

_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.i: ; preds = %bb.ab, %bb.aa, %bb.z
  %.0.i91.i = phi i1 [ %i.dj, %bb.z ], [ %i.dw, %bb.aa ], [ %i.ej, %bb.ab ]
  %accumulator.ret.tr.i.i = xor i1 %accumulator.tr.lcssa40.i.i, %.0.i91.i
  br i1 %accumulator.ret.tr.i.i, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i, label %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread290.i

_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread290.i: ; preds = %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.i, %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.i, %_ZNK2v84base6VectorIKtE6lengthEv.exit17.i._ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit_crit_edge.i, %bb.v, %bb.s
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull byval(%"class.v8::internal::(anonymous namespace)::NfaInterpreter<unsigned short>::InterpreterThread") align 8 %1)
  br label %bb.ef

_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.thread.i: ; preds = %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.i, %_ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit.thr_comm.i, %_ZNK2v84base6VectorIKtE6lengthEv.exit17.i._ZN2v88internal12_GLOBAL__N_118SatisfiesAssertionItEEbNS0_15RegExpAssertion4TypeENS_4base6VectorIKT_EEi.exit_crit_edge.i, %bb.v, %bb.v, %bb.v, %bb.v, %_ZNK2v84base6VectorIKtE6lengthEv.exit16.i.i, %bb.s, %bb.s, %bb.s, %bb.s, %bb.r
  %i.el = add nuw nsw i32 %i.ar, 1
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.sink.split.i

bb.ad:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE15MarkPcProcessedEiNS3_17InterpreterThread17ConsumedCharacterE.exit.i
  %i.em = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1611), align 1, !range !28, !noalias !132, !noundef !29
  %i.en = trunc nuw i8 %i.em to i1
  %i.eo = load i32, ptr %i.p, align 8, !noalias !132 ; 3 uses
  %i.ep = sext i32 %i.eo to i64                   ; 4 uses
  %i.eq = load ptr, ptr %i.r, align 8, !noalias !132 ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.eq, null         ; 2 uses
  br i1 %i.en, label %bb.ae, label %bb.bl

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not.i.i.i.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load i64, ptr %i.er, align 8, !noalias !132
  %.not5.i.i.i.i = icmp ult i64 %i.es, %i.ep
  br i1 %.not5.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.et = load ptr, ptr %i.eq, align 8, !noalias !132
  store ptr %i.et, ptr %i.r, align 8, !noalias !132
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE29NewRegisterArrayUninitializedEv.exit.i.i

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.eu = load ptr, ptr %i.q, align 8, !noalias !132 ; 3 uses
  %i.ev = icmp sgt i32 %i.eo, -1
  br i1 %i.ev, label %bb.aj, label %bb.ai, !prof !30

bb.ai:                                            ; preds = %bb.ah
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9, !noalias !132
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ew = shl nuw nsw i64 %i.ep, 2
  %i.ex = add nuw nsw i64 %i.ew, 4
  %i.ey = and i64 %i.ex, 17179869176              ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !132
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 3 uses
  %i.fc = load i64, ptr %i.fb, align 8, !noalias !132 ; 2 uses
  %i.fd = sub i64 %i.fa, %i.fc
  %i.fe = icmp ugt i64 %i.ey, %i.fd
  br i1 %i.fe, label %bb.ak, label %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i.i, !prof !31

bb.ak:                                            ; preds = %bb.aj
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.eu, i64 noundef %i.ey) #8, !noalias !132
  %.pre.i.i.i.i.i.i92.i = load i64, ptr %i.fb, align 8, !noalias !132
  br label %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i.i

_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %i.ff = phi i64 [ %.pre.i.i.i.i.i.i92.i, %bb.ak ], [ %i.fc, %bb.aj ] ; 2 uses
  %i.fg = inttoptr i64 %i.ff to ptr
  %i.fh = add i64 %i.ff, %i.ey
  store i64 %i.fh, ptr %i.fb, align 8, !noalias !132
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE29NewRegisterArrayUninitializedEv.exit.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE29NewRegisterArrayUninitializedEv.exit.i.i: ; preds = %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i.i, %bb.ag
  %.0.i.i.i.i = phi ptr [ %i.eq, %bb.ag ], [ %i.fg, %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i.i ] ; 3 uses
  %i.fi = load i8, ptr %i.k, align 8, !range !28, !noalias !132, !noundef !29
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE41NewLookaroundMatchIndexArrayUninitializedEv.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE29NewRegisterArrayUninitializedEv.exit.i.i
  %i.fk = load ptr, ptr %i.l, align 8, !noalias !132
  %i.fl = load ptr, ptr %i.m, align 8, !noalias !132
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn                    ; 2 uses
  %i.fp = ashr exact i64 %i.fo, 5                 ; 2 uses
  %i.fq = load ptr, ptr %i.t, align 8, !noalias !132 ; 4 uses
  %.not.i.i2.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i2.i.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !noalias !132
  %.not5.i.i3.i.i = icmp ult i64 %i.fs, %i.fp
  br i1 %.not5.i.i3.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ft = load ptr, ptr %i.fq, align 8, !noalias !132
  store ptr %i.ft, ptr %i.t, align 8, !noalias !132
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE41NewLookaroundMatchIndexArrayUninitializedEv.exit.i.i

bb.ao:                                            ; preds = %bb.am, %bb.al
  %i.fu = load ptr, ptr %i.s, align 8, !noalias !132 ; 3 uses
  %i.fv = icmp ult i64 %i.fp, 4611686018427387903
  br i1 %i.fv, label %bb.aq, label %bb.ap, !prof !30

bb.ap:                                            ; preds = %bb.ao
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9, !noalias !132
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.fw = ashr exact i64 %i.fo, 3
  %i.fx = add nuw nsw i64 %i.fw, 4
  %i.fy = and i64 %i.fx, -8                       ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.ga = load i64, ptr %i.fz, align 8, !noalias !132
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fu, i64 16 ; 3 uses
  %i.gc = load i64, ptr %i.gb, align 8, !noalias !132 ; 2 uses
  %i.gd = sub i64 %i.ga, %i.gc
  %i.ge = icmp ugt i64 %i.fy, %i.gd
  br i1 %i.ge, label %bb.ar, label %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i5.i.i, !prof !31

bb.ar:                                            ; preds = %bb.aq
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.fu, i64 noundef %i.fy) #8, !noalias !132
  %.pre.i.i.i.i.i6.i.i = load i64, ptr %i.gb, align 8, !noalias !132
  br label %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i5.i.i

_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i5.i.i: ; preds = %bb.ar, %bb.aq
  %i.gf = phi i64 [ %.pre.i.i.i.i.i6.i.i, %bb.ar ], [ %i.gc, %bb.aq ] ; 2 uses
  %i.gg = inttoptr i64 %i.gf to ptr
  %i.gh = add i64 %i.gf, %i.fy
  store i64 %i.gh, ptr %i.gb, align 8, !noalias !132
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE41NewLookaroundMatchIndexArrayUninitializedEv.exit.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE41NewLookaroundMatchIndexArrayUninitializedEv.exit.i.i: ; preds = %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i5.i.i, %bb.an, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE29NewRegisterArrayUninitializedEv.exit.i.i
  %i.gi = phi ptr [ null, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE29NewRegisterArrayUninitializedEv.exit.i.i ], [ %i.fq, %bb.an ], [ %i.gg, %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i5.i.i ] ; 3 uses
  %i.gj = load i32, ptr %i.v, align 4, !noalias !132 ; 2 uses
  %i.gk = sext i32 %i.gj to i64                   ; 2 uses
  %i.gl = load ptr, ptr %i.w, align 8, !noalias !132 ; 4 uses
  %.not.i.i7.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i7.i.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE41NewLookaroundMatchIndexArrayUninitializedEv.exit.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !noalias !132
  %.not5.i.i8.i.i = icmp ult i64 %i.gn, %i.gk
  br i1 %.not5.i.i8.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.go = load ptr, ptr %i.gl, align 8, !noalias !132
  store ptr %i.go, ptr %i.w, align 8, !noalias !132
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE36NewQuantifierClockArrayUninitializedEv.exit.i.i

bb.au:                                            ; preds = %bb.as, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE41NewLookaroundMatchIndexArrayUninitializedEv.exit.i.i
  %i.gp = load ptr, ptr %i.u, align 8, !noalias !132 ; 3 uses
  %i.gq = icmp sgt i32 %i.gj, -1
  br i1 %i.gq, label %bb.aw, label %bb.av, !prof !30

bb.av:                                            ; preds = %bb.au
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9, !noalias !132
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.gr = shl nuw nsw i64 %i.gk, 3                ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gt = load i64, ptr %i.gs, align 8, !noalias !132
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 3 uses
  %i.gv = load i64, ptr %i.gu, align 8, !noalias !132 ; 2 uses
  %i.gw = sub i64 %i.gt, %i.gv
  %i.gx = icmp ugt i64 %i.gr, %i.gw
  br i1 %i.gx, label %bb.ax, label %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i.i, !prof !31

bb.ax:                                            ; preds = %bb.aw
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.gp, i64 noundef %i.gr) #8, !noalias !132
  %.pre.i.i.i.i.i10.i.i = load i64, ptr %i.gu, align 8, !noalias !132
  br label %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i.i

_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i.i: ; preds = %bb.ax, %bb.aw
  %i.gy = phi i64 [ %.pre.i.i.i.i.i10.i.i, %bb.ax ], [ %i.gv, %bb.aw ] ; 2 uses
  %i.gz = inttoptr i64 %i.gy to ptr
  %i.ha = add i64 %i.gy, %i.gr
  store i64 %i.ha, ptr %i.gu, align 8, !noalias !132
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE36NewQuantifierClockArrayUninitializedEv.exit.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE36NewQuantifierClockArrayUninitializedEv.exit.i.i: ; preds = %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i.i, %bb.at
  %.0.i.i9.i.i = phi ptr [ %i.gl, %bb.at ], [ %i.gz, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i.i ] ; 3 uses
  %i.hb = load i32, ptr %i.p, align 8, !noalias !132 ; 2 uses
  %i.hc = sext i32 %i.hb to i64                   ; 2 uses
  %i.hd = load ptr, ptr %i.y, align 8, !noalias !132 ; 4 uses
  %.not.i.i11.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i11.i.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE36NewQuantifierClockArrayUninitializedEv.exit.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load i64, ptr %i.he, align 8, !noalias !132
  %.not5.i.i12.i.i = icmp ult i64 %i.hf, %i.hc
  br i1 %.not5.i.i12.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hg = load ptr, ptr %i.hd, align 8, !noalias !132
  store ptr %i.hg, ptr %i.y, align 8, !noalias !132
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE33NewCaptureClockArrayUninitializedEv.exit.i.i

bb.ba:                                            ; preds = %bb.ay, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE36NewQuantifierClockArrayUninitializedEv.exit.i.i
  %i.hh = load ptr, ptr %i.x, align 8, !noalias !132 ; 3 uses
  %i.hi = icmp sgt i32 %i.hb, -1
  br i1 %i.hi, label %bb.bc, label %bb.bb, !prof !30

bb.bb:                                            ; preds = %bb.ba
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9, !noalias !132
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.hj = shl nuw nsw i64 %i.hc, 3                ; 3 uses
end_hunk_0
