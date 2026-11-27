Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/insta-7da102944296d43e.insta.f5d9918fc0a28c4d-cgu.12?download=true
inline.NumInlined: 244
inline.NumDeleted: 116
begin_hunk_0_@_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE20block_sequence_entryBd_:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 512
  store i8 7, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !555
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !555
  %i.bd = load i64, ptr %i.a, align 8, !range !19, !noalias !555, !noundef !5
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !20, !noalias !555, !noundef !5 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.be, label %bb.w, label %_RNvMNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserNtB2_5Event12empty_scalar.exit, !prof !16

bb.w:                                             ; preds = %bb.v
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !555
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bg, i64 %i.bi) #18, !noalias !555
  unreachable

_RNvMNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserNtB2_5Event12empty_scalar.exit: ; preds = %bb.v
  %i.bj = load ptr, ptr %i.bh, align 8, !noalias !555, !nonnull !5, !noundef !5 ; 2 uses
  %i.bk = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !555
  store i8 126, ptr %i.bj, align 1, !noalias !555
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %i.bg, ptr %0, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.567.0..sroa_idx, align 8
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 -1, ptr %.sroa.668.0..sroa_idx, align 8
  %.sroa.870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %.sroa.870.0..sroa_idx, align 8
  %.sroa.971.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %.sroa.971.0..sroa_idx, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.r, %bb.h
  %.sink75 = phi i64 [ %i.ao, %bb.r ], [ %i.h, %bb.h ]
  %.sink = phi ptr [ %i.aq, %bb.r ], [ %i.j, %bb.h ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink75, ptr %i.bl, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %.sroa.456.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.y

bb.y:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parser5StateE8push_mutBO_.exit, %_RNvMNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserNtB2_5Event12empty_scalar.exit, %bb.j, %_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE4skipBd_.exit60, %bb.x, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE24__explicit_document_startBd_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull align 8 dereferenceable(520) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !569 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !571
  call fastcc void @_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE10peek_tokenBd_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(520) %1), !noalias !572
  %i.e = load i64, ptr %i.a, align 8, !range !6, !noalias !571, !noundef !5 ; 2 uses
  %.not18.i = icmp eq i64 %i.e, -1
  br i1 %.not18.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE4skipBd_.exit.i, %.lr.ph.i
  %i.h = load ptr, ptr %i.f, align 8, !noalias !571, !nonnull !5, !align !18, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !571
  %i.i = load i8, ptr %i.h, align 8, !range !10, !noalias !572, !noundef !5
  %i.j = and i8 %i.i, 30
  %switch.i = icmp eq i8 %i.j, 2
  br i1 %switch.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.g, align 8, !range !9, !alias.scope !573, !noundef !5
  %i.l = icmp eq i8 %i.k, -1
  br i1 %i.l, label %_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE4skipBd_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner9TokenTypeEBL_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.g)
          to label %_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE4skipBd_.exit.i unwind label %common.resume.loopexit.split-lp.loopexit.split-lp, !noalias !572

_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE4skipBd_.exit.i: ; preds = %bb.d, %bb.c
  store i8 -1, ptr %i.g, align 8, !alias.scope !574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !571
  call fastcc void @_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE10peek_tokenBd_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(520) %1), !noalias !572
  %i.m = load i64, ptr %i.a, align 8, !range !6, !noalias !571, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.m, -1
  br i1 %.not.i, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE4skipBd_.exit.i, %bb.a
  %.lcssa.i = phi i64 [ %i.e, %bb.a ], [ %i.m, %_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE4skipBd_.exit.i ]
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.410.0.copyload.i = load ptr, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !571
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.534.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.0..sroa_idx.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !571
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa.i, ptr %i.n, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.410.0.copyload.i, ptr %.sroa.433.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE10peek_tokenBd_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef align 8 dereferenceable(520) %1)
  %i.o = load i64, ptr %i.d, align 8, !range !6, !noundef !5 ; 2 uses
  %.not20 = icmp eq i64 %i.o, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.519.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.516.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.r, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %.sroa.418.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.s = load i8, ptr %i.q, align 8, !range !10, !noundef !5
  %i.t = icmp eq i8 %i.s, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  br i1 %i.t, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !575, !noundef !5 ; 3 uses
  %i.y = load i64, ptr %i.v, align 8, !range !14, !alias.scope !575, !noundef !5
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parser5StateE8push_mutBO_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parser5StateE8grow_oneBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parser5StateE8push_mutBO_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parser5StateE8push_mutBO_.exit: ; preds = %bb.h, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !575, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.x
  store i8 4, ptr %i.ac, align 1
  %i.ad = add i64 %i.x, 1
  store i64 %i.ad, ptr %i.w, align 8, !alias.scope !575
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 512
  store i8 3, ptr %i.ae, align 8
  %i.af = load i8, ptr %i.g, align 8, !range !9, !alias.scope !576, !noundef !5
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE4skipBd_.exit, label %bb.j

bb.j:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parser5StateE8push_mutBO_.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner9TokenTypeEBL_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.g)
          to label %_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE4skipBd_.exit unwind label %common.resume.loopexit.split-lp.loopexit.split-lp

common.resume.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.j
  %lpad.loopexit.split-lp40 = landingpad { ptr, i32 }
          cleanup
  store i8 -1, ptr %i.g, align 8
  resume { ptr, i32 } %lpad.loopexit.split-lp40

_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE4skipBd_.exit: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parser5StateE8push_mutBO_.exit, %bb.j
  store i8 -1, ptr %i.g, align 8, !alias.scope !577
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 -9223372036854775806, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMs_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scannerNtB4_9ScanError3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 38)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.l:                                             ; preds = %_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE4skipBd_.exit, %bb.k, %bb.f, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE3newBd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([520 x i8]) align 8 captures(none) dereferenceable(520) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !578 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [232 x i8], align 8               ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i64 0, ptr %i.e, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i64 1, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  store i64 0, ptr %i.b, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store i16 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store i64 0, ptr %i.h, align 8
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 226
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 0, ptr %i.i, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i64 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 0, ptr %i.k, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 0, ptr %.sroa.515.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  store i8 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store i64 0, ptr %i.m, align 8
  store i16 1, ptr %3, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.o, align 8
  %i.p = invoke { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsl6EuCK7xub1_5insta(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @86)
          to label %bb.b unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner5TokenEEB17_.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %i.b, i64 232, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i8 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i8 -1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 -1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 456
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) @88, i64 32, i1 false)
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 %i.q, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i64 %i.r, ptr %.sroa.521.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i64 1, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner5TokenEEB17_.exit
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner5TokenEEB17_.exit: ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parser5StateEEB1h_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #19
          to label %bb.d unwind label %bb.c

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner5TokenEEB17_.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner7ScannerNtNtNtB4_3str4iter5CharsEEBM_(ptr noalias noundef align 8 dereferenceable(232) %i.b) #19
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.z
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE4nextBd_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull align 8 dereferenceable(520) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !672 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [48 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 7 uses
  %i.v = alloca [48 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [48 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [48 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [48 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [48 x i8], align 8               ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [48 x i8], align 8               ; 7 uses
  %.sroa.8.i = alloca [64 x i8], align 8          ; 5 uses
  %i.aj = alloca [120 x i8], align 8              ; 142 uses
  %.sroa.6.i = alloca [48 x i8], align 8          ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !range !4, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.al, -1
  br i1 %.not, label %bb.b, label %bb.db

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.8.i, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 15 uses
  %i.ao = load i8, ptr %i.an, align 8, !range !21, !alias.scope !674, !noundef !5 ; 2 uses
  %i.ap = icmp eq i8 %i.ao, 21
  br i1 %i.ap, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !alias.scope !675
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !673
  br label %_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE5parseBd_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !675
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677)
  switch i8 %i.ao, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.u
    i8 5, label %bb.ab
    i8 6, label %bb.ac
    i8 7, label %bb.ad
    i8 8, label %bb.ae
    i8 9, label %bb.as
    i8 10, label %bb.at
    i8 11, label %bb.au
    i8 12, label %bb.bi
    i8 13, label %bb.bj
    i8 14, label %bb.bk
    i8 15, label %bb.bt
    i8 16, label %bb.ch
    i8 17, label %bb.ci
    i8 18, label %bb.cj
    i8 19, label %bb.ck
    i8 20, label %bb.cw
  ], !prof !678

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !681
  call fastcc void @_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE10peek_tokenBd_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(520) %1), !noalias !682
  %i.ar = load i64, ptr %i.ai, align 8, !range !6, !noalias !681, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, -1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !681 ; 3 uses
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.516.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.519.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.519.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.516.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !681
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.ar, ptr %i.au, align 8, !alias.scope !684, !noalias !675
  %.sroa.418.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.at, ptr %.sroa.418.0..sroa_idx.i.i.i, align 8, !alias.scope !684, !noalias !675
  br label %_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE13state_machineBd_.exit.thread.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !681
  %i.av = load i8, ptr %i.at, align 8, !range !10, !noalias !682, !noundef !5
  %i.aw = icmp eq i8 %i.av, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 56 ; 2 uses
  br i1 %i.aw, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !noalias !682
  store i8 1, ptr %i.an, align 8, !alias.scope !685
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 4 uses
  %i.az = load i8, ptr %i.ay, align 8, !range !9, !alias.scope !686, !noundef !5
  %i.ba = icmp eq i8 %i.az, -1
  br i1 %i.ba, label %_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE4skipBd_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored7scanner9TokenTypeEBL_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ay)
          to label %_RNvMs0_NtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored6parserINtB5_6ParserNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE4skipBd_.exit.i.i.i unwind label %bb.j, !noalias !682

common.resume.i:                                  ; preds = %bb.cp, %bb.by, %bb.br, %bb.az, %bb.aj, %bb.z, %bb.j
  %common.resume.op.i = phi { ptr, i32 } [ %i.iy, %bb.cp ], [ %i.bb, %bb.j ], [ %i.cm, %bb.z ], [ %i.cw, %bb.aj ], [ %i.ep, %bb.az ], [ %i.go, %bb.br ], [ %i.hg, %bb.by ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  store i8 -1, ptr %i.ay, align 8, !alias.scope !687
  br label %common.resume.i

end_hunk_0
