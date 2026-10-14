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
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr %i.j, align 8, !noalias !97, !nonnull !5, !noundef !5 ; 13 uses
  %.sroa.01.0.copyload.i.i.i126 = ptrtoaddr ptr %.sroa.01.0.copyload.i.i.i to i64 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !97, !nonnull !5, !noundef !5 ; 5 uses
  %.sroa.5.0.copyload.i.i.i125 = ptrtoaddr ptr %.sroa.5.0.copyload.i.i.i to i64 ; 2 uses
  %.sroa.62.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.62.0.copyload.i.i.i = load ptr, ptr %.sroa.62.0..sroa_idx.i.i.i, align 8, !noalias !97 ; 5 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.7.0.copyload.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !97 ; 4 uses
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.8.0.copyload.i.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !97 ; 11 uses
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.11.0.copyload.i.i.i = load ptr, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !97 ; 7 uses
  %i.bj = icmp eq ptr %.sroa.01.0.copyload.i.i.i, %.sroa.5.0.copyload.i.i.i
  br i1 %i.bj, label %select.unfold.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t
  %i.bk = icmp eq ptr %.sroa.62.0.copyload.i.i.i, %.sroa.7.0.copyload.i.i.i
  %.fr.i.i.i = freeze i1 %i.bk
  br i1 %.fr.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i.preheader

.lr.ph.split.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i
  %i.bl = sub i64 %.sroa.5.0.copyload.i.i.i125, %.sroa.01.0.copyload.i.i.i126
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
  %i.bs = add i64 %.sroa.5.0.copyload.i.i.i125, -1
  %i.bt = icmp eq i64 %i.bs, %.sroa.01.0.copyload.i.i.i126
  br i1 %i.bt, label %select.unfold.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload.i.i.i) ]
  %3 = ptrtoaddr ptr %.sroa.5.0.copyload.i.i.i to i64
  %4 = ptrtoaddr ptr %.sroa.01.0.copyload.i.i.i to i64
  %i.bu = xor i64 %4, -1
  %i.bv = add i64 %i.bu, %3
  %5 = ptrtoaddr ptr %.sroa.11.0.copyload.i.i.i to i64
  %6 = ptrtoaddr ptr %.sroa.8.0.copyload.i.i.i to i64
  %i.bw = sub i64 %5, %6
  %i.bx = call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.bw)
  %i.by = add i64 %i.bx, 1                        ; 5 uses
  %min.iters.check = icmp ult i64 %i.by, 33
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.i.i.i
  %i.bz = getelementptr i8, ptr %.sroa.01.0.copyload.i.i.i, i64 %i.by
  %i.ca = getelementptr i8, ptr %.sroa.8.0.copyload.i.i.i, i64 %i.by
  %bound0 = icmp ult ptr %.sroa.01.0.copyload.i.i.i, %i.ca
  %bound1 = icmp ult ptr %.sroa.8.0.copyload.i.i.i, %i.bz
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cb = and i64 %i.by, 31                       ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  %i.cd = select i1 %i.cc, i64 32, i64 %i.cb
  %n.vec = sub i64 %i.by, %i.cd                   ; 3 uses
  %i.ce = getelementptr i8, ptr %.sroa.01.0.copyload.i.i.i, i64 %n.vec
  %i.cf = getelementptr i8, ptr %.sroa.8.0.copyload.i.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.01.0.copyload.i.i.i, i64 %index ; 3 uses
  %next.gep88 = getelementptr i8, ptr %.sroa.8.0.copyload.i.i.i, i64 %index ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep88) ]
  %i.cg = getelementptr i8, ptr %next.gep88, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep88, align 1, !alias.scope !105, !noalias !103
  %wide.load120 = load <16 x i8>, ptr %i.cg, align 1, !alias.scope !105, !noalias !103
  %i.ch = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load121 = load <16 x i8>, ptr %next.gep, align 1, !alias.scope !106, !noalias !107
  %wide.load122 = load <16 x i8>, ptr %i.ch, align 1, !alias.scope !106, !noalias !107
  %i.ci = xor <16 x i8> %wide.load121, %wide.load
  %i.cj = xor <16 x i8> %wide.load122, %wide.load120
  store <16 x i8> %i.ci, ptr %next.gep, align 1, !alias.scope !106, !noalias !107
  store <16 x i8> %i.cj, ptr %i.ch, align 1, !alias.scope !106, !noalias !107
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %scalar.ph.preheader, label %vector.body, !llvm.loop !87

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.split.us.i.i.i
  %.sroa.01.080.us.i.i.i.ph = phi ptr [ %.sroa.01.0.copyload.i.i.i, %vector.memcheck ], [ %.sroa.01.0.copyload.i.i.i, %.lr.ph.split.us.i.i.i ], [ %i.ce, %vector.body ]
  %.sroa.8.079.us.i.i.i.ph = phi ptr [ %.sroa.8.0.copyload.i.i.i, %vector.memcheck ], [ %.sroa.8.0.copyload.i.i.i, %.lr.ph.split.us.i.i.i ], [ %i.cf, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.u
  %.sroa.01.080.us.i.i.i = phi ptr [ %i.cm, %bb.u ], [ %.sroa.01.080.us.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.sroa.8.079.us.i.i.i = phi ptr [ %i.cn, %bb.u ], [ %.sroa.8.079.us.i.i.i.ph, %scalar.ph.preheader ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.079.us.i.i.i) ]
  %i.cl = icmp eq ptr %.sroa.8.079.us.i.i.i, %.sroa.11.0.copyload.i.i.i
  br i1 %i.cl, label %.select.unfold_crit_edge.split.us.i.i.i, label %bb.u

.select.unfold_crit_edge.split.us.i.i.i:          ; preds = %scalar.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.62.0.copyload.i.i.i) ]
  br label %select.unfold.i.i.i

bb.u:                                             ; preds = %scalar.ph
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.01.080.us.i.i.i, i64 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.8.079.us.i.i.i, i64 1
  %i.co = load i8, ptr %.sroa.8.079.us.i.i.i, align 1, !noalias !103, !noundef !5
  %i.cp = load i8, ptr %.sroa.01.080.us.i.i.i, align 1, !noalias !103, !noundef !5
  %i.cq = xor i8 %i.cp, %i.co
  store i8 %i.cq, ptr %.sroa.01.080.us.i.i.i, align 1, !noalias !103
  %i.cr = icmp eq ptr %i.cm, %.sroa.5.0.copyload.i.i.i
  br i1 %i.cr, label %select.unfold.i.i.i, label %scalar.ph, !llvm.loop !88

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i
  %.sroa.01.080.i.i.i = phi ptr [ %i.cy, %.lr.ph.split.i.i.i ], [ %.sroa.01.080.i.i.i.unr, %.lr.ph.split.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.8.079.i.i.i = phi ptr [ %i.da, %.lr.ph.split.i.i.i ], [ %.sroa.8.079.i.i.i.unr, %.lr.ph.split.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.11.078.i.i.i = phi ptr [ %spec.select.i.i.i.1, %.lr.ph.split.i.i.i ], [ %.sroa.11.078.i.i.i.unr, %.lr.ph.split.i.i.i.prol.loopexit ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.01.080.i.i.i, i64 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.079.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.078.i.i.i) ]
  %i.ct = icmp eq ptr %.sroa.8.079.i.i.i, %.sroa.11.078.i.i.i ; 2 uses
  %spec.select.i.i.i = select i1 %i.ct, ptr %.sroa.7.0.copyload.i.i.i, ptr %.sroa.11.078.i.i.i ; 3 uses
  %spec.select82.i.i.i = select i1 %i.ct, ptr %.sroa.62.0.copyload.i.i.i, ptr %.sroa.8.079.i.i.i ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %spec.select82.i.i.i, i64 1 ; 2 uses
  %i.cv = load i8, ptr %spec.select82.i.i.i, align 1, !noalias !103, !noundef !5
  %i.cw = load i8, ptr %.sroa.01.080.i.i.i, align 1, !noalias !103, !noundef !5
  %i.cx = xor i8 %i.cw, %i.cv
  store i8 %i.cx, ptr %.sroa.01.080.i.i.i, align 1, !noalias !103
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.01.080.i.i.i, i64 2 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select.i.i.i) ]
  %i.cz = icmp eq ptr %i.cu, %spec.select.i.i.i   ; 2 uses
  %spec.select.i.i.i.1 = select i1 %i.cz, ptr %.sroa.7.0.copyload.i.i.i, ptr %spec.select.i.i.i
  %spec.select82.i.i.i.1 = select i1 %i.cz, ptr %.sroa.62.0.copyload.i.i.i, ptr %i.cu ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %spec.select82.i.i.i.1, i64 1
  %i.db = load i8, ptr %spec.select82.i.i.i.1, align 1, !noalias !103, !noundef !5
  %i.dc = load i8, ptr %i.cs, align 1, !noalias !103, !noundef !5
  %i.dd = xor i8 %i.dc, %i.db
  store i8 %i.dd, ptr %i.cs, align 1, !noalias !103
  %i.de = icmp eq ptr %i.cy, %.sroa.5.0.copyload.i.i.i
  br i1 %i.de, label %select.unfold.i.i.i, label %.lr.ph.split.i.i.i

select.unfold.i.i.i:                              ; preds = %.lr.ph.split.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i, %bb.u, %.select.unfold_crit_edge.split.us.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !97
  %i.df = invoke noundef i64 @_RINvNtCsgkljs906P5b_3nom5bytes4takejRShINtNtB4_5error5ErrorBy_EECs7gfv9tzbXmh_6yara_x(i64 noundef 12)
          to label %bb.v unwind label %bb.r, !noalias !103

bb.v:                                             ; preds = %select.unfold.i.i.i
  store i64 %i.df, ptr %i.g, align 8, !noalias !97
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !108
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB16_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull %i.dg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef range(i64 0, -9223372036854775808) %i.at)
          to label %.noexc.i.i.i unwind label %bb.r, !noalias !103

.noexc.i.i.i:                                     ; preds = %bb.v
  %i.dh = load i64, ptr %i.e, align 8, !range !109, !noalias !108, !noundef !5
  %.not.i.i.i.i = icmp eq i64 %i.dh, -1
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !108
  br label %bb.ae

bb.x:                                             ; preds = %.noexc.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.054.0.copyload.i.i.i.i = load ptr, ptr %i.di, align 8, !noalias !108, !nonnull !5, !noundef !5
  %.sroa.455.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.455.0.copyload.i.i.i.i = load i64, ptr %.sroa.455.0..sroa_idx.i.i.i.i, align 8, !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !108
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_5bytes8complete4takejRShINtNtB8_5error5ErrorB16_EE0INtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2e_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.054.0.copyload.i.i.i.i, i64 noundef %.sroa.455.0.copyload.i.i.i.i)
          to label %.noexc143.i.i.i unwind label %bb.r, !noalias !103

.noexc143.i.i.i:                                  ; preds = %bb.x
  %i.dj = load i64, ptr %i.d, align 8, !range !9, !noalias !108, !noundef !5
  %i.dk = trunc nuw i64 %i.dj to i1
  br i1 %i.dk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.noexc143.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !108
  br label %bb.ae

bb.z:                                             ; preds = %.noexc143.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.073.0.copyload.i.i.i.i = load ptr, ptr %i.dl, align 8, !noalias !108, !nonnull !5, !noundef !5
  %.sroa.474.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.474.0.copyload.i.i.i.i = load i64, ptr %.sroa.474.0..sroa_idx.i.i.i.i, align 8, !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !108
  invoke void @_RINvXNtCsgkljs906P5b_3nom5multiINtB3_5Many0TINvNtNtB5_6number8complete6le_u16RShINtNtB5_5error5ErrorB1d_EEBG_INvBJ_6le_u32B1d_B1g_EEEINtNtB5_8internal6ParserB1d_E7processINtB2a_7OutputMNtB2a_4EmitB2X_NtB2a_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull %i.dg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.073.0.copyload.i.i.i.i, i64 noundef %.sroa.474.0.copyload.i.i.i.i)
          to label %.noexc144.i.i.i unwind label %bb.r, !noalias !103

.noexc144.i.i.i:                                  ; preds = %bb.z
  %i.dm = load i64, ptr %i.c, align 8, !range !9, !noalias !108, !noundef !5
  %i.dn = trunc nuw i64 %i.dm to i1
  br i1 %i.dn, label %bb.aa, label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB17_EENCINvNtNtB8_5bytes8complete4takejB17_B1a_E0INtNtB8_5multi5Many0TINvBD_6le_u16B17_B1a_EB2C_BA_EEEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3M_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.i.i

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
  %i.do = icmp eq i64 %.sroa.591.i.sroa.0.0.copyload.i.i.i, -1
  br i1 %i.do, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB17_EENCINvNtNtB8_5bytes8complete4takejB17_B1a_E0INtNtB8_5multi5Many0TINvBD_6le_u16B17_B1a_EB2C_BA_EEEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3M_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.i.i
  %i.dp = inttoptr i64 %.sroa.591.i.sroa.4.0.copyload.i.i.i to ptr
  br label %bb.ae

bb.ac:                                            ; preds = %bb.r
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46, !noalias !103
  unreachable

bb.ad:                                            ; preds = %bb.r
  resume { ptr, i32 } %i.bh

bb.ae:                                            ; preds = %bb.ab, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB17_EENCINvNtNtB8_5bytes8complete4takejB17_B1a_E0INtNtB8_5multi5Many0TINvBD_6le_u16B17_B1a_EB2C_BA_EEEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3M_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.i.i, %bb.aa, %bb.y, %bb.w
  %.sroa.1111.0.i.i.i = phi i64 [ %.sroa.591.i.sroa.5.0.copyload.i.i.i, %bb.ab ], [ 0, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB17_EENCINvNtNtB8_5bytes8complete4takejB17_B1a_E0INtNtB8_5multi5Many0TINvBD_6le_u16B17_B1a_EB2C_BA_EEEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3M_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.w ]
  %.sroa.1010.0.i.i.i = phi ptr [ %i.dp, %bb.ab ], [ inttoptr (i64 4 to ptr), %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB17_EENCINvNtNtB8_5bytes8complete4takejB17_B1a_E0INtNtB8_5multi5Many0TINvBD_6le_u16B17_B1a_EB2C_BA_EEEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3M_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ inttoptr (i64 4 to ptr), %bb.y ], [ inttoptr (i64 4 to ptr), %bb.aa ], [ inttoptr (i64 4 to ptr), %bb.w ]
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
  %i.dr = load i64, ptr %0, align 8, !range !4, !noundef !5
end_hunk_0
