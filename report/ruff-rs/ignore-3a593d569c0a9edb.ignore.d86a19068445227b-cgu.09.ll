Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ignore-3a593d569c0a9edb.ignore.d86a19068445227b-cgu.09?download=true
inline.NumInlined: 235
inline.NumDeleted: 138
begin_hunk_0_@_RNvXso_NtCs2AWtUsOyxgP_3std2ioINtB5_5LinesINtNtNtB5_8buffered9bufreader9BufReaderNtNtB7_2fs4FileEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsizY4S0OBG5z_6ignore:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br label %.outer.i.i.i.i

.outer.i.i.i.i:                                   ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsizY4S0OBG5z_6ignore.exit21.i.i.i.i, %bb.a
  %.sroa.01.0.ph.i.i.i.i = phi i64 [ %i.bj, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsizY4S0OBG5z_6ignore.exit21.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  br label %.noexc11.i.i

.noexc11.i.i:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsizY4S0OBG5z_6ignore.exit25.i.i.i.i, %.outer.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.p = load i64, ptr %i.h, align 8, !alias.scope !501, !noalias !502, !noundef !3 ; 2 uses
  %i.q = load i64, ptr %i.i, align 8, !alias.scope !501, !noalias !502, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp ult i64 %i.p, %i.q
  %.pre.i.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !501, !noalias !502 ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs4_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreaderINtB5_9BufReaderNtNtBb_2fs4FileENtB9_7BufRead8fill_bufCsizY4S0OBG5z_6ignore.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.noexc11.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !503
  %i.r = load i64, ptr %i.k, align 8, !alias.scope !501, !noalias !502, !noundef !3
  store ptr %.pre.i.i.i.i.i.i, ptr %i.a, align 8, !noalias !503
  store i64 %i.r, ptr %i.l, align 8, !noalias !503
  store i64 0, ptr %i.m, align 8, !noalias !503
  %i.s = load i8, ptr %i.o, align 8, !range !504, !alias.scope !501, !noalias !502, !noundef !3
  store i8 %i.s, ptr %i.n, align 8, !noalias !503
  %i.t = invoke noundef ptr @_RNvXsa_NtCs2AWtUsOyxgP_3std2fsNtB5_4FileNtNtB7_2io4Read8read_buf(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.noexc.i.i unwind label %.loopexit.i.i ; 2 uses

.noexc.i.i:                                       ; preds = %bb.b
  store i64 0, ptr %i.h, align 8, !alias.scope !501, !noalias !502
  %i.u = load i64, ptr %i.m, align 8, !noalias !503, !noundef !3 ; 2 uses
  store i64 %i.u, ptr %i.i, align 8, !alias.scope !501, !noalias !502
  %i.v = load i8, ptr %i.n, align 8, !range !504, !noalias !503, !noundef !3
  store i8 %i.v, ptr %i.o, align 8, !alias.scope !501, !noalias !502
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not4.i.i.i.i.i.i, label %bb.c, label %_RNvXs4_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreaderINtB5_9BufReaderNtNtBb_2fs4FileENtB9_7BufRead8fill_bufCsizY4S0OBG5z_6ignore.exit.thread.i.i.i.i

_RNvXs4_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreaderINtB5_9BufReaderNtNtBb_2fs4FileENtB9_7BufRead8fill_bufCsizY4S0OBG5z_6ignore.exit.thread.i.i.i.i: ; preds = %.noexc.i.i
  %i.w = ptrtoint ptr %i.t to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !503
  br label %bb.d

bb.c:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !503
  br label %_RNvXs4_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreaderINtB5_9BufReaderNtNtBb_2fs4FileENtB9_7BufRead8fill_bufCsizY4S0OBG5z_6ignore.exit.i.i.i.i

_RNvXs4_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreaderINtB5_9BufReaderNtNtBb_2fs4FileENtB9_7BufRead8fill_bufCsizY4S0OBG5z_6ignore.exit.i.i.i.i: ; preds = %bb.c, %.noexc11.i.i
  %i.x = phi i64 [ %i.q, %.noexc11.i.i ], [ %i.u, %bb.c ] ; 2 uses
  %i.y = phi i64 [ %i.p, %.noexc11.i.i ], [ 0, %bb.c ] ; 3 uses
  %i.z = sub nuw i64 %i.x, %i.y                   ; 14 uses
  %i.aa = icmp eq ptr %.pre.i.i.i.i.i.i, null
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXs4_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreaderINtB5_9BufReaderNtNtBb_2fs4FileENtB9_7BufRead8fill_bufCsizY4S0OBG5z_6ignore.exit.i.i.i.i, %_RNvXs4_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreaderINtB5_9BufReaderNtNtBb_2fs4FileENtB9_7BufRead8fill_bufCsizY4S0OBG5z_6ignore.exit.thread.i.i.i.i
  %.sroa.9.041.i.i.i.i = phi i64 [ %i.w, %_RNvXs4_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreaderINtB5_9BufReaderNtNtBb_2fs4FileENtB9_7BufRead8fill_bufCsizY4S0OBG5z_6ignore.exit.thread.i.i.i.i ], [ %i.z, %_RNvXs4_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreaderINtB5_9BufReaderNtNtBb_2fs4FileENtB9_7BufRead8fill_bufCsizY4S0OBG5z_6ignore.exit.i.i.i.i ] ; 6 uses
  %i.ab = inttoptr i64 %.sroa.9.041.i.i.i.i to ptr ; 8 uses
  %i.ac = and i64 %.sroa.9.041.i.i.i.i, 3
  switch i64 %i.ac, label %default.unreachable [
    i64 2, label %.split.i.i.i.i
    i64 3, label %bb.l
    i64 0, label %.split60.i.i.i.i
    i64 1, label %.split59.i.i.i.i
  ], !prof !10

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_RNvXs4_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreaderINtB5_9BufReaderNtNtBb_2fs4FileENtB9_7BufRead8fill_bufCsizY4S0OBG5z_6ignore.exit.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i, i64 %i.y ; 4 uses
  %i.ae = icmp samesign ult i64 %i.z, 16
  br i1 %i.ae, label %.preheader.i.i.i.i.i, label %bb.f

.preheader.i.i.i.i.i:                             ; preds = %bb.e
  %.not.i.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.af = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.z)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.g, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.z, %bb.g ], [ %.sroa.01.05.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ 0, %bb.g ], [ 1, %.lr.ph.i.i.i.i.i ]
  %i.ag = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i, 0
  %i.ah = insertvalue { i64, i64 } %i.ag, i64 %.sroa.01.0.lcssa.i.i.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.g
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.al, %bb.g ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sroa.01.05.i.i.i.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !505, !noundef !3
  %i.ak = icmp eq i8 %i.aj, 10
  br i1 %i.ak, label %._crit_edge.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.al = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.al, %i.z
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.f
  %.merged.i.i.i.i.i = phi { i64, i64 } [ %i.ah, %._crit_edge.i.i.i.i.i ], [ %i.af, %bb.f ] ; 2 uses
  %i.am = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 0
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i
  %i.ao = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 1 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %i.z
  br i1 %i.ap, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsizY4S0OBG5z_6ignore.exit.i.i.i.i, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ao, i64 noundef range(i64 0, -9223372036854775808) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #17
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

.noexc8.i.i:                                      ; preds = %bb.i
  unreachable

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsizY4S0OBG5z_6ignore.exit.i.i.i.i: ; preds = %bb.h
  %i.aq = add nuw i64 %i.ao, 1                    ; 5 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.aq)
          to label %.noexc9.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

.noexc9.i.i:                                      ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsizY4S0OBG5z_6ignore.exit.i.i.i.i
  %i.ar = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !506, !noalias !507, !noundef !3 ; 2 uses
  %i.as = icmp sgt i64 %i.ar, -1
  call void @llvm.assume(i1 %i.as)
  %i.at = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !alias.scope !506, !noalias !507, !nonnull !3, !noundef !3
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.au, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ad, i64 %i.aq, i1 false)
  %.pre.i.i.i.i.i = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !506, !noalias !507
  %i.av = add i64 %.pre.i.i.i.i.i, %i.aq
  store i64 %i.av, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !506, !noalias !507
  %i.aw = load i64, ptr %i.h, align 8, !alias.scope !508, !noalias !509, !noundef !3
  %i.ax = add i64 %i.aw, %i.aq
  %i.ay = load i64, ptr %i.i, align 8, !alias.scope !508, !noalias !509, !noundef !3
  %.sroa.0.0.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ay, i64 %i.ax)
  store i64 %.sroa.0.0.i.i.i.i.i.i, ptr %i.h, align 8, !alias.scope !508, !noalias !509
  %i.az = add i64 %i.aq, %.sroa.01.0.ph.i.i.i.i
  br label %.loopexit.i.i.i.i

bb.j:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.z)
          to label %.noexc10.i.i unwind label %.loopexit.split-lp.loopexit.i.i

.noexc10.i.i:                                     ; preds = %bb.j
  %i.ba = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !510, !noalias !507, !noundef !3 ; 3 uses
  %i.bb = icmp sgt i64 %i.ba, -1
  call void @llvm.assume(i1 %i.bb)
  %.not.i19.i.i.i.i = icmp eq i64 %i.x, %i.y
  br i1 %.not.i19.i.i.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsizY4S0OBG5z_6ignore.exit21.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.noexc10.i.i
  %i.bc = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !alias.scope !510, !noalias !507, !nonnull !3, !noundef !3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr nonnull readonly align 1 %i.ad, i64 %i.z, i1 false)
  %.pre.i20.i.i.i.i = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !510, !noalias !507
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsizY4S0OBG5z_6ignore.exit21.i.i.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsizY4S0OBG5z_6ignore.exit21.i.i.i.i: ; preds = %bb.k, %.noexc10.i.i
  %i.be = phi i64 [ %.pre.i20.i.i.i.i, %bb.k ], [ %i.ba, %.noexc10.i.i ]
  %i.bf = add i64 %i.be, %i.z
  store i64 %i.bf, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !510, !noalias !507
  %i.bg = load i64, ptr %i.h, align 8, !alias.scope !511, !noalias !509, !noundef !3
  %i.bh = add i64 %i.bg, %i.z
  %i.bi = load i64, ptr %i.i, align 8, !alias.scope !511, !noalias !509, !noundef !3
  %.sroa.0.0.i.i22.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bi, i64 %i.bh)
  store i64 %.sroa.0.0.i.i22.i.i.i.i, ptr %i.h, align 8, !alias.scope !511, !noalias !509
  %i.bj = add i64 %i.z, %.sroa.01.0.ph.i.i.i.i    ; 2 uses
  %i.bk = icmp eq i64 %i.z, 0
  br i1 %i.bk, label %.loopexit.i.i.i.i, label %.outer.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsizY4S0OBG5z_6ignore.exit21.i.i.i.i, %.noexc9.i.i
  %.sroa.01.1.i.i.i.i = phi i64 [ %i.az, %.noexc9.i.i ], [ %i.bj, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsizY4S0OBG5z_6ignore.exit21.i.i.i.i ]
  %i.bl = inttoptr i64 %.sroa.01.1.i.i.i.i to ptr
  br label %.loopexit17.i.i

.split.i.i.i.i:                                   ; preds = %bb.d
  %.mask.i.i.i.i.a = and i64 %.sroa.9.041.i.i.i.i, -4294967296
  %i.bm = icmp eq i64 %.mask.i.i.i.i.a, 17179869184
  br i1 %i.bm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsizY4S0OBG5z_6ignore.exit25.i.i.i.i, label %.loopexit17.i.i

.split60.i.i.i.i:                                 ; preds = %bb.d
  %i.bn = icmp ne i64 %.sroa.9.041.i.i.i.i, 0
  call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.bp = load i8, ptr %i.bo, align 8, !range !512, !noundef !3
  %i.bq = icmp eq i8 %i.bp, 35
  br i1 %i.bq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsizY4S0OBG5z_6ignore.exit25.i.i.i.i, label %.loopexit17.i.i

.split59.i.i.i.i:                                 ; preds = %bb.d
  %i.br = getelementptr i8, ptr %i.ab, i64 15
  %i.bs = load i8, ptr %i.br, align 8, !range !512, !noundef !3
  %i.bt = icmp eq i8 %i.bs, 35
  br i1 %i.bt, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsizY4S0OBG5z_6ignore.exit25.i.i.i.i, label %.loopexit17.i.i

bb.l:                                             ; preds = %bb.d
  %2 = lshr i64 %.sroa.9.041.i.i.i.i, 32
  %i.bu = icmp ult i64 %.sroa.9.041.i.i.i.i, 180388626432
  %switch.idx.cast.i.i.i.i.i.i = trunc i64 %2 to i8
  %spec.select.i.i.i.i.i.i = select i1 %i.bu, i8 %switch.idx.cast.i.i.i.i.i.i, i8 -1 ; 2 uses
  %3 = icmp ne i8 %spec.select.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %3)
  %i.bv = icmp eq i8 %spec.select.i.i.i.i.i.i, 35
  br i1 %i.bv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsizY4S0OBG5z_6ignore.exit25.i.i.i.i, label %.loopexit17.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsizY4S0OBG5z_6ignore.exit25.i.i.i.i: ; preds = %bb.l, %.split59.i.i.i.i, %.split60.i.i.i.i, %.split.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsizY4S0OBG5z_6ignore(ptr nonnull %i.ab)
          to label %.noexc11.i.i unwind label %.loopexit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsizY4S0OBG5z_6ignore.exit.i.i: ; preds = %bb.n, %bb.m, %.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.cf, %bb.m ], [ %i.cf, %bb.n ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit18.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp19.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ]
  invoke void @_RNvXNtCs2AWtUsOyxgP_3std2ioNtB2_5GuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.body unwind label %bb.r

.loopexit.i.i:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsizY4S0OBG5z_6ignore.exit25.i.i.i.i, %bb.b
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsizY4S0OBG5z_6ignore.exit.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.j, %bb.f
  %lpad.loopexit18.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsizY4S0OBG5z_6ignore.exit.i.i

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsizY4S0OBG5z_6ignore.exit.i.i.i.i, %bb.i
  %lpad.loopexit.split-lp19.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsizY4S0OBG5z_6ignore.exit.i.i

.loopexit17.i.i:                                  ; preds = %bb.l, %.split59.i.i.i.i, %.split60.i.i.i.i, %.split.i.i.i.i, %.loopexit.i.i.i.i
  %.sroa.3.0.i.i.i.i = phi ptr [ %i.bl, %.loopexit.i.i.i.i ], [ %i.ab, %.split.i.i.i.i ], [ %i.ab, %.split60.i.i.i.i ], [ %i.ab, %.split59.i.i.i.i ], [ %i.ab, %bb.l ] ; 4 uses
  %i.bw = phi i1 [ true, %.loopexit.i.i.i.i ], [ false, %.split.i.i.i.i ], [ false, %.split60.i.i.i.i ], [ false, %.split59.i.i.i.i ], [ false, %bb.l ]
  %.sroa.0.0.i.i.i.i = phi i1 [ false, %.loopexit.i.i.i.i ], [ true, %.split.i.i.i.i ], [ true, %.split60.i.i.i.i ], [ true, %.split59.i.i.i.i ], [ true, %bb.l ] ; 2 uses
  %i.bx = load ptr, ptr %i.c, align 8, !noalias !494, !nonnull !3, !align !9, !noundef !3 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !3, !noundef !3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !3
  %i.cc = load i64, ptr %i.g, align 8, !noalias !494, !noundef !3 ; 2 uses
  %i.cd = sub nuw i64 %i.cb, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !494
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cd)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %.loopexit17.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsizY4S0OBG5z_6ignore.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i.i) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsizY4S0OBG5z_6ignore(ptr nonnull %.sroa.3.0.i.i.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsizY4S0OBG5z_6ignore.exit.i.i unwind label %bb.r

bb.o:                                             ; preds = %.loopexit17.i.i
  %i.cg = load i64, ptr %i.b, align 8, !range !5, !noalias !494, !noundef !3
  %.not.i.i = icmp eq i64 %i.cg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !494
  br i1 %.not.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ch = load ptr, ptr %i.c, align 8, !noalias !494, !nonnull !3, !align !9, !noundef !3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !3 ; 2 uses
  %i.ck = icmp sgt i64 %i.cj, -1
  call void @llvm.assume(i1 %i.ck)
  store i64 %i.cj, ptr %i.g, align 8, !noalias !494
  br label %_RINvNtCs2AWtUsOyxgP_3std2io16append_to_stringNCNvYINtNtNtB2_8buffered9bufreader9BufReaderNtNtB4_2fs4FileENtB2_7BufRead9read_line0ECsizY4S0OBG5z_6ignore.exit.i

bb.q:                                             ; preds = %bb.o
  %spec.select.i.i = select i1 %.sroa.0.0.i.i.i.i, ptr %.sroa.3.0.i.i.i.i, ptr @5
  br label %_RINvNtCs2AWtUsOyxgP_3std2io16append_to_stringNCNvYINtNtNtB2_8buffered9bufreader9BufReaderNtNtB4_2fs4FileENtB2_7BufRead9read_line0ECsizY4S0OBG5z_6ignore.exit.i

bb.r:                                             ; preds = %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsizY4S0OBG5z_6ignore.exit.i.i
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs2AWtUsOyxgP_3std2io16append_to_stringNCNvYINtNtNtB2_8buffered9bufreader9BufReaderNtNtB4_2fs4FileENtB2_7BufRead9read_line0ECsizY4S0OBG5z_6ignore.exit.i: ; preds = %bb.q, %bb.p
  %.sroa.5.0.i.i = phi ptr [ %spec.select.i.i, %bb.q ], [ %.sroa.3.0.i.i.i.i, %bb.p ] ; 2 uses
  %.sroa.0.0.i.i = phi i1 [ true, %bb.q ], [ %.sroa.0.0.i.i.i.i, %bb.p ]
  invoke void @_RNvXNtCs2AWtUsOyxgP_3std2ioNtB2_5GuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %_RINvNtCs2AWtUsOyxgP_3std2io16append_to_stringNCNvYINtNtNtB2_8buffered9bufreader9BufReaderNtNtB4_2fs4FileENtB2_7BufRead9read_line0ECsizY4S0OBG5z_6ignore.exit.i, %bb.aj, %bb.aa
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsizY4S0OBG5z_6ignore.exit.i.i, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.cm, %bb.s ], [ %.pn.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsizY4S0OBG5z_6ignore.exit.i.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #20
          to label %common.resume unwind label %bb.at

bb.t:                                             ; preds = %_RINvNtCs2AWtUsOyxgP_3std2io16append_to_stringNCNvYINtNtNtB2_8buffered9bufreader9BufReaderNtNtB4_2fs4FileENtB2_7BufRead9read_line0ECsizY4S0OBG5z_6ignore.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !494
  br i1 %.sroa.0.0.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i64 -1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.cn = icmp eq ptr %.sroa.5.0.i.i, null
  br i1 %i.cn, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  store i64 -2, ptr %0, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsizY4S0OBG5z_6ignore.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %.body, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.co, %bb.y ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsizY4S0OBG5z_6ignore.exit: ; preds = %bb.x
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.as

bb.aa:                                            ; preds = %bb.v
  %i.cq = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %i.cr = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 10, ptr %i.e, align 4
  %i.cs = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.cr, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1)
          to label %bb.ab unwind label %bb.s

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.cs, label %bb.ac, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String3pop.exit20

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !513)
  %i.ct = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !alias.scope !513, !nonnull !3, !noundef !3 ; 2 uses
  %i.cu = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !513, !noundef !3 ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cu ; 4 uses
  %i.cw = icmp samesign eq i64 %i.cu, 0
  br i1 %i.cw, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 -1
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !514, !noundef !3
  %i.cz = icmp sgt i8 %i.cy, -1
  br i1 %i.cz, label %.thread.i, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsizY4S0OBG5z_6ignore.exit17.i.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsizY4S0OBG5z_6ignore.exit17.i.i: ; preds = %bb.ad
  %i.da = icmp ne i64 %i.cu, 1
  call void @llvm.assume(i1 %i.da)
  %i.db = getelementptr inbounds i8, ptr %i.cv, i64 -2
  %i.dc = load i8, ptr %i.db, align 1, !noalias !514, !noundef !3 ; 3 uses
  %i.dd = and i8 %i.dc, 31
  %i.de = zext nneg i8 %i.dd to i32
  %i.df = icmp slt i8 %i.dc, -64
  br i1 %i.df, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsizY4S0OBG5z_6ignore.exit19.i.i, label %bb.af

.thread.i:                                        ; preds = %bb.ad
  %i.dg = icmp sgt i64 %i.cu, -1
  call void @llvm.assume(i1 %i.dg)
  br label %bb.ai

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsizY4S0OBG5z_6ignore.exit19.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsizY4S0OBG5z_6ignore.exit17.i.i
  %i.dh = icmp ne i64 %i.cu, 2
  call void @llvm.assume(i1 %i.dh)
  %i.di = getelementptr inbounds i8, ptr %i.cv, i64 -3
  %i.dj = load i8, ptr %i.di, align 1, !noalias !514, !noundef !3 ; 3 uses
  %i.dk = and i8 %i.dj, 15
  %i.dl = zext nneg i8 %i.dk to i32
  %i.dm = icmp slt i8 %i.dj, -64
  br i1 %i.dm, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsizY4S0OBG5z_6ignore.exit21.i.i, label %bb.ae

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsizY4S0OBG5z_6ignore.exit21.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsizY4S0OBG5z_6ignore.exit19.i.i
  %i.dn = icmp ne i64 %i.cu, 3
  call void @llvm.assume(i1 %i.dn)
  %i.do = getelementptr inbounds i8, ptr %i.cv, i64 -4
  %i.dp = load i8, ptr %i.do, align 1, !noalias !514, !noundef !3
  %i.dq = and i8 %i.dp, 7
  %i.dr = zext nneg i8 %i.dq to i32
  %i.ds = shl nuw nsw i32 %i.dr, 6
  %i.dt = and i8 %i.dj, 63
  %i.du = zext nneg i8 %i.dt to i32
  %i.dv = or disjoint i32 %i.ds, %i.du
  br label %bb.ae

end_hunk_0
