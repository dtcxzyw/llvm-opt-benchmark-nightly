Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.06?download=true
inline.NumInlined: 4309
inline.NumDeleted: 1921
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RNvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler12seq_to_atoms:bb.a
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.v, %bb.f ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir7hex2hir21hex_byte_hir_from_ast(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, i8 %.8.val, i8 %.9.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  switch i8 %.9.val, label %bb.b [
    i8 -1, label %bb.j
    i8 0, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5495
  %i.f = xor i8 %.9.val, -1                       ; 2 uses
  %i.g = and i8 %.8.val, %i.f                     ; 2 uses
  store i8 %i.g, ptr %i.d, align 1, !noalias !5495
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5495
  call void @_RNvMsf_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_10ClassBytes5empty(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c), !noalias !5495
  %i.i = and i8 %.9.val, %.8.val
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedhhECs2QVhZO3YFtI_4p384(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @442, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @444) #46, !noalias !5495
  unreachable

bb.e:                                             ; preds = %bb.h, %bb.c
  %.sroa.03.0.i = phi i1 [ false, %bb.c ], [ %i.o, %bb.h ]
  %.sroa.01.0.i = phi i8 [ 0, %bb.c ], [ %i.p, %bb.h ] ; 2 uses
  br i1 %.sroa.03.0.i, label %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir7hex2hir17hex_byte_to_class.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = and i8 %.sroa.01.0.i, %i.f
  %i.k = or disjoint i8 %i.j, %i.i                ; 2 uses
  %i.l = invoke { i8, i8 } @_RNvMsi_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_15ClassBytesRange3new(i8 noundef %i.k, i8 noundef %i.k)
          to label %bb.h unwind label %bb.g, !noalias !5495 ; 2 uses

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir10ClassBytesECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #42
          to label %common.resume unwind label %bb.i, !noalias !5495

bb.h:                                             ; preds = %bb.f
  %i.n = or i8 %.sroa.01.0.i, %.9.val             ; 2 uses
  %i.o = icmp eq i8 %i.n, -1
  %i.p = add i8 %i.n, 1
  %i.q = extractvalue { i8, i8 } %i.l, 0
  %i.r = extractvalue { i8, i8 } %i.l, 1
  invoke void @_RNvMsf_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_10ClassBytes4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c, i8 noundef %i.q, i8 noundef %i.r)
          to label %bb.e unwind label %bb.g, !noalias !5495

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !5495
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.m ], [ %i.m, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir7hex2hir17hex_byte_to_class.exit: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5495
  store i64 1, ptr %i.e, align 8
  call fastcc void @_RNvMs3_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_3Hir5class(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.e) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvMs3_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_3Hir7literalAhj1_ECs7gfv9tzbXmh_6yara_x.exit

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5496)
  %i.u = tail call { ptr, i64 } @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxShEINtNtCskKLDkoKarTP_4core7convert4FromAhj1_E4fromCs7gfv9tzbXmh_6yara_x(i8 noundef %.8.val), !noalias !5496 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0        ; 4 uses
  %i.w = extractvalue { ptr, i64 } %i.u, 1        ; 4 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5496
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  store ptr %i.v, ptr %i.b, align 8, !noalias !5496
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.w, ptr %i.y, align 8, !noalias !5496
  %i.z = invoke noundef nonnull align 8 ptr @_RNvMso_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_10Properties7literal(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.l unwind label %bb.m, !noalias !5496

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.j
  %i.aa = tail call noundef nonnull align 8 ptr @_RNvMso_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_10Properties5empty(), !noalias !5496
  store i64 2, ptr %0, align 8, !alias.scope !5496
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !5496
  br label %_RINvMs3_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_3Hir7literalAhj1_ECs7gfv9tzbXmh_6yara_x.exit

bb.l:                                             ; preds = %bb.k
  store i64 3, ptr %0, align 8, !alias.scope !5496
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !5496
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !5496
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.z, ptr %i.ac, align 8, !alias.scope !5496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5496
  br label %_RINvMs3_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_3Hir7literalAhj1_ECs7gfv9tzbXmh_6yara_x.exit

bb.m:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef range(i64 1, 0) %i.w, i64 noundef 1) #45, !noalias !5496
  br label %common.resume

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5497
  %i.ae = tail call { i8, i8 } @_RNvMsi_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_15ClassBytesRange3new(i8 noundef 0, i8 noundef -1), !noalias !5497 ; 2 uses
  %i.af = extractvalue { i8, i8 } %i.ae, 0
  %i.ag = extractvalue { i8, i8 } %i.ae, 1
  %.sroa.424.0.insert.ext.i = zext i8 %i.ag to i16
  %.sroa.424.0.insert.shift.i = shl nuw i16 %.sroa.424.0.insert.ext.i, 8
  %.sroa.023.0.insert.ext.i = zext i8 %i.af to i16
  %.sroa.023.0.insert.insert.i = or disjoint i16 %.sroa.424.0.insert.shift.i, %.sroa.023.0.insert.ext.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @_RINvMs0_NtNtCs2r1H4NiMXj9_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_15ClassBytesRangeE3newAB18_j1_ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ah, i16 noundef %.sroa.023.0.insert.insert.i), !noalias !5497
  store i64 1, ptr %i.a, align 8, !noalias !5497
  call fastcc void @_RNvMs3_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_3Hir5class(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.a) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5497
  br label %_RINvMs3_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_3Hir7literalAhj1_ECs7gfv9tzbXmh_6yara_x.exit

_RINvMs3_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_3Hir7literalAhj1_ECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i, %bb.n, %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir7hex2hir17hex_byte_to_class.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir7hex2hir24hex_pattern_hir_from_ast(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call fastcc void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir7hex2hir28hex_sub_pattern_hir_from_ast(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(120) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir7hex2hir28hex_sub_pattern_hir_from_ast(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 13 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [168 x i8], align 8               ; 4 uses
  %i.n = alloca [232 x i8], align 8               ; 11 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [48 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [48 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [4 x i8], align 4                ; 4 uses
  %i.ai = alloca [4 x i8], align 4                ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [24 x i8], align 8               ; 2 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 9 uses
  %i.at = alloca [16 x i8], align 8               ; 6 uses
  %i.au = alloca [24 x i8], align 4               ; 18 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [48 x i8], align 8               ; 5 uses
  %i.ax = alloca [48 x i8], align 16              ; 5 uses
  %i.ay = alloca [48 x i8], align 16              ; 7 uses
  %i.az = alloca [24 x i8], align 8               ; 13 uses
  %i.ba = alloca [40 x i8], align 8               ; 4 uses
  %i.bb = alloca [48 x i8], align 8               ; 5 uses
  %i.bc = alloca [32 x i8], align 8               ; 7 uses
  %i.bd = alloca [40 x i8], align 8               ; 6 uses
  %i.be = alloca [48 x i8], align 8               ; 4 uses
  %i.bf = alloca [40 x i8], align 8               ; 11 uses
  %i.bg = alloca [40 x i8], align 8               ; 7 uses
  %i.bh = alloca [24 x i8], align 8               ; 4 uses
  %i.bi = alloca [16 x i8], align 8               ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 7 uses
  %i.bk = alloca [24 x i8], align 8               ; 7 uses
  %i.bl = alloca [48 x i8], align 8               ; 5 uses
  %i.bm = alloca [24 x i8], align 8               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !9 ; 4 uses
  %i.bp = icmp ult i64 %i.bo, 384307168202282326
  tail call void @llvm.assume(i1 %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, i64 noundef %i.bo, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
  %i.bq = load i64, ptr %i.w, align 8, !range !13, !noundef !9
  %i.br = trunc nuw i64 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !range !18, !noundef !9 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  br i1 %i.br, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.bv = load i64, ptr %i.bu, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bt, i64 %i.bv) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.bw = load ptr, ptr %i.bu, align 8, !nonnull !9, !noundef !9
  %i.bx = icmp samesign ule i64 %i.bo, %i.bt
  tail call void @llvm.assume(i1 %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 %i.bt, ptr %i.bm, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 5 uses
  store ptr %i.bw, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 9 uses
  store i64 0, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %i.bo ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.ce = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 7 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.au, i64 12 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !9, !align !17 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 20
  %i.cl = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.cn = load ptr, ptr %2, align 8, !nonnull !9  ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cp = load i64, ptr %i.co, align 8            ; 17 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.not128 = icmp eq i64 %i.cp, 0                 ; 4 uses
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  %i.cx = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  %i.cy = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %.sroa.5226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 220
  %.sroa.7227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 228
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !9, !align !17 ; 10 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 32 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 112
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 88
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 120
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.dp = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.sroa.8.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.10.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  br label %.outer

.outer:                                           ; preds = %bb.gj, %bb.c
  %.sroa.13.0.ph = phi ptr [ %.sroa.13.5272644, %bb.gj ], [ %i.cb, %bb.c ]
  %.sroa.10210.0.ph = phi ptr [ %.sroa.0.0.i.i.i273643, %bb.gj ], [ undef, %bb.c ] ; 2 uses
  %.sroa.0.0232.ph = phi i1 [ true, %bb.gj ], [ false, %bb.c ]
  %.not = icmp eq ptr %.sroa.10210.0.ph, null
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %.outer
  %.sroa.13.0 = phi ptr [ %.sroa.13.0.ph, %.outer ], [ %.sroa.13.1, %.backedge ] ; 5 uses
  %.sroa.0.0232 = phi i1 [ %.sroa.0.0232.ph, %.outer ], [ false, %.backedge ]
  br i1 %.sroa.0.0232, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %bb.i, label %bb.h

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0) ]
  %i.dx = icmp eq ptr %.sroa.13.0, %i.cc
  br i1 %i.dx, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.13.1 = phi ptr [ %.sroa.13.0, %bb.e ], [ %i.dy, %bb.g ] ; 11 uses
  %.sroa.0.0 = phi ptr [ %.sroa.10210.0.ph, %bb.e ], [ %.sroa.13.0, %bb.g ] ; 11 uses
  %i.dz = load i32, ptr %.sroa.0.0, align 8, !range !5540, !noundef !9 ; 2 uses
  %i.ea = add nsw i32 %i.dz, -2
  %i.eb = icmp samesign ugt i32 %i.dz, 1
  %narrow = select i1 %i.eb, i32 %i.ea, i32 3
  switch i32 %narrow, label %bb.j [
    i32 0, label %bb.k
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
  ]

bb.i:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  call void @_RNvMs3_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_3Hir6concat(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.fx

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  %i.ec = getelementptr i8, ptr %.sroa.0.0, i64 12
  %.val169 = load i8, ptr %i.ec, align 4
  %i.ed = getelementptr i8, ptr %.sroa.0.0, i64 13
  %.val170 = load i8, ptr %i.ed, align 1, !noundef !9
  invoke fastcc void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir7hex2hir21hex_byte_hir_from_ast(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.bl, i8 %.val169, i8 %.val170)
          to label %bb.o unwind label %.loopexit.split-lp316.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.l:                                             ; preds = %bb.h
  %i.ee = getelementptr i8, ptr %.sroa.0.0, i64 13 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !noundef !9
  %i.eg = icmp eq i8 %i.ef, 0
  br i1 %i.eg, label %bb.t, label %bb.u

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !nonnull !9, !noundef !9
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !noundef !9 ; 3 uses
  %i.el = icmp ult i64 %i.ek, 384307168202282326
  call void @llvm.assume(i1 %i.el)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef %i.ek, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
          to label %bb.bm unwind label %.loopexit.split-lp316.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.n:                                             ; preds = %bb.h
  %i.em = invoke { i32, i32 } @_RNvXst_NtCsfF8zpZz1lvn_13yara_x_parser3astNtB5_7HexJumpNtB5_8WithSpan4span(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0)
          to label %bb.ce unwind label %.loopexit.split-lp316.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

bb.o:                                             ; preds = %bb.k
  %i.en = load i64, ptr %i.bz, align 8, !alias.scope !5541, !noundef !9 ; 3 uses
  %i.eo = load i64, ptr %i.bm, align 8, !range !14, !alias.scope !5541, !noundef !9
  %i.ep = icmp eq i64 %i.en, %i.eo
  br i1 %i.ep, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %bb.s unwind label %bb.q, !noalias !5542

bb.q:                                             ; preds = %bb.p
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bl) #42
          to label %.thread240 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.s:                                             ; preds = %bb.p, %bb.o
  %i.es = load ptr, ptr %i.by, align 8, !alias.scope !5541, !nonnull !9, !noundef !9
  %i.et = getelementptr inbounds nuw [48 x i8], ptr %i.es, i64 %i.en
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.et, ptr noundef nonnull align 8 dereferenceable(48) %i.bl, i64 48, i1 false)
  %i.eu = add i64 %i.en, 1
  store i64 %i.eu, ptr %i.bz, align 8, !alias.scope !5541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %.backedge

bb.t:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.cp, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.v unwind label %.loopexit.split-lp316.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.u:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.ev = getelementptr i8, ptr %.sroa.0.0, i64 12
  %.val167 = load i8, ptr %i.ev, align 4
  %.val168 = load i8, ptr %i.ee, align 1, !noundef !9
  invoke fastcc void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir7hex2hir21hex_byte_hir_from_ast(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.be, i8 %.val167, i8 %.val168)
          to label %bb.an unwind label %.loopexit.split-lp316.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.v:                                             ; preds = %bb.t
  %i.ew = load i64, ptr %i.v, align 8, !range !13, !noundef !9
  %i.ex = trunc nuw i64 %i.ew to i1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !range !18, !noundef !9 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  br i1 %i.ex, label %bb.w, label %bb.x, !prof !11

bb.w:                                             ; preds = %bb.v
  %i.fb = load i64, ptr %i.fa, align 8
  br label %.invoke762

bb.x:                                             ; preds = %bb.v
  %i.fc = load ptr, ptr %i.fa, align 8, !nonnull !9, !noundef !9 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir7hex2hir28hex_sub_pattern_hir_from_ast:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  store <2 x i64> %i.hv, ptr %i.ax, align 16
  store ptr %i.hy, ptr %.sroa.8.0..sroa_idx13, align 16
  %i.ie = load i64, ptr %i.dt, align 8, !alias.scope !5545, !noundef !9 ; 3 uses
  %i.if = load i64, ptr %i.az, align 8, !range !14, !alias.scope !5545, !noundef !9
  %i.ig = icmp eq i64 %i.ie, %i.if
  br i1 %i.ig, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %bb.by unwind label %bb.bw, !noalias !5546

bb.bw:                                            ; preds = %bb.bv
  %i.ih = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ax) #42
          to label %.body184.thread265 unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.by:                                            ; preds = %bb.bv, %bb.bu
  %i.ij = load ptr, ptr %i.ds, align 8, !alias.scope !5545, !nonnull !9, !noundef !9
  %i.ik = getelementptr inbounds nuw [48 x i8], ptr %i.ij, i64 %i.ie
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ik, ptr noundef nonnull align 16 dereferenceable(48) %i.ax, i64 48, i1 false)
  %i.il = add i64 %i.ie, 1
  store i64 %i.il, ptr %i.dt, align 8, !alias.scope !5545
  %.not134 = icmp eq ptr %i.ht, %i.hs
  br i1 %.not134, label %._crit_edge, label %.lr.ph469

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirEECs7gfv9tzbXmh_6yara_x.exit183: ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.ag

bb.bz:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %i.im = load i64, ptr %i.bz, align 8, !alias.scope !5547, !noundef !9 ; 3 uses
  %i.in = load i64, ptr %i.bm, align 8, !range !14, !alias.scope !5547, !noundef !9
  %i.io = icmp eq i64 %i.im, %i.in
  br i1 %i.io, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %bb.cd unwind label %bb.cb, !noalias !5548

bb.cb:                                            ; preds = %bb.ca
  %i.ip = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aw) #42
          to label %.thread240 unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.cd:                                            ; preds = %bb.ca, %bb.bz
  %i.ir = load ptr, ptr %i.by, align 8, !alias.scope !5547, !nonnull !9, !noundef !9
  %i.is = getelementptr inbounds nuw [48 x i8], ptr %i.ir, i64 %i.im
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.is, ptr noundef nonnull align 8 dereferenceable(48) %i.aw, i64 48, i1 false)
  %i.it = add i64 %i.im, 1
  store i64 %i.it, ptr %i.bz, align 8, !alias.scope !5547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %.backedge

.backedge:                                        ; preds = %bb.cd, %bb.bj, %bb.s
  br label %bb.d

.body184.thread265:                               ; preds = %bb.bw, %.body184
  %eh.lpad-body185267 = phi { ptr, i32 } [ %i.hu, %.body184 ], [ %i.ih, %bb.bw ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az) #42
          to label %.thread240 unwind label %bb.ak

bb.ce:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.iu = getelementptr i8, ptr %.sroa.0.0, i64 20
  %.val164 = load i32, ptr %i.iu, align 4, !alias.scope !53, !noundef !9
  %i.iv = load i32, ptr %.sroa.0.0, align 8, !range !21, !noundef !9 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 4 ; 2 uses
  store i32 %i.iv, ptr %i.au, align 4
  %i.ix = load <4 x i32>, ptr %i.iw, align 4      ; 3 uses
  %i.iy = load i32, ptr %i.iw, align 4
  store i32 %.val164, ptr %i.cd, align 4
  store <4 x i32> %i.ix, ptr %i.ce, align 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.1) ]
  %i.iz = icmp eq ptr %.sroa.13.1, %i.cc
  br i1 %i.iz, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_RNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECs7gfv9tzbXmh_6yara_x.exit.thread.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ce
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.13.1, i64 24 ; 5 uses
  %i.jb = load i32, ptr %.sroa.13.1, align 8, !range !5540, !noundef !9 ; 2 uses
  %i.jc = icmp samesign ult i32 %i.jb, 2
  br i1 %i.jc, label %bb.cf, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_RNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECs7gfv9tzbXmh_6yara_x.exit.thread.thread

bb.cf:                                            ; preds = %.lr.ph.preheader
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.13.1, i64 4
  %i.je = load i32, ptr %i.jd, align 4            ; 2 uses
  %i.jf = trunc nuw i32 %i.iv to i1
  %i.jg = trunc nuw i32 %i.jb to i1               ; 2 uses
  br i1 %i.jf, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.jg, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.au, align 4
  br label %bb.cl

bb.ci:                                            ; preds = %bb.cg
  store i32 1, ptr %i.au, align 4
  store i32 %i.je, ptr %i.ce, align 4
  br label %bb.cl

bb.cj:                                            ; preds = %bb.cf
  br i1 %i.jg, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.jh = add i32 %i.je, %i.iy
  store i32 1, ptr %i.au, align 4
  store i32 %i.jh, ptr %i.ce, align 4
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.ch
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.13.1, i64 12
  %i.jj = load i32, ptr %i.ji, align 4
  %i.jk = bitcast <4 x i32> %i.ix to <128 x i1>
  %i.jl = extractelement <128 x i1> %i.jk, i64 32
  br i1 %i.jl, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.13.1, i64 8
  %i.jn = load i32, ptr %i.jm, align 8, !range !21, !noundef !9
  %i.jo = trunc nuw i32 %i.jn to i1
  br i1 %i.jo, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  store i32 0, ptr %i.cf, align 4
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  %i.jp = extractelement <4 x i32> %i.ix, i64 2
  %i.jq = add i32 %i.jj, %i.jp
  store i32 1, ptr %i.cf, align 4
  store i32 %i.jq, ptr %i.cg, align 4
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.jr = invoke { i32, i32 } @_RNvXst_NtCsfF8zpZz1lvn_13yara_x_parser3astNtB5_7HexJumpNtB5_8WithSpan4span(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %.sroa.13.1)
          to label %bb.cq unwind label %.loopexit.split-lp316.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 2 uses

bb.cq:                                            ; preds = %bb.cp
  %i.js = icmp eq ptr %i.ja, %i.cc
  br i1 %i.js, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_RNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECs7gfv9tzbXmh_6yara_x.exit.thread.thread646, label %.lr.ph.preheader764

.lr.ph.preheader764:                              ; preds = %bb.cq
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.13.1, i64 48 ; 2 uses
  %i.ju = load i32, ptr %i.ja, align 8, !range !5540, !noundef !9 ; 2 uses
  %i.jv = icmp samesign ult i32 %i.ju, 2
  br i1 %i.jv, label %.lr.ph900, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_RNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECs7gfv9tzbXmh_6yara_x.exit.thread.thread646

bb.cr:                                            ; preds = %bb.da
  %i.jw = icmp eq ptr %i.kb, %i.cc
  br i1 %i.jw, label %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_RNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECs7gfv9tzbXmh_6yara_x.exit.thread_crit_edge, label %.lr.ph, !llvm.loop !5510

.lr.ph:                                           ; preds = %bb.cr
  %i.jx = getelementptr inbounds nuw i8, ptr %i.kb, i64 24 ; 2 uses
  %i.jy = load i32, ptr %i.kb, align 8, !range !5540, !noundef !9 ; 2 uses
  %i.jz = icmp samesign ult i32 %i.jy, 2
  br i1 %i.jz, label %.lr.ph900, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_RNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECs7gfv9tzbXmh_6yara_x.exit.thread.thread646, !llvm.loop !5510

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_RNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECs7gfv9tzbXmh_6yara_x.exit.thread.thread: ; preds = %bb.ce, %.lr.ph.preheader
  %.sroa.0.0.i.i.i273.ph = phi ptr [ %.sroa.13.1, %.lr.ph.preheader ], [ null, %bb.ce ]
  %.sroa.13.5272.ph = phi ptr [ %i.ja, %.lr.ph.preheader ], [ %i.cc, %bb.ce ]
  %.sroa.7.0.le641 = extractvalue { i32, i32 } %i.em, 1
  br label %bb.db

._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_RNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECs7gfv9tzbXmh_6yara_x.exit.thread_crit_edge: ; preds = %bb.cr
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_RNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECs7gfv9tzbXmh_6yara_x.exit.thread.thread646, !llvm.loop !5510

.lr.ph900:                                        ; preds = %.lr.ph.preheader764, %.lr.ph
  %i.ka = phi i32 [ %i.jy, %.lr.ph ], [ %i.ju, %.lr.ph.preheader764 ]
  %i.kb = phi ptr [ %i.jx, %.lr.ph ], [ %i.jt, %.lr.ph.preheader764 ] ; 6 uses
  %.sroa.13.3456899 = phi ptr [ %i.kb, %.lr.ph ], [ %i.ja, %.lr.ph.preheader764 ] ; 4 uses
  %i.kc = load i32, ptr %i.au, align 4, !range !21, !noundef !9
  %i.kd = load i32, ptr %i.ce, align 4
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.13.3456899, i64 4
  %i.kf = load i32, ptr %i.ke, align 4            ; 2 uses
  %i.kg = trunc nuw i32 %i.kc to i1
  %i.kh = trunc nuw i32 %i.ka to i1               ; 2 uses
  br i1 %i.kg, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %.lr.ph900
  br i1 %i.kh, label %bb.cw, label %bb.cv

bb.ct:                                            ; preds = %.lr.ph900
  br i1 %i.kh, label %bb.cu, label %4

bb.cu:                                            ; preds = %bb.ct
  store i32 1, ptr %i.au, align 4
  store i32 %i.kf, ptr %i.ce, align 4
  br label %bb.cv

4:                                                ; preds = %bb.ct
  store i32 0, ptr %i.au, align 4
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cs, %bb.cw, %4, %bb.cu
  %i.ki = load i32, ptr %i.cf, align 4, !range !21, !noundef !9
  %i.kj = load i32, ptr %i.cg, align 4
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.13.3456899, i64 12
  %i.kl = load i32, ptr %i.kk, align 4
  %i.km = trunc nuw i32 %i.ki to i1
  br i1 %i.km, label %bb.cx, label %bb.cy

bb.cw:                                            ; preds = %bb.cs
  %i.kn = add i32 %i.kf, %i.kd
  store i32 1, ptr %i.au, align 4
  store i32 %i.kn, ptr %i.ce, align 4
  br label %bb.cv

bb.cx:                                            ; preds = %bb.cv
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.13.3456899, i64 8
  %i.kp = load i32, ptr %i.ko, align 8, !range !21, !noundef !9
  %i.kq = trunc nuw i32 %i.kp to i1
  br i1 %i.kq, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cv
  store i32 0, ptr %i.cf, align 4
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.kr = add i32 %i.kl, %i.kj
  store i32 1, ptr %i.cf, align 4
  store i32 %i.kr, ptr %i.cg, align 4
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.ks = invoke { i32, i32 } @_RNvXst_NtCsfF8zpZz1lvn_13yara_x_parser3astNtB5_7HexJumpNtB5_8WithSpan4span(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %.sroa.13.3456899)
          to label %bb.cr unwind label %.loopexit.split-lp316.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 2 uses

bb.db:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_RNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECs7gfv9tzbXmh_6yara_x.exit.thread.thread, %_RINvMsC_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Warnings3addNCNvNtNtB6_2ir7hex2hir28hex_sub_pattern_hir_from_ast0EB8_.exit
  %.sroa.7.0.le645 = phi i32 [ %.sroa.7.0.le641, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_RNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECs7gfv9tzbXmh_6yara_x.exit.thread.thread ], [ %.sroa.7.0.le655, %_RINvMsC_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Warnings3addNCNvNtNtB6_2ir7hex2hir28hex_sub_pattern_hir_from_ast0EB8_.exit ] ; 2 uses
  %.sroa.13.5272644 = phi ptr [ %.sroa.13.5272.ph, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_RNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECs7gfv9tzbXmh_6yara_x.exit.thread.thread ], [ %.sroa.13.5272654, %_RINvMsC_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Warnings3addNCNvNtNtB6_2ir7hex2hir28hex_sub_pattern_hir_from_ast0EB8_.exit ]
  %.sroa.0.0.i.i.i273643 = phi ptr [ %.sroa.0.0.i.i.i273.ph, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_RNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECs7gfv9tzbXmh_6yara_x.exit.thread.thread ], [ %.sroa.0.0.i.i.i273653, %_RINvMsC_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Warnings3addNCNvNtNtB6_2ir7hex2hir28hex_sub_pattern_hir_from_ast0EB8_.exit ]
  %.sroa.016.0.lcssa642 = phi i1 [ false, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_RNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECs7gfv9tzbXmh_6yara_x.exit.thread.thread ], [ true, %_RINvMsC_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Warnings3addNCNvNtNtB6_2ir7hex2hir28hex_sub_pattern_hir_from_ast0EB8_.exit ]
  %i.kt = load i32, ptr %i.au, align 4, !range !21, !noundef !9
  %i.ku = load i32, ptr %i.ce, align 4            ; 4 uses
  %i.kv = load i32, ptr %i.cg, align 4            ; 4 uses
  %i.kw = trunc nuw i32 %i.kt to i1               ; 2 uses
  %i.kx = load i32, ptr %i.cf, align 4, !range !21 ; 2 uses
  %i.ky = trunc nuw i32 %i.kx to i1
  %or.cond149 = select i1 %i.kw, i1 %i.ky, i1 false
  br i1 %or.cond149, label %bb.ev, label %bb.eu

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_RNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECs7gfv9tzbXmh_6yara_x.exit.thread.thread646: ; preds = %.lr.ph, %.lr.ph.preheader764, %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_RNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECs7gfv9tzbXmh_6yara_x.exit.thread_crit_edge, %bb.cq
  %.pn = phi { i32, i32 } [ %i.jr, %bb.cq ], [ %i.jr, %.lr.ph.preheader764 ], [ %i.ks, %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_RNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECs7gfv9tzbXmh_6yara_x.exit.thread_crit_edge ], [ %i.ks, %.lr.ph ]
  %.sroa.13.5272654 = phi ptr [ %i.cc, %bb.cq ], [ %i.jt, %.lr.ph.preheader764 ], [ %i.kb, %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_RNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECs7gfv9tzbXmh_6yara_x.exit.thread_crit_edge ], [ %i.jx, %.lr.ph ]
  %.sroa.0.0.i.i.i273653 = phi ptr [ null, %bb.cq ], [ %i.ja, %.lr.ph.preheader764 ], [ null, %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_RNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECs7gfv9tzbXmh_6yara_x.exit.thread_crit_edge ], [ %i.kb, %.lr.ph ]
  %.sroa.7.0.le655 = extractvalue { i32, i32 } %.pn, 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.kz = extractvalue { i32, i32 } %i.em, 0      ; 3 uses
  %i.la = load <2 x i32>, ptr %i.cj, align 8
  store <2 x i32> %i.la, ptr %i.at, align 8
  store i32 %i.kz, ptr %i.cl, align 8
  store i32 %.sroa.7.0.le655, ptr %i.cm, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %i.cp, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.dc unwind label %.loopexit.split-lp316.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.dc:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_RNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECs7gfv9tzbXmh_6yara_x.exit.thread.thread646
  %i.lb = load i64, ptr %i.s, align 8, !range !13, !noundef !9
  %i.lc = trunc nuw i64 %i.lb to i1
  %i.ld = load i64, ptr %i.cq, align 8, !range !18, !noundef !9 ; 3 uses
  br i1 %i.lc, label %bb.dd, label %bb.de, !prof !11

bb.dd:                                            ; preds = %bb.dc
  %i.le = load i64, ptr %i.cr, align 8
  br label %.invoke762

bb.de:                                            ; preds = %bb.dc
  %i.lf = load ptr, ptr %i.cr, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.lg = icmp ule i64 %i.cp, %i.ld
  call void @llvm.assume(i1 %i.lg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br i1 %.not128, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.dg, %bb.de
  store i64 %i.ld, ptr %i.as, align 8
  store ptr %i.lf, ptr %.sroa.477.0..sroa_idx, align 8
  store i64 %i.cp, ptr %.sroa.678.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr %i.au, ptr %i.ap, align 8
  store ptr @_RNvXsc_NtCsfF8zpZz1lvn_13yara_x_parser3astNtB5_7HexJumpNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noundef nonnull @72, ptr noundef nonnull %i.ap)
          to label %bb.dh unwind label %bb.gl

bb.dg:                                            ; preds = %bb.de
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lf, ptr nonnull align 1 %i.cn, i64 %i.cp, i1 false)
  br label %bb.df

bb.dh:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.lh = load i32, ptr %i.cj, align 8, !range !21, !noundef !9 ; 2 uses
  %i.li = load i32, ptr %i.ck, align 4            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) @143, i64 32, i1 false), !noalias !5549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5549
  store ptr %i.as, ptr %i.i, align 8, !noalias !5549
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !5549
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @373, ptr noundef nonnull %i.i)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.di, !noalias !5550

bb.di:                                            ; preds = %bb.dh
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !5549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5549
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !5550
  %i.lk = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 72, i64 noundef 8) #45, !noalias !5550 ; 9 uses
  %i.ll = icmp eq ptr %i.lk, null
  br i1 %i.ll, label %bb.dj, label %bb.dm, !prof !11

bb.dj:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #41
          to label %.noexc.i unwind label %.thread46.i, !noalias !5550

.thread46.i:                                      ; preds = %bb.dj
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

.noexc.i:                                         ; preds = %bb.dj
  unreachable

bb.dk:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit33.i
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dl:                                            ; preds = %bb.dm
  %i.lo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #42
          to label %.thread42.i unwind label %bb.dr, !noalias !5551

bb.dm:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @143, i64 32, i1 false), !noalias !5549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5549
  store ptr %i.ar, ptr %i.e, align 8, !noalias !5549
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !5549
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @374, ptr noundef nonnull %i.e)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit33.i unwind label %bb.dl, !noalias !5551

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit33.i: ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lk, ptr noundef nonnull align 8 dereferenceable(32) @143, i64 32, i1 false), !noalias !5551
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lk, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !5551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5549
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lk, i64 32
  store i32 %i.lh, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !5551
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lk, i64 36
  store i32 %i.li, ptr %.sroa.53.0..sroa_idx.i, align 4, !noalias !5551
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lk, i64 40
  store i32 %i.kz, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !5551
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lk, i64 44
  store i32 %.sroa.7.0.le655, ptr %.sroa.7.0..sroa_idx.i, align 4, !noalias !5551
  store i64 1, ptr %i.h, align 8, !noalias !5549
  store ptr %i.lk, ptr %i.cs, align 8, !noalias !5549
  store i64 1, ptr %i.ct, align 8, !noalias !5549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5549
  store i64 0, ptr %i.d, align 8, !noalias !5549
  store ptr inttoptr (i64 8 to ptr), ptr %i.cu, align 8, !noalias !5549
  store i64 0, ptr %i.cv, align 8, !noalias !5549
  invoke void @_RNvMsa_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB5_13ReportBuilder13create_report(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.m, ptr noundef nonnull align 8 %i.ci, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 17, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.dn unwind label %bb.dk, !noalias !5551

bb.dn:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !5550
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !5552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.n, ptr noundef nonnull align 8 dereferenceable(168) %i.m, i64 168, i1 false), !noalias !5549
  store i32 %i.lh, ptr %i.cy, align 8, !noalias !5553
  store i32 %i.li, ptr %.sroa.5226.0..sroa_idx, align 4, !noalias !5553
  store i32 %i.kz, ptr %.sroa.7227.0..sroa_idx, align 8, !noalias !5553
  store i32 %.sroa.7.0.le655, ptr %.sroa.9.0..sroa_idx, align 4, !noalias !5553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5549
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !5554
  %i.lp = call noundef align 8 dereferenceable_or_null(232) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 232, i64 noundef 8) #45, !noalias !5554 ; 11 uses
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %bb.do, label %bb.dw, !prof !11

bb.do:                                            ; preds = %bb.dn
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 232) #41
          to label %.noexc34.i unwind label %bb.dp, !noalias !5551

.noexc34.i:                                       ; preds = %bb.do
  unreachable

bb.dp:                                            ; preds = %bb.do
end_hunk_1
