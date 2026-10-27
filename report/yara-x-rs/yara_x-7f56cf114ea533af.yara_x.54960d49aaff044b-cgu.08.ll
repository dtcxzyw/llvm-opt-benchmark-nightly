Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.08?download=true
inline.NumInlined: 3676
inline.NumDeleted: 1536
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RINvMNtNtCskKLDkoKarTP_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser10RichHeaderEE15get_or_try_initNCINvB2_11get_or_initNCNvMs_B1d_NtB1d_2PE15get_rich_header0E0zEB1j_:bb.a

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
  store i64 %i.z, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !99, !noalias !97
  %i.aa = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !100 ; 2 uses
  %i.ab = extractvalue { i1, i8 } %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.ac = extractvalue { i1, i8 } %i.aa, 1
  %i.ad = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !101, !noalias !97, !noundef !5 ; 2 uses
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !101, !noalias !97
  %i.af = zext i8 %i.ac to i32
  %i.ag = trunc i64 %i.ad to i32
  %i.ah = shl i32 %i.ag, 3
  %i.ai = and i32 %i.ah, 24
  %i.aj = shl nuw i32 %i.af, %i.ai
  %i.ak = add i32 %i.aj, %.sroa.0.08.i.i.i.i      ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !99, !noalias !97 ; 2 uses
  %i.al = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.al, label %bb.h, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.r, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #42, !noalias !102
  unreachable

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97
  br label %_RNCINvMNtNtCskKLDkoKarTP_4core4cell4onceINtB5_8OnceCellINtNtB9_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser10RichHeaderEE11get_or_initNCNvMs_B1f_NtB1f_2PE15get_rich_header0E0B1l_.exit

bb.h:                                             ; preds = %bb.e, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ %i.ak, %bb.e ], [ %.sroa.0.08.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !97
  %i.am = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 4), !noalias !103 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97
  %.not140.i.i.i = icmp ugt i64 %i.p, %2
  br i1 %.not140.i.i.i, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.p, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #42, !noalias !102
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
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.at, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !102
  %i.av = load i64, ptr %i.f, align 8, !range !9, !noalias !97, !noundef !5
  %i.aw = trunc nuw i64 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !10, !noalias !97, !noundef !5 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.aw, label %bb.n, label %bb.o, !prof !6

bb.m:                                             ; preds = %bb.k
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.aq, i64 noundef %i.p, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #42, !noalias !102
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ba = load i64, ptr %i.az, align 8, !noalias !97
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ay, i64 %i.ba) #44, !noalias !102
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
          to label %bb.s unwind label %bb.r, !noalias !102

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull readonly align 1 %i.au, i64 %i.at, i1 false), !noalias !102
  store i64 %i.at, ptr %i.be, align 8, !noalias !97
  br label %bb.p

bb.r:                                             ; preds = %bb.z, %bb.x, %bb.v, %select.unfold.i.i.i, %bb.s, %bb.p
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #45
          to label %bb.ad unwind label %bb.ac, !noalias !102

bb.s:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3zipINtNtNtB8_5slice4iter7IterMuthEINtNtB4_5cycle5CycleINtBQ_4IterhEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.j, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bi, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.i)
          to label %bb.t unwind label %bb.r, !noalias !102

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !97
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr %i.j, align 8, !noalias !97, !nonnull !5, !noundef !5 ; 12 uses
  %.sroa.01.0.copyload.i.i.i90 = ptrtoaddr ptr %.sroa.01.0.copyload.i.i.i to i64 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !97, !nonnull !5, !noundef !5 ; 4 uses
  %.sroa.5.0.copyload.i.i.i91 = ptrtoaddr ptr %.sroa.5.0.copyload.i.i.i to i64 ; 3 uses
  %.sroa.62.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.62.0.copyload.i.i.i = load ptr, ptr %.sroa.62.0..sroa_idx.i.i.i, align 8, !noalias !97 ; 5 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.7.0.copyload.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !97 ; 4 uses
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.11.0.copyload.i.i.i = load ptr, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !97 ; 8 uses
  %.sroa.11.0.copyload.i.i.i89 = ptrtoaddr ptr %.sroa.11.0.copyload.i.i.i to i64
  %i.bj = icmp eq ptr %.sroa.01.0.copyload.i.i.i, %.sroa.5.0.copyload.i.i.i
  br i1 %i.bj, label %select.unfold.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.8.0.copyload.i.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !97 ; 11 uses
  %i.bk = icmp eq ptr %.sroa.62.0.copyload.i.i.i, %.sroa.7.0.copyload.i.i.i
  %.fr.i.i.i = freeze i1 %i.bk
  br i1 %.fr.i.i.i, label %.lr.ph.split.us.i.i.i.preheader, label %.lr.ph.split.i.i.i.preheader

.lr.ph.split.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i
  %i.bl = sub i64 %.sroa.5.0.copyload.i.i.i91, %.sroa.01.0.copyload.i.i.i90
  %xtraiter = and i64 %i.bl, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.i.prol.loopexit, label %.lr.ph.split.i.i.i.prol

.lr.ph.split.i.i.i.prol:                          ; preds = %.lr.ph.split.i.i.i.preheader
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i.i, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i.i.i), "nonnull"(ptr %.sroa.11.0.copyload.i.i.i) ]
  %i.bm = icmp eq ptr %.sroa.8.0.copyload.i.i.i, %.sroa.11.0.copyload.i.i.i ; 2 uses
  %spec.select.i.i.i.prol = select i1 %i.bm, ptr %.sroa.7.0.copyload.i.i.i, ptr %.sroa.11.0.copyload.i.i.i
  %spec.select82.i.i.i.prol = select i1 %i.bm, ptr %.sroa.62.0.copyload.i.i.i, ptr %.sroa.8.0.copyload.i.i.i ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %spec.select82.i.i.i.prol, i64 1
  %i.bo = load i8, ptr %spec.select82.i.i.i.prol, align 1, !noalias !102, !noundef !5
  %i.bp = load i8, ptr %.sroa.01.0.copyload.i.i.i, align 1, !noalias !102, !noundef !5
  %i.bq = xor i8 %i.bp, %i.bo
  store i8 %i.bq, ptr %.sroa.01.0.copyload.i.i.i, align 1, !noalias !102
  br label %.lr.ph.split.i.i.i.prol.loopexit

.lr.ph.split.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.split.i.i.i.prol, %.lr.ph.split.i.i.i.preheader
  %.sroa.01.080.i.i.i.unr = phi ptr [ %.sroa.01.0.copyload.i.i.i, %.lr.ph.split.i.i.i.preheader ], [ %3, %.lr.ph.split.i.i.i.prol ]
  %.sroa.8.079.i.i.i.unr = phi ptr [ %.sroa.8.0.copyload.i.i.i, %.lr.ph.split.i.i.i.preheader ], [ %i.bn, %.lr.ph.split.i.i.i.prol ]
  %.sroa.11.078.i.i.i.unr = phi ptr [ %.sroa.11.0.copyload.i.i.i, %.lr.ph.split.i.i.i.preheader ], [ %spec.select.i.i.i.prol, %.lr.ph.split.i.i.i.prol ]
  %i.br = add i64 %.sroa.5.0.copyload.i.i.i91, -1
  %i.bs = icmp eq i64 %i.br, %.sroa.01.0.copyload.i.i.i90
  br i1 %i.bs, label %select.unfold.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i.preheader:                  ; preds = %.lr.ph.i.i.i
  %.sroa.8.0.copyload.i.i.i88 = ptrtoaddr ptr %.sroa.8.0.copyload.i.i.i to i64
  %i.bt = xor i64 %.sroa.01.0.copyload.i.i.i90, -1
  %i.bu = add i64 %i.bt, %.sroa.5.0.copyload.i.i.i91
  %i.bv = sub i64 %.sroa.11.0.copyload.i.i.i89, %.sroa.8.0.copyload.i.i.i88
  %i.bw = call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bv)
  %i.bx = add i64 %i.bw, 1                        ; 5 uses
  %min.iters.check = icmp ult i64 %i.bx, 33
  br i1 %min.iters.check, label %.lr.ph.split.us.i.i.i.preheader128, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.i.i.i.preheader
  %i.by = getelementptr i8, ptr %.sroa.01.0.copyload.i.i.i, i64 %i.bx
  %i.bz = getelementptr i8, ptr %.sroa.8.0.copyload.i.i.i, i64 %i.bx
  %bound0 = icmp ult ptr %.sroa.01.0.copyload.i.i.i, %i.bz
  %bound1 = icmp ult ptr %.sroa.8.0.copyload.i.i.i, %i.by
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.us.i.i.i.preheader128, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ca = and i64 %i.bx, 31                       ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  %i.cc = select i1 %i.cb, i64 32, i64 %i.ca
  %n.vec = sub i64 %i.bx, %i.cc                   ; 3 uses
  %i.cd = getelementptr i8, ptr %.sroa.01.0.copyload.i.i.i, i64 %n.vec
  %i.ce = getelementptr i8, ptr %.sroa.8.0.copyload.i.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.01.0.copyload.i.i.i, i64 %index ; 3 uses
  %next.gep92 = getelementptr i8, ptr %.sroa.8.0.copyload.i.i.i, i64 %index ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep92), "nonnull"(ptr %.sroa.11.0.copyload.i.i.i) ]
  %i.cf = getelementptr i8, ptr %next.gep92, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep92, align 1, !alias.scope !104, !noalias !102
  %wide.load124 = load <16 x i8>, ptr %i.cf, align 1, !alias.scope !104, !noalias !102
  %i.cg = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load125 = load <16 x i8>, ptr %next.gep, align 1, !alias.scope !105, !noalias !106
  %wide.load126 = load <16 x i8>, ptr %i.cg, align 1, !alias.scope !105, !noalias !106
  %i.ch = xor <16 x i8> %wide.load125, %wide.load
  %i.ci = xor <16 x i8> %wide.load126, %wide.load124
  store <16 x i8> %i.ch, ptr %next.gep, align 1, !alias.scope !105, !noalias !106
  store <16 x i8> %i.ci, ptr %i.cg, align 1, !alias.scope !105, !noalias !106
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %.lr.ph.split.us.i.i.i.preheader128, label %vector.body, !llvm.loop !87

.lr.ph.split.us.i.i.i.preheader128:               ; preds = %vector.body, %vector.memcheck, %.lr.ph.split.us.i.i.i.preheader
  %.sroa.01.080.us.i.i.i.ph = phi ptr [ %.sroa.01.0.copyload.i.i.i, %vector.memcheck ], [ %.sroa.01.0.copyload.i.i.i, %.lr.ph.split.us.i.i.i.preheader ], [ %i.cd, %vector.body ]
  %.sroa.8.079.us.i.i.i.ph = phi ptr [ %.sroa.8.0.copyload.i.i.i, %vector.memcheck ], [ %.sroa.8.0.copyload.i.i.i, %.lr.ph.split.us.i.i.i.preheader ], [ %i.ce, %vector.body ]
  br label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.split.us.i.i.i.preheader128, %bb.u
  %.sroa.01.080.us.i.i.i = phi ptr [ %i.cl, %bb.u ], [ %.sroa.01.080.us.i.i.i.ph, %.lr.ph.split.us.i.i.i.preheader128 ] ; 3 uses
  %.sroa.8.079.us.i.i.i = phi ptr [ %i.cm, %bb.u ], [ %.sroa.8.079.us.i.i.i.ph, %.lr.ph.split.us.i.i.i.preheader128 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.079.us.i.i.i), "nonnull"(ptr %.sroa.11.0.copyload.i.i.i) ]
  %i.ck = icmp eq ptr %.sroa.8.079.us.i.i.i, %.sroa.11.0.copyload.i.i.i
  br i1 %i.ck, label %.select.unfold_crit_edge.split.us.i.i.i, label %bb.u

.select.unfold_crit_edge.split.us.i.i.i:          ; preds = %.lr.ph.split.us.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.62.0.copyload.i.i.i) ]
  br label %select.unfold.i.i.i

bb.u:                                             ; preds = %.lr.ph.split.us.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.01.080.us.i.i.i, i64 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.8.079.us.i.i.i, i64 1
  %i.cn = load i8, ptr %.sroa.8.079.us.i.i.i, align 1, !noalias !102, !noundef !5
  %i.co = load i8, ptr %.sroa.01.080.us.i.i.i, align 1, !noalias !102, !noundef !5
  %i.cp = xor i8 %i.co, %i.cn
  store i8 %i.cp, ptr %.sroa.01.080.us.i.i.i, align 1, !noalias !102
  %i.cq = icmp eq ptr %i.cl, %.sroa.5.0.copyload.i.i.i
  br i1 %i.cq, label %select.unfold.i.i.i, label %.lr.ph.split.us.i.i.i, !llvm.loop !88

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i
  %.sroa.01.080.i.i.i = phi ptr [ %i.cw, %.lr.ph.split.i.i.i ], [ %.sroa.01.080.i.i.i.unr, %.lr.ph.split.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.8.079.i.i.i = phi ptr [ %i.cy, %.lr.ph.split.i.i.i ], [ %.sroa.8.079.i.i.i.unr, %.lr.ph.split.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.11.078.i.i.i = phi ptr [ %spec.select.i.i.i.1, %.lr.ph.split.i.i.i ], [ %.sroa.11.078.i.i.i.unr, %.lr.ph.split.i.i.i.prol.loopexit ] ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.080.i.i.i, i64 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.079.i.i.i), "nonnull"(ptr %.sroa.11.078.i.i.i) ]
  %i.cr = icmp eq ptr %.sroa.8.079.i.i.i, %.sroa.11.078.i.i.i ; 2 uses
  %spec.select.i.i.i = select i1 %i.cr, ptr %.sroa.7.0.copyload.i.i.i, ptr %.sroa.11.078.i.i.i ; 3 uses
  %spec.select82.i.i.i = select i1 %i.cr, ptr %.sroa.62.0.copyload.i.i.i, ptr %.sroa.8.079.i.i.i ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %spec.select82.i.i.i, i64 1 ; 2 uses
  %i.ct = load i8, ptr %spec.select82.i.i.i, align 1, !noalias !102, !noundef !5
  %i.cu = load i8, ptr %.sroa.01.080.i.i.i, align 1, !noalias !102, !noundef !5
  %i.cv = xor i8 %i.cu, %i.ct
  store i8 %i.cv, ptr %.sroa.01.080.i.i.i, align 1, !noalias !102
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.01.080.i.i.i, i64 2 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select.i.i.i) ]
  %i.cx = icmp eq ptr %i.cs, %spec.select.i.i.i   ; 2 uses
  %spec.select.i.i.i.1 = select i1 %i.cx, ptr %.sroa.7.0.copyload.i.i.i, ptr %spec.select.i.i.i
  %spec.select82.i.i.i.1 = select i1 %i.cx, ptr %.sroa.62.0.copyload.i.i.i, ptr %i.cs ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %spec.select82.i.i.i.1, i64 1
  %i.cz = load i8, ptr %spec.select82.i.i.i.1, align 1, !noalias !102, !noundef !5
  %i.da = load i8, ptr %4, align 1, !noalias !102, !noundef !5
  %i.db = xor i8 %i.da, %i.cz
  store i8 %i.db, ptr %4, align 1, !noalias !102
  %i.dc = icmp eq ptr %i.cw, %.sroa.5.0.copyload.i.i.i
  br i1 %i.dc, label %select.unfold.i.i.i, label %.lr.ph.split.i.i.i

select.unfold.i.i.i:                              ; preds = %.lr.ph.split.i.i.i.prol.loopexit, %.lr.ph.split.i.i.i, %bb.u, %.select.unfold_crit_edge.split.us.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !97
  %i.dd = invoke noundef i64 @_RINvNtCsgkljs906P5b_3nom5bytes4takejRShINtNtB4_5error5ErrorBy_EECs7gfv9tzbXmh_6yara_x(i64 noundef 12)
          to label %bb.v unwind label %bb.r, !noalias !102

bb.v:                                             ; preds = %select.unfold.i.i.i
  store i64 %i.dd, ptr %i.g, align 8, !noalias !97
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !107
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB16_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull %i.de, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef range(i64 0, -9223372036854775808) %i.at)
          to label %.noexc.i.i.i unwind label %bb.r, !noalias !102

.noexc.i.i.i:                                     ; preds = %bb.v
  %i.df = load i64, ptr %i.e, align 8, !range !108, !noalias !107, !noundef !5
  %.not.i.i.i.i = icmp eq i64 %i.df, -1
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !107
  br label %bb.ae

bb.x:                                             ; preds = %.noexc.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.054.0.copyload.i.i.i.i = load ptr, ptr %i.dg, align 8, !noalias !107, !nonnull !5, !noundef !5
  %.sroa.455.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.455.0.copyload.i.i.i.i = load i64, ptr %.sroa.455.0..sroa_idx.i.i.i.i, align 8, !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !107
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_5bytes8complete4takejRShINtNtB8_5error5ErrorB16_EE0INtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2e_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.054.0.copyload.i.i.i.i, i64 noundef %.sroa.455.0.copyload.i.i.i.i)
          to label %.noexc143.i.i.i unwind label %bb.r, !noalias !102

.noexc143.i.i.i:                                  ; preds = %bb.x
  %i.dh = load i64, ptr %i.d, align 8, !range !9, !noalias !107, !noundef !5
  %i.di = trunc nuw i64 %i.dh to i1
  br i1 %i.di, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.noexc143.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !107
  br label %bb.ae

bb.z:                                             ; preds = %.noexc143.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.073.0.copyload.i.i.i.i = load ptr, ptr %i.dj, align 8, !noalias !107, !nonnull !5, !noundef !5
  %.sroa.474.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.474.0.copyload.i.i.i.i = load i64, ptr %.sroa.474.0..sroa_idx.i.i.i.i, align 8, !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !107
  invoke void @_RINvXNtCsgkljs906P5b_3nom5multiINtB3_5Many0TINvNtNtB5_6number8complete6le_u16RShINtNtB5_5error5ErrorB1d_EEBG_INvBJ_6le_u32B1d_B1g_EEEINtNtB5_8internal6ParserB1d_E7processINtB2a_7OutputMNtB2a_4EmitB2X_NtB2a_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull %i.de, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.073.0.copyload.i.i.i.i, i64 noundef %.sroa.474.0.copyload.i.i.i.i)
          to label %.noexc144.i.i.i unwind label %bb.r, !noalias !102

.noexc144.i.i.i:                                  ; preds = %bb.z
  %i.dk = load i64, ptr %i.c, align 8, !range !9, !noalias !107, !noundef !5
  %i.dl = trunc nuw i64 %i.dk to i1
  br i1 %i.dl, label %bb.aa, label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB17_EENCINvNtNtB8_5bytes8complete4takejB17_B1a_E0INtNtB8_5multi5Many0TINvBD_6le_u16B17_B1a_EB2C_BA_EEEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3M_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.i.i

bb.aa:                                            ; preds = %.noexc144.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !107
  br label %bb.ae

_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB17_EENCINvNtNtB8_5bytes8complete4takejB17_B1a_E0INtNtB8_5multi5Many0TINvBD_6le_u16B17_B1a_EB2C_BA_EEEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3M_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %.noexc144.i.i.i
  %.sroa.591.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.591.i.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.591.0..sroa_idx.i.i.i.i, align 8, !noalias !107 ; 2 uses
  %.sroa.591.i.sroa.4.0..sroa.591.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.591.i.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.591.i.sroa.4.0..sroa.591.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !107
  %.sroa.591.i.sroa.5.0..sroa.591.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.591.i.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.591.i.sroa.5.0..sroa.591.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !107
  %i.dm = icmp eq i64 %.sroa.591.i.sroa.0.0.copyload.i.i.i, -1
  br i1 %i.dm, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB17_EENCINvNtNtB8_5bytes8complete4takejB17_B1a_E0INtNtB8_5multi5Many0TINvBD_6le_u16B17_B1a_EB2C_BA_EEEINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3M_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.i.i
  %i.dn = inttoptr i64 %.sroa.591.i.sroa.4.0.copyload.i.i.i to ptr
  br label %bb.ae

bb.ac:                                            ; preds = %bb.r
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46, !noalias !102
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
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !109
  %.sroa.429.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.429.0..sroa_idx31, align 8, !alias.scope !109
  %.sroa.533.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11.0.i, ptr %.sroa.533.0..sroa_idx35, align 8, !alias.scope !109
  %.sroa.637.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0.i, ptr %.sroa.637.0..sroa_idx39, align 8, !alias.scope !109
  %.sroa.741.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.8.0.i, ptr %.sroa.741.0..sroa_idx43, align 8, !alias.scope !109
  %.sroa.845.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.9.0.i, ptr %.sroa.845.0..sroa_idx47, align 8, !alias.scope !109
  %.sroa.949.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.10.0.i, ptr %.sroa.949.0..sroa_idx51, align 8, !alias.scope !109
  %.sroa.1053.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.11.0.i, ptr %.sroa.1053.0..sroa_idx55, align 8, !alias.scope !109
  %.sroa.1157.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.12.0.i, ptr %.sroa.1157.0..sroa_idx59, align 8, !alias.scope !109
  %.sroa.1261.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sroa.13.0.i, ptr %.sroa.1261.0..sroa_idx63, align 8, !alias.scope !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret ptr %0

bb.af:                                            ; preds = %_RNCINvMNtNtCskKLDkoKarTP_4core4cell4onceINtB5_8OnceCellINtNtB9_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser10RichHeaderEE11get_or_initNCNvMs_B1f_NtB1f_2PE15get_rich_header0E0B1l_.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.sroa.5.0.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %.sroa.11.0.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %.sroa.7.0.i, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %.sroa.8.0.i, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 %.sroa.9.0.i, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr %.sroa.10.0.i, ptr %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 %.sroa.11.0.i, ptr %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i64 %.sroa.12.0.i, ptr %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.12.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store i32 %.sroa.13.0.i, ptr %.sroa.4.sroa.12.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store ptr %0, ptr %i.m, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.0.0.i, ptr %i.dq, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtB4_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser10RichHeaderETBX_BY_EEEB1s_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 29 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMNtNtCskKLDkoKarTP_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionRShEE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB1Z_2PE12get_pdb_path0E0zEB25_(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !5
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCskKLDkoKarTP_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionRShEE8try_initNCINvB2_11get_or_initNCNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB1R_2PE12get_pdb_path0E0zEB1X_(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvMNtNtCskKLDkoKarTP_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionRShEE8try_initNCINvB2_11get_or_initNCNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB1R_2PE12get_pdb_path0E0zEB1X_(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE9parse_dbg(ptr noundef nonnull align 8 %1) ; 2 uses
  %i.b = load i64, ptr %0, align 8, !range !9, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.a, 0
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECs7gfv9tzbXmh_6yara_x:bb.a
bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecfEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecxEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecxENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecxENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecxEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecxENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecxEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std6thread9lifecycleINtB5_6PacketzENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !268, !noundef !5 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECs7gfv9tzbXmh_6yara_x.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !269
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECs7gfv9tzbXmh_6yara_x.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataE9drop_slowCs5wm9T3JFh1c_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #48
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !271, !noundef !5 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECs7gfv9tzbXmh_6yara_x.exit6.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !272
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECs7gfv9tzbXmh_6yara_x.exit6.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataE9drop_slowCs5wm9T3JFh1c_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #48
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECs7gfv9tzbXmh_6yara_x.exit6.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.h, %bb.d, %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.b, %bb.d ], [ %i.b, %bb.b ], [ %i.b, %bb.c ]
  %.val3.i = load ptr, ptr %i.a, align 8, !alias.scope !266, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4.i = load ptr, ptr %i.m, align 8, !alias.scope !266
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECs7gfv9tzbXmh_6yara_x(ptr %.val3.i, ptr %.val4.i) #45
          to label %common.resume.i unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECs7gfv9tzbXmh_6yara_x.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECs7gfv9tzbXmh_6yara_x.exit6.i: ; preds = %bb.g, %bb.f, %bb.e
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !266, !noundef !5 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.o, align 8, !alias.scope !266 ; 6 uses
  %i.p = icmp eq ptr %.val.i, null
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEECs7gfv9tzbXmh_6yara_x.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECs7gfv9tzbXmh_6yara_x.exit6.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.q = load ptr, ptr %.val2.i, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !19, !invariant.load !5 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEECs7gfv9tzbXmh_6yara_x.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !20, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #47
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEECs7gfv9tzbXmh_6yara_x.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !19, !invariant.load !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %common.resume.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !20, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #47
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.n, %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECs7gfv9tzbXmh_6yara_x.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.w, %bb.m ], [ %i.w, %bb.n ], [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECs7gfv9tzbXmh_6yara_x.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECs7gfv9tzbXmh_6yara_x.exit.i, %bb.d
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECs7gfv9tzbXmh_6yara_x.exit6.i, %bb.k, %bb.l
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs7gfv9tzbXmh_6yara_x(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !19, !invariant.load !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs7gfv9tzbXmh_6yara_x.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !20, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #47
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs7gfv9tzbXmh_6yara_x.exit

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !19, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs7gfv9tzbXmh_6yara_x.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !20, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #47
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs7gfv9tzbXmh_6yara_x.exit4

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs7gfv9tzbXmh_6yara_x.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs7gfv9tzbXmh_6yara_x.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EEB1E_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !align !23, !noundef !5 ; 4 uses
  %i.a = icmp eq ptr %.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EEEB1E_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EEB1i_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 120, i64 noundef 8) #47
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EEB1i_.exit.i: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 120, i64 noundef 8) #47
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EEEB1E_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EEEB1E_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2EEB1i_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe10SignerInfoEEB1E_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !align !23, !noundef !5 ; 4 uses
  %i.a = icmp eq ptr %.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe10SignerInfoEEEB1E_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe10SignerInfoEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe10SignerInfoEEB1i_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 136, i64 noundef 8) #47
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe10SignerInfoEEB1i_.exit.i: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 136, i64 noundef 8) #47
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe10SignerInfoEEEB1E_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe10SignerInfoEEEB1E_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe10SignerInfoEEB1i_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe13RichSignatureEEB1E_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !align !23, !noundef !5 ; 4 uses
  %i.a = icmp eq ptr %.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe13RichSignatureEEEB1E_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe13RichSignatureEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe13RichSignatureEEB1i_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 112, i64 noundef 8) #47
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe13RichSignatureEEB1i_.exit.i: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 112, i64 noundef 8) #47
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe13RichSignatureEEEB1E_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe13RichSignatureEEEB1E_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe13RichSignatureEEB1i_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1E_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !align !23, !noundef !5 ; 4 uses
  %i.a = icmp eq ptr %.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEEB1E_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !275, !align !23, !noundef !5 ; 4 uses
  %i.c = icmp eq ptr %.val.i.i.i, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1i_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i unwind label %bb.d, !noalias !275

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 32, i64 noundef 8) #47, !noalias !275
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 48, i64 noundef 8) #47
  resume { ptr, i32 } %i.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i: ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 32, i64 noundef 8) #47, !noalias !275
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1i_.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1i_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i, %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 48, i64 noundef 8) #47
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEEB1E_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEEB1E_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7OverlayEEB1i_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1E_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !align !23, !noundef !5 ; 4 uses
  %i.a = icmp eq ptr %.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEEB1E_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !278, !align !23, !noundef !5 ; 4 uses
  %i.c = icmp eq ptr %.val.i.i.i, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i unwind label %bb.d, !noalias !278

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 32, i64 noundef 8) #47, !noalias !278
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #47
  resume { ptr, i32 } %i.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i: ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 32, i64 noundef 8) #47, !noalias !278
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i, %bb.b
end_hunk_1
begin_hunk_2_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x5types4func13MangledFnNameEBH_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs7gfv9tzbXmh_6yara_x.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms10MaskedAtomEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEBH_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8SmallVecAhj4_EECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEBH_.exit: ; preds = %bb.a
  tail call void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8SmallVecAhj4_EECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms16MaskCombinationsEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !alias.scope !389, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product12MultiProductNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4mask18ByteMaskCombinatorEEB1Q_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4mask18ByteMaskCombinatorEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1Y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4mask18ByteMaskCombinatorEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB25_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %.body.i.i.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4mask18ByteMaskCombinatorEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB25_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4mask18ByteMaskCombinatorEEEB2r_.exit.i.i.i unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.f, %bb.c
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #45
          to label %common.resume.i.i.i unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4mask18ByteMaskCombinatorEEEB2r_.exit.i.i.i: ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !range !15, !alias.scope !390, !noundef !5
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product12MultiProductNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4mask18ByteMaskCombinatorEEB1Q_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4mask18ByteMaskCombinatorEEEB2r_.exit.i.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

common.resume.i.i.i:                              ; preds = %bb.h, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.j, %bb.h ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i: ; preds = %bb.g
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product12MultiProductNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4mask18ByteMaskCombinatorEEB1Q_.exit

bb.j:                                             ; preds = %.body.i.i.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product12MultiProductNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4mask18ByteMaskCombinatorEEB1Q_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4mask18ByteMaskCombinatorEEEB2r_.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs7gfv9tzbXmh_6yara_x.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9lifecycle10ThreadInitECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !403, !nonnull !5, !noundef !5
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !403
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs7gfv9tzbXmh_6yara_x.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #48
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !5, !align !23, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs7gfv9tzbXmh_6yara_x(ptr %.val2, ptr nonnull %.val3) #45
          to label %common.resume unwind label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8             ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.h, align 8, !nonnull !5, !align !23, !noundef !5 ; 5 uses
  %i.i = load ptr, ptr %.val1, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs7gfv9tzbXmh_6yara_x.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.i(ptr noundef nonnull %.val)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs7gfv9tzbXmh_6yara_x.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !19, !invariant.load !5 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs7gfv9tzbXmh_6yara_x.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !20, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #47
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs7gfv9tzbXmh_6yara_x.exit

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !19, !invariant.load !5 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !20, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #47
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.o, %bb.h ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.e, %bb.f
  ret void

bb.i:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook15ChildSpawnHooksECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  invoke void @_RNvXNtNtCsG258MDvU3F_3std6thread9spawnhookNtB2_10SpawnHooksNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.c = load ptr, ptr %i.a, align 8, !alias.scope !419, !noundef !5 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !420
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #48
          to label %.body unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %i.g = load ptr, ptr %i.a, align 8, !alias.scope !422, !noundef !5 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECs7gfv9tzbXmh_6yara_x.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !423
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECs7gfv9tzbXmh_6yara_x.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #48
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.d, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.b, %bb.d ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #45
          to label %common.resume unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.f, %bb.e, %bb.g
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECs7gfv9tzbXmh_6yara_x.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECs7gfv9tzbXmh_6yara_x.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.l:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect3acc13FieldAccessorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  %i.a = load i64, ptr %0, align 8, !range !22, !alias.scope !430, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.b, align 8, !alias.scope !430 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.c, align 8, !alias.scope !430, !nonnull !5, !align !23, !noundef !5 ; 9 uses
  %i.d = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !430 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null          ; 3 uses
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.f
    i64 1, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i.i)
          to label %bb.d unwind label %bb.e, !noalias !430

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !19, !invariant.load !5, !noalias !430 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect3acc22GeneratedFieldAccessorECs7gfv9tzbXmh_6yara_x.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect3acc2v23map22MapFieldAccessorHolderECs7gfv9tzbXmh_6yara_x.exit.sink.split.i.i

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !19, !invariant.load !5, !noalias !430 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %common.resume.i.i, label %common.resume.sink.split.i.i

common.resume.sink.split.i.i:                     ; preds = %bb.m, %bb.i, %bb.e
  %.sink.i.i = phi i64 [ %i.s, %bb.i ], [ %i.z, %bb.m ], [ %i.j, %bb.e ]
  %common.resume.op.ph.i.i = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.x, %bb.m ], [ %i.h, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !20, !invariant.load !5, !noalias !430
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.sink.i.i, i64 noundef range(i64 1, 536870913) %i.m) #47, !noalias !430
  br label %common.resume.i.i

common.resume.i.i:                                ; preds = %bb.m, %bb.i, %common.resume.sink.split.i.i, %bb.e
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.h, %bb.e ], [ %i.x, %bb.m ], [ %common.resume.op.ph.i.i, %common.resume.sink.split.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i.i)
          to label %bb.h unwind label %bb.i, !noalias !430

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !19, !invariant.load !5, !noalias !430 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect3acc22GeneratedFieldAccessorECs7gfv9tzbXmh_6yara_x.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect3acc2v23map22MapFieldAccessorHolderECs7gfv9tzbXmh_6yara_x.exit.sink.split.i.i

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !19, !invariant.load !5, !noalias !430 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %common.resume.i.i, label %common.resume.sink.split.i.i

bb.j:                                             ; preds = %bb.a
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.m, !noalias !430

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !19, !invariant.load !5, !noalias !430 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect3acc22GeneratedFieldAccessorECs7gfv9tzbXmh_6yara_x.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect3acc2v23map22MapFieldAccessorHolderECs7gfv9tzbXmh_6yara_x.exit.sink.split.i.i

bb.m:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !19, !invariant.load !5, !noalias !430 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %common.resume.i.i, label %common.resume.sink.split.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect3acc2v23map22MapFieldAccessorHolderECs7gfv9tzbXmh_6yara_x.exit.sink.split.i.i: ; preds = %bb.l, %bb.h, %bb.d
  %.sink18.i.i = phi i64 [ %i.o, %bb.h ], [ %i.f, %bb.d ], [ %i.v, %bb.l ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !20, !invariant.load !5, !noalias !430
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.sink18.i.i, i64 noundef range(i64 1, 536870913) %i.ac) #47, !noalias !430
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect3acc22GeneratedFieldAccessorECs7gfv9tzbXmh_6yara_x.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect3acc22GeneratedFieldAccessorECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.d, %bb.h, %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect3acc2v23map22MapFieldAccessorHolderECs7gfv9tzbXmh_6yara_x.exit.sink.split.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler12PatternPieceEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !24, !noundef !5 ; 2 uses
  %i.b = icmp slt i64 %i.a, -9223372036854775805
  %i.c = add i64 %i.a, -9223372036854775807
  %i.d = select i1 %i.b, i64 %i.c, i64 0
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler7PatternEEB1g_.exit, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler7PatternEBJ_(ptr noalias nofree noundef align 8 dereferenceable(48) %0)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler7PatternENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler7PatternEEB1g_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler7PatternENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler7PatternEEB1n_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler7PatternEEB1n_.exit.i: ; preds = %bb.e
  resume { ptr, i32 } %i.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler7PatternEEB1g_.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler7PatternENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler15PatternSplitterEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #45
          to label %.body5 unwind label %bb.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body5 unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit7 unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

.body5:                                           ; preds = %bb.i, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.i ], [ %i.f, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler12PatternPieceEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #45
          to label %.body8 unwind label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body5

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit7: ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler12PatternPieceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit7
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler12PatternPieceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body8 unwind label %bb.l

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit7
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler12PatternPieceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler12PatternPieceEEB1g_.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

.body8:                                           ; preds = %bb.m, %bb.j, %.body5
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body5 ], [ %i.n, %bb.m ], [ %i.k, %bb.j ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler7PatternEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #45
          to label %common.resume unwind label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body8

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler12PatternPieceEEB1g_.exit: ; preds = %bb.k
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler7PatternENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler7PatternEEB1g_.exit unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler12PatternPieceEEB1g_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler7PatternENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

common.resume:                                    ; preds = %.body8, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.n ], [ %.pn2, %.body8 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler7PatternEEB1g_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler12PatternPieceEEB1g_.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler7PatternENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
  ret void

bb.p:                                             ; preds = %.body8, %.body5, %.body
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compiler7PatternEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit4 unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_RINvXs6_NtNtNtCskKLDkoKarTP_4core4iter8adapters7step_byINtB6_6StepByINtNtB8_4take4TakeINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEEEINtB6_10StepByImplB14_E13spec_try_folduNCINvNvNtNtNtBa_6traits8iterator8Iterator3all5checkRhNCINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3H_6FastVM9try_matchNtB3L_10BckCodeLocNCINvNtNtB3N_7scanner7context13verify_regexpNCNvMs0_B57_NtB57_11ScanContext17handle_atom_match0Es0_0E0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB3N_:bb.a
  store ptr %storemerge.i.i.i.i.i.i, ptr %i.h, align 8, !alias.scope !2748
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fnINtB2_6FromFnNCINvNvXs6_NtNtB6_8adapters7step_byINtB1a_6StepBypEINtB1a_10StepByImplpE13spec_try_fold3nthINtNtB1c_4take4TakeINtNtB1c_3rev3RevINtNtNtB8_5slice4iter4IterhEEEE0ENtNtNtB6_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4take4TakeINtNtB1a_3rev3RevINtNtNtBc_5slice4iter4IterhEEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3x_3all5checkRhNCINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4I_6FastVM9try_matchNtB4M_10BckCodeLocNCINvNtNtB4O_7scanner7context13verify_regexpNCNvMs0_B68_NtB68_11ScanContext17handle_atom_match0Es0_0E0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB4O_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = add i64 %i.k, -1
  %i.s = load ptr, ptr %i.h, align 8, !alias.scope !2749, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub nuw i64 %i.t, %i.j
  %.not.i.i2.i.i.i.i = icmp ult i64 %i.r, %i.u
  %i.v = sub i64 1, %i.k
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -1
  %storemerge.i.i3.i.i.i.i = select i1 %.not.i.i2.i.i.i.i, ptr %i.x, ptr %i.d
  store ptr %storemerge.i.i3.i.i.i.i, ptr %i.h, align 8, !alias.scope !2749
  store i64 0, ptr %i.g, align 8, !alias.scope !2747
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4take4TakeINtNtB1a_3rev3RevINtNtNtBc_5slice4iter4IterhEEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3x_3all5checkRhNCINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4I_6FastVM9try_matchNtB4M_10BckCodeLocNCINvNtNtB4O_7scanner7context13verify_regexpNCNvMs0_B68_NtB68_11ScanContext17handle_atom_match0Es0_0E0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB4O_.exit

_RNvXNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fnINtB2_6FromFnNCINvNvXs6_NtNtB6_8adapters7step_byINtB1a_6StepBypEINtB1a_10StepByImplpE13spec_try_fold3nthINtNtB1c_4take4TakeINtNtB1c_3rev3RevINtNtNtB8_5slice4iter4IterhEEEE0ENtNtNtB6_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.e
  %.val6.i = load i8, ptr %i.q, align 1, !noundef !5
  %.not.i = icmp eq i8 %.val6.i, 0
  br i1 %.not.i, label %bb.c, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4take4TakeINtNtB1a_3rev3RevINtNtNtBc_5slice4iter4IterhEEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3x_3all5checkRhNCINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4I_6FastVM9try_matchNtB4M_10BckCodeLocNCINvNtNtB4O_7scanner7context13verify_regexpNCNvMs0_B68_NtB68_11ScanContext17handle_atom_match0Es0_0E0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB4O_.exit

bb.g:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !2750, !noundef !5 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4take4TakeINtNtB1a_3rev3RevINtNtNtBc_5slice4iter4IterhEEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3x_3all5checkRhNCINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4I_6FastVM9try_matchNtB4M_10BckCodeLocNCINvNtNtB4O_7scanner7context13verify_regexpNCNvMs0_B68_NtB68_11ScanContext17handle_atom_match0Es0_0E0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB4O_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = add i64 %i.z, -1                        ; 2 uses
  store i64 %i.ab, ptr %i.y, align 8, !alias.scope !2750
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !2751, !nonnull !5, !noundef !5 ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !alias.scope !2751, !nonnull !5, !noundef !5 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.ad
  br i1 %i.af, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4take4TakeINtNtB1a_3rev3RevINtNtNtBc_5slice4iter4IterhEEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3x_3all5checkRhNCINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4I_6FastVM9try_matchNtB4M_10BckCodeLocNCINvNtNtB4O_7scanner7context13verify_regexpNCNvMs0_B68_NtB68_11ScanContext17handle_atom_match0Es0_0E0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB4O_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 -1 ; 3 uses
  store ptr %i.ag, ptr %i.ac, align 8, !alias.scope !2751
  %.val = load i8, ptr %i.ag, align 1, !noundef !5
  %.not = icmp eq i8 %.val, 0
  br i1 %.not, label %bb.b, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4take4TakeINtNtB1a_3rev3RevINtNtNtBc_5slice4iter4IterhEEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3x_3all5checkRhNCINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4I_6FastVM9try_matchNtB4M_10BckCodeLocNCINvNtNtB4O_7scanner7context13verify_regexpNCNvMs0_B68_NtB68_11ScanContext17handle_atom_match0Es0_0E0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB4O_.exit

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4take4TakeINtNtB1a_3rev3RevINtNtNtBc_5slice4iter4IterhEEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3x_3all5checkRhNCINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4I_6FastVM9try_matchNtB4M_10BckCodeLocNCINvNtNtB4O_7scanner7context13verify_regexpNCNvMs0_B68_NtB68_11ScanContext17handle_atom_match0Es0_0E0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB4O_.exit: ; preds = %_RNvXNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fnINtB2_6FromFnNCINvNvXs6_NtNtB6_8adapters7step_byINtB1a_6StepBypEINtB1a_10StepByImplpE13spec_try_fold3nthINtNtB1c_4take4TakeINtNtB1c_3rev3RevINtNtNtB8_5slice4iter4IterhEEEE0ENtNtNtB6_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i, %bb.e, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d
  %.sroa.0.1 = phi i1 [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.d ], [ true, %bb.i ], [ %.not.i.i.i.i.i.i, %bb.e ], [ %.not.i.i.i.i.i.i, %_RNvXNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fnINtB2_6FromFnNCINvNvXs6_NtNtB6_8adapters7step_byINtB1a_6StepBypEINtB1a_10StepByImplpE13spec_try_fold3nthINtNtB1c_4take4TakeINtNtB1c_3rev3RevINtNtNtB8_5slice4iter4IterhEEEE0ENtNtNtB6_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i ]
  ret i1 %.sroa.0.1
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RINvXs6_NtNtNtCskKLDkoKarTP_4core4iter8adapters7step_byINtB6_6StepByINtNtB8_4take4TakeINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEEEINtB6_10StepByImplB14_E13spec_try_folduNCINvNvNtNtNtBa_6traits8iterator8Iterator3all5checkRhNCINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3H_6FastVM9try_matchNtB3L_10FwdCodeLocNCINvNtNtB3N_7scanner7context13verify_regexpNCNvMs0_B57_NtB57_11ScanContext17handle_atom_match0E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB3N_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !17, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.promoted.i.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !2768
  %.phi.trans.insert14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted.pre = load ptr, ptr %.phi.trans.insert14, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.i
  %i.d = phi ptr [ %.pre, %._crit_edge ], [ %i.ae, %bb.i ] ; 3 uses
  %.promoted = phi ptr [ %.promoted.pre, %._crit_edge ], [ %i.ag, %bb.i ]
  %.promoted.i = phi i64 [ %.promoted.i.pre, %._crit_edge ], [ %i.ab, %bb.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.neg.i.i.i.i = xor i64 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = sub nsw i64 0, %i.f
  %i.j = ptrtoint ptr %i.d to i64                 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNvXNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fnINtB2_6FromFnNCINvNvXs6_NtNtB6_8adapters7step_byINtB1a_6StepBypEINtB1a_10StepByImplpE13spec_try_fold3nthINtNtB1c_4take4TakeINtNtB1c_3rev3RevINtNtNtB8_5slice4iter4IterhEEEE0ENtNtNtB6_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i, %bb.b
  %storemerge.i.i.i.i.i.i11 = phi ptr [ %i.q, %_RNvXNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fnINtB2_6FromFnNCINvNvXs6_NtNtB6_8adapters7step_byINtB1a_6StepBypEINtB1a_10StepByImplpE13spec_try_fold3nthINtNtB1c_4take4TakeINtNtB1c_3rev3RevINtNtNtB8_5slice4iter4IterhEEEE0ENtNtNtB6_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i ], [ %.promoted, %bb.b ] ; 2 uses
  %i.k = phi i64 [ %i.m, %_RNvXNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fnINtB2_6FromFnNCINvNvXs6_NtNtB6_8adapters7step_byINtB1a_6StepBypEINtB1a_10StepByImplpE13spec_try_fold3nthINtNtB1c_4take4TakeINtNtB1c_3rev3RevINtNtNtB8_5slice4iter4IterhEEEE0ENtNtNtB6_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i ], [ %.promoted.i, %bb.b ] ; 5 uses
  %i.l = icmp ugt i64 %i.k, %i.f
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4take4TakeINtNtB1a_3rev3RevINtNtNtBc_5slice4iter4IterhEEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3x_3all5checkRhNCINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4I_6FastVM9try_matchNtB4M_10FwdCodeLocNCINvNtNtB4O_7scanner7context13verify_regexpNCNvMs0_B68_NtB68_11ScanContext17handle_atom_match0E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB4O_.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = add i64 %i.k, %.neg.i.i.i.i              ; 2 uses
  store i64 %i.m, ptr %i.g, align 8, !alias.scope !2768
  %i.n = ptrtoint ptr %storemerge.i.i.i.i.i.i11 to i64
  %i.o = sub nuw i64 %i.n, %i.j
  %.not.i.i.i.i.i.i = icmp ult i64 %i.f, %i.o     ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %storemerge.i.i.i.i.i.i11, i64 %i.i
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -1 ; 3 uses
  %storemerge.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.q, ptr %i.d
  store ptr %storemerge.i.i.i.i.i.i, ptr %i.h, align 8, !alias.scope !2769
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fnINtB2_6FromFnNCINvNvXs6_NtNtB6_8adapters7step_byINtB1a_6StepBypEINtB1a_10StepByImplpE13spec_try_fold3nthINtNtB1c_4take4TakeINtNtB1c_3rev3RevINtNtNtB8_5slice4iter4IterhEEEE0ENtNtNtB6_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4take4TakeINtNtB1a_3rev3RevINtNtNtBc_5slice4iter4IterhEEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3x_3all5checkRhNCINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4I_6FastVM9try_matchNtB4M_10FwdCodeLocNCINvNtNtB4O_7scanner7context13verify_regexpNCNvMs0_B68_NtB68_11ScanContext17handle_atom_match0E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB4O_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = add i64 %i.k, -1
  %i.s = load ptr, ptr %i.h, align 8, !alias.scope !2770, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub nuw i64 %i.t, %i.j
  %.not.i.i2.i.i.i.i = icmp ult i64 %i.r, %i.u
  %i.v = sub i64 1, %i.k
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -1
  %storemerge.i.i3.i.i.i.i = select i1 %.not.i.i2.i.i.i.i, ptr %i.x, ptr %i.d
  store ptr %storemerge.i.i3.i.i.i.i, ptr %i.h, align 8, !alias.scope !2770
  store i64 0, ptr %i.g, align 8, !alias.scope !2768
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4take4TakeINtNtB1a_3rev3RevINtNtNtBc_5slice4iter4IterhEEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3x_3all5checkRhNCINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4I_6FastVM9try_matchNtB4M_10FwdCodeLocNCINvNtNtB4O_7scanner7context13verify_regexpNCNvMs0_B68_NtB68_11ScanContext17handle_atom_match0E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB4O_.exit

_RNvXNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fnINtB2_6FromFnNCINvNvXs6_NtNtB6_8adapters7step_byINtB1a_6StepBypEINtB1a_10StepByImplpE13spec_try_fold3nthINtNtB1c_4take4TakeINtNtB1c_3rev3RevINtNtNtB8_5slice4iter4IterhEEEE0ENtNtNtB6_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.e
  %.val6.i = load i8, ptr %i.q, align 1, !noundef !5
  %.not.i = icmp eq i8 %.val6.i, 0
  br i1 %.not.i, label %bb.c, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4take4TakeINtNtB1a_3rev3RevINtNtNtBc_5slice4iter4IterhEEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3x_3all5checkRhNCINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4I_6FastVM9try_matchNtB4M_10FwdCodeLocNCINvNtNtB4O_7scanner7context13verify_regexpNCNvMs0_B68_NtB68_11ScanContext17handle_atom_match0E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB4O_.exit

bb.g:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !2771, !noundef !5 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4take4TakeINtNtB1a_3rev3RevINtNtNtBc_5slice4iter4IterhEEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3x_3all5checkRhNCINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4I_6FastVM9try_matchNtB4M_10FwdCodeLocNCINvNtNtB4O_7scanner7context13verify_regexpNCNvMs0_B68_NtB68_11ScanContext17handle_atom_match0E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB4O_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = add i64 %i.z, -1                        ; 2 uses
  store i64 %i.ab, ptr %i.y, align 8, !alias.scope !2771
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !2772, !nonnull !5, !noundef !5 ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !alias.scope !2772, !nonnull !5, !noundef !5 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.ad
  br i1 %i.af, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4take4TakeINtNtB1a_3rev3RevINtNtNtBc_5slice4iter4IterhEEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3x_3all5checkRhNCINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4I_6FastVM9try_matchNtB4M_10FwdCodeLocNCINvNtNtB4O_7scanner7context13verify_regexpNCNvMs0_B68_NtB68_11ScanContext17handle_atom_match0E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB4O_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 -1 ; 3 uses
  store ptr %i.ag, ptr %i.ac, align 8, !alias.scope !2772
  %.val = load i8, ptr %i.ag, align 1, !noundef !5
  %.not = icmp eq i8 %.val, 0
  br i1 %.not, label %bb.b, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4take4TakeINtNtB1a_3rev3RevINtNtNtBc_5slice4iter4IterhEEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3x_3all5checkRhNCINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4I_6FastVM9try_matchNtB4M_10FwdCodeLocNCINvNtNtB4O_7scanner7context13verify_regexpNCNvMs0_B68_NtB68_11ScanContext17handle_atom_match0E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB4O_.exit

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fn6FromFnNCINvNvXs6_NtNtBa_8adapters7step_byINtB18_6StepBypEINtB18_10StepByImplpE13spec_try_fold3nthINtNtB1a_4take4TakeINtNtB1a_3rev3RevINtNtNtBc_5slice4iter4IterhEEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3x_3all5checkRhNCINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4I_6FastVM9try_matchNtB4M_10FwdCodeLocNCINvNtNtB4O_7scanner7context13verify_regexpNCNvMs0_B68_NtB68_11ScanContext17handle_atom_match0E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB4O_.exit: ; preds = %_RNvXNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fnINtB2_6FromFnNCINvNvXs6_NtNtB6_8adapters7step_byINtB1a_6StepBypEINtB1a_10StepByImplpE13spec_try_fold3nthINtNtB1c_4take4TakeINtNtB1c_3rev3RevINtNtNtB8_5slice4iter4IterhEEEE0ENtNtNtB6_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i, %bb.e, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d
  %.sroa.0.1 = phi i1 [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.d ], [ true, %bb.i ], [ %.not.i.i.i.i.i.i, %bb.e ], [ %.not.i.i.i.i.i.i, %_RNvXNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fnINtB2_6FromFnNCINvNvXs6_NtNtB6_8adapters7step_byINtB1a_6StepBypEINtB1a_10StepByImplpE13spec_try_fold3nthINtNtB1c_4take4TakeINtNtB1c_3rev3RevINtNtNtB8_5slice4iter4IterhEEEE0ENtNtNtB6_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i ]
  ret i1 %.sroa.0.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYQINtNtNtCslcwApyVHiOd_7bincode2de7decoder11DecoderImplNtNtB9_4read11SliceReaderNtNtBb_6config13ConfigurationuENtB9_7Decoder20claim_container_readhECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1, i64 noundef %2) unnamed_addr #10 {
bb.a:
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvMs0_NtNtCs7gfv9tzbXmh_6yara_x7scanner7contextNtB19_11ScanContext5resets0_00zEs_00B1d_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNCNvMs0_NtNtCs7gfv9tzbXmh_6yara_x7scanner7contextNtB24_11ScanContext5resets0_00zEs_000uEB28_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNvMs0_NtNtCs7gfv9tzbXmh_6yara_x7scanner7contextNtB1g_11ScanContext5resets0_00zEB1k_() #42
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvMs0_NtNtCs7gfv9tzbXmh_6yara_x7scanner7contextNtB1c_11ScanContext5resets0_00zEs_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableB1g_(ptr noundef %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2783)
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.8.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2783
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.8.0..sroa_idx12.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.522.0..sroa_idx.i, i64 16, i1 false)
  %i.c = load <2 x ptr>, ptr %0, align 8, !alias.scope !2783
  store <2 x ptr> %i.c, ptr %i.a, align 16, !noalias !2783
  invoke fastcc void @_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvMs0_NtNtCs7gfv9tzbXmh_6yara_x7scanner7contextNtB2j_11ScanContext5resets0_00zEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2n_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a) #49
          to label %.noexc8.i unwind label %bb.b, !noalias !2783

.noexc8.i:                                        ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.e)
          to label %bb.d unwind label %bb.c, !noalias !2783 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #46, !noalias !2783
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = extractvalue { ptr, ptr } %i.f, 0        ; 3 uses
  %i.i = extractvalue { ptr, ptr } %i.f, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h), "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2783, !nonnull !5, !noundef !5 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %.val.i = load ptr, ptr %i.l, align 8, !noalias !2783, !noundef !5 ; 4 uses
  %i.m = getelementptr i8, ptr %i.k, i64 24       ; 3 uses
  %.val5.i = load ptr, ptr %i.m, align 8, !noalias !2783 ; 6 uses
  %i.n = icmp eq ptr %.val.i, null
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7gfv9tzbXmh_6yara_x.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  %i.o = load ptr, ptr %.val5.i, align 8, !invariant.load !5, !noalias !2783 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.o(ptr noundef nonnull %.val.i)
          to label %bb.g unwind label %bb.i, !noalias !2783

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !19, !invariant.load !5, !noalias !2783 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7gfv9tzbXmh_6yara_x.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !20, !invariant.load !5, !noalias !2783
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #47, !noalias !2783
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7gfv9tzbXmh_6yara_x.exit.i

bb.i:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !19, !invariant.load !5, !noalias !2783 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !20, !invariant.load !5, !noalias !2783
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #47, !noalias !2783
  br label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.h, %bb.g, %bb.d
  store ptr %i.h, ptr %i.l, align 8, !noalias !2783
  store ptr %i.i, ptr %i.m, align 8, !noalias !2783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2783
  store ptr %i.k, ptr %i.b, align 8, !noalias !2783
  %i.aa = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !2784
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.k, label %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvMs0_NtNtCs7gfv9tzbXmh_6yara_x7scanner7contextNtB17_11ScanContext5resets0_00zEs_0B1b_.exit

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7gfv9tzbXmh_6yara_x.exit.i
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEE9drop_slowCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #48, !noalias !2783
  br label %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvMs0_NtNtCs7gfv9tzbXmh_6yara_x7scanner7contextNtB17_11ScanContext5resets0_00zEs_0B1b_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECs7gfv9tzbXmh_6yara_x.exit7.i: ; preds = %bb.m, %bb.l
  resume { ptr, i32 } %i.u

bb.l:                                             ; preds = %bb.j, %bb.i
  store ptr %i.h, ptr %i.l, align 8, !noalias !2783
  store ptr %i.i, ptr %i.m, align 8, !noalias !2783
  %i.ac = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !2785
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECs7gfv9tzbXmh_6yara_x.exit7.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEE9drop_slowCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #48
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECs7gfv9tzbXmh_6yara_x.exit7.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvMs0_NtNtCs7gfv9tzbXmh_6yara_x7scanner7contextNtB17_11ScanContext5resets0_00zEs_0B1b_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7gfv9tzbXmh_6yara_x.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2783
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint32(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.g = sub nuw i64 %i.f, %i.d                   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2792)
  %.not.i = icmp eq i64 %i.f, %i.d
  br i1 %.not.i, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.c
  %.not11.i = icmp eq i64 %i.g, 1
  br i1 %.not11.i, label %bb.q, label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !2792, !noundef !5 ; 3 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.n, label %bb.b

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2793)
  br label %bb.q

bb.e:                                             ; preds = %bb.l
  %i.k = icmp samesign eq i64 %i.g, 2
  br i1 %i.k, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = and i8 %i.an, 127
  %i.m = zext nneg i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 7
  %i.o = zext nneg i8 %i.ap to i32
  %i.p = or disjoint i32 %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !2794, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.t = and i8 %i.r, 127
  %i.u = zext nneg i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 14
  %i.w = or disjoint i32 %i.v, %i.p               ; 2 uses
  %i.x = icmp sgt i8 %i.r, -1
  br i1 %i.x, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp samesign eq i64 %i.g, 3
  br i1 %i.y, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load i8, ptr %i.s, align 1, !alias.scope !2794, !noundef !5 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ab = and i8 %i.z, 127
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 21
  %i.ae = or disjoint i32 %i.ad, %i.w             ; 2 uses
  %i.af = icmp sgt i8 %i.z, -1
  br i1 %i.af, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp samesign eq i64 %i.g, 4
  br i1 %i.ag, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load i8, ptr %i.aa, align 1, !alias.scope !2794, !noundef !5 ; 2 uses
  %i.ai = icmp ugt i8 %i.ah, 15
  br i1 %i.ai, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = zext nneg i8 %i.ah to i32
  %i.ak = shl nuw i32 %i.aj, 28
  %i.al = or disjoint i32 %i.ak, %i.ae
  br label %bb.p

bb.l:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !2792, !noundef !5 ; 3 uses
  %i.ao = icmp sgt i8 %i.an, -1
  %i.ap = and i8 %i.i, 127                        ; 2 uses
  br i1 %i.ao, label %bb.m, label %bb.e

bb.m:                                             ; preds = %bb.l
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = zext nneg i8 %i.an to i32
  %i.as = shl nuw nsw i32 %i.ar, 7
  %.sroa.10.8.insert.ext14 = or disjoint i32 %i.as, %i.aq
  br label %bb.p

bb.n:                                             ; preds = %bb.c
  %.sroa.10.8.insert.ext18 = zext nneg i8 %i.i to i32
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2795
  store i8 3, ptr %i.a, align 8, !noalias !2795
  %i.at = call noundef nonnull align 8 ptr @_RNvXs_NtCsg2CeFYmfPbl_8protobuf5errorNtB4_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB4_9WireErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !noalias !2795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2795
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.au, align 8
  store i32 1, ptr %0, align 8
  br label %bb.t

bb.p:                                             ; preds = %bb.f, %bb.h, %bb.m, %bb.n, %bb.k
  %.sroa.17.0.ph = phi i64 [ 5, %bb.k ], [ 1, %bb.n ], [ 2, %bb.m ], [ 4, %bb.h ], [ 3, %bb.f ] ; 2 uses
  %.sroa.10.0.ph.in = phi i32 [ %i.al, %bb.k ], [ %.sroa.10.8.insert.ext18, %bb.n ], [ %.sroa.10.8.insert.ext14, %bb.m ], [ %i.ae, %bb.h ], [ %i.w, %bb.f ]
  %.not = icmp ugt i64 %.sroa.17.0.ph, %i.g
  br i1 %.not, label %bb.r, label %bb.s, !prof !6

bb.q:                                             ; preds = %bb.b, %bb.d, %bb.e, %bb.g, %bb.i
  tail call void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream22read_raw_varint32_slow(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  br label %bb.t

end_hunk_3
begin_hunk_4_@_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof:bb.a
  %i.as = zext nneg i8 %i.ao to i32
  %i.at = shl nuw nsw i32 %i.as, 7
  %.sroa.10.8.insert.ext21 = or disjoint i32 %i.at, %i.ar
  br label %bb.o

bb.m:                                             ; preds = %bb.c
  %.sroa.10.8.insert.ext25 = zext nneg i8 %i.j to i32
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2809
  store i8 3, ptr %i.a, align 8, !noalias !2809
  %i.au = call noundef nonnull align 8 ptr @_RNvXs_NtCsg2CeFYmfPbl_8protobuf5errorNtB4_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB4_9WireErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !noalias !2809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2809
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.av, align 8
  br label %bb.x

bb.o:                                             ; preds = %bb.e, %bb.g, %bb.l, %bb.m, %bb.j
  %.sroa.17.0.ph = phi i64 [ 5, %bb.j ], [ 1, %bb.m ], [ 2, %bb.l ], [ 4, %bb.g ], [ 3, %bb.e ] ; 2 uses
  %.sroa.10.0.ph.in = phi i32 [ %i.am, %bb.j ], [ %.sroa.10.8.insert.ext25, %bb.m ], [ %.sroa.10.8.insert.ext21, %bb.l ], [ %i.af, %bb.g ], [ %i.x, %bb.e ]
  %.not = icmp ugt i64 %.sroa.17.0.ph, %i.h
  br i1 %.not, label %bb.v, label %bb.w, !prof !6

bb.p:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2810)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !2811, !noalias !2812, !noundef !5
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !2811, !noalias !2812, !noundef !5
  %i.ba = add i64 %i.az, %i.e
  %i.bb = icmp eq i64 %i.ax, %i.ba
  br i1 %i.bb, label %.thread50, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = tail call noundef align 8 ptr @_RNvMs_NtNtCsg2CeFYmfPbl_8protobuf18coded_input_stream13buf_read_iterNtB4_11BufReadIter13fill_buf_slow(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %1), !noalias !2813 ; 2 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.bd, align 8
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.be = load i64, ptr %i.d, align 8, !alias.scope !2811, !noalias !2812, !noundef !5
  %i.bf = load i64, ptr %i.f, align 8, !alias.scope !2811, !noalias !2812, !noundef !5
  %i.bg = icmp eq i64 %i.bf, %i.be
  br i1 %i.bg, label %.thread50, label %.thread48

.thread48:                                        ; preds = %bb.h, %bb.f, %bb.d, %bb.b, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCsg2CeFYmfPbl_8protobuf18coded_input_streamNtB2_16CodedInputStream22read_raw_varint32_slow(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.bh = load i32, ptr %i.b, align 8, !range !33, !noundef !5
  %i.bi = trunc nuw i32 %i.bh to i1
  br i1 %i.bi, label %bb.t, label %bb.u

.thread50:                                        ; preds = %bb.p, %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bj, align 4
  br label %bb.x

bb.t:                                             ; preds = %.thread48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !5, !align !23, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %i.bm, align 8
  br label %bb.x

bb.u:                                             ; preds = %.thread48
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bo, ptr %i.bq, align 8
  br label %bb.x

bb.v:                                             ; preds = %bb.o
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #42
  unreachable

bb.w:                                             ; preds = %bb.o
  %i.br = add i64 %i.e, %.sroa.17.0.ph
  store i64 %i.br, ptr %i.d, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.10.0.ph.in, ptr %i.bt, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.n, %bb.r, %bb.t, %.thread50, %bb.u, %bb.w
  %.sink = phi i32 [ 1, %bb.n ], [ 1, %bb.r ], [ 1, %bb.t ], [ 0, %.thread50 ], [ 0, %bb.u ], [ 0, %bb.w ]
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 1) i8 @_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compilerNtB2_8Compiler10emit_piece(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [2 x i8], align 2                 ; 4 uses
  %i.j = alloca [2 x i8], align 2                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [2 x i8], align 2                 ; 4 uses
  %i.q = load i64, ptr %0, align 8, !range !24, !noundef !5 ; 2 uses
  %i.r = icmp slt i64 %i.q, -9223372036854775805
  %i.s = add i64 %i.q, -9223372036854775807
  %i.t = select i1 %i.r, i64 %i.s, i64 0
  switch i64 %i.t, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.z
    i64 3, label %bb.as
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compilerNtB5_8InstrSeq12emit_pattern(ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  br label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compilerNtB5_8InstrSeq16emit_alternation.exit

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.u, align 8             ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val7 = load i64, ptr %i.v, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2844)
  %i.w = tail call noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 1) ; 2 uses
  %.not.i11.i = icmp eq ptr %i.w, null
  br i1 %.not.i11.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit12.i, label %bb.e, !prof !13

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2845
  store ptr %i.w, ptr %i.m, align 8, !noalias !2845
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 43, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #44
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #45
          to label %common.resume unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

common.resume:                                    ; preds = %bb.av, %bb.ba, %bb.be, %bb.ac, %bb.ah, %bb.al, %bb.ap, %bb.f, %bb.j, %bb.o, %bb.s, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.bx, %bb.ap ], [ %i.az, %bb.w ], [ %i.at, %bb.s ], [ %i.x, %bb.f ], [ %i.ac, %bb.j ], [ %i.ap, %bb.o ], [ %i.bu, %bb.al ], [ %i.bo, %bb.ac ], [ %i.br, %bb.ah ], [ %i.cj, %bb.ba ], [ %i.cg, %bb.av ], [ %i.cm, %bb.be ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit12.i: ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !2844, !noundef !5
  %i.ab = tail call noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 2) ; 2 uses
  %.not.i9.i = icmp eq ptr %i.ab, null
  br i1 %.not.i9.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit10.i, label %bb.i, !prof !13

bb.i:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit12.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2846
  store ptr %i.ab, ptr %i.n, align 8, !noalias !2846
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 43, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #44
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #45
          to label %common.resume unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit10.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit12.i
  %2 = load i64, ptr %i.z, align 8, !alias.scope !2844, !noundef !5 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.idx.i = mul nuw nsw i64 %.val7, 48
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i
  %i.af = icmp eq i64 %.val7, 0
  br i1 %i.af, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit10.i, %.lr.ph.i
  %.sroa.01.01.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %.val, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit10.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.01.01.i, i64 48 ; 2 uses
  tail call fastcc void @_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compilerNtB5_8InstrSeq12emit_pattern(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.01.01.i)
  %i.ah = icmp eq ptr %i.ag, %i.ae
  br i1 %i.ah, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load i64, ptr %i.z, align 8, !alias.scope !2844
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit10.i
  %i.ai = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ %2, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit10.i ]
  %i.aj = sub i64 %i.ai, %2                       ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 65535
  br i1 %i.ak, label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compilerNtB5_8InstrSeq16emit_alternation.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  %i.al = tail call { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.aa) ; 2 uses
  %i.am = extractvalue { i64, ptr } %i.al, 0
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.n, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit13.i, !prof !6

bb.n:                                             ; preds = %bb.m
  %i.ao = extractvalue { i64, ptr } %i.al, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2847
  store ptr %i.ao, ptr %i.k, align 8, !noalias !2847
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 43, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #44
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #45
          to label %common.resume unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit13.i: ; preds = %bb.m
  %i.ar = trunc nuw i64 %i.aj to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2844
  store i16 %i.ar, ptr %i.p, align 2, !noalias !2844
  %i.as = call noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 2) ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i, label %bb.r, !prof !13

bb.r:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit13.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2848
  store ptr %i.as, ptr %i.o, align 8, !noalias !2848
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 43, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #44
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #45
          to label %common.resume unwind label %bb.u

bb.t:                                             ; preds = %bb.r
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2844
  %i.av = call { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, i64 noundef 0) ; 2 uses
  %i.aw = extractvalue { i64, ptr } %i.av, 0
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.v, label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast8compilerNtB5_8InstrSeq16emit_alternation.exit, !prof !6

bb.v:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i
  %i.ay = extractvalue { i64, ptr } %i.av, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2849
  store ptr %i.ay, ptr %i.l, align 8, !noalias !2849
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 43, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #44
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #45
          to label %common.resume unwind label %bb.y

bb.x:                                             ; preds = %bb.v
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.z:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !noundef !5
  %i.bd = trunc i32 %i.bc to i16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !range !33, !noundef !5
  %i.bg = trunc nuw i32 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = trunc i32 %i.bi to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bl = load i8, ptr %i.bk, align 4, !range !17, !noundef !5
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bn = tail call noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 1) ; 2 uses
  %.not.i7.i = icmp eq ptr %i.bn, null
  br i1 %.not.i7.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit8.i, label %bb.ab, !prof !13

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2850
  store ptr %i.bn, ptr %i.e, align 8, !noalias !2850
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #44
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %common.resume unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.af:                                            ; preds = %bb.z
  %i.bq = tail call noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 1) ; 2 uses
  %.not.i5.i = icmp eq ptr %i.bq, null
  br i1 %.not.i5.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit8.i, label %bb.ag, !prof !13

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2851
  store ptr %i.bq, ptr %i.f, align 8, !noalias !2851
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #44
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #45
          to label %common.resume unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit8.i: ; preds = %bb.af, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2852
  store i16 %i.bd, ptr %i.j, align 2, !noalias !2852
  %i.bt = call noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 2) ; 2 uses
  %.not.i3.i = icmp eq ptr %i.bt, null
  br i1 %.not.i3.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit4.i, label %bb.ak, !prof !13

bb.ak:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit8.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2853
  store ptr %i.bt, ptr %i.g, align 8, !noalias !2853
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #44
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #45
          to label %common.resume unwind label %bb.an

bb.am:                                            ; preds = %bb.ak
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_4
begin_hunk_5_@_RNvNtCslssDYltVX0B_6memchr6memmem5rfind:bb.a
.lr.ph62.i.us64.us.i.2:                           ; preds = %bb.ai
  %exitcond.2.not = icmp eq i64 %i.fd, 2
  br i1 %exitcond.2.not, label %.split53.us.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph62.i.us64.us.i.2
  %i.fi = getelementptr i8, ptr %0, i64 %.sroa.01.0.i67.i.us58.us.i
  %i.fj = getelementptr i8, ptr %i.fi, i64 -2
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !4809, !noundef !5
  %i.fl = icmp eq i8 %i.g, %i.fk
  br i1 %i.fl, label %.lr.ph62.i.us64.us.i.3, label %._crit_edge.i.loopexit.us67.us.i

.lr.ph62.i.us64.us.i.3:                           ; preds = %bb.aj
  %exitcond.3.not = icmp eq i64 %i.fd, 3
  br i1 %exitcond.3.not, label %.split53.us.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph62.i.us64.us.i.3
  %i.fm = getelementptr i8, ptr %0, i64 %.sroa.01.0.i67.i.us58.us.i
  %i.fn = getelementptr i8, ptr %i.fm, i64 -1
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !4809, !noundef !5
  %i.fp = icmp eq i8 %i.h, %i.fo
  br i1 %i.fp, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %._crit_edge.i.loopexit.us67.us.i

._crit_edge.i.loopexit.us67.us.i:                 ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.fq = sub i64 %.sroa.01.0.i67.i.us58.us.i, %i.bh
  br label %.backedge.i.us71.us.i

.backedge.i.us71.us.i:                            ; preds = %._crit_edge.i.loopexit.us67.us.i, %.loopexit.i.us61.us.i, %bb.ah
  %.sroa.01.0.i.be.i.us72.us.i = phi i64 [ %i.ev, %bb.ah ], [ %.reass.us.us.i, %.loopexit.i.us61.us.i ], [ %i.fq, %._crit_edge.i.loopexit.us67.us.i ] ; 2 uses
  %.not31.i.i.us73.us.i = icmp ult i64 %.sroa.01.0.i.be.i.us72.us.i, 4
  br i1 %.not31.i.i.us73.us.i, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %.lr.ph69.i.split.split.us.split.us.i

.lr.ph69.i.split.split.i:                         ; preds = %.lr.ph69.i.split.i, %.backedge.i.i
  %.sroa.01.0.i67.i.i = phi i64 [ %i.fr, %.backedge.i.i ], [ %1, %.lr.ph69.i.split.i ]
  %i.fr = add nsw i64 %.sroa.01.0.i67.i.i, -4     ; 6 uses
  %i.fs = icmp ult i64 %i.fr, %1
  br i1 %i.fs, label %bb.al, label %.split49.us.i

bb.al:                                            ; preds = %.lr.ph69.i.split.split.i
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 %i.fr
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !4809, !noundef !5
  %i.fv = and i8 %i.fu, 63
  %i.fw = zext nneg i8 %i.fv to i64
  %i.fx = shl nuw i64 1, %i.fw
  %i.fy = and i64 %i.fx, %i.be
  %.not32.i.i.i = icmp eq i64 %i.fy, 0
  br i1 %.not32.i.i.i, label %.backedge.i.i, label %.split.i

.backedge.i.i:                                    ; preds = %bb.al
  %.not31.i.i.i = icmp ult i64 %i.fr, 4
  br i1 %.not31.i.i.i, label %_RNvMs_NtNtNtCslssDYltVX0B_6memchr4arch3all9rabinkarpNtB4_9FinderRev5rfind.exit, label %.lr.ph69.i.split.split.i

.split49.us.i:                                    ; preds = %.lr.ph69.i.split.split.i, %.lr.ph69.i.split.split.us.split.us.i, %.lr.ph69.i.split.us.i
  %.us-phi50.i = phi i64 [ %i.cn, %.lr.ph69.i.split.us.i ], [ %i.ev, %.lr.ph69.i.split.split.us.split.us.i ], [ %i.fr, %.lr.ph69.i.split.split.i ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi50.i, i64 noundef range(i64 64, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #42
  unreachable

.split.i:                                         ; preds = %bb.al
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bv, i64 noundef range(i64 0, -9223372036854775808) 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @439) #42
  unreachable

.split45.us.i:                                    ; preds = %.lr.ph69.3, %.lr.ph69.2, %.lr.ph69.1, %.lr.ph69
  %.lcssa74 = phi i64 [ %i.do, %.lr.ph69 ], [ %i.cw, %.lr.ph69.1 ], [ %i.dc, %.lr.ph69.2 ], [ %i.di, %.lr.ph69.3 ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa74, i64 noundef range(i64 64, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #42
  unreachable

.split53.us.i.loopexit:                           ; preds = %.lr.ph62.i.us.i.3, %.lr.ph62.i.us.i.2, %.lr.ph62.i.us.i.1, %.lr.ph62.i.us.i
  %i.fz = add i64 %i.bx, %.sroa.01.0.i67.i.us.i
  %umax169.le = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.fz)
  br label %.split53.us.i

.split53.us.i:                                    ; preds = %.lr.ph62.i.us64.us.i.preheader, %.lr.ph62.i.us64.us.i.2, %.lr.ph62.i.us64.us.i.3, %.split53.us.i.loopexit
  %.us-phi54.i = phi i64 [ %umax169.le, %.split53.us.i.loopexit ], [ %1, %.lr.ph62.i.us64.us.i.3 ], [ %1, %.lr.ph62.i.us64.us.i.2 ], [ %1, %.lr.ph62.i.us64.us.i.preheader ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi54.i, i64 noundef range(i64 64, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @441) #42
  unreachable

.lr.ph60.i.i:                                     ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4813)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.6.i.i.i, i64 range(i64 0, -9223372036854775808) 4) ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %.backedge18.i.i, %.lr.ph60.i.i
  %.sroa.01.0.i459.i.i = phi i64 [ %1, %.lr.ph60.i.i ], [ %.sroa.01.0.i4.be.i.i, %.backedge18.i.i ] ; 5 uses
  %.sroa.011.0.i58.i.i = phi i64 [ 4, %.lr.ph60.i.i ], [ %.sroa.011.0.i.be.i.i, %.backedge18.i.i ] ; 3 uses
  %i.ga = add i64 %.sroa.01.0.i459.i.i, -4        ; 8 uses
  %i.gb = icmp ult i64 %i.ga, %1
  br i1 %i.gb, label %bb.an, label %.noexc9

bb.an:                                            ; preds = %bb.am
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 %i.ga
  %i.gd = load i8, ptr %i.gc, align 1, !alias.scope !4814, !noundef !5 ; 2 uses
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
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !4815, !noalias !4811, !noundef !5
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 %i.gk
  %i.gp = load i8, ptr %i.go, align 1, !alias.scope !4814, !noundef !5
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
  %i.gv = load i8, ptr %i.gu, align 1, !alias.scope !4815, !noalias !4811, !noundef !5
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 %i.gs
  %i.gx = load i8, ptr %i.gw, align 1, !alias.scope !4814, !noundef !5
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
  %i.hg = load i8, ptr %i.hf, align 1, !alias.scope !4816, !noundef !5
  %i.hh = zext i8 %i.hg to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.he) ]
  %i.hi = getelementptr i8, ptr %2, i64 2
  %.sroa.5.0.peel.i = load i8, ptr %i.hi, align 1, !alias.scope !4816, !noundef !5
  %i.hj = zext i8 %.sroa.5.0.peel.i to i32
  %i.hk = getelementptr i8, ptr %2, i64 1
  %.sroa.5.0.i = load i8, ptr %i.hk, align 1, !alias.scope !4816, !noundef !5
  %i.hl = shl nuw nsw i32 %i.hh, 2
  %i.hm = shl nuw nsw i32 %i.hj, 1
  %i.hn = add nuw nsw i32 %i.hl, %i.hm
  %i.ho = zext i8 %.sroa.5.0.i to i32
  %i.hp = add nuw nsw i32 %i.hn, %i.ho
  %.sroa.5.0.i.1 = load i8, ptr %2, align 1, !alias.scope !4816, !noundef !5
  %i.hq = shl nuw nsw i32 %i.hp, 1
  %i.hr = zext i8 %.sroa.5.0.i.1 to i32
  %i.hs = add nuw nsw i32 %i.hq, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.hu = tail call noundef i64 @_RNvXNtCslssDYltVX0B_6memchr3extPhNtB2_7Pointer8distanceCs7gfv9tzbXmh_6yara_x(ptr noundef nonnull readonly %i.ht, ptr noundef nonnull readonly %0), !noalias !4817
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
  %i.ib = load i8, ptr %i.ia, align 1, !alias.scope !4818, !noundef !5
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
  %i.ik = load i8, ptr %i.ij, align 1, !alias.scope !4818, !noundef !5
  %i.il = load i8, ptr %i.ii, align 1, !alias.scope !4818, !noundef !5
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
define internal noundef { i64, i64 } @_RNvNtNtCslssDYltVX0B_6memchr6memmem8searcher19searcher_kind_empty(ptr noalias nofree readonly align 32 captures(none) %0, ptr noalias nofree readnone align 4 captures(none) %1, ptr noalias nofree nonnull readonly captures(none) %2, i64 range(i64 0, -9223372036854775808) %3, ptr noalias nofree nonnull readonly captures(none) %4, i64 range(i64 0, -9223372036854775808) %5) unnamed_addr #17 {
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
end_hunk_5
begin_hunk_6_@_RNvXs7_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtNtNtB9_6protos2pe2PEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_2PEE4from:bb.a
bb.z:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hc, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.aj, i64 720 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6147)
  %.val.i261 = load ptr, ptr %i.hg, align 8, !alias.scope !6147, !align !23, !noundef !5 ; 4 uses
  %i.hh = icmp eq ptr %.val.i261, null
  br i1 %i.hh, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !6148)
  %i.hi = getelementptr inbounds nuw i8, ptr %.val.i261, i64 16
  %.val.i.i.i.i262 = load ptr, ptr %i.hi, align 8, !alias.scope !6148, !noalias !6147, !align !23, !noundef !5 ; 4 uses
  %i.hj = icmp eq ptr %.val.i.i.i.i262, null
  br i1 %i.hj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i.i264, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i262)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i263 unwind label %.body265, !noalias !6149

.body265:                                         ; preds = %bb.ab
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i262, i64 noundef 32, i64 noundef 8) #47, !noalias !6149
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i261, i64 noundef 32, i64 noundef 8) #47, !noalias !6147
  store ptr %i.hc, ptr %i.hg, align 8
  br label %.critedge197

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i263: ; preds = %bb.ab
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i262, i64 noundef 32, i64 noundef 8) #47, !noalias !6149
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i.i264

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i.i264: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i263, %bb.aa
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i261, i64 noundef 32, i64 noundef 8) #47, !noalias !6147
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i.i264
  store ptr %i.hc, ptr %i.hg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 130
  %i.hm = load i16, ptr %i.hl, align 2, !noundef !5
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.ho = load i16, ptr %i.hn, align 4, !noundef !5
  %i.hp = zext i16 %i.ho to i32
  %i.hq = zext i16 %i.hm to i32
  store i32 1, ptr %i.ag, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %i.hq, ptr %i.hr, align 4
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 1, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 %i.hp, ptr %i.ht, align 4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hu, i8 0, i64 16, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6150
  %i.hv = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 137) 32, i64 noundef range(i64 1, 9) 8) #47, !noalias !6150 ; 4 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.ad, label %bb.ag, !prof !6

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #44
          to label %.noexc268 unwind label %bb.ae

.noexc268:                                        ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ag) #45
          to label %.critedge197 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hv, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.aj, i64 736 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6151)
  %.val.i270 = load ptr, ptr %i.hz, align 8, !alias.scope !6151, !align !23, !noundef !5 ; 4 uses
  %i.ia = icmp eq ptr %.val.i270, null
  br i1 %i.ia, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !6152)
  %i.ib = getelementptr inbounds nuw i8, ptr %.val.i270, i64 16
  %.val.i.i.i.i271 = load ptr, ptr %i.ib, align 8, !alias.scope !6152, !noalias !6151, !align !23, !noundef !5 ; 4 uses
  %i.ic = icmp eq ptr %.val.i.i.i.i271, null
  br i1 %i.ic, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i.i273, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i271)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i272 unwind label %.body274, !noalias !6153

.body274:                                         ; preds = %bb.ai
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i271, i64 noundef 32, i64 noundef 8) #47, !noalias !6153
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i270, i64 noundef 32, i64 noundef 8) #47, !noalias !6151
  store ptr %i.hv, ptr %i.hz, align 8
  br label %.critedge197

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i272: ; preds = %bb.ai
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i271, i64 noundef 32, i64 noundef 8) #47, !noalias !6153
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i.i273

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i.i273: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i272, %bb.ah
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i270, i64 noundef 32, i64 noundef 8) #47, !noalias !6151
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i.i273
  store ptr %i.hv, ptr %i.hz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 134
  %i.if = load i16, ptr %i.ie, align 2, !noundef !5
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ih = load i16, ptr %i.ig, align 8, !noundef !5
  %i.ii = zext i16 %i.ih to i32
  %i.ij = zext i16 %i.if to i32
  store i32 1, ptr %i.af, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 %i.ij, ptr %i.ik, align 4
  %i.il = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 1, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 %i.ii, ptr %i.im, align 4
  %i.in = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.in, i8 0, i64 16, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6154
  %i.io = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 137) 32, i64 noundef range(i64 1, 9) 8) #47, !noalias !6154 ; 4 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %bb.ak, label %bb.an, !prof !6

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #44
          to label %.noexc277 unwind label %bb.al

.noexc277:                                        ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.iq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.af) #45
          to label %.critedge197 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ir = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.an:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.io, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.is = getelementptr inbounds nuw i8, ptr %i.aj, i64 728 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6155)
  %.val.i279 = load ptr, ptr %i.is, align 8, !alias.scope !6155, !align !23, !noundef !5 ; 4 uses
  %i.it = icmp eq ptr %.val.i279, null
  br i1 %i.it, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1E_.exit285, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !6156)
  %i.iu = getelementptr inbounds nuw i8, ptr %.val.i279, i64 16
  %.val.i.i.i.i280 = load ptr, ptr %i.iu, align 8, !alias.scope !6156, !noalias !6155, !align !23, !noundef !5 ; 4 uses
  %i.iv = icmp eq ptr %.val.i.i.i.i280, null
  br i1 %i.iv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i.i282, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i280)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i281 unwind label %.body283, !noalias !6157

.body283:                                         ; preds = %bb.ap
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i280, i64 noundef 32, i64 noundef 8) #47, !noalias !6157
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i279, i64 noundef 32, i64 noundef 8) #47, !noalias !6155
  store ptr %i.io, ptr %i.is, align 8
  br label %.critedge197

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i281: ; preds = %bb.ap
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i280, i64 noundef 32, i64 noundef 8) #47, !noalias !6157
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i.i282

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i.i282: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i281, %bb.ao
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i279, i64 noundef 32, i64 noundef 8) #47, !noalias !6155
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1E_.exit285

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1E_.exit285: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1i_.exit.i.i282, %bb.an
  store ptr %i.io, ptr %i.is, align 8
  %i.ix = invoke { ptr, i64 } @_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB4_2PE15get_dir_entries(ptr noundef nonnull align 8 %1)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg2CeFYmfPbl_8protobuf13message_field12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7VersionEEB1E_.exit285
  %i.iy = getelementptr inbounds nuw i8, ptr %i.aj, i64 272
  %i.iz = extractvalue { ptr, i64 } %i.ix, 0      ; 3 uses
  %2 = extractvalue { ptr, i64 } %i.ix, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.iz) ]
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %2
  invoke void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8DirEntryE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB20_5slice4iter4IterNtNtNtBM_2pe6parser8DirEntryENvYBG_INtNtB20_7convert4FromRB36_E4fromEEBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iy, ptr noundef nonnull %i.iz, ptr noundef nonnull %i.ja)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val249 = load ptr, ptr %i.jb, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val250 = load i64, ptr %i.jc, align 8, !noundef !5
  %i.jd = getelementptr inbounds nuw i8, ptr %i.aj, i64 248
  %i.je = getelementptr inbounds nuw [64 x i8], ptr %.val249, i64 %.val250
  invoke void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7SectionE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1Z_5slice4iter4IterNtNtNtBM_2pe6parser7SectionENvYBG_INtNtB1Z_7convert4FromRB35_E4fromEEBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jd, ptr noundef nonnull %.val249, ptr noundef nonnull %i.je)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  %i.jf = invoke { ptr, i64 } @_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB4_2PE13get_resources(ptr noundef nonnull align 8 %1)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.jg = getelementptr inbounds nuw i8, ptr %i.aj, i64 296
  %i.jh = extractvalue { ptr, i64 } %i.jf, 0      ; 3 uses
  %3 = extractvalue { ptr, i64 } %i.jf, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jh) ]
  %i.ji = getelementptr inbounds nuw [88 x i8], ptr %i.jh, i64 %3
  invoke void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8ResourceE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB20_5slice4iter4IterNtNtNtBM_2pe6parser8ResourceENvYBG_INtNtB20_7convert4FromRB36_E4fromEEBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jg, ptr noundef nonnull %i.jh, ptr noundef nonnull %i.ji)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.at
  %i.jj = invoke { ptr, i64 } @_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB4_2PE14get_signatures(ptr noundef nonnull align 8 %1)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.av:                                            ; preds = %bb.au
  %i.jk = getelementptr inbounds nuw i8, ptr %i.aj, i64 392
  %i.jl = extractvalue { ptr, i64 } %i.jj, 0      ; 3 uses
  %4 = extractvalue { ptr, i64 } %i.jj, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jl) ]
  %i.jm = getelementptr inbounds nuw [600 x i8], ptr %i.jl, i64 %4
  invoke void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SignatureE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB21_5slice4iter4IterNtNtNtBM_5utils12authenticode21AuthenticodeSignatureENvYBG_INtNtB21_7convert4FromRB37_E4fromEEBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jk, ptr noundef nonnull %i.jl, ptr noundef nonnull %i.jm)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.av
  %i.jn = getelementptr inbounds nuw i8, ptr %i.aj, i64 400
  %i.jo = load ptr, ptr %i.jn, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.aj, i64 408 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !noundef !5 ; 2 uses
  %.idx1142 = mul nuw nsw i64 %i.jq, 376
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 %.idx1142
  %.not.not.not.i.not.not.not1135.not = icmp eq i64 %i.jq, 0
  br i1 %.not.not.not.i.not.not.not1135.not, label %._crit_edge1139, label %.lr.ph1138

bb.ax:                                            ; preds = %.lr.ph1138
  %i.js = getelementptr inbounds nuw i8, ptr %i.jt, i64 376 ; 2 uses
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.js, %i.jr
  br i1 %.not.not.not.i.not.not.not.not, label %._crit_edge1139, label %.lr.ph1138

.lr.ph1138:                                       ; preds = %bb.aw, %bb.ax
  %i.jt = phi ptr [ %i.js, %bb.ax ], [ %i.jo, %bb.aw ] ; 2 uses
  %i.ju = getelementptr i8, ptr %i.jt, i64 368
  %.val.i286 = load i8, ptr %i.ju, align 8, !range !34, !noalias !6158, !noundef !5
  %.sroa.0.0.i.i = trunc i8 %.val.i286 to i1
  br i1 %.sroa.0.0.i.i, label %._crit_edge1139, label %bb.ax

._crit_edge1139:                                  ; preds = %.lr.ph1138, %bb.ax, %bb.aw
  %.not.not.not.i.not.not.not.lcssa = phi i8 [ 0, %bb.aw ], [ 1, %.lr.ph1138 ], [ 0, %bb.ax ]
  %i.jv = getelementptr inbounds nuw i8, ptr %i.aj, i64 793
  store i8 %.not.not.not.i.not.not.not.lcssa, ptr %i.jv, align 1, !alias.scope !6159
  %i.jw = invoke { ptr, ptr } @_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB4_2PE11get_imports(ptr noundef nonnull align 8 %1)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ay:                                            ; preds = %._crit_edge1139
  %i.jx = extractvalue { ptr, ptr } %i.jw, 0      ; 3 uses
  %.not171 = icmp eq ptr %i.jx, null
  br i1 %.not171, label %.loopexit545, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jy = extractvalue { ptr, ptr } %i.jw, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jy) ]
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %.loopexit545, label %.lr.ph

.lr.ph:                                           ; preds = %bb.az
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 8 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 7 uses
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.sroa.593.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 2 uses
  %.sroa.696.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.aj, i64 320 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.aj, i64 336 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.aj, i64 328
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph, %bb.bt
  %.sroa.010.0729 = phi i64 [ 0, %.lr.ph ], [ %i.lq, %bb.bt ]
  %.sroa.0407.0728 = phi ptr [ %i.jx, %.lr.ph ], [ %i.kj, %bb.bt ] ; 5 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0407.0728, i64 40 ; 2 uses
  %i.kk = load ptr, ptr %.sroa.0407.0728, align 8, !alias.scope !6160, !nonnull !5, !noundef !5
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0407.0728, i64 8
  %i.km = load i64, ptr %i.kl, align 8, !alias.scope !6160, !noundef !5 ; 6 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0407.0728, i64 24
  %i.ko = load ptr, ptr %i.kn, align 8, !alias.scope !6160, !nonnull !5, !noundef !5 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0407.0728, i64 32
  %i.kq = load i64, ptr %i.kp, align 8, !alias.scope !6160, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 -1, ptr %i.ka, align 8, !alias.scope !6161
  store i64 0, ptr %i.ae, align 8, !alias.scope !6161
  store i64 0, ptr %i.kb, align 8, !alias.scope !6161
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !6161
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !6161
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kc, i8 0, i64 16, i1 false), !alias.scope !6161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %i.km, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bb unwind label %.thread484.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread484.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ba, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit, %bb.bc
  %lpad.loopexit.split-lp1253 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.bb:                                            ; preds = %bb.ba
  %i.kr = load i64, ptr %i.l, align 8, !range !9, !noundef !5
  %i.ks = trunc nuw i64 %i.kr to i1
  %i.kt = load i64, ptr %i.kd, align 8, !range !10, !noundef !5 ; 4 uses
  br i1 %i.ks, label %bb.bc, label %bb.bd, !prof !6

bb.bc:                                            ; preds = %bb.bb
  %i.ku = load i64, ptr %i.ke, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.kt, i64 %i.ku) #44
          to label %bb.bu unwind label %.thread484.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bb
  %i.kv = load ptr, ptr %i.ke, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.kw = icmp ule i64 %i.km, %i.kt
  call void @llvm.assume(i1 %i.kw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not172 = icmp eq i64 %i.km, 0
  br i1 %.not172, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bi, %bb.bd
  %i.kx = load i64, ptr %i.ka, align 8, !range !15, !alias.scope !6162, !noundef !5
  %i.ky = icmp eq i64 %i.kx, -1
  br i1 %i.ky, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ka)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ka)
          to label %.body287 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.la = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.bf
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ka)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kv, ptr nonnull align 1 %i.kk, i64 %i.km, i1 false)
  br label %bb.be

bb.bj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %.body287

.body287:                                         ; preds = %bb.bg, %bb.bj
  %eh.lpad-body288 = phi { ptr, i32 } [ %i.lb, %bb.bj ], [ %i.kz, %bb.bg ]
  store i64 %i.kt, ptr %i.ka, align 8
  store ptr %i.kv, ptr %.sroa.593.0..sroa_idx94, align 8
  store i64 %i.km, ptr %.sroa.696.0..sroa_idx97, align 8
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.be, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i
  store i64 %i.kt, ptr %i.ka, align 8
  store ptr %i.kv, ptr %.sroa.593.0..sroa_idx94, align 8
  store i64 %i.km, ptr %.sroa.696.0..sroa_idx97, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.lc = getelementptr inbounds nuw [32 x i8], ptr %i.ko, i64 %i.kq
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8FunctionEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2B_5slice4iter4IterNtNtNtB19_2pe6parser12ImportedFuncENvYB13_INtNtB2B_7convert4FromRB3H_E4fromEE9from_iterB1b_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noundef nonnull %i.ko, ptr noundef nonnull %i.lc)
          to label %bb.bk unwind label %.thread484.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8FunctionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kb)
          to label %bb.bm unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ld = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8FunctionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kb)
          to label %.body291 unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8FunctionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kb)
          to label %bb.bp unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.le = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %.body291

.body291:                                         ; preds = %bb.bl, %bb.bo
  %eh.lpad-body292 = phi { ptr, i32 } [ %i.lf, %bb.bo ], [ %i.ld, %bb.bl ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kb, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  br label %.thread

bb.bp:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kb, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i64 1, ptr %i.ae, align 8, !alias.scope !6163
  store i64 %i.kq, ptr %i.kf, align 8, !alias.scope !6163
  %i.lg = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noundef !5 ; 2 uses
  %i.lh = icmp ult i64 %i.lg, 164703072086692426
  call void @llvm.assume(i1 %i.lh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ac, ptr noundef nonnull align 8 dereferenceable(80) %i.ae, i64 80, i1 false)
  %i.li = load i64, ptr %i.kh, align 8, !alias.scope !6164, !noundef !5 ; 3 uses
  %i.lj = load i64, ptr %i.kg, align 8, !range !19, !alias.scope !6164, !noundef !5
  %i.lk = icmp eq i64 %i.li, %i.lj
  br i1 %i.lk, label %bb.bq, label %bb.bt
end_hunk_6
