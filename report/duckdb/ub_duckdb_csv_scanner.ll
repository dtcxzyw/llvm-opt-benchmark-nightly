Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_csv_scanner?download=true
inline.NumInlined: 6115
inline.NumDeleted: 2467
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN6duckdb11SkipScanner20FinalizeChunkProcessEv:bb.a
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.au, align 8, !tbaa !142
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !143
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !102
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #33, !inline_history !1
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !102
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #33, !inline_history !1
  br label %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i3 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i = phi i32 [ %i.ax, %bb.n ], [ %i.bh, %bb.o ]
  %i.bi = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bi, label %bb.p, label %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev.exit, !prof !145

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #33
  br label %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEaSEOS2_.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !146
  %.not = icmp eq ptr %i.bj, null
  br i1 %.not, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev.exit
  store i64 0, ptr %i.a, align 8, !tbaa !162
  %i.bk = call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bl)
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !149
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !153
  store ptr %i.bo, ptr %i.k, align 8, !tbaa !154
  call void @_ZN6duckdb11BaseScanner7ProcessINS_10SkipResultEEEvRT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.f)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !146
  %i.bp = icmp eq ptr %.pre, null
  br i1 %i.bp, label %.critedge, label %bb.b, !llvm.loop !976

.critedge:                                        ; preds = %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev.exit, %_ZNK6duckdb11BaseScanner12FinishedFileEv.exit.thread, %_ZNK6duckdb11BaseScanner12FinishedFileEv.exit, %bb.q, %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !237, !nonnull !172, !align !220
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 47
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !367
  %i.bw = icmp eq i8 %i.bv, 2
  br i1 %i.bw, label %bb.r, label %.critedge2

bb.r:                                             ; preds = %.critedge
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !214
  %i.bz = icmp eq i8 %i.by, 6
  br i1 %i.bz, label %bb.s, label %.critedge2

bb.s:                                             ; preds = %bb.r
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !162
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.a, align 8, !tbaa !162
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge, %bb.s, %bb.r
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !146
  %.not2.i4 = icmp eq ptr %i.cc, null
  br i1 %.not2.i4, label %_ZNK6duckdb11BaseScanner12FinishedFileEv.exit7, label %bb.t

bb.t:                                             ; preds = %.critedge2
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ce = call noundef ptr @_ZNK6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd)
  %i.cf = call noundef zeroext i1 @_ZNK6duckdb16CSVBufferManager4DoneEv(ptr noundef nonnull align 8 dereferenceable(257) %i.ce)
  br i1 %i.cf, label %bb.u, label %_ZNK6duckdb11BaseScanner12FinishedFileEv.exit7

bb.u:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !161
  %i.ci = call noundef ptr @_ZNK6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd)
  %i.cj = call noundef i64 @_ZNK6duckdb16CSVBufferManager11BufferCountEv(ptr noundef nonnull align 8 dereferenceable(257) %i.ci)
  %.not.i6 = icmp eq i64 %i.ch, %i.cj
  br i1 %.not.i6, label %bb.v, label %_ZNK6duckdb11BaseScanner12FinishedFileEv.exit7

bb.v:                                             ; preds = %bb.u
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !162
  %i.cl = add i64 %i.ck, 1
  %i.cm = call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !169
  %i.cp = icmp eq i64 %i.cl, %i.co
  %i.cq = zext i1 %i.cp to i8
  br label %_ZNK6duckdb11BaseScanner12FinishedFileEv.exit7

_ZNK6duckdb11BaseScanner12FinishedFileEv.exit7:   ; preds = %.critedge2, %bb.t, %bb.u, %bb.v
  %.0.i5 = phi i8 [ 0, %bb.t ], [ %i.cq, %bb.v ], [ 1, %.critedge2 ], [ 0, %bb.u ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %.0.i5, ptr %i.cr, align 8, !tbaa !170
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb11BaseScanner7ProcessINS_10SkipResultEEEvRT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 20 uses
  %i.e = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 115
  %i.g = load i8, ptr %i.f, align 1, !tbaa !257
  %i.h = icmp ne i8 %i.g, 0                       ; 2 uses
  %i.i = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 57
  %i.k = load i8, ptr %i.j, align 1, !tbaa !138, !range !171, !noundef !172
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i8, ptr %i.n, align 1, !tbaa !258, !range !171, !noundef !172
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 55
  %i.s = load i8, ptr %i.r, align 1, !tbaa !259
  %i.t = icmp eq i8 %i.s, 2
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 54
  %i.w = load i8, ptr %i.v, align 1, !tbaa !260, !range !171, !noundef !172
  %i.x = trunc nuw i8 %i.w to i1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.y = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ %i.x, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 34 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !162 ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !261, !range !171, !noundef !172
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !262 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ah = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !169
  %i.ak = icmp ugt i64 %i.af, %i.aj
  br i1 %i.ak, label %.sink.split, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.g
  %.sink = phi ptr [ %i.al, %bb.g ], [ %i.ag, %bb.f ]
  %i.am = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %.sink)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !169
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f
  %.054 = phi i64 [ %i.af, %bb.f ], [ %i.ao, %.sink.split ] ; 9 uses
  %i.ap = load i64, ptr %i.z, align 8, !tbaa !162 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %.054
  br i1 %i.aq, label %.lr.ph160, label %._crit_edge

.lr.ph160:                                        ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 7 uses
  %i.ax = add i64 %.054, -1                       ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 67 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 12 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 16 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph160, %.critedge
  %i.bi = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.bj = load ptr, ptr %i.as, align 8, !tbaa !154
  %i.bk = load i64, ptr %i.z, align 8, !tbaa !162 ; 20 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !144
  %i.bn = load i8, ptr %i.at, align 1, !tbaa !214 ; 8 uses
  store i8 %i.bn, ptr %i.ar, align 8, !tbaa !214
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !263, !nonnull !172, !align !220
  %i.bp = zext i8 %i.bm to i64
  %i.bq = getelementptr inbounds nuw [19 x i8], ptr %i.bo, i64 %i.bp
  %i.br = zext i8 %i.bn to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !214 ; 2 uses
  store i8 %i.bt, ptr %i.at, align 1, !tbaa !214
  switch i8 %i.bt, label %bb.bm [
    i8 10, label %bb.j
    i8 5, label %bb.k
    i8 6, label %bb.t
    i8 1, label %bb.ad
    i8 7, label %bb.ae
    i8 8, label %bb.as
    i8 9, label %bb.ay
    i8 17, label %bb.ay
    i8 16, label %bb.az
    i8 0, label %bb.ba
    i8 12, label %bb.bf
    i8 14, label %bb.bg
  ]

bb.j:                                             ; preds = %bb.i
  %i.bu = add i64 %i.bk, 1                        ; 2 uses
  store i64 %i.bu, ptr %i.z, align 8, !tbaa !162
  %i.bv = sub i64 %i.bu, %i.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !264
  br label %bb.bn

bb.k:                                             ; preds = %bb.i
  switch i8 %i.bn, label %bb.n [
    i8 5, label %bb.l
    i8 11, label %bb.l
    i8 6, label %bb.s
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.bx = load i64, ptr %i.bf, align 8, !tbaa !365
  %i.by = add i64 %i.bx, 1                        ; 2 uses
  store i64 %i.by, ptr %i.bf, align 8, !tbaa !365
  %i.bz = load i64, ptr %i.bg, align 8, !tbaa !366
  %.not.i.i.not = icmp ult i64 %i.by, %i.bz
  br i1 %.not.i.i.not, label %.sink.split203, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = add i64 %i.bk, 1                        ; 2 uses
  store i64 %i.ca, ptr %i.z, align 8, !tbaa !162
  %i.cb = sub i64 %i.ca, %i.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !264
  %i.cd = load i64, ptr %i.bh, align 8, !tbaa !265
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.bh, align 8, !tbaa !265
  br label %bb.bn

bb.n:                                             ; preds = %bb.k
  %i.cf = load i8, ptr %i.aw, align 1, !tbaa !215, !range !171, !noundef !172
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ch = load i8, ptr %i.av, align 8, !tbaa !99, !range !171, !noundef !172
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %_ZN6duckdb10SkipResult12UnsetCommentERS0_m.exit.thread, label %_ZN6duckdb10SkipResult12UnsetCommentERS0_m.exit

_ZN6duckdb10SkipResult12UnsetCommentERS0_m.exit.thread: ; preds = %bb.o
  store i8 0, ptr %i.aw, align 1, !tbaa !215
  store i8 0, ptr %i.av, align 8, !tbaa !99
  br label %.sink.split203

_ZN6duckdb10SkipResult12UnsetCommentERS0_m.exit:  ; preds = %bb.o
  %i.cj = load i64, ptr %i.bf, align 8, !tbaa !365
  %i.ck = add i64 %i.cj, 1                        ; 2 uses
  store i64 %i.ck, ptr %i.bf, align 8, !tbaa !365
  %i.cl = load i64, ptr %i.bg, align 8, !tbaa !366
  %.not.i.i71.not = icmp ult i64 %i.ck, %i.cl
  store i8 0, ptr %i.aw, align 1, !tbaa !215
  store i8 0, ptr %i.av, align 8, !tbaa !99
  br i1 %.not.i.i71.not, label %.sink.split203, label %bb.p

bb.p:                                             ; preds = %_ZN6duckdb10SkipResult12UnsetCommentERS0_m.exit
  %i.cm = add i64 %i.bk, 1                        ; 2 uses
  store i64 %i.cm, ptr %i.z, align 8, !tbaa !162
  %i.cn = sub i64 %i.cm, %i.aa
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !264
  %i.cp = load i64, ptr %i.bh, align 8, !tbaa !265
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %i.bh, align 8, !tbaa !265
  br label %bb.bn

bb.q:                                             ; preds = %bb.n
  %i.cr = load i64, ptr %i.bf, align 8, !tbaa !365
  %i.cs = add i64 %i.cr, 1                        ; 2 uses
  store i64 %i.cs, ptr %i.bf, align 8, !tbaa !365
  %i.ct = load i64, ptr %i.bg, align 8, !tbaa !366
  %.not.i.not = icmp ult i64 %i.cs, %i.ct
  br i1 %.not.i.not, label %.sink.split203, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = add i64 %i.bk, 1                        ; 2 uses
  store i64 %i.cu, ptr %i.z, align 8, !tbaa !162
  %i.cv = sub i64 %i.cu, %i.aa
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !264
  %i.cx = load i64, ptr %i.bh, align 8, !tbaa !265
  %i.cy = add i64 %i.cx, 1
  store i64 %i.cy, ptr %i.bh, align 8, !tbaa !265
  br label %bb.bn

.sink.split203:                                   ; preds = %_ZN6duckdb10SkipResult12UnsetCommentERS0_m.exit, %bb.q, %_ZN6duckdb10SkipResult12UnsetCommentERS0_m.exit.thread, %bb.l
  %i.cz = load i64, ptr %i.bh, align 8, !tbaa !265
  %i.da = add i64 %i.cz, 1
  store i64 %i.da, ptr %i.bh, align 8, !tbaa !265
  br label %bb.s

bb.s:                                             ; preds = %.sink.split203, %bb.k
  %i.db = add i64 %i.bk, 1                        ; 2 uses
  store i64 %i.db, ptr %i.z, align 8, !tbaa !162
  br label %.critedge

bb.t:                                             ; preds = %bb.i
  switch i8 %i.bn, label %bb.w [
    i8 5, label %bb.u
    i8 11, label %bb.u
    i8 6, label %bb.ac
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.dc = load i64, ptr %i.bf, align 8, !tbaa !365
  %i.dd = add i64 %i.dc, 1                        ; 2 uses
  store i64 %i.dd, ptr %i.bf, align 8, !tbaa !365
  %i.de = load i64, ptr %i.bg, align 8, !tbaa !366
  %.not.i.i72.not = icmp ult i64 %i.dd, %i.de
  br i1 %.not.i.i72.not, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.df = add i64 %i.bk, 1                        ; 2 uses
  store i64 %i.df, ptr %i.z, align 8, !tbaa !162
  %i.dg = sub i64 %i.df, %i.aa
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !264
  %i.di = load i64, ptr %i.bh, align 8, !tbaa !265
  %i.dj = add i64 %i.di, 1
  store i64 %i.dj, ptr %i.bh, align 8, !tbaa !265
  br label %bb.bn

bb.w:                                             ; preds = %bb.t
  %i.dk = load i8, ptr %i.aw, align 1, !tbaa !215, !range !171, !noundef !172
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dm = load i8, ptr %i.av, align 8, !tbaa !99, !range !171, !noundef !172
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %_ZN6duckdb10SkipResult12UnsetCommentERS0_m.exit75.thread, label %_ZN6duckdb10SkipResult12UnsetCommentERS0_m.exit75

_ZN6duckdb10SkipResult12UnsetCommentERS0_m.exit75.thread: ; preds = %bb.x
  store i8 0, ptr %i.aw, align 1, !tbaa !215
  store i8 0, ptr %i.av, align 8, !tbaa !99
  br label %bb.ac

_ZN6duckdb10SkipResult12UnsetCommentERS0_m.exit75: ; preds = %bb.x
  %i.do = load i64, ptr %i.bf, align 8, !tbaa !365
  %i.dp = add i64 %i.do, 1                        ; 2 uses
  store i64 %i.dp, ptr %i.bf, align 8, !tbaa !365
  %i.dq = load i64, ptr %i.bg, align 8, !tbaa !366
  %.not.i.i73.not = icmp ult i64 %i.dp, %i.dq
  store i8 0, ptr %i.aw, align 1, !tbaa !215
  store i8 0, ptr %i.av, align 8, !tbaa !99
  br i1 %.not.i.i73.not, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %_ZN6duckdb10SkipResult12UnsetCommentERS0_m.exit75
  %i.dr = add i64 %i.bk, 1                        ; 2 uses
  store i64 %i.dr, ptr %i.z, align 8, !tbaa !162
  %i.ds = sub i64 %i.dr, %i.aa
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !264
  %i.du = load i64, ptr %i.bh, align 8, !tbaa !265
  %i.dv = add i64 %i.du, 1
  store i64 %i.dv, ptr %i.bh, align 8, !tbaa !265
  br label %bb.bn

bb.z:                                             ; preds = %bb.w
  br i1 %i.y, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dw = load i64, ptr %i.bf, align 8, !tbaa !365
  %i.dx = add i64 %i.dw, 1                        ; 2 uses
  store i64 %i.dx, ptr %i.bf, align 8, !tbaa !365
  %i.dy = load i64, ptr %i.bg, align 8, !tbaa !366
  %.not.i76.not = icmp ult i64 %i.dx, %i.dy
  br i1 %.not.i76.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dz = add i64 %i.bk, 1                        ; 2 uses
  store i64 %i.dz, ptr %i.z, align 8, !tbaa !162
  %i.ea = sub i64 %i.dz, %i.aa
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !264
  %i.ec = load i64, ptr %i.bh, align 8, !tbaa !265
  %i.ed = add i64 %i.ec, 1
  store i64 %i.ed, ptr %i.bh, align 8, !tbaa !265
  br label %bb.bn

bb.ac:                                            ; preds = %_ZN6duckdb10SkipResult12UnsetCommentERS0_m.exit75.thread, %bb.t, %bb.z, %bb.aa, %_ZN6duckdb10SkipResult12UnsetCommentERS0_m.exit75, %bb.u
  %i.ee = add i64 %i.bk, 1                        ; 2 uses
  store i64 %i.ee, ptr %i.z, align 8, !tbaa !162
  %i.ef = load i64, ptr %i.bh, align 8, !tbaa !265
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr %i.bh, align 8, !tbaa !265
  br label %.critedge

bb.ad:                                            ; preds = %bb.i
  %i.eh = add i64 %i.bk, 1                        ; 2 uses
  store i64 %i.eh, ptr %i.z, align 8, !tbaa !162
  br label %.critedge

bb.ae:                                            ; preds = %bb.i
  %i.ei = icmp eq i8 %i.bn, 8
  br i1 %i.ei, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ej = icmp eq i8 %i.bn, 18
  %or.cond = and i1 %i.h, %i.ej
  br i1 %or.cond, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  br i1 %i.h, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.af, %bb.ag
  store i8 1, ptr %i.ba, align 1, !tbaa !266
  store i8 1, ptr %i.ay, align 2, !tbaa !267
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  switch i8 %i.bn, label %.thread [
    i8 9, label %bb.aj
    i8 17, label %bb.aj
    i8 16, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai, %bb.ai
  %i.ek = load i8, ptr %i.bl, align 1, !tbaa !144
  %i.el = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 113
  %i.en = load i8, ptr %i.em, align 1, !tbaa !144
  %i.eo = icmp eq i8 %i.ek, %i.en
  br i1 %i.eo, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ep = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 121
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !138, !range !171, !noundef !172
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  store i8 1, ptr %i.ba, align 1, !tbaa !266
  %i.et = load i8, ptr %i.ar, align 8, !tbaa !214
  %i.eu = icmp eq i8 %i.et, 16
  br i1 %i.eu, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  store i8 1, ptr %i.az, align 4, !tbaa !268
  br label %.thread

.thread:                                          ; preds = %bb.ag, %bb.ai, %bb.al, %bb.am, %bb.ak
  store i8 1, ptr %i.bc, align 2, !tbaa !269
  %i.ev = load i64, ptr %i.z, align 8, !tbaa !162 ; 3 uses
  %i.ew = load i8, ptr %1, align 8, !tbaa !270, !range !171, !noundef !172
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %_ZN6duckdb13ScannerResult9SetQuotedERS0_m.exit, label %bb.an

bb.an:                                            ; preds = %.thread
  store i64 %i.ev, ptr %i.bd, align 8, !tbaa !271
  br label %_ZN6duckdb13ScannerResult9SetQuotedERS0_m.exit

_ZN6duckdb13ScannerResult9SetQuotedERS0_m.exit:   ; preds = %.thread, %bb.an
  store i8 1, ptr %1, align 8, !tbaa !270
  store i8 1, ptr %i.be, align 1, !tbaa !272
  %i.ey = add i64 %i.ev, 1                        ; 2 uses
  store i64 %i.ey, ptr %i.z, align 8, !tbaa !162
  %i.ez = add i64 %i.ev, 9
  %i.fa = icmp ult i64 %i.ez, %.054
  br i1 %i.fa, label %.lr.ph154, label %.thread109

.lr.ph154:                                        ; preds = %_ZN6duckdb13ScannerResult9SetQuotedERS0_m.exit, %bb.ao
  %storemerge117153 = phi i64 [ %i.fs, %bb.ao ], [ %i.ey, %_ZN6duckdb13ScannerResult9SetQuotedERS0_m.exit ]
  %i.fb = load ptr, ptr %i.as, align 8, !tbaa !154
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %storemerge117153
  %.0.copyload.i = load i64, ptr %i.fc, align 1   ; 2 uses
  %i.fd = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !263, !nonnull !172, !align !220
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 5656
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !274
  %i.fh = xor i64 %i.fg, %.0.copyload.i
  %i.fi = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !263, !nonnull !172, !align !220
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 5664
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !275
  %i.fm = xor i64 %i.fl, %.0.copyload.i
  %i.fn = and i64 %i.fm, %i.fh                    ; 2 uses
  %i.fo = sub i64 72340172838076672, %i.fn
  %i.fp = or i64 %i.fo, %i.fn
  %i.fq = and i64 %i.fp, -9187201950435737472
  %.not118 = icmp eq i64 %i.fq, -9187201950435737472
  br i1 %.not118, label %bb.ao, label %.thread109

bb.ao:                                            ; preds = %.lr.ph154
  %i.fr = load i64, ptr %i.z, align 8, !tbaa !162 ; 2 uses
  %i.fs = add i64 %i.fr, 8                        ; 2 uses
  store i64 %i.fs, ptr %i.z, align 8, !tbaa !162
  %i.ft = add i64 %i.fr, 16
  %i.fu = icmp ult i64 %i.ft, %.054
  br i1 %i.fu, label %.lr.ph154, label %.thread109

.thread109:                                       ; preds = %bb.ao, %.lr.ph154, %_ZN6duckdb13ScannerResult9SetQuotedERS0_m.exit
  %i.fv = load ptr, ptr %i.d, align 8, !tbaa !135 ; 2 uses
  %.not.i77 = icmp eq ptr %i.fv, null
  br i1 %.not.i77, label %.noexc.i, label %_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv.exit.lr.ph, !prof !276

_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv.exit.lr.ph: ; preds = %.thread109
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !263, !nonnull !172, !align !220
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 5120 ; 2 uses
  %i.fy = load ptr, ptr %i.as, align 8, !tbaa !154 ; 2 uses
  %.promoted156 = load i64, ptr %i.z, align 8, !tbaa !162 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.promoted156
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !144
  %i.gb = zext i8 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !138, !range !171, !noundef !172
  %i.ge = trunc nuw i8 %i.gd to i1
  %i.gf = icmp ult i64 %.promoted156, %i.ax
  %or.cond66158 = and i1 %i.gf, %i.ge
  br i1 %or.cond66158, label %_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv.exit, label %.critedge

.noexc.i:                                         ; preds = %.thread109
  %i.gg = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.gh, ptr %4, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i64 49, ptr %i.c, align 8, !tbaa !137
  %i.gi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.gi, ptr %4, align 8, !tbaa !157
  %i.gj = load i64, ptr %i.c, align 8, !tbaa !137 ; 3 uses
  store i64 %i.gj, ptr %i.gh, align 8, !tbaa !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.gi, ptr noundef nonnull align 1 dereferenceable(49) @.str.50, i64 49, i1 false)
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !159
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gj
  store i8 0, ptr %i.gl, align 1, !tbaa !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.gg, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.gg, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.ar unwind label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %common.resume.sink.split

end_hunk_0
