Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.05?download=true
inline.NumInlined: 3898
inline.NumDeleted: 2041
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2_5MachO5parse
define void @_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2_5MachO5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [56 x i8], align 8                ; 13 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.052.i = alloca [48 x i8], align 8        ; 5 uses
  %i.o = alloca [608 x i8], align 8               ; 4 uses
  %i.p = alloca [608 x i8], align 8               ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [9 x i8], align 8                 ; 10 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [608 x i8], align 8               ; 7 uses
  %.sroa.620 = alloca [32 x i8], align 8          ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %1, ptr %i.u, align 8, !noalias !5300
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %2, ptr %i.x, align 8, !noalias !5300
  %i.y = icmp samesign ult i64 %2, 4
  br i1 %i.y, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %1, ptr %i.t, align 8
  %.sroa.02.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.z, ptr %.sroa.02.sroa.2.0..sroa_idx.i, align 8
  %.sroa.02.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.b, %bb.c
  %.sroa.0.08.i = phi i32 [ %i.am, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.aa = phi i64 [ %.pr.i, %bb.c ], [ 4, %bb.b ]
  %i.ab = add i64 %i.aa, -1
  store i64 %i.ab, ptr %.sroa.02.sroa.3.0..sroa_idx.i, align 8, !alias.scope !5301, !noalias !5302
  %i.ac = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t), !noalias !5302 ; 2 uses
  %i.ad = extractvalue { i1, i8 } %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.ae = extractvalue { i1, i8 } %i.ac, 1
  %i.af = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !5303, !noalias !5302, !noundef !5 ; 2 uses
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !5303, !noalias !5302
  %i.ah = zext i8 %i.ae to i32
  %i.ai = trunc i64 %i.af to i32
  %i.aj = shl i32 %i.ai, 3
  %i.ak = and i32 %i.aj, 24
  %i.al = shl nuw i32 %i.ah, %i.ak
  %i.am = add i32 %i.al, %.sroa.0.08.i            ; 2 uses
  %.pr.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i, align 8, !alias.scope !5301, !noalias !5302 ; 2 uses
  %i.an = icmp eq i64 %.pr.i, 0
  br i1 %i.an, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ao, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.541.0..sroa_idx, align 8
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 24, ptr %.sroa.642.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB4_5MachO20parse_fat_macho_file.exit

bb.e:                                             ; preds = %bb.c, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i
  %.sroa.0.0.lcssa.i = phi i32 [ %i.am, %bb.c ], [ %.sroa.0.08.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ap = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u, i64 noundef 4), !noalias !5304 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  switch i32 %.sroa.0.0.lcssa.i, label %bb.f [
    i32 -889275714, label %bb.h
    i32 -1095041334, label %bb.h
    i32 -889275713, label %bb.h
    i32 -1078264118, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 0, ptr %i.w, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %i.ar, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.as = call noundef align 8 dereferenceable_or_null(608) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 608, i64 noundef 8) #29 ; 7 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.g, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 608) #31
          to label %.noexc unwind label %bb.bm

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !5305)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5306
  store ptr %1, ptr %i.n, align 8, !noalias !5307
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %2, ptr %i.au, align 8, !noalias !5307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5306
  store ptr %1, ptr %i.m, align 8, !noalias !5306
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.z, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5306
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.sroa.0.210.i.i.i.i.i.i = phi i32 [ 0, %bb.h ], [ %i.bc, %bb.j ] ; 2 uses
  %i.av = phi i64 [ 4, %bb.h ], [ %.pr6.i.i.i.i.i.i, %bb.j ]
  %i.aw = add i64 %i.av, -1
  store i64 %i.aw, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5306
  %i.ax = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m), !noalias !5308 ; 2 uses
  %i.ay = extractvalue { i1, i8 } %i.ax, 0
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.az = extractvalue { i1, i8 } %i.ax, 1
  %i.ba = shl i32 %.sroa.0.210.i.i.i.i.i.i, 8
  %i.bb = zext i8 %i.az to i32
  %i.bc = or disjoint i32 %i.ba, %i.bb            ; 2 uses
  %.pr6.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5306 ; 2 uses
  %i.bd = icmp eq i64 %.pr6.i.i.i.i.i.i, 0
  br i1 %i.bd, label %bb.k, label %bb.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.2.lcssa.i.i.i.i.i.i = phi i32 [ %i.bc, %bb.j ], [ %.sroa.0.210.i.i.i.i.i.i, %bb.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5306
  %i.be = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, i64 noundef 4), !noalias !5309 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5306
  switch i32 %.sroa.0.2.lcssa.i.i.i.i.i.i, label %bb.l [
    i32 -889275714, label %bb.m
    i32 -1095041334, label %bb.m
    i32 -889275713, label %bb.m
    i32 -1078264118, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.bf, align 8, !alias.scope !5305, !noalias !5310
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %.sroa.470.0..sroa_idx.i, align 8, !alias.scope !5305, !noalias !5310
  %.sroa.571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.571.0..sroa_idx.i, align 8, !alias.scope !5305, !noalias !5310
  %.sroa.672.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 45, ptr %.sroa.672.0..sroa_idx.i, align 8, !alias.scope !5305, !noalias !5310
  store i64 -1, ptr %0, align 8, !alias.scope !5305, !noalias !5310
  br label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB4_5MachO20parse_fat_macho_file.exit

bb.m:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  %i.bg = extractvalue { ptr, i64 } %i.be, 1
  %i.bh = extractvalue { ptr, i64 } %i.be, 0
  switch i32 %.sroa.0.2.lcssa.i.i.i.i.i.i, label %bb.n [
    i32 -889275714, label %bb.p
    i32 -889275713, label %bb.p
    i32 -1095041334, label %bb.o
    i32 -1078264118, label %bb.o
  ], !prof !31

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @506) #26, !noalias !5305
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.m
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.m
  %.sroa.012.0.i = phi i8 [ 1, %bb.o ], [ 0, %bb.m ], [ 0, %bb.m ] ; 3 uses
  switch i32 %.sroa.0.2.lcssa.i.i.i.i.i.i, label %bb.q [
    i32 -889275714, label %bb.s
    i32 -1095041334, label %bb.s
    i32 -889275713, label %bb.r
    i32 -1078264118, label %bb.r
  ], !prof !31

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @505) #26, !noalias !5305
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5311
  %i.bi = zext nneg i8 %.sroa.012.0.i to i64      ; 3 uses
  %i.bj = shl nuw nsw i64 %i.bi, 56
  %3 = mul nuw nsw i64 %i.bi, 282574488338432
  br label %bb.t

bb.s:                                             ; preds = %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5311
  %i.bk = zext nneg i8 %.sroa.012.0.i to i64      ; 2 uses
  %4 = mul nuw nsw i64 %i.bk, 282574488338432
  %5 = or disjoint i64 %4, 65536
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.sink251.i = phi i64 [ %5, %bb.s ], [ %3, %bb.r ] ; 2 uses
  %.sink249.i = phi i64 [ -72057594037927936, %bb.s ], [ %i.bj, %bb.r ] ; 2 uses
  %.sroa.019.0117209.i = phi i64 [ 1, %bb.s ], [ 0, %bb.r ]
  %i.bl = phi i64 [ %i.bk, %bb.s ], [ %i.bi, %bb.r ] ; 3 uses
  %6 = mul nuw nsw i64 %i.bl, 4311744512
  %.sroa.437.0.insert.shift.i = shl nuw nsw i64 %i.bl, 8
  %i.bm = or disjoint i64 %.sink251.i, %6
  %i.bn = or i64 %i.bm, %.sink249.i
  %i.bo = or disjoint i64 %.sroa.437.0.insert.shift.i, %.sroa.019.0117209.i
  %.sroa.036.0.insert.insert.i = add nuw nsw i64 %i.bo, %i.bn ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store i8 %.sroa.012.0.i, ptr %i.bp, align 8, !noalias !5311
  store i64 %.sroa.036.0.insert.insert.i, ptr %i.r, align 8, !noalias !5311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5312
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly dereferenceable(1) %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef range(i64 0, -9223372036854775808) %i.bg), !noalias !5313
  %i.bq = load i64, ptr %i.l, align 8, !range !12, !noalias !5312, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bq, -1
  %i.br = trunc i64 %.sroa.036.0.insert.insert.i to i8
  %7 = lshr i64 %.sroa.036.0.insert.insert.i, 8
  %i.bs = trunc i64 %7 to i8
  %i.bt = lshr i64 %.sink251.i, 16
  %8 = trunc i64 %i.bt to i8
  %i.bu = trunc nuw nsw i64 %i.bl to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !5314 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  br i1 %.not.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.1296.8.copyload.i = load i64, ptr %i.bv, align 8, !noalias !5314
  %.sroa.20.8.copyload.i = load i64, ptr %i.by, align 8, !noalias !5314
  br label %bb.ay

bb.v:                                             ; preds = %bb.t
  %i.bz = load ptr, ptr %i.bv, align 8, !noalias !5312, !nonnull !5, !noundef !5 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 8, !noalias !5312, !noundef !5 ; 2 uses
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5312
  call void @llvm.experimental.noalias.scope.decl(metadata !5315)
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cb, i64 16384) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5316
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %..i.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !5317
  %i.cc = load i64, ptr %i.b, align 8, !range !11, !noalias !5316, !noundef !5
  %i.cd = trunc nuw i64 %i.cc to i1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !range !18, !noalias !5316, !noundef !5 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.cd, label %bb.w, label %_RNCINvXsc_NtCsgkljs906P5b_3nom5multiINtB8_11LengthCountNCINvNtNtBa_6number8complete3u32RShINtNtBa_5error5ErrorB1n_EE0INtNtBa_8internal3MapTBR_BR_NCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0B2j_BR_INtNtBa_10combinator4CondBR_EENCNvMs_B2n_NtB2n_5MachO20parse_fat_macho_files_0EB1q_EINtB1U_6ParserB1n_E7processINtB1U_7OutputMNtB1U_4EmitB5o_NtB1U_9StreamingEE0B2t_.exit.i.i, !prof !6

bb.w:                                             ; preds = %bb.v
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !5316
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.ch) #31, !noalias !5317
  unreachable

_RNCINvXsc_NtCsgkljs906P5b_3nom5multiINtB8_11LengthCountNCINvNtNtBa_6number8complete3u32RShINtNtBa_5error5ErrorB1n_EE0INtNtBa_8internal3MapTBR_BR_NCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0B2j_BR_INtNtBa_10combinator4CondBR_EENCNvMs_B2n_NtB2n_5MachO20parse_fat_macho_files_0EB1q_EINtB1U_6ParserB1n_E7processINtB1U_7OutputMNtB1U_4EmitB5o_NtB1U_9StreamingEE0B2t_.exit.i.i: ; preds = %bb.v
  %i.ci = load ptr, ptr %i.cg, align 8, !noalias !5316, !nonnull !5, !noundef !5 ; 2 uses
  %i.cj = icmp ule i64 %..i.i.i.i, %i.cf
  call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5316
  store i64 %i.cf, ptr %i.k, align 8, !alias.scope !5315, !noalias !5312
  %i.ck = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.ci, ptr %i.ck, align 8, !alias.scope !5315, !noalias !5312
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 0, ptr %i.cl, align 8, !alias.scope !5315, !noalias !5312
  %.not213.i.i = icmp eq i32 %i.ca, 0
  %i.cm = ptrtoint ptr %i.ci to i64
  br i1 %.not213.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCINvXsc_NtCsgkljs906P5b_3nom5multiINtB8_11LengthCountNCINvNtNtBa_6number8complete3u32RShINtNtBa_5error5ErrorB1n_EE0INtNtBa_8internal3MapTBR_BR_NCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0B2j_BR_INtNtBa_10combinator4CondBR_EENCNvMs_B2n_NtB2n_5MachO20parse_fat_macho_files_0EB1q_EINtB1U_6ParserB1n_E7processINtB1U_7OutputMNtB1U_4EmitB5o_NtB1U_9StreamingEE0B2t_.exit.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.cp = getelementptr inbounds nuw i8, ptr %i.r, i64 7
  %i.cq = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4108.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5109.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4127.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5128.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4146.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5147.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4161.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5162.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4176.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5177.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.not.i.not.i.i = icmp eq i64 %.sink249.i, -72057594037927936
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %.sroa.490.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.591.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.692.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.y

bb.x:                                             ; preds = %bb.aj, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.y:                                             ; preds = %bb.ap, %.lr.ph.i.i
  %.sroa.012.0211.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.db, %bb.ap ]
  %.sroa.039.0210.i.i = phi ptr [ %i.bz, %.lr.ph.i.i ], [ %.sroa.7102.1135.i.i, %bb.ap ]
  %.sroa.6.0209.i.i = phi i64 [ %i.bx, %.lr.ph.i.i ], [ %.sroa.11.1134.i.i, %bb.ap ]
  %i.db = add nuw nsw i64 %.sroa.012.0211.i.i, 1  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5318
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly dereferenceable(1) %i.cn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.039.0210.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.6.0209.i.i)
          to label %.noexc.i.i unwind label %bb.x, !noalias !5313

.noexc.i.i:                                       ; preds = %bb.y
  %i.dc = load i64, ptr %i.g, align 8, !range !12, !noalias !5318, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.dc, -1
  %.sroa.0107.0.copyload.i.i.i.i = load ptr, ptr %i.cr, align 8, !noalias !5318 ; 2 uses
  %.sroa.4108.0.copyload.i.i.i.i = load i64, ptr %.sroa.4108.0..sroa_idx.i.i.i.i, align 8, !noalias !5318 ; 2 uses
  %.sroa.5109.0.copyload.i.i.i.i = load i32, ptr %.sroa.5109.0..sroa_idx.i.i.i.i, align 8, !noalias !5318 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.noexc.i.i
  %.sroa.7120.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %.sroa.7120.0.copyload.i.i.i.i = load i32, ptr %.sroa.7120.0..sroa_idx.i.i.i.i, align 4, !noalias !5318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5318
  br label %bb.al

bb.aa:                                            ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5318
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly dereferenceable(1) %i.cq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0107.0.copyload.i.i.i.i, i64 noundef %.sroa.4108.0.copyload.i.i.i.i)
          to label %.noexc16.i.i unwind label %bb.x, !noalias !5313

.noexc16.i.i:                                     ; preds = %bb.aa
  %i.dd = load i64, ptr %i.f, align 8, !range !12, !noalias !5318, !noundef !5 ; 2 uses
  %.not213.i.i.i.i = icmp eq i64 %i.dd, -1
  %.sroa.0126.0.copyload.i.i.i.i = load ptr, ptr %i.cs, align 8, !noalias !5318 ; 2 uses
  %.sroa.4127.0.copyload.i.i.i.i = load i64, ptr %.sroa.4127.0..sroa_idx.i.i.i.i, align 8, !noalias !5318 ; 2 uses
  %.sroa.5128.0.copyload.i.i.i.i = load i32, ptr %.sroa.5128.0..sroa_idx.i.i.i.i, align 8, !noalias !5318 ; 2 uses
  br i1 %.not213.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.noexc16.i.i
  %.sroa.7139.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %.sroa.7139.0.copyload.i.i.i.i = load i32, ptr %.sroa.7139.0..sroa_idx.i.i.i.i, align 4, !noalias !5318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5318
  br label %bb.al

bb.ac:                                            ; preds = %.noexc16.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5318
  invoke fastcc void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB28_NtB6_9StreamingEEBJ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.e, i8 %i.br, i8 %i.bs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0126.0.copyload.i.i.i.i, i64 noundef %.sroa.4127.0.copyload.i.i.i.i)
          to label %.noexc17.i.i unwind label %bb.x, !noalias !5319

.noexc17.i.i:                                     ; preds = %bb.ac
  %i.de = load i64, ptr %i.e, align 8, !range !12, !noalias !5318, !noundef !5 ; 2 uses
  %.not214.i.i.i.i = icmp eq i64 %i.de, -1
  %.sroa.0145.0.copyload.i.i.i.i = load ptr, ptr %i.ct, align 8, !noalias !5318 ; 2 uses
  %.sroa.4146.0.copyload.i.i.i.i = load i64, ptr %.sroa.4146.0..sroa_idx.i.i.i.i, align 8, !noalias !5318 ; 2 uses
  %.sroa.5147.0.copyload.i.i.i.i = load i64, ptr %.sroa.5147.0..sroa_idx.i.i.i.i, align 8, !noalias !5318 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5318
  br i1 %.not214.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.noexc17.i.i
  %.sroa.27.sroa.0.0.extract.trunc61.i.i = trunc i64 %.sroa.5147.0.copyload.i.i.i.i to i32
  %.sroa.27.sroa.11.0.extract.shift67.i.i = lshr i64 %.sroa.5147.0.copyload.i.i.i.i, 32
  %.sroa.27.sroa.11.0.extract.trunc68.i.i = trunc nuw i64 %.sroa.27.sroa.11.0.extract.shift67.i.i to i32
  br label %bb.al

bb.ae:                                            ; preds = %.noexc17.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5318
  invoke fastcc void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB28_NtB6_9StreamingEEBJ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d, i8 %8, i8 %i.bu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0145.0.copyload.i.i.i.i, i64 noundef %.sroa.4146.0.copyload.i.i.i.i)
          to label %.noexc18.i.i unwind label %bb.x, !noalias !5319

.noexc18.i.i:                                     ; preds = %bb.ae
  %i.df = load i64, ptr %i.d, align 8, !range !12, !noalias !5318, !noundef !5 ; 2 uses
  %.not215.i.i.i.i = icmp eq i64 %i.df, -1
  %.sroa.0160.0.copyload.i.i.i.i = load ptr, ptr %i.cu, align 8, !noalias !5318 ; 2 uses
  %.sroa.4161.0.copyload.i.i.i.i = load i64, ptr %.sroa.4161.0..sroa_idx.i.i.i.i, align 8, !noalias !5318 ; 2 uses
  %.sroa.5162.0.copyload.i.i.i.i = load i64, ptr %.sroa.5162.0..sroa_idx.i.i.i.i, align 8, !noalias !5318 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5318
  br i1 %.not215.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.noexc18.i.i
  %.sroa.27.sroa.0.0.extract.trunc62.i.i = trunc i64 %.sroa.5162.0.copyload.i.i.i.i to i32
  %.sroa.27.sroa.11.0.extract.shift69.i.i = lshr i64 %.sroa.5162.0.copyload.i.i.i.i, 32
  %.sroa.27.sroa.11.0.extract.trunc70.i.i = trunc nuw i64 %.sroa.27.sroa.11.0.extract.shift69.i.i to i32
  br label %bb.al

bb.ag:                                            ; preds = %.noexc18.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5318
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly dereferenceable(1) %i.co, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0160.0.copyload.i.i.i.i, i64 noundef %.sroa.4161.0.copyload.i.i.i.i)
          to label %.noexc19.i.i unwind label %bb.x, !noalias !5313

.noexc19.i.i:                                     ; preds = %bb.ag
  %i.dg = load i64, ptr %i.c, align 8, !range !12, !noalias !5318, !noundef !5 ; 2 uses
  %.not216.i.i.i.i = icmp eq i64 %i.dg, -1
  %.sroa.0175.0.copyload.i.i.i.i = load ptr, ptr %i.cv, align 8, !noalias !5318 ; 3 uses
  %.sroa.4176.0.copyload.i.i.i.i = load i64, ptr %.sroa.4176.0..sroa_idx.i.i.i.i, align 8, !noalias !5318 ; 3 uses
  %.sroa.5177.0.copyload.i.i.i.i = load i32, ptr %.sroa.5177.0..sroa_idx.i.i.i.i, align 8, !noalias !5318 ; 2 uses
  br i1 %.not216.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.noexc19.i.i
  %.sroa.7188.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.sroa.7188.0.copyload.i.i.i.i = load i32, ptr %.sroa.7188.0..sroa_idx.i.i.i.i, align 4, !noalias !5318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5318
  br label %bb.al

bb.ai:                                            ; preds = %.noexc19.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5318
  br i1 %.not.i.not.i.i, label %.noexc20.thread.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5320
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly dereferenceable(1) %i.cp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0175.0.copyload.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.4176.0.copyload.i.i.i.i)
          to label %.noexc31.i.i unwind label %bb.x, !noalias !5313

.noexc31.i.i:                                     ; preds = %bb.aj
  %i.dh = load i64, ptr %i.a, align 8, !range !12, !noalias !5320, !noundef !5 ; 2 uses
  %.not1.i.i.i = icmp eq i64 %i.dh, -1
  %.sroa.08.0.copyload.i.i.i = load ptr, ptr %i.cw, align 8, !noalias !5321 ; 2 uses
  %.sroa.49.0.copyload.i.i.i = load i64, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !noalias !5321 ; 2 uses
  %.sroa.510.0.copyload.i.i.i = load i32, ptr %.sroa.510.0..sroa_idx.i.i.i, align 8, !noalias !5321 ; 2 uses
  br i1 %.not1.i.i.i, label %.noexc20.thread136.i.i, label %bb.ak

.noexc20.thread136.i.i:                           ; preds = %.noexc31.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5320
  %i.di = zext i32 %.sroa.510.0.copyload.i.i.i to i64
  %i.dj = shl nuw i64 %i.di, 32
  br label %.noexc20.thread.i.i

bb.ak:                                            ; preds = %.noexc31.i.i
  %.sroa.19103.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.19103.0.copyload.i.i = load i32, ptr %.sroa.19103.0..sroa_idx.i.i, align 4, !noalias !5321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5320
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z
  %.sroa.27.sroa.11.0.ph.i.i = phi i32 [ %.sroa.7120.0.copyload.i.i.i.i, %bb.z ], [ %.sroa.7139.0.copyload.i.i.i.i, %bb.ab ], [ %.sroa.27.sroa.11.0.extract.trunc68.i.i, %bb.ad ], [ %.sroa.27.sroa.11.0.extract.trunc70.i.i, %bb.af ], [ %.sroa.7188.0.copyload.i.i.i.i, %bb.ah ], [ %.sroa.19103.0.copyload.i.i, %bb.ak ]
  %.sroa.27.sroa.0.0.ph.i.i = phi i32 [ %.sroa.5109.0.copyload.i.i.i.i, %bb.z ], [ %.sroa.5128.0.copyload.i.i.i.i, %bb.ab ], [ %.sroa.27.sroa.0.0.extract.trunc61.i.i, %bb.ad ], [ %.sroa.27.sroa.0.0.extract.trunc62.i.i, %bb.af ], [ %.sroa.5177.0.copyload.i.i.i.i, %bb.ah ], [ %.sroa.510.0.copyload.i.i.i, %bb.ak ]
  %.sroa.19.0.ph.i.i = phi i64 [ %.sroa.4108.0.copyload.i.i.i.i, %bb.z ], [ %.sroa.4127.0.copyload.i.i.i.i, %bb.ab ], [ %.sroa.4146.0.copyload.i.i.i.i, %bb.ad ], [ %.sroa.4161.0.copyload.i.i.i.i, %bb.af ], [ %.sroa.4176.0.copyload.i.i.i.i, %bb.ah ], [ %.sroa.49.0.copyload.i.i.i, %bb.ak ] ; 2 uses
  %.sroa.1149.0.ph.in.i.i = phi ptr [ %.sroa.0107.0.copyload.i.i.i.i, %bb.z ], [ %.sroa.0126.0.copyload.i.i.i.i, %bb.ab ], [ %.sroa.0145.0.copyload.i.i.i.i, %bb.ad ], [ %.sroa.0160.0.copyload.i.i.i.i, %bb.af ], [ %.sroa.0175.0.copyload.i.i.i.i, %bb.ah ], [ %.sroa.08.0.copyload.i.i.i, %bb.ak ]
  %.sroa.048.0.ph.i.i = phi i64 [ %i.dc, %bb.z ], [ %i.dd, %bb.ab ], [ %i.de, %bb.ad ], [ %i.df, %bb.af ], [ %i.dg, %bb.ah ], [ %i.dh, %bb.ak ] ; 2 uses
  %.sroa.1149.0.ph.i.i = ptrtoint ptr %.sroa.1149.0.ph.in.i.i to i64 ; 2 uses
  %.sroa.27.sroa.11.0.insert.ext.i.i = zext i32 %.sroa.27.sroa.11.0.ph.i.i to i64
  %.sroa.27.sroa.11.0.insert.shift.i.i = shl nuw i64 %.sroa.27.sroa.11.0.insert.ext.i.i, 32
  %.sroa.27.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.27.sroa.0.0.ph.i.i to i64
  %.sroa.27.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.27.sroa.11.0.insert.shift.i.i, %.sroa.27.sroa.0.0.insert.ext.i.i ; 2 uses
  %i.dk = icmp eq i64 %.sroa.048.0.ph.i.i, 1
  br i1 %i.dk, label %bb.aq, label %bb.at

.noexc20.thread.i.i:                              ; preds = %.noexc20.thread136.i.i, %bb.ai
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.dj, %.noexc20.thread136.i.i ], [ 0, %bb.ai ]
  %.sroa.7102.1135.i.i = phi ptr [ %.sroa.08.0.copyload.i.i.i, %.noexc20.thread136.i.i ], [ %.sroa.0175.0.copyload.i.i.i.i, %bb.ai ]
  %.sroa.11.1134.i.i = phi i64 [ %.sroa.49.0.copyload.i.i.i, %.noexc20.thread136.i.i ], [ %.sroa.4176.0.copyload.i.i.i.i, %bb.ai ]
  %.sroa.6100.16.insert.ext.i.i = zext i32 %.sroa.5109.0.copyload.i.i.i.i to i64
  %.sroa.6100.20.insert.ext.i.i = zext i32 %.sroa.5128.0.copyload.i.i.i.i to i64
  %.sroa.6100.20.insert.shift.i.i = shl nuw i64 %.sroa.6100.20.insert.ext.i.i, 32
  %.sroa.6100.20.insert.insert.i.i = or disjoint i64 %.sroa.6100.20.insert.shift.i.i, %.sroa.6100.16.insert.ext.i.i
  %.sroa.9.24.insert.ext.i.i = zext i32 %.sroa.5177.0.copyload.i.i.i.i to i64
  %.sroa.9.28.insert.insert.i.i = or disjoint i64 %.sroa.02.0.i.i.i.i, %.sroa.9.24.insert.ext.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !5312
  store i64 %.sroa.5147.0.copyload.i.i.i.i, ptr %i.cx, align 8, !noalias !5323
  store i64 %.sroa.5162.0.copyload.i.i.i.i, ptr %.sroa.490.0..sroa_idx.i.i, align 8, !noalias !5323
  store i64 %.sroa.6100.20.insert.insert.i.i, ptr %.sroa.591.0..sroa_idx.i.i, align 8, !noalias !5323
  store i64 %.sroa.9.28.insert.insert.i.i, ptr %.sroa.692.0..sroa_idx.i.i, align 8, !noalias !5323
  %i.dl = load i64, ptr %i.cy, align 8, !alias.scope !5324, !noalias !5325, !noundef !5 ; 3 uses
  %i.dm = load i64, ptr %i.h, align 8, !range !19, !alias.scope !5324, !noalias !5325, !noundef !5
  %i.dn = icmp eq i64 %i.dl, %i.dm
  br i1 %i.dn, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %.noexc20.thread.i.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser7FatArchE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #30
          to label %bb.ap unwind label %bb.an, !noalias !5326

bb.an:                                            ; preds = %bb.am
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser7FatArchEEB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #28
          to label %common.resume unwind label %bb.ao, !noalias !5326

bb.ao:                                            ; preds = %bb.an
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !5326
  unreachable

bb.ap:                                            ; preds = %bb.am, %.noexc20.thread.i.i
  %i.dq = load ptr, ptr %i.cz, align 8, !alias.scope !5324, !noalias !5325, !nonnull !5, !noundef !5
  %i.dr = getelementptr inbounds nuw [32 x i8], ptr %i.dq, i64 %i.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dr, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.cx, i64 32, i1 false), !noalias !5327
  %i.ds = add i64 %i.dl, 1
  store i64 %i.ds, ptr %i.cy, align 8, !alias.scope !5324, !noalias !5325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !5312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5322
  %exitcond.not.i.i = icmp eq i64 %i.db, %i.cb
  br i1 %exitcond.not.i.i, label %.loopexit.loopexit.i, label %bb.y

bb.aq:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5328
  store i64 %.sroa.1149.0.ph.i.i, ptr %i.i, align 8, !noalias !5329
  %.sroa.487.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.19.0.ph.i.i, ptr %.sroa.487.0..sroa_idx.i.i, align 8, !noalias !5329
  %.sroa.588.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.27.sroa.0.0.insert.insert.i.i, ptr %.sroa.588.0..sroa_idx.i.i, align 8, !noalias !5329
  invoke void @_RNvXs_NtCsgkljs906P5b_3nom5errorINtB4_5ErrorRShEINtB4_10ParseErrorBG_E6appendCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bz, i64 noundef %i.bx, i8 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i)
          to label %bb.as unwind label %bb.ar, !noalias !5319

bb.ar:                                            ; preds = %bb.aq
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5328
  %.sroa.1296.16.copyload.i = load i64, ptr %i.j, align 8, !noalias !5314
  %.sroa.16.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.16.16.copyload.i = load i64, ptr %.sroa.16.16..sroa_idx.i, align 8, !noalias !5314
  %.sroa.20.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.20.16.copyload.i = load i64, ptr %.sroa.20.16..sroa_idx.i, align 8, !noalias !5314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5312
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.al
  %.sroa.20.0.i = phi i64 [ %.sroa.20.16.copyload.i, %bb.as ], [ %.sroa.27.sroa.0.0.insert.insert.i.i, %bb.al ]
  %.sroa.16.0.i = phi i64 [ %.sroa.16.16.copyload.i, %bb.as ], [ %.sroa.19.0.ph.i.i, %bb.al ]
  %.sroa.1296.0.i = phi i64 [ %.sroa.1296.16.copyload.i, %bb.as ], [ %.sroa.1149.0.ph.i.i, %bb.al ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser7FatArchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser7FatArchEEB1g_.exit.i.i unwind label %bb.au, !noalias !5319

bb.au:                                            ; preds = %bb.at
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser7FatArchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.av, !noalias !5319

bb.av:                                            ; preds = %bb.au
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !5319
  unreachable

common.resume:                                    ; preds = %bb.bl, %bb.br, %bb.an, %bb.au, %bb.aw, %bb.bk
  %common.resume.op = phi { ptr, i32 } [ %i.fe, %bb.br ], [ %eh.lpad-body.i, %bb.bk ], [ %i.do, %bb.an ], [ %i.du, %bb.au ], [ %.pn.ph.i.i, %bb.aw ], [ %.pn, %bb.bl ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser7FatArchEEB1g_.exit.i.i: ; preds = %bb.at
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser7FatArchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k), !noalias !5319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5312
  br label %bb.ay

bb.aw:                                            ; preds = %bb.ar, %bb.x
  %.pn.ph.i.i = phi { ptr, i32 } [ %i.da, %bb.x ], [ %i.dt, %bb.ar ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser7FatArchEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #28
          to label %common.resume unwind label %bb.ax, !noalias !5319

bb.ax:                                            ; preds = %bb.aw
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !5319
  unreachable

bb.ay:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser7FatArchEEB1g_.exit.i.i, %bb.u
  %.sroa.20.1.ph.i = phi i64 [ %.sroa.20.8.copyload.i, %bb.u ], [ %.sroa.20.0.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser7FatArchEEB1g_.exit.i.i ]
  %.sroa.16.1.ph.i = phi i64 [ %i.bx, %bb.u ], [ %.sroa.16.0.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser7FatArchEEB1g_.exit.i.i ]
  %.sroa.1296.1.ph.i = phi i64 [ %.sroa.1296.8.copyload.i, %bb.u ], [ %.sroa.1296.0.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser7FatArchEEB1g_.exit.i.i ]
  %.sroa.795.1.ph.i = phi i64 [ %i.bq, %bb.u ], [ %.sroa.048.0.ph.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser7FatArchEEB1g_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5312
  %i.dx = inttoptr i64 %.sroa.795.1.ph.i to ptr
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
