Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.08?download=true
inline.NumInlined: 3676
inline.NumDeleted: 1536
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RINvMNtNtCskKLDkoKarTP_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser10ExportInfoEE8try_initNCINvB2_11get_or_initNCNvMs_B1d_NtB1d_2PE11get_exports0E0zEB1j_:bb.a
  %i.d = icmp eq i64 %.pre, -2
  store ptr %0, ptr %i.a, align 8
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtB4_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser10ExportInfoETBX_BY_EEEB1s_.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtB4_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser10ExportInfoETBX_BY_EEEB1s_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 29 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #42
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtB4_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser10ExportInfoETBX_BY_EEEB1s_.exit: ; preds = %.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMNtNtCskKLDkoKarTP_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser10RichHeaderEE15get_or_try_initNCINvB2_11get_or_initNCNvMs_B1d_NtB1d_2PE15get_rich_header0E0zEB1j_(ptr noundef nonnull returned align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.a, -2
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCskKLDkoKarTP_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser10RichHeaderEE8try_initNCINvB2_11get_or_initNCNvMs_B1d_NtB1d_2PE15get_rich_header0E0zEB1j_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvMNtNtCskKLDkoKarTP_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser10RichHeaderEE8try_initNCINvB2_11get_or_initNCNvMs_B1d_NtB1d_2PE15get_rich_header0E0zEB1j_(ptr noundef nonnull returned align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [4 x i8], align 4                 ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [4 x i8], align 4                 ; 4 uses
  %i.m = alloca [88 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !96
  %i.n = tail call fastcc { i64, i64 } @_RNvNtCslssDYltVX0B_6memchr6memmem5rfind(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42) #43 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %i.p = extractvalue { i64, i64 } %i.n, 1        ; 8 uses
  %i.q = trunc nuw i64 %i.o to i1
  br i1 %i.q, label %bb.b, label %_RNCINvMNtNtCskKLDkoKarTP_4core4cell4onceINtB5_8OnceCellINtNtB9_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser10RichHeaderEE11get_or_initNCNvMs_B1f_NtB1f_2PE15get_rich_header0E0B1l_.exit

bb.b:                                             ; preds = %bb.a
  %i.r = add i64 %i.p, 4                          ; 4 uses
  %i.s = icmp ugt i64 %i.r, %2
  br i1 %i.s, label %bb.f, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.t = sub nuw nsw i64 %2, %i.r                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !97
  store ptr %i.u, ptr %i.b, align 8, !noalias !98
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.t, ptr %i.v, align 8, !noalias !98
  %i.w = icmp samesign ult i64 %i.t, 4
  br i1 %i.w, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !97
  store ptr %i.u, ptr %i.a, align 8, !noalias !97
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.x, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !97
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !97
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.08.i.i.i.i = phi i32 [ %i.ak, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.y = phi i64 [ %.pr.i.i.i.i, %bb.e ], [ 4, %bb.d ]
  %i.z = add i64 %i.y, -1
  store i64 %i.z, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !99, !noalias !100
  %i.aa = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !101 ; 2 uses
  %i.ab = extractvalue { i1, i8 } %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.ac = extractvalue { i1, i8 } %i.aa, 1
  %i.ad = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !102, !noalias !100, !noundef !5 ; 2 uses
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !102, !noalias !100
  %i.af = zext i8 %i.ac to i32
  %i.ag = trunc i64 %i.ad to i32
  %i.ah = shl i32 %i.ag, 3
  %i.ai = and i32 %i.ah, 24
  %i.aj = shl nuw i32 %i.af, %i.ai
  %i.ak = add i32 %i.aj, %.sroa.0.08.i.i.i.i      ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !99, !noalias !100 ; 2 uses
  %i.al = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.al, label %bb.h, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.r, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #42, !noalias !103
  unreachable

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97
  br label %_RNCINvMNtNtCskKLDkoKarTP_4core4cell4onceINtB5_8OnceCellINtNtB9_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser10RichHeaderEE11get_or_initNCNvMs_B1f_NtB1f_2PE15get_rich_header0E0B1l_.exit

bb.h:                                             ; preds = %bb.e, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ %i.ak, %bb.e ], [ %.sroa.0.08.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !97
  %i.am = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 4), !noalias !104 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97
  %.not140.i.i.i = icmp ugt i64 %i.p, %2
  br i1 %.not140.i.i.i, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.p, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #42, !noalias !103
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.an = xor i32 %.sroa.0.0.lcssa.i.i.i.i, 1399742788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !97
  store i32 %i.an, ptr %i.l, align 4, !noalias !97
  %i.ao = call fastcc { i64, i64 } @_RNvNtCslssDYltVX0B_6memchr6memmem5rfind(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l) #43 ; 2 uses
  %i.ap = extractvalue { i64, i64 } %i.ao, 0
  %i.aq = extractvalue { i64, i64 } %i.ao, 1      ; 6 uses
  %i.ar = trunc nuw i64 %i.ap to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !97
  br i1 %i.ar, label %bb.k, label %_RNCINvMNtNtCskKLDkoKarTP_4core4cell4onceINtB5_8OnceCellINtNtB9_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser10RichHeaderEE11get_or_initNCNvMs_B1f_NtB1f_2PE15get_rich_header0E0B1l_.exit

bb.k:                                             ; preds = %bb.j
  %i.as = icmp ult i64 %i.p, %i.aq
  br i1 %i.as, label %bb.m, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  %i.at = sub nuw nsw i64 %i.p, %i.aq             ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !97
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.at, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !103
  %i.av = load i64, ptr %i.f, align 8, !range !9, !noalias !97, !noundef !5
  %i.aw = trunc nuw i64 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !10, !noalias !97, !noundef !5 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.aw, label %bb.n, label %bb.o, !prof !6

bb.m:                                             ; preds = %bb.k
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.aq, i64 noundef %i.p, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #42, !noalias !103
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ba = load i64, ptr %i.az, align 8, !noalias !97
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ay, i64 %i.ba) #44, !noalias !103
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr %i.az, align 8, !noalias !97, !nonnull !5, !noundef !5 ; 6 uses
  %i.bc = icmp ule i64 %i.at, %i.ay
  call void @llvm.assume(i1 %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !97
  store i64 %i.ay, ptr %i.k, align 8, !noalias !97
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.bb, ptr %i.bd, align 8, !noalias !97
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 0, ptr %i.be, align 8, !noalias !97
  %.not141.i.i.i = icmp eq i64 %i.p, %i.aq
  %i.bf = ptrtoint ptr %i.bb to i64
  br i1 %.not141.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !97
  store i32 %.sroa.0.0.lcssa.i.i.i.i, ptr %i.h, align 4, !noalias !97
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  invoke void @_RNvMNtNtNtCskKLDkoKarTP_4core4iter8adapters5cycleINtB2_5CycleINtNtNtB8_5slice4iter4IterhEE3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bg)
          to label %bb.s unwind label %bb.r, !noalias !103

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull readonly align 1 %i.au, i64 %i.at, i1 false), !noalias !103
  store i64 %i.at, ptr %i.be, align 8, !noalias !97
  br label %bb.p

bb.r:                                             ; preds = %bb.z, %bb.x, %bb.v, %select.unfold.i.i.i, %bb.s, %bb.p
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #45
          to label %bb.ad unwind label %bb.ac, !noalias !103

bb.s:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3zipINtNtNtB8_5slice4iter7IterMuthEINtNtB4_5cycle5CycleINtBQ_4IterhEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.j, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bi, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.i)
          to label %bb.t unwind label %bb.r, !noalias !103

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !97
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr %i.j, align 8, !noalias !97, !nonnull !5, !noundef !5 ; 12 uses
  %.sroa.01.0.copyload.i.i.i84 = ptrtoaddr ptr %.sroa.01.0.copyload.i.i.i to i64 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !97, !nonnull !5, !noundef !5 ; 4 uses
  %.sroa.5.0.copyload.i.i.i83 = ptrtoaddr ptr %.sroa.5.0.copyload.i.i.i to i64 ; 4 uses
  %.sroa.62.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.62.0.copyload.i.i.i = load ptr, ptr %.sroa.62.0..sroa_idx.i.i.i, align 8, !noalias !97 ; 5 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.7.0.copyload.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !97 ; 4 uses
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.8.0.copyload.i.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !97 ; 11 uses
  %.sroa.8.0.copyload.i.i.i86 = ptrtoaddr ptr %.sroa.8.0.copyload.i.i.i to i64 ; 2 uses
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.11.0.copyload.i.i.i = load ptr, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !97 ; 7 uses
  %.sroa.11.0.copyload.i.i.i85 = ptrtoaddr ptr %.sroa.11.0.copyload.i.i.i to i64 ; 2 uses
  %i.bj = icmp eq ptr %.sroa.01.0.copyload.i.i.i, %.sroa.5.0.copyload.i.i.i
  br i1 %i.bj, label %select.unfold.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t
  %i.bk = icmp eq ptr %.sroa.62.0.copyload.i.i.i, %.sroa.7.0.copyload.i.i.i
  %.fr.i.i.i = freeze i1 %i.bk
  br i1 %.fr.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i.preheader

.lr.ph.split.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i
  %i.bl = sub i64 %.sroa.5.0.copyload.i.i.i83, %.sroa.01.0.copyload.i.i.i84
  %xtraiter = and i64 %i.bl, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.prol

.lr.ph.split.i.i.i.prol:                          ; preds = %.lr.ph.split.i.i.i.preheader
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i.i, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload.i.i.i) ]
  %i.bn = icmp eq ptr %.sroa.8.0.copyload.i.i.i, %.sroa.11.0.copyload.i.i.i ; 2 uses
  %spec.select.i.i.i.prol = select i1 %i.bn, ptr %.sroa.7.0.copyload.i.i.i, ptr %.sroa.11.0.copyload.i.i.i
  %spec.select82.i.i.i.prol = select i1 %i.bn, ptr %.sroa.62.0.copyload.i.i.i, ptr %.sroa.8.0.copyload.i.i.i ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %spec.select82.i.i.i.prol, i64 1
  %i.bp = load i8, ptr %spec.select82.i.i.i.prol, align 1, !noalias !103, !noundef !5
  %i.bq = load i8, ptr %.sroa.01.0.copyload.i.i.i, align 1, !noalias !103, !noundef !5
  %i.br = xor i8 %i.bq, %i.bp
  store i8 %i.br, ptr %.sroa.01.0.copyload.i.i.i, align 1, !noalias !103
  br label %.lr.ph.split.i.i.i.prol.loopexit

.lr.ph.split.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.split.i.i.i.prol, %.lr.ph.split.i.i.i.preheader
  %.sroa.01.080.i.i.i.unr = phi ptr [ %.sroa.01.0.copyload.i.i.i, %.lr.ph.split.i.i.i.preheader ], [ %i.bm, %.lr.ph.split.i.i.i.prol ]
  %.sroa.8.079.i.i.i.unr = phi ptr [ %.sroa.8.0.copyload.i.i.i, %.lr.ph.split.i.i.i.preheader ], [ %i.bo, %.lr.ph.split.i.i.i.prol ]
  %.sroa.11.078.i.i.i.unr = phi ptr [ %.sroa.11.0.copyload.i.i.i, %.lr.ph.split.i.i.i.preheader ], [ %spec.select.i.i.i.prol, %.lr.ph.split.i.i.i.prol ]
  %i.bs = add i64 %.sroa.5.0.copyload.i.i.i83, -1
  %i.bt = icmp eq i64 %i.bs, %.sroa.01.0.copyload.i.i.i84
  br i1 %i.bt, label %select.unfold.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload.i.i.i) ]
  %i.bu = xor i64 %.sroa.01.0.copyload.i.i.i84, -1
  %i.bv = add i64 %i.bu, %.sroa.5.0.copyload.i.i.i83
  %i.bw = sub i64 %.sroa.11.0.copyload.i.i.i85, %.sroa.8.0.copyload.i.i.i86
  %i.bx = call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.bw)
  %i.by = add i64 %i.bx, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.by, 33
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.i.i.i
  %3 = xor i64 %.sroa.01.0.copyload.i.i.i84, -1
  %4 = add i64 %3, %.sroa.5.0.copyload.i.i.i83
  %5 = sub i64 %.sroa.11.0.copyload.i.i.i85, %.sroa.8.0.copyload.i.i.i86
  %umin = call i64 @llvm.umin.i64(i64 %4, i64 %5)
  %6 = add i64 %umin, 1                           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.01.0.copyload.i.i.i, i64 %6
  %scevgep87 = getelementptr i8, ptr %.sroa.8.0.copyload.i.i.i, i64 %6
  %bound0 = icmp ult ptr %.sroa.01.0.copyload.i.i.i, %scevgep87
  %bound1 = icmp ult ptr %.sroa.8.0.copyload.i.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bz = and i64 %i.by, 31                       ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = select i1 %i.ca, i64 32, i64 %i.bz
  %n.vec = sub i64 %i.by, %i.cb                   ; 3 uses
  %i.cc = getelementptr i8, ptr %.sroa.01.0.copyload.i.i.i, i64 %n.vec
  %i.cd = getelementptr i8, ptr %.sroa.8.0.copyload.i.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.01.0.copyload.i.i.i, i64 %index ; 3 uses
  %next.gep88 = getelementptr i8, ptr %.sroa.8.0.copyload.i.i.i, i64 %index ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep88) ]
  %i.ce = getelementptr i8, ptr %next.gep88, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep88, align 1, !alias.scope !105, !noalias !103
  %wide.load120 = load <16 x i8>, ptr %i.ce, align 1, !alias.scope !105, !noalias !103
  %i.cf = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load121 = load <16 x i8>, ptr %next.gep, align 1, !alias.scope !106, !noalias !107
  %wide.load122 = load <16 x i8>, ptr %i.cf, align 1, !alias.scope !106, !noalias !107
  %i.cg = xor <16 x i8> %wide.load121, %wide.load
  %i.ch = xor <16 x i8> %wide.load122, %wide.load120
  store <16 x i8> %i.cg, ptr %next.gep, align 1, !alias.scope !106, !noalias !107
  store <16 x i8> %i.ch, ptr %i.cf, align 1, !alias.scope !106, !noalias !107
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %scalar.ph.preheader, label %vector.body, !llvm.loop !87

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.split.us.i.i.i
  %.sroa.01.080.us.i.i.i.ph = phi ptr [ %.sroa.01.0.copyload.i.i.i, %vector.memcheck ], [ %.sroa.01.0.copyload.i.i.i, %.lr.ph.split.us.i.i.i ], [ %i.cc, %vector.body ]
  %.sroa.8.079.us.i.i.i.ph = phi ptr [ %.sroa.8.0.copyload.i.i.i, %vector.memcheck ], [ %.sroa.8.0.copyload.i.i.i, %.lr.ph.split.us.i.i.i ], [ %i.cd, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.u
  %.sroa.01.080.us.i.i.i = phi ptr [ %i.ck, %bb.u ], [ %.sroa.01.080.us.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.sroa.8.079.us.i.i.i = phi ptr [ %i.cl, %bb.u ], [ %.sroa.8.079.us.i.i.i.ph, %scalar.ph.preheader ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.079.us.i.i.i) ]
  %i.cj = icmp eq ptr %.sroa.8.079.us.i.i.i, %.sroa.11.0.copyload.i.i.i
  br i1 %i.cj, label %.select.unfold_crit_edge.split.us.i.i.i, label %bb.u

.select.unfold_crit_edge.split.us.i.i.i:          ; preds = %scalar.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.62.0.copyload.i.i.i) ]
  br label %select.unfold.i.i.i

bb.u:                                             ; preds = %scalar.ph
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.01.080.us.i.i.i, i64 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.8.079.us.i.i.i, i64 1
  %i.cm = load i8, ptr %.sroa.8.079.us.i.i.i, align 1, !noalias !103, !noundef !5
  %i.cn = load i8, ptr %.sroa.01.080.us.i.i.i, align 1, !noalias !103, !noundef !5
  %i.co = xor i8 %i.cn, %i.cm
  store i8 %i.co, ptr %.sroa.01.080.us.i.i.i, align 1, !noalias !103
  %i.cp = icmp eq ptr %i.ck, %.sroa.5.0.copyload.i.i.i
  br i1 %i.cp, label %select.unfold.i.i.i, label %scalar.ph, !llvm.loop !88

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i
  %.sroa.01.080.i.i.i = phi ptr [ %i.cw, %.lr.ph.split.i.i.i ], [ %.sroa.01.080.i.i.i.unr, %.lr.ph.split.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.8.079.i.i.i = phi ptr [ %i.cy, %.lr.ph.split.i.i.i ], [ %.sroa.8.079.i.i.i.unr, %.lr.ph.split.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.11.078.i.i.i = phi ptr [ %spec.select.i.i.i.1, %.lr.ph.split.i.i.i ], [ %.sroa.11.078.i.i.i.unr, %.lr.ph.split.i.i.i.prol.loopexit ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.01.080.i.i.i, i64 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.079.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.078.i.i.i) ]
  %i.cr = icmp eq ptr %.sroa.8.079.i.i.i, %.sroa.11.078.i.i.i ; 2 uses
  %spec.select.i.i.i = select i1 %i.cr, ptr %.sroa.7.0.copyload.i.i.i, ptr %.sroa.11.078.i.i.i ; 3 uses
  %spec.select82.i.i.i = select i1 %i.cr, ptr %.sroa.62.0.copyload.i.i.i, ptr %.sroa.8.079.i.i.i ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %spec.select82.i.i.i, i64 1 ; 2 uses
  %i.ct = load i8, ptr %spec.select82.i.i.i, align 1, !noalias !103, !noundef !5
  %i.cu = load i8, ptr %.sroa.01.080.i.i.i, align 1, !noalias !103, !noundef !5
  %i.cv = xor i8 %i.cu, %i.ct
  store i8 %i.cv, ptr %.sroa.01.080.i.i.i, align 1, !noalias !103
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.01.080.i.i.i, i64 2 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select.i.i.i) ]
  %i.cx = icmp eq ptr %i.cs, %spec.select.i.i.i   ; 2 uses
  %spec.select.i.i.i.1 = select i1 %i.cx, ptr %.sroa.7.0.copyload.i.i.i, ptr %spec.select.i.i.i
  %spec.select82.i.i.i.1 = select i1 %i.cx, ptr %.sroa.62.0.copyload.i.i.i, ptr %i.cs ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %spec.select82.i.i.i.1, i64 1
  %i.cz = load i8, ptr %spec.select82.i.i.i.1, align 1, !noalias !103, !noundef !5
  %i.da = load i8, ptr %i.cq, align 1, !noalias !103, !noundef !5
  %i.db = xor i8 %i.da, %i.cz
  store i8 %i.db, ptr %i.cq, align 1, !noalias !103
  %i.dc = icmp eq ptr %i.cw, %.sroa.5.0.copyload.i.i.i
  br i1 %i.dc, label %select.unfold.i.i.i, label %.lr.ph.split.i.i.i

select.unfold.i.i.i:                              ; preds = %.lr.ph.split.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i, %bb.u, %.select.unfold_crit_edge.split.us.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !97
  %i.dd = invoke noundef i64 @_RINvNtCsgkljs906P5b_3nom5bytes4takejRShINtNtB4_5error5ErrorBy_EECs7gfv9tzbXmh_6yara_x(i64 noundef 12)
          to label %bb.v unwind label %bb.r, !noalias !103

bb.v:                                             ; preds = %select.unfold.i.i.i
  store i64 %i.dd, ptr %i.g, align 8, !noalias !97
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !108
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB16_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull %i.de, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef range(i64 0, -9223372036854775808) %i.at)
          to label %.noexc.i.i.i unwind label %bb.r, !noalias !103

.noexc.i.i.i:                                     ; preds = %bb.v
  %i.df = load i64, ptr %i.e, align 8, !range !109, !noalias !108, !noundef !5
  %.not.i.i.i.i = icmp eq i64 %i.df, -1
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !108
  br label %bb.ae

bb.x:                                             ; preds = %.noexc.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.054.0.copyload.i.i.i.i = load ptr, ptr %i.dg, align 8, !noalias !108, !nonnull !5, !noundef !5
  %.sroa.455.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.455.0.copyload.i.i.i.i = load i64, ptr %.sroa.455.0..sroa_idx.i.i.i.i, align 8, !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !108
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_5bytes8complete4takejRShINtNtB8_5error5ErrorB16_EE0INtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2e_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.054.0.copyload.i.i.i.i, i64 noundef %.sroa.455.0.copyload.i.i.i.i)
          to label %.noexc143.i.i.i unwind label %bb.r, !noalias !103

.noexc143.i.i.i:                                  ; preds = %bb.x
  %i.dh = load i64, ptr %i.d, align 8, !range !9, !noalias !108, !noundef !5
  %i.di = trunc nuw i64 %i.dh to i1
  br i1 %i.di, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.noexc143.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !108
  br label %bb.ae

bb.z:                                             ; preds = %.noexc143.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.073.0.copyload.i.i.i.i = load ptr, ptr %i.dj, align 8, !noalias !108, !nonnull !5, !noundef !5
  %.sroa.474.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.474.0.copyload.i.i.i.i = load i64, ptr %.sroa.474.0..sroa_idx.i.i.i.i, align 8, !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !108
  invoke void @_RINvXNtCsgkljs906P5b_3nom5multiINtB3_5Many0TINvNtNtB5_6number8complete6le_u16RShINtNtB5_5error5ErrorB1d_EEBG_INvBJ_6le_u32B1d_B1g_EEEINtNtB5_8internal6ParserB1d_E7processINtB2a_7OutputMNtB2a_4EmitB2X_NtB2a_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull %i.de, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.073.0.copyload.i.i.i.i, i64 noundef %.sroa.474.0.copyload.i.i.i.i)
          to label %.noexc144.i.i.i unwind label %bb.r, !noalias !103

.noexc144.i.i.i:                                  ; preds = %bb.z
  %i.dk = load i64, ptr %i.c, align 8, !range !9, !noalias !108, !noundef !5
  %i.dl = trunc nuw i64 %i.dk to i1
  br i1 %i.dl, label %bb.aa, label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB17_EENCINvNtNtB8_5bytes8complete4takejB17_B1a_E0INtNtB8_5multi5Many0TINvBD_6le_u16B17_B1a_EB2C_BA_EEEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3M_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.i.i

bb.aa:                                            ; preds = %.noexc144.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !108
  br label %bb.ae

_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB17_EENCINvNtNtB8_5bytes8complete4takejB17_B1a_E0INtNtB8_5multi5Many0TINvBD_6le_u16B17_B1a_EB2C_BA_EEEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3M_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %.noexc144.i.i.i
  %.sroa.591.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.591.i.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.591.0..sroa_idx.i.i.i.i, align 8, !noalias !108 ; 2 uses
  %.sroa.591.i.sroa.4.0..sroa.591.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.591.i.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.591.i.sroa.4.0..sroa.591.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !108
  %.sroa.591.i.sroa.5.0..sroa.591.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.591.i.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.591.i.sroa.5.0..sroa.591.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !108
  %i.dm = icmp eq i64 %.sroa.591.i.sroa.0.0.copyload.i.i.i, -1
  br i1 %i.dm, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB17_EENCINvNtNtB8_5bytes8complete4takejB17_B1a_E0INtNtB8_5multi5Many0TINvBD_6le_u16B17_B1a_EB2C_BA_EEEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3M_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.i.i
  %i.dn = inttoptr i64 %.sroa.591.i.sroa.4.0.copyload.i.i.i to ptr
  br label %bb.ae

bb.ac:                                            ; preds = %bb.r
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46, !noalias !103
  unreachable

bb.ad:                                            ; preds = %bb.r
  resume { ptr, i32 } %i.bh

bb.ae:                                            ; preds = %bb.ab, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB17_EENCINvNtNtB8_5bytes8complete4takejB17_B1a_E0INtNtB8_5multi5Many0TINvBD_6le_u16B17_B1a_EB2C_BA_EEEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3M_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.i.i, %bb.aa, %bb.y, %bb.w
  %.sroa.1111.0.i.i.i = phi i64 [ %.sroa.591.i.sroa.5.0.copyload.i.i.i, %bb.ab ], [ 0, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB17_EENCINvNtNtB8_5bytes8complete4takejB17_B1a_E0INtNtB8_5multi5Many0TINvBD_6le_u16B17_B1a_EB2C_BA_EEEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3M_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.w ]
  %.sroa.1010.0.i.i.i = phi ptr [ %i.dn, %bb.ab ], [ inttoptr (i64 4 to ptr), %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB17_EENCINvNtNtB8_5bytes8complete4takejB17_B1a_E0INtNtB8_5multi5Many0TINvBD_6le_u16B17_B1a_EB2C_BA_EEEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3M_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ inttoptr (i64 4 to ptr), %bb.y ], [ inttoptr (i64 4 to ptr), %bb.aa ], [ inttoptr (i64 4 to ptr), %bb.w ]
  %.sroa.89.0.i.i.i = phi i64 [ %.sroa.591.i.sroa.0.0.copyload.i.i.i, %bb.ab ], [ 0, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB17_EENCINvNtNtB8_5bytes8complete4takejB17_B1a_E0INtNtB8_5multi5Many0TINvBD_6le_u16B17_B1a_EB2C_BA_EEEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3M_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !97
  br label %_RNCINvMNtNtCskKLDkoKarTP_4core4cell4onceINtB5_8OnceCellINtNtB9_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser10RichHeaderEE11get_or_initNCNvMs_B1f_NtB1f_2PE15get_rich_header0E0B1l_.exit

_RNCINvMNtNtCskKLDkoKarTP_4core4cell4onceINtB5_8OnceCellINtNtB9_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser10RichHeaderEE11get_or_initNCNvMs_B1f_NtB1f_2PE15get_rich_header0E0B1l_.exit: ; preds = %bb.a, %bb.g, %bb.j, %bb.ae
  %.sroa.13.0.i = phi i32 [ %.sroa.0.0.lcssa.i.i.i.i, %bb.ae ], [ undef, %bb.j ], [ undef, %bb.g ], [ undef, %bb.a ] ; 2 uses
  %.sroa.12.0.i = phi i64 [ %i.aq, %bb.ae ], [ undef, %bb.j ], [ undef, %bb.g ], [ undef, %bb.a ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ %i.at, %bb.ae ], [ undef, %bb.j ], [ undef, %bb.g ], [ undef, %bb.a ] ; 4 uses
  %.sroa.10.0.i = phi ptr [ %i.au, %bb.ae ], [ undef, %bb.j ], [ undef, %bb.g ], [ undef, %bb.a ] ; 2 uses
  %.sroa.9.0.i = phi i64 [ %.sroa.1111.0.i.i.i, %bb.ae ], [ undef, %bb.j ], [ undef, %bb.g ], [ undef, %bb.a ] ; 2 uses
  %.sroa.8.0.i = phi ptr [ %.sroa.1010.0.i.i.i, %bb.ae ], [ undef, %bb.j ], [ undef, %bb.g ], [ undef, %bb.a ] ; 2 uses
  %.sroa.7.0.i = phi i64 [ %.sroa.89.0.i.i.i, %bb.ae ], [ undef, %bb.j ], [ undef, %bb.g ], [ undef, %bb.a ] ; 2 uses
  %.sroa.5.0.i = phi i64 [ %i.bf, %bb.ae ], [ undef, %bb.j ], [ undef, %bb.g ], [ undef, %bb.a ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.ay, %bb.ae ], [ -1, %bb.j ], [ -1, %bb.g ], [ -1, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.dp = load i64, ptr %0, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.dp, -2
  br i1 %.not, label %.thread, label %bb.af

.thread:                                          ; preds = %_RNCINvMNtNtCskKLDkoKarTP_4core4cell4onceINtB5_8OnceCellINtNtB9_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser10RichHeaderEE11get_or_initNCNvMs_B1f_NtB1f_2PE15get_rich_header0E0B1l_.exit
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !110
  %.sroa.429.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.429.0..sroa_idx31, align 8, !alias.scope !110
  %.sroa.533.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@_RNvNtCslssDYltVX0B_6memchr6memmem5rfind:bb.a
  %i.gb = icmp ult i64 %i.ga, %1
  br i1 %i.gb, label %bb.an, label %.noexc9

bb.an:                                            ; preds = %bb.am
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 %i.ga
  %i.gd = load i8, ptr %i.gc, align 1, !alias.scope !4933, !noalias !4934, !noundef !5 ; 2 uses
  %i.ge = and i8 %i.gd, 63
  %i.gf = zext nneg i8 %i.ge to i64
  %i.gg = shl nuw i64 1, %i.gf
  %i.gh = and i64 %i.gg, %i.be
  %.not37.i.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not37.i.i.i, label %.backedge18.i.i, label %bb.ao

.backedge18.i.i:                                  ; preds = %.loopexit16.i.i, %.thread.i.i, %bb.an
  %.sroa.011.0.i.be.i.i = phi i64 [ 4, %bb.an ], [ 4, %.loopexit16.i.i ], [ %i.bh, %.thread.i.i ]
  %.sroa.01.0.i4.be.i.i = phi i64 [ %i.ga, %bb.an ], [ %i.hd, %.loopexit16.i.i ], [ %i.hc, %.thread.i.i ] ; 2 uses
  %.not36.i.i.i = icmp ult i64 %.sroa.01.0.i4.be.i.i, 4
  br i1 %.not36.i.i.i, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %bb.am

.noexc9:                                          ; preds = %bb.am
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ga, i64 noundef range(i64 64, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @442) #42
  unreachable

bb.ao:                                            ; preds = %bb.an
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.011.0.i58.i.i, i64 %.6.i.i.i) ; 4 uses
  %i.gi = add i64 %.sroa.01.0.i459.i.i, -5
  %.first_iter = icmp ult i64 %..i.i.i, 5
  %.not38.i.i.i65 = icmp eq i64 %..i.i.i, 0
  br i1 %.not38.i.i.i65, label %.critedge.i7.i.i, label %.lr.ph

bb.ap:                                            ; preds = %bb.ar
  %.not38.i.i.i = icmp eq i64 %i.gj, 0
  br i1 %.not38.i.i.i, label %.critedge.i7.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ao, %bb.ap
  %.sroa.015.0.i.i.i66 = phi i64 [ %i.gj, %bb.ap ], [ %..i.i.i, %bb.ao ] ; 3 uses
  %i.gj = add i64 %.sroa.015.0.i.i.i66, -1        ; 5 uses
  br i1 %.first_iter, label %bb.aq, label %.noexc10

bb.aq:                                            ; preds = %.lr.ph
  %i.gk = add i64 %i.gi, %.sroa.015.0.i.i.i66     ; 3 uses
  %i.gl = icmp ult i64 %i.gk, %1
  br i1 %i.gl, label %bb.ar, label %.noexc11

.noexc10:                                         ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.gj, i64 noundef range(i64 0, -9223372036854775808) 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @443) #42
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 %i.gj
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !4935, !noalias !4936, !noundef !5
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 %i.gk
  %i.gp = load i8, ptr %i.go, align 1, !alias.scope !4933, !noalias !4934, !noundef !5
  %i.gq = icmp eq i8 %i.gn, %i.gp
  br i1 %i.gq, label %bb.ap, label %.loopexit16.i.i

.noexc11:                                         ; preds = %bb.aq
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.gk, i64 noundef range(i64 64, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @444) #42
  unreachable

.critedge.i7.i.i:                                 ; preds = %bb.ap, %bb.ao
  %.sroa.015.0.i.i.i.lcssa = phi i64 [ %..i.i.i, %bb.ao ], [ %i.gj, %bb.ap ]
  %.not39.i.i.i = icmp eq i8 %i.c, %i.gd
  br i1 %.not39.i.i.i, label %.preheader14.i.i, label %.loopexit16.i.i

.preheader14.i.i:                                 ; preds = %.critedge.i7.i.i
  %i.gr = icmp ult i64 %.6.i.i.i, %.sroa.011.0.i58.i.i
  br i1 %i.gr, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit

.lr.ph.i.i:                                       ; preds = %.preheader14.i.i, %bb.au
  %.sroa.021.0.i55.i.i = phi i64 [ %i.hb, %bb.au ], [ %.6.i.i.i, %.preheader14.i.i ] ; 4 uses
  %exitcond.not.i.i = icmp eq i64 %.sroa.021.0.i55.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %.noexc12, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i
  %i.gs = add nuw i64 %.sroa.021.0.i55.i.i, %i.ga ; 2 uses
  %i.gt = icmp ult i64 %i.gs, %1
  br i1 %i.gt, label %bb.at, label %.noexc13

.noexc12:                                         ; preds = %.lr.ph.i.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax.i.i, i64 noundef range(i64 0, -9223372036854775808) 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @445) #42
  unreachable

bb.at:                                            ; preds = %bb.as
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.021.0.i55.i.i
  %i.gv = load i8, ptr %i.gu, align 1, !alias.scope !4935, !noalias !4936, !noundef !5
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 %i.gs
  %i.gx = load i8, ptr %i.gw, align 1, !alias.scope !4933, !noalias !4934, !noundef !5
  %i.gy = icmp eq i8 %i.gv, %i.gx
  br i1 %i.gy, label %bb.au, label %.thread.i.i

.noexc13:                                         ; preds = %bb.as
  %i.gz = add i64 %.6.i.i.i, -4
  %i.ha = add i64 %i.gz, %.sroa.01.0.i459.i.i
  %umax = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.ha)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef range(i64 64, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #42
  unreachable

bb.au:                                            ; preds = %bb.at
  %i.hb = add i64 %.sroa.021.0.i55.i.i, 1         ; 2 uses
  %exitcond119.not.i.i = icmp eq i64 %i.hb, %.sroa.011.0.i58.i.i
  br i1 %exitcond119.not.i.i, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %.lr.ph.i.i

.thread.i.i:                                      ; preds = %bb.at
  %i.hc = sub i64 %.sroa.01.0.i459.i.i, %i.bh
  br label %.backedge18.i.i

.loopexit16.i.i:                                  ; preds = %bb.ar, %.critedge.i7.i.i
  %.sroa.015.0.i.i.i36 = phi i64 [ %.sroa.015.0.i.i.i.lcssa, %.critedge.i7.i.i ], [ %.sroa.015.0.i.i.i66, %bb.ar ]
  %.neg.i5.i.i = add i64 %.sroa.01.0.i459.i.i, %i.bt
  %i.hd = add i64 %.neg.i5.i.i, %.sroa.015.0.i.i.i36
  br label %.backedge18.i.i

_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev3new.exit: ; preds = %bb.a
  %i.he = getelementptr i8, ptr %2, i64 4         ; 2 uses
  %i.hf = getelementptr i8, ptr %2, i64 3
  %i.hg = load i8, ptr %i.hf, align 1, !alias.scope !4937, !noundef !5
  %i.hh = zext i8 %i.hg to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.he) ]
  %i.hi = getelementptr i8, ptr %2, i64 2
  %.sroa.5.0.peel.i = load i8, ptr %i.hi, align 1, !alias.scope !4937, !noundef !5
  %i.hj = zext i8 %.sroa.5.0.peel.i to i32
  %i.hk = getelementptr i8, ptr %2, i64 1
  %.sroa.5.0.i = load i8, ptr %i.hk, align 1, !alias.scope !4937, !noundef !5
  %i.hl = shl nuw nsw i32 %i.hh, 2
  %i.hm = shl nuw nsw i32 %i.hj, 1
  %i.hn = add nuw nsw i32 %i.hl, %i.hm
  %i.ho = zext i8 %.sroa.5.0.i to i32
  %i.hp = add nuw nsw i32 %i.hn, %i.ho
  %.sroa.5.0.i.1 = load i8, ptr %2, align 1, !alias.scope !4937, !noundef !5
  %i.hq = shl nuw nsw i32 %i.hp, 1
  %i.hr = zext i8 %.sroa.5.0.i.1 to i32
  %i.hs = add nuw nsw i32 %i.hq, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.hu = tail call noundef i64 @_RNvXNtCslssDYltVX0B_6memchr3extPhNtB2_7Pointer8distanceCs7gfv9tzbXmh_6yara_x(ptr noundef nonnull readonly %i.ht, ptr noundef nonnull readonly %0), !noalias !4938
  %i.hv = tail call noundef i64 @_RNvXNtCslssDYltVX0B_6memchr3extPhNtB2_7Pointer8distanceCs7gfv9tzbXmh_6yara_x(ptr noundef nonnull readonly %i.he, ptr noundef nonnull readonly %2) ; 5 uses
  %i.hw = icmp ugt i64 %i.hv, %i.hu
  br i1 %i.hw, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %bb.av

bb.av:                                            ; preds = %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev3new.exit
  %i.hx = sub nsw i64 0, %i.hv
  %i.hy = getelementptr inbounds i8, ptr %i.ht, i64 %i.hx ; 2 uses
  %i.hz = icmp sgt i64 %i.hv, 0
  br i1 %i.hz, label %.lr.ph.i.i17, label %.preheader.i.i.preheader

.lr.ph.i.i17:                                     ; preds = %bb.av, %.lr.ph.i.i17
  %.sroa.09.02.i.i = phi ptr [ %i.ia, %.lr.ph.i.i17 ], [ %i.ht, %bb.av ]
  %.sroa.012.01.i.i = phi i32 [ %i.ie, %.lr.ph.i.i17 ], [ 0, %bb.av ]
  %i.ia = getelementptr inbounds i8, ptr %.sroa.09.02.i.i, i64 -1 ; 3 uses
  %i.ib = load i8, ptr %i.ia, align 1, !alias.scope !4939, !noalias !4938, !noundef !5
  %i.ic = shl i32 %.sroa.012.01.i.i, 1
  %i.id = zext i8 %i.ib to i32
  %i.ie = add i32 %i.ic, %i.id                    ; 2 uses
  %i.if = icmp ult ptr %i.hy, %i.ia
  br i1 %i.if, label %.lr.ph.i.i17, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i17, %bb.av
  %.sroa.012.1.i.i.ph = phi i32 [ 0, %bb.av ], [ %i.ie, %.lr.ph.i.i17 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.ay
  %.sroa.012.1.i.i = phi i32 [ %i.ir, %bb.ay ], [ %.sroa.012.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.ii, %bb.ay ], [ %i.hy, %.preheader.i.i.preheader ] ; 4 uses
  %i.ig = icmp eq i32 %i.hs, %.sroa.012.1.i.i
  br i1 %i.ig, label %bb.ax, label %bb.aw, !prof !6

bb.aw:                                            ; preds = %bb.ax, %.preheader.i.i
  %.not.i.i = icmp ugt ptr %.sroa.01.0.i.i, %0
  br i1 %.not.i.i, label %bb.ay, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit

bb.ax:                                            ; preds = %.preheader.i.i
  %i.ih = tail call noundef zeroext i1 @_RNvNtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarp12is_equal_raw(ptr noundef nonnull %.sroa.01.0.i.i, ptr noundef nonnull readonly %2, i64 noundef %i.hv) #48
  br i1 %i.ih, label %bb.az, label %bb.aw

bb.ay:                                            ; preds = %bb.aw
  %i.ii = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -1 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.hv
  %i.ik = load i8, ptr %i.ij, align 1, !alias.scope !4939, !noalias !4938, !noundef !5
  %i.il = load i8, ptr %i.ii, align 1, !alias.scope !4939, !noalias !4938, !noundef !5
  %i.im = zext i8 %i.ik to i32
  %i.in = shl nuw nsw i32 %i.im, 4
  %i.io = shl i32 %.sroa.012.1.i.i, 1
  %i.ip = sub i32 %i.io, %i.in
  %i.iq = zext i8 %i.il to i32
  %i.ir = add i32 %i.ip, %i.iq
  br label %.preheader.i.i

bb.az:                                            ; preds = %bb.ax
  %i.is = tail call noundef i64 @_RNvXNtCslssDYltVX0B_6memchr3extPhNtB2_7Pointer8distanceCs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %.sroa.01.0.i.i, ptr noundef nonnull readonly %0)
  br label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit

_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit: ; preds = %.preheader14.i.i, %.backedge18.i.i, %bb.au, %.backedge.i.i, %.backedge.i.us71.us.i, %bb.ak, %.backedge.i.us.i, %._crit_edge.i.us.i, %bb.ag, %bb.ab, %bb.ad, %bb.af, %bb.aw, %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs7gfv9tzbXmh_6yara_x.exit.sink.split.i.i, %.noexc, %_RINvMs4_NtCslssDYltVX0B_6memchr6memmemNtB6_13FinderBuilder13build_reverseShECs7gfv9tzbXmh_6yara_x.exit, %bb.az, %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev3new.exit
  %.sroa.0.0.i16.pn = phi i64 [ 0, %bb.aw ], [ 1, %bb.az ], [ 0, %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev3new.exit ], [ 1, %bb.ag ], [ 1, %bb.au ], [ 1, %_RINvMs4_NtCslssDYltVX0B_6memchr6memmemNtB6_13FinderBuilder13build_reverseShECs7gfv9tzbXmh_6yara_x.exit ], [ 0, %.noexc ], [ 0, %.backedge.i.us71.us.i ], [ 1, %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs7gfv9tzbXmh_6yara_x.exit.sink.split.i.i ], [ 1, %._crit_edge.i.us.i ], [ 0, %.backedge.i.i ], [ 1, %bb.af ], [ 1, %bb.ad ], [ 1, %bb.ab ], [ 0, %.backedge.i.us.i ], [ 1, %bb.ak ], [ 1, %.preheader14.i.i ], [ 0, %.backedge18.i.i ]
  %.sroa.3.0.i15.pn = phi i64 [ undef, %bb.aw ], [ %i.is, %bb.az ], [ undef, %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev3new.exit ], [ %i.cn, %bb.ag ], [ %i.ga, %bb.au ], [ %1, %_RINvMs4_NtCslssDYltVX0B_6memchr6memmemNtB6_13FinderBuilder13build_reverseShECs7gfv9tzbXmh_6yara_x.exit ], [ undef, %.noexc ], [ %i.ev, %.backedge.i.us71.us.i ], [ %i.br, %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs7gfv9tzbXmh_6yara_x.exit.sink.split.i.i ], [ %i.cn, %.backedge.i.us.i ], [ %i.fr, %.backedge.i.i ], [ %i.cn, %bb.af ], [ %i.cn, %bb.ad ], [ %i.cn, %bb.ab ], [ %i.cn, %._crit_edge.i.us.i ], [ %i.ev, %bb.ak ], [ %i.ga, %.backedge18.i.i ], [ %i.ga, %.preheader14.i.i ]
  %.pn30 = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i16.pn, 0
  %.pn = insertvalue { i64, i64 } %.pn30, i64 %.sroa.3.0.i15.pn, 1
  ret { i64, i64 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i64, i64 } @_RNvNtNtCslssDYltVX0B_6memchr6memmem8searcher19searcher_kind_empty(ptr noalias nofree readonly align 32 captures(none) %0, ptr noalias nofree readnone align 4 captures(none) %1, ptr noalias nofree nonnull readonly captures(none) %2, i64 range(i64 0, -9223372036854775808) %3, ptr noalias nofree nonnull readonly captures(none) %4, i64 range(i64 0, -9223372036854775808) %5) unnamed_addr #17 {
bb.a:
  ret { i64, i64 } { i64 1, i64 0 }
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto215file_descriptor() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto215file_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2z_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto215file_descriptor15file_descriptor)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto221file_descriptor_proto() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtCsg2CeFYmfPbl_8protobuf10descriptor19FileDescriptorProtoE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto221file_descriptor_proto0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2B_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto221file_descriptor_proto26file_descriptor_proto_lazy)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe15file_descriptor() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe15file_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2z_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe15file_descriptor15file_descriptor)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe21file_descriptor_proto() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtCsg2CeFYmfPbl_8protobuf10descriptor19FileDescriptorProtoE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe21file_descriptor_proto0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2B_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe21file_descriptor_proto26file_descriptor_proto_lazy)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk15file_descriptor() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk15file_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2z_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk15file_descriptor15file_descriptor)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk21file_descriptor_proto() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtCsg2CeFYmfPbl_8protobuf10descriptor19FileDescriptorProtoE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk21file_descriptor_proto0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2B_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk21file_descriptor_proto26file_descriptor_proto_lazy)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3msi15file_descriptor() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3msi15file_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2z_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3msi15file_descriptor15file_descriptor)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3msi21file_descriptor_proto() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtCsg2CeFYmfPbl_8protobuf10descriptor19FileDescriptorProtoE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3msi21file_descriptor_proto0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2B_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3msi21file_descriptor_proto26file_descriptor_proto_lazy)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip15file_descriptor() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip15file_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2z_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip15file_descriptor15file_descriptor)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip21file_descriptor_proto() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtCsg2CeFYmfPbl_8protobuf10descriptor19FileDescriptorProtoE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip21file_descriptor_proto0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2B_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3zip21file_descriptor_proto26file_descriptor_proto_lazy)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4math15file_descriptor() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4math15file_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2z_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4math15file_descriptor15file_descriptor)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4math21file_descriptor_proto() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtCsg2CeFYmfPbl_8protobuf10descriptor19FileDescriptorProtoE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4math21file_descriptor_proto0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2B_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4math21file_descriptor_proto26file_descriptor_proto_lazy)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4time15file_descriptor() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4time15file_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2z_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4time15file_descriptor15file_descriptor)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4time21file_descriptor_proto() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtCsg2CeFYmfPbl_8protobuf10descriptor19FileDescriptorProtoE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4time21file_descriptor_proto0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2B_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4time21file_descriptor_proto26file_descriptor_proto_lazy)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7console15file_descriptor() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7console15file_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2z_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7console15file_descriptor15file_descriptor)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7console21file_descriptor_proto() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtCsg2CeFYmfPbl_8protobuf10descriptor19FileDescriptorProtoE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7console21file_descriptor_proto0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2B_(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7console21file_descriptor_proto26file_descriptor_proto_lazy)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto210TestProto2NtB2_10MessageDyn14descriptor_dynBM_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4942)
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB2D_10TestProto2NtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2J_(ptr noundef nonnull align 8 @_RNvNvXs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB7_10TestProto2NtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor10descriptor), !noalias !4942 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noalias !4942, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %_RNvXs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB5_10TestProto2NtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !noalias !4942, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !noalias !4942
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RNvXs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB5_10TestProto2NtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNvXs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB5_10TestProto2NtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.5.0.i = load ptr, ptr %i.c, align 8, !noalias !4942, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noalias !4942, !noundef !5
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !4942
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i, ptr %i.j, align 8, !alias.scope !4942
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.k, align 8, !alias.scope !4942
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto210TestProto2NtB2_10MessageDyn14merge_from_dynBM_(ptr noalias nofree noundef align 8 dereferenceable(1336) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB5_10TestProto2NtNtCsg2CeFYmfPbl_8protobuf7message7Message10merge_from(ptr noalias nofree noundef nonnull align 8 dereferenceable(1336) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto210TestProto2NtB2_10MessageDyn16compute_size_dynBM_(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB5_10TestProto2NtNtCsg2CeFYmfPbl_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %0)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto210TestProto2NtB2_10MessageDyn18is_initialized_dynBM_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB5_10TestProto2NtNtCsg2CeFYmfPbl_8protobuf7message7Message14is_initialized(ptr noundef nonnull align 8 %0)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 ptr @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto210TestProto2NtB2_10MessageDyn18special_fields_dynBM_(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1312
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 ptr @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto210TestProto2NtB2_10MessageDyn22mut_special_fields_dynBM_(ptr noalias nofree noundef readnone align 8 captures(ret: address, provenance) dereferenceable(1336) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1312
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto210TestProto2NtB2_10MessageDyn30write_to_with_cached_sizes_dynBM_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB5_10TestProto2NtNtCsg2CeFYmfPbl_8protobuf7message7Message26write_to_with_cached_sizes(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2NtB2_10MessageDyn14descriptor_dynBM_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4945)
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs7_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB2D_12NestedProto2NtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2J_(ptr noundef nonnull align 8 @_RNvNvXs7_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB7_12NestedProto2NtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor10descriptor), !noalias !4945 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noalias !4945, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %_RNvXs7_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto2NtB5_12NestedProto2NtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor.exit
end_hunk_1
