Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RNvMs0_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signingNtB5_12EcdsaKeyPair3new:bb.a
  %.not.i.i.i.i = icmp eq i64 %i.al, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2545
  br i1 %.not.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i, label %vector.body.1

vector.body.1:                                    ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i
  %wide.load = load <2 x i64>, ptr %i.l, align 16, !alias.scope !2541, !noalias !2540
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load.1 = load <2 x i64>, ptr %i.am, align 16, !alias.scope !2541, !noalias !2540
  %i.an = or <2 x i64> %wide.load.1, %wide.load   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %wide.load.2 = load <2 x i64>, ptr %i.ao, align 16
  %i.ap = or <2 x i64> %wide.load.2, %i.an
  %.lcssa = select i1 %i.ae, <2 x i64> %i.ap, <2 x i64> %i.an
  %i.aq = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa)
  %i.ar = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.aq) #36, !noalias !2544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2546
  store i64 %i.ar, ptr %i.k, align 8, !noalias !2546
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.k) #36, !noalias !2544, !srcloc !37
  %i.as = load i64, ptr %i.k, align 8, !noalias !2546, !noundef !15
  %.not.i.not.i.i = icmp eq i64 %i.as, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2546
  br i1 %.not.i.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i: ; preds = %vector.body.1, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2540
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i, %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #41, !noalias !2547
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit: ; preds = %vector.body.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 16 dereferenceable(48) %i.l, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !2548)
  %i.at = load ptr, ptr %i.t, align 8, !alias.scope !2548, !nonnull !15, !align !17, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2549
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.au, i64 48, i1 false), !noalias !2550
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !2549, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2549
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false), !noalias !2549
  call void %i.aw(ptr noundef nonnull %i.g, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.o, ptr noundef nonnull %i.h) #36, !noalias !2551, !inline_history !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2549
  %.val17 = load ptr, ptr %1, align 8, !nonnull !15, !align !17, !noundef !15
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val18 = load ptr, ptr %i.ax, align 8          ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.val19 = load ptr, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2553
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.f, i8 0, i64 64, i1 false), !noalias !2553
  %i.az = getelementptr inbounds nuw i8, ptr %.val17, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !noalias !2553, !noundef !15 ; 4 uses
  %i.bb = icmp ult i64 %i.ba, 65
  br i1 %i.bb, label %bb.g, label %bb.f, !prof !36

bb.f:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ba, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #41, !noalias !2553
  unreachable

bb.g:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit
  %i.bc = call noundef zeroext i1 %.val19(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull %i.f, i64 noundef %i.ba) #40, !noalias !2553, !inline_history !2527
  br i1 %i.bc, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2553
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18) ]
  %i.bd = load i32, ptr %.val18, align 8, !range !45, !noalias !2553, !noundef !15
  %i.be = trunc nuw i32 %i.bd to i1
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %.val18, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 4 dereferenceable(32) %i.bf, i64 32, i1 false), !noalias !2553
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %.sroa.06.0.copyload.i = load ptr, ptr %i.bg, align 8, !noalias !2553
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.47.0..sroa_idx.i, i64 32, i1 false), !noalias !2553
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val18, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58.0..sroa_idx.i, i64 24, i1 false), !noalias !2553
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.55.0.i = phi ptr [ %.val18, %bb.i ], [ %.sroa.06.0.copyload.i, %bb.j ]
  %.sroa.04.0.i = phi ptr [ null, %bb.i ], [ %.val18, %bb.j ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.e, i8 0, i64 128, i1 false), !noalias !2553
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr %.sroa.04.0.i, ptr %i.bh, align 8, !noalias !2553
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store ptr %.sroa.55.0.i, ptr %.sroa.03.sroa.4.0..sroa_idx.i, align 8, !noalias !2553
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !2553
  %.sroa.03.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !2553
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2553
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.ba), !noalias !2553
  %i.bi = load i64, ptr %i.aa, align 8, !noalias !2554, !noundef !15 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 49
  br i1 %i.bj, label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit.i, label %bb.l, !prof !36

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bi, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #41, !noalias !2554
  unreachable

_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit.i: ; preds = %bb.k
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.bi), !noalias !2555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 8 dereferenceable(208) %i.e, i64 208, i1 false), !noalias !2553
  %i.bk = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4, !noalias !2556
  %.not.i.i.i.i21 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i21, label %bb.m, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i.i, !prof !16

bb.m:                                             ; preds = %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit.i
  call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i.i: ; preds = %bb.m, %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.bl, i64 80, i1 false), !noalias !2558
  call fastcc void @_RNvMNtCs5yxAJGbRKSL_4ring6digestNtB2_12BlockContext10try_finish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.d), !noalias !2559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2557
  %i.bm = load ptr, ptr %i.c, align 8, !noalias !2557, !noundef !15 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !2560 ; 2 uses
  br i1 %i.bn, label %bb.n, label %bb.r

bb.n:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i.i
  %i.bq = trunc nuw i64 %i.bp to i1
  br i1 %i.bq, label %bb.o, label %bb.p, !prof !16

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #41, !noalias !2559
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2557
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #41, !noalias !2561
  unreachable

bb.q:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2553
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
  %.sroa.11.16.copyload = load i64, ptr %.sroa.8.0..sroa_idx8.i.i, align 8, !noalias !2562
  %.sroa.15.16..sroa.8.0..sroa_idx8.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.610.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.15.16..sroa.8.0..sroa_idx8.i.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2553
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2669)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2670
  %i.as = load i32, ptr %i.ar, align 8, !range !45, !alias.scope !2669, !noundef !15
  %i.at = trunc nuw i32 %i.as to i1
  br i1 %i.at, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.au, i64 32, i1 false), !noalias !2671
  br label %bb.e

bb.d:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.av, align 8, !alias.scope !2669
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.42.0..sroa_idx.i, i64 32, i1 false), !noalias !2671
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.53.0..sroa_idx.i, i64 24, i1 false), !noalias !2671
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.i = phi ptr [ %i.ar, %bb.c ], [ %.sroa.0.0.copyload.i, %bb.d ]
  %.sroa.01.0.i = phi ptr [ null, %bb.c ], [ %i.ar, %bb.d ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ak, i8 0, i64 128, i1 false), !noalias !2670
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 128 ; 2 uses
  store ptr %.sroa.01.0.i, ptr %i.aw, align 8, !noalias !2670
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  store ptr %.sroa.5.0.i, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !2670
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !2670
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !2670
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 200
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2670
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5), !noalias !2672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2670
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.aj, ptr noundef nonnull align 8 dereferenceable(208) %i.ak, i64 208, i1 false), !noalias !2670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2673
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(80) %i.aw, i64 80, i1 false), !noalias !2670
  call fastcc void @_RNvMNtCs5yxAJGbRKSL_4ring6digestNtB2_12BlockContext10try_finish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ai, ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.aj), !noalias !2674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2673
  %i.ax = load ptr, ptr %i.ai, align 8, !noalias !2673, !noundef !15 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !2675 ; 2 uses
  br i1 %i.ay, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bb = trunc nuw i64 %i.ba to i1
  br i1 %i.bb, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #41, !noalias !2674
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2670
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  store i64 1, ptr %0, align 8
  br label %bb.y

bb.i:                                             ; preds = %bb.e
  %.sroa.9.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.516.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9.0..sroa_idx4, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2670
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2676)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !2677, !nonnull !15, !align !17, !noundef !15 ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !2677, !nonnull !15, !align !17, !noundef !15 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !2677, !nonnull !15, !align !17, !noundef !15 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !2677, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2677
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 256 ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 8, !range !34, !noalias !2677, !noundef !15 ; 2 uses
  store ptr %i.bl, ptr %i.ag, align 8, !noalias !2677
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i8 %i.bn, ptr %i.bo, align 8, !noalias !2677
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.bi, ptr %i.bp, align 8, !noalias !2677
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 112 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2677
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 89
  %i.bs = load i8, ptr %i.br, align 1, !range !44, !noalias !2677, !noundef !15
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = trunc nuw i8 %i.bn to i1                ; 4 uses
  %..i.i = select i1 %i.bu, i64 48, i64 32
  %.sroa.5.0.i.i = call i64 @llvm.umin.i64(i64 range(i64 20, 65) %i.bt, i64 %..i.i)
  %..i.i.i = select i1 %i.bu, i64 6, i64 4        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2678
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false), !noalias !2678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2679
  store ptr %i.r, ptr %i.q, align 8, !noalias !2679
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %..i.i.i, ptr %i.bv, align 8, !noalias !2679
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %i.bw, align 8, !noalias !2679
  %i.bx = call fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.415.0..sroa_idx, i64 noundef range(i64 20, 49) %.sroa.5.0.i.i, i64 noundef range(i64 4, 7) %..i.i.i), !noalias !2680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2679
  %i.by = extractvalue { i64, i64 } %i.bx, 0
  %i.bz = trunc nuw i64 %i.by to i1
  br i1 %i.bz, label %bb.j, label %_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa13digest_scalar13digest_scalar.exit.i, !prof !16

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2678
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #41, !noalias !2681
  unreachable

_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa13digest_scalar13digest_scalar.exit.i: ; preds = %bb.i
  call void @ring_core_0_17_16000__LIMBS_reduce_once(ptr noundef nonnull align 8 %i.r, ptr noundef nonnull readonly align 8 %i.bq, i64 noundef range(i64 0, 1152921504606846976) %..i.i.i) #36, !noalias !2682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !2683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2678
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

bb.k:                                             ; preds = %bb.w
  store i64 1, ptr %0, align 8, !alias.scope !2676
  br label %_RNvMs0_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signingNtB5_12EcdsaKeyPair11sign_digest.exit

.split.i:                                         ; preds = %bb.w, %_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa13digest_scalar13digest_scalar.exit.i
  %.sroa.03.023.i = phi i32 [ 0, %_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa13digest_scalar13digest_scalar.exit.i ], [ %i.cx, %bb.w ]
  %i.cx = add nuw nsw i32 %.sroa.03.023.i, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2677
  %i.cy = load ptr, ptr %i.bj, align 8, !noalias !2684, !nonnull !15, !align !17, !noundef !15
  %.val6.i = load ptr, ptr %i.cy, align 8, !noalias !2684, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2685
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.p, i8 0, i64 48, i1 false), !noalias !2685
  %i.cz = getelementptr inbounds nuw i8, ptr %.val6.i, i64 256 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 8, !range !34, !noalias !2686, !noundef !15
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
  %i.ec = call noundef zeroext i1 @_RNvXs2_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signingNtB5_11NonceRandomNtNtNtBd_4rand6sealed12SecureRandom9fill_impl(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull %i.p, i64 noundef range(i64 0, -9223372036854775808) %..i16.i), !noalias !2686
  br i1 %i.ec, label %.loopexit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ed = add nuw nsw i32 %.sroa.01.01.i.i, 1     ; 2 uses
  %i.ee = load i8, ptr %i.cz, align 8, !range !34, !noalias !2687, !noundef !15
  %i.ef = trunc nuw i8 %i.ee to i1                ; 4 uses
  %..i.i.i.i.i = select i1 %i.ef, i64 6, i64 4    ; 5 uses
  %i.eg = xor i1 %i.db, %i.ef
  br i1 %i.eg, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2688
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.e, i8 0, i64 48, i1 false), !noalias !2688
  call void @llvm.experimental.noalias.scope.decl(metadata !2689), !noalias !2690
  %i.eh = icmp samesign ugt i64 %i.dd, %..i.i.i.i.i
  br i1 %i.eh, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i.i.i, label %.lr.ph.i.i.i, !prof !16

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.ei = sub nuw nsw i64 %..i.i.i.i.i, %i.dd     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2691
  store i64 0, ptr %i.b, align 8, !noalias !2691
  %i.ej = load i64, ptr %i.df, align 1, !alias.scope !2692, !noalias !2693 ; 2 uses
  store i64 %i.ej, ptr %i.b, align 8, !alias.scope !2692, !noalias !2693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2691
  %i.ek = call i64 @llvm.bswap.i64(i64 %i.ej)
  store i64 %i.ek, ptr %i.e, align 16, !alias.scope !2694, !noalias !2695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2691
  store i64 0, ptr %i.b, align 8, !noalias !2691
  %i.el = load i64, ptr %i.dh, align 1, !alias.scope !2692, !noalias !2693 ; 2 uses
  store i64 %i.el, ptr %i.b, align 8, !alias.scope !2692, !noalias !2693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2691
  %i.em = call i64 @llvm.bswap.i64(i64 %i.el)
  store i64 %i.em, ptr %i.ck, align 8, !alias.scope !2694, !noalias !2695
  br i1 %.not.i46.i.i.1.not, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i, label %bb.o

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.thread.i: ; preds = %9, %8, %bb.o
  %.lcssa.sroa.phi = phi ptr [ %.lcssa.sroa.gep95, %9 ], [ %.lcssa.sroa.gep93, %8 ], [ %.lcssa.sroa.gep91, %bb.o ]
  %.lcssa = phi i64 [ 6, %9 ], [ 4, %8 ], [ 2, %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2691
  %6 = icmp eq i64 %..i.i.i.i.i, %.lcssa
  br i1 %6, label %.loopexit39.i, label %.lr.ph.i.i.i.i.i.i.i.thread.i

.lr.ph.i.i.i.i.i.i.i.thread.i:                    ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.thread.i
  store i64 0, ptr %.lcssa.sroa.phi, align 8, !alias.scope !2694, !noalias !2695
  %7 = add nuw nsw i64 %.lcssa, 1
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2691
  store i64 0, ptr %i.b, align 8, !noalias !2691
  br i1 %.not.i.i.i.i.i.i24.i.2, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.thread.i, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dm, ptr nonnull readonly align 1 %i.dk, i64 range(i64 0, 129) %i.dj, i1 false), !alias.scope !2692, !noalias !2693
  %.sroa.0.0.copyload.pre.i.i.i.i.i.2 = load i64, ptr %i.b, align 8, !noalias !2691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2691
  %i.en = call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.pre.i.i.i.i.i.2)
  store i64 %i.en, ptr %i.cl, align 16, !alias.scope !2694, !noalias !2695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2691
  store i64 0, ptr %i.b, align 8, !noalias !2691
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dr, ptr nonnull readonly align 1 %i.dp, i64 range(i64 0, 129) %i.do, i1 false), !alias.scope !2692, !noalias !2693
  %.sroa.0.0.copyload.pre.i.i.i.i.i.3 = load i64, ptr %i.b, align 8, !noalias !2691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2691
  %i.eo = call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.pre.i.i.i.i.i.3)
  store i64 %i.eo, ptr %i.cm, align 8, !alias.scope !2694, !noalias !2695
  br i1 %.not.i46.i.i.3, label %8, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i

8:                                                ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2691
  store i64 0, ptr %i.b, align 8, !noalias !2691
  br i1 %i.db, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.4, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.thread.i

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.4: ; preds = %8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dw, ptr nonnull readonly align 1 %i.du, i64 range(i64 0, 129) %i.dt, i1 false), !alias.scope !2692, !noalias !2693
  %.sroa.0.0.copyload.pre.i.i.i.i.i.4 = load i64, ptr %i.b, align 8, !noalias !2691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2691
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i.i.i.i.4, label %.loopexit39.i

.lr.ph.i.i.i.i.i.i.i.i.4:                         ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.4
  %i.ep = call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.pre.i.i.i.i.i.4)
  store i64 %i.ep, ptr %i.cn, align 16, !alias.scope !2694, !noalias !2695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2691
  store i64 0, ptr %i.b, align 8, !noalias !2691
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eb, ptr nonnull readonly align 1 %i.dz, i64 range(i64 0, 129) %i.dy, i1 false), !alias.scope !2692, !noalias !2693
  %.sroa.0.0.copyload.pre.i.i.i.i.i.5 = load i64, ptr %i.b, align 8, !noalias !2691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2691
  %i.eq = call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.pre.i.i.i.i.i.5)
  store i64 %i.eq, ptr %i.co, align 8, !alias.scope !2694, !noalias !2695
  br i1 %.not.i46.i.i.5, label %9, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i

9:                                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2691
  store i64 0, ptr %i.b, align 8, !noalias !2691
  br label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.thread.i

.loopexit39.i:                                    ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.thread.i, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.4
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #41, !noalias !2696
  unreachable

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.i.i.thread.i
  %i.er = phi i64 [ %.lcssa, %.lr.ph.i.i.i.i.i.i.i.thread.i ], [ 3, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2 ], [ 1, %.lr.ph.i.i.i ], [ 5, %.lr.ph.i.i.i.i.i.i.i.i.4 ] ; 2 uses
  %i.es = phi i64 [ %7, %.lr.ph.i.i.i.i.i.i.i.thread.i ], [ 4, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2 ], [ 2, %.lr.ph.i.i.i ], [ 6, %.lr.ph.i.i.i.i.i.i.i.i.4 ] ; 2 uses
  %.not.not.i = icmp samesign ugt i64 %i.dd, %i.er
  br i1 %.not.not.i, label %bb.p, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i.i.i

bb.p:                                             ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i
  %i.et = icmp eq i64 %..i.i.i.i.i, %i.dd
  br i1 %i.et, label %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.p
  %.idx.i.i.i = shl nuw nsw i64 %i.ei, 3
  %i.eu = getelementptr [8 x i8], ptr %i.e, i64 %i.es
  call void @llvm.memset.p0.i64(ptr align 8 %i.eu, i8 0, i64 %.idx.i.i.i, i1 false), !alias.scope !2697, !noalias !2698
  br label %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i.i.i

_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i, %bb.p
  %i.ev = add nuw i64 %i.es, %i.ei
  %.not80.i.i = icmp ugt i64 %i.ev, %i.er
  br i1 %.not80.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded.exit.i, label %bb.q

bb.q:                                             ; preds = %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i.i.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #41, !noalias !2699
  unreachable

_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded.exit.i: ; preds = %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i.i.i
  %i.ew = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 %i.e, ptr noundef nonnull readonly align 8 %i.dc, i64 noundef range(i64 4, 7) %..i.i.i.i.i) #36, !noalias !2700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2701
  store i64 %i.ew, ptr %i.c, align 8, !noalias !2701
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.c) #36, !noalias !2700, !srcloc !37
  %i.ex = load i64, ptr %i.c, align 8, !noalias !2701, !noundef !15
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ex, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2701
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i.i.i, label %vector.body75.1

vector.body75.1:                                  ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded.exit.i
  %wide.load78 = load <2 x i64>, ptr %i.e, align 16, !alias.scope !2689, !noalias !2688
  %wide.load78.1 = load <2 x i64>, ptr %i.cp, align 16, !alias.scope !2689, !noalias !2688
  %i.ey = or <2 x i64> %wide.load78.1, %wide.load78 ; 2 uses
  %wide.load78.2 = load <2 x i64>, ptr %i.cq, align 16
  %i.ez = or <2 x i64> %wide.load78.2, %i.ey
  %.lcssa86 = select i1 %i.ef, <2 x i64> %i.ez, <2 x i64> %i.ey
  %i.fa = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa86)
  %i.fb = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.fa) #36, !noalias !2700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2702
  store i64 %i.fb, ptr %i.d, align 8, !noalias !2702
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.d) #36, !noalias !2700, !srcloc !37
  %i.fc = load i64, ptr %i.d, align 8, !noalias !2702, !noundef !15
  %.not.i.not.i.i.i.not.i.i = icmp eq i64 %i.fc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2688
  br i1 %.not.i.not.i.i.i.not.i.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29generate_private_scalar_bytes.exit.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i: ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i.i.i, %vector.body75.1, %bb.m
  %exitcond.not.i.i = icmp eq i32 %i.ed, 100
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.l

_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i.i.i: ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded.exit.i, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2688
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29generate_private_scalar_bytes.exit.i: ; preds = %vector.body75.1
  %i.fd = xor i1 %i.bu, %i.db
  br i1 %i.fd, label %.loopexit.i, label %bb.r

bb.r:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29generate_private_scalar_bytes.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2703
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.o, i8 0, i64 48, i1 false), !noalias !2703
  call void @llvm.experimental.noalias.scope.decl(metadata !2704)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2705
  store ptr %i.o, ptr %i.m, align 8, !noalias !2705
  store i64 %..i.i.i, ptr %i.ca, align 8, !noalias !2705
  store i64 0, ptr %i.cb, align 8, !noalias !2705
  %i.fe = call fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef range(i64 0, -9223372036854775808) %..i16.i, i64 noundef range(i64 4, 7) %..i.i.i), !noalias !2706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2705
  %i.ff = extractvalue { i64, i64 } %i.fe, 0
  %i.fg = trunc nuw i64 %i.ff to i1
  br i1 %i.fg, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i.i, !prof !29

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i.i: ; preds = %bb.r
  %i.fh = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 %i.o, ptr noundef nonnull readonly align 8 %i.bq, i64 noundef range(i64 4, 7) %..i.i.i) #36, !noalias !2707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2708
  store i64 %i.fh, ptr %i.l, align 8, !noalias !2708
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.l) #36, !noalias !2707, !srcloc !37
  %i.fi = load i64, ptr %i.l, align 8, !noalias !2708, !noundef !15
  %.not.i.i.i.i.i.i = icmp eq i64 %i.fi, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2708
  br i1 %.not.i.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i.i.i, label %vector.body68.1

vector.body68.1:                                  ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i.i
  %wide.load71 = load <2 x i64>, ptr %i.o, align 16, !alias.scope !2704, !noalias !2703
  %wide.load71.1 = load <2 x i64>, ptr %i.cr, align 16, !alias.scope !2704, !noalias !2703
  %i.fj = or <2 x i64> %wide.load71.1, %wide.load71 ; 2 uses
  %wide.load71.2 = load <2 x i64>, ptr %i.cs, align 16
  %i.fk = or <2 x i64> %wide.load71.2, %i.fj
  %.lcssa87 = select i1 %i.bu, <2 x i64> %i.fk, <2 x i64> %i.fj
  %i.fl = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa87)
  %i.fm = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.fl) #36, !noalias !2707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2709
  store i64 %i.fm, ptr %i.n, align 8, !noalias !2709
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.n) #36, !noalias !2707, !srcloc !37
  %i.fn = load i64, ptr %i.n, align 8, !noalias !2709, !noundef !15
  %.not.i.not.i.i.i.i = icmp eq i64 %i.fn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2709
  br i1 %.not.i.not.i.i.i.i, label %bb.s, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i.i.i: ; preds = %vector.body68.1, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2703
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29generate_private_scalar_bytes.exit.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i, %bb.l, %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2685
  store i64 1, ptr %0, align 8, !alias.scope !2676
  br label %bb.x

bb.s:                                             ; preds = %vector.body68.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 16 dereferenceable(48) %i.o, i64 48, i1 false), !noalias !2677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2677
  call void @llvm.experimental.noalias.scope.decl(metadata !2710)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2711
  call void @llvm.experimental.noalias.scope.decl(metadata !2712)
  %i.fo = load ptr, ptr %i.bg, align 8, !alias.scope !2713, !noalias !2684, !nonnull !15, !align !17, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.cc, i64 48, i1 false), !noalias !2715
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !2716, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2714
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i8 0, i64 48, i1 false), !noalias !2714
  call void %i.fq(ptr noundef nonnull %i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ae, ptr noundef nonnull %i.j) #36, !noalias !2717, !inline_history !2652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !2718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2714
  %i.fr = load ptr, ptr %i.cd, align 8, !alias.scope !2710, !noalias !2684, !nonnull !15, !noundef !15
  call void %i.fr(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.k), !noalias !2719, !inline_history !2653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2711
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2677
  %i.fs = load ptr, ptr %i.ce, align 8, !noalias !2684, !nonnull !15, !noundef !15
  call void %i.fs(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ae), !noalias !2684, !inline_history !2654
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2677
  %.val9.i = load ptr, ptr %i.cf, align 8, !noalias !2684
  call fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key20affine_from_jacobian(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.aa, ptr %.val9.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ac), !noalias !2684
  %i.ft = load i64, ptr %i.aa, align 8, !range !22, !noalias !2677, !noundef !15
  %i.fu = trunc nuw i64 %i.ft to i1
  br i1 %i.fu, label %bb.t, label %vector.ph60

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2677
  store i64 1, ptr %0, align 8, !alias.scope !2676
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i)
  br label %bb.v

vector.ph60:                                      ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.42.i, ptr noundef nonnull align 8 dereferenceable(96) %i.cg, i64 96, i1 false), !noalias !2677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.42.i, i64 48, i1 false), !noalias !2677
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2677
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cj, i8 0, i64 40, i1 false), !noalias !2677
  store i64 1, ptr %i.w, align 8, !noalias !2677
  %i.fv = load ptr, ptr %i.bi, align 8, !noalias !2684, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2677
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, i8 0, i64 48, i1 false), !noalias !2677
  call void %i.fv(ptr noundef nonnull %i.v, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.w) #36, !noalias !2684, !inline_history !2654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !2677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2677
  call void @ring_core_0_17_16000__LIMBS_reduce_once(ptr noundef nonnull align 8 %i.h, ptr noundef nonnull readonly align 8 %i.bq, i64 noundef range(i64 0, 1152921504606846976) %..i.i.i) #36, !noalias !2721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !2722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2720
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2677
  %i.fw = load ptr, ptr %i.ch, align 8, !noalias !2684, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2677
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 0, i64 48, i1 false), !noalias !2677
  call void %i.fw(ptr noundef nonnull %i.u, ptr noundef nonnull readonly %i.ci, ptr noundef nonnull %i.z) #36, !noalias !2684, !inline_history !2654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false), !noalias !2677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2677
  call void @ring_core_0_17_16000__LIMBS_add_mod(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.af, ptr noundef nonnull readonly align 8 %i.bq, i64 noundef range(i64 0, 1152921504606846976) %..i.i.i) #36, !noalias !2723
  %i.fx = load ptr, ptr %i.ch, align 8, !noalias !2684, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2677
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, i8 0, i64 48, i1 false), !noalias !2677
  call void %i.fx(ptr noundef nonnull %i.t, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.x) #36, !noalias !2684, !inline_history !2654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false), !noalias !2677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2677
  %.val15.i = load i8, ptr %i.bm, align 8, !range !34, !noalias !2684, !noundef !15
  call void @llvm.experimental.noalias.scope.decl(metadata !2724)
  %i.fy = trunc nuw i8 %.val15.i to i1
  %wide.load64 = load <2 x i64>, ptr %i.z, align 16, !alias.scope !2724, !noalias !2677
  %wide.load64.1 = load <2 x i64>, ptr %i.ct, align 16, !alias.scope !2724, !noalias !2677
  %i.fz = or <2 x i64> %wide.load64.1, %wide.load64 ; 2 uses
  %wide.load64.2 = load <2 x i64>, ptr %i.cu, align 16
  %i.ga = or <2 x i64> %wide.load64.2, %i.fz
  %.lcssa88 = select i1 %i.fy, <2 x i64> %i.ga, <2 x i64> %i.fz
  %i.gb = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa88)
  %i.gc = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.gb) #36, !noalias !2725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2726
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5curve28p384_check_private_key_bytes:bb.a
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i, !prof !29

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i: ; preds = %bb.b
  %i.j = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 %i.d, ptr noundef nonnull readonly align 8 getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38410COMMON_OPS, i64 112), i64 noundef range(i64 4, 7) 6) #36, !noalias !5051
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5052
  store i64 %i.j, ptr %i.a, align 8, !noalias !5052
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.a) #36, !noalias !5051, !srcloc !37
  %i.k = load i64, ptr %i.a, align 8, !noalias !5052, !noundef !15
  %.not.i.i.i.i.i = icmp eq i64 %i.k, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5052
  br i1 %.not.i.i.i.i.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i
  %i.l = load <6 x i64>, ptr %i.d, align 8, !alias.scope !5048, !noalias !5047
  %i.m = call i64 @llvm.vector.reduce.or.v6i64(<6 x i64> %i.l)
  %i.n = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.m) #36, !noalias !5051
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5053
  store i64 %i.n, ptr %i.c, align 8, !noalias !5053
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.c) #36, !noalias !5051, !srcloc !37
  %i.o = load i64, ptr %i.c, align 8, !noalias !5053, !noundef !15
  %.not.i.not.i.i.i = icmp ne i64 %i.o, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5053
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i: ; preds = %.preheader.i.i.i.i.preheader, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i, %bb.b
  %.sroa.01.0.ph.i = phi i1 [ true, %bb.b ], [ %.not.i.not.i.i.i, %.preheader.i.i.i.i.preheader ], [ true, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5047
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit: ; preds = %bb.a, %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i
  %.sroa.01.0.i = phi i1 [ true, %bb.a ], [ %.sroa.01.0.ph.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i ]
  ret i1 %.sroa.01.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init() unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE11get_or_initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE11get_or_initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_.exit

_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE11get_or_initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring3rsa7padding3pss10pss_digest(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.7 = alloca [32 x i8], align 8            ; 3 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 2 uses
  %i.d = alloca [208 x i8], align 8               ; 5 uses
  %i.e = alloca [208 x i8], align 8               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load i32, ptr %1, align 8, !range !45, !noundef !15
  %i.g = trunc nuw i32 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(32) %i.h, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.i, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.42.0..sroa_idx, i64 32, i1 false)
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.53.0..sroa_idx, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.5.0 = phi ptr [ %1, %bb.b ], [ %.sroa.0.0.copyload, %bb.c ]
  %.sroa.01.0 = phi ptr [ null, %bb.b ], [ %1, %bb.c ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.e, i8 0, i64 128, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr %.sroa.01.0, ptr %i.j, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store ptr %.sroa.5.0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, i64 32, i1 false)
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 8)
  %i.k = load ptr, ptr %2, align 8, !nonnull !15, !align !17, !noundef !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 89
  %i.m = load i8, ptr %i.l, align 1, !range !44, !noundef !15
  %i.n = zext nneg i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.n)
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 8 dereferenceable(208) %i.e, i64 208, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !5063)
  %i.p = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4, !noalias !5064
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %bb.e, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i, !prof !16

bb.e:                                             ; preds = %bb.d
  call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i: ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5065
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.q, i64 80, i1 false), !noalias !5066
  call fastcc void @_RNvMNtCs5yxAJGbRKSL_4ring6digestNtB2_12BlockContext10try_finish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.d), !noalias !5066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5065
  %i.r = load ptr, ptr %i.c, align 8, !noalias !5065, !noundef !15 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !5067 ; 2 uses
  br i1 %i.s, label %bb.f, label %_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6finish.exit

bb.f:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #41, !noalias !5066
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5065
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #41, !noalias !5068
  unreachable

_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6finish.exit: ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i
  %.sroa.8.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx8.i, i64 56, i1 false), !noalias !5069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5065
  call void @llvm.experimental.noalias.scope.decl(metadata !5070)
  call void @llvm.experimental.noalias.scope.decl(metadata !5071)
  store ptr %i.r, ptr %0, align 8, !alias.scope !5068
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %.sroa.6.0..sroa_idx2.i, align 8, !alias.scope !5068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring3rsa7padding5pkcs112pkcs1_encode(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1, ptr noalias nofree noundef nonnull writeonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !15, !align !17, !noundef !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 89
  %i.f = load i8, ptr %i.e, align 1, !range !44, !noundef !15 ; 2 uses
  %i.g = zext nneg i8 %i.f to i64                 ; 4 uses
  %i.h = add i64 %i.c, %i.g                       ; 4 uses
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.h, -12
  br i1 %i.j, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234) #41
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = add nuw i64 %i.h, 11
  %.not = icmp ult i64 %3, %i.k
  br i1 %.not, label %bb.f, label %.split, !prof !16

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #41
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @236, i64 noundef 45, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #41
  unreachable

.split:                                           ; preds = %bb.d
  %i.l = sub nuw nsw i64 %3, %i.h                 ; 2 uses
  %i.m = add nsw i64 %i.l, -3                     ; 2 uses
  store i8 0, ptr %2, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 1, ptr %i.n, align 1
  %.not16 = icmp eq i64 %i.m, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.split
  %i.o = add nsw i64 %3, -4
  %i.p = add i64 %i.c, %i.g
  %i.q = sub i64 %i.o, %i.p
  %4 = tail call i64 @llvm.uadd.sat.i64(i64 %i.q, i64 1) ; 3 uses
  %min.iters.check = icmp ult i64 %4, 33
  br i1 %min.iters.check, label %.lr.ph.preheader23, label %vector.ph

.lr.ph.preheader23:                               ; preds = %vector.body, %.lr.ph.preheader
  %.sroa.01.015.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.r = and i64 %4, 31                           ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 32, i64 %i.r
  %n.vec = sub i64 %4, %i.t                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 18
  store <16 x i8> splat (i8 -1), ptr %i.v, align 1
  store <16 x i8> splat (i8 -1), ptr %i.w, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %.lr.ph.preheader23, label %vector.body, !llvm.loop !5072

._crit_edge:                                      ; preds = %bb.h, %.split
  %i.y = getelementptr i8, ptr %2, i64 %i.l       ; 3 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  store i8 0, ptr %i.z, align 1
  %i.aa = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull readonly align 1 %i.aa, i64 range(i64 0, -9223372036854775808) %i.c, i1 false), !alias.scope !5080
  %i.ab = load ptr, ptr %1, align 8, !nonnull !15, !align !17, !noundef !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 89
  %i.ad = load i8, ptr %i.ac, align 1, !range !44, !noundef !15 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5082)
  %.not.i12 = icmp eq i8 %i.f, %i.ad
  br i1 %.not.i12, label %_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs5yxAJGbRKSL_4ring.exit13, label %bb.g, !prof !19

.lr.ph:                                           ; preds = %.lr.ph.preheader23, %bb.h
  %.sroa.01.015 = phi i64 [ %i.ah, %bb.h ], [ %.sroa.01.015.ph, %.lr.ph.preheader23 ] ; 3 uses
  %exitcond = icmp eq i64 %.sroa.01.015, -2
  br i1 %exitcond, label %bb.i, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.ae = zext nneg i8 %i.ad to i64
  tail call void @_RNvNvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 0, -9223372036854775808) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #41, !noalias !5083
  unreachable

_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs5yxAJGbRKSL_4ring.exit13: ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.af, i64 range(i64 0, -9223372036854775808) %i.g, i1 false), !alias.scope !5083
  ret void

bb.h:                                             ; preds = %.lr.ph
  %i.ah = add nuw i64 %.sroa.01.015, 1            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.015
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store i8 -1, ptr %i.aj, align 1
  %exitcond17.not = icmp eq i64 %i.ah, %i.m
  br i1 %exitcond17.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5079

bb.i:                                             ; preds = %.lr.ph
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #41
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback9sub_block(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 %.0.val, i64 %.8.val) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = lshr i64 %.0.val, 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = and i64 %i.d, 6148914691236517205        ; 3 uses
  %i.g = shl nuw i64 %i.f, 1
  %i.h = xor i64 %i.g, %.0.val                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !5104, !noundef !15 ; 2 uses
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !5104, !noundef !15 ; 2 uses
  %i.n = xor i64 %i.k, %i.m
  %i.o = and i64 %i.n, 6148914691236517205        ; 2 uses
  %i.p = shl nuw i64 %i.o, 1
  %i.q = xor i64 %i.p, %i.j                       ; 2 uses
  %i.r = xor i64 %i.o, %i.m                       ; 2 uses
  %i.s = lshr i64 %.8.val, 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !5105, !noundef !15 ; 2 uses
  %i.v = xor i64 %i.u, %i.s
  %i.w = and i64 %i.v, 6148914691236517205        ; 2 uses
  %i.x = shl nuw i64 %i.w, 1
  %i.y = xor i64 %i.x, %.8.val                    ; 2 uses
  %i.z = xor i64 %i.w, %i.u                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !5106, !noundef !15 ; 2 uses
  %i.ac = lshr i64 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !5106, !noundef !15 ; 2 uses
  %i.af = xor i64 %i.ac, %i.ae
  %i.ag = and i64 %i.af, 6148914691236517205      ; 2 uses
  %i.ah = shl nuw i64 %i.ag, 1
  %i.ai = xor i64 %i.ah, %i.ab                    ; 2 uses
  %i.aj = xor i64 %i.ag, %i.ae                    ; 2 uses
  %i.ak = lshr i64 %i.h, 2
  %i.al = xor i64 %i.q, %i.ak
  %i.am = and i64 %i.al, 3689348814741910323      ; 2 uses
  %i.an = shl nuw i64 %i.am, 2
  %i.ao = xor i64 %i.an, %i.h
  store i64 %i.ao, ptr %i.a, align 8, !alias.scope !5107
  %i.ap = xor i64 %i.am, %i.q
  store i64 %i.ap, ptr %i.i, align 8, !alias.scope !5107
  %i.aq = lshr i64 %i.f, 2
  %i.ar = xor i64 %i.r, %i.aq
  %i.as = and i64 %i.ar, 3689348814741910323      ; 2 uses
  %i.at = shl nuw i64 %i.as, 2
  %i.au = xor i64 %i.at, %i.f
  store i64 %i.au, ptr %i.e, align 8, !alias.scope !5108
  %i.av = xor i64 %i.as, %i.r
  store i64 %i.av, ptr %i.l, align 8, !alias.scope !5108
  %i.aw = lshr i64 %i.y, 2
  %i.ax = xor i64 %i.ai, %i.aw
  %i.ay = and i64 %i.ax, 3689348814741910323      ; 2 uses
  %i.az = shl nuw i64 %i.ay, 2
  %i.ba = xor i64 %i.az, %i.y
  store i64 %i.ba, ptr %i.c, align 8, !alias.scope !5109
  %i.bb = xor i64 %i.ay, %i.ai
  store i64 %i.bb, ptr %i.aa, align 8, !alias.scope !5109
  %i.bc = lshr i64 %i.z, 2
  %i.bd = xor i64 %i.aj, %i.bc
  %i.be = and i64 %i.bd, 3689348814741910323      ; 2 uses
  %i.bf = shl nuw i64 %i.be, 2
  %i.bg = xor i64 %i.bf, %i.z
  store i64 %i.bg, ptr %i.t, align 8, !alias.scope !5110
  %i.bh = xor i64 %i.be, %i.aj
  store i64 %i.bh, ptr %i.ad, align 8, !alias.scope !5110
  call fastcc void @_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB4_5Batch9sub_bytes(ptr noalias nofree noundef align 8 dereferenceable(64) %i.a) #39
  %i.bi = load <8 x i64>, ptr %i.a, align 8, !alias.scope !5111 ; 4 uses
  %i.bj = shufflevector <8 x i64> %i.bi, <8 x i64> poison, <2 x i32> <i32 1, i32 5>
  %i.bk = shl <2 x i64> %i.bj, splat (i64 1)
  %i.bl = and <2 x i64> %i.bk, splat (i64 -6148914691236517206)
  %i.bm = shufflevector <8 x i64> %i.bi, <8 x i64> poison, <2 x i32> <i32 0, i32 4>
  %i.bn = and <2 x i64> %i.bm, splat (i64 6148914691236517205)
  %i.bo = or disjoint <2 x i64> %i.bl, %i.bn      ; 2 uses
  %i.bp = shufflevector <8 x i64> %i.bi, <8 x i64> poison, <2 x i32> <i32 3, i32 7>
  %i.bq = shl <2 x i64> %i.bp, splat (i64 1)
  %i.br = and <2 x i64> %i.bq, splat (i64 2459565876494606882)
  %i.bs = shufflevector <8 x i64> %i.bi, <8 x i64> poison, <2 x i32> <i32 2, i32 6>
  %i.bt = and <2 x i64> %i.bs, splat (i64 1229782938247303441)
  %i.bu = or disjoint <2 x i64> %i.br, %i.bt
  %i.bv = shl nuw <2 x i64> %i.bu, splat (i64 2)
  %i.bw = and <2 x i64> %i.bo, splat (i64 -3689348814741910324)
  %i.bx = xor <2 x i64> %i.bw, %i.bv
  %i.by = xor <2 x i64> %i.bx, %i.bo
  store <2 x i64> %i.by, ptr %0, align 8, !alias.scope !5112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm15aeshwclmulmovbe4open(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %2, ptr noalias nofree noundef nonnull align 1 captures(address) dead_on_return dereferenceable(16) %3, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(16) %4, ptr noalias nofree noundef nonnull readonly captures(none) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %7) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = alloca [16 x i8], align 1                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 1                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 1                ; 6 uses
  %i.h = alloca [16 x i8], align 1                ; 4 uses
  %i.i = alloca [16 x i8], align 1                ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 3 uses
  %i.k = alloca [40 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 1                ; 4 uses
  %i.m = alloca [16 x i8], align 1                ; 5 uses
  %i.n = alloca [40 x i8], align 8                ; 11 uses
  %i.o = alloca [16 x i8], align 1                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.12 = alloca [24 x i8], align 8           ; 6 uses
  %i.q = alloca [40 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5210)
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !5210, !noundef !15 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !5210, !noundef !15 ; 14 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #41, !noalias !5210
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit: ; preds = %bb.a
  %i.w = load ptr, ptr %7, align 8, !alias.scope !5210, !nonnull !15, !noundef !15 ; 4 uses
  %i.x = sub nuw i64 %i.s, %i.u                   ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %i.z = icmp ugt i64 %i.x, 68719476704
  br i1 %i.z, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread, label %bb.c, !prof !16

bb.c:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit
  %i.aa = icmp ugt i64 %6, 2305843009213693951
end_hunk_1
