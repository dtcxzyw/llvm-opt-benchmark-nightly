Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_od-e8a75ca9228cc4af.uu_od.9ae3888c10d230e2-cgu.0?download=true
inline.NumInlined: 1209
inline.NumDeleted: 626
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvMCsdit6BuOJVAc_5uu_odNtB2_9OdOptions3new:bb.a
  %i.br = alloca [16 x i8], align 8               ; 6 uses
  %i.bs = alloca [24 x i8], align 8               ; 13 uses
  %i.bt = alloca [24 x i8], align 8               ; 7 uses
  %i.bu = alloca [16 x i8], align 8               ; 5 uses
  %i.bv = alloca [16 x i8], align 8               ; 5 uses
  %i.bw = alloca [8 x i8], align 8                ; 4 uses
  %i.bx = alloca [8 x i8], align 8                ; 6 uses
  %i.by = alloca [24 x i8], align 8               ; 8 uses
  %i.bz = alloca [24 x i8], align 8               ; 5 uses
  %i.ca = alloca [16 x i8], align 8               ; 6 uses
  %i.cb = alloca [16 x i8], align 8               ; 6 uses
  %i.cc = alloca [32 x i8], align 8               ; 7 uses
  %i.cd = alloca [24 x i8], align 8               ; 6 uses
  %i.ce = alloca [16 x i8], align 8               ; 6 uses
  %i.cf = alloca [16 x i8], align 8               ; 6 uses
  %i.cg = alloca [24 x i8], align 8               ; 6 uses
  %i.ch = alloca [24 x i8], align 8               ; 13 uses
  %i.ci = alloca [32 x i8], align 8               ; 7 uses
  %i.cj = alloca [24 x i8], align 8               ; 11 uses
  %i.ck = alloca [48 x i8], align 8               ; 64 uses
  %i.cl = alloca [24 x i8], align 8               ; 7 uses
  %i.cm = alloca [24 x i8], align 8               ; 8 uses
  %i.cn = alloca [24 x i8], align 8               ; 6 uses
  %i.co = alloca [16 x i8], align 8               ; 6 uses
  %i.cp = alloca [24 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.be, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 6) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store ptr @61, ptr %i.at, align 8, !noalias !1578
  %i.cq = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 6, ptr %i.cq, align 8, !noalias !1578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !1578
  %i.cr = load i64, ptr %i.be, align 8, !range !7, !alias.scope !1577, !noalias !1579, !noundef !5
  %.not.i = icmp eq i64 %i.cr, 2
  br i1 %.not.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.be, i64 40, i1 false), !noalias !1579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1578
  store ptr %i.at, ptr %i.ar, align 8, !noalias !1578
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsdit6BuOJVAc_5uu_od, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1578
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.as, ptr %i.cs, align 8, !noalias !1578
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1578
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #30, !noalias !1577
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit: ; preds = %bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !1577, !noalias !1579, !align !9, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %.not = icmp eq ptr %i.cu, null
  br i1 %.not, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !5
  switch i64 %i.cy, label %bb.f [
    i64 6, label %bb.d
    i64 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.cz = load i32, ptr %i.cw, align 1
  %i.da = xor i32 %i.cz, 1953786220
  %i.db = getelementptr i8, ptr %i.cw, i64 4
  %i.dc = load i16, ptr %i.db, align 1
  %i.dd = zext i16 %i.dc to i32
  %i.de = xor i32 %i.dd, 25964
  %i.df = or i32 %i.da, %i.de
  %i.dg = icmp ne i32 %i.df, 0
  %i.dh = zext i1 %i.dg to i32
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.aa, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.dj = load i16, ptr %i.cw, align 1
  %i.dk = xor i16 %i.dj, 26978
  %i.dl = getelementptr i8, ptr %i.cw, i64 2
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = zext i8 %i.dm to i16
  %i.do = xor i16 %i.dn, 103
  %i.dp = or i16 %i.dk, %i.do
  %i.dq = icmp ne i16 %i.dp, 0
  %i.dr = zext i1 %i.dq to i32
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.aa, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  store i64 0, ptr %i.cp, align 8
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4114.0..sroa_idx, align 8
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 0, ptr %.sroa.5115.0..sroa_idx, align 8
  %i.dt = load ptr, ptr %i.cv, align 8, !nonnull !5, !noundef !5
  %i.du = load i64, ptr %i.cx, align 8, !noundef !5 ; 16 uses
  %.not.i196 = icmp slt i64 %i.du, 0
  br i1 %.not.i196, label %bb.h, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.g
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1580
  %i.dw = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.du, i64 noundef range(i64 1, 9) 1) #29, !noalias !1580 ; 18 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.f, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4382.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.f ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4382.0.ph, i64 %i.du) #32
  unreachable

bb.i:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dw, ptr nonnull align 1 %i.dt, i64 %i.du, i1 false)
  %cond501 = icmp eq i64 %i.du, 1
  %i.dy = load i8, ptr %i.dw, align 1, !alias.scope !1581, !noalias !1582 ; 2 uses
  br i1 %cond501, label %bb.j, label %thread-pre-split.i

bb.j:                                             ; preds = %bb.i
  switch i8 %i.dy, label %bb.q [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i:                               ; preds = %bb.i
  switch i8 %i.dy, label %bb.q [
    i8 43, label %bb.k
    i8 45, label %bb.l
  ]

bb.k:                                             ; preds = %thread-pre-split.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  %i.ea = add nsw i64 %i.du, -1
  br label %bb.q

bb.l:                                             ; preds = %thread-pre-split.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 1 ; 2 uses
  %i.ec = add nsw i64 %i.du, -1                   ; 2 uses
  %i.ed = icmp samesign ult i64 %i.du, 17
  br i1 %i.ed, label %.lr.ph141.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.o
  %.sroa.0.1136.i = phi ptr [ %i.ee, %bb.o ], [ %i.eb, %bb.l ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.ef, %bb.o ], [ %i.ec, %bb.l ]
  %.sroa.084.0134.i = phi i64 [ %i.eq, %bb.o ], [ 0, %bb.l ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.ef = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.eg = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.eh = extractvalue { i64, i1 } %i.eg, 0
  %i.ei = extractvalue { i64, i1 } %i.eg, 1
  br i1 %i.ei, label %.thread, label %bb.m, !prof !12

bb.m:                                             ; preds = %.lr.ph.i
  %i.ej = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !1581, !noalias !1582, !noundef !5
  %i.ek = zext i8 %i.ej to i32
  %i.el = add nsw i32 %i.ek, -48                  ; 2 uses
  %i.em = icmp ult i32 %i.el, 10
  br i1 %i.em, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.en = zext nneg i32 %i.el to i64
  %i.eo = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.eh, i64 %i.en) ; 2 uses
  %i.ep = extractvalue { i64, i1 } %i.eo, 1
  br i1 %i.ep, label %.thread, label %bb.o, !prof !12

bb.o:                                             ; preds = %bb.n
  %i.eq = extractvalue { i64, i1 } %i.eo, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.ef, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %bb.l, %bb.p
  %.sroa.0.2140.i = phi ptr [ %i.ex, %bb.p ], [ %i.eb, %bb.l ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.ew, %bb.p ], [ %i.ec, %bb.l ]
  %.sroa.084.2138.i = phi i64 [ %i.ez, %bb.p ], [ 0, %bb.l ]
  %i.er = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !1581, !noalias !1582, !noundef !5
  %i.es = zext i8 %i.er to i32
  %i.et = add nsw i32 %i.es, -48                  ; 2 uses
  %i.eu = icmp ult i32 %i.et, 10
  br i1 %i.eu, label %bb.p, label %.thread

bb.p:                                             ; preds = %.lr.ph141.i
  %i.ev = mul i64 %.sroa.084.2138.i, 10
  %i.ew = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.ey = zext nneg i32 %i.et to i64
  %i.ez = sub i64 %i.ev, %i.ey                    ; 2 uses
  %.not103.i = icmp eq i64 %i.ew, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.q:                                             ; preds = %bb.j, %bb.k, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.ea, %bb.k ], [ %i.du, %thread-pre-split.i ], [ %i.du, %bb.j ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.dz, %bb.k ], [ %i.dw, %thread-pre-split.i ], [ %i.dw, %bb.j ] ; 2 uses
  %i.fa = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.fa, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.q
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.q, %bb.t
  %.sroa.0.3145.i = phi ptr [ %i.fb, %bb.t ], [ %.sroa.0.0.i, %bb.q ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.fc, %bb.t ], [ %.sroa.26.0.i, %bb.q ]
  %.sroa.084.3143.i = phi i64 [ %i.fn, %bb.t ], [ 0, %bb.q ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.fc = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.fd = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.fe = extractvalue { i64, i1 } %i.fd, 0
  %i.ff = extractvalue { i64, i1 } %i.fd, 1
  br i1 %i.ff, label %.thread, label %bb.r, !prof !12

bb.r:                                             ; preds = %.preheader111.i
  %i.fg = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !1581, !noalias !1582, !noundef !5
  %i.fh = zext i8 %i.fg to i32
  %i.fi = add nsw i32 %i.fh, -48                  ; 2 uses
  %i.fj = icmp ult i32 %i.fi, 10
  br i1 %i.fj, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.fk = zext nneg i32 %i.fi to i64
  %i.fl = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.fe, i64 %i.fk) ; 2 uses
  %i.fm = extractvalue { i64, i1 } %i.fl, 1
  br i1 %i.fm, label %.thread, label %bb.t, !prof !12

bb.t:                                             ; preds = %bb.s
  %i.fn = extractvalue { i64, i1 } %i.fl, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.fc, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.u
  %.sroa.0.4149.i = phi ptr [ %i.fu, %bb.u ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.ft, %bb.u ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.fw, %bb.u ], [ 0, %.preheader.i ]
  %i.fo = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !1581, !noalias !1582, !noundef !5
  %i.fp = zext i8 %i.fo to i32
  %i.fq = add nsw i32 %i.fp, -48                  ; 2 uses
  %i.fr = icmp ult i32 %i.fq, 10
  br i1 %i.fr, label %bb.u, label %.thread

bb.u:                                             ; preds = %.lr.ph150.i
  %i.fs = mul i64 %.sroa.084.4147.i, 10
  %i.ft = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.fv = zext nneg i32 %i.fq to i64
  %i.fw = add i64 %i.fs, %i.fv                    ; 2 uses
  %.not105.i = icmp eq i64 %i.ft, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.thread:                                          ; preds = %.lr.ph.i, %bb.n, %bb.m, %.lr.ph141.i, %.preheader111.i, %bb.r, %bb.s, %.lr.ph150.i, %bb.j, %bb.j, %bb.g
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.g ], [ %i.dw, %.preheader111.i ], [ %i.dw, %.lr.ph150.i ], [ %i.dw, %bb.j ], [ %i.dw, %.lr.ph141.i ], [ %i.dw, %bb.j ], [ %i.dw, %bb.s ], [ %i.dw, %bb.r ], [ %i.dw, %bb.m ], [ %i.dw, %bb.n ], [ %i.dw, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.co, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.du) #28
  %i.fx = load i8, ptr %i.co, align 8, !range !24, !noundef !5
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.x, label %bb.y

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.o, %bb.p, %bb.t, %bb.u, %.preheader.i
  %.sroa.15349.0 = phi i64 [ %i.fn, %bb.t ], [ %i.ez, %bb.p ], [ %i.fw, %bb.u ], [ 0, %.preheader.i ], [ %i.eq, %bb.o ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 6, i64 noundef %.sroa.15349.0) #29
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.fz = phi ptr [ %.ph, %bb.y ], [ %i.dw, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cm) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  %i.ga = icmp eq i64 %i.du, 0
  br i1 %i.ga, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fz, i64 noundef %i.du, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1583
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit

bb.x:                                             ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  store i64 %i.du, ptr %i.cn, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %.ph, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i64 %i.du, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 6, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cn) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cm) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit

bb.y:                                             ; preds = %.thread
  %i.gb = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.gc = load double, ptr %i.gb, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 6, double noundef %i.gc) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.v

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit: ; preds = %bb.w, %bb.v, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1584
  %i.gd = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #29, !noalias !1584 ; 4 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.z, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !12

bb.z:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #32, !noalias !1584
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  %.sroa.4386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  store i32 1, ptr %.sroa.4386.0..sroa_idx, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gd, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @27, ptr %i.gg, align 8
  store i64 2, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECsdit6BuOJVAc_5uu_od.exit

bb.aa:                                            ; preds = %bb.d, %bb.e, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit
  %.sroa.0.1 = phi i8 [ 2, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit ], [ 0, %bb.d ], [ 1, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  call fastcc void @_RNvCsdit6BuOJVAc_5uu_od18parse_bytes_option(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 10, i32 noundef 106) #29
  %i.gh = load i64, ptr %i.cl, align 8, !range !15, !noundef !5
  %i.gi = trunc nuw i64 %i.gh to i1
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  br i1 %i.gi, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gl = load <2 x ptr>, ptr %i.gj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  store <2 x ptr> %i.gl, ptr %i.gk, align 8
  store i64 2, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECsdit6BuOJVAc_5uu_od.exit

bb.ac:                                            ; preds = %bb.aa
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.gn = load i64, ptr %i.gj, align 8, !range !15, !noundef !5
  %i.go = load i64, ptr %i.gm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  %i.gp = trunc nuw i64 %i.gn to i1
  %. = select i1 %i.gp, i64 %i.go, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1585)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1585
  call void @_RNvXNtCsdit6BuOJVAc_5uu_od12parse_inputsNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesNtB2_15CommandLineOpts6inputs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aq, ptr noundef nonnull readonly %1) #31, !noalias !1585
  %i.gq = tail call noundef i8 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches12value_source(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 11) #29, !noalias !1586
  %i.gr = icmp eq i8 %i.gq, 2
  br i1 %i.gr, label %bb.ad, label %_RNvXNtCsdit6BuOJVAc_5uu_od12parse_inputsNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesNtB2_15CommandLineOpts12opts_present.exit.i

_RNvXNtCsdit6BuOJVAc_5uu_od12parse_inputsNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesNtB2_15CommandLineOpts12opts_present.exit.i: ; preds = %bb.ac
  %i.gs = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 3 uses
  %i.gt = load i64, ptr %i.gs, align 8, !noalias !1585, !noundef !5 ; 10 uses
  %i.gu = icmp ult i64 %i.gt, 576460752303423488
  tail call void @llvm.assume(i1 %i.gu)
  %.off.i = add nsw i64 %i.gt, -1                 ; 2 uses
  %switch.i = icmp ult i64 %.off.i, 2
  br i1 %switch.i, label %bb.cg, label %thread-pre-split.i198

bb.ad:                                            ; preds = %bb.ac
  %i.gv = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !noalias !1585, !nonnull !5, !noundef !5 ; 14 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.gy = load i64, ptr %i.gx, align 8, !noalias !1585, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1588)
  switch i64 %i.gy, label %bb.bm [
    i64 0, label %bb.ae
    i64 1, label %bb.ag
    i64 2, label %bb.ah
    i64 3, label %bb.ai
  ]

bb.ae:                                            ; preds = %bb.ad
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1589
  %i.gz = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #29, !noalias !1589 ; 5 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %bb.af, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i, !prof !12

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #32, !noalias !1589
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %bb.ae
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1590
  %i.hb = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #29, !noalias !1590 ; 3 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %bb.aj, label %bb.ak

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1589
  %i.hd = load ptr, ptr %i.gw, align 8, !alias.scope !1588, !noalias !1591, !nonnull !5, !noundef !5 ; 2 uses
  %i.he = getelementptr i8, ptr %i.gw, i64 8
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !1588, !noalias !1591, !noundef !5 ; 8 uses
  call fastcc void @_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs20parse_offset_operand(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hd, i64 noundef %i.hf) #29, !noalias !1589
  %i.hg = load i64, ptr %i.aj, align 8, !range !14, !noalias !1589, !noundef !5 ; 3 uses
  %.not132.i.i = icmp eq i64 %i.hg, -1
  br i1 %.not132.i.i, label %bb.aq, label %bb.al

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1589
  %i.hh = load ptr, ptr %i.gw, align 8, !alias.scope !1588, !noalias !1591, !nonnull !5, !noundef !5 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !alias.scope !1588, !noalias !1591, !noundef !5 ; 8 uses
  call fastcc void @_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs20parse_offset_operand(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hh, i64 noundef %i.hj) #29, !noalias !1589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1589
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !alias.scope !1588, !noalias !1591, !nonnull !5, !noundef !5
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.hn = load i64, ptr %i.hm, align 8, !alias.scope !1588, !noalias !1591, !noundef !5
  call fastcc void @_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs20parse_offset_operand(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hl, i64 noundef %i.hn) #29, !noalias !1589
  %.sroa.0173.0.copyload.i.i = load i64, ptr %i.ai, align 8, !noalias !1589 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1589 ; 2 uses
  %.sroa.7174.24.copyload.i.i = load i64, ptr %i.ah, align 8, !noalias !1589 ; 2 uses
  %.sroa.11.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.ho = load <2 x i64>, ptr %.sroa.11.24..sroa_idx.i.i, align 8, !noalias !1589
  %.sroa.11.24.copyload.i.i = load i64, ptr %.sroa.11.24..sroa_idx.i.i, align 8, !noalias !1589 ; 2 uses
  %.not128.i.i = icmp eq i64 %.sroa.0173.0.copyload.i.i, -1
  %.not129.i.i = icmp eq i64 %.sroa.7174.24.copyload.i.i, -1 ; 2 uses
  %or.cond.i.i = select i1 %.not128.i.i, i1 %.not129.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.au, label %bb.at

bb.ai:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1589
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !alias.scope !1588, !noalias !1591, !nonnull !5, !noundef !5
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !1588, !noalias !1591, !noundef !5
  call fastcc void @_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs20parse_offset_operand(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hq, i64 noundef %i.hs) #29, !noalias !1589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1589
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gw, i64 32 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !alias.scope !1588, !noalias !1591, !nonnull !5, !noundef !5
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !1588, !noalias !1591, !noundef !5
  call fastcc void @_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs20parse_offset_operand(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hu, i64 noundef %i.hw) #29, !noalias !1589
  %.sroa.0183.0.copyload.i.i = load i64, ptr %i.ae, align 8, !noalias !1589 ; 2 uses
  %.sroa.5185.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.5185.0.copyload.i.i = load i64, ptr %.sroa.5185.0..sroa_idx.i.i, align 8, !noalias !1589 ; 2 uses
  %.sroa.6191.24.copyload.i.i = load i64, ptr %i.ad, align 8, !noalias !1589 ; 4 uses
  %.sroa.11194.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.hx = load <2 x i64>, ptr %.sroa.11194.24..sroa_idx.i.i, align 8, !noalias !1589
  %.sroa.11194.24.copyload.i.i = load i64, ptr %.sroa.11194.24..sroa_idx.i.i, align 8, !noalias !1589 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.0183.0.copyload.i.i, -1
  br i1 %.not.i.i, label %bb.be, label %.split118.i.i

bb.aj:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #32, !noalias !1589
  unreachable

bb.ak:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i
  store i8 45, ptr %i.hb, align 1, !noalias !1589
  store i64 1, ptr %i.gz, align 8, !noalias !1589
  %.sroa.445.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %i.hb, ptr %.sroa.445.0..sroa_idx.i.i, align 8, !noalias !1589
  %.sroa.546.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store i64 1, ptr %.sroa.546.0..sroa_idx.i.i, align 8, !noalias !1589
end_hunk_0
begin_hunk_1_@_RNvMCsdit6BuOJVAc_5uu_odNtB2_9OdOptions3new:bb.a
_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i.i.i: ; preds = %bb.it, %bb.is, %bb.ir, %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1715
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit.i.thread

bb.iu:                                            ; preds = %bb.ip
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #30
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit.i.thread: ; preds = %bb.iq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1715
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdit6BuOJVAc_5uu_od.exit

bb.iv:                                            ; preds = %bb.ip
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.agb = ptrtoint ptr %i.aft to i64             ; 2 uses
  %i.agc = and i64 %i.agb, 3
  switch i64 %i.agc, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i243
    i64 3, label %bb.iw
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i243
    i64 1, label %bb.ix
  ], !prof !13

bb.iw:                                            ; preds = %bb.iv
  %i.agd = icmp ult ptr %i.aft, inttoptr (i64 188978561024 to ptr)
  %i.age = and i64 %i.agb, 1095216660480
  %i.agf = icmp ne i64 %i.age, 1095216660480
  call void @llvm.assume(i1 %i.agd)
  call void @llvm.assume(i1 %i.agf)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i243

bb.ix:                                            ; preds = %bb.iv
  %i.agg = getelementptr i8, ptr %i.aft, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.agg) ]
  %i.agh = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.agg, ptr %i.agh, align 8, !alias.scope !1717
  store i8 3, ptr %i.e, align 8, !alias.scope !1717
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.agh) #29
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i243

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i243: ; preds = %bb.ix, %bb.iw, %bb.iv, %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdit6BuOJVAc_5uu_od.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdit6BuOJVAc_5uu_od.exit: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit.i.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  store i64 0, ptr %i.bs, align 8
  %.sroa.4150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4150.0..sroa_idx, align 8
  %.sroa.5151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 0, ptr %.sroa.5151.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.agi = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %.sroa.080.0, ptr noalias nofree noundef nonnull %i.ay, i64 noundef 20) #29 ; 2 uses
  %i.agj = extractvalue { ptr, i64 } %i.agi, 0
  %i.agk = extractvalue { ptr, i64 } %i.agi, 1    ; 16 uses
  %.not.i245 = icmp slt i64 %i.agk, 0
  br i1 %.not.i245, label %bb.ja, label %bb.iy, !prof !11

bb.iy:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdit6BuOJVAc_5uu_od.exit
  %i.agl = icmp eq i64 %i.agk, 0
  br i1 %i.agl, label %.thread457, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i246

.thread457:                                       ; preds = %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %.loopexit510

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i246: ; preds = %bb.iy
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1718
  %i.agm = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.agk, i64 noundef range(i64 1, 9) 1) #29, !noalias !1718 ; 18 uses
  %i.agn = icmp eq ptr %i.agm, null
  br i1 %i.agn, label %bb.ja, label %bb.jb

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsdit6BuOJVAc_5uu_od13parse_formats23ParsedFormatterItemInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMBU_NtBU_9OdOptions3news2_0EBU_.exit.thread.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsdit6BuOJVAc_5uu_od13parse_formats23ParsedFormatterItemInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMBU_NtBU_9OdOptions3news2_0EBU_.exit.thread, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsdit6BuOJVAc_5uu_od13parse_formats23ParsedFormatterItemInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMBU_NtBU_9OdOptions3news2_0EBU_.exit.thread.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i237.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.afj, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsdit6BuOJVAc_5uu_od13parse_formats23ParsedFormatterItemInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMBU_NtBU_9OdOptions3news2_0EBU_.exit.thread.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 1, %.preheader.preheader ], [ %..i.i.i.3, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsdit6BuOJVAc_5uu_od13parse_formats23ParsedFormatterItemInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMBU_NtBU_9OdOptions3news2_0EBU_.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod883 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod883)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i237.epil = phi i64 [ %i.agq, %.preheader.epil ], [ %.sroa.04.0.i237.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %..i.i.i.epil, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.ago = getelementptr inbounds nuw [40 x i8], ptr %.sroa.4131.0.copyload, i64 %.sroa.04.0.i237.epil
  %i.agp = getelementptr i8, ptr %i.ago, i64 16
  %.val.i238.epil = load i64, ptr %i.agp, align 8, !noundef !5
  %..i.i.i.epil = call noundef i64 @llvm.umax.i64(i64 %.val.i238.epil, i64 %.sroa.02.0.i.epil) ; 2 uses
  %i.agq = add nuw i64 %.sroa.04.0.i237.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsdit6BuOJVAc_5uu_od13parse_formats23ParsedFormatterItemInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMBU_NtBU_9OdOptions3news2_0EBU_.exit.thread, label %.preheader.epil, !llvm.loop !1546

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsdit6BuOJVAc_5uu_od13parse_formats23ParsedFormatterItemInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMBU_NtBU_9OdOptions3news2_0EBU_.exit.thread: ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsdit6BuOJVAc_5uu_od13parse_formats23ParsedFormatterItemInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMBU_NtBU_9OdOptions3news2_0EBU_.exit.thread.loopexit.unr-lcssa, %.preheader.epil, %bb.il
  %.sroa.0.0.i240445 = phi i64 [ 1, %bb.il ], [ %..i.i.i.3, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsdit6BuOJVAc_5uu_od13parse_formats23ParsedFormatterItemInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMBU_NtBU_9OdOptions3news2_0EBU_.exit.thread.loopexit.unr-lcssa ], [ %..i.i.i.epil, %.preheader.epil ] ; 3 uses
  %i.agr = urem i64 %.sroa.080.0, %.sroa.0.0.i240445
  %i.ags = icmp eq i64 %i.agr, 0
  br i1 %i.ags, label %bb.iz, label %bb.io

bb.iz:                                            ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsdit6BuOJVAc_5uu_od13parse_formats23ParsedFormatterItemInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMBU_NtBU_9OdOptions3news2_0EBU_.exit.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit
  %.sroa.080.1 = phi i64 [ %.sroa.0.0.i240445, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit ], [ %.sroa.080.0, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCsdit6BuOJVAc_5uu_od13parse_formats23ParsedFormatterItemInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMBU_NtBU_9OdOptions3news2_0EBU_.exit.thread ]
  %i.agt = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 17) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call fastcc void @_RNvCsdit6BuOJVAc_5uu_od18parse_bytes_option(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 10, i32 noundef 78) #29
  %i.agu = load i64, ptr %i.bl, align 8, !range !15, !noundef !5
  %i.agv = trunc nuw i64 %i.agu to i1
  %i.agw = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  br i1 %i.agv, label %bb.kx, label %bb.ky

bb.ja:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdit6BuOJVAc_5uu_od.exit, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i246
  %.sroa.4406.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i246 ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdit6BuOJVAc_5uu_od.exit ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4406.0.ph, i64 %i.agk) #32
  unreachable

bb.jb:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i246
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.agm, ptr align 1 %i.agj, i64 %i.agk, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %cond500 = icmp eq i64 %i.agk, 1
  %i.agx = load i8, ptr %i.agm, align 1, !alias.scope !1719, !noalias !1720 ; 2 uses
  br i1 %cond500, label %bb.jc, label %thread-pre-split.i280

bb.jc:                                            ; preds = %bb.jb
  switch i8 %i.agx, label %bb.jj [
    i8 43, label %.loopexit510
    i8 45, label %.loopexit510
  ]

thread-pre-split.i280:                            ; preds = %bb.jb
  switch i8 %i.agx, label %bb.jj [
    i8 43, label %bb.jd
    i8 45, label %bb.je
  ]

bb.jd:                                            ; preds = %thread-pre-split.i280
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agm, i64 1
  %i.agz = add nsw i64 %i.agk, -1
  br label %bb.jj

bb.je:                                            ; preds = %thread-pre-split.i280
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agm, i64 1 ; 2 uses
  %i.ahb = add nsw i64 %i.agk, -1                 ; 2 uses
  %i.ahc = icmp samesign ult i64 %i.agk, 17
  br i1 %i.ahc, label %.lr.ph141.i260, label %.lr.ph.i250

.lr.ph.i250:                                      ; preds = %bb.je, %bb.jh
  %.sroa.0.1136.i251 = phi ptr [ %i.ahd, %bb.jh ], [ %i.aha, %bb.je ] ; 2 uses
  %.sroa.26.1135.i252 = phi i64 [ %i.ahe, %bb.jh ], [ %i.ahb, %bb.je ]
  %.sroa.084.0134.i253 = phi i64 [ %i.ahp, %bb.jh ], [ 0, %bb.je ]
  %i.ahd = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i251, i64 1
  %i.ahe = add nsw i64 %.sroa.26.1135.i252, -1    ; 2 uses
  %i.ahf = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i253, i64 10) ; 2 uses
  %i.ahg = extractvalue { i64, i1 } %i.ahf, 0
  %i.ahh = extractvalue { i64, i1 } %i.ahf, 1
  br i1 %i.ahh, label %.loopexit510, label %bb.jf, !prof !12

bb.jf:                                            ; preds = %.lr.ph.i250
  %i.ahi = load i8, ptr %.sroa.0.1136.i251, align 1, !alias.scope !1719, !noalias !1720, !noundef !5
  %i.ahj = zext i8 %i.ahi to i32
  %i.ahk = add nsw i32 %i.ahj, -48                ; 2 uses
  %i.ahl = icmp ult i32 %i.ahk, 10
  br i1 %i.ahl, label %bb.jg, label %.loopexit510

bb.jg:                                            ; preds = %bb.jf
  %i.ahm = zext nneg i32 %i.ahk to i64
  %i.ahn = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ahg, i64 %i.ahm) ; 2 uses
  %i.aho = extractvalue { i64, i1 } %i.ahn, 1
  br i1 %i.aho, label %.loopexit510, label %bb.jh, !prof !12

bb.jh:                                            ; preds = %bb.jg
  %i.ahp = extractvalue { i64, i1 } %i.ahn, 0     ; 2 uses
  %.not102.i255 = icmp eq i64 %i.ahe, 0
  br i1 %.not102.i255, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit282, label %.lr.ph.i250

.lr.ph141.i260:                                   ; preds = %bb.je, %bb.ji
  %.sroa.0.2140.i261 = phi ptr [ %i.ahw, %bb.ji ], [ %i.aha, %bb.je ] ; 2 uses
  %.sroa.26.2139.i262 = phi i64 [ %i.ahv, %bb.ji ], [ %i.ahb, %bb.je ]
  %.sroa.084.2138.i263 = phi i64 [ %i.ahy, %bb.ji ], [ 0, %bb.je ]
  %i.ahq = load i8, ptr %.sroa.0.2140.i261, align 1, !alias.scope !1719, !noalias !1720, !noundef !5
  %i.ahr = zext i8 %i.ahq to i32
  %i.ahs = add nsw i32 %i.ahr, -48                ; 2 uses
  %i.aht = icmp ult i32 %i.ahs, 10
  br i1 %i.aht, label %bb.ji, label %.loopexit510

bb.ji:                                            ; preds = %.lr.ph141.i260
  %i.ahu = mul i64 %.sroa.084.2138.i263, 10
  %i.ahv = add nsw i64 %.sroa.26.2139.i262, -1    ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i261, i64 1
  %i.ahx = zext nneg i32 %i.ahs to i64
  %i.ahy = sub i64 %i.ahu, %i.ahx                 ; 2 uses
  %.not103.i264 = icmp eq i64 %i.ahv, 0
  br i1 %.not103.i264, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit282, label %.lr.ph141.i260

bb.jj:                                            ; preds = %bb.jc, %bb.jd, %thread-pre-split.i280
  %.sroa.26.0.i265 = phi i64 [ %i.agz, %bb.jd ], [ %i.agk, %thread-pre-split.i280 ], [ %i.agk, %bb.jc ] ; 4 uses
  %.sroa.0.0.i266 = phi ptr [ %i.agy, %bb.jd ], [ %i.agm, %thread-pre-split.i280 ], [ %i.agm, %bb.jc ] ; 2 uses
  %i.ahz = icmp samesign ult i64 %.sroa.26.0.i265, 16
  br i1 %i.ahz, label %.preheader.i273, label %.preheader111.i267

.preheader.i273:                                  ; preds = %bb.jj
  %.not105146.i274 = icmp eq i64 %.sroa.26.0.i265, 0
  br i1 %.not105146.i274, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit282, label %.lr.ph150.i275

.preheader111.i267:                               ; preds = %bb.jj, %bb.jm
  %.sroa.0.3145.i268 = phi ptr [ %i.aia, %bb.jm ], [ %.sroa.0.0.i266, %bb.jj ] ; 2 uses
  %.sroa.26.3144.i269 = phi i64 [ %i.aib, %bb.jm ], [ %.sroa.26.0.i265, %bb.jj ]
  %.sroa.084.3143.i270 = phi i64 [ %i.aim, %bb.jm ], [ 0, %bb.jj ]
  %i.aia = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i268, i64 1
  %i.aib = add nsw i64 %.sroa.26.3144.i269, -1    ; 2 uses
  %i.aic = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i270, i64 10) ; 2 uses
  %i.aid = extractvalue { i64, i1 } %i.aic, 0
  %i.aie = extractvalue { i64, i1 } %i.aic, 1
  br i1 %i.aie, label %.loopexit510, label %bb.jk, !prof !12

bb.jk:                                            ; preds = %.preheader111.i267
  %i.aif = load i8, ptr %.sroa.0.3145.i268, align 1, !alias.scope !1719, !noalias !1720, !noundef !5
  %i.aig = zext i8 %i.aif to i32
  %i.aih = add nsw i32 %i.aig, -48                ; 2 uses
  %i.aii = icmp ult i32 %i.aih, 10
  br i1 %i.aii, label %bb.jl, label %.loopexit510

bb.jl:                                            ; preds = %bb.jk
  %i.aij = zext nneg i32 %i.aih to i64
  %i.aik = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aid, i64 %i.aij) ; 2 uses
  %i.ail = extractvalue { i64, i1 } %i.aik, 1
  br i1 %i.ail, label %.loopexit510, label %bb.jm, !prof !12

bb.jm:                                            ; preds = %bb.jl
  %i.aim = extractvalue { i64, i1 } %i.aik, 0     ; 2 uses
  %.not104.i272 = icmp eq i64 %i.aib, 0
  br i1 %.not104.i272, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit282, label %.preheader111.i267

.lr.ph150.i275:                                   ; preds = %.preheader.i273, %bb.jn
  %.sroa.0.4149.i276 = phi ptr [ %i.ait, %bb.jn ], [ %.sroa.0.0.i266, %.preheader.i273 ] ; 2 uses
  %.sroa.26.4148.i277 = phi i64 [ %i.ais, %bb.jn ], [ %.sroa.26.0.i265, %.preheader.i273 ]
  %.sroa.084.4147.i278 = phi i64 [ %i.aiv, %bb.jn ], [ 0, %.preheader.i273 ]
  %i.ain = load i8, ptr %.sroa.0.4149.i276, align 1, !alias.scope !1719, !noalias !1720, !noundef !5
  %i.aio = zext i8 %i.ain to i32
  %i.aip = add nsw i32 %i.aio, -48                ; 2 uses
  %i.aiq = icmp ult i32 %i.aip, 10
  br i1 %i.aiq, label %bb.jn, label %.loopexit510

bb.jn:                                            ; preds = %.lr.ph150.i275
  %i.air = mul i64 %.sroa.084.4147.i278, 10
  %i.ais = add nsw i64 %.sroa.26.4148.i277, -1    ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i276, i64 1
  %i.aiu = zext nneg i32 %i.aip to i64
  %i.aiv = add i64 %i.air, %i.aiu                 ; 2 uses
  %.not105.i279 = icmp eq i64 %i.ais, 0
  br i1 %.not105.i279, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit282, label %.lr.ph150.i275

.loopexit510:                                     ; preds = %.lr.ph.i250, %bb.jg, %bb.jf, %.lr.ph141.i260, %.preheader111.i267, %bb.jk, %bb.jl, %.lr.ph150.i275, %bb.jc, %bb.jc, %.thread457
  %.ph465 = phi ptr [ %i.agm, %.preheader111.i267 ], [ %i.agm, %.lr.ph141.i260 ], [ %i.agm, %.lr.ph150.i275 ], [ %i.agm, %bb.jc ], [ inttoptr (i64 1 to ptr), %.thread457 ], [ %i.agm, %bb.jc ], [ %i.agm, %bb.jl ], [ %i.agm, %bb.jk ], [ %i.agm, %bb.jf ], [ %i.agm, %bb.jg ], [ %i.agm, %.lr.ph.i250 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph465, i64 noundef %i.agk) #28
  %i.aiw = load i8, ptr %i.br, align 8, !range !24, !noundef !5
  %i.aix = trunc nuw i8 %i.aiw to i1
  br i1 %i.aix, label %bb.jq, label %bb.jr

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit282: ; preds = %bb.jh, %bb.ji, %bb.jm, %bb.jn, %.preheader.i273
  %.sroa.15365.0 = phi i64 [ %i.aim, %bb.jm ], [ %i.ahy, %bb.ji ], [ %i.aiv, %bb.jn ], [ 0, %.preheader.i273 ], [ %i.ahp, %bb.jh ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 5, i64 noundef %.sroa.15365.0) #29
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jr, %bb.jq, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit282
  %i.aiy = phi ptr [ %.ph465, %bb.jq ], [ %.ph465, %bb.jr ], [ %i.agm, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit282 ]
  %.sroa.0112.0.not = phi i1 [ true, %bb.jq ], [ false, %bb.jr ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit282 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %i.aiz = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %.sroa.0.0.i240445, ptr noalias nofree noundef nonnull %i.ax, i64 noundef 20) #29 ; 2 uses
  %i.aja = extractvalue { ptr, i64 } %i.aiz, 0
  %i.ajb = extractvalue { ptr, i64 } %i.aiz, 1    ; 16 uses
  %.not.i283 = icmp slt i64 %i.ajb, 0
  br i1 %.not.i283, label %bb.js, label %bb.jp, !prof !11

bb.jp:                                            ; preds = %bb.jo
  %i.ajc = icmp eq i64 %i.ajb, 0
  br i1 %i.ajc, label %.thread484, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i284

.thread484:                                       ; preds = %bb.jp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %.loopexit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i284: ; preds = %bb.jp
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1721
  %i.ajd = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ajb, i64 noundef range(i64 1, 9) 1) #29, !noalias !1721 ; 18 uses
  %i.aje = icmp eq ptr %i.ajd, null
  br i1 %i.aje, label %bb.js, label %bb.jt

bb.jq:                                            ; preds = %.loopexit510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  store i64 %i.agk, ptr %i.bq, align 8
  %.sroa.5360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %.ph465, ptr %.sroa.5360.0..sroa_idx, align 8
  %.sroa.8361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i64 %i.agk, ptr %.sroa.8361.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bq) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %bb.jo

bb.jr:                                            ; preds = %.loopexit510
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.ajg = load double, ptr %i.ajf, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 5, double noundef %i.ajg) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %bb.jo

bb.js:                                            ; preds = %bb.jo, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i284
  %.sroa.4410.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i284 ], [ 0, %bb.jo ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4410.0.ph, i64 %i.ajb) #32
  unreachable

bb.jt:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i284
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ajd, ptr align 1 %i.aja, i64 %i.ajb, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %cond = icmp eq i64 %i.ajb, 1
  %i.ajh = load i8, ptr %i.ajd, align 1, !alias.scope !1722, !noalias !1723 ; 2 uses
  br i1 %cond, label %bb.ju, label %thread-pre-split.i318

bb.ju:                                            ; preds = %bb.jt
  switch i8 %i.ajh, label %bb.kb [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i318:                            ; preds = %bb.jt
  switch i8 %i.ajh, label %bb.kb [
    i8 43, label %bb.jv
    i8 45, label %bb.jw
  ]

bb.jv:                                            ; preds = %thread-pre-split.i318
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajd, i64 1
  %i.ajj = add nsw i64 %i.ajb, -1
  br label %bb.kb

bb.jw:                                            ; preds = %thread-pre-split.i318
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajd, i64 1 ; 2 uses
  %i.ajl = add nsw i64 %i.ajb, -1                 ; 2 uses
  %i.ajm = icmp samesign ult i64 %i.ajb, 17
  br i1 %i.ajm, label %.lr.ph141.i298, label %.lr.ph.i288

.lr.ph.i288:                                      ; preds = %bb.jw, %bb.jz
  %.sroa.0.1136.i289 = phi ptr [ %i.ajn, %bb.jz ], [ %i.ajk, %bb.jw ] ; 2 uses
  %.sroa.26.1135.i290 = phi i64 [ %i.ajo, %bb.jz ], [ %i.ajl, %bb.jw ]
  %.sroa.084.0134.i291 = phi i64 [ %i.ajz, %bb.jz ], [ 0, %bb.jw ]
  %i.ajn = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i289, i64 1
  %i.ajo = add nsw i64 %.sroa.26.1135.i290, -1    ; 2 uses
  %i.ajp = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i291, i64 10) ; 2 uses
  %i.ajq = extractvalue { i64, i1 } %i.ajp, 0
  %i.ajr = extractvalue { i64, i1 } %i.ajp, 1
  br i1 %i.ajr, label %.loopexit, label %bb.jx, !prof !12

bb.jx:                                            ; preds = %.lr.ph.i288
  %i.ajs = load i8, ptr %.sroa.0.1136.i289, align 1, !alias.scope !1722, !noalias !1723, !noundef !5
  %i.ajt = zext i8 %i.ajs to i32
  %i.aju = add nsw i32 %i.ajt, -48                ; 2 uses
  %i.ajv = icmp ult i32 %i.aju, 10
  br i1 %i.ajv, label %bb.jy, label %.loopexit

bb.jy:                                            ; preds = %bb.jx
  %i.ajw = zext nneg i32 %i.aju to i64
  %i.ajx = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ajq, i64 %i.ajw) ; 2 uses
  %i.ajy = extractvalue { i64, i1 } %i.ajx, 1
  br i1 %i.ajy, label %.loopexit, label %bb.jz, !prof !12

bb.jz:                                            ; preds = %bb.jy
  %i.ajz = extractvalue { i64, i1 } %i.ajx, 0     ; 2 uses
  %.not102.i293 = icmp eq i64 %i.ajo, 0
  br i1 %.not102.i293, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit320, label %.lr.ph.i288

.lr.ph141.i298:                                   ; preds = %bb.jw, %bb.ka
  %.sroa.0.2140.i299 = phi ptr [ %i.akg, %bb.ka ], [ %i.ajk, %bb.jw ] ; 2 uses
  %.sroa.26.2139.i300 = phi i64 [ %i.akf, %bb.ka ], [ %i.ajl, %bb.jw ]
  %.sroa.084.2138.i301 = phi i64 [ %i.aki, %bb.ka ], [ 0, %bb.jw ]
  %i.aka = load i8, ptr %.sroa.0.2140.i299, align 1, !alias.scope !1722, !noalias !1723, !noundef !5
  %i.akb = zext i8 %i.aka to i32
  %i.akc = add nsw i32 %i.akb, -48                ; 2 uses
  %i.akd = icmp ult i32 %i.akc, 10
  br i1 %i.akd, label %bb.ka, label %.loopexit

bb.ka:                                            ; preds = %.lr.ph141.i298
  %i.ake = mul i64 %.sroa.084.2138.i301, 10
  %i.akf = add nsw i64 %.sroa.26.2139.i300, -1    ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i299, i64 1
  %i.akh = zext nneg i32 %i.akc to i64
  %i.aki = sub i64 %i.ake, %i.akh                 ; 2 uses
  %.not103.i302 = icmp eq i64 %i.akf, 0
  br i1 %.not103.i302, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit320, label %.lr.ph141.i298

bb.kb:                                            ; preds = %bb.ju, %bb.jv, %thread-pre-split.i318
  %.sroa.26.0.i303 = phi i64 [ %i.ajj, %bb.jv ], [ %i.ajb, %thread-pre-split.i318 ], [ %i.ajb, %bb.ju ] ; 4 uses
  %.sroa.0.0.i304 = phi ptr [ %i.aji, %bb.jv ], [ %i.ajd, %thread-pre-split.i318 ], [ %i.ajd, %bb.ju ] ; 2 uses
  %i.akj = icmp samesign ult i64 %.sroa.26.0.i303, 16
  br i1 %i.akj, label %.preheader.i311, label %.preheader111.i305

.preheader.i311:                                  ; preds = %bb.kb
  %.not105146.i312 = icmp eq i64 %.sroa.26.0.i303, 0
  br i1 %.not105146.i312, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit320, label %.lr.ph150.i313

.preheader111.i305:                               ; preds = %bb.kb, %bb.ke
  %.sroa.0.3145.i306 = phi ptr [ %i.akk, %bb.ke ], [ %.sroa.0.0.i304, %bb.kb ] ; 2 uses
  %.sroa.26.3144.i307 = phi i64 [ %i.akl, %bb.ke ], [ %.sroa.26.0.i303, %bb.kb ]
  %.sroa.084.3143.i308 = phi i64 [ %i.akw, %bb.ke ], [ 0, %bb.kb ]
  %i.akk = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i306, i64 1
  %i.akl = add nsw i64 %.sroa.26.3144.i307, -1    ; 2 uses
  %i.akm = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i308, i64 10) ; 2 uses
  %i.akn = extractvalue { i64, i1 } %i.akm, 0
  %i.ako = extractvalue { i64, i1 } %i.akm, 1
  br i1 %i.ako, label %.loopexit, label %bb.kc, !prof !12

bb.kc:                                            ; preds = %.preheader111.i305
  %i.akp = load i8, ptr %.sroa.0.3145.i306, align 1, !alias.scope !1722, !noalias !1723, !noundef !5
  %i.akq = zext i8 %i.akp to i32
  %i.akr = add nsw i32 %i.akq, -48                ; 2 uses
  %i.aks = icmp ult i32 %i.akr, 10
  br i1 %i.aks, label %bb.kd, label %.loopexit

bb.kd:                                            ; preds = %bb.kc
  %i.akt = zext nneg i32 %i.akr to i64
  %i.aku = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.akn, i64 %i.akt) ; 2 uses
  %i.akv = extractvalue { i64, i1 } %i.aku, 1
  br i1 %i.akv, label %.loopexit, label %bb.ke, !prof !12

bb.ke:                                            ; preds = %bb.kd
  %i.akw = extractvalue { i64, i1 } %i.aku, 0     ; 2 uses
  %.not104.i310 = icmp eq i64 %i.akl, 0
  br i1 %.not104.i310, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit320, label %.preheader111.i305

.lr.ph150.i313:                                   ; preds = %.preheader.i311, %bb.kf
  %.sroa.0.4149.i314 = phi ptr [ %i.ald, %bb.kf ], [ %.sroa.0.0.i304, %.preheader.i311 ] ; 2 uses
  %.sroa.26.4148.i315 = phi i64 [ %i.alc, %bb.kf ], [ %.sroa.26.0.i303, %.preheader.i311 ]
  %.sroa.084.4147.i316 = phi i64 [ %i.alf, %bb.kf ], [ 0, %.preheader.i311 ]
  %i.akx = load i8, ptr %.sroa.0.4149.i314, align 1, !alias.scope !1722, !noalias !1723, !noundef !5
  %i.aky = zext i8 %i.akx to i32
  %i.akz = add nsw i32 %i.aky, -48                ; 2 uses
  %i.ala = icmp ult i32 %i.akz, 10
  br i1 %i.ala, label %bb.kf, label %.loopexit

bb.kf:                                            ; preds = %.lr.ph150.i313
  %i.alb = mul i64 %.sroa.084.4147.i316, 10
  %i.alc = add nsw i64 %.sroa.26.4148.i315, -1    ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i314, i64 1
  %i.ale = zext nneg i32 %i.akz to i64
  %i.alf = add i64 %i.alb, %i.ale                 ; 2 uses
  %.not105.i317 = icmp eq i64 %i.alc, 0
  br i1 %.not105.i317, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit320, label %.lr.ph150.i313

.loopexit:                                        ; preds = %.lr.ph.i288, %bb.jy, %bb.jx, %.lr.ph141.i298, %.preheader111.i305, %bb.kc, %bb.kd, %.lr.ph150.i313, %bb.ju, %bb.ju, %.thread484
  %.ph492 = phi ptr [ %i.ajd, %.preheader111.i305 ], [ %i.ajd, %.lr.ph141.i298 ], [ %i.ajd, %.lr.ph150.i313 ], [ %i.ajd, %bb.ju ], [ inttoptr (i64 1 to ptr), %.thread484 ], [ %i.ajd, %bb.ju ], [ %i.ajd, %bb.kd ], [ %i.ajd, %bb.kc ], [ %i.ajd, %bb.jx ], [ %i.ajd, %bb.jy ], [ %i.ajd, %.lr.ph.i288 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph492, i64 noundef %i.ajb) #28
  %i.alg = load i8, ptr %i.bp, align 8, !range !24, !noundef !5
  %i.alh = trunc nuw i8 %i.alg to i1
  br i1 %i.alh, label %bb.ki, label %bb.kj

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit320: ; preds = %bb.jz, %bb.ka, %bb.ke, %bb.kf, %.preheader.i311
  %.sroa.15372.0 = phi i64 [ %i.akw, %bb.ke ], [ %i.aki, %bb.ka ], [ %i.alf, %bb.kf ], [ 0, %.preheader.i311 ], [ %i.ajz, %bb.jz ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 3, i64 noundef %.sroa.15372.0) #29
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kj, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit320
  %i.ali = phi ptr [ %.ph492, %bb.kj ], [ %i.ajd, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit320 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bn) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.alj = icmp eq i64 %i.ajb, 0
  br i1 %i.alj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit323, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ali, i64 noundef %i.ajb, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1724
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit323

bb.ki:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  store i64 %i.ajb, ptr %i.bo, align 8
  %.sroa.5367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %.ph492, ptr %.sroa.5367.0..sroa_idx, align 8
  %.sroa.8368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 %i.ajb, ptr %.sroa.8368.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bo) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bn) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit323

bb.kj:                                            ; preds = %.loopexit
  %i.alk = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.all = load double, ptr %i.alk, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 3, double noundef %i.all) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %bb.kg

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit323: ; preds = %bb.kh, %bb.kg, %bb.ki
  %i.alm = icmp eq i64 %i.agk, 0
  %or.cond503 = or i1 %.sroa.0112.0.not, %i.alm
  br i1 %or.cond503, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit340, label %bb.kw

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit340: ; preds = %bb.kw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  store ptr %i.bt, ptr %i.bm, align 8
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4161.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1725
  store ptr %i.bx, ptr %i.d, align 8, !noalias !1725
  %i.aln = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr null, ptr %i.aln, align 8, !noalias !1725
  %i.alo = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @15, ptr noundef nonnull @122, ptr noundef nonnull %i.bm) #29
  %i.alp = load ptr, ptr %i.aln, align 8, !noalias !1725, !noundef !5 ; 7 uses
  %.not.i5.i325 = icmp eq ptr %i.alp, null        ; 2 uses
  br i1 %i.alo, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit340
  br i1 %.not.i5.i325, label %bb.kp, label %bb.kq, !prof !12

bb.kl:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit340
  br i1 %.not.i5.i325, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit.i327.thread, label %bb.km

bb.km:                                            ; preds = %bb.kl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1725
  %i.alq = ptrtoint ptr %i.alp to i64             ; 2 uses
  %i.alr = and i64 %i.alq, 3
  switch i64 %i.alr, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i.i.i326
    i64 3, label %bb.kn
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i.i.i326
    i64 1, label %bb.ko
  ], !prof !13

bb.kn:                                            ; preds = %bb.km
  %i.als = icmp ult ptr %i.alp, inttoptr (i64 188978561024 to ptr)
  %i.alt = and i64 %i.alq, 1095216660480
  %i.alu = icmp ne i64 %i.alt, 1095216660480
  call void @llvm.assume(i1 %i.als)
  call void @llvm.assume(i1 %i.alu)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i.i.i326

bb.ko:                                            ; preds = %bb.km
  %i.alv = getelementptr i8, ptr %i.alp, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.alv) ]
  %i.alw = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.alv, ptr %i.alw, align 8, !alias.scope !1726, !noalias !1725
  store i8 3, ptr %i.c, align 8, !alias.scope !1726, !noalias !1725
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.alw) #29
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i.i.i326

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i.i.i326: ; preds = %bb.ko, %bb.kn, %bb.km, %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1725
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit.i327.thread

bb.kp:                                            ; preds = %bb.kk
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #30
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit.i327.thread: ; preds = %bb.kl, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i.i.i326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1725
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdit6BuOJVAc_5uu_od.exit334

bb.kq:                                            ; preds = %bb.kk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.alx = ptrtoint ptr %i.alp to i64             ; 2 uses
  %i.aly = and i64 %i.alx, 3
  switch i64 %i.aly, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i332
    i64 3, label %bb.kr
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i332
    i64 1, label %bb.ks
  ], !prof !13

bb.kr:                                            ; preds = %bb.kq
  %i.alz = icmp ult ptr %i.alp, inttoptr (i64 188978561024 to ptr)
  %i.ama = and i64 %i.alx, 1095216660480
  %i.amb = icmp ne i64 %i.ama, 1095216660480
  call void @llvm.assume(i1 %i.alz)
  call void @llvm.assume(i1 %i.amb)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i332

bb.ks:                                            ; preds = %bb.kq
  %i.amc = getelementptr i8, ptr %i.alp, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.amc) ]
  %i.amd = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.amc, ptr %i.amd, align 8, !alias.scope !1727
  store i8 3, ptr %i.b, align 8, !alias.scope !1727
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.amd) #29
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i332

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i332: ; preds = %bb.ks, %bb.kr, %bb.kq, %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdit6BuOJVAc_5uu_od.exit334

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdit6BuOJVAc_5uu_od.exit334: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit.i327.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.experimental.noalias.scope.decl(metadata !1728)
  %.val.i335 = load i64, ptr %i.bt, align 8, !range !6, !alias.scope !1728, !noundef !5 ; 2 uses
  %i.ame = icmp eq i64 %.val.i335, 0
  br i1 %i.ame, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit337, label %bb.kt

bb.kt:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdit6BuOJVAc_5uu_od.exit334
  %i.amf = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.val1.i336 = load ptr, ptr %i.amf, align 8, !alias.scope !1728, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i336, i64 noundef %.val.i335, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1728
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit337

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit337: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdit6BuOJVAc_5uu_od.exit334, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  %.val189 = load ptr, ptr %i.bx, align 8, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %.val189, i64 12 ; 2 uses
  %i.amh = load i32, ptr %i.amg, align 4, !noundef !5
  %i.ami = add i32 %i.amh, -1                     ; 2 uses
  store i32 %i.ami, ptr %i.amg, align 4
  %i.amj = icmp eq i32 %i.ami, 0
  br i1 %i.amj, label %bb.ku, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit

bb.ku:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit337
  store atomic i64 0, ptr %.val189 monotonic, align 8
  %i.amk = getelementptr inbounds nuw i8, ptr %.val189, i64 8 ; 2 uses
  %i.aml = atomicrmw xchg ptr %i.amk, i32 0 release, align 4
  %i.amm = icmp eq i32 %i.aml, 2
  br i1 %i.amm, label %bb.kv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit, !prof !12

bb.kv:                                            ; preds = %bb.ku
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.amk) #29
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdit6BuOJVAc_5uu_od.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit337, %bb.ku, %bb.kv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br label %bb.iz

bb.kw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit323
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aiy, i64 noundef %i.agk, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1729
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit340

bb.kx:                                            ; preds = %bb.iz
  %i.amn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.amo = load <2 x ptr>, ptr %i.agw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  store <2 x ptr> %i.amo, ptr %i.amn, align 8
  store i64 2, ptr %0, align 8
  br label %bb.im

bb.ky:                                            ; preds = %bb.iz
  %i.amp = load <2 x i64>, ptr %i.agw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call fastcc void @_RNvCsdit6BuOJVAc_5uu_od18parse_bytes_option(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 7, i32 noundef 83) #29
  %i.amq = load i64, ptr %i.bk, align 8, !range !15, !noundef !5
  %i.amr = trunc nuw i64 %i.amq to i1
  %i.ams = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  br i1 %i.amr, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  %i.amt = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
