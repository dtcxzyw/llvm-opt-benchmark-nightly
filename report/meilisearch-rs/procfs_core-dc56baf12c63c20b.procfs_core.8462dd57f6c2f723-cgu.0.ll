Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/procfs_core-dc56baf12c63c20b.procfs_core.8462dd57f6c2f723-cgu.0?download=true
inline.NumInlined: 2766
inline.NumDeleted: 776
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN11procfs_core7process7VmFlags8from_str17hca5b6f7627a6b0f9E:bb.a
  br i1 %i.ck, label %bb.c, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = load i16, ptr %0, align 1
  %i.cm = icmp ne i16 %i.cl, 29281
  %i.cn = zext i1 %i.cm to i32
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.c, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = load i16, ptr %0, align 1
  %i.cq = icmp ne i16 %i.cp, 26231
  %i.cr = zext i1 %i.cq to i32
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.c, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ct = load i16, ptr %0, align 1
  %i.cu = icmp ne i16 %i.ct, 25700
  %i.cv = zext i1 %i.cu to i32
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.c, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cx = load i16, ptr %0, align 1
  %i.cy = icmp ne i16 %i.cx, 25715
  %i.cz = zext i1 %i.cy to i32
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.c, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.db = load i16, ptr %0, align 1
  %i.dc = icmp ne i16 %i.db, 28013
  %i.dd = zext i1 %i.dc to i32
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.c, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.df = load i16, ptr %0, align 1
  %i.dg = icmp ne i16 %i.df, 26472
  %i.dh = zext i1 %i.dg to i32
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.c, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dj = load i16, ptr %0, align 1
  %i.dk = icmp ne i16 %i.dj, 26734
  %i.dl = zext i1 %i.dk to i32
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.c, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = load i16, ptr %0, align 1
  %i.do = icmp ne i16 %i.dn, 26477
  %i.dp = zext i1 %i.do to i32
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.c, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dr = load i16, ptr %0, align 1
  %i.ds = icmp ne i16 %i.dr, 28021
  %i.dt = zext i1 %i.ds to i32
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.c, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dv = load i16, ptr %0, align 1
  %i.dw = icmp ne i16 %i.dv, 30581
  %i.dx = zext i1 %i.dw to i32
  %i.dy = icmp eq i32 %i.dx, 0
  %. = select i1 %i.dy, i32 -2147483648, i32 0
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7process7pagemap1_91_$LT$impl$u20$core..fmt..Octal$u20$for$u20$procfs_core..process..pagemap..SwapPageFlags$GT$3fmt17hb51fb65ecfaef4ccE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !4360 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4361
  store i64 %i.b, ptr %i.a, align 8, !noalias !4361
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u64$GT$3fmt17hf8f3888457998b8bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !4362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4361
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7process7pagemap1_92_$LT$impl$u20$core..fmt..Binary$u20$for$u20$procfs_core..process..pagemap..SwapPageFlags$GT$3fmt17hebcee0770de6d26cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !4366 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4367
  store i64 %i.b, ptr %i.a, align 8, !noalias !4367
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u64$GT$3fmt17hfc625514a71e025dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !4368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4367
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7process7pagemap1_93_$LT$impl$u20$core..fmt..Octal$u20$for$u20$procfs_core..process..pagemap..MemoryPageFlags$GT$3fmt17h0829758b2f3b2972E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !4372 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4373
  store i64 %i.b, ptr %i.a, align 8, !noalias !4373
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u64$GT$3fmt17hf8f3888457998b8bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !4374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4373
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7process7pagemap1_94_$LT$impl$u20$core..fmt..Binary$u20$for$u20$procfs_core..process..pagemap..MemoryPageFlags$GT$3fmt17he522d2cf4f18fdadE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !4378 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4379
  store i64 %i.b, ptr %i.a, align 8, !noalias !4379
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u64$GT$3fmt17hfc625514a71e025dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !4380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4379
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7process7pagemap1_94_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$procfs_core..process..pagemap..SwapPageFlags$GT$3fmt17h8e943bffc14dadeaE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !4384 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4385
  store i64 %i.b, ptr %i.a, align 8, !noalias !4385
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u64$GT$3fmt17h7c1093c802362d55E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !4386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4385
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7process7pagemap1_94_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$procfs_core..process..pagemap..SwapPageFlags$GT$3fmt17h116bd5b13ab80cffE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !4390 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4391
  store i64 %i.b, ptr %i.a, align 8, !noalias !4391
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u64$GT$3fmt17h46cb53dc08ca4d34E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !4392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4391
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7process7pagemap1_96_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$procfs_core..process..pagemap..MemoryPageFlags$GT$3fmt17hb2745d223546785aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !4396 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4397
  store i64 %i.b, ptr %i.a, align 8, !noalias !4397
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u64$GT$3fmt17h7c1093c802362d55E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !4398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4397
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7process7pagemap1_96_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$procfs_core..process..pagemap..MemoryPageFlags$GT$3fmt17h07b4923af9c6800fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !4402 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4403
  store i64 %i.b, ptr %i.a, align 8, !noalias !4403
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u64$GT$3fmt17h46cb53dc08ca4d34E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !4404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4403
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11procfs_core7process8MMapPath4from17h62208f595140dd30E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !4479 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = alloca [1 x i8], align 1                 ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 2 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h4fc9474bce370149E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 27 uses
  %i.s = extractvalue { ptr, i64 } %i.q, 1        ; 20 uses
  switch i64 %i.s, label %bb.h [
    i64 0, label %.loopexit.i
    i64 6, label %bb.b
    i64 7, label %bb.c
    i64 10, label %bb.f
    i64 8, label %bb.g
  ]

.loopexit.i:                                      ; preds = %63, %77, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.ao, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit162", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit"
  %.sroa.17.sroa.0.0 = phi i64 [ undef, %bb.ao ], [ %i.dz, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit162" ], [ undef, %bb.g ], [ %i.s, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit" ], [ undef, %bb.a ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %77 ], [ undef, %63 ] ; 2 uses
  %.sroa.17.sroa.6.0 = phi ptr [ undef, %bb.ao ], [ %.sroa.10.0.i.i158, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit162" ], [ undef, %bb.g ], [ %.sroa.10.0.i.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit" ], [ undef, %bb.a ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %77 ], [ undef, %63 ]
  %.sroa.15.0 = phi i32 [ %.sroa.6109.0.extract.trunc, %bb.ao ], [ undef, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit162" ], [ undef, %bb.g ], [ undef, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit" ], [ undef, %bb.a ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ %79, %77 ], [ %67, %63 ]
  %.sroa.0.0 = phi i32 [ 3, %bb.ao ], [ 10, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit162" ], [ 7, %bb.g ], [ 0, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit" ], [ 8, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ], [ 6, %bb.f ], [ 9, %77 ], [ 9, %63 ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0, ptr %i.t, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.15.0, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.17.sroa.0.0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.17.sroa.6.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.17.sroa.6.0, ptr %.sroa.17.sroa.6.0..sroa.17.0..sroa_idx.sroa_idx, align 8
  %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.17.sroa.0.0, ptr %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.ap

bb.b:                                             ; preds = %bb.a
  %i.u = load i32, ptr %i.r, align 1
  %i.v = xor i32 %i.u, 1634035803
  %i.w = getelementptr i8, ptr %i.r, i64 4
  %i.x = load i16, ptr %i.w, align 1
  %i.y = zext i16 %i.x to i32
  %i.z = xor i32 %i.y, 23920
  %i.aa = or i32 %i.v, %i.z
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.loopexit.i, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ae = load i32, ptr %i.r, align 1
  %i.af = xor i32 %i.ae, 1635021659
  %i.ag = getelementptr i8, ptr %i.r, i64 3
  %i.ah = load i32, ptr %i.ag, align 1
  %i.ai = xor i32 %i.ah, 1567318881
  %i.aj = or i32 %i.af, %i.ai
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.loopexit.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit"

bb.d:                                             ; preds = %bb.b
  %i.an = load i32, ptr %i.r, align 1
  %i.ao = xor i32 %i.an, 1935963739
  %i.ap = getelementptr i8, ptr %i.r, i64 4
  %i.aq = load i16, ptr %i.ap, align 1
  %i.ar = zext i16 %i.aq to i32
  %i.as = xor i32 %i.ar, 23919
  %i.at = or i32 %i.ao, %i.as
  %i.au = icmp ne i32 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = load i32, ptr %i.r, align 1
  %i.ay = xor i32 %i.ax, 1635153499
  %i.az = getelementptr i8, ptr %i.r, i64 4
  %i.ba = load i16, ptr %i.az, align 1
  %i.bb = zext i16 %i.ba to i32
  %i.bc = xor i32 %i.bb, 23922
  %i.bd = or i32 %i.ay, %i.bc
  %i.be = icmp ne i32 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %.loopexit.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit129"

bb.f:                                             ; preds = %bb.a
  %i.bh = load i64, ptr %i.r, align 1
  %i.bi = xor i64 %i.bh, 7809632576447149659
  %i.bj = getelementptr i8, ptr %i.r, i64 8
  %i.bk = load i16, ptr %i.bj, align 1
  %i.bl = zext i16 %i.bk to i64
  %i.bm = xor i64 %i.bl, 23916
  %i.bn = or i64 %i.bi, %i.bm
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.loopexit.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit"

bb.g:                                             ; preds = %bb.a
  %i.br = load i64, ptr %i.r, align 1
  %i.bs = icmp ne i64 %i.br, 6733010551455052379
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %.loopexit.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit"

bb.h:                                             ; preds = %bb.a
  %.not.i = icmp ult i64 %i.s, 7
  br i1 %.not.i, label %bb.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit": ; preds = %bb.g, %bb.c, %bb.f, %bb.h
  %i.bv = load i32, ptr %i.r, align 1
  %i.bw = xor i32 1635021659, %i.bv
  %i.bx = getelementptr i8, ptr %i.r, i64 3
  %i.by = load i32, ptr %i.bx, align 1
  %i.bz = xor i32 980116321, %i.by
  %i.ca = or i32 %i.bw, %i.bz
  %i.cb = icmp ne i32 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.j, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit129"

bb.i:                                             ; preds = %bb.h
  %.not.i126 = icmp eq i64 %i.s, 0
  br i1 %.not.i126, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit129"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit129": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit", %bb.e, %bb.i
  %rhsc = load i8, ptr %i.r, align 1
  %i.ce = icmp eq i8 %rhsc, 91
  br i1 %i.ce, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h374403c8bb34e5bcE.exit", label %bb.l

bb.j:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit"
  %i.cf = add i64 %i.s, -1                        ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 6 uses
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !4480, !noundef !5
  %i.ci = icmp sgt i8 %i.ch, -65
  br i1 %i.ci, label %bb.k, label %bb.ac

bb.k:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.cf
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !4480, !noundef !5
  %i.cl = icmp sgt i8 %i.ck, -65
  br i1 %i.cl, label %.lr.ph.i.i.i.i, label %bb.ac

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h374403c8bb34e5bcE.exit": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit129"
  %i.cm = getelementptr i8, ptr %i.r, i64 %i.s
  %i.cn = getelementptr i8, ptr %i.cm, i64 -1
  %rhsc.i = load i8, ptr %i.cn, align 1, !alias.scope !4481
  %i.co = icmp eq i8 %rhsc.i, 93
  br i1 %i.co, label %bb.m, label %bb.l

bb.l:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h374403c8bb34e5bcE.exit", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit129"
  %.not.i133 = icmp ult i64 %i.s, 5
  br i1 %.not.i133, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit136"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit136": ; preds = %bb.l
  %i.cp = load i32, ptr %i.r, align 1
  %i.cq = xor i32 1398362927, %i.cp
  %i.cr = getelementptr i8, ptr %i.r, i64 4
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = zext i8 %i.cs to i32
  %i.cu = xor i32 86, %i.ct
  %i.cv = or i32 %i.cq, %i.cu
  %i.cw = icmp ne i32 %i.cv, 0
  %i.cx = zext i1 %i.cw to i32
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.q, label %bb.o

bb.m:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h374403c8bb34e5bcE.exit"
  %i.cz = add i64 %i.s, -1                        ; 2 uses
  %.not.i137 = icmp eq i64 %i.cz, 0
  br i1 %.not.i137, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.da = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !alias.scope !4482, !noundef !5
  %i.dc = icmp sgt i8 %i.db, -65
  br i1 %i.dc, label %bb.v, label %bb.x

bb.o:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit136"
  %i.dd = icmp slt i64 %i.s, 0
  br i1 %i.dd, label %bb.p, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", !prof !18

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %bb.l, %bb.o
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !4483
  %i.de = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef range(i64 1, 9) 1) #38, !noalias !4483 ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.p, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit"

bb.p:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.o
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.o ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #37, !noalias !4484
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit": ; preds = %bb.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %.sroa.10.0.i.i = phi ptr [ %i.de, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ inttoptr (i64 1 to ptr), %bb.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.r, i64 %i.s, i1 false), !noalias !4485
  br label %.loopexit.i

bb.q:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit136"
  %.not5.i145.not = icmp eq i64 %i.s, 5
  br i1 %.not5.i145.not, label %.split7.i150.thread, label %bb.s

bb.r:                                             ; preds = %bb.s
  %.not6.i149 = icmp ugt i64 %i.s, 13
  br i1 %.not6.i149, label %bb.t, label %.split7.i150

bb.s:                                             ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %i.r, i64 5 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !alias.scope !4486, !noundef !5 ; 2 uses
  %i.di = icmp sgt i8 %i.dh, -65
  br i1 %i.di, label %bb.r, label %.split7.i150.thread

.split7.i150:                                     ; preds = %bb.r
  %i.dj = icmp eq i64 %i.s, 13
  br i1 %i.dj, label %.lr.ph.i, label %.split7.i150.thread

bb.t:                                             ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %i.r, i64 13
  %i.dl = load i8, ptr %i.dk, align 1, !alias.scope !4486, !noundef !5
  %i.dm = icmp sgt i8 %i.dl, -65
  br i1 %i.dm, label %.lr.ph.i, label %.split7.i150.thread

.lr.ph.i:                                         ; preds = %.split7.i150, %bb.t
  %cond.i = icmp eq i8 %i.dh, 43                  ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %spec.select = select i1 %cond.i, ptr %i.dn, ptr %i.dg ; 8 uses
  %3 = load i8, ptr %spec.select, align 1, !alias.scope !4487, !noundef !5 ; 2 uses
  %4 = zext i8 %3 to i32                          ; 2 uses
  %5 = icmp ugt i8 %3, 57
  %6 = add nsw i32 %4, -65
  %7 = and i32 %6, -33
  %8 = add nuw nsw i32 %7, 10
  %9 = add nsw i32 %4, -48
  %spec.select93.i = select i1 %5, i32 %8, i32 %9 ; 2 uses
  %10 = icmp ult i32 %spec.select93.i, 16
  br i1 %10, label %.lr.ph.split.i.1, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

.lr.ph.split.i.1:                                 ; preds = %.lr.ph.i
  %11 = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %12 = load i8, ptr %11, align 1, !alias.scope !4487, !noundef !5 ; 2 uses
  %13 = zext i8 %12 to i32                        ; 2 uses
  %14 = icmp ugt i8 %12, 57
  %15 = add nsw i32 %13, -65
  %16 = and i32 %15, -33
  %17 = add nuw nsw i32 %16, 10
  %18 = add nsw i32 %13, -48
  %spec.select93.i.1 = select i1 %14, i32 %17, i32 %18 ; 2 uses
  %19 = icmp ult i32 %spec.select93.i.1, 16
  br i1 %19, label %.lr.ph.split.i.2, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

.lr.ph.split.i.2:                                 ; preds = %.lr.ph.split.i.1
  %20 = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %21 = load i8, ptr %20, align 1, !alias.scope !4487, !noundef !5 ; 2 uses
  %22 = zext i8 %21 to i32                        ; 2 uses
  %23 = icmp ugt i8 %21, 57
  %24 = add nsw i32 %22, -65
  %25 = and i32 %24, -33
  %26 = add nuw nsw i32 %25, 10
  %27 = add nsw i32 %22, -48
  %spec.select93.i.2 = select i1 %23, i32 %26, i32 %27 ; 2 uses
  %28 = icmp ult i32 %spec.select93.i.2, 16
  br i1 %28, label %.lr.ph.split.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.2
  %29 = shl nuw nsw i32 %spec.select93.i, 8
  %30 = shl nuw nsw i32 %spec.select93.i.1, 4
  %31 = or disjoint i32 %29, %30
  %32 = or disjoint i32 %spec.select93.i.2, %31
  %33 = getelementptr inbounds nuw i8, ptr %spec.select, i64 3
  %i.do = load i8, ptr %33, align 1, !alias.scope !4487, !noundef !5 ; 2 uses
  %i.dp = zext i8 %i.do to i32                    ; 2 uses
  %i.dq = icmp ugt i8 %i.do, 57
  %i.dr = add nsw i32 %i.dp, -65
  %i.ds = and i32 %i.dr, -33
  %i.dt = add nuw nsw i32 %i.ds, 10
  %i.du = add nsw i32 %i.dp, -48
  %spec.select93.i.a = select i1 %i.dq, i32 %i.dt, i32 %i.du ; 2 uses
  %i.dv = icmp ult i32 %spec.select93.i.a, 16
  br i1 %i.dv, label %.lr.ph.split.i.4, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

.lr.ph.split.i.4:                                 ; preds = %.lr.ph.split.i
  %34 = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %35 = load i8, ptr %34, align 1, !alias.scope !4487, !noundef !5 ; 2 uses
  %36 = zext i8 %35 to i32                        ; 2 uses
  %37 = icmp ugt i8 %35, 57
  %38 = add nsw i32 %36, -65
  %39 = and i32 %38, -33
  %40 = add nuw nsw i32 %39, 10
  %41 = add nsw i32 %36, -48
  %spec.select93.i.4 = select i1 %37, i32 %40, i32 %41 ; 2 uses
  %42 = icmp ult i32 %spec.select93.i.4, 16
  br i1 %42, label %bb.u, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

bb.u:                                             ; preds = %.lr.ph.split.i.4
  %43 = shl nuw nsw i32 %32, 8
  %i.dw = shl nuw nsw i32 %spec.select93.i.a, 4
  %44 = or disjoint i32 %43, %i.dw
  %45 = or disjoint i32 %spec.select93.i.4, %44
  %i.dx = getelementptr inbounds nuw i8, ptr %spec.select, i64 5
  %46 = load i8, ptr %i.dx, align 1, !alias.scope !4487, !noundef !5 ; 2 uses
  %47 = zext i8 %46 to i32                        ; 2 uses
  %48 = icmp ugt i8 %46, 57
  %49 = add nsw i32 %47, -65
  %50 = and i32 %49, -33
  %51 = add nuw nsw i32 %50, 10
  %52 = add nsw i32 %47, -48
  %spec.select93.i.5 = select i1 %48, i32 %51, i32 %52 ; 2 uses
  %53 = icmp ult i32 %spec.select93.i.5, 16
  br i1 %53, label %.lr.ph.split.i.6, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

.lr.ph.split.i.6:                                 ; preds = %bb.u
  %54 = getelementptr inbounds nuw i8, ptr %spec.select, i64 6
  %55 = load i8, ptr %54, align 1, !alias.scope !4487, !noundef !5 ; 2 uses
  %56 = zext i8 %55 to i32                        ; 2 uses
  %57 = icmp ugt i8 %55, 57
  %58 = add nsw i32 %56, -65
  %59 = and i32 %58, -33
  %60 = add nuw nsw i32 %59, 10
  %61 = add nsw i32 %56, -48
  %spec.select93.i.6 = select i1 %57, i32 %60, i32 %61 ; 2 uses
  %62 = icmp ult i32 %spec.select93.i.6, 16
  br i1 %62, label %63, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

63:                                               ; preds = %.lr.ph.split.i.6
  %64 = shl i32 %45, 8
  %65 = shl nuw nsw i32 %spec.select93.i.5, 4
  %66 = or disjoint i32 %64, %65
  %67 = or disjoint i32 %spec.select93.i.6, %66   ; 2 uses
  br i1 %cond.i, label %.loopexit.i, label %.lr.ph.split.i.7

.lr.ph.split.i.7:                                 ; preds = %63
  %68 = getelementptr inbounds nuw i8, ptr %spec.select, i64 7
  %69 = load i8, ptr %68, align 1, !alias.scope !4487, !noundef !5 ; 2 uses
  %70 = zext i8 %69 to i32                        ; 2 uses
  %71 = icmp ugt i8 %69, 57
  %72 = add nsw i32 %70, -65
  %73 = and i32 %72, -33
  %74 = add nuw nsw i32 %73, 10
  %75 = add nsw i32 %70, -48
  %spec.select93.i.7 = select i1 %71, i32 %74, i32 %75 ; 2 uses
  %76 = icmp ult i32 %spec.select93.i.7, 16
  br i1 %76, label %77, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

77:                                               ; preds = %.lr.ph.split.i.7
  %78 = shl i32 %67, 4
  %79 = or disjoint i32 %spec.select93.i.7, %78
  br label %.loopexit.i

.split7.i150.thread:                              ; preds = %bb.q, %bb.t, %bb.s, %.split7.i150
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.r, i64 noundef %i.s, i64 noundef 5, i64 noundef 13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @244) #37
  unreachable

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread": ; preds = %.lr.ph.split.i.7, %.lr.ph.split.i.6, %bb.u, %.lr.ph.split.i.4, %.lr.ph.split.i, %.lr.ph.split.i.2, %.lr.ph.split.i.1, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4488)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 1, ptr %i.g, align 1, !noalias !4488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4488
  store ptr %i.g, ptr %i.f, align 8, !noalias !4488
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !4488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4489
  store ptr @1, ptr %i.e, align 8, !noalias !4490
  %.sroa.4.0..sroa_idx.i154 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i154, align 8, !noalias !4490
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !4490
  %.sroa.6.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i155, align 8, !noalias !4490
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !4490
  %i.dy = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dy, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4488
  store i64 -9223372036854775804, ptr %i.h, align 8, !alias.scope !4488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ap

bb.v:                                             ; preds = %bb.n
  %i.dz = add i64 %i.s, -2                        ; 6 uses
  %i.ea = icmp slt i64 %i.dz, 0
  br i1 %i.ea, label %bb.w, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i156, !prof !8

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i156: ; preds = %bb.v
  %i.eb = icmp eq i64 %i.dz, 0
  br i1 %i.eb, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit162", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i157"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i157": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i156
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !4491
  %i.ec = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.dz, i64 noundef range(i64 1, 9) 1) #38, !noalias !4491 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.w, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit162"

bb.w:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i157", %bb.v
  %.sroa.4.0.ph.i.i161 = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i157" ], [ 0, %bb.v ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i161, i64 %i.dz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #37, !noalias !4492
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit162": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i156, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i157"
  %.sroa.10.0.i.i158 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i156 ], [ %i.ec, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i157" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i158, ptr nonnull readonly align 1 %i.da, i64 %i.dz, i1 false), !noalias !4493
  br label %.loopexit.i

bb.x:                                             ; preds = %bb.n, %bb.m
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.r, i64 noundef %i.s, i64 noundef 1, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #37
  unreachable

.lr.ph.i.i.i.i:                                   ; preds = %bb.k
  %i.ee = add i64 %i.s, -2                        ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph.i.i.i.i
  %i.ef = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.es, %bb.aa ] ; 6 uses
  %i.eg = sub nuw i64 %i.ee, %i.ef                ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ef ; 2 uses
  %i.ei = icmp ult i64 %i.eg, 16
  br i1 %i.ei, label %.preheader.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.y
  %.not.i.i.i.i.i = icmp eq i64 %i.ee, %i.ef
  br i1 %.not.i.i.i.i.i, label %.thread258, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.z
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.em, %bb.z ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.01.05.i.i.i.i.i
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !4494, !noalias !4495, !noundef !5
  %i.el = icmp eq i8 %i.ek, 58
  br i1 %i.el, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.em = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.em, %i.eg
  br i1 %exitcond.not.i.i.i.i.i, label %.thread258, label %.lr.ph.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i: ; preds = %bb.y
  %i.en = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 58, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.eh, i64 noundef %i.eg), !noalias !4495 ; 2 uses
  %i.eo = extractvalue { i64, i64 } %i.en, 0
  %i.ep = extractvalue { i64, i64 } %i.en, 1
  %i.eq = trunc nuw i64 %i.eo to i1
  br i1 %i.eq, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i, label %.thread258

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i
  %.sroa.4.0.i27.i.i.i.i = phi i64 [ %i.ep, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.er = add i64 %i.ef, 1
  %i.es = add i64 %i.er, %.sroa.4.0.i27.i.i.i.i   ; 6 uses
  %.not21.i.i.i.i = icmp ugt i64 %i.es, %i.ee
  %i.et = add i64 %i.ef, %.sroa.4.0.i27.i.i.i.i
  %or.cond.i.i.i.i.not = icmp ult i64 %i.et, %i.ee
  br i1 %or.cond.i.i.i.i.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i
  br i1 %.not21.i.i.i.i, label %.thread258, label %bb.y

bb.ab:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i
  %i.eu = getelementptr i8, ptr %i.cg, i64 %i.ef
  %i.ev = getelementptr i8, ptr %i.eu, i64 %.sroa.4.0.i27.i.i.i.i
  %lhsc = load i8, ptr %i.ev, align 1
  %i.ew = icmp eq i8 %lhsc, 58
  br i1 %i.ew, label %bb.ad, label %bb.aa

bb.ac:                                            ; preds = %bb.k, %bb.j
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.r, i64 noundef %i.s, i64 noundef 1, i64 noundef %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @246) #37
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.ex = icmp ult i64 %i.ee, %i.es
  br i1 %i.ex, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %.backedge

.backedge:                                        ; preds = %bb.ad, %.backedge.backedge
  %i.ey = phi i64 [ %i.fl, %.backedge.backedge ], [ %i.es, %bb.ad ] ; 6 uses
  %i.ez = sub nuw i64 %i.ee, %i.ey                ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ey ; 2 uses
  %i.fb = icmp ult i64 %i.ez, 16
  br i1 %i.fb, label %.preheader.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i

.preheader.i.i.i:                                 ; preds = %.backedge
  %.not.i.i.i = icmp eq i64 %i.ee, %i.ey
  br i1 %.not.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.ae
  %.sroa.01.05.i.i.i = phi i64 [ %i.ff, %bb.ae ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.sroa.01.05.i.i.i
  %i.fd = load i8, ptr %i.fc, align 1, !alias.scope !4496, !noalias !4497, !noundef !5
  %i.fe = icmp eq i8 %i.fd, 58
  br i1 %i.fe, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i
  %i.ff = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ff, %i.ez
  br i1 %exitcond.not.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i: ; preds = %.backedge
  %i.fg = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 58, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fa, i64 noundef %i.ez), !noalias !4497 ; 2 uses
  %i.fh = extractvalue { i64, i64 } %i.fg, 0
  %i.fi = extractvalue { i64, i64 } %i.fg, 1
  %i.fj = trunc nuw i64 %i.fh to i1
  br i1 %i.fj, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i: ; preds = %.lr.ph.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %.sroa.4.0.i27.i.i = phi i64 [ %i.fi, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.fk = add i64 %i.ey, 1
  %i.fl = add i64 %i.fk, %.sroa.4.0.i27.i.i       ; 2 uses
  %.not21.i.i = icmp ugt i64 %i.fl, %i.ee         ; 2 uses
  %i.fm = add i64 %i.ey, %.sroa.4.0.i27.i.i
  %or.cond.i.i.not = icmp ult i64 %i.fm, %i.ee
  br i1 %or.cond.i.i.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  br i1 %.not21.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.af, %bb.ag
  br label %.backedge

bb.ag:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  %i.fn = add i64 %i.ey, %.sroa.4.0.i27.i.i       ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.fn
  %lhsc333 = load i8, ptr %i.fo, align 1
  %i.fp = icmp eq i8 %lhsc333, 58                 ; 2 uses
  %brmerge = or i1 %i.fp, %.not21.i.i
  br i1 %brmerge, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.loopexit374.split.loop.exit391", label %.backedge.backedge

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.loopexit374.split.loop.exit391": ; preds = %bb.ag
  %.mux.le = select i1 %i.fp, i64 %i.fn, i64 %i.ee
  br label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i"

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i": ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.loopexit374.split.loop.exit391", %bb.af, %.preheader.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i, %bb.ae, %bb.ad
  %.pn = phi i64 [ %i.ee, %bb.ad ], [ %i.ee, %bb.ae ], [ %i.ee, %.preheader.i.i.i ], [ %.mux.le, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.loopexit374.split.loop.exit391" ], [ %i.ee, %bb.af ], [ %i.ee, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i ]
  %.sroa.4.1.i = sub nuw i64 %.pn, %i.es          ; 7 uses
  %.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.es ; 7 uses
  store ptr %.sroa.0.1.i, ptr %i.p, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.4.1.i, ptr %i.fq, align 8
  switch i64 %.sroa.4.1.i, label %bb.ai [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit182.thread"
    i64 1, label %bb.ah
  ]

.thread258:                                       ; preds = %bb.aa, %.preheader.i.i.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.a, ptr %i.n, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.465.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4498
  store ptr @31, ptr %i.d, align 8, !noalias !4499
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !4499
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.n, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !4499
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
end_hunk_0
