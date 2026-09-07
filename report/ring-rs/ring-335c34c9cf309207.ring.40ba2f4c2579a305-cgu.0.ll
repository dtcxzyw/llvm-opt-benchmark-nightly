Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RNvMs0_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signingNtB5_12EcdsaKeyPair3new:bb.a

vector.body.1:                                    ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i
  %wide.load = load <2 x i64>, ptr %i.l, align 16, !alias.scope !2700, !noalias !2705
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load.1 = load <2 x i64>, ptr %i.am, align 16, !alias.scope !2700, !noalias !2705
  %i.an = or <2 x i64> %wide.load.1, %wide.load   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %wide.load.2 = load <2 x i64>, ptr %i.ao, align 16
  %i.ap = or <2 x i64> %wide.load.2, %i.an
  %.lcssa = select i1 %i.ae, <2 x i64> %i.ap, <2 x i64> %i.an
  %i.aq = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa)
  %i.ar = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.aq) #36, !noalias !2703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2706
  store i64 %i.ar, ptr %i.k, align 8, !noalias !2706
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.k) #36, !noalias !2703, !srcloc !37
  %i.as = load i64, ptr %i.k, align 8, !noalias !2706, !noundef !15
  %.not.i.not.i.i = icmp eq i64 %i.as, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2706
  br i1 %.not.i.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i: ; preds = %vector.body.1, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2699
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i, %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #41, !noalias !2707
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit: ; preds = %vector.body.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 16 dereferenceable(48) %i.l, i64 48, i1 false), !noalias !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !2708)
  %i.at = load ptr, ptr %i.t, align 8, !alias.scope !2708, !noalias !2709, !nonnull !15, !align !17, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2710
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.au, i64 48, i1 false), !noalias !2709
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !2710, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2710
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false), !noalias !2710
  call void %i.aw(ptr noundef nonnull %i.g, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.o, ptr noundef nonnull %i.h) #36, !noalias !2711, !inline_history !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !2712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2710
  %.val17 = load ptr, ptr %1, align 8, !nonnull !15, !align !17, !noundef !15
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val18 = load ptr, ptr %i.ax, align 8          ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.val19 = load ptr, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2713
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.f, i8 0, i64 64, i1 false), !noalias !2713
  %i.az = getelementptr inbounds nuw i8, ptr %.val17, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !noalias !2713, !noundef !15 ; 4 uses
  %i.bb = icmp ult i64 %i.ba, 65
  br i1 %i.bb, label %bb.g, label %bb.f, !prof !36

bb.f:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ba, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #41, !noalias !2713
  unreachable

bb.g:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit
  %i.bc = call noundef zeroext i1 %.val19(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull %i.f, i64 noundef %i.ba) #40, !noalias !2713, !inline_history !2686
  br i1 %i.bc, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2713
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18) ]
  %i.bd = load i32, ptr %.val18, align 8, !range !45, !noalias !2713, !noundef !15
  %i.be = trunc nuw i32 %i.bd to i1
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %.val18, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 4 dereferenceable(32) %i.bf, i64 32, i1 false), !noalias !2713
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %.sroa.06.0.copyload.i = load ptr, ptr %i.bg, align 8, !noalias !2713
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.47.0..sroa_idx.i, i64 32, i1 false), !noalias !2713
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val18, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58.0..sroa_idx.i, i64 24, i1 false), !noalias !2713
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.55.0.i = phi ptr [ %.val18, %bb.i ], [ %.sroa.06.0.copyload.i, %bb.j ]
  %.sroa.04.0.i = phi ptr [ null, %bb.i ], [ %.val18, %bb.j ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.e, i8 0, i64 128, i1 false), !noalias !2713
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr %.sroa.04.0.i, ptr %i.bh, align 8, !noalias !2713
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store ptr %.sroa.55.0.i, ptr %.sroa.03.sroa.4.0..sroa_idx.i, align 8, !noalias !2713
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !2713
  %.sroa.03.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !2713
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2713
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.ba), !noalias !2713
  %i.bi = load i64, ptr %i.aa, align 8, !noalias !2714, !noundef !15 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 49
  br i1 %i.bj, label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit.i, label %bb.l, !prof !36

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bi, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #41, !noalias !2714
  unreachable

_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit.i: ; preds = %bb.k
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.bi), !noalias !2715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2713
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 8 dereferenceable(208) %i.e, i64 208, i1 false), !noalias !2713
  %i.bk = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4, !noalias !2716
  %.not.i.i.i.i21 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i21, label %bb.m, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i.i, !prof !16

bb.m:                                             ; preds = %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit.i
  call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i.i: ; preds = %bb.m, %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.bl, i64 80, i1 false), !noalias !2718
  call fastcc void @_RNvMNtCs5yxAJGbRKSL_4ring6digestNtB2_12BlockContext10try_finish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.d), !noalias !2719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2717
  %i.bm = load ptr, ptr %i.c, align 8, !noalias !2717, !noundef !15 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !2720 ; 2 uses
  br i1 %i.bn, label %bb.n, label %bb.r

bb.n:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i.i
  %i.bq = trunc nuw i64 %i.bp to i1
  br i1 %i.bq, label %bb.o, label %bb.p, !prof !16

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #41, !noalias !2719
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2717
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #41, !noalias !2721
  unreachable

bb.q:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2713
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
  %.sroa.11.16.copyload = load i64, ptr %.sroa.8.0..sroa_idx8.i.i, align 8, !noalias !2722
  %.sroa.15.16..sroa.8.0..sroa_idx8.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.610.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.15.16..sroa.8.0..sroa_idx8.i.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2713
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
  %i.b = alloca [8 x i8], align 8                 ; 32 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [48 x i8], align 16               ; 19 uses
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
  %i.p = alloca [48 x i8], align 1                ; 13 uses
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
  %.lcssa72.sroa.gep76 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.lcssa72.sroa.gep77 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.lcssa72.sroa.gep78 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.lcssa72.sroa.gep79 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.lcssa72.sroa.gep80 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2829)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2830
  %i.as = load i32, ptr %i.ar, align 8, !range !45, !alias.scope !2829, !noalias !2831, !noundef !15
  %i.at = trunc nuw i32 %i.as to i1
  br i1 %i.at, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.au, i64 32, i1 false), !noalias !2831
  br label %bb.e

bb.d:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.av, align 8, !alias.scope !2829, !noalias !2831
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.42.0..sroa_idx.i, i64 32, i1 false), !noalias !2831
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.53.0..sroa_idx.i, i64 24, i1 false), !noalias !2831
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.i = phi ptr [ %i.ar, %bb.c ], [ %.sroa.0.0.copyload.i, %bb.d ]
  %.sroa.01.0.i = phi ptr [ null, %bb.c ], [ %i.ar, %bb.d ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ak, i8 0, i64 128, i1 false), !noalias !2830
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 128 ; 2 uses
  store ptr %.sroa.01.0.i, ptr %i.aw, align 8, !noalias !2830
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  store ptr %.sroa.5.0.i, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !2830
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !2830
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !2830
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 200
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2830
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5), !noalias !2832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.aj, ptr noundef nonnull align 8 dereferenceable(208) %i.ak, i64 208, i1 false), !noalias !2830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(80) %i.aw, i64 80, i1 false), !noalias !2830
  call fastcc void @_RNvMNtCs5yxAJGbRKSL_4ring6digestNtB2_12BlockContext10try_finish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ai, ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.aj), !noalias !2834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2833
  %i.ax = load ptr, ptr %i.ai, align 8, !noalias !2833, !noundef !15 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !2835 ; 2 uses
  br i1 %i.ay, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bb = trunc nuw i64 %i.ba to i1
  br i1 %i.bb, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #41, !noalias !2834
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2830
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  store i64 1, ptr %0, align 8
  br label %bb.aa

bb.i:                                             ; preds = %bb.e
  %.sroa.9.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.516.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9.0..sroa_idx4, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2830
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2836)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !2837, !nonnull !15, !align !17, !noundef !15 ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !2837, !nonnull !15, !align !17, !noundef !15 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !2837, !nonnull !15, !align !17, !noundef !15 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !2837, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2837
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 256 ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 8, !range !34, !noalias !2837, !noundef !15 ; 2 uses
  store ptr %i.bl, ptr %i.ag, align 8, !noalias !2837
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i8 %i.bn, ptr %i.bo, align 8, !noalias !2837
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.bi, ptr %i.bp, align 8, !noalias !2837
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 112 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2837
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 89
  %i.bs = load i8, ptr %i.br, align 1, !range !44, !noalias !2837, !noundef !15
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = trunc nuw i8 %i.bn to i1                ; 4 uses
  %..i.i = select i1 %i.bu, i64 48, i64 32
  %.sroa.5.0.i.i = call i64 @llvm.umin.i64(i64 range(i64 20, 65) %i.bt, i64 %..i.i)
  %..i.i.i = select i1 %i.bu, i64 6, i64 4        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2838
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false), !noalias !2838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2839
  store ptr %i.r, ptr %i.q, align 8, !noalias !2839
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %..i.i.i, ptr %i.bv, align 8, !noalias !2839
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %i.bw, align 8, !noalias !2839
  %i.bx = call fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.415.0..sroa_idx, i64 noundef range(i64 20, 49) %.sroa.5.0.i.i, i64 noundef range(i64 4, 7) %..i.i.i), !noalias !2840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2839
  %i.by = extractvalue { i64, i64 } %i.bx, 0
  %i.bz = trunc nuw i64 %i.by to i1
  br i1 %i.bz, label %bb.j, label %_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa13digest_scalar13digest_scalar.exit.i, !prof !16

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2838
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #41, !noalias !2841
  unreachable

_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa13digest_scalar13digest_scalar.exit.i: ; preds = %bb.i
  call void @ring_core_0_17_16000__LIMBS_reduce_once(ptr noundef nonnull align 8 %i.r, ptr noundef nonnull readonly align 8 %i.bq, i64 noundef range(i64 0, 1152921504606846976) %..i.i.i) #36, !noalias !2842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !2843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2838
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
  store i64 1, ptr %0, align 8, !alias.scope !2836, !noalias !2844
  br label %_RNvMs0_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signingNtB5_12EcdsaKeyPair11sign_digest.exit

.split.i:                                         ; preds = %bb.y, %_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa13digest_scalar13digest_scalar.exit.i
  %.sroa.03.023.i = phi i32 [ 0, %_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa13digest_scalar13digest_scalar.exit.i ], [ %i.cx, %bb.y ]
  %i.cx = add nuw nsw i32 %.sroa.03.023.i, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2837
  %i.cy = load ptr, ptr %i.bj, align 8, !noalias !2845, !nonnull !15, !align !17, !noundef !15
  %.val6.i = load ptr, ptr %i.cy, align 8, !noalias !2845, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2846
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.p, i8 0, i64 48, i1 false), !noalias !2846
  %i.cz = getelementptr inbounds nuw i8, ptr %.val6.i, i64 256 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 8, !range !34, !noalias !2847, !noundef !15
  %i.db = trunc nuw i8 %i.da to i1                ; 4 uses
  %..i16.i = select i1 %i.db, i64 48, i64 32      ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.val6.i, i64 112
  %i.dd = lshr exact i64 %..i16.i, 3              ; 4 uses
  %6 = add nsw i64 %..i16.i, -8                   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 %6
  %i.df = add nsw i64 %..i16.i, -16               ; 9 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.df
  %.not.i46.i.i.1.not = icmp eq i64 %6, 8
  %i.dh = call i64 @llvm.usub.sat.i64(i64 %i.df, i64 8) ; 6 uses
  %.not.i.i.i.i.i.i24.i.2 = icmp eq i64 %i.df, %i.dh
  %i.di = sub nuw nsw i64 %i.df, %i.dh            ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dh
  %i.dk = sub nuw nsw i64 8, %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dk
  %.not.i46.i.i.2.not = icmp eq i64 %i.df, 0
  %i.dm = call i64 @llvm.usub.sat.i64(i64 %i.df, i64 16) ; 5 uses
  %.not.i.i.i.i.i.i24.i.3 = icmp eq i64 %i.dh, %i.dm
  %i.dn = sub nuw nsw i64 %i.dh, %i.dm            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dm
  %i.dp = sub nuw nsw i64 8, %i.dn
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dp
  %.not.i46.i.i.3 = icmp samesign ugt i64 %i.dh, 8
  %i.dr = call i64 @llvm.usub.sat.i64(i64 %i.df, i64 24) ; 6 uses
  %.not.i.i.i.i.i.i24.i.4 = icmp eq i64 %i.dm, %i.dr
  %i.ds = sub nuw nsw i64 %i.dm, %i.dr            ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dr
  %i.du = sub nuw nsw i64 8, %i.ds
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.du
  %i.dw = call i64 @llvm.usub.sat.i64(i64 %i.df, i64 32) ; 5 uses
  %.not.i.i.i.i.i.i24.i.5 = icmp eq i64 %i.dr, %i.dw
  %i.dx = sub nuw nsw i64 %i.dr, %i.dw            ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dw
  %i.dz = sub nuw nsw i64 8, %i.dx
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dz
  %.not.i46.i.i.5 = icmp samesign ugt i64 %i.dr, 8
  %i.eb = call i64 @llvm.usub.sat.i64(i64 %i.df, i64 40) ; 3 uses
  %.not.i.i.i.i.i.i24.i.6 = icmp eq i64 %i.dw, %i.eb
  %i.ec = sub nuw nsw i64 %i.dw, %i.eb            ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.eb
  %i.ee = sub nuw nsw i64 8, %i.ec
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ee
  br label %bb.l

bb.l:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i, %.split.i
  %.sroa.01.01.i.i = phi i32 [ 0, %.split.i ], [ %i.eh, %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i ]
  %i.eg = call noundef zeroext i1 @_RNvXs2_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signingNtB5_11NonceRandomNtNtNtBd_4rand6sealed12SecureRandom9fill_impl(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull %i.p, i64 noundef range(i64 0, -9223372036854775808) %..i16.i), !noalias !2847
  br i1 %i.eg, label %.loopexit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eh = add nuw nsw i32 %.sroa.01.01.i.i, 1     ; 2 uses
  %i.ei = load i8, ptr %i.cz, align 8, !range !34, !noalias !2848, !noundef !15
  %i.ej = trunc nuw i8 %i.ei to i1                ; 4 uses
  %..i.i.i.i.i = select i1 %i.ej, i64 6, i64 4    ; 4 uses
  %i.ek = xor i1 %i.db, %i.ej
  br i1 %i.ek, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2849
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.e, i8 0, i64 48, i1 false), !noalias !2849
  call void @llvm.experimental.noalias.scope.decl(metadata !2850), !noalias !2851
  %i.el = icmp samesign ugt i64 %i.dd, %..i.i.i.i.i
  br i1 %i.el, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i.i.i, label %.lr.ph.i.i.i, !prof !16

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.em = sub nuw nsw i64 %..i.i.i.i.i, %i.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2852
  store i64 0, ptr %i.b, align 8, !noalias !2852
  %i.en = load i64, ptr %i.de, align 1, !alias.scope !2853, !noalias !2854 ; 2 uses
  store i64 %i.en, ptr %i.b, align 8, !alias.scope !2853, !noalias !2854
  %i.eo = call i64 @llvm.bswap.i64(i64 %i.en)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2852
  store i64 %i.eo, ptr %i.e, align 16, !alias.scope !2855, !noalias !2856
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2852
  store i64 0, ptr %i.b, align 8, !noalias !2852
  %i.ep = load i64, ptr %i.dg, align 1, !alias.scope !2853, !noalias !2854 ; 2 uses
  store i64 %i.ep, ptr %i.b, align 8, !alias.scope !2853, !noalias !2854
  %i.eq = call i64 @llvm.bswap.i64(i64 %i.ep)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2852
  store i64 %i.eq, ptr %i.ck, align 8, !alias.scope !2855, !noalias !2856
  br i1 %.not.i46.i.i.1.not, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i, label %7

7:                                                ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2852
  store i64 0, ptr %i.b, align 8, !noalias !2852
  br i1 %.not.i.i.i.i.i.i24.i.2, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2, label %.lr.ph.i.preheader.i.i.i.i.i.i.2

.lr.ph.i.preheader.i.i.i.i.i.i.2:                 ; preds = %7
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dl, ptr nonnull readonly align 1 %i.dj, i64 range(i64 0, -9223372036854775808) %i.di, i1 false), !alias.scope !2853, !noalias !2854
  %.sroa.0.0.copyload.pre.i.i.i.i.i.2 = load i64, ptr %i.b, align 8, !noalias !2852
  %i.er = call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.pre.i.i.i.i.i.2)
  br label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2: ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i.2, %7
  %.sroa.0.0.copyload.i.i.i.i.i.2 = phi i64 [ 0, %7 ], [ %i.er, %.lr.ph.i.preheader.i.i.i.i.i.i.2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2852
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.2, ptr %i.cl, align 16, !alias.scope !2855, !noalias !2856
  br i1 %.not.i46.i.i.2.not, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i, label %8

8:                                                ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2852
  store i64 0, ptr %i.b, align 8, !noalias !2852
  br i1 %.not.i.i.i.i.i.i24.i.3, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.3, label %.lr.ph.i.preheader.i.i.i.i.i.i.3

.lr.ph.i.preheader.i.i.i.i.i.i.3:                 ; preds = %8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dq, ptr nonnull readonly align 1 %i.do, i64 range(i64 0, -9223372036854775808) %i.dn, i1 false), !alias.scope !2853, !noalias !2854
  %.sroa.0.0.copyload.pre.i.i.i.i.i.3 = load i64, ptr %i.b, align 8, !noalias !2852
  %i.es = call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.pre.i.i.i.i.i.3)
  br label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.3

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.3: ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i.3, %8
  %.sroa.0.0.copyload.i.i.i.i.i.3 = phi i64 [ 0, %8 ], [ %i.es, %.lr.ph.i.preheader.i.i.i.i.i.i.3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2852
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.3, ptr %i.cm, align 8, !alias.scope !2855, !noalias !2856
  br i1 %.not.i46.i.i.3, label %bb.o, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i

bb.o:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2852
  store i64 0, ptr %i.b, align 8, !noalias !2852
  br i1 %.not.i.i.i.i.i.i24.i.4, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.4, label %.lr.ph.i.preheader.i.i.i.i.i.i.4

.lr.ph.i.preheader.i.i.i.i.i.i.4:                 ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dv, ptr nonnull readonly align 1 %i.dt, i64 range(i64 0, -9223372036854775808) %i.ds, i1 false), !alias.scope !2853, !noalias !2854
  %.sroa.0.0.copyload.pre.i.i.i.i.i.4 = load i64, ptr %i.b, align 8, !noalias !2852
  %i.et = call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.pre.i.i.i.i.i.4)
  br label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.4

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.4: ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i.4, %bb.o
  %.sroa.0.0.copyload.i.i.i.i.i.4 = phi i64 [ 0, %bb.o ], [ %i.et, %.lr.ph.i.preheader.i.i.i.i.i.i.4 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2852
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i.i.i.i.4, label %bb.r

.lr.ph.i.i.i.i.i.i.i.i.4:                         ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.4
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.4, ptr %i.cn, align 16, !alias.scope !2855, !noalias !2856
  br i1 %i.db, label %bb.p, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2852
  store i64 0, ptr %i.b, align 8, !noalias !2852
  br i1 %.not.i.i.i.i.i.i24.i.5, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.5, label %.lr.ph.i.preheader.i.i.i.i.i.i.5

.lr.ph.i.preheader.i.i.i.i.i.i.5:                 ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ea, ptr nonnull readonly align 1 %i.dy, i64 range(i64 0, -9223372036854775808) %i.dx, i1 false), !alias.scope !2853, !noalias !2854
  %.sroa.0.0.copyload.pre.i.i.i.i.i.5 = load i64, ptr %i.b, align 8, !noalias !2852
  %i.eu = call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.pre.i.i.i.i.i.5)
  br label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.5

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.5: ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i.5, %bb.p
  %.sroa.0.0.copyload.i.i.i.i.i.5 = phi i64 [ 0, %bb.p ], [ %i.eu, %.lr.ph.i.preheader.i.i.i.i.i.i.5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2852
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.5, ptr %i.co, align 8, !alias.scope !2855, !noalias !2856
  br i1 %.not.i46.i.i.5, label %bb.q, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i

bb.q:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2852
  store i64 0, ptr %i.b, align 8, !noalias !2852
  br i1 %.not.i.i.i.i.i.i24.i.6, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.6, label %.lr.ph.i.preheader.i.i.i.i.i.i.6

.lr.ph.i.preheader.i.i.i.i.i.i.6:                 ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ef, ptr nonnull readonly align 1 %i.ed, i64 range(i64 0, -9223372036854775808) %i.ec, i1 false), !alias.scope !2853, !noalias !2854
  br label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.6

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.6: ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i.6, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2852
  br label %bb.r

bb.r:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.6, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.4
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #41, !noalias !2857
  unreachable

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i: ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.5, %.lr.ph.i.i.i.i.i.i.i.i.4, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.3, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i
  %.lcssa72.sroa.phi = phi ptr [ %.lcssa72.sroa.gep80, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.5 ], [ %.lcssa72.sroa.gep76, %.lr.ph.i.i.i ], [ %.lcssa72.sroa.gep77, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2 ], [ %.lcssa72.sroa.gep78, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.3 ], [ %.lcssa72.sroa.gep79, %.lr.ph.i.i.i.i.i.i.i.i.4 ]
  %.lcssa71 = phi i64 [ 5, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.5 ], [ 1, %.lr.ph.i.i.i ], [ 2, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2 ], [ 3, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.3 ], [ 4, %.lr.ph.i.i.i.i.i.i.i.i.4 ]
  %.not.not.i = icmp samesign ugt i64 %i.dd, %.lcssa71
  br i1 %.not.not.i, label %bb.s, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i.i.i

bb.s:                                             ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i
  %i.ev = icmp eq i64 %..i.i.i.i.i, %i.dd
  br i1 %i.ev, label %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.s
  %.idx.i.i.i = shl nuw nsw i64 %i.em, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.lcssa72.sroa.phi, i8 0, i64 %.idx.i.i.i, i1 false), !alias.scope !2858, !noalias !2859
  br label %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i.i.i

_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i, %bb.s
  %i.ew = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 %i.e, ptr noundef nonnull readonly align 8 %i.dc, i64 noundef range(i64 4, 7) %..i.i.i.i.i) #36, !noalias !2860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2861
  store i64 %i.ew, ptr %i.c, align 8, !noalias !2861
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.c) #36, !noalias !2860, !srcloc !37
  %i.ex = load i64, ptr %i.c, align 8, !noalias !2861, !noundef !15
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ex, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2861
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i.i.i, label %vector.body64.1

vector.body64.1:                                  ; preds = %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i.i.i
  %wide.load67 = load <2 x i64>, ptr %i.e, align 16, !alias.scope !2850, !noalias !2862
  %wide.load67.1 = load <2 x i64>, ptr %i.cp, align 16, !alias.scope !2850, !noalias !2862
  %i.ey = or <2 x i64> %wide.load67.1, %wide.load67 ; 2 uses
  %wide.load67.2 = load <2 x i64>, ptr %i.cq, align 16
  %i.ez = or <2 x i64> %wide.load67.2, %i.ey
  %.lcssa = select i1 %i.ej, <2 x i64> %i.ez, <2 x i64> %i.ey
  %i.fa = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa)
  %i.fb = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.fa) #36, !noalias !2860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2863
  store i64 %i.fb, ptr %i.d, align 8, !noalias !2863
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.d) #36, !noalias !2860, !srcloc !37
  %i.fc = load i64, ptr %i.d, align 8, !noalias !2863, !noundef !15
  %.not.i.not.i.i.i.not.i.i = icmp eq i64 %i.fc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2849
  br i1 %.not.i.not.i.i.i.not.i.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29generate_private_scalar_bytes.exit.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i: ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i.i.i, %vector.body64.1, %bb.m
  %exitcond.not.i.i = icmp eq i32 %i.eh, 100
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.l

_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i.i.i: ; preds = %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i.i.i, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2849
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29generate_private_scalar_bytes.exit.i: ; preds = %vector.body64.1
  %i.fd = xor i1 %i.bu, %i.db
  br i1 %i.fd, label %.loopexit.i, label %bb.t

bb.t:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29generate_private_scalar_bytes.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2864
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.o, i8 0, i64 48, i1 false), !noalias !2864
  call void @llvm.experimental.noalias.scope.decl(metadata !2865)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2866
  store ptr %i.o, ptr %i.m, align 8, !noalias !2866
  store i64 %..i.i.i, ptr %i.ca, align 8, !noalias !2866
  store i64 0, ptr %i.cb, align 8, !noalias !2866
  %i.fe = call fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef range(i64 0, -9223372036854775808) %..i16.i, i64 noundef range(i64 4, 7) %..i.i.i), !noalias !2867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2866
  %i.ff = extractvalue { i64, i64 } %i.fe, 0
  %i.fg = trunc nuw i64 %i.ff to i1
  br i1 %i.fg, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i.i, !prof !29

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i.i: ; preds = %bb.t
  %i.fh = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 %i.o, ptr noundef nonnull readonly align 8 %i.bq, i64 noundef range(i64 4, 7) %..i.i.i) #36, !noalias !2868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2869
  store i64 %i.fh, ptr %i.l, align 8, !noalias !2869
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.l) #36, !noalias !2868, !srcloc !37
  %i.fi = load i64, ptr %i.l, align 8, !noalias !2869, !noundef !15
  %.not.i.i.i.i.i.i = icmp eq i64 %i.fi, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2869
  br i1 %.not.i.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i.i.i, label %vector.body57.1

vector.body57.1:                                  ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i.i
  %wide.load60 = load <2 x i64>, ptr %i.o, align 16, !alias.scope !2865, !noalias !2870
  %wide.load60.1 = load <2 x i64>, ptr %i.cr, align 16, !alias.scope !2865, !noalias !2870
  %i.fj = or <2 x i64> %wide.load60.1, %wide.load60 ; 2 uses
  %wide.load60.2 = load <2 x i64>, ptr %i.cs, align 16
  %i.fk = or <2 x i64> %wide.load60.2, %i.fj
  %.lcssa73 = select i1 %i.bu, <2 x i64> %i.fk, <2 x i64> %i.fj
  %i.fl = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa73)
  %i.fm = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.fl) #36, !noalias !2868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2871
  store i64 %i.fm, ptr %i.n, align 8, !noalias !2871
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.n) #36, !noalias !2868, !srcloc !37
  %i.fn = load i64, ptr %i.n, align 8, !noalias !2871, !noundef !15
  %.not.i.not.i.i.i.i = icmp eq i64 %i.fn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2871
  br i1 %.not.i.not.i.i.i.i, label %bb.u, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i.i.i: ; preds = %vector.body57.1, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2864
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29generate_private_scalar_bytes.exit.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i, %bb.l, %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2846
  store i64 1, ptr %0, align 8, !alias.scope !2836, !noalias !2844
  br label %bb.z

bb.u:                                             ; preds = %vector.body57.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 16 dereferenceable(48) %i.o, i64 48, i1 false), !noalias !2837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2837
  call void @llvm.experimental.noalias.scope.decl(metadata !2872)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2873
  call void @llvm.experimental.noalias.scope.decl(metadata !2874)
  %i.fo = load ptr, ptr %i.bg, align 8, !alias.scope !2875, !noalias !2876, !nonnull !15, !align !17, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.cc, i64 48, i1 false), !noalias !2876
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !2878, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2877
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i8 0, i64 48, i1 false), !noalias !2877
  call void %i.fq(ptr noundef nonnull %i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ae, ptr noundef nonnull %i.j) #36, !noalias !2879, !inline_history !2812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !2880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2877
  %i.fr = load ptr, ptr %i.cd, align 8, !alias.scope !2872, !noalias !2881, !nonnull !15, !noundef !15
  call void %i.fr(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.k), !noalias !2882, !inline_history !2813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2837
  %i.fs = load ptr, ptr %i.ce, align 8, !noalias !2845, !nonnull !15, !noundef !15
  call void %i.fs(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ae), !noalias !2845, !inline_history !2814
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2837
  %.val9.i = load ptr, ptr %i.cf, align 8, !noalias !2845
  call fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key20affine_from_jacobian(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.aa, ptr %.val9.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ac), !noalias !2845
  %i.ft = load i64, ptr %i.aa, align 8, !range !22, !noalias !2837, !noundef !15
  %i.fu = trunc nuw i64 %i.ft to i1
  br i1 %i.fu, label %bb.v, label %vector.ph49

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2837
  store i64 1, ptr %0, align 8, !alias.scope !2836, !noalias !2844
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i)
  br label %bb.x

vector.ph49:                                      ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.42.i, ptr noundef nonnull align 8 dereferenceable(96) %i.cg, i64 96, i1 false), !noalias !2837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.42.i, i64 48, i1 false), !noalias !2837
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2837
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cj, i8 0, i64 40, i1 false), !noalias !2837
  store i64 1, ptr %i.w, align 8, !noalias !2837
  %i.fv = load ptr, ptr %i.bi, align 8, !noalias !2845, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2837
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, i8 0, i64 48, i1 false), !noalias !2837
  call void %i.fv(ptr noundef nonnull %i.v, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.w) #36, !noalias !2845, !inline_history !2814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !2837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2837
  call void @ring_core_0_17_16000__LIMBS_reduce_once(ptr noundef nonnull align 8 %i.h, ptr noundef nonnull readonly align 8 %i.bq, i64 noundef range(i64 0, 1152921504606846976) %..i.i.i) #36, !noalias !2884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !2885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2837
  %i.fw = load ptr, ptr %i.ch, align 8, !noalias !2845, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2837
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 0, i64 48, i1 false), !noalias !2837
  call void %i.fw(ptr noundef nonnull %i.u, ptr noundef nonnull readonly %i.ci, ptr noundef nonnull %i.z) #36, !noalias !2845, !inline_history !2814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false), !noalias !2837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2837
  call void @ring_core_0_17_16000__LIMBS_add_mod(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.af, ptr noundef nonnull readonly align 8 %i.bq, i64 noundef range(i64 0, 1152921504606846976) %..i.i.i) #36, !noalias !2886
  %i.fx = load ptr, ptr %i.ch, align 8, !noalias !2845, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2837
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, i8 0, i64 48, i1 false), !noalias !2837
  call void %i.fx(ptr noundef nonnull %i.t, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.x) #36, !noalias !2845, !inline_history !2814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false), !noalias !2837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2837
  %.val15.i = load i8, ptr %i.bm, align 8, !range !34, !noalias !2845, !noundef !15
  call void @llvm.experimental.noalias.scope.decl(metadata !2887)
  %i.fy = trunc nuw i8 %.val15.i to i1
  %wide.load53 = load <2 x i64>, ptr %i.z, align 16, !alias.scope !2887, !noalias !2837
  %wide.load53.1 = load <2 x i64>, ptr %i.ct, align 16, !alias.scope !2887, !noalias !2837
  %i.fz = or <2 x i64> %wide.load53.1, %wide.load53 ; 2 uses
  %wide.load53.2 = load <2 x i64>, ptr %i.cu, align 16
  %i.ga = or <2 x i64> %wide.load53.2, %i.fz
  %.lcssa74 = select i1 %i.fy, <2 x i64> %i.ga, <2 x i64> %i.fz
  %i.gb = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa74)
  %i.gc = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.gb) #36, !noalias !2888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2889
  store i64 %i.gc, ptr %i.g, align 8, !noalias !2889
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.g) #36, !noalias !2888, !srcloc !37
  %i.gd = load i64, ptr %i.g, align 8, !noalias !2889, !noundef !15
  %.not12.i = icmp eq i64 %i.gd, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2889
  br i1 %.not12.i, label %vector.ph, label %bb.y

vector.ph:                                        ; preds = %vector.ph49
  %.val14.i = load i8, ptr %i.bm, align 8, !range !34, !noalias !2845, !noundef !15
  call void @llvm.experimental.noalias.scope.decl(metadata !2890)
end_hunk_0
