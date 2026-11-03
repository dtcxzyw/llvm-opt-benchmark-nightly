Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.12?download=true
inline.NumInlined: 1208
inline.NumDeleted: 641
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB6_8OnceCellNtNtNtCs6xJwbBeREfY_5regex5regex5bytes5RegexE10initializeNCINvMs4_NtB8_4syncINtB1T_8OnceCellBP_E11get_or_initNCNvMs9_B1T_INtB1T_4LazyBP_E5force0E0NtNvMs4_B1T_IB24_pE11get_or_init4VoidECskeugdADtBsi_12pingora_core:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.g, align 8
  call void @_RNvNtCsjCbDjdVFjRH_9once_cell3imp18initialize_or_wait(ptr noundef nonnull align 8 %i.e, ptr noundef nonnull %i.b, ptr nonnull @11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB6_8OnceCellNtNtNtCs6xJwbBeREfY_5regex5regex6string5RegexE10initializeNCINvMs4_NtB8_4syncINtB1U_8OnceCellBP_E11get_or_initNCNvMs9_B1U_INtB1U_4LazyBP_E5force0E0NtNvMs4_B1U_IB25_pE11get_or_init4VoidECskeugdADtBsi_12pingora_core(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.g, align 8
  call void @_RNvNtCsjCbDjdVFjRH_9once_cell3imp18initialize_or_wait(ptr noundef nonnull align 8 %i.e, ptr noundef nonnull %i.b, ptr nonnull @12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs3_NtCsexYYUdYSQU6_5alloc3stre7replaceReECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 16, 21) %4, ptr noalias nofree noundef nonnull readonly captures(none) %5, i64 noundef range(i64 16, 21) %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [104 x i8], align 8               ; 4 uses
  %i.d = alloca [104 x i8], align 8               ; 14 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %.not = icmp samesign ugt i64 %4, %6
  %spec.select = select i1 %.not, i64 0, i64 %2   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.b, align 8, !range !16, !noundef !10
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !17, !noundef !10 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #33
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !10, !noundef !10
  %i.m = icmp ule i64 %spec.select, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.i, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 10 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMsu_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern13into_searcher.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern13into_searcher.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.c, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.noexc34, %_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern13into_searcher.exit
  %.sroa.04.0 = phi i64 [ 0, %_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern13into_searcher.exit ], [ %.sroa.14.458, %.noexc34 ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.y = load i64, ptr %i.d, align 8, !range !11, !alias.scope !343, !noundef !10
  switch i64 %i.y, label %.unreachabledefault [
    i64 0, label %.preheader.i
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

.unreachabledefault:                              ; preds = %bb.c
  unreachable

default.unreachable:                              ; preds = %.noexc
  unreachable

.preheader.i:                                     ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !344
  invoke fastcc void @_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.d) #30
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.preheader.i
  %i.z = load i64, ptr %i.a, align 8, !range !11, !noalias !344, !noundef !10
  switch i64 %i.z, label %default.unreachable [
    i64 0, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread60
    i64 1, label %bb.f
    i64 2, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.aa = load i64, ptr %i.q, align 8, !alias.scope !343, !noundef !10 ; 2 uses
  %i.ab = load i64, ptr %i.n, align 8, !alias.scope !343, !noundef !10 ; 4 uses
  %.not.i = icmp ult i64 %i.ab, %i.aa
  br i1 %.not.i, label %bb.g, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.ac = load i64, ptr %i.o, align 8, !alias.scope !343, !noundef !10 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, -1
  %i.ae = load ptr, ptr %i.p, align 8, !alias.scope !343, !nonnull !10, !noundef !10 ; 6 uses
  %i.af = load i64, ptr %i.q, align 8, !alias.scope !343, !noundef !10 ; 8 uses
  %i.ag = load ptr, ptr %i.r, align 8, !alias.scope !343, !nonnull !10, !noundef !10 ; 4 uses
  %i.ah = load i64, ptr %i.s, align 8, !alias.scope !343, !noundef !10 ; 13 uses
  %i.ai = add nsw i64 %i.ah, -1                   ; 4 uses
  br i1 %i.ad, label %bb.r, label %bb.j

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread60: ; preds = %.noexc
  %i.aj = load i64, ptr %i.w, align 8, !noalias !344, !noundef !10
  %i.ak = load i64, ptr %i.x, align 8, !noalias !344, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !344
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread54

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !344
  br label %.preheader.i

bb.g:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.p, align 8, !alias.scope !343, !nonnull !10, !noundef !10
  %i.am = load i8, ptr %i.v, align 8, !alias.scope !343, !noundef !10 ; 2 uses
  %i.an = sub nuw i64 %i.aa, %i.ab                ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ab ; 2 uses
  %i.ap = icmp samesign ult i64 %i.an, 16
  br i1 %i.ap, label %.lr.ph.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = invoke { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef range(i64 0, -9223372036854775808) %i.an)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc23:                                         ; preds = %bb.h
  %i.ar = extractvalue { i64, i64 } %i.aq, 0
  %i.as = extractvalue { i64, i64 } %i.aq, 1
  %i.at = trunc nuw i64 %i.ar to i1
  br i1 %i.at, label %.loopexit18.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.i
  %.sroa.04.011.i.i = phi i64 [ %i.ax, %bb.i ], [ 0, %bb.g ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.04.011.i.i
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !345, !noalias !344, !noundef !10
  %i.aw = icmp eq i8 %i.av, %i.am
  br i1 %i.aw, label %.loopexit18.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ax = add nuw nsw i64 %.sroa.04.011.i.i, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ax, %i.an
  br i1 %exitcond.not.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread, label %.lr.ph.i.i

.loopexit18.i:                                    ; preds = %.lr.ph.i.i, %.noexc23
  %.sroa.5.0.i.i = phi i64 [ %i.as, %.noexc23 ], [ %.sroa.04.011.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.ay = icmp ult i64 %.sroa.5.0.i.i, %i.an
  call void @llvm.assume(i1 %i.ay)
  %i.az = add i64 %.sroa.5.0.i.i, %i.ab           ; 2 uses
  %i.ba = add i64 %i.az, 1                        ; 2 uses
  store i64 %i.ba, ptr %i.n, align 8, !alias.scope !343
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread54

bb.j:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %.promoted.i.i = load i64, ptr %i.t, align 8, !alias.scope !349 ; 2 uses
  %i.bb = add i64 %.promoted.i.i, %i.ai           ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.af
  br i1 %i.bc, label %.lr.ph.i4.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread

.lr.ph.i4.i:                                      ; preds = %bb.j
  %i.bd = load i64, ptr %i.u, align 8, !alias.scope !349, !noundef !10
  %i.be = load i64, ptr %i.n, align 8, !alias.scope !349
  %.fr60.i.i = freeze i64 %i.be                   ; 4 uses
  %i.bf = load i64, ptr %i.v, align 8, !alias.scope !349 ; 2 uses
  %i.bg = sub i64 %i.ah, %i.bf
  %invariant.op = sub i64 1, %.fr60.i.i
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.m, %.lr.ph.i4.i
  %.sink70.i.i130 = phi i64 [ %.sink70.i.i, %bb.m ], [ %i.ac, %.lr.ph.i4.i ] ; 3 uses
  %.sink71.i.i125 = phi i64 [ %.sink71.i.i, %bb.m ], [ %.promoted.i.i, %.lr.ph.i4.i ] ; 7 uses
  %i.bh = phi i64 [ %i.bq, %bb.m ], [ %i.bb, %.lr.ph.i4.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !347, !noalias !344, !noundef !10
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bm, %i.bd
  %.not.i5.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i5.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.i.i
  %i.bo = add i64 %.sink71.i.i125, %i.ah
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.split.i.i
  %..i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sink70.i.i130, i64 %.fr60.i.i) ; 2 uses
  %i.bp = icmp ult i64 %..i.i.i, %i.ah
  br i1 %i.bp, label %.lr.ph, label %.preheader36.i.i.preheader

bb.m:                                             ; preds = %bb.q, %bb.p, %bb.k
  %.sink71.i.i = phi i64 [ %i.cm, %bb.q ], [ %i.cl, %bb.p ], [ %i.bo, %bb.k ] ; 2 uses
  %.sink70.i.i = phi i64 [ 0, %bb.q ], [ %i.bg, %bb.p ], [ 0, %bb.k ]
  %i.bq = add i64 %.sink71.i.i, %i.ai             ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.af
  br i1 %i.br, label %.lr.ph.split.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread

bb.n:                                             ; preds = %.lr.ph
  %i.bs = add nuw nsw i64 %.sroa.04.0.i.i283, 1   ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.ah
  br i1 %i.bt, label %.lr.ph, label %.preheader36.i.i.preheader

.preheader36.i.i.preheader:                       ; preds = %bb.n, %bb.l
  %i.bu = icmp ult i64 %.sink70.i.i130, %.fr60.i.i
  br i1 %i.bu, label %.lr.ph285, label %.split.us.i.i

.lr.ph:                                           ; preds = %bb.l, %bb.n
  %.sroa.04.0.i.i283 = phi i64 [ %i.bs, %bb.n ], [ %..i.i.i, %bb.l ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.04.0.i.i283
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !348, !noalias !344, !noundef !10
  %i.bx = add i64 %.sroa.04.0.i.i283, %.sink71.i.i125 ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.af
  call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !347, !noalias !344, !noundef !10
  %.not21.i.i = icmp eq i8 %i.bw, %i.ca
  br i1 %.not21.i.i, label %bb.n, label %bb.q

.preheader36.i.i:                                 ; preds = %bb.o
  %i.cb = icmp ult i64 %.sink70.i.i130, %i.cd
  br i1 %i.cb, label %.lr.ph285, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %i.cc = add i64 %.sink71.i.i125, %i.ah          ; 2 uses
  store i64 %i.cc, ptr %i.t, align 8, !alias.scope !349
  store i64 0, ptr %i.o, align 8, !alias.scope !349
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread54

.lr.ph285:                                        ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %.sroa.2.0.i.i284 = phi i64 [ %i.cd, %.preheader36.i.i ], [ %.fr60.i.i, %.preheader36.i.i.preheader ]
  %i.cd = add i64 %.sroa.2.0.i.i284, -1           ; 6 uses
  %i.ce = icmp ult i64 %i.cd, %i.ah
  br i1 %i.ce, label %bb.o, label %.split32.us.i13.i.invoke

bb.o:                                             ; preds = %.lr.ph285
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.cd
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !348, !noalias !344, !noundef !10
  %i.ch = add i64 %i.cd, %.sink71.i.i125          ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.af
  call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ch
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !347, !noalias !344, !noundef !10
  %.not20.i.i = icmp eq i8 %i.cg, %i.ck
  br i1 %.not20.i.i, label %.preheader36.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = add i64 %.sink71.i.i125, %i.bf
  br label %bb.m

bb.q:                                             ; preds = %.lr.ph
  %.reass.i.reass.reass = add i64 %.sink71.i.i125, %invariant.op
  %i.cm = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i283
  br label %bb.m

bb.r:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %.promoted.i6.i = load i64, ptr %i.t, align 8, !alias.scope !353 ; 2 uses
  %i.cn = add i64 %.promoted.i6.i, %i.ai          ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.af
  br i1 %i.co, label %.lr.ph.i9.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread

.lr.ph.i9.i:                                      ; preds = %bb.r
  %i.cp = load i64, ptr %i.u, align 8, !alias.scope !353, !noundef !10
  %i.cq = load i64, ptr %i.n, align 8, !alias.scope !353
  %.fr35.i = freeze i64 %i.cq                     ; 7 uses
  %i.cr = load i64, ptr %i.v, align 8, !alias.scope !353
  %umax.i.i = call i64 @llvm.umax.i64(i64 %.fr35.i, i64 range(i64 0, -9223372036854775808) %i.ah)
  %i.cs = add i64 %.fr35.i, -1                    ; 2 uses
  %.first_iter.i.i = icmp ult i64 %i.cs, %i.ah
  %exitcond.not.i10.i287.not = icmp ult i64 %.fr35.i, %i.ah
  %invariant.op368 = sub i64 1, %.fr35.i
  %.not34.i.us.i290 = icmp eq i64 %.fr35.i, 0     ; 2 uses
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.u, %.lr.ph.i9.i
  %.sink.i.i135 = phi i64 [ %.sink.i.i, %bb.u ], [ %.promoted.i6.i, %.lr.ph.i9.i ] ; 7 uses
  %i.ct = phi i64 [ %i.dr, %bb.u ], [ %i.cn, %.lr.ph.i9.i ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !351, !noalias !344, !noundef !10
  %i.cw = and i8 %i.cv, 63
  %i.cx = zext nneg i8 %i.cw to i64
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cy, %i.cp
  %.not.us.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not.us.i.i, label %bb.t, label %.preheader35.i.i.preheader

.preheader35.i.i.preheader:                       ; preds = %.lr.ph.split.us.i.i
  br i1 %exitcond.not.i10.i287.not, label %.lr.ph289, label %.preheader.i11.preheader.i

.preheader35.i.i:                                 ; preds = %.lr.ph289
  %i.da = add i64 %.sroa.04.0.us.i.i288, 1        ; 2 uses
  %exitcond.not.i10.i = icmp eq i64 %i.da, %umax.i.i
  br i1 %exitcond.not.i10.i, label %.preheader.i11.preheader.i, label %.lr.ph289

.preheader.i11.preheader.i:                       ; preds = %.preheader35.i.i, %.preheader35.i.i.preheader
  br i1 %.first_iter.i.i, label %.preheader.i11.us.i.preheader, label %.preheader.split.i.i

.preheader.i11.us.i.preheader:                    ; preds = %.preheader.i11.preheader.i
  br i1 %.not34.i.us.i290, label %.split.us.i13.i, label %.lr.ph292

.preheader.i11.us.i:                              ; preds = %.lr.ph292
  %.not34.i.us.i = icmp eq i64 %i.db, 0
  br i1 %.not34.i.us.i, label %.split.us.i13.i, label %.lr.ph292

.lr.ph292:                                        ; preds = %.preheader.i11.us.i.preheader, %.preheader.i11.us.i
  %.sroa.2.0.us.i.us.i291 = phi i64 [ %i.db, %.preheader.i11.us.i ], [ %.fr35.i, %.preheader.i11.us.i.preheader ]
  %i.db = add i64 %.sroa.2.0.us.i.us.i291, -1     ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !352, !noalias !344, !noundef !10
  %i.de = add i64 %i.db, %.sink.i.i135            ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.af
  call void @llvm.assume(i1 %i.df)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.de
  %i.dh = load i8, ptr %i.dg, align 1, !alias.scope !351, !noalias !344, !noundef !10
  %.not20.us.i.us.i = icmp eq i8 %i.dd, %i.dh
  br i1 %.not20.us.i.us.i, label %.preheader.i11.us.i, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph292
  %i.di = add i64 %.sink.i.i135, %i.cr
  br label %bb.u

.preheader.split.i.i:                             ; preds = %.preheader.i11.preheader.i
  br i1 %.not34.i.us.i290, label %.split.us.i13.i, label %.split32.us.i13.i.invoke

.lr.ph289:                                        ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.sroa.04.0.us.i.i288 = phi i64 [ %i.da, %.preheader35.i.i ], [ %.fr35.i, %.preheader35.i.i.preheader ] ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.04.0.us.i.i288
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !352, !noalias !344, !noundef !10
  %i.dl = add i64 %.sroa.04.0.us.i.i288, %.sink.i.i135 ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.af
  call void @llvm.assume(i1 %i.dm)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.dl
  %i.do = load i8, ptr %i.dn, align 1, !alias.scope !351, !noalias !344, !noundef !10
  %.not21.us.i.i = icmp eq i8 %i.dk, %i.do
  br i1 %.not21.us.i.i, label %.preheader35.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph289
  %.reass74.i.reass.reass = add i64 %.sink.i.i135, %invariant.op368
  %i.dp = add i64 %.reass74.i.reass.reass, %.sroa.04.0.us.i.i288
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.us.i.i
  %i.dq = add i64 %.sink.i.i135, %i.ah
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.split.us.i
  %.sink.i.i = phi i64 [ %i.dq, %bb.t ], [ %i.dp, %bb.s ], [ %i.di, %.split.us.i ] ; 2 uses
  %i.dr = add i64 %.sink.i.i, %i.ai               ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.af
  br i1 %i.ds, label %.lr.ph.split.us.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread

.split.us.i13.i:                                  ; preds = %.preheader.i11.us.i.preheader, %.preheader.i11.us.i, %.preheader.split.i.i
  %i.dt = add i64 %.sink.i.i135, %i.ah            ; 2 uses
  store i64 %i.dt, ptr %i.t, align 8, !alias.scope !353
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread54

.split32.us.i13.i.invoke:                         ; preds = %.preheader.split.i.i, %.lr.ph285
  %7 = phi i64 [ %i.cd, %.lr.ph285 ], [ %i.cs, %.preheader.split.i.i ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %7, i64 noundef range(i64 0, -9223372036854775808) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #35
          to label %.split32.us.i13.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split32.us.i13.i.cont:                           ; preds = %.split32.us.i13.i.invoke
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.y, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread54, %bb.h, %.split32.us.i13.i.invoke, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit
  %lpad.loopexit.split-lp302 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #31
          to label %bb.aa unwind label %bb.z

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !344
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread: ; preds = %bb.d, %bb.r, %bb.j, %.noexc23, %bb.m, %bb.u, %bb.i, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0
  %gepdiff = sub nuw nsw i64 %2, %.sroa.04.0      ; 3 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %gepdiff)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc27:                                         ; preds = %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread
  %i.dv = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !354, !noundef !10 ; 3 uses
  %i.dw = icmp sgt i64 %i.dv, -1
  call void @llvm.assume(i1 %i.dw)
  %.not.i26 = icmp eq i64 %2, %.sroa.04.0
  br i1 %.not.i26, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.noexc27
  %i.dx = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !354, !nonnull !10, !noundef !10
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dy, ptr nonnull readonly align 1 %i.du, i64 %gepdiff, i1 false)
  %.pre.i = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !354
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.noexc27
  %i.dz = phi i64 [ %.pre.i, %bb.v ], [ %i.dv, %.noexc27 ]
  %i.ea = add i64 %i.dz, %gepdiff
  store i64 %i.ea, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread54: ; preds = %.split.us.i.i, %.loopexit18.i, %.split.us.i13.i, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread60
  %.sroa.9.459 = phi i64 [ %i.aj, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread60 ], [ %.sink71.i.i125, %.split.us.i.i ], [ %.sink.i.i135, %.split.us.i13.i ], [ %i.az, %.loopexit18.i ] ; 2 uses
  %.sroa.14.458 = phi i64 [ %i.ak, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread60 ], [ %i.cc, %.split.us.i.i ], [ %i.dt, %.split.us.i13.i ], [ %i.ba, %.loopexit18.i ]
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0
  %gepdiff64 = sub nuw nsw i64 %.sroa.9.459, %.sroa.04.0 ; 3 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %gepdiff64)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc30:                                         ; preds = %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread54
  %i.ec = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !355, !noundef !10 ; 3 uses
  %i.ed = icmp sgt i64 %i.ec, -1
  call void @llvm.assume(i1 %i.ed)
  %.not.i28 = icmp eq i64 %.sroa.9.459, %.sroa.04.0
  br i1 %.not.i28, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.noexc30
  %i.ee = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !355, !nonnull !10, !noundef !10
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ec
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ef, ptr nonnull readonly align 1 %i.eb, i64 %gepdiff64, i1 false)
  %.pre.i29 = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !355
  br label %bb.y

bb.y:                                             ; preds = %.noexc30, %bb.x
  %i.eg = phi i64 [ %.pre.i29, %bb.x ], [ %i.ec, %.noexc30 ]
  %i.eh = add i64 %i.eg, %gepdiff64
  store i64 %i.eh, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !355
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %6)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %bb.y
  %i.ei = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !356, !noundef !10 ; 2 uses
  %i.ej = icmp sgt i64 %i.ei, -1
  call void @llvm.assume(i1 %i.ej)
  %i.ek = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !356, !nonnull !10, !noundef !10
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.el, ptr noundef nonnull readonly align 1 dereferenceable(1) %5, i64 %6, i1 false)
  %.pre.i33 = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !356
  %i.em = add i64 %.pre.i33, %6
  store i64 %i.em, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !356
  br label %bb.c

bb.z:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.aa:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp302
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtCs84JG9zk80ZV_4http8responseNtB6_7Builder4bodyINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) initializes((0, 10)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 9
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.b = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.5.0.copyload, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.6.0.copyload, ptr %i.d, align 1
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtCs84JG9zk80ZV_4http8responseNtBK_7Builder4bodyINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0ECskeugdADtBsi_12pingora_core.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECskeugdADtBsi_12pingora_core.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtCs84JG9zk80ZV_4http8responseNtBK_7Builder4bodyINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0ECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(102) %.sroa.613.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(102) %.sroa.7.0..sroa_idx, i64 102, i1 false)
  %.sroa.714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.714.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.5.0.copyload, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.6.0.copyload, ptr %.sroa.512.0..sroa_idx, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtCs84JG9zk80ZV_4http8responseNtBK_7Builder4bodyINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0ECskeugdADtBsi_12pingora_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtCs84JG9zk80ZV_4http8responseNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameReECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [112 x i8], align 8               ; 11 uses
  %.sroa.9.i = alloca [103 x i8], align 1         ; 5 uses
  %.sroa.6.16.copyload = load ptr, ptr %2, align 8 ; 7 uses
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.8.16.copyload = load ptr, ptr %.sroa.8.16..sroa_idx, align 8 ; 4 uses
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.9.16.copyload = load i64, ptr %.sroa.9.16..sroa_idx, align 8 ; 4 uses
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.10.16.copyload = load ptr, ptr %.sroa.10.16..sroa_idx, align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !407 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.0.copyload.i = load i8, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !407 ; 3 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(103) %.sroa.9.i, ptr noundef nonnull readonly align 1 dereferenceable(103) %.sroa.9.0..sroa_idx.i, i64 103, i1 false), !noalias !408
  %i.e = icmp eq i64 %.sroa.0.0.copyload.i, -1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %.sroa.6.16.copyload, null
  br i1 %i.f, label %_RINvMs4_NtCs84JG9zk80ZV_4http8responseNtB6_7Builder8and_thenNCINvB2_6headerNtNtNtB8_6header4name10HeaderNameReE0ECskeugdADtBsi_12pingora_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.6.16.copyload, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !409, !nonnull !10, !noundef !10
  tail call void %i.h(ptr noundef %.sroa.10.16.copyload, ptr noundef %.sroa.8.16.copyload, i64 noundef %.sroa.9.16.copyload), !noalias !409, !inline_history !375
  br label %_RINvMs4_NtCs84JG9zk80ZV_4http8responseNtB6_7Builder8and_thenNCINvB2_6headerNtNtNtB8_6header4name10HeaderNameReE0ECskeugdADtBsi_12pingora_core.exit

bb.d:                                             ; preds = %bb.a
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(103) %.sroa.525.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(103) %.sroa.9.0..sroa_idx.i, i64 103, i1 false), !noalias !408
  store i64 %.sroa.0.0.copyload.i, ptr %i.d, align 8, !noalias !410
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i8 %.sroa.7.0.copyload.i, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !410
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !413
  invoke void @_RINvMNtNtCs84JG9zk80ZV_4http6header5valueNtB3_11HeaderValue16try_from_genericReNCNvB2_8from_str0ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %_RNvXs3_NtCskKLDkoKarTP_4core7convertReINtB5_7TryIntoNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueE8try_intoCskeugdADtBsi_12pingora_core.exit.i.i unwind label %bb.p, !noalias !413

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit42.i.i: ; preds = %bb.q, %bb.p, %bb.e
end_hunk_0
begin_hunk_1_@_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next:bb.a
  %i.t = xor i8 %i.r, 1
  store i8 %i.t, ptr %i.q, align 8
  %i.u = load i64, ptr %i.b, align 8, !noundef !10 ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.y = load i64, ptr %i.x, align 8, !noundef !10 ; 8 uses
  %i.z = icmp eq i64 %i.u, 0
  br i1 %i.z, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp ult i64 %i.u, %i.y
  br i1 %.not.i, label %bb.g, label %.split.i

.split.i:                                         ; preds = %bb.f
  %i.aa = icmp eq i64 %i.u, %i.y
  br i1 %i.aa, label %bb.h, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !2607, !noundef !10
  %i.ad = icmp sgt i8 %i.ac, -65
  br i1 %i.ad, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g, %.split.i, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u ; 4 uses
  %i.af = icmp samesign eq i64 %i.u, %i.y
  br i1 %i.af, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i8, ptr %i.ae, align 1, !noalias !2608, !noundef !10 ; 5 uses
  %i.ah = icmp sgt i8 %i.ag, -1
  br i1 %i.ah, label %bb.j, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit12.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit12.i: ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.aj = and i8 %i.ag, 31
  %i.ak = zext nneg i8 %i.aj to i32               ; 3 uses
  %i.al = add nuw nsw i64 %i.u, 1
  %i.am = icmp samesign ne i64 %i.al, %i.y
  tail call void @llvm.assume(i1 %i.am)
  %i.an = load i8, ptr %i.ai, align 1, !noalias !2608, !noundef !10
  %i.ao = shl nuw nsw i32 %i.ak, 6
  %i.ap = and i8 %i.an, 63
  %i.aq = zext nneg i8 %i.ap to i32               ; 2 uses
  %i.ar = or disjoint i32 %i.ao, %i.aq
  %i.as = icmp samesign ugt i8 %i.ag, -33
  br i1 %i.as, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit14.i, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.at = zext nneg i8 %i.ag to i32
  br label %bb.l

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit14.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit12.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.av = add nuw nsw i64 %i.u, 2
  %i.aw = icmp samesign ne i64 %i.av, %i.y
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = load i8, ptr %i.au, align 1, !noalias !2608, !noundef !10
  %i.ay = shl nuw nsw i32 %i.aq, 6
  %i.az = and i8 %i.ax, 63
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ay, %i.ba            ; 2 uses
  %i.bc = shl nuw nsw i32 %i.ak, 12
  %i.bd = or disjoint i32 %i.bb, %i.bc
  %i.be = icmp samesign ugt i8 %i.ag, -17
  br i1 %i.be, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit16.i, label %bb.l

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit16.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit14.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.bg = add nuw nsw i64 %i.u, 3
  %i.bh = icmp samesign ne i64 %i.bg, %i.y
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = load i8, ptr %i.bf, align 1, !noalias !2608, !noundef !10
  %i.bj = shl nuw nsw i32 %i.ak, 18
  %i.bk = and i32 %i.bj, 1835008
  %i.bl = shl nuw nsw i32 %i.bb, 6
  %i.bm = and i8 %i.bi, 63
  %i.bn = zext nneg i8 %i.bm to i32
  %i.bo = or disjoint i32 %i.bl, %i.bn
  %i.bp = or disjoint i32 %i.bo, %i.bk
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %.split.i
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.y, i64 noundef %i.u, i64 noundef %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #35
  unreachable

bb.l:                                             ; preds = %bb.j, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit12.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit16.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.bd, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit14.i ], [ %i.bp, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit16.i ], [ %i.ar, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit12.i ], [ %i.at, %bb.j ] ; 4 uses
  %i.bq = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.bq)
  br i1 %i.s, label %bb.o, label %bb.p

bb.m:                                             ; preds = %bb.h
  br i1 %i.s, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %i.c, align 2
  br label %bb.t

bb.o:                                             ; preds = %bb.l, %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.u, ptr %i.bs, align 8
  br label %bb.t

bb.p:                                             ; preds = %bb.l
  %i.bt = icmp samesign ult i32 %.sroa.4.0.i.ph, 128
  br i1 %i.bt, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048
  br i1 %i.bu, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536
  %. = select i1 %i.bv, i64 3, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %.sroa.01.0 = phi i64 [ 2, %bb.q ], [ %., %bb.r ], [ 1, %bb.p ]
  %i.bw = add i64 %.sroa.01.0, %i.u               ; 2 uses
  store i64 %i.bw, ptr %i.b, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bw, ptr %i.by, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %bb.d, %bb.c, %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECskeugdADtBsi_12pingora_core.exit, %bb.n, %bb.o, %bb.s, %.loopexit59, %bb.w, %.loopexit
  %.sink = phi i64 [ 0, %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECskeugdADtBsi_12pingora_core.exit ], [ 2, %bb.n ], [ 0, %bb.o ], [ 1, %bb.s ], [ 1, %.loopexit59 ], [ 0, %bb.w ], [ 1, %.loopexit ], [ 2, %bb.c ], [ 2, %bb.d ], [ 2, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.u:                                             ; preds = %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k
  %i.ca = load i8, ptr %i.bz, align 1, !noundef !10
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cc = load i8, ptr %i.cb, align 8, !noundef !10
  %i.cd = icmp eq i8 %i.ca, %i.cc
  %i.ce = add nuw i64 %i.k, 1                     ; 4 uses
  br i1 %i.cd, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not42 = icmp ult i64 %i.ce, %i.i
  br i1 %.not42, label %.preheader.split, label %.loopexit

bb.w:                                             ; preds = %bb.u
  store i64 %i.ce, ptr %i.j, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ce, ptr %i.cg, align 8
  br label %bb.t

.preheader.split:                                 ; preds = %bb.v, %bb.x
  %.sroa.08.0 = phi i64 [ %i.cm, %bb.x ], [ %i.ce, %bb.v ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.08.0
  %i.ci = load i8, ptr %i.ch, align 1, !noundef !10
  %i.cj = icmp sgt i8 %i.ci, -65
  br i1 %i.cj, label %.loopexit, label %bb.x

.loopexit:                                        ; preds = %.preheader.split, %bb.x, %bb.v
  %.sroa.02.0 = phi i64 [ %i.i, %bb.v ], [ %i.i, %bb.x ], [ %.sroa.08.0, %.preheader.split ] ; 2 uses
  store i64 %.sroa.02.0, ptr %i.j, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.02.0, ptr %i.cl, align 8
  br label %bb.t

bb.x:                                             ; preds = %.preheader.split
  %i.cm = add i64 %.sroa.08.0, 1                  ; 2 uses
  %exitcond93.not = icmp eq i64 %i.cm, %i.i
  br i1 %exitcond93.not, label %.loopexit, label %.preheader.split

bb.y:                                             ; preds = %bb.d
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8, !noundef !10 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, -1                   ; 2 uses
  %i.cr = load ptr, ptr %i.cn, align 8, !nonnull !10, !noundef !10 ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !10 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2612)
  %i.cw = add nsw i64 %i.cv, -1                   ; 3 uses
  %i.cx = add i64 %i.m, %i.cw                     ; 3 uses
  %i.cy = icmp ult i64 %i.cx, %i.o
  br i1 %i.cy, label %.lr.ph.i, label %.loopexit59

.lr.ph.i:                                         ; preds = %bb.y
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !2610 ; 2 uses
  %i.dc = load i64, ptr %i.cz, align 8, !alias.scope !2610
  %.fr117 = freeze i64 %i.dc                      ; 10 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !2610 ; 2 uses
  %i.df = sub i64 %i.cv, %i.de
  %i.dg = add i64 %i.m, 1
  %invariant.op.i = sub i64 %i.dg, %.fr117        ; 2 uses
  %i.dh = add i64 %i.de, %i.m                     ; 2 uses
  %i.di = add i64 %i.m, %i.cv                     ; 4 uses
  br i1 %i.cq, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.fr117, i64 range(i64 0, -9223372036854775808) %i.cv)
  %i.dj = add i64 %.fr117, -1                     ; 2 uses
  %.first_iter = icmp ult i64 %i.dj, %i.cv
  %exitcond.not.i.us156.not = icmp ult i64 %.fr117, %i.cv
  %.not73159 = icmp eq i64 %.fr117, 0             ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.loopexit134, %.lr.ph.i.split.us
  %i.dk = phi i64 [ %i.cx, %.lr.ph.i.split.us ], [ %i.ef, %.loopexit134 ]
  %i.dl = phi i64 [ %i.m, %.lr.ph.i.split.us ], [ %.sink132, %.loopexit134 ] ; 2 uses
  %.not.i46.us = icmp eq i64 %i.m, %i.dl
  br i1 %.not.i46.us, label %bb.aa, label %.split.us

bb.aa:                                            ; preds = %bb.z
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.dk
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !2611, !noundef !10
  %i.do = and i8 %i.dn, 63
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = shl nuw i64 1, %i.dp
  %i.dr = and i64 %i.dq, %i.db
  %.not20.i.us = icmp eq i64 %i.dr, 0
  br i1 %.not20.i.us, label %.loopexit134, label %.preheader74.preheader

.preheader74.preheader:                           ; preds = %bb.aa
  br i1 %exitcond.not.i.us156.not, label %bb.ab, label %.preheader

.preheader74:                                     ; preds = %bb.ab
  %i.ds = add nuw i64 %.sroa.04.0.i.us153, 1      ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.ds, %umax.i.us
  br i1 %exitcond.not.i.us, label %.preheader, label %bb.ab

.preheader:                                       ; preds = %.preheader74, %.preheader74.preheader
  br i1 %.first_iter, label %.preheader.split93.us.preheader, label %.lr.ph161

.preheader.split93.us.preheader:                  ; preds = %.preheader
  br i1 %.not73159, label %.split69.us, label %.lr.ph158

.preheader.preheader:                             ; preds = %.lr.ph158
  %.not73.us = icmp eq i64 %2, 0
  br i1 %.not73.us, label %.split69.us, label %.lr.ph158

.lr.ph158:                                        ; preds = %.preheader.split93.us.preheader, %.preheader.preheader
  %.sroa.04.0.i.us157 = phi i64 [ %2, %.preheader.preheader ], [ %.fr117, %.preheader.split93.us.preheader ]
  %2 = add i64 %.sroa.04.0.i.us157, -1            ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ct, i64 %2
  %i.du = load i8, ptr %i.dt, align 1, !alias.scope !2612, !noundef !10
  %i.dv = add i64 %2, %i.m                        ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.o
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.dv
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !2611, !noundef !10
  %.not22.i.us.a = icmp eq i8 %i.du, %i.dy
  br i1 %.not22.i.us.a, label %.preheader.preheader, label %.loopexit134

.lr.ph161:                                        ; preds = %.preheader
  br i1 %.not73159, label %.split69.us, label %.split71.us

bb.ab:                                            ; preds = %.preheader74.preheader, %.preheader74
  %.sroa.04.0.i.us153 = phi i64 [ %i.ds, %.preheader74 ], [ %.fr117, %.preheader74.preheader ] ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.04.0.i.us153
  %i.ea = load i8, ptr %i.dz, align 1, !alias.scope !2612, !noundef !10
  %i.eb = add i64 %.sroa.04.0.i.us153, %i.m       ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.o
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !2611, !noundef !10
  %.not21.i.us = icmp eq i8 %i.ea, %i.ee
  br i1 %.not21.i.us, label %.preheader74, label %3

3:                                                ; preds = %bb.ab
  %.reass.i.us = add i64 %invariant.op.i, %.sroa.04.0.i.us153
  br label %.loopexit134

.loopexit134:                                     ; preds = %.lr.ph158, %bb.aa, %3
  %.sink132 = phi i64 [ %i.di, %bb.aa ], [ %.reass.i.us, %3 ], [ %i.dh, %.lr.ph158 ] ; 3 uses
  store i64 %.sink132, ptr %i.l, align 8, !alias.scope !2610
  %i.ef = add i64 %.sink132, %i.cw                ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.o
  br i1 %i.eg, label %bb.z, label %.loopexit59

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %.sink.split.i
  %i.eh = phi i64 [ %.sink55.i, %.sink.split.i ], [ %i.cp, %.lr.ph.i ] ; 3 uses
  %i.ei = phi i64 [ %i.eq, %.sink.split.i ], [ %i.cx, %.lr.ph.i ]
  %i.ej = phi i64 [ %.sink133, %.sink.split.i ], [ %i.m, %.lr.ph.i ] ; 2 uses
  %.not.i46 = icmp eq i64 %i.m, %i.ej
  br i1 %.not.i46, label %bb.ac, label %.split.us

bb.ac:                                            ; preds = %.lr.ph.i.split
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ei
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !2611, !noundef !10
  %i.em = and i8 %i.el, 63
  %i.en = zext nneg i8 %i.em to i64
  %i.eo = shl nuw i64 1, %i.en
  %i.ep = and i64 %i.eo, %i.db
  %.not20.i = icmp eq i64 %i.ep, 0
  br i1 %.not20.i, label %.sink.split.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %..i.i = tail call i64 @llvm.umax.i64(i64 %i.eh, i64 %.fr117) ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -9223372036854775808) %i.cv)
  %exitcond.not.i152.not = icmp ult i64 %..i.i, %i.cv
  br i1 %exitcond.not.i152.not, label %.lr.ph, label %.preheader75.preheader

.sink.split.i:                                    ; preds = %bb.ag, %bb.ac, %bb.ah
  %.sink133 = phi i64 [ %i.di, %bb.ac ], [ %.reass.i, %bb.ah ], [ %i.dh, %bb.ag ] ; 3 uses
  %.sink55.i = phi i64 [ 0, %bb.ac ], [ 0, %bb.ah ], [ %i.df, %bb.ag ] ; 2 uses
  store i64 %.sink133, ptr %i.l, align 8, !alias.scope !2610
  store i64 %.sink55.i, ptr %i.co, align 8, !alias.scope !2610
  %i.eq = add i64 %.sink133, %i.cw                ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.o
  br i1 %i.er, label %.lr.ph.i.split, label %.loopexit59

bb.ae:                                            ; preds = %.lr.ph
  %i.es = add nuw i64 %.sroa.04.0.i153, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.es, %umax.i
  br i1 %exitcond.not.i, label %.preheader75.preheader, label %.lr.ph

.preheader75.preheader:                           ; preds = %bb.ae, %bb.ad
  %i.et = icmp ult i64 %i.eh, %.fr117
  br i1 %i.et, label %.lr.ph155, label %.split69.us

.lr.ph:                                           ; preds = %bb.ad, %bb.ae
  %.sroa.04.0.i153 = phi i64 [ %i.es, %bb.ae ], [ %..i.i, %bb.ad ] ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.04.0.i153
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !2612, !noundef !10
  %i.ew = add i64 %.sroa.04.0.i153, %i.m          ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.o
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ew
  %i.ez = load i8, ptr %i.ey, align 1, !alias.scope !2611, !noundef !10
  %.not22.i = icmp eq i8 %i.ev, %i.ez
  br i1 %.not22.i, label %bb.ae, label %bb.ah

.preheader75:                                     ; preds = %bb.ag
  %i.fa = icmp ult i64 %i.eh, %i.fb
  br i1 %i.fa, label %.lr.ph155, label %.split69.us

.split69.us:                                      ; preds = %.preheader75.preheader, %.preheader75, %.preheader.split93.us.preheader, %.preheader.preheader, %.lr.ph161
  store i64 %i.di, ptr %i.l, align 8, !alias.scope !2610
  br i1 %i.cq, label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECskeugdADtBsi_12pingora_core.exit, label %bb.af

.lr.ph155:                                        ; preds = %.preheader75.preheader, %.preheader75
  %.sroa.2.0.i154 = phi i64 [ %i.fb, %.preheader75 ], [ %.fr117, %.preheader75.preheader ]
  %i.fb = add i64 %.sroa.2.0.i154, -1             ; 6 uses
  %i.fc = icmp ult i64 %i.fb, %i.cv
  br i1 %i.fc, label %bb.ag, label %.split71.us

bb.af:                                            ; preds = %.split69.us
  store i64 0, ptr %i.co, align 8, !alias.scope !2610
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECskeugdADtBsi_12pingora_core.exit

bb.ag:                                            ; preds = %.lr.ph155
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.fb
  %i.fe = load i8, ptr %i.fd, align 1, !alias.scope !2612, !noundef !10
  %i.ff = add i64 %i.fb, %i.m                     ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.o
  tail call void @llvm.assume(i1 %i.fg)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ff
  %i.fi = load i8, ptr %i.fh, align 1, !alias.scope !2611, !noundef !10
  %.not21.i = icmp eq i8 %i.fe, %i.fi
  br i1 %.not21.i, label %.preheader75, label %.sink.split.i

.split71.us:                                      ; preds = %.lr.ph155, %.lr.ph161
  %.us-phi72 = phi i64 [ %i.dj, %.lr.ph161 ], [ %i.fb, %.lr.ph155 ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi72, i64 noundef range(i64 0, -9223372036854775808) %i.cv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #35, !noalias !2613
  unreachable

bb.ah:                                            ; preds = %.lr.ph
  %.reass.i = add i64 %invariant.op.i, %.sroa.04.0.i153
  br label %.sink.split.i

_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECskeugdADtBsi_12pingora_core.exit: ; preds = %.split69.us, %bb.af
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.fj, align 8, !alias.scope !2609
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.di, ptr %i.fk, align 8, !alias.scope !2609
  br label %bb.t

.split.us:                                        ; preds = %.lr.ph.i.split, %bb.z
  %.us-phi = phi i64 [ %i.dl, %bb.z ], [ %i.ej, %.lr.ph.i.split ] ; 5 uses
  %.not = icmp ult i64 %.us-phi, %i.o
  br i1 %.not, label %.preheader58.split, label %.loopexit59

.preheader58.split:                               ; preds = %.split.us, %bb.ai
  %.sroa.013.0 = phi i64 [ %i.fr, %bb.ai ], [ %.us-phi, %.split.us ] ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.013.0
  %i.fm = load i8, ptr %i.fl, align 1, !noundef !10
  %i.fn = icmp sgt i8 %i.fm, -65
  br i1 %i.fn, label %.loopexit59, label %bb.ai

.loopexit59:                                      ; preds = %.sink.split.i, %.loopexit134, %.preheader58.split, %bb.ai, %bb.y, %.split.us
  %i.fo = phi i64 [ %.us-phi, %.split.us ], [ %i.o, %bb.y ], [ %.us-phi, %.preheader58.split ], [ %i.o, %.loopexit134 ], [ %.us-phi, %bb.ai ], [ %i.o, %.sink.split.i ]
  %.sroa.018.0 = phi i64 [ %i.o, %.split.us ], [ %i.o, %bb.y ], [ %i.o, %bb.ai ], [ %i.o, %.loopexit134 ], [ %.sroa.013.0, %.preheader58.split ], [ %i.o, %.sink.split.i ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.fo, i64 %.sroa.018.0)
  store i64 %..i, ptr %i.l, align 8
  store i64 %i.m, ptr %i.fp, align 8
  store i64 %.sroa.018.0, ptr %i.fq, align 8
  br label %bb.t

bb.ai:                                            ; preds = %.preheader58.split
  %i.fr = add i64 %.sroa.013.0, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fr, %i.o
  br i1 %exitcond.not, label %.loopexit59, label %.preheader58.split
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRINtNtCskxN0Kp1MEon_2h25frame5FrameINtNtNtNtB13_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !10, !nonnull !10
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @158) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRINtNtCskxN0Kp1MEon_2h26server11HandshakingINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtB5_5Value6recordB2i_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !10, !nonnull !10
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @159) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRINtNtNtCskxN0Kp1MEon_2h25frame4data4DataINtNtNtNtB15_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !10, !nonnull !10
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @160) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtCskxN0Kp1MEon_2h25frame5FrameENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !10, !nonnull !10
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskKLDkoKarTP_4core2io5error9ErrorKindENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !10, !nonnull !10
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @162) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25frame13window_update12WindowUpdateENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !10, !nonnull !10
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @163) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25frame4data4DataENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !10, !nonnull !10
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @164) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25frame4ping4PingENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !10, !nonnull !10
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25frame5reset5ResetENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !10, !nonnull !10
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25frame6reason6ReasonENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !10, !nonnull !10
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @167) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !10, !nonnull !10
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @168) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25frame7headers11PushPromiseENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !10, !nonnull !10
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @169) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25frame7headers7HeadersENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !10, !nonnull !10
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @170) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25frame8priority8PriorityENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !10, !nonnull !10
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @171) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25frame8settings8SettingsENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !10, !nonnull !10
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @172) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25frame9stream_id8StreamIdENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !10, !nonnull !10
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25proto10connection5StateENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !10, !nonnull !10
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @174) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25proto5error5ErrorENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
end_hunk_1
