Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RNvMs0_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signingNtB5_12EcdsaKeyPair3new:bb.a

vector.body.1:                                    ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i
  %wide.load = load <2 x i64>, ptr %i.l, align 16, !alias.scope !2524, !noalias !2523
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load.1 = load <2 x i64>, ptr %i.am, align 16, !alias.scope !2524, !noalias !2523
  %i.an = or <2 x i64> %wide.load.1, %wide.load   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %wide.load.2 = load <2 x i64>, ptr %i.ao, align 16
  %i.ap = or <2 x i64> %wide.load.2, %i.an
  %.lcssa = select i1 %i.ae, <2 x i64> %i.ap, <2 x i64> %i.an
  %i.aq = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa)
  %i.ar = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.aq) #36, !noalias !2527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2529
  store i64 %i.ar, ptr %i.k, align 8, !noalias !2529
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.k) #36, !noalias !2527, !srcloc !37
  %i.as = load i64, ptr %i.k, align 8, !noalias !2529, !noundef !15
  %.not.i.not.i.i = icmp eq i64 %i.as, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2529
  br i1 %.not.i.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i: ; preds = %vector.body.1, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2523
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i, %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #41, !noalias !2530
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit: ; preds = %vector.body.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 16 dereferenceable(48) %i.l, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !2531)
  %i.at = load ptr, ptr %i.t, align 8, !alias.scope !2531, !nonnull !15, !align !17, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2532
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.au, i64 48, i1 false), !noalias !2533
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !2532, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2532
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false), !noalias !2532
  call void %i.aw(ptr noundef nonnull %i.g, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.o, ptr noundef nonnull %i.h) #36, !noalias !2534, !inline_history !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !2535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2532
  %.val17 = load ptr, ptr %1, align 8, !nonnull !15, !align !17, !noundef !15
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val18 = load ptr, ptr %i.ax, align 8          ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.val19 = load ptr, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2536
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.f, i8 0, i64 64, i1 false), !noalias !2536
  %i.az = getelementptr inbounds nuw i8, ptr %.val17, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !noalias !2536, !noundef !15 ; 4 uses
  %i.bb = icmp ult i64 %i.ba, 65
  br i1 %i.bb, label %bb.g, label %bb.f, !prof !36

bb.f:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ba, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #41, !noalias !2536
  unreachable

bb.g:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit
  %i.bc = call noundef zeroext i1 %.val19(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull %i.f, i64 noundef %i.ba) #40, !noalias !2536, !inline_history !2510
  br i1 %i.bc, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2536
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18) ]
  %i.bd = load i32, ptr %.val18, align 8, !range !45, !noalias !2536, !noundef !15
  %i.be = trunc nuw i32 %i.bd to i1
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %.val18, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 4 dereferenceable(32) %i.bf, i64 32, i1 false), !noalias !2536
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %.sroa.06.0.copyload.i = load ptr, ptr %i.bg, align 8, !noalias !2536
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.47.0..sroa_idx.i, i64 32, i1 false), !noalias !2536
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val18, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58.0..sroa_idx.i, i64 24, i1 false), !noalias !2536
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.55.0.i = phi ptr [ %.val18, %bb.i ], [ %.sroa.06.0.copyload.i, %bb.j ]
  %.sroa.04.0.i = phi ptr [ null, %bb.i ], [ %.val18, %bb.j ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.e, i8 0, i64 128, i1 false), !noalias !2536
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr %.sroa.04.0.i, ptr %i.bh, align 8, !noalias !2536
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store ptr %.sroa.55.0.i, ptr %.sroa.03.sroa.4.0..sroa_idx.i, align 8, !noalias !2536
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !2536
  %.sroa.03.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !2536
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2536
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.ba), !noalias !2536
  %i.bi = load i64, ptr %i.aa, align 8, !noalias !2537, !noundef !15 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 49
  br i1 %i.bj, label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit.i, label %bb.l, !prof !36

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bi, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #41, !noalias !2537
  unreachable

_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit.i: ; preds = %bb.k
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.bi), !noalias !2538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 8 dereferenceable(208) %i.e, i64 208, i1 false), !noalias !2536
  %i.bk = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4, !noalias !2539
  %.not.i.i.i.i21 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i21, label %bb.m, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i.i, !prof !16

bb.m:                                             ; preds = %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit.i
  call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i.i: ; preds = %bb.m, %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.bl, i64 80, i1 false), !noalias !2541
  call fastcc void @_RNvMNtCs5yxAJGbRKSL_4ring6digestNtB2_12BlockContext10try_finish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.d), !noalias !2542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2540
  %i.bm = load ptr, ptr %i.c, align 8, !noalias !2540, !noundef !15 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !2543 ; 2 uses
  br i1 %i.bn, label %bb.n, label %bb.r

bb.n:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i.i
  %i.bq = trunc nuw i64 %i.bp to i1
  br i1 %i.bq, label %bb.o, label %bb.p, !prof !16

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #41, !noalias !2542
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2540
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #41, !noalias !2544
  unreachable

bb.q:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2536
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @149, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.bs, align 8
  store ptr null, ptr %0, align 8
  br label %bb.s

bb.r:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i.i
  %.sroa.8.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.11.16.copyload = load i64, ptr %.sroa.8.0..sroa_idx8.i.i, align 8, !noalias !2545
  %.sroa.15.16..sroa.8.0..sroa_idx8.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.610.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.15.16..sroa.8.0..sroa_idx8.i.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2536
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %i.bt = inttoptr i64 %i.bp to ptr
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %i.m, i64 112, i1 false)
  %.sroa.811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.811.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  store ptr %i.bm, ptr %0, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bt, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11.16.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signingNtB5_12EcdsaKeyPair4sign(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 31 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [48 x i8], align 16               ; 18 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [48 x i8], align 16               ; 10 uses
  %i.p = alloca [48 x i8], align 1                ; 12 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [48 x i8], align 8                ; 7 uses
  %i.s = alloca [120 x i8], align 8               ; 6 uses
  %i.t = alloca [48 x i8], align 8                ; 5 uses
  %i.u = alloca [48 x i8], align 8                ; 5 uses
  %i.v = alloca [48 x i8], align 8                ; 5 uses
  %i.w = alloca [48 x i8], align 8                ; 5 uses
  %i.x = alloca [48 x i8], align 8                ; 6 uses
  %i.y = alloca [48 x i8], align 16               ; 8 uses
  %i.z = alloca [48 x i8], align 16               ; 9 uses
  %i.aa = alloca [104 x i8], align 8              ; 6 uses
  %.sroa.42.i = alloca [96 x i8], align 8         ; 5 uses
  %i.ab = alloca [48 x i8], align 8               ; 5 uses
  %i.ac = alloca [144 x i8], align 8              ; 5 uses
  %i.ad = alloca [48 x i8], align 8               ; 5 uses
  %i.ae = alloca [48 x i8], align 8               ; 6 uses
  %i.af = alloca [48 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [80 x i8], align 8               ; 4 uses
  %i.ai = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.7.i = alloca [32 x i8], align 8          ; 6 uses
  %.sroa.8.i = alloca [24 x i8], align 8          ; 5 uses
  %i.aj = alloca [208 x i8], align 8              ; 5 uses
  %i.ak = alloca [208 x i8], align 8              ; 11 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [72 x i8], align 8               ; 6 uses
  %i.an = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.an, 0
  %.lcssa.sroa.gep91 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.lcssa.sroa.gep93 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.lcssa.sroa.gep95 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  br i1 %.not.i.i, label %bb.b, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !15, !align !17, !noundef !15 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !15, !align !17, !noundef !15 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2653
  %i.as = load i32, ptr %i.ar, align 8, !range !45, !alias.scope !2652, !noundef !15
  %i.at = trunc nuw i32 %i.as to i1
  br i1 %i.at, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.au, i64 32, i1 false), !noalias !2654
  br label %bb.e

bb.d:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.av, align 8, !alias.scope !2652
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.42.0..sroa_idx.i, i64 32, i1 false), !noalias !2654
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.53.0..sroa_idx.i, i64 24, i1 false), !noalias !2654
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.i = phi ptr [ %i.ar, %bb.c ], [ %.sroa.0.0.copyload.i, %bb.d ]
  %.sroa.01.0.i = phi ptr [ null, %bb.c ], [ %i.ar, %bb.d ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ak, i8 0, i64 128, i1 false), !noalias !2653
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 128 ; 2 uses
  store ptr %.sroa.01.0.i, ptr %i.aw, align 8, !noalias !2653
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  store ptr %.sroa.5.0.i, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !2653
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !2653
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !2653
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 200
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2653
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5), !noalias !2655
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.aj, ptr noundef nonnull align 8 dereferenceable(208) %i.ak, i64 208, i1 false), !noalias !2653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(80) %i.aw, i64 80, i1 false), !noalias !2653
  call fastcc void @_RNvMNtCs5yxAJGbRKSL_4ring6digestNtB2_12BlockContext10try_finish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ai, ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.aj), !noalias !2657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2656
  %i.ax = load ptr, ptr %i.ai, align 8, !noalias !2656, !noundef !15 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !2658 ; 2 uses
  br i1 %i.ay, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bb = trunc nuw i64 %i.ba to i1
  br i1 %i.bb, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #41, !noalias !2657
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2653
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  store i64 1, ptr %0, align 8
  br label %bb.aa

bb.i:                                             ; preds = %bb.e
  %.sroa.9.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.516.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9.0..sroa_idx4, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2653
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  store ptr %i.ax, ptr %i.am, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store i64 %i.ba, ptr %.sroa.415.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %1, ptr %i.al, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.am, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %2, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %3, ptr %i.be, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2659)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !2660, !nonnull !15, !align !17, !noundef !15 ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !2660, !nonnull !15, !align !17, !noundef !15 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !2660, !nonnull !15, !align !17, !noundef !15 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !2660, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2660
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 256 ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 8, !range !34, !noalias !2660, !noundef !15 ; 2 uses
  store ptr %i.bl, ptr %i.ag, align 8, !noalias !2660
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i8 %i.bn, ptr %i.bo, align 8, !noalias !2660
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.bi, ptr %i.bp, align 8, !noalias !2660
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 112 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2660
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 89
  %i.bs = load i8, ptr %i.br, align 1, !range !44, !noalias !2660, !noundef !15
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = trunc nuw i8 %i.bn to i1                ; 4 uses
  %..i.i = select i1 %i.bu, i64 48, i64 32
  %.sroa.5.0.i.i = call i64 @llvm.umin.i64(i64 range(i64 20, 65) %i.bt, i64 %..i.i)
  %..i.i.i = select i1 %i.bu, i64 6, i64 4        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2661
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false), !noalias !2661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2662
  store ptr %i.r, ptr %i.q, align 8, !noalias !2662
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %..i.i.i, ptr %i.bv, align 8, !noalias !2662
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %i.bw, align 8, !noalias !2662
  %i.bx = call fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.415.0..sroa_idx, i64 noundef range(i64 20, 49) %.sroa.5.0.i.i, i64 noundef range(i64 4, 7) %..i.i.i), !noalias !2663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2662
  %i.by = extractvalue { i64, i64 } %i.bx, 0
  %i.bz = trunc nuw i64 %i.by to i1
  br i1 %i.bz, label %bb.j, label %_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa13digest_scalar13digest_scalar.exit.i, !prof !16

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2661
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #41, !noalias !2664
  unreachable

_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa13digest_scalar13digest_scalar.exit.i: ; preds = %bb.i
  call void @ring_core_0_17_16000__LIMBS_reduce_once(ptr noundef nonnull align 8 %i.r, ptr noundef nonnull readonly align 8 %i.bq, i64 noundef range(i64 0, 1152921504606846976) %..i.i.i) #36, !noalias !2665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !2666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2661
  %i.ca = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.cf = getelementptr i8, ptr %i.bk, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %.split.i

bb.k:                                             ; preds = %bb.y
  store i64 1, ptr %0, align 8, !alias.scope !2659
  br label %_RNvMs0_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signingNtB5_12EcdsaKeyPair11sign_digest.exit

.split.i:                                         ; preds = %bb.y, %_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa13digest_scalar13digest_scalar.exit.i
  %.sroa.03.023.i = phi i32 [ 0, %_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa13digest_scalar13digest_scalar.exit.i ], [ %i.cx, %bb.y ]
  %i.cx = add nuw nsw i32 %.sroa.03.023.i, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2660
  %i.cy = load ptr, ptr %i.bj, align 8, !noalias !2667, !nonnull !15, !align !17, !noundef !15
  %.val6.i = load ptr, ptr %i.cy, align 8, !noalias !2667, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2668
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.p, i8 0, i64 48, i1 false), !noalias !2668
  %i.cz = getelementptr inbounds nuw i8, ptr %.val6.i, i64 256 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 8, !range !34, !noalias !2669, !noundef !15
  %i.db = trunc nuw i8 %i.da to i1                ; 4 uses
  %..i16.i = select i1 %i.db, i64 48, i64 32      ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.val6.i, i64 112
  %i.dd = lshr exact i64 %..i16.i, 3              ; 4 uses
  %i.de = add nsw i64 %..i16.i, -8                ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.de
  %i.dg = add nsw i64 %..i16.i, -16               ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dg
  %.not.i46.i.i.1.not = icmp eq i64 %i.de, 8
  %i.di = call i64 @llvm.usub.sat.i64(i64 %i.dg, i64 8) ; 4 uses
  %.not.i.i.i.i.i.i24.i.2 = icmp eq i64 %i.dg, 0
  %i.dj = sub nuw nsw i64 %i.dg, %i.di            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.di
  %i.dl = sub nuw nsw i64 8, %i.dj
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dl
  %i.dn = call i64 @llvm.usub.sat.i64(i64 %i.dg, i64 16) ; 3 uses
  %i.do = sub nuw nsw i64 %i.di, %i.dn            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dn
  %i.dq = sub nuw nsw i64 8, %i.do
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dq
  %.not.i46.i.i.3 = icmp samesign ugt i64 %i.di, 8
  %i.ds = call i64 @llvm.usub.sat.i64(i64 %i.dg, i64 24) ; 4 uses
  %i.dt = sub nuw nsw i64 %i.dn, %i.ds            ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ds
  %i.dv = sub nuw nsw i64 8, %i.dt
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dv
  %i.dx = call i64 @llvm.usub.sat.i64(i64 %i.dg, i64 32) ; 2 uses
  %i.dy = sub nuw nsw i64 %i.ds, %i.dx            ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dx
  %i.ea = sub nuw nsw i64 8, %i.dy
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ea
  %.not.i46.i.i.5 = icmp samesign ugt i64 %i.ds, 8
  br label %bb.l

bb.l:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i, %.split.i
  %.sroa.01.01.i.i = phi i32 [ 0, %.split.i ], [ %i.ed, %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i ]
  %i.ec = call noundef zeroext i1 @_RNvXs2_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signingNtB5_11NonceRandomNtNtNtBd_4rand6sealed12SecureRandom9fill_impl(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull %i.p, i64 noundef range(i64 0, -9223372036854775808) %..i16.i), !noalias !2669
  br i1 %i.ec, label %.loopexit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ed = add nuw nsw i32 %.sroa.01.01.i.i, 1     ; 2 uses
  %i.ee = load i8, ptr %i.cz, align 8, !range !34, !noalias !2670, !noundef !15
  %i.ef = trunc nuw i8 %i.ee to i1                ; 4 uses
  %..i.i.i.i.i = select i1 %i.ef, i64 6, i64 4    ; 5 uses
  %i.eg = xor i1 %i.db, %i.ef
  br i1 %i.eg, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2671
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.e, i8 0, i64 48, i1 false), !noalias !2671
  call void @llvm.experimental.noalias.scope.decl(metadata !2672), !noalias !2673
  %i.eh = icmp samesign ugt i64 %i.dd, %..i.i.i.i.i
  br i1 %i.eh, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i.i.i, label %.lr.ph.i.i.i, !prof !16

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.ei = sub nuw nsw i64 %..i.i.i.i.i, %i.dd     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2674
  store i64 0, ptr %i.b, align 8, !noalias !2674
  %i.ej = load i64, ptr %i.df, align 1, !alias.scope !2675, !noalias !2676 ; 2 uses
  store i64 %i.ej, ptr %i.b, align 8, !alias.scope !2675, !noalias !2676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2674
  %i.ek = call i64 @llvm.bswap.i64(i64 %i.ej)
  store i64 %i.ek, ptr %i.e, align 16, !alias.scope !2677, !noalias !2678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2674
  store i64 0, ptr %i.b, align 8, !noalias !2674
  %i.el = load i64, ptr %i.dh, align 1, !alias.scope !2675, !noalias !2676 ; 2 uses
  store i64 %i.el, ptr %i.b, align 8, !alias.scope !2675, !noalias !2676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2674
  %i.em = call i64 @llvm.bswap.i64(i64 %i.el)
  store i64 %i.em, ptr %i.ck, align 8, !alias.scope !2677, !noalias !2678
  br i1 %.not.i46.i.i.1.not, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i, label %bb.o

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.thread.i: ; preds = %bb.q, %bb.p, %bb.o
  %.lcssa.sroa.phi = phi ptr [ %.lcssa.sroa.gep95, %bb.q ], [ %.lcssa.sroa.gep93, %bb.p ], [ %.lcssa.sroa.gep91, %bb.o ]
  %.lcssa = phi i64 [ 6, %bb.q ], [ 4, %bb.p ], [ 2, %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2674
  %i.en = icmp eq i64 %..i.i.i.i.i, %.lcssa
  br i1 %i.en, label %.loopexit39.i, label %.lr.ph.i.i.i.i.i.i.i.thread.i

.lr.ph.i.i.i.i.i.i.i.thread.i:                    ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.thread.i
  store i64 0, ptr %.lcssa.sroa.phi, align 8, !alias.scope !2677, !noalias !2678
  %i.eo = add nuw nsw i64 %.lcssa, 1
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2674
  store i64 0, ptr %i.b, align 8, !noalias !2674
  br i1 %.not.i.i.i.i.i.i24.i.2, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.thread.i, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dm, ptr nonnull readonly align 1 %i.dk, i64 range(i64 0, -9223372036854775808) %i.dj, i1 false), !alias.scope !2675, !noalias !2676
  %.sroa.0.0.copyload.pre.i.i.i.i.i.2 = load i64, ptr %i.b, align 8, !noalias !2674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2674
  %i.ep = call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.pre.i.i.i.i.i.2)
  store i64 %i.ep, ptr %i.cl, align 16, !alias.scope !2677, !noalias !2678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2674
  store i64 0, ptr %i.b, align 8, !noalias !2674
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dr, ptr nonnull readonly align 1 %i.dp, i64 range(i64 0, -9223372036854775808) %i.do, i1 false), !alias.scope !2675, !noalias !2676
  %.sroa.0.0.copyload.pre.i.i.i.i.i.3 = load i64, ptr %i.b, align 8, !noalias !2674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2674
  %i.eq = call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.pre.i.i.i.i.i.3)
  store i64 %i.eq, ptr %i.cm, align 8, !alias.scope !2677, !noalias !2678
  br i1 %.not.i46.i.i.3, label %bb.p, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i

bb.p:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2674
  store i64 0, ptr %i.b, align 8, !noalias !2674
  br i1 %i.db, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.4, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.thread.i

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.4: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dw, ptr nonnull readonly align 1 %i.du, i64 range(i64 0, -9223372036854775808) %i.dt, i1 false), !alias.scope !2675, !noalias !2676
  %.sroa.0.0.copyload.pre.i.i.i.i.i.4 = load i64, ptr %i.b, align 8, !noalias !2674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2674
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i.i.i.i.4, label %.loopexit39.i

.lr.ph.i.i.i.i.i.i.i.i.4:                         ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.4
  %i.er = call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.pre.i.i.i.i.i.4)
  store i64 %i.er, ptr %i.cn, align 16, !alias.scope !2677, !noalias !2678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2674
  store i64 0, ptr %i.b, align 8, !noalias !2674
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eb, ptr nonnull readonly align 1 %i.dz, i64 range(i64 0, -9223372036854775808) %i.dy, i1 false), !alias.scope !2675, !noalias !2676
  %.sroa.0.0.copyload.pre.i.i.i.i.i.5 = load i64, ptr %i.b, align 8, !noalias !2674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2674
  %i.es = call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.pre.i.i.i.i.i.5)
  store i64 %i.es, ptr %i.co, align 8, !alias.scope !2677, !noalias !2678
  br i1 %.not.i46.i.i.5, label %bb.q, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2674
  store i64 0, ptr %i.b, align 8, !noalias !2674
  br label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.thread.i

.loopexit39.i:                                    ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.thread.i, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.4
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #41, !noalias !2679
  unreachable

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.i.i.thread.i
  %i.et = phi i64 [ %.lcssa, %.lr.ph.i.i.i.i.i.i.i.thread.i ], [ 3, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2 ], [ 1, %.lr.ph.i.i.i ], [ 5, %.lr.ph.i.i.i.i.i.i.i.i.4 ] ; 2 uses
  %i.eu = phi i64 [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.thread.i ], [ 4, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2 ], [ 2, %.lr.ph.i.i.i ], [ 6, %.lr.ph.i.i.i.i.i.i.i.i.4 ] ; 2 uses
  %.not.not.i = icmp samesign ugt i64 %i.dd, %i.et
  br i1 %.not.not.i, label %bb.r, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i.i.i

bb.r:                                             ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i
  %i.ev = icmp eq i64 %..i.i.i.i.i, %i.dd
  br i1 %i.ev, label %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.r
  %.idx.i.i.i = shl nuw nsw i64 %i.ei, 3
  %i.ew = getelementptr [8 x i8], ptr %i.e, i64 %i.eu
  call void @llvm.memset.p0.i64(ptr align 8 %i.ew, i8 0, i64 %.idx.i.i.i, i1 false), !alias.scope !2680, !noalias !2681
  br label %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i.i.i

_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i, %bb.r
  %i.ex = add nuw i64 %i.eu, %i.ei
  %.not80.i.i = icmp ugt i64 %i.ex, %i.et
  br i1 %.not80.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded.exit.i, label %bb.s

bb.s:                                             ; preds = %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i.i.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #41, !noalias !2682
  unreachable

_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded.exit.i: ; preds = %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i.i.i
  %i.ey = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 %i.e, ptr noundef nonnull readonly align 8 %i.dc, i64 noundef range(i64 4, 7) %..i.i.i.i.i) #36, !noalias !2683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2684
  store i64 %i.ey, ptr %i.c, align 8, !noalias !2684
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.c) #36, !noalias !2683, !srcloc !37
  %i.ez = load i64, ptr %i.c, align 8, !noalias !2684, !noundef !15
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ez, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2684
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i.i.i, label %vector.body75.1

vector.body75.1:                                  ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded.exit.i
  %wide.load78 = load <2 x i64>, ptr %i.e, align 16, !alias.scope !2672, !noalias !2671
  %wide.load78.1 = load <2 x i64>, ptr %i.cp, align 16, !alias.scope !2672, !noalias !2671
  %6 = or <2 x i64> %wide.load78.1, %wide.load78  ; 2 uses
  %wide.load78.2 = load <2 x i64>, ptr %i.cq, align 16
  %7 = or <2 x i64> %wide.load78.2, %6
  %.lcssa86 = select i1 %i.ef, <2 x i64> %7, <2 x i64> %6
  %8 = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa86)
  %i.fa = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %8) #36, !noalias !2683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2685
  store i64 %i.fa, ptr %i.d, align 8, !noalias !2685
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.d) #36, !noalias !2683, !srcloc !37
  %i.fb = load i64, ptr %i.d, align 8, !noalias !2685, !noundef !15
  %.not.i.not.i.i.i.not.i.i = icmp eq i64 %i.fb, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2671
  br i1 %.not.i.not.i.i.i.not.i.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29generate_private_scalar_bytes.exit.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i: ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i.i.i, %vector.body75.1, %bb.m
  %exitcond.not.i.i = icmp eq i32 %i.ed, 100
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.l

_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i.i.i: ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded.exit.i, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2671
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29generate_private_scalar_bytes.exit.i: ; preds = %vector.body75.1
  %i.fc = xor i1 %i.bu, %i.db
  br i1 %i.fc, label %.loopexit.i, label %bb.t

bb.t:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29generate_private_scalar_bytes.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2686
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.o, i8 0, i64 48, i1 false), !noalias !2686
  call void @llvm.experimental.noalias.scope.decl(metadata !2687)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2688
  store ptr %i.o, ptr %i.m, align 8, !noalias !2688
  store i64 %..i.i.i, ptr %i.ca, align 8, !noalias !2688
  store i64 0, ptr %i.cb, align 8, !noalias !2688
  %i.fd = call fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef range(i64 0, -9223372036854775808) %..i16.i, i64 noundef range(i64 4, 7) %..i.i.i), !noalias !2689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2688
  %i.fe = extractvalue { i64, i64 } %i.fd, 0
  %i.ff = trunc nuw i64 %i.fe to i1
  br i1 %i.ff, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i.i, !prof !29

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i.i: ; preds = %bb.t
  %i.fg = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 %i.o, ptr noundef nonnull readonly align 8 %i.bq, i64 noundef range(i64 4, 7) %..i.i.i) #36, !noalias !2690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2691
  store i64 %i.fg, ptr %i.l, align 8, !noalias !2691
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.l) #36, !noalias !2690, !srcloc !37
  %i.fh = load i64, ptr %i.l, align 8, !noalias !2691, !noundef !15
  %.not.i.i.i.i.i.i = icmp eq i64 %i.fh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2691
  br i1 %.not.i.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i.i.i, label %vector.body68.1

vector.body68.1:                                  ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i.i
  %wide.load71 = load <2 x i64>, ptr %i.o, align 16, !alias.scope !2687, !noalias !2686
  %wide.load71.1 = load <2 x i64>, ptr %i.cr, align 16, !alias.scope !2687, !noalias !2686
  %i.fi = or <2 x i64> %wide.load71.1, %wide.load71 ; 2 uses
  %wide.load71.2 = load <2 x i64>, ptr %i.cs, align 16
  %i.fj = or <2 x i64> %wide.load71.2, %i.fi
  %.lcssa87 = select i1 %i.bu, <2 x i64> %i.fj, <2 x i64> %i.fi
  %i.fk = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa87)
  %i.fl = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.fk) #36, !noalias !2690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2692
  store i64 %i.fl, ptr %i.n, align 8, !noalias !2692
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.n) #36, !noalias !2690, !srcloc !37
  %i.fm = load i64, ptr %i.n, align 8, !noalias !2692, !noundef !15
  %.not.i.not.i.i.i.i = icmp eq i64 %i.fm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2692
  br i1 %.not.i.not.i.i.i.i, label %bb.u, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i.i.i: ; preds = %vector.body68.1, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2686
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29generate_private_scalar_bytes.exit.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i, %bb.l, %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2668
  store i64 1, ptr %0, align 8, !alias.scope !2659
  br label %bb.z

bb.u:                                             ; preds = %vector.body68.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 16 dereferenceable(48) %i.o, i64 48, i1 false), !noalias !2660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2660
  call void @llvm.experimental.noalias.scope.decl(metadata !2693)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2694
  call void @llvm.experimental.noalias.scope.decl(metadata !2695)
  %i.fn = load ptr, ptr %i.bg, align 8, !alias.scope !2696, !noalias !2667, !nonnull !15, !align !17, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2697
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.cc, i64 48, i1 false), !noalias !2698
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !2699, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2697
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i8 0, i64 48, i1 false), !noalias !2697
  call void %i.fp(ptr noundef nonnull %i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ae, ptr noundef nonnull %i.j) #36, !noalias !2700, !inline_history !2635
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !2701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2697
  %i.fq = load ptr, ptr %i.cd, align 8, !alias.scope !2693, !noalias !2667, !nonnull !15, !noundef !15
  call void %i.fq(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.k), !noalias !2702, !inline_history !2636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2660
  %i.fr = load ptr, ptr %i.ce, align 8, !noalias !2667, !nonnull !15, !noundef !15
  call void %i.fr(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ae), !noalias !2667, !inline_history !2637
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2660
  %.val9.i = load ptr, ptr %i.cf, align 8, !noalias !2667
  call fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key20affine_from_jacobian(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.aa, ptr %.val9.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ac), !noalias !2667
  %i.fs = load i64, ptr %i.aa, align 8, !range !22, !noalias !2660, !noundef !15
  %i.ft = trunc nuw i64 %i.fs to i1
  br i1 %i.ft, label %bb.v, label %vector.ph60

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2660
  store i64 1, ptr %0, align 8, !alias.scope !2659
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i)
  br label %bb.x

vector.ph60:                                      ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.42.i, ptr noundef nonnull align 8 dereferenceable(96) %i.cg, i64 96, i1 false), !noalias !2660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.42.i, i64 48, i1 false), !noalias !2660
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cj, i8 0, i64 40, i1 false), !noalias !2660
  store i64 1, ptr %i.w, align 8, !noalias !2660
  %i.fu = load ptr, ptr %i.bi, align 8, !noalias !2667, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, i8 0, i64 48, i1 false), !noalias !2660
  call void %i.fu(ptr noundef nonnull %i.v, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.w) #36, !noalias !2667, !inline_history !2637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !2660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2660
  call void @ring_core_0_17_16000__LIMBS_reduce_once(ptr noundef nonnull align 8 %i.h, ptr noundef nonnull readonly align 8 %i.bq, i64 noundef range(i64 0, 1152921504606846976) %..i.i.i) #36, !noalias !2704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !2705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2660
  %i.fv = load ptr, ptr %i.ch, align 8, !noalias !2667, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 0, i64 48, i1 false), !noalias !2660
  call void %i.fv(ptr noundef nonnull %i.u, ptr noundef nonnull readonly %i.ci, ptr noundef nonnull %i.z) #36, !noalias !2667, !inline_history !2637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false), !noalias !2660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2660
  call void @ring_core_0_17_16000__LIMBS_add_mod(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.af, ptr noundef nonnull readonly align 8 %i.bq, i64 noundef range(i64 0, 1152921504606846976) %..i.i.i) #36, !noalias !2706
  %i.fw = load ptr, ptr %i.ch, align 8, !noalias !2667, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, i8 0, i64 48, i1 false), !noalias !2660
  call void %i.fw(ptr noundef nonnull %i.t, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.x) #36, !noalias !2667, !inline_history !2637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false), !noalias !2660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2660
  %.val15.i = load i8, ptr %i.bm, align 8, !range !34, !noalias !2667, !noundef !15
  call void @llvm.experimental.noalias.scope.decl(metadata !2707)
  %i.fx = trunc nuw i8 %.val15.i to i1
  %wide.load64 = load <2 x i64>, ptr %i.z, align 16, !alias.scope !2707, !noalias !2660
  %wide.load64.1 = load <2 x i64>, ptr %i.ct, align 16, !alias.scope !2707, !noalias !2660
  %i.fy = or <2 x i64> %wide.load64.1, %wide.load64 ; 2 uses
  %wide.load64.2 = load <2 x i64>, ptr %i.cu, align 16
  %i.fz = or <2 x i64> %wide.load64.2, %i.fy
  %.lcssa88 = select i1 %i.fx, <2 x i64> %i.fz, <2 x i64> %i.fy
  %i.ga = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa88)
  %i.gb = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.ga) #36, !noalias !2708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2709
  store i64 %i.gb, ptr %i.g, align 8, !noalias !2709
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.g) #36, !noalias !2708, !srcloc !37
  %i.gc = load i64, ptr %i.g, align 8, !noalias !2709, !noundef !15
  %.not12.i = icmp eq i64 %i.gc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2709
  br i1 %.not12.i, label %vector.ph, label %bb.y

vector.ph:                                        ; preds = %vector.ph60
  %.val14.i = load i8, ptr %i.bm, align 8, !range !34, !noalias !2667, !noundef !15
  call void @llvm.experimental.noalias.scope.decl(metadata !2710)
  %i.gd = trunc nuw i8 %.val14.i to i1
  %wide.load = load <2 x i64>, ptr %i.y, align 16, !alias.scope !2710, !noalias !2660
  %wide.load.1 = load <2 x i64>, ptr %i.cv, align 16, !alias.scope !2710, !noalias !2660
  %i.ge = or <2 x i64> %wide.load.1, %wide.load   ; 2 uses
  %wide.load.2 = load <2 x i64>, ptr %i.cw, align 16
  %i.gf = or <2 x i64> %wide.load.2, %i.ge
  %.lcssa89 = select i1 %i.gd, <2 x i64> %i.gf, <2 x i64> %i.ge
  %i.gg = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa89)
  %i.gh = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.gg) #36, !noalias !2711
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2712
  store i64 %i.gh, ptr %i.f, align 8, !noalias !2712
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.f) #36, !noalias !2711, !srcloc !37
  %i.gi = load i64, ptr %i.f, align 8, !noalias !2712, !noundef !15
  %.not13.i = icmp eq i64 %i.gi, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2712
  br i1 %.not13.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %vector.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2660
  %i.gj = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(113) %i.s, i8 0, i64 113, i1 false), !noalias !2660
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.gl = load ptr, ptr %i.gk, align 8, !noalias !2667, !nonnull !15, !noundef !15
  %i.gm = call noundef i64 %i.gl(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias nofree noundef nonnull %i.gj, i64 noundef 105), !noalias !2667, !inline_history !2637
  store i64 %i.gm, ptr %i.s, align 8, !noalias !2660
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.gn, ptr noundef nonnull align 8 dereferenceable(120) %i.s, i64 120, i1 false), !noalias !2713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2660
  store i64 0, ptr %0, align 8, !alias.scope !2659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2660
end_hunk_0
