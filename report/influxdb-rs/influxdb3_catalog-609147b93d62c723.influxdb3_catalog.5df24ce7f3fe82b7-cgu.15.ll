Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.15?download=true
inline.NumInlined: 2685
inline.NumDeleted: 1200
begin_hunk_0_@_RINvMNtCs4NRVxsYgnAr_4core3stre10split_onceReECs844E4pPEVZX_17influxdb3_catalog:bb.a

bb.h:                                             ; preds = %.lr.ph38
  %i.ax = add i64 %i.aw, %i.af                    ; 3 uses
  %i.ay = icmp ult i64 %i.ax, %i.l
  br i1 %i.ay, label %bb.j, label %bb.k

bb.i:                                             ; preds = %.lr.ph38
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aw, i64 noundef range(i64 0, -9223372036854775808) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #35, !noalias !136
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aw
  %i.ba = load i8, ptr %i.az, align 1, !alias.scope !133, !noalias !137, !noundef !6
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ax
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !132, !noalias !135, !noundef !6
  %.not.i20 = icmp eq i8 %i.ba, %i.bc
  br i1 %.not.i20, label %.preheader, label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef range(i64 0, -9223372036854775808) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #35, !noalias !136
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bd = add i64 %i.af, %i.ad
  br label %bb.g

bb.m:                                             ; preds = %.lr.ph35
  %i.be = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.02.0.i1534
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !133, !noalias !137, !noundef !6
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.at
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !132, !noalias !135, !noundef !6
  %.not21.i18 = icmp eq i8 %i.bf, %i.bh
  br i1 %.not21.i18, label %.preheader59, label %bb.o

bb.n:                                             ; preds = %.lr.ph35
  %i.bi = add i64 %i.af, %i.ab
  %umax.i17 = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.l, i64 %i.bi)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i17, i64 noundef range(i64 0, -9223372036854775808) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #35, !noalias !136
  unreachable

bb.o:                                             ; preds = %bb.m
  %.reass145.reass = add i64 %i.af, %invariant.op110
  %i.bj = add i64 %.reass145.reass, %.sroa.02.0.i1534
  br label %bb.g

bb.p:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %.promoted.i = load i64, ptr %i.q, align 8, !alias.scope !138, !noalias !141 ; 2 uses
  %i.bk = add i64 %.promoted.i, %i.r              ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.l
  br i1 %i.bl, label %.lr.ph.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread7

.lr.ph.i:                                         ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !138, !noalias !141, !noundef !6
  %i.bo = load i64, ptr %i.e, align 8, !alias.scope !138, !noalias !141 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !138, !noalias !141 ; 2 uses
  %i.br = sub i64 %i.p, %i.bq
  %invariant.op = sub i64 1, %i.bo
  br label %bb.q

bb.q:                                             ; preds = %.sink.split.i, %.lr.ph.i
  %i.bs = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %.ph71.i, %.sink.split.i ] ; 8 uses
  %i.bt = phi i64 [ %i.g, %.lr.ph.i ], [ %.sink.i, %.sink.split.i ] ; 3 uses
  %i.bu = phi i64 [ %i.bk, %.lr.ph.i ], [ %i.cd, %.sink.split.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !139, !noalias !142, !noundef !6
  %i.bx = and i8 %i.bw, 63
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = and i64 %i.bz, %i.bn
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cc = add i64 %i.bs, %i.p
  br label %.sink.split.i

bb.s:                                             ; preds = %bb.q
  %.sroa.0.0.i.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bo) ; 4 uses
  %umax49.i = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -9223372036854775808) %i.p)
  %exitcond.not.i28.not = icmp ult i64 %.sroa.0.0.i.i, %i.p
  br i1 %exitcond.not.i28.not, label %.lr.ph, label %.preheader16.preheader

.sink.split.i:                                    ; preds = %bb.ab, %bb.y, %bb.r
  %.sink.i = phi i64 [ %i.br, %bb.y ], [ 0, %bb.ab ], [ 0, %bb.r ]
  %.ph71.i = phi i64 [ %i.ct, %bb.y ], [ %i.cz, %bb.ab ], [ %i.cc, %bb.r ] ; 2 uses
  %i.cd = add i64 %.ph71.i, %i.r                  ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.l
  br i1 %i.ce, label %bb.q, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread7

bb.t:                                             ; preds = %bb.z
  %i.cf = add i64 %.sroa.02.0.i29, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cf, %umax49.i
  br i1 %exitcond.not.i, label %.preheader16.preheader, label %.lr.ph

.preheader16.preheader:                           ; preds = %bb.t, %bb.s
  %i.cg = icmp ult i64 %i.bt, %i.bo
  br i1 %i.cg, label %.lr.ph31, label %.preheader16.preheader._crit_edge

.lr.ph:                                           ; preds = %bb.s, %bb.t
  %.sroa.02.0.i29 = phi i64 [ %i.cf, %bb.t ], [ %.sroa.0.0.i.i, %bb.s ] ; 4 uses
  %i.ch = add i64 %.sroa.02.0.i29, %i.bs          ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.l
  br i1 %i.ci, label %bb.z, label %bb.aa

.preheader16:                                     ; preds = %bb.w
  %i.cj = icmp ult i64 %i.bt, %i.cl
  br i1 %i.cj, label %.lr.ph31, label %.preheader16.preheader._crit_edge

.preheader16.preheader._crit_edge:                ; preds = %.preheader16.preheader, %.preheader16
  %i.ck = add i64 %i.bs, %i.p
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread

.lr.ph31:                                         ; preds = %.preheader16.preheader, %.preheader16
  %.sroa.2.0.i30 = phi i64 [ %i.cl, %.preheader16 ], [ %i.bo, %.preheader16.preheader ]
  %i.cl = add i64 %.sroa.2.0.i30, -1              ; 6 uses
  %i.cm = icmp ult i64 %i.cl, %i.p
  br i1 %i.cm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph31
  %i.cn = add i64 %i.cl, %i.bs                    ; 3 uses
  %i.co = icmp ult i64 %i.cn, %i.l
  br i1 %i.co, label %bb.w, label %bb.x

bb.v:                                             ; preds = %.lr.ph31
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cl, i64 noundef range(i64 0, -9223372036854775808) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #35, !noalias !143
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cl
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !140, !noalias !144, !noundef !6
  %i.cr = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cn
  %i.cs = load i8, ptr %i.cr, align 1, !alias.scope !139, !noalias !142, !noundef !6
  %.not.i = icmp eq i8 %i.cq, %i.cs
  br i1 %.not.i, label %.preheader16, label %bb.y

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cn, i64 noundef range(i64 0, -9223372036854775808) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #35, !noalias !143
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ct = add i64 %i.bs, %i.bq
  br label %.sink.split.i

bb.z:                                             ; preds = %.lr.ph
  %i.cu = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.02.0.i29
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !140, !noalias !144, !noundef !6
  %i.cw = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ch
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !139, !noalias !142, !noundef !6
  %.not21.i = icmp eq i8 %i.cv, %i.cx
  br i1 %.not21.i, label %bb.t, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph
  %i.cy = add i64 %i.bs, %.sroa.0.0.i.i
  %umax.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.l, i64 %i.cy)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, -9223372036854775808) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #35, !noalias !143
  unreachable

bb.ab:                                            ; preds = %bb.z
  %.reass.reass = add i64 %i.bs, %invariant.op
  %i.cz = add i64 %.reass.reass, %.sroa.02.0.i29
  br label %.sink.split.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !130
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread7

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread: ; preds = %.preheader16.preheader._crit_edge, %.preheader.preheader._crit_edge, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread11
  %.sroa.7.35 = phi i64 [ %i.u, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread11 ], [ %i.bs, %.preheader16.preheader._crit_edge ], [ %i.af, %.preheader.preheader._crit_edge ]
  %.sroa.11.34 = phi i64 [ %i.w, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread11 ], [ %i.ck, %.preheader16.preheader._crit_edge ], [ %i.av, %.preheader.preheader._crit_edge ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.da = sub nuw i64 %2, %.sroa.11.34
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.34
  store ptr %1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.35, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.db, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.da, ptr %.sroa.63.0..sroa_idx, align 8
  br label %bb.ac

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread7: ; preds = %.sink.split.i, %bb.g, %bb.p, %bb.d, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs844E4pPEVZX_17influxdb3_catalog.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs844E4pPEVZX_17influxdb3_catalog.exit.i.i
  %i.c = phi i64 [ %i.aq, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs844E4pPEVZX_17influxdb3_catalog.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs844E4pPEVZX_17influxdb3_catalog.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !171, !noundef !6 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !171, !noundef !6
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !171, !noundef !6
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !171, !noundef !6
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit12.i.i.i.i.i
  %.sroa.4.0 = phi ptr [ %i.f, %bb.b ], [ %i.ae, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit14.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit12.i.i.i.i.i ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit14.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit12.i.i.i.i.i ] ; 8 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = ptrtoint ptr %.sroa.4.0 to i64
  %i.ap = sub i64 %i.ao, %i.e
  %i.aq = add i64 %i.ap, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs844E4pPEVZX_17influxdb3_catalog.exit.i.i
    i32 13, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs844E4pPEVZX_17influxdb3_catalog.exit.i.i
    i32 12, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs844E4pPEVZX_17influxdb3_catalog.exit.i.i
    i32 11, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs844E4pPEVZX_17influxdb3_catalog.exit.i.i
    i32 10, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs844E4pPEVZX_17influxdb3_catalog.exit.i.i
    i32 9, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs844E4pPEVZX_17influxdb3_catalog.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.ar, label %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.as, label %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs844E4pPEVZX_17influxdb3_catalog.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.au = zext i1 %i.at to i8
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.av = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.aw = zext i1 %i.av to i8
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ax = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !172, !noundef !6
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bb = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !172, !noundef !6
  %i.bf = lshr i8 %i.be, 1
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i

_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.aw, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %bb.f ], [ %i.bf, %bb.i ]
  %i.bg = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bg, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs844E4pPEVZX_17influxdb3_catalog.exit.i.i, label %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs844E4pPEVZX_17influxdb3_catalog.exit

_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs844E4pPEVZX_17influxdb3_catalog.exit.i.i: ; preds = %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bh = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.e, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i, %bb.d, %bb.a
  %.sroa.4.122 = phi ptr [ %0, %bb.a ], [ %.sroa.4.0, %bb.d ], [ %.sroa.4.0, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i ], [ %.sroa.4.0, %bb.e ] ; 6 uses
  %.sroa.18.020 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.d ], [ %i.aq, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i ], [ %i.aq, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  %i.bi = icmp eq ptr %.sroa.4.122, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i5

.lr.ph.i.i5:                                      ; preds = %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs844E4pPEVZX_17influxdb3_catalog.exit, %bb.t
  %i.bj = phi ptr [ %i.ct, %bb.t ], [ %i.a, %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs844E4pPEVZX_17influxdb3_catalog.exit ] ; 5 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !173, !noundef !6 ; 3 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.j, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs844E4pPEVZX_17influxdb3_catalog.exit17.i.i.i.i.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs844E4pPEVZX_17influxdb3_catalog.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i5
  %i.bn = icmp ne ptr %.sroa.4.122, %i.bk
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 -2 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !173, !noundef !6 ; 3 uses
  %i.bq = and i8 %i.bp, 31
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = icmp slt i8 %i.bp, -64
  br i1 %i.bs, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs844E4pPEVZX_17influxdb3_catalog.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i5
  %i.bt = zext nneg i8 %i.bl to i32
  br label %bb.m

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs844E4pPEVZX_17influxdb3_catalog.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs844E4pPEVZX_17influxdb3_catalog.exit17.i.i.i.i.i
  %i.bu = icmp ne ptr %.sroa.4.122, %i.bo
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !173, !noundef !6 ; 3 uses
  %i.bx = and i8 %i.bw, 15
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = icmp slt i8 %i.bw, -64
  br i1 %i.bz, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs844E4pPEVZX_17influxdb3_catalog.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs844E4pPEVZX_17influxdb3_catalog.exit17.i.i.i.i.i
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs844E4pPEVZX_17influxdb3_catalog.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs844E4pPEVZX_17influxdb3_catalog.exit17.i.i.i.i.i ]
  %i.cb = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cc = and i8 %i.bl, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.m

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs844E4pPEVZX_17influxdb3_catalog.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs844E4pPEVZX_17influxdb3_catalog.exit19.i.i.i.i.i
  %i.cf = icmp ne ptr %.sroa.4.122, %i.bv
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !173, !noundef !6
  %i.ci = and i8 %i.ch, 7
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.bw, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs844E4pPEVZX_17influxdb3_catalog.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs844E4pPEVZX_17influxdb3_catalog.exit19.i.i.i.i.i
  %i.co = phi ptr [ %i.cg, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs844E4pPEVZX_17influxdb3_catalog.exit21.i.i.i.i.i ], [ %i.bv, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs844E4pPEVZX_17influxdb3_catalog.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.cn, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs844E4pPEVZX_17influxdb3_catalog.exit21.i.i.i.i.i ], [ %i.by, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs844E4pPEVZX_17influxdb3_catalog.exit19.i.i.i.i.i ]
  %i.cp = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.cq = and i8 %i.bp, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.ce, %bb.k ] ; 8 uses
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cu)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133
  br i1 %i.cv, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cw, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cy = zext i1 %i.cx to i8
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i7

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i7

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !174, !noundef !6
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i7

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !174, !noundef !6
  %i.dj = lshr i8 %i.di, 1
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i7

_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i7: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i8 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i8 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i7, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.122, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i5

bb.u:                                             ; preds = %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i7, %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.122 to i64
  %i.do = sub i64 %.sroa.18.020, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs844E4pPEVZX_17influxdb3_catalog.exit.i.i, %bb.t, %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs844E4pPEVZX_17influxdb3_catalog.exit, %bb.u
  %.sroa.0.043 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs844E4pPEVZX_17influxdb3_catalog.exit ], [ %.sroa.0.0, %bb.t ], [ 0, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs844E4pPEVZX_17influxdb3_catalog.exit.i.i ] ; 2 uses
  %.sroa.02.1 = phi i64 [ %i.dp, %bb.u ], [ %.sroa.18.020, %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs844E4pPEVZX_17influxdb3_catalog.exit ], [ %.sroa.18.020, %bb.t ], [ 0, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs844E4pPEVZX_17influxdb3_catalog.exit.i.i ]
  %i.dq = sub nuw i64 %.sroa.02.1, %.sroa.0.043
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.043
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre18trim_start_matchesReECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !178
  call fastcc void @_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b), !noalias !179
  %i.c = load i64, ptr %i.a, align 8, !range !8, !noalias !178, !noundef !6
  switch i64 %i.c, label %default.unreachable [
    i64 1, label %bb.d
    i64 2, label %.loopexit
    i64 0, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !178
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !178, !noundef !6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d
  %.sroa.0.0 = phi i64 [ %i.e, %bb.d ], [ %1, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !178
  %i.f = sub nuw i64 %1, %.sroa.0.0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.g, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.f, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs8tMIthlWNBj_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE15new_with_offsetNtNtNtB7_6offset3utc3UtcECs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, i32 noundef %1, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !186
  store i64 0, ptr %i.c, align 8, !noalias !186
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !186
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !186
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.d, align 8, !noalias !186
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !186
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !186
  store ptr %i.c, ptr %i.b, align 8, !noalias !186
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @920, ptr %i.e, align 8, !noalias !186
  %i.f = invoke noundef zeroext i1 @_RNvXs2_NtNtCs8tMIthlWNBj_6chrono6offset3utcNtB5_3UtcNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !187

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #36
          to label %bb.f unwind label %bb.e, !noalias !187

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.g, !prof !11

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @921, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @340, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @923) #35
          to label %.noexc.i.i unwind label %bb.b, !noalias !187

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37, !noalias !187
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !186
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %1, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.42.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7storageNtB6_16GenerationConfig12set_durationhEBg_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 2)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i8 noundef %2, i64 noundef %3, i32 noundef range(i32 0, 1000000000) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMaphNtNtCs4NRVxsYgnAr_4core4time8DurationE5entryCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %2)
  %i.e = load ptr, ptr %i.d, align 8, !noundef !6
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load <2 x i64>, ptr %i.h, align 8
  store <2 x i64> %i.k, ptr %i.j, align 8
  %i.l = call { ptr, ptr } @_RNvMsP_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmuthNtNtCs4NRVxsYgnAr_4core4time8DurationNtB1l_14LeafOrInternalENtB1l_2KVE7into_kvCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  %i.m = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = load i64, ptr %i.m, align 8, !noundef !6 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load i32, ptr %i.o, align 8, !range !13, !noundef !6 ; 2 uses
  %i.q = icmp eq i64 %i.n, %3
  %.not = icmp eq i32 %i.p, %4
  %or.cond = and i1 %i.q, %.not
  br i1 %or.cond, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryhNtNtCs4NRVxsYgnAr_4core4time8DurationE12insert_entryCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c, i64 noundef %3, i32 noundef %4)
  %i.r = call noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryhNtNtCs4NRVxsYgnAr_4core4time8DurationE8into_mutCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.s, align 1
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.e:                                             ; preds = %bb.b
  store i8 55, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %.sroa.51.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.p, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.72.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %.sroa.72.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %4, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.t, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i16, i16 } @_RINvMs4_CsbFlE7Gjht9i_12influxdb3_idNtB6_15FieldIdentifier3newNtB6_13FieldFamilyIdNtB6_7FieldIdECs844E4pPEVZX_17influxdb3_catalog(i16 noundef %0, i16 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = insertvalue { i16, i16 } poison, i16 %0, 0
  %i.b = insertvalue { i16, i16 } %i.a, i16 %1, 1
  ret { i16, i16 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB4_2fs4FileEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 7 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = load i64, ptr %1, align 8, !range !14, !noundef !6 ; 2 uses
end_hunk_0
