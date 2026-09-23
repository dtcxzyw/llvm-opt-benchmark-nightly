Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/libcst_native-f6ddb4b5b15f8b82.libcst_native.799f4444683a0d30-cgu.09?download=true
inline.NumInlined: 137
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs4_NtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB5_13TokenIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next:bb.a
bb.m:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noalias !201, !noundef !3 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.thread, label %bb.v

bb.n:                                             ; preds = %bb.l, %.split7.i.i, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !201, !noundef !3 ; 2 uses
  %.not80.i = icmp eq i64 %i.ak, 0
  br i1 %.not80.i, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.l, %.split7.i.i, %bb.j, %.split.i.i, %bb.f
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.u, i64 noundef %i.r, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !201
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.am = load ptr, ptr %i.al, align 8, !noalias !201, !nonnull !3, !noundef !3
  %i.an = getelementptr [16 x i8], ptr %i.am, i64 %i.ak ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 -16
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !201, !nonnull !3, !noundef !3
  %i.aq = getelementptr i8, ptr %i.an, i64 -8
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !201, !noundef !3 ; 3 uses
  %i.as = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsarohYtwVpE2_13libcst_native(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.ar), !noalias !201
  br i1 %i.as, label %bb.s, label %_RNCNvXs4_NtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB7_13TokenIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit

bb.q:                                             ; preds = %bb.s, %bb.n
  %i.at = phi i64 [ %.pre107.i, %bb.s ], [ 0, %bb.n ] ; 3 uses
  %.sroa.3.0.i = phi i64 [ %i.be, %bb.s ], [ %i.q, %bb.n ] ; 2 uses
  %.sroa.020.0.i = phi ptr [ %i.bf, %bb.s ], [ %i.ai, %bb.n ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !range !6, !alias.scope !203, !noalias !204, !noundef !3
  %i.aw = icmp eq i64 %i.at, %i.av
  br i1 %i.aw, label %bb.r, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsarohYtwVpE2_13libcst_native.exit.i

bb.r:                                             ; preds = %bb.q
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsarohYtwVpE2_13libcst_native(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au), !noalias !204
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsarohYtwVpE2_13libcst_native.exit.i

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsarohYtwVpE2_13libcst_native.exit.i: ; preds = %bb.r, %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !203, !noalias !204, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.at ; 2 uses
  store ptr %i.ai, ptr %i.az, align 8, !noalias !204
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.q, ptr %i.ba, align 8, !noalias !201
  %i.bb = add i64 %i.at, 1
  store i64 %i.bb, ptr %i.aj, align 8, !alias.scope !203, !noalias !204
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !201, !noundef !3 ; 3 uses
  %.not81.i = icmp eq ptr %i.bd, null
  br i1 %.not81.i, label %._crit_edge.i, label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.be = sub nuw i64 %i.q, %i.ar
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ar
  %.pre107.i = load i64, ptr %i.aj, align 8, !alias.scope !203, !noalias !204
  br label %bb.q

bb.t:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsarohYtwVpE2_13libcst_native.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !201, !noundef !3
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %._crit_edge.sink.split.i, label %bb.u, !prof !13

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !201
  unreachable

._crit_edge.sink.split.i:                         ; preds = %bb.y, %bb.t
  %.sink129.i = phi ptr [ %i.cb, %bb.y ], [ %i.bd, %bb.t ] ; 2 uses
  %.sink127.i = phi ptr [ %i.ch, %bb.y ], [ %i.ai, %bb.t ]
  %.sink.i = phi i64 [ %i.cg, %bb.y ], [ %i.q, %bb.t ]
  %.sroa.416.0.ph.i = phi i64 [ undef, %bb.y ], [ %.sroa.3.0.i, %bb.t ]
  %.sroa.015.0.ph.i = phi ptr [ null, %bb.y ], [ %.sroa.020.0.i, %bb.t ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink129.i, i64 24
  store ptr %.sink127.i, ptr %i.bj, align 8, !noalias !201
  %i.bk = getelementptr inbounds nuw i8, ptr %.sink129.i, i64 32
  store i64 %.sink.i, ptr %i.bk, align 8, !noalias !201
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.thread, %.thread48, %bb.v, %._crit_edge.sink.split.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsarohYtwVpE2_13libcst_native.exit.i, %bb.e
  %.sroa.416.0.i = phi i64 [ undef, %bb.v ], [ undef, %bb.e ], [ %.sroa.3.0.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsarohYtwVpE2_13libcst_native.exit.i ], [ %.sroa.416.0.ph.i, %._crit_edge.sink.split.i ], [ undef, %.thread48 ], [ undef, %.thread ]
  %.sroa.015.0.i = phi ptr [ null, %bb.v ], [ null, %bb.e ], [ %.sroa.020.0.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsarohYtwVpE2_13libcst_native.exit.i ], [ %.sroa.015.0.ph.i, %._crit_edge.sink.split.i ], [ null, %.thread48 ], [ null, %.thread ]
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !201
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 6 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !201, !noundef !3 ; 3 uses
  %.not82.i = icmp eq ptr %i.bn, null
  br i1 %.not82.i, label %bb.ab, label %bb.aa

bb.v:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bp = add nsw i64 %i.ag, -1                   ; 4 uses
  store i64 %i.bp, ptr %i.af, align 8, !noalias !201
  %i.bq = load i64, ptr %i.bo, align 8, !range !6, !noalias !201, !noundef !3
  %i.br = icmp samesign ult i64 %i.bp, %i.bq
  call void @llvm.assume(i1 %i.br)
  %i.bs = icmp ult i64 %i.ag, 576460752303423489
  call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !201, !noundef !3 ; 3 uses
  %.not77.i = icmp eq ptr %i.bu, null
  br i1 %.not77.i, label %._crit_edge.i, label %bb.w

.thread:                                          ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !201, !noundef !3 ; 2 uses
  %.not77.i67 = icmp eq ptr %i.bw, null
  br i1 %.not77.i67, label %._crit_edge.i, label %.thread68

bb.w:                                             ; preds = %bb.v
  %.not78.i = icmp eq i64 %i.bp, 0
  br i1 %.not78.i, label %.thread68, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !201, !nonnull !3, !noundef !3
  %i.bz = getelementptr [16 x i8], ptr %i.by, i64 %i.bp
  %i.ca = getelementptr i8, ptr %i.bz, i64 -16
  br label %.thread68

.thread68:                                        ; preds = %.thread, %bb.x, %bb.w
  %i.cb = phi ptr [ %i.bu, %bb.x ], [ %i.bu, %bb.w ], [ %i.bw, %.thread ] ; 2 uses
  %.sroa.025.0.i = phi ptr [ %i.ca, %bb.x ], [ @3, %bb.w ], [ @3, %.thread ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !201, !noundef !3
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.y, label %bb.z, !prof !13

bb.y:                                             ; preds = %.thread68
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !201, !noundef !3
  %i.ch = load ptr, ptr %.sroa.025.0.i, align 8, !noalias !201, !nonnull !3, !noundef !3
  br label %._crit_edge.sink.split.i

bb.z:                                             ; preds = %.thread68
  call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #21, !noalias !201
  unreachable

bb.aa:                                            ; preds = %._crit_edge.i
  %i.ci = load i64, ptr %i.bn, align 8, !noalias !201, !noundef !3 ; 2 uses
  %i.cj = icmp ne i64 %i.ci, 0
  call void @llvm.assume(i1 %i.cj)
  %i.ck = add i64 %i.ci, 1                        ; 2 uses
  store i64 %i.ck, ptr %i.bn, align 8, !noalias !201
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.ae, label %bb.af, !prof !205

bb.ab:                                            ; preds = %._crit_edge.i
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !201
  %i.cm = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef 8) #22, !noalias !201 ; 11 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.ac, label %_RNvXsz_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEENtNtBH_7default7Default7defaultB1j_.exit.i, !prof !205

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #21, !noalias !201
  unreachable

_RNvXsz_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEENtNtBH_7default7Default7defaultB1j_.exit.i: ; preds = %bb.ab
  %.sroa.59.sroa.7.0..sroa.59.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.sroa.7.0..sroa.59.0..sroa_idx.sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !201
  store i64 1, ptr %i.cm, align 8, !noalias !201
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 1, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !201
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i64 0, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !noalias !201
  %.sroa.59.sroa.4.0..sroa.59.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.59.sroa.4.0..sroa.59.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !201
  %.sroa.59.sroa.5.0..sroa.59.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store i64 0, ptr %.sroa.59.sroa.5.0..sroa.59.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !201
  %.sroa.59.sroa.6.0..sroa.59.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  store i64 1, ptr %.sroa.59.sroa.6.0..sroa.59.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !201
  %.sroa.59.sroa.8.0..sroa.59.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  store i64 0, ptr %.sroa.59.sroa.8.0..sroa.59.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !201
  %.sroa.59.sroa.9.0..sroa.59.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 72
  store i8 0, ptr %.sroa.59.sroa.9.0..sroa.59.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !201
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %_RNvXsz_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEENtNtBH_7default7Default7defaultB1j_.exit.i
  %storemerge.i = phi ptr [ %i.cm, %_RNvXsz_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEENtNtBH_7default7Default7defaultB1j_.exit.i ], [ %i.co, %bb.af ] ; 3 uses
  store ptr %storemerge.i, ptr %i.c, align 8, !noalias !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !201
  switch i8 %i.j, label %bb.ag [
    i8 5, label %bb.ah
    i8 6, label %bb.ah
    i8 15, label %bb.ah
  ]

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %bb.aa
  %i.co = load ptr, ptr %i.bm, align 8, !noalias !201, !nonnull !3, !noundef !3
  br label %bb.ad

bb.ag:                                            ; preds = %bb.ad
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 152
  %2 = load <4 x i64>, ptr %i.cp, align 8, !noalias !201
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !201, !noundef !3 ; 2 uses
  %.not84.i = icmp eq i64 %i.cr, 0
  br i1 %.not84.i, label %bb.al, label %bb.ak

bb.ah:                                            ; preds = %bb.ad, %bb.ad, %bb.ad
  %i.cs = load i64, ptr %storemerge.i, align 8, !noalias !201, !noundef !3 ; 2 uses
  %i.ct = icmp ne i64 %i.cs, 0
  call void @llvm.assume(i1 %i.ct)
  %i.cu = add i64 %i.cs, 1                        ; 2 uses
  store i64 %i.cu, ptr %storemerge.i, align 8, !noalias !201
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.ai, label %bb.aj, !prof !205

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.trap()
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.cw = load ptr, ptr %i.c, align 8, !noalias !201, !nonnull !3, !noundef !3 ; 4 uses
  %.pre110.i = load i64, ptr %i.cw, align 8, !noalias !201 ; 2 uses
  store ptr %i.cw, ptr %i.b, align 8, !noalias !201
  %i.cx = icmp ne i64 %.pre110.i, 0
  call void @llvm.assume(i1 %i.cx)
  %i.cy = add i64 %.pre110.i, 1                   ; 2 uses
  store i64 %i.cy, ptr %i.cw, align 8, !noalias !201
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.ap, label %bb.aq, !prof !206

bb.ak:                                            ; preds = %bb.ag
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.db = load ptr, ptr %i.da, align 8, !noalias !201, !nonnull !3, !noundef !3
  %i.dc = getelementptr [16 x i8], ptr %i.db, i64 %i.cr
  %i.dd = getelementptr i8, ptr %i.dc, i64 -16
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ag
  %.sroa.036.0.i = phi ptr [ %i.dd, %bb.ak ], [ @3, %bb.ag ] ; 2 uses
  %i.de = load ptr, ptr %.sroa.036.0.i, align 8, !noalias !201, !nonnull !3, !noundef !3
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !noalias !201, !noundef !3
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.di = load i64, ptr %i.dh, align 8, !noalias !201, !noundef !3 ; 2 uses
  %i.dj = icmp ult i64 %i.di, 576460752303423488
  call void @llvm.assume(i1 %i.dj)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !201
  %i.dk = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef 8) #22, !noalias !201 ; 10 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.am, label %.thread.i, !prof !205

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #21
          to label %.noexc.i unwind label %bb.ao, !noalias !201

.noexc.i:                                         ; preds = %bb.am
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit92.i: ; preds = %bb.av, %bb.au, %bb.ao
  %.pn86.i = phi { ptr, i32 } [ %i.dq, %bb.ao ], [ %.pn.i, %bb.av ], [ %.pn.i, %bb.au ]
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.dm = load ptr, ptr %i.c, align 8, !alias.scope !209, !noalias !201, !nonnull !3, !noundef !3 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !210, !noundef !3
  %i.do = add i64 %i.dn, -1                       ; 2 uses
  store i64 %i.do, ptr %i.dm, align 8, !noalias !210
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.an, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit.i

bb.an:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit92.i
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEE9drop_slowB1j_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit.i unwind label %bb.be, !noalias !201

bb.ao:                                            ; preds = %bb.bc, %bb.am
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit92.i

.thread.i:                                        ; preds = %bb.al
  %i.dr = icmp ne i64 %i.di, 0
  %i.ds = zext i1 %i.dr to i8
  %.sroa.4.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i3, align 8, !noalias !201
  %.sroa.5.0..sroa_idx99.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx99.i, align 8, !noalias !201
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  store ptr %i.de, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !201
  %.sroa.7101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  store i64 %i.dg, ptr %.sroa.7101.0..sroa_idx.i, align 8, !noalias !201
  %.sroa.8102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %3 = shufflevector <4 x i64> %2, <4 x i64> poison, <4 x i32> <i32 3, i32 1, i32 2, i32 0>
  store <4 x i64> %3, ptr %.sroa.8102.0..sroa_idx.i, align 8, !noalias !201
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 72
  store i8 %i.ds, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !201
  store ptr %i.dk, ptr %i.b, align 8, !noalias !201
  store i64 2, ptr %i.dk, align 8, !noalias !201
  br label %bb.aq

bb.ap:                                            ; preds = %bb.aj
  call void @llvm.trap()
  unreachable

bb.aq:                                            ; preds = %.thread.i, %bb.aj
  %i.dt = phi ptr [ %i.dk, %.thread.i ], [ %i.cw, %bb.aj ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.du = load ptr, ptr %i.bm, align 8, !alias.scope !211, !noalias !201, !noundef !3 ; 3 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEEB1S_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dw = load i64, ptr %i.du, align 8, !noalias !212, !noundef !3
  %i.dx = add i64 %i.dw, -1                       ; 2 uses
  store i64 %i.dx, ptr %i.du, align 8, !noalias !212
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %bb.as, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEEB1S_.exit.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEE9drop_slowB1j_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEEB1S_.exit.i unwind label %bb.at, !noalias !201

bb.at:                                            ; preds = %bb.as
  %i.dz = landingpad { ptr, i32 }
          cleanup
  store ptr %i.dt, ptr %i.bm, align 8, !noalias !201
  br label %bb.au

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEEB1S_.exit.i: ; preds = %bb.as, %bb.ar, %bb.aq
  store ptr %i.dt, ptr %i.bm, align 8, !noalias !201
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.eb = invoke { ptr, i64 } @_RNvMs1_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_12TextPosition20slice_from_start_pos(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ea)
          to label %bb.ax unwind label %bb.aw, !noalias !201 ; 2 uses

bb.au:                                            ; preds = %bb.aw, %bb.at
  %.pn.i = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.dz, %bb.at ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.ec = load ptr, ptr %i.b, align 8, !alias.scope !215, !noalias !201, !nonnull !3, !noundef !3 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !216, !noundef !3
  %i.ee = add i64 %i.ed, -1                       ; 2 uses
  store i64 %i.ee, ptr %i.ec, align 8, !noalias !216
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.av, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit92.i

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEE9drop_slowB1j_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit92.i unwind label %bb.be, !noalias !201

bb.aw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEEB1S_.exit.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ax:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEEB1S_.exit.i
  %i.eh = extractvalue { ptr, i64 } %i.eb, 0
  %i.ei = extractvalue { ptr, i64 } %i.eb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i64 24, i1 false), !noalias !201
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ek = load <2 x i64>, ptr %i.ej, align 8, !noalias !201
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.em = load i64, ptr %i.el, align 8, !noalias !201, !noundef !3
  %i.en = load ptr, ptr %i.b, align 8, !noalias !201, !nonnull !3, !noundef !3 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !noalias !201, !noundef !3 ; 2 uses
  %i.ep = icmp ne i64 %i.eo, 0
  call void @llvm.assume(i1 %i.ep)
  %i.eq = add i64 %i.eo, 1                        ; 2 uses
  store i64 %i.eq, ptr %i.en, align 8, !noalias !201
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.ay, label %bb.az, !prof !205

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.trap()
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.es = load ptr, ptr %i.b, align 8, !noalias !201, !nonnull !3, !noundef !3
  %i.et = load ptr, ptr %i.c, align 8, !noalias !201, !nonnull !3, !noundef !3 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !noalias !201, !noundef !3 ; 2 uses
  %i.ev = icmp ne i64 %i.eu, 0
  call void @llvm.assume(i1 %i.ev)
  %i.ew = add i64 %i.eu, 1                        ; 2 uses
  store i64 %i.ew, ptr %i.et, align 8, !noalias !201
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %bb.ba, label %bb.bb, !prof !205

bb.ba:                                            ; preds = %bb.az
  call void @llvm.trap()
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.ey = load ptr, ptr %i.c, align 8, !noalias !201, !nonnull !3, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.ez = load ptr, ptr %i.b, align 8, !alias.scope !220, !noalias !201, !nonnull !3, !noundef !3 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !221, !noundef !3
  %i.fb = add i64 %i.fa, -1                       ; 2 uses
  store i64 %i.fb, ptr %i.ez, align 8, !noalias !221
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %bb.bc, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit94.i

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEE9drop_slowB1j_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit94.i unwind label %bb.ao, !noalias !201

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit94.i: ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !201
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.fd = load ptr, ptr %i.c, align 8, !alias.scope !224, !noalias !201, !nonnull !3, !noundef !3 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !225, !noundef !3
  %i.ff = add i64 %i.fe, -1                       ; 2 uses
  store i64 %i.ff, ptr %i.fd, align 8, !noalias !225
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %bb.bd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit95.i

bb.bd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit94.i
  call void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEE9drop_slowB1j_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !201
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit95.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit95.i: ; preds = %bb.bd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit94.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !201
  br label %_RNCNvXs4_NtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB7_13TokenIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit

bb.be:                                            ; preds = %bb.av, %bb.an
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !201
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit.i: ; preds = %bb.an, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit92.i
  resume { ptr, i32 } %.pn86.i

_RNCNvXs4_NtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB7_13TokenIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit: ; preds = %bb.p, %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit95.i
  %.sroa.012.0 = phi ptr [ %i.eh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit95.i ], [ %i.l, %bb.d ], [ inttoptr (i64 2 to ptr), %bb.p ]
  %.sroa.17.0 = phi i8 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit95.i ], [ -1, %bb.d ], [ -1, %bb.p ]
  %.sroa.16.0 = phi i64 [ %.sroa.416.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit95.i ], [ undef, %bb.d ], [ undef, %bb.p ]
  %.sroa.15.0 = phi ptr [ %.sroa.015.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit95.i ], [ undef, %bb.d ], [ undef, %bb.p ]
  %.sroa.14.0 = phi i64 [ %i.em, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit95.i ], [ undef, %bb.d ], [ undef, %bb.p ]
  %.sroa.1014.0 = phi ptr [ %i.es, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit95.i ], [ undef, %bb.d ], [ undef, %bb.p ]
  %.sroa.913.0 = phi ptr [ %i.ey, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit95.i ], [ %.sroa.10.sroa.7.0.copyload, %bb.d ], [ undef, %bb.p ]
  %.sroa.8.0 = phi i64 [ %i.ei, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit95.i ], [ %.sroa.10.sroa.6.0.copyload, %bb.d ], [ undef, %bb.p ]
  %i.fi = phi <2 x i64> [ %i.ek, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer17whitespace_parser5StateEEEB1w_.exit95.i ], [ undef, %bb.d ], [ undef, %bb.p ]
  store ptr %.sroa.012.0, ptr %0, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.913.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.913.0, ptr %.sroa.913.0..sroa_idx, align 8
  %.sroa.1014.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.1014.0, ptr %.sroa.1014.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, i64 24, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i64> %i.fi, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.15.0, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %bb.bg

bb.bf:                                            ; preds = %bb.a
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 -2, ptr %i.fj, align 8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_RNCNvXs4_NtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB7_13TokenIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Bb_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB5_7TokTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !12, !noundef !3 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs5_NtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB5_7TokTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs5_NtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB5_7TokTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.42, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionReENtNtB7_3fmt5Debug3fmtCsarohYtwVpE2_13libcst_native(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
end_hunk_0
