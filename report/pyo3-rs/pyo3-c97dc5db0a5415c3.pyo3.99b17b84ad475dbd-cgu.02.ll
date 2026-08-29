Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3-c97dc5db0a5415c3.pyo3.99b17b84ad475dbd-cgu.02?download=true
inline.NumInlined: 155
inline.NumDeleted: 89
begin_hunk_0_@_RNSNvYNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtBc_5PyErr3newNtNtBe_10exceptions12PyValueErrorReE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTNtNtBe_6marker6PythonEE9call_once6vtableBe_:bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEEBG_(ptr nonnull %i.d) #21
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i

_RNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB7_5PyErr3newNtNtB9_10exceptions12PyValueErrorReE0B9_.exit: ; preds = %_RNvYNtNtCsdc6yCHiM2ZJ_4pyo310exceptions12PyValueErrorNtNtB6_11type_object10PyTypeInfo11type_objectB6_.exit.i
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %i.h, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB2_17PythonVersionInfo8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.split.preheader.i.i:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.c, %.lr.ph.split.preheader.i.i
  %i.c = phi i64 [ %i.q, %bb.c ], [ 0, %.lr.ph.split.preheader.i.i ] ; 6 uses
  %i.d = sub nuw i64 %2, %i.c                     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 2 uses
  %i.f = icmp samesign ult i64 %i.d, 16
  br i1 %i.f, label %.preheader.i.i.i, label %bb.a

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %2, %i.c
  br i1 %.not.i.i.i, label %.loopexit15.i.i, label %.lr.ph.i.i.i

bb.a:                                             ; preds = %.lr.ph.split.i.i
  %i.g = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef range(i64 0, -9223372036854775808) %i.d), !noalias !26 ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1
  %i.j = trunc nuw i64 %i.h to i1
  br i1 %i.j, label %.loopexit.i.i, label %.loopexit15.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.b
  %.sroa.04.011.i.i.i = phi i64 [ %i.n, %bb.b ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.04.011.i.i.i
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !32, !noalias !26, !noundef !6
  %i.m = icmp eq i8 %i.l, 46
  br i1 %i.m, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.n = add nuw nsw i64 %.sroa.04.011.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.n, %i.d
  br i1 %exitcond.not.i.i.i, label %.loopexit15.i.i, label %.lr.ph.i.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.5.0.i.i.i = phi i64 [ %i.i, %bb.a ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ] ; 4 uses
  %i.o = icmp ult i64 %.sroa.5.0.i.i.i, %i.d
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add i64 %i.c, 1
  %i.q = add i64 %i.p, %.sroa.5.0.i.i.i           ; 6 uses
  %.not12.i.i = icmp ugt i64 %i.q, %2
  %i.r = add i64 %i.c, %.sroa.5.0.i.i.i
  %or.cond.i.i.not = icmp ult i64 %i.r, %2
  br i1 %or.cond.i.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %.loopexit.i.i
  br i1 %.not12.i.i, label %.loopexit15.i.i, label %.lr.ph.split.i.i

bb.d:                                             ; preds = %.loopexit.i.i
  %i.s = add i64 %i.c, %.sroa.5.0.i.i.i           ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  %lhsc = load i8, ptr %i.t, align 1
  %i.u = icmp eq i8 %lhsc, 46
  br i1 %i.u, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.v = icmp ult i64 %2, %i.q
  br i1 %i.v, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsdc6yCHiM2ZJ_4pyo3.exit139, label %.lr.ph.split.i.i73

.lr.ph.split.i.i73:                               ; preds = %bb.e, %bb.h
  %i.w = phi i64 [ %i.ak, %bb.h ], [ %i.q, %bb.e ] ; 6 uses
  %i.x = sub nuw i64 %2, %i.w                     ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 2 uses
  %i.z = icmp samesign ult i64 %i.x, 16
  br i1 %i.z, label %.preheader.i.i.i92, label %bb.f

.preheader.i.i.i92:                               ; preds = %.lr.ph.split.i.i73
  %.not.i.i.i93 = icmp eq i64 %2, %i.w
  br i1 %.not.i.i.i93, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsdc6yCHiM2ZJ_4pyo3.exit139, label %.lr.ph.i.i.i94

bb.f:                                             ; preds = %.lr.ph.split.i.i73
  %i.aa = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef range(i64 0, -9223372036854775808) %i.x), !noalias !35 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1
  %i.ad = trunc nuw i64 %i.ab to i1
  br i1 %i.ad, label %.loopexit.i.i85, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsdc6yCHiM2ZJ_4pyo3.exit139

.lr.ph.i.i.i94:                                   ; preds = %.preheader.i.i.i92, %bb.g
  %.sroa.04.011.i.i.i95 = phi i64 [ %i.ah, %bb.g ], [ 0, %.preheader.i.i.i92 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.04.011.i.i.i95
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !41, !noalias !35, !noundef !6
  %i.ag = icmp eq i8 %i.af, 46
  br i1 %i.ag, label %.loopexit.i.i85, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i94
  %i.ah = add nuw nsw i64 %.sroa.04.011.i.i.i95, 1 ; 2 uses
  %exitcond.not.i.i.i96 = icmp eq i64 %i.ah, %i.x
  br i1 %exitcond.not.i.i.i96, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsdc6yCHiM2ZJ_4pyo3.exit139, label %.lr.ph.i.i.i94

.loopexit.i.i85:                                  ; preds = %.lr.ph.i.i.i94, %bb.f
  %.sroa.5.0.i.i.i86 = phi i64 [ %i.ac, %bb.f ], [ %.sroa.04.011.i.i.i95, %.lr.ph.i.i.i94 ] ; 4 uses
  %i.ai = icmp ult i64 %.sroa.5.0.i.i.i86, %i.x
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add i64 %i.w, 1
  %i.ak = add i64 %i.aj, %.sroa.5.0.i.i.i86       ; 4 uses
  %.not12.i.i88 = icmp ugt i64 %i.ak, %2
  %i.al = add i64 %i.w, %.sroa.5.0.i.i.i86
  %or.cond.i.i89.not = icmp ult i64 %i.al, %2
  br i1 %or.cond.i.i89.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %.loopexit.i.i85
  br i1 %.not12.i.i88, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsdc6yCHiM2ZJ_4pyo3.exit139, label %.lr.ph.split.i.i73

bb.i:                                             ; preds = %.loopexit.i.i85
  %i.am = add i64 %i.w, %.sroa.5.0.i.i.i86        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  %lhsc226 = load i8, ptr %i.an, align 1
  %i.ao = icmp eq i8 %lhsc226, 46
  br i1 %i.ao, label %._crit_edge.i147, label %bb.h

.loopexit15.i.i:                                  ; preds = %bb.c, %.preheader.i.i.i, %bb.a, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @4, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 28, ptr %i.aq, align 8
  br label %bb.r

._crit_edge.i147:                                 ; preds = %bb.i
  %i.ar = sub nuw i64 %2, %i.ak
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsdc6yCHiM2ZJ_4pyo3.exit139

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsdc6yCHiM2ZJ_4pyo3.exit139: ; preds = %bb.f, %.preheader.i.i.i92, %bb.h, %bb.g, %bb.e, %._crit_edge.i147
  %.pn = phi i64 [ %i.am, %._crit_edge.i147 ], [ %2, %bb.g ], [ %2, %bb.e ], [ %2, %bb.h ], [ %2, %.preheader.i.i.i92 ], [ %2, %bb.f ]
  %.sroa.6.0 = phi i64 [ %i.ar, %._crit_edge.i147 ], [ undef, %bb.g ], [ undef, %bb.e ], [ undef, %bb.h ], [ undef, %.preheader.i.i.i92 ], [ undef, %bb.f ]
  %.sroa.025.0 = phi ptr [ %i.as, %._crit_edge.i147 ], [ null, %bb.g ], [ null, %bb.e ], [ null, %bb.h ], [ null, %.preheader.i.i.i92 ], [ null, %bb.f ] ; 2 uses
  %.sroa.0.1.i84.pn.ph248 = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %.sroa.4.1.i83.pn.ph249 = sub nuw i64 %.pn, %i.q
  switch i64 %i.s, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsdc6yCHiM2ZJ_4pyo3.exit139
  %i.at = load i8, ptr %1, align 1, !alias.scope !44, !noundef !6 ; 2 uses
  switch i8 %i.at, label %bb.k [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsdc6yCHiM2ZJ_4pyo3.exit139
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !44
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split.i, %bb.j
  %i.au = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.at, %bb.j ]
  %cond.i = icmp eq i8 %i.au, 43                  ; 2 uses
  %i.av = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.s, %i.av         ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i150 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx.i ; 3 uses
  %i.aw = icmp samesign ult i64 %.sroa.15.0.i, 3
  br i1 %i.aw, label %.preheader.i, label %.preheader57.i.preheader

.preheader.i:                                     ; preds = %bb.k
  %.not5462.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5462.i, label %.loopexit162, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.ax = load i8, ptr %.sroa.0.0.i150, align 1, !alias.scope !44, !noundef !6
  %i.ay = zext i8 %i.ax to i32
  %i.az = add nsw i32 %i.ay, -48                  ; 2 uses
  %i.ba = icmp ugt i32 %i.az, 9
  br i1 %i.ba, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.preheader.i
  %i.bb = icmp eq i64 %.sroa.15.0.i, 1
  %i.bc = trunc nuw nsw i32 %i.az to i8           ; 2 uses
  br i1 %i.bb, label %.loopexit162, label %.lr.ph.i

.preheader57.i:                                   ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i151272, i64 1
  %i.be = add nsw i64 %.sroa.15.1.i271, -1        ; 2 uses
  %.not53.not.i = icmp eq i64 %i.be, 0
  br i1 %.not53.not.i, label %.loopexit162, label %.preheader57.i.preheader

.preheader57.i.preheader:                         ; preds = %bb.k, %.preheader57.i
  %.sroa.0.1.i151272 = phi ptr [ %i.bd, %.preheader57.i ], [ %.sroa.0.0.i150, %bb.k ] ; 2 uses
  %.sroa.15.1.i271 = phi i64 [ %i.be, %.preheader57.i ], [ %.sroa.15.0.i, %bb.k ]
  %.sroa.043.0.i270 = phi i8 [ %i.bk, %.preheader57.i ], [ 0, %bb.k ]
  %3 = tail call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %.sroa.043.0.i270, i8 10) ; 2 uses
  %4 = extractvalue { i8, i1 } %3, 1
  br i1 %4, label %.loopexit, label %bb.m, !prof !47

bb.m:                                             ; preds = %.preheader57.i.preheader
  %5 = extractvalue { i8, i1 } %3, 0              ; 2 uses
  %i.bf = load i8, ptr %.sroa.0.1.i151272, align 1, !alias.scope !44, !noundef !6
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, -48                  ; 2 uses
  %i.bi = icmp ugt i32 %i.bh, 9
  %i.bj = trunc nuw nsw i32 %i.bh to i8
  %i.bk = add i8 %5, %i.bj                        ; 3 uses
  %i.bl = icmp ult i8 %i.bk, %5
  %or.cond = select i1 %i.bi, i1 true, i1 %i.bl, !prof !48
  br i1 %or.cond, label %.loopexit, label %.preheader57.i, !prof !48

.lr.ph.i:                                         ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i150, i64 1
  %.pre = load i8, ptr %i.bm, align 1, !alias.scope !44
  %i.bn = zext i8 %.pre to i32
  %i.bo = add nsw i32 %i.bn, -48                  ; 2 uses
  %i.bp = icmp ugt i32 %i.bo, 9
  br i1 %i.bp, label %.loopexit, label %.loopexit162.loopexit.loopexit

.loopexit:                                        ; preds = %.preheader57.i.preheader, %bb.m, %.lr.ph.preheader.i, %.lr.ph.i, %bb.j, %bb.j, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsdc6yCHiM2ZJ_4pyo3.exit139
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @8, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 35, ptr %i.br, align 8
  br label %bb.r

.loopexit162.loopexit.loopexit:                   ; preds = %.lr.ph.i
  %i.bs = mul nuw nsw i8 %i.bc, 10
  %i.bt = trunc nuw nsw i32 %i.bo to i8
  %i.bu = add nuw nsw i8 %i.bs, %i.bt
  br label %.loopexit162

.loopexit162:                                     ; preds = %.preheader57.i, %bb.l, %.loopexit162.loopexit.loopexit, %.preheader.i
  %.sroa.8.0.i = phi i8 [ 0, %.preheader.i ], [ %i.bu, %.loopexit162.loopexit.loopexit ], [ %i.bc, %bb.l ], [ %i.bk, %.preheader57.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB4_17PythonVersionInfo8from_str22split_and_parse_number(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i84.pn.ph248, i64 noundef %.sroa.4.1.i83.pn.ph249)
  %i.bv = load i8, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !noundef !6 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bz = load i64, ptr %i.by, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not62 = icmp eq ptr %i.bx, null
  %.not63 = icmp eq ptr %.sroa.025.0, null        ; 2 uses
  br i1 %.not62, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.loopexit162
  br i1 %.not63, label %bb.q, label %bb.p

bb.o:                                             ; preds = %.loopexit162
  br i1 %.not63, label %bb.t, label %bb.s, !prof !4

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB4_17PythonVersionInfo8from_str22split_and_parse_number(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.025.0, i64 noundef %.sroa.6.0)
  %.sroa.3.sroa.0.0.copyload = load i8, ptr %i.a, align 8
  %.sroa.3.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3.sroa.5.0.copyload = load ptr, ptr %.sroa.3.sroa.5.0..sroa_idx, align 8
  %.sroa.3.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.3.sroa.6.0.copyload = load i64, ptr %.sroa.3.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p
  %.sroa.7.0156 = phi i64 [ %.sroa.3.sroa.6.0.copyload, %bb.p ], [ undef, %bb.n ]
  %.sroa.5152.0 = phi ptr [ %.sroa.3.sroa.5.0.copyload, %bb.p ], [ null, %bb.n ]
  %.sroa.0.0 = phi i8 [ %.sroa.3.sroa.0.0.copyload, %bb.p ], [ 0, %bb.n ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5152.0, ptr %i.ca, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0156, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.8.0.i, ptr %.sroa.546.0..sroa_idx, align 8
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.bv, ptr %.sroa.647.0..sroa_idx, align 1
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %.sroa.0.0, ptr %.sroa.748.0..sroa_idx, align 2
  br label %bb.r

bb.r:                                             ; preds = %.loopexit15.i.i, %bb.t, %.loopexit, %bb.q
  %.sink261 = phi i64 [ 0, %bb.q ], [ 1, %.loopexit ], [ 0, %bb.t ], [ 1, %.loopexit15.i.i ]
  store i64 %.sink261, ptr %0, align 8
  ret void

bb.s:                                             ; preds = %bb.o
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bx, ptr %i.cb, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bz, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.8.0.i, ptr %.sroa.540.0..sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.bv, ptr %.sroa.641.0..sroa_idx, align 1
  %.sroa.742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 0, ptr %.sroa.742.0..sroa_idx, align 2
  br label %bb.r
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo35types6stringNtB2_12PyStringData15to_string_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %1, align 8, !range !49, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 3 uses
  switch i64 %i.b, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.f
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RINvXs5_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters3map3MapINtNtNtBU_4char6decode11DecodeUtf16INtNtB22_6cloned6ClonedINtNtNtBU_5slice4iter4ItertEEENCNvMB6_Bz_16from_utf16_lossy0EECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  tail call void @_RINvXs5_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters3map3MapINtNtNtBU_5slice4iter4ItermENCNvMNtNtCsdc6yCHiM2ZJ_4pyo35types6stringNtB2V_12PyStringData15to_string_lossy0EEB2Z_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo35types6stringNtB2_12PyStringData9to_string(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 16               ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [56 x i8], align 8                ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 16 uses
  %i.m = alloca [1 x i8], align 1                 ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [56 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = load i64, ptr %1, align 8, !range !49, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !6, !noundef !6 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !6 ; 6 uses
  switch i64 %i.q, label %default.unreachable61 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable61:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.u)
  %i.v = load i64, ptr %i.p, align 8, !range !5, !noundef !6
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br i1 %i.w, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String10from_utf16(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.s, i64 noundef %i.u)
  %i.y = load i64, ptr %i.n, align 8, !range !9, !noundef !6
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %bb.j, label %bb.o

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.u
  call void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_6copied6CopiedINtNtNtB6_5slice4iter4ItermEENvMNtNtB6_4char7methodsc8from_u32EcINtNtB6_6option6OptionzENCINvXsI_B2x_IB2v_NtNtCsexYYUdYSQU6_5alloc6string6StringEINtNtNtB4_6traits7collect12FromIteratorIB2v_cEE9from_iterBQ_E0B3a_ECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %i.s, ptr noundef nonnull %i.aa)
  %i.ab = load i64, ptr %i.g, align 8, !range !9, !noundef !6
  %.not = icmp eq i64 %i.ab, -1
  br i1 %.not, label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo35types6stringNtB2_12PyStringData8as_bytes.exit60, label %bb.ap

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMNtCsdc6yCHiM2ZJ_4pyo310exceptionsNtB2_20PyUnicodeDecodeError8new_utf8(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.x)
  %i.ac = load i64, ptr %i.o, align 8, !range !5, !noundef !6
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.023.0.copyload = load ptr, ptr %i.ae, align 8 ; 2 uses
  br i1 %i.ad, label %bb.g, label %bb.h
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringNtB4_8PyString19from_encoded_object:bb.a
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.4.8.copyload = load ptr, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.8.copyload, ptr %i.k, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.44.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMs_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringNtB4_8PyString3new(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @PyUnicode_FromStringAndSize(ptr noundef nonnull %0, i64 noundef %1) #19 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b, !prof !47

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsdc6yCHiM2ZJ_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMs_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringNtB4_8PyString6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef ptr @PyUnicode_FromStringAndSize(ptr noundef nonnull %0, i64 noundef %1) #19 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @PyUnicode_InternInPlace(ptr noundef nonnull %i.a) #19
  %.pr = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.d = icmp eq ptr %.pr, null
  br i1 %i.d, label %.thread, label %bb.c, !prof !65

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.pr

.thread:                                          ; preds = %bb.a, %bb.b
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB4_17PythonVersionInfo8from_str22split_and_parse_number(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB1c_17PythonVersionInfo8from_str22split_and_parse_number0ENtB5_8Searcher4nextB1e_.exit.i.i.i, %bb.a
  %i.d = phi i64 [ %i.as, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB1c_17PythonVersionInfo8from_str22split_and_parse_number0ENtB5_8Searcher4nextB1e_.exit.i.i.i ], [ 0, %bb.a ] ; 10 uses
  %i.e = phi ptr [ %i.ao, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB1c_17PythonVersionInfo8from_str22split_and_parse_number0ENtB5_8Searcher4nextB1e_.exit.i.i.i ], [ %1, %bb.a ] ; 7 uses
  %i.f = ptrtoint ptr %i.e to i64
  %.not.not.not.not.i.not = icmp eq ptr %i.e, %i.c
  br i1 %.not.not.not.not.i.not, label %bb.h, label %bb.c, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  %i.h = load i8, ptr %i.e, align 1, !alias.scope !67, !noalias !70, !noundef !6 ; 5 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %bb.d, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit12.i.i.i.i.i.i: ; preds = %bb.c
  %i.j = and i8 %i.h, 31
  %i.k = zext nneg i8 %i.j to i32                 ; 3 uses
  %i.l = icmp ne ptr %i.g, %i.c
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 3 uses
  %i.n = load i8, ptr %i.g, align 1, !alias.scope !67, !noalias !70, !noundef !6
  %i.o = shl nuw nsw i32 %i.k, 6
  %i.p = and i8 %i.n, 63
  %i.q = zext nneg i8 %i.p to i32                 ; 2 uses
  %i.r = or disjoint i32 %i.o, %i.q
  %i.s = icmp samesign ugt i8 %i.h, -33
  br i1 %i.s, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit14.i.i.i.i.i.i, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB1c_17PythonVersionInfo8from_str22split_and_parse_number0ENtB5_8Searcher4nextB1e_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.t = zext nneg i8 %i.h to i32
  br label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB1c_17PythonVersionInfo8from_str22split_and_parse_number0ENtB5_8Searcher4nextB1e_.exit.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit12.i.i.i.i.i.i
  %i.u = icmp ne ptr %i.m, %i.c
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 3 uses
  %i.w = load i8, ptr %i.m, align 1, !alias.scope !67, !noalias !70, !noundef !6
  %i.x = shl nuw nsw i32 %i.q, 6
  %i.y = and i8 %i.w, 63
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z              ; 2 uses
  %i.ab = shl nuw nsw i32 %i.k, 12
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = icmp samesign ugt i8 %i.h, -17
  br i1 %i.ad, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit16.i.i.i.i.i.i, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB1c_17PythonVersionInfo8from_str22split_and_parse_number0ENtB5_8Searcher4nextB1e_.exit.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit14.i.i.i.i.i.i
  %i.ae = icmp ne ptr %i.v, %i.c
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ag = load i8, ptr %i.v, align 1, !alias.scope !67, !noalias !70, !noundef !6
  %i.ah = shl nuw nsw i32 %i.k, 18
  %i.ai = and i32 %i.ah, 1835008
  %i.aj = shl nuw nsw i32 %i.aa, 6
  %i.ak = and i8 %i.ag, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = or disjoint i32 %i.am, %i.ai
  br label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB1c_17PythonVersionInfo8from_str22split_and_parse_number0ENtB5_8Searcher4nextB1e_.exit.i.i.i

_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB1c_17PythonVersionInfo8from_str22split_and_parse_number0ENtB5_8Searcher4nextB1e_.exit.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit14.i.i.i.i.i.i, %bb.d, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit12.i.i.i.i.i.i
  %i.ao = phi ptr [ %i.v, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit14.i.i.i.i.i.i ], [ %i.af, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit16.i.i.i.i.i.i ], [ %i.m, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit12.i.i.i.i.i.i ], [ %i.g, %bb.d ] ; 2 uses
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.ac, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit14.i.i.i.i.i.i ], [ %i.an, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit16.i.i.i.i.i.i ], [ %i.r, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3.exit12.i.i.i.i.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.ap = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.d, %i.f
  %i.as = add i64 %i.ar, %i.aq
  %i.at = add nsw i32 %.sroa.4.0.i.ph.i.i.i.i.i, -58
  %.sroa.0.0.i.i.i.i.i.i = icmp ult i32 %i.at, -10
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %bb.e, label %bb.b

bb.e:                                             ; preds = %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB1c_17PythonVersionInfo8from_str22split_and_parse_number0ENtB5_8Searcher4nextB1e_.exit.i.i.i
  %i.au = icmp eq i64 %i.d, 0
  br i1 %i.au, label %_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit.thread37, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp ult i64 %i.d, %2
  br i1 %.not.i, label %bb.g, label %.split3.i

.split3.i:                                        ; preds = %bb.f
  %i.av = icmp eq i64 %i.d, %2
  br i1 %i.av, label %_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit, label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.ax = load i8, ptr %i.aw, align 1, !alias.scope !84, !noalias !87, !noundef !6
  %i.ay = icmp sgt i8 %i.ax, -65
  br i1 %i.ay, label %_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit, label %bb.u

bb.h:                                             ; preds = %bb.b
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.az = load i8, ptr %1, align 1, !alias.scope !89, !noundef !6 ; 2 uses
  switch i8 %i.az, label %bb.j [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.h
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !89
  br label %bb.j

bb.j:                                             ; preds = %thread-pre-split.i, %bb.i
  %i.ba = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.az, %bb.i ]
  %cond.i = icmp eq i8 %i.ba, 43                  ; 2 uses
  %i.bb = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %2, %i.bb           ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i4 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx.i ; 3 uses
  %i.bc = icmp samesign ult i64 %.sroa.15.0.i, 3
  br i1 %i.bc, label %.preheader.i, label %.preheader57.i.preheader

.preheader.i:                                     ; preds = %bb.j
  %.not5462.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5462.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit2, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.bd = load i8, ptr %.sroa.0.0.i4, align 1, !alias.scope !89, !noundef !6
  %i.be = zext i8 %i.bd to i32
  %i.bf = add nsw i32 %i.be, -48                  ; 2 uses
  %i.bg = icmp ugt i32 %i.bf, 9
  br i1 %i.bg, label %.loopexit, label %bb.k, !prof !66

bb.k:                                             ; preds = %.lr.ph.preheader.i
  %i.bh = icmp eq i64 %.sroa.15.0.i, 1
  %i.bi = trunc nuw nsw i32 %i.bf to i8           ; 2 uses
  br i1 %i.bh, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit2, label %.lr.ph.i

.preheader57.i:                                   ; preds = %bb.n
  %.not53.not.i = icmp eq i64 %i.bk, 0
  br i1 %.not53.not.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit2, label %.preheader57.i.preheader

.preheader57.i.preheader:                         ; preds = %bb.j, %.preheader57.i
  %.sroa.0.1.i116 = phi ptr [ %i.bj, %.preheader57.i ], [ %.sroa.0.0.i4, %bb.j ] ; 2 uses
  %.sroa.15.1.i115 = phi i64 [ %i.bk, %.preheader57.i ], [ %.sroa.15.0.i, %bb.j ]
  %.sroa.043.0.i114 = phi i8 [ %i.bs, %.preheader57.i ], [ 0, %bb.j ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i116, i64 1
  %i.bk = add nsw i64 %.sroa.15.1.i115, -1        ; 2 uses
  %3 = tail call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %.sroa.043.0.i114, i8 10) ; 2 uses
  %4 = extractvalue { i8, i1 } %3, 0              ; 2 uses
  %5 = extractvalue { i8, i1 } %3, 1
  %i.bl = load i8, ptr %.sroa.0.1.i116, align 1, !alias.scope !89, !noundef !6 ; 2 uses
  br i1 %5, label %bb.m, label %bb.l, !prof !47

bb.l:                                             ; preds = %.preheader57.i.preheader
  %i.bm = zext i8 %i.bl to i32
  %i.bn = add nsw i32 %i.bm, -48                  ; 2 uses
  %i.bo = icmp ult i32 %i.bn, 10
  br i1 %i.bo, label %bb.n, label %.loopexit, !prof !92

bb.m:                                             ; preds = %.preheader57.i.preheader
  %i.bp = add i8 %i.bl, -48
  %i.bq = icmp ult i8 %i.bp, 10
  %spec.select.i = select i1 %i.bq, i8 2, i8 1
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.br = trunc nuw nsw i32 %i.bn to i8
  %i.bs = add i8 %4, %i.br                        ; 3 uses
  %i.bt = icmp ult i8 %i.bs, %4
  br i1 %i.bt, label %.loopexit, label %.preheader57.i, !prof !47

.lr.ph.i:                                         ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i4, i64 1
  %.pre80 = load i8, ptr %i.bu, align 1, !alias.scope !89
  %i.bv = zext i8 %.pre80 to i32
  %i.bw = add nsw i32 %i.bv, -48                  ; 2 uses
  %i.bx = icmp ugt i32 %i.bw, 9
  br i1 %i.bx, label %.loopexit, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit2.loopexit.loopexit, !prof !66

.loopexit:                                        ; preds = %bb.l, %bb.n, %.lr.ph.preheader.i, %.lr.ph.i, %bb.i, %bb.i, %bb.m, %bb.h
  %.sroa.8.0.i3.ph = phi i8 [ %spec.select.i, %bb.m ], [ 1, %.lr.ph.preheader.i ], [ 1, %bb.i ], [ 1, %bb.i ], [ 0, %bb.h ], [ 1, %.lr.ph.i ], [ 2, %bb.n ], [ 1, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !93
  store i8 %.sroa.8.0.i3.ph, ptr %i.a, align 1, !noalias !93
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #22
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit2.loopexit.loopexit: ; preds = %.lr.ph.i
  %i.by = mul nuw nsw i8 %i.bi, 10
  %i.bz = trunc nuw nsw i32 %i.bw to i8
  %i.ca = add nuw nsw i8 %i.by, %i.bz
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit2

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit2: ; preds = %.preheader57.i, %bb.k, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit2.loopexit.loopexit, %.preheader.i
  %.sroa.8.0.i3 = phi i8 [ 0, %.preheader.i ], [ %i.ca, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit2.loopexit.loopexit ], [ %i.bi, %bb.k ], [ %i.bs, %.preheader57.i ]
  store i8 %.sroa.8.0.i3, ptr %0, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.cb, align 8
  br label %bb.o

bb.o:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit2
  ret void

_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit: ; preds = %.split3.i, %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.cd = sub i64 %2, %i.d
  %cond = icmp eq i64 %i.d, 1
  %i.ce = load i8, ptr %1, align 1, !alias.scope !96 ; 2 uses
  br i1 %cond, label %bb.p, label %thread-pre-split.i24

bb.p:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit
  switch i8 %i.ce, label %thread-pre-split.i24 [
    i8 43, label %_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit.thread37
    i8 45, label %_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit.thread37
  ]

thread-pre-split.i24:                             ; preds = %_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit, %bb.p
  %cond.i7 = icmp eq i8 %i.ce, 43                 ; 2 uses
  %i.cf = sext i1 %cond.i7 to i64
  %.sroa.15.0.i8 = add nsw i64 %i.d, %i.cf        ; 4 uses
  %.sroa.0.0.idx.i9 = zext i1 %cond.i7 to i64
  %.sroa.0.0.i10 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx.i9 ; 3 uses
  %i.cg = icmp samesign ult i64 %.sroa.15.0.i8, 3
  br i1 %i.cg, label %.preheader.i17, label %.preheader57.i11.preheader

.preheader.i17:                                   ; preds = %thread-pre-split.i24
  %.not5462.i18 = icmp eq i64 %.sroa.15.0.i8, 0
  br i1 %.not5462.i18, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit, label %.lr.ph.preheader.i19

.lr.ph.preheader.i19:                             ; preds = %.preheader.i17
  %i.ch = load i8, ptr %.sroa.0.0.i10, align 1, !alias.scope !96, !noundef !6
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -48                  ; 2 uses
  %i.ck = icmp ugt i32 %i.cj, 9
  br i1 %i.ck, label %_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit.thread37, label %bb.q

bb.q:                                             ; preds = %.lr.ph.preheader.i19
  %i.cl = icmp eq i64 %.sroa.15.0.i8, 1
  %i.cm = trunc nuw nsw i32 %i.cj to i8           ; 2 uses
  br i1 %i.cl, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit, label %.lr.ph.i20

.preheader57.i11:                                 ; preds = %bb.t
  %.not53.not.i15 = icmp eq i64 %i.co, 0
  br i1 %.not53.not.i15, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit, label %.preheader57.i11.preheader

.preheader57.i11.preheader:                       ; preds = %thread-pre-split.i24, %.preheader57.i11
  %.sroa.0.1.i14113 = phi ptr [ %i.cn, %.preheader57.i11 ], [ %.sroa.0.0.i10, %thread-pre-split.i24 ] ; 2 uses
  %.sroa.15.1.i13112 = phi i64 [ %i.co, %.preheader57.i11 ], [ %.sroa.15.0.i8, %thread-pre-split.i24 ]
  %.sroa.043.0.i12111 = phi i8 [ %i.cw, %.preheader57.i11 ], [ 0, %thread-pre-split.i24 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i14113, i64 1
  %i.co = add nsw i64 %.sroa.15.1.i13112, -1      ; 2 uses
  %6 = tail call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %.sroa.043.0.i12111, i8 10) ; 2 uses
  %7 = extractvalue { i8, i1 } %6, 0              ; 2 uses
  %8 = extractvalue { i8, i1 } %6, 1
  %i.cp = load i8, ptr %.sroa.0.1.i14113, align 1, !alias.scope !96, !noundef !6 ; 2 uses
  br i1 %8, label %bb.s, label %bb.r, !prof !47

bb.r:                                             ; preds = %.preheader57.i11.preheader
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add nsw i32 %i.cq, -48                  ; 2 uses
  %i.cs = icmp ult i32 %i.cr, 10
  br i1 %i.cs, label %bb.t, label %_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit.thread37

bb.s:                                             ; preds = %.preheader57.i11.preheader
  %i.ct = add i8 %i.cp, -48
  %i.cu = icmp ult i8 %i.ct, 10
  %spec.select.i16 = select i1 %i.cu, i8 2, i8 1
  br label %_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit.thread37

bb.t:                                             ; preds = %bb.r
  %i.cv = trunc nuw nsw i32 %i.cr to i8
  %i.cw = add i8 %7, %i.cv                        ; 3 uses
  %i.cx = icmp ult i8 %i.cw, %7
  br i1 %i.cx, label %_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit.thread37, label %.preheader57.i11, !prof !47

.lr.ph.i20:                                       ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i10, i64 1
  %.pre = load i8, ptr %i.cy, align 1, !alias.scope !96
  %i.cz = zext i8 %.pre to i32
  %i.da = add nsw i32 %i.cz, -48                  ; 2 uses
  %i.db = icmp ugt i32 %i.da, 9
  br i1 %i.db, label %_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit.thread37, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit.loopexit.loopexit

_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit.thread37: ; preds = %bb.r, %bb.t, %.lr.ph.preheader.i19, %.lr.ph.i20, %bb.e, %bb.p, %bb.p, %bb.s
  %.sroa.8.0.i5.ph = phi i8 [ %spec.select.i16, %bb.s ], [ 1, %bb.p ], [ 1, %.lr.ph.preheader.i19 ], [ 0, %bb.e ], [ 1, %bb.p ], [ 1, %.lr.ph.i20 ], [ 2, %bb.t ], [ 1, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !99
  store i8 %.sroa.8.0.i5.ph, ptr %i.b, align 1, !noalias !99
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #22
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit.loopexit.loopexit: ; preds = %.lr.ph.i20
  %i.dc = mul nuw nsw i8 %i.cm, 10
  %i.dd = trunc nuw nsw i32 %i.da to i8
  %i.de = add nuw nsw i8 %i.dc, %i.dd
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %.preheader57.i11, %bb.q, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit.loopexit.loopexit, %.preheader.i17
  %.sroa.8.0.i5 = phi i8 [ 0, %.preheader.i17 ], [ %i.de, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit.loopexit.loopexit ], [ %i.cm, %bb.q ], [ %i.cw, %.preheader57.i11 ]
  store i8 %.sroa.8.0.i5, ptr %0, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cc, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cd, ptr %i.dg, align 8
  br label %bb.o

bb.u:                                             ; preds = %bb.g, %.split3.i
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3ffi5c_str4CStrNtB6_5Debug3fmtCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXs1_NtNtCskKLDkoKarTP_4core3ffi5c_strNtB5_4CStrNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 -1, 2) i8 @_RNvXs2_NtCsdc6yCHiM2ZJ_4pyo37versionNtB5_17PythonVersionInfoINtNtCskKLDkoKarTP_4core3cmp10PartialOrdThhhEE11partial_cmp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !noundef !6  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.d = load i8, ptr %i.c, align 2, !noundef !6
  %.val12.i = load i8, ptr %1, align 1, !alias.scope !102, !noalias !105, !noundef !6 ; 2 uses
  %i.e = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %i.b, i8 %.val12.i)
  %i.f = icmp eq i8 %i.b, %.val12.i
  br i1 %i.f, label %bb.b, label %_RNvXsm_NtCskKLDkoKarTP_4core5tupleThhhENtNtB7_3cmp10PartialOrd11partial_cmpCsdc6yCHiM2ZJ_4pyo3.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.h = load i8, ptr %i.g, align 1, !noundef !6  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.val10.i = load i8, ptr %i.i, align 1, !alias.scope !102, !noalias !105, !noundef !6 ; 2 uses
  %i.j = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %i.h, i8 %.val10.i)
  %i.k = icmp eq i8 %i.h, %.val10.i
  br i1 %i.k, label %bb.c, label %_RNvXsm_NtCskKLDkoKarTP_4core5tupleThhhENtNtB7_3cmp10PartialOrd11partial_cmpCsdc6yCHiM2ZJ_4pyo3.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val8.i = load i8, ptr %i.l, align 1, !alias.scope !102, !noalias !105, !noundef !6
  %i.m = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %i.d, i8 %.val8.i)
  br label %_RNvXsm_NtCskKLDkoKarTP_4core5tupleThhhENtNtB7_3cmp10PartialOrd11partial_cmpCsdc6yCHiM2ZJ_4pyo3.exit

_RNvXsm_NtCskKLDkoKarTP_4core5tupleThhhENtNtB7_3cmp10PartialOrd11partial_cmpCsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i8 [ %i.m, %bb.c ], [ %i.j, %bb.b ], [ %i.e, %bb.a ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXs2_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std6stringcNtNtBb_10conversion12IntoPyObject13into_pyobject(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %0, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %0, 2048
  %i.d = trunc i32 %0 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %0, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %0, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %0, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %0 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !107
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !107
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !107
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %0, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !107
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !107
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !107
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !107
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !107
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !107
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !107
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ab = call noundef ptr @PyUnicode_FromStringAndSize(ptr noundef nonnull readonly %i.a, i64 noundef %.sroa.0.05.i) #19 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.h, label %_RNvMs_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringNtB4_8PyString3new.exit, !prof !47

bb.h:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #23
  unreachable

_RNvMs_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringNtB4_8PyString3new.exit: ; preds = %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.ab
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std7cstringRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtBb_10conversion12FromPyObject7extract(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RINvNvMsb_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types6string8PyStringEBa_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noundef nonnull %1)
  %i.k = load ptr, ptr %i.j, align 8, !noundef !6 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtNtCsdc6yCHiM2ZJ_4pyo33err10cast_errorNtB7_5PyErrINtNtCskKLDkoKarTP_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noundef nonnull %i.k, ptr noundef nonnull %i.m)
  store i64 1, ptr %0, align 8
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %i.o = call noundef ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.m, ptr noundef nonnull %i.i) #19 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.i, align 8, !noundef !6
  %i.r = add i64 %i.q, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs3_NtNtCskKLDkoKarTP_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.r)
  %i.s = load i64, ptr %i.g, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16
end_hunk_1
begin_hunk_2_@_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator9size_hintCsdc6yCHiM2ZJ_4pyo3(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !140
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !140
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !140
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsp_NtNtCskKLDkoKarTP_4core3ffi5c_strNtB5_21FromBytesWithNulErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 16)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBU_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtB8_4syncINtB2k_8OnceCellBP_E11get_or_initNCINvNtNtBU_4sync9once_lock26init_once_cell_py_attachedNCNvXs1_NtBU_5panicNtB42_14PanicExceptionNtNtBU_11type_object10PyTypeInfo15type_object_raw0BP_E0E0NtNvMs4_B2k_IB2v_pE11get_or_init4VoidEBU_(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBU_5types10typeobject6PyTypeEE10initializeNCINvNtNtBU_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B2g_INtB2g_10PyOnceLockBP_E6import0BP_NtNtBU_3err5PyErrE0B3S_EBU_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #8

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBU_5types3any5PyAnyEE10initializeNCINvNtNtBU_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B27_INtB27_10PyOnceLockBP_E6import0BP_NtNtBU_3err5PyErrE0B3J_EBU_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #8

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBU_5types3any5PyAnyEE10initializeNCINvNtNtBU_4sync9once_lock30try_init_once_cell_py_attachedNCNvXNtNtB1t_7weakref6anyrefNtB34_9PyWeakrefNtNtBU_11type_object11PyTypeCheck16classinfo_object0BP_NtNtBU_3err5PyErrE0B4A_EBU_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #8

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBU_5types6module8PyModuleEE10initializeNCINvNtNtBU_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs_NtNtBU_5impl_8pymoduleNtB3c_9ModuleDef11make_modules_0BP_NtNtBU_3err5PyErrE0B47_EBU_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #8

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE10initializeNCINvMs4_NtB8_4syncINtB2h_8OnceCellBP_E11get_or_initNCINvNtNtBU_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_B35_NtB35_8Interned3get0BP_E0E0NtNvMs4_B2h_IB2s_pE11get_or_init4VoidEBU_(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #8

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE10initializeNCINvMs4_NtB8_4syncINtB2h_8OnceCellBP_E11get_or_initNCINvNtNtBU_4sync9once_lock26init_once_cell_py_attachedNCNvNtNtBU_5impl_16extract_argument25argument_extraction_error0BP_E0E0NtNvMs4_B2h_IB2s_pE11get_or_init4VoidEBU_(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #8

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBU_5types8datetime10PyDateTimeEE10initializeNCINvNtNtBU_4sync9once_lock30try_init_once_cell_py_attachedNCNvNtNtNtBU_11conversions3std4time13unix_epoch_py0BP_NtNtBU_3err5PyErrE0B42_EBU_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRiNtB6_5Debug3fmtCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXNtCsdc6yCHiM2ZJ_4pyo33errNtNtCsexYYUdYSQU6_5alloc6string6StringNtB2_14PyErrArguments9argumentsB4_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXNtCsdc6yCHiM2ZJ_4pyo33errReNtB2_14PyErrArguments9argumentsB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters3map3MapINtNtNtBU_4char6decode11DecodeUtf16INtNtB22_6cloned6ClonedINtNtNtBU_5slice4iter4ItertEEENCNvMB6_Bz_16from_utf16_lossy0EECsdc6yCHiM2ZJ_4pyo3(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters3map3MapINtNtNtBU_5slice4iter4ItermENCNvMNtNtCsdc6yCHiM2ZJ_4pyo35types6stringNtB2V_12PyStringData15to_string_lossy0EEB2Z_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsdc6yCHiM2ZJ_4pyo310exceptionsNtB2_20PyUnicodeDecodeError8new_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr10from_value(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String10from_utf16(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 4611686018427387904)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdc6yCHiM2ZJ_4pyo3(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtCskKLDkoKarTP_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsdc6yCHiM2ZJ_4pyo310exceptionsNtB2_20PyUnicodeDecodeError3new(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_6copied6CopiedINtNtNtB6_5slice4iter4ItermEENvMNtNtB6_4char7methodsc8from_u32EcINtNtB6_6option6OptionzENCINvXsI_B2x_IB2v_NtNtCsexYYUdYSQU6_5alloc6string6StringEINtNtNtB4_6traits7collect12FromIteratorIB2v_cEE9from_iterBQ_E0B3a_ECsdc6yCHiM2ZJ_4pyo3(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @PyUnicode_FromStringAndSize(ptr noundef, i64 noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48)) unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @PyUnicode_FromEncodedObject(ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCsdc6yCHiM2ZJ_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare void @PyUnicode_InternInPlace(ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i8, i1 } @llvm.umul.with.overflow.i8(i8, i8) #16

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nounwind nonlazybind uwtable
declare void @_Py_Dealloc(ptr noundef) unnamed_addr #5

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXsA_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB7_2PypENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCskKLDkoKarTP_4core3ffi5c_strNtB5_4CStrNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvMsb_NtCsdc6yCHiM2ZJ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types6string8PyStringEBa_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCsdc6yCHiM2ZJ_4pyo33err10cast_errorNtB7_5PyErrINtNtCskKLDkoKarTP_4core7convert4FromNtB5_9CastErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringINtNtB9_8instance8BorrowedNtB5_8PyStringE6to_str(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtCsdc6yCHiM2ZJ_4pyo35types6stringINtNtB9_8instance8BorrowedNtB5_8PyStringE6to_cow(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCsexYYUdYSQU6_5alloc6stringNtB5_14FromUtf16ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core3ffi5c_strNtB2_21FromBytesWithNulErrorNtNtB6_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #16

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { cold }
attributes #22 = { noinline noreturn }
attributes #23 = { noreturn }
attributes #24 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!5 = !{i64 0, i64 2}
!6 = !{}
!7 = !{!"address", !"read_provenance"}
!8 = !{!"branch_weights", i32 4000000, i32 4001}
!9 = !{i64 -1, i64 -9223372036854775808}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2o_9try_trait17NeverShortCircuituEENCINvNtB1H_3map12map_try_foldmINtNtBa_6option6OptioncEuB2j_NvMNtNtBa_4char7methodsc8from_u32NCINvXB1H_INtB1H_12GenericShuntINtB3I_3MapINtB1F_6CopiedB3_EB4A_EIB48_zEEBL_8try_folduNCINvMB31_B2Y_10wrap_mut_2ucNCINvNvBL_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB7v_6StringINtNtBP_7collect6ExtendcE6extendB5h_E0E0E0B2Y_E0E0E0B2j_ECsdc6yCHiM2ZJ_4pyo3: argument 0"}
!12 = distinct !{!12, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2o_9try_trait17NeverShortCircuituEENCINvNtB1H_3map12map_try_foldmINtNtBa_6option6OptioncEuB2j_NvMNtNtBa_4char7methodsc8from_u32NCINvXB1H_INtB1H_12GenericShuntINtB3I_3MapINtB1F_6CopiedB3_EB4A_EIB48_zEEBL_8try_folduNCINvMB31_B2Y_10wrap_mut_2ucNCINvNvBL_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB7v_6StringINtNtBP_7collect6ExtendcE6extendB5h_E0E0E0B2Y_E0E0E0B2j_ECsdc6yCHiM2ZJ_4pyo3"}
!13 = !{!14, !11}
!14 = distinct !{!14, !15, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3: argument 0"}
!15 = distinct !{!15, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdc6yCHiM2ZJ_4pyo3"}
!16 = !{i64 8}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push: argument 0"}
!19 = distinct !{!19, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_RNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB7_5PyErr3newNtNtB9_10exceptions12PyValueErrorNtNtCsexYYUdYSQU6_5alloc6string6StringE0B9_: argument 0"}
!22 = distinct !{!22, !"_RNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB7_5PyErr3newNtNtB9_10exceptions12PyValueErrorNtNtCsexYYUdYSQU6_5alloc6string6StringE0B9_"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_RNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB7_5PyErr3newNtNtB9_10exceptions12PyValueErrorReE0B9_: argument 0"}
!25 = distinct !{!25, !"_RNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB7_5PyErr3newNtNtB9_10exceptions12PyValueErrorReE0B9_"}
!26 = !{!27, !29, !30}
!27 = distinct !{!27, !28, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!28 = distinct !{!28, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!29 = distinct !{!29, !28, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!30 = distinct !{!30, !31, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsdc6yCHiM2ZJ_4pyo3: argument 0"}
!31 = distinct !{!31, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsdc6yCHiM2ZJ_4pyo3"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr: argument 0"}
!34 = distinct !{!34, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr"}
!35 = !{!36, !38, !39}
!36 = distinct !{!36, !37, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!37 = distinct !{!37, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!38 = distinct !{!38, !37, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!39 = distinct !{!39, !40, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsdc6yCHiM2ZJ_4pyo3: argument 0"}
!40 = distinct !{!40, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsdc6yCHiM2ZJ_4pyo3"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr: argument 0"}
!43 = distinct !{!43, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_RNvMsx_NtCskKLDkoKarTP_4core3numh27from_ascii_bytes_radix_impl: argument 0"}
!46 = distinct !{!46, !"_RNvMsx_NtCskKLDkoKarTP_4core3numh27from_ascii_bytes_radix_impl"}
!47 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!48 = !{!"branch_weights", i32 2002, i32 2000}
!49 = !{i64 0, i64 3}
!50 = !{i8 0, i8 2}
!51 = !{!52, !54}
!52 = distinct !{!52, !53, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtB5_14FromUtf16ErrorNtB5_12SpecToString14spec_to_stringCsdc6yCHiM2ZJ_4pyo3: argument 0"}
!53 = distinct !{!53, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtB5_14FromUtf16ErrorNtB5_12SpecToString14spec_to_stringCsdc6yCHiM2ZJ_4pyo3"}
!54 = distinct !{!54, !53, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtB5_14FromUtf16ErrorNtB5_12SpecToString14spec_to_stringCsdc6yCHiM2ZJ_4pyo3: argument 1"}
!55 = !{!52}
!56 = !{!54}
!57 = !{i64 0, i64 -9223372036854775807}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCsdc6yCHiM2ZJ_4pyo3: argument 0"}
!60 = distinct !{!60, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCsdc6yCHiM2ZJ_4pyo3"}
!61 = !{i64 0, i64 -9223372036854775808}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRNtNtNtB4_3ffi5c_str4CStrNtBK_21FromBytesWithNulErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3: argument 0"}
!64 = distinct !{!64, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRNtNtNtB4_3ffi5c_str4CStrNtBK_21FromBytesWithNulErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3"}
!65 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!66 = !{!"branch_weights", i32 1073205, i32 2146410443}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_RINvMNtCskKLDkoKarTP_4core3stre4findNCNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtBF_17PythonVersionInfo8from_str22split_and_parse_number0EBH_: argument 0"}
!69 = distinct !{!69, !"_RINvMNtCskKLDkoKarTP_4core3stre4findNCNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtBF_17PythonVersionInfo8from_str22split_and_parse_number0EBH_"}
!70 = !{!71, !73, !75, !77, !78, !80, !81, !83}
!71 = distinct !{!71, !72, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdc6yCHiM2ZJ_4pyo3: argument 0"}
!72 = distinct !{!72, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdc6yCHiM2ZJ_4pyo3"}
!73 = distinct !{!73, !74, !"_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!74 = distinct !{!74, !"_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!75 = distinct !{!75, !76, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB1c_17PythonVersionInfo8from_str22split_and_parse_number0ENtB5_8Searcher4nextB1e_: argument 0"}
!76 = distinct !{!76, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB1c_17PythonVersionInfo8from_str22split_and_parse_number0ENtB5_8Searcher4nextB1e_"}
!77 = distinct !{!77, !76, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB1c_17PythonVersionInfo8from_str22split_and_parse_number0ENtB5_8Searcher4nextB1e_: argument 1"}
!78 = distinct !{!78, !79, !"_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNCNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB16_17PythonVersionInfo8from_str22split_and_parse_number0ENtB5_8Searcher10next_matchB18_: argument 0"}
!79 = distinct !{!79, !"_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNCNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB16_17PythonVersionInfo8from_str22split_and_parse_number0ENtB5_8Searcher10next_matchB18_"}
!80 = distinct !{!80, !79, !"_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNCNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB16_17PythonVersionInfo8from_str22split_and_parse_number0ENtB5_8Searcher10next_matchB18_: argument 1"}
!81 = distinct !{!81, !82, !"_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNCNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB1e_17PythonVersionInfo8from_str22split_and_parse_number0ENtB5_8Searcher10next_matchB1g_: argument 0"}
!82 = distinct !{!82, !"_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNCNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB1e_17PythonVersionInfo8from_str22split_and_parse_number0ENtB5_8Searcher10next_matchB1g_"}
!83 = distinct !{!83, !82, !"_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNCNvNvMNtCsdc6yCHiM2ZJ_4pyo37versionNtB1e_17PythonVersionInfo8from_str22split_and_parse_number0ENtB5_8Searcher10next_matchB1g_: argument 1"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked: argument 1"}
!86 = distinct !{!86, !"_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked"}
!87 = !{!88}
!88 = distinct !{!88, !86, !"_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked: argument 0"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_RNvMsx_NtCskKLDkoKarTP_4core3numh27from_ascii_bytes_radix_impl: argument 0"}
!91 = distinct !{!91, !"_RNvMsx_NtCskKLDkoKarTP_4core3numh27from_ascii_bytes_radix_impl"}
!92 = !{!"branch_weights", i32 2146410443, i32 1073205}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3: argument 0"}
!95 = distinct !{!95, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_RNvMsx_NtCskKLDkoKarTP_4core3numh27from_ascii_bytes_radix_impl: argument 0"}
!98 = distinct !{!98, !"_RNvMsx_NtCskKLDkoKarTP_4core3numh27from_ascii_bytes_radix_impl"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3: argument 0"}
!101 = distinct !{!101, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsdc6yCHiM2ZJ_4pyo3"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_RNvXsm_NtCskKLDkoKarTP_4core5tupleThhhENtNtB7_3cmp10PartialOrd11partial_cmpCsdc6yCHiM2ZJ_4pyo3: argument 1"}
!104 = distinct !{!104, !"_RNvXsm_NtCskKLDkoKarTP_4core5tupleThhhENtNtB7_3cmp10PartialOrd11partial_cmpCsdc6yCHiM2ZJ_4pyo3"}
!105 = !{!106}
!106 = distinct !{!106, !104, !"_RNvXsm_NtCskKLDkoKarTP_4core5tupleThhhENtNtB7_3cmp10PartialOrd11partial_cmpCsdc6yCHiM2ZJ_4pyo3: argument 0"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw: argument 0"}
!109 = distinct !{!109, !"_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_RNCNvXs3_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std7cstringRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtBd_10conversion12FromPyObject7extract0Bd_: argument 0"}
!112 = distinct !{!112, !"_RNCNvXs3_NtNtNtCsdc6yCHiM2ZJ_4pyo311conversions3std7cstringRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtBd_10conversion12FromPyObject7extract0Bd_"}
!113 = !{!114, !116, !111}
!114 = distinct !{!114, !115, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCskKLDkoKarTP_4core3ffi5c_str21FromBytesWithNulErrorNtB5_12SpecToString14spec_to_stringCsdc6yCHiM2ZJ_4pyo3: argument 0"}
!115 = distinct !{!115, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCskKLDkoKarTP_4core3ffi5c_str21FromBytesWithNulErrorNtB5_12SpecToString14spec_to_stringCsdc6yCHiM2ZJ_4pyo3"}
!116 = distinct !{!116, !115, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCskKLDkoKarTP_4core3ffi5c_str21FromBytesWithNulErrorNtB5_12SpecToString14spec_to_stringCsdc6yCHiM2ZJ_4pyo3: argument 1"}
!117 = !{!114, !111}
!118 = !{!119, !111}
!119 = distinct !{!119, !120, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtBM_5PyErr3newNtNtBO_10exceptions12PyValueErrorNtNtB4_6string6StringE0E3newBO_: argument 0"}
!120 = distinct !{!120, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtBM_5PyErr3newNtNtBO_10exceptions12PyValueErrorNtNtB4_6string6StringE0E3newBO_"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdc6yCHiM2ZJ_4pyo3: argument 0"}
!123 = distinct !{!123, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdc6yCHiM2ZJ_4pyo3"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdc6yCHiM2ZJ_4pyo3: argument 0"}
!126 = distinct !{!126, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdc6yCHiM2ZJ_4pyo3"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsdc6yCHiM2ZJ_4pyo3: argument 0"}
!129 = distinct !{!129, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsdc6yCHiM2ZJ_4pyo3"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push: argument 0"}
!132 = distinct !{!132, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str: argument 1"}
!135 = distinct !{!135, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str"}
!136 = !{!137, !139}
!137 = distinct !{!137, !138, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsdc6yCHiM2ZJ_4pyo3: argument 0"}
!138 = distinct !{!138, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsdc6yCHiM2ZJ_4pyo3"}
!139 = distinct !{!139, !135, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str: argument 0"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsdc6yCHiM2ZJ_4pyo3: argument 0"}
!142 = distinct !{!142, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsdc6yCHiM2ZJ_4pyo3"}
end_hunk_2
