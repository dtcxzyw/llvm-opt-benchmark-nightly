Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/liquid_core-693624a1712aaef7.liquid_core.91b98bf4681e5dbd-cgu.0?download=true
inline.NumInlined: 4312
inline.NumDeleted: 1825
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 26
begin_hunk_0_@"_ZN66_$LT$time..utc_offset..UtcOffset$u20$as$u20$core..fmt..Display$GT$3fmt17hf4884a92e27f45acE":bb.a
  store i64 2, ptr %i.g, align 8, !noalias !15552
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 32, ptr %.sroa.529.0..sroa_idx.i.i, align 8, !noalias !15552
  %.sroa.630.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store i8 3, ptr %.sroa.630.0..sroa_idx.i.i, align 4, !noalias !15552
  %.sroa.731.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 21
  store i8 16, ptr %.sroa.731.0..sroa_idx.i.i, align 1, !noalias !15552
  %i.ab = call noundef i64 @"_ZN8powerfmt19smart_display_impls70_$LT$impl$u20$powerfmt..smart_display..SmartDisplay$u20$for$u20$i8$GT$8metadata17h2986407cd3aecc84E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g), !noalias !15553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15551
  %.sroa.0.0.i.i.i47.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 2)
  %i.ac = add i64 %i.y, 2
  %i.ad = add i64 %i.ac, %.sroa.0.0.i.i.i23.i.i
  %i.ae = add i64 %i.ad, %.sroa.0.0.i.i.i31.i.i
  %i.af = add i64 %i.ae, %.sroa.0.0.i.i.i47.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !15541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !15541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !15541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !15541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !15540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15554
  store i32 %..i.i, ptr %i.e, align 4, !noalias !15554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15554
  store i8 %spec.select.i19.i.i, ptr %i.d, align 1, !noalias !15554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15554
  store i8 %spec.select.i18.i.i, ptr %i.c, align 1, !noalias !15554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15554
  store i8 %spec.select.i.i.i, ptr %i.b, align 1, !noalias !15554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15554
  store ptr %i.e, ptr %i.a, align 8, !noalias !15554
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN43_$LT$char$u20$as$u20$core..fmt..Display$GT$3fmt17h70f50921d2b95bdfE", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !15554
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.ag, align 8, !noalias !15554
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN70_$LT$deranged..RangedI8$LT$_$C$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17he49457fd2be72a55E", ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !15554
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.ah, align 8, !noalias !15554
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @"_ZN70_$LT$deranged..RangedI8$LT$_$C$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h1fad47e4e748964eE", ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !15554
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.ai, align 8, !noalias !15554
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @"_ZN70_$LT$deranged..RangedI8$LT$_$C$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h1fad47e4e748964eE", ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !15554
  store ptr @783, ptr %i.f, align 8, !noalias !15554
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 4, ptr %i.aj, align 8, !noalias !15554
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr @784, ptr %i.ak, align 8, !noalias !15554
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 4, ptr %i.al, align 8, !noalias !15554
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.a, ptr %i.am, align 8, !noalias !15554
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 4, ptr %i.an, align 8, !noalias !15554
  %i.ao = call noundef zeroext i1 @"_ZN68_$LT$core..fmt..Formatter$u20$as$u20$powerfmt..ext..FormatterExt$GT$14pad_with_width17ha25c628238c85746E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.af, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f), !noalias !15555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15554
  ret i1 %i.ao
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc02c99a3bc49159bE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !noundef !6 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15566
  %i.g = mul i64 %i.f, 56                         ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.f, 164703072086692425
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.thread", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.thread": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %i.i = icmp eq i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.i), !noalias !15566
  store i64 0, ptr %i.b, align 8, !noalias !15566
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !noalias !15566
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h578140d6003455a0E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !15567
  %i.l = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 9) 8) #59, !noalias !15567 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i", %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @786) #57, !noalias !15566
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"
  store i64 %i.f, ptr %i.b, align 8, !noalias !15566
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.n, align 8, !noalias !15566
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %i.f
  %i.q = icmp eq i64 %i.f, 0
  br i1 %i.q, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h578140d6003455a0E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit", %bb.d
  %.sroa.01.012 = phi ptr [ %i.u, %bb.d ], [ %i.e, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit" ] ; 3 uses
  %.sroa.7.011 = phi i64 [ %i.t, %bb.d ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit" ] ; 3 uses
  %.sroa.10.010 = phi i64 [ %i.r, %bb.d ], [ %i.f, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit" ]
  %i.r = add nsw i64 %.sroa.10.010, -1            ; 2 uses
  %i.s = icmp eq ptr %.sroa.01.012, %i.p
  br i1 %i.s, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h578140d6003455a0E.exit", label %bb.c

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15566
  invoke fastcc void @"_ZN79_$LT$liquid_core..model..value..values..Value$u20$as$u20$core..clone..Clone$GT$5clone17h04699453d7d13ce2E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.01.012)
          to label %bb.d unwind label %bb.f, !noalias !15568, !inline_history !15563

bb.d:                                             ; preds = %bb.c
  %i.t = add nuw nsw i64 %.sroa.7.011, 1
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.012, i64 56
  %i.v = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %.sroa.7.011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !15568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15566
  %i.w = icmp eq i64 %i.r, 0
  br i1 %i.w, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h578140d6003455a0E.exit", label %.lr.ph

bb.e:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !15568, !inline_history !15563
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.011, ptr %i.o, align 8, !alias.scope !15569, !noalias !15568
  invoke void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..model..value..values..Value$GT$$GT$17h0c3b0b40ff7ebe80E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #58
          to label %bb.g unwind label %bb.e, !noalias !15568, !inline_history !15563

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h578140d6003455a0E.exit": ; preds = %bb.d, %.lr.ph, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.thread", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit"
  %i.y = phi ptr [ %i.k, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.thread" ], [ %i.o, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit" ], [ %i.o, %.lr.ph ], [ %i.o, %bb.d ]
  store i64 %i.f, ptr %i.y, align 8, !noalias !15566
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !15570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15566
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf49bec782a24e97aE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15583)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15584
  %i.c = shl i64 %.16.val, 5                      ; 4 uses
  %i.d = icmp ugt i64 %.16.val, 576460752303423487
  %i.e = icmp ugt i64 %i.c, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.d, %i.e
  br i1 %or.cond.i.i.i.i, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.thread.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.g = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.g)
  store i64 0, ptr %i.b, align 8, !noalias !15584
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !noalias !15584
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hf41d4cb0b3f759b5E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !15585
  %i.j = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 8) #59, !noalias !15585 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @786) #57, !noalias !15584
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  store i64 %.16.val, ptr %i.b, align 8, !noalias !15584
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !15584
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.8.val, i64 %.16.val
  %1 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %"_ZN71_$LT$pest..parser_state..ParsingToken$u20$as$u20$core..clone..Clone$GT$5clone17h56ee7e120c02ad7cE.exit.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i"
  %.sroa.013.025.i = phi ptr [ %.8.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i" ], [ %i.q, %"_ZN71_$LT$pest..parser_state..ParsingToken$u20$as$u20$core..clone..Clone$GT$5clone17h56ee7e120c02ad7cE.exit.i" ] ; 6 uses
  %.sroa.7.024.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i" ], [ %i.r, %"_ZN71_$LT$pest..parser_state..ParsingToken$u20$as$u20$core..clone..Clone$GT$5clone17h56ee7e120c02ad7cE.exit.i" ] ; 3 uses
  %.sroa.10.023.i = phi i64 [ %.16.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i" ], [ %i.o, %"_ZN71_$LT$pest..parser_state..ParsingToken$u20$as$u20$core..clone..Clone$GT$5clone17h56ee7e120c02ad7cE.exit.i" ]
  %i.o = add nsw i64 %.sroa.10.023.i, -1          ; 2 uses
  %i.p = icmp eq ptr %.sroa.013.025.i, %i.n
  br i1 %i.p, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hf41d4cb0b3f759b5E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.025.i, i64 32
  %i.r = add nuw nsw i64 %.sroa.7.024.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15584
  call void @llvm.experimental.noalias.scope.decl(metadata !15586)
  call void @llvm.experimental.noalias.scope.decl(metadata !15587)
  %i.s = load i32, ptr %.sroa.013.025.i, align 8, !range !52, !alias.scope !15588, !noalias !15589, !noundef !6
  switch i32 %i.s, label %default.unreachable [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.025.i, i64 8
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @662)
          to label %.noexc.i unwind label %bb.i, !noalias !15590

.noexc.i:                                         ; preds = %bb.e
  store i32 0, ptr %i.a, align 8, !alias.scope !15586, !noalias !15591
  br label %"_ZN71_$LT$pest..parser_state..ParsingToken$u20$as$u20$core..clone..Clone$GT$5clone17h56ee7e120c02ad7cE.exit.i"

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.025.i, i64 8
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @662)
          to label %.noexc12.i unwind label %bb.i, !noalias !15590

.noexc12.i:                                       ; preds = %bb.f
  store i32 1, ptr %i.a, align 8, !alias.scope !15586, !noalias !15591
  br label %"_ZN71_$LT$pest..parser_state..ParsingToken$u20$as$u20$core..clone..Clone$GT$5clone17h56ee7e120c02ad7cE.exit.i"

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.013.025.i, i64 32, i1 false), !alias.scope !15592, !noalias !15590
  br label %"_ZN71_$LT$pest..parser_state..ParsingToken$u20$as$u20$core..clone..Clone$GT$5clone17h56ee7e120c02ad7cE.exit.i"

bb.h:                                             ; preds = %bb.d
  store i32 3, ptr %i.a, align 8, !alias.scope !15586, !noalias !15591
  br label %"_ZN71_$LT$pest..parser_state..ParsingToken$u20$as$u20$core..clone..Clone$GT$5clone17h56ee7e120c02ad7cE.exit.i"

"_ZN71_$LT$pest..parser_state..ParsingToken$u20$as$u20$core..clone..Clone$GT$5clone17h56ee7e120c02ad7cE.exit.i": ; preds = %bb.h, %bb.g, %.noexc12.i, %.noexc.i
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.7.024.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !15590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15584
  %i.w = icmp eq i64 %i.o, 0
  br i1 %i.w, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hf41d4cb0b3f759b5E.exit", label %bb.c

bb.i:                                             ; preds = %bb.f, %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.024.i, ptr %i.m, align 8, !alias.scope !15593, !noalias !15584
  call void @"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$pest..parser_state..ParsingToken$GT$$GT$17h030e44d4bc9542e3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #58, !noalias !15590
  resume { ptr, i32 } %lpad.loopexit.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hf41d4cb0b3f759b5E.exit": ; preds = %bb.c, %"_ZN71_$LT$pest..parser_state..ParsingToken$u20$as$u20$core..clone..Clone$GT$5clone17h56ee7e120c02ad7cE.exit.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.thread.i"
  %2 = phi ptr [ %i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.thread.i" ], [ %i.m, %"_ZN71_$LT$pest..parser_state..ParsingToken$u20$as$u20$core..clone..Clone$GT$5clone17h56ee7e120c02ad7cE.exit.i" ], [ %i.m, %bb.c ]
  store i64 %.16.val, ptr %2, align 8, !noalias !15584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !15583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15584
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3a87f33f6dad506E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @609, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @610, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @608)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$kstring..string_ref..KStringRef$u20$as$u20$core..fmt..Debug$GT$3fmt17h0cb2bc0f96467355E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15597)
  %i.c = load i64, ptr %0, align 8, !range !18, !alias.scope !15597, !noalias !15598, !noundef !6
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15599
  store ptr %i.e, ptr %i.a, align 8, !noalias !15599
  %i.f = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @668, i64 noundef 9, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @454)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15599
  br label %"_ZN73_$LT$kstring..string_ref..KStringRefInner$u20$as$u20$core..fmt..Debug$GT$3fmt17h8686321109f28eb7E.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15599
  store ptr %i.e, ptr %i.b, align 8, !noalias !15599
  %i.g = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @667, i64 noundef 8, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @454)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15599
  br label %"_ZN73_$LT$kstring..string_ref..KStringRefInner$u20$as$u20$core..fmt..Debug$GT$3fmt17h8686321109f28eb7E.exit"

"_ZN73_$LT$kstring..string_ref..KStringRefInner$u20$as$u20$core..fmt..Debug$GT$3fmt17h8686321109f28eb7E.exit": ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$liquid_core..parser..text..Text$u20$as$u20$core..fmt..Debug$GT$3fmt17h069a907e13895062E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @611, i64 noundef 4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @612, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @601)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h306f0535c1817d54E"(ptr captures(address, read_provenance) %.0.val) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i1.i.i.i.i.i.i.i.i = alloca [7 x i8], align 8 ; 4 uses
  %.sroa.6.i.i.i.i.i.i.i.i.i = alloca [7 x i8], align 8 ; 4 uses
  %.sroa.929.i.i.i.i.i.i.i = alloca [7 x i8], align 8 ; 4 uses
  %.sroa.715.i.i.i.i.i.i.i = alloca [7 x i8], align 8 ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.7.i.i.i.i.i = alloca [7 x i8], align 8   ; 4 uses
  %.sroa.628.i.i.i.i = alloca [7 x i8], align 8   ; 4 uses
  %.sroa.830.i.i.i.i = alloca [24 x i8], align 8  ; 4 uses
  %.sroa.7.i.i = alloca [7 x i8], align 8         ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.c = tail call noalias noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 10 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hd45125727530e3dbE.exit", !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #57
  unreachable

"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hd45125727530e3dbE.exit": ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15686)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15687)
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 47
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !15688, !noalias !15689, !noundef !6 ; 3 uses
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hd45125727530e3dbE.exit"
  %i.i = invoke { ptr, i64 } @"_ZN67_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h99dc39076b9f17afE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %.noexc unwind label %bb.z     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  br label %"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit.i.i"

bb.d:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hd45125727530e3dbE.exit"
  %.sroa.014.0.copyload.i.i = load ptr, ptr %i.e, align 8, !alias.scope !15690, !noalias !15691
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %.sroa.515.0.copyload.i.i = load i64, ptr %.sroa.515.0..sroa_idx.i.i, align 8, !alias.scope !15690, !noalias !15691
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7.i.i, ptr noundef nonnull readonly align 8 dereferenceable(7) %.sroa.7.0..sroa_idx.i.i, i64 7, i1 false), !noalias !15691
  br label %"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit.i.i"

"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit.i.i": ; preds = %bb.d, %.noexc
  %.sroa.515.0.i.i = phi i64 [ %i.k, %.noexc ], [ %.sroa.515.0.copyload.i.i, %bb.d ] ; 3 uses
  %.sroa.014.0.i.i = phi ptr [ %i.j, %.noexc ], [ %.sroa.014.0.copyload.i.i, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15692
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !15693, !noalias !15691, !nonnull !6, !noundef !6 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val3.i.i = load i64, ptr %i.m, align 8, !alias.scope !15693, !noalias !15691, !noundef !6 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15695)
  %i.n = mul i64 %.val3.i.i, 56                   ; 4 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %.val3.i.i, 164703072086692425
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit.i.i"
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.thread.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.thread.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %i.p = icmp eq i64 %.val3.i.i, 0
  tail call void @llvm.assume(i1 %i.p)
  br label %.loopexit.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !15696
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, 9) 8) #59, !noalias !15696 ; 6 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", %"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit.i.i"
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" ], [ 0, %"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @786) #57
          to label %.noexc.i.i unwind label %bb.w, !noalias !15691

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  %0 = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i, i64 %.val3.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.014.073.i.i.i.i = phi ptr [ %.val.i.i, %.lr.ph.i.i.i.i ], [ %i.w, %.loopexit.i.i.i.i ] ; 9 uses
  %.sroa.7.071.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.x, %.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.10.070.i.i.i.i = phi i64 [ %.val3.i.i, %.lr.ph.i.i.i.i ], [ %i.u, %.loopexit.i.i.i.i ]
  %i.u = add nsw i64 %.sroa.10.070.i.i.i.i, -1    ; 2 uses
  %i.v = icmp eq ptr %.sroa.014.073.i.i.i.i, %0
  br i1 %i.v, label %.loopexit.i.i, label %bb.g

.loopexit36.i.i.i.i:                              ; preds = %bb.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.073.i.i.i.i, i64 56
  %i.x = add nuw nsw i64 %.sroa.7.071.i.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15697)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  %i.y = load i64, ptr %.sroa.014.073.i.i.i.i, align 8, !range !18, !alias.scope !15698, !noalias !15699, !noundef !6
  %i.z = trunc nuw i64 %i.y to i1                 ; 2 uses
  br i1 %i.z, label %bb.h, label %"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit.i.i.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.014.073.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15700)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.014.073.i.i.i.i, i64 31
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !15701, !noalias !15702, !noundef !6 ; 2 uses
  %i.ad = icmp eq i8 %i.ac, -1
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = invoke { ptr, i64 } @"_ZN67_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h99dc39076b9f17afE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %.noexc.i.i.i.i unwind label %.loopexit36.i.i.i.i, !noalias !15703 ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %bb.i
  %i.af = extractvalue { ptr, i64 } %i.ae, 0
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1
  br label %"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit.i.i.i.i.i"

bb.j:                                             ; preds = %bb.h
  %.sroa.05.0.copyload.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !15704, !noalias !15699
  %.sroa.56.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.073.i.i.i.i, i64 16
  %.sroa.56.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !15704, !noalias !15699
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.073.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(7) %.sroa.7.0..sroa_idx.i.i.i.i.i, i64 7, i1 false), !noalias !15699
  br label %"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit.i.i.i.i.i"

"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit.i.i.i.i.i": ; preds = %bb.j, %.noexc.i.i.i.i, %bb.g
  %.sroa.92.0.i.i.i.i.i = phi i8 [ undef, %bb.g ], [ -1, %.noexc.i.i.i.i ], [ %i.ac, %bb.j ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i = phi i64 [ undef, %bb.g ], [ %i.ag, %.noexc.i.i.i.i ], [ %.sroa.56.0.copyload.i.i.i.i.i, %bb.j ] ; 3 uses
  %.sroa.6.0.i.i.i.i.i = phi ptr [ undef, %bb.g ], [ %i.af, %.noexc.i.i.i.i ], [ %.sroa.05.0.copyload.i.i.i.i.i, %bb.j ] ; 3 uses
  %.sroa.0.0.i12.i.i.i.i = phi i64 [ 0, %bb.g ], [ 1, %.noexc.i.i.i.i ], [ 1, %bb.j ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.014.073.i.i.i.i, i64 40
  %.val.i.i.i.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !15698, !noalias !15699, !nonnull !6, !noundef !6 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.014.073.i.i.i.i, i64 48
  %.val1.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !15698, !noalias !15699, !noundef !6 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15705)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15706
  %i.aj = mul i64 %.val1.i.i.i.i.i, 48            ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %.val1.i.i.i.i.i, 192153584101141162
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit.i.i.i.i.i"
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.thread.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.thread.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i
  %i.al = icmp eq i64 %.val1.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.al)
  store i64 0, ptr %i.a, align 8, !noalias !15706
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !noalias !15706
  br label %.loopexit.i.i.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !15707
  %i.am = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.aj, i64 noundef range(i64 1, 9) 8) #59, !noalias !15707 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.k, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i.i.i.i"

bb.k:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i", %"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit.i.i.i.i.i"
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit.i.i.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @786) #57
          to label %.noexc.i.i.i.i.i unwind label %bb.t, !noalias !15699

.noexc.i.i.i.i.i:                                 ; preds = %bb.k
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i"
  store i64 %.val1.i.i.i.i.i, ptr %i.a, align 8, !noalias !15706
  store ptr %i.am, ptr %i.s, align 8, !noalias !15706
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %.val.i.i.i.i.i, i64 %.val1.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.r, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i.i.i.i"
  %.sroa.012.044.i.i.i.i.i.i.i = phi ptr [ %i.ar, %bb.r ], [ %.val.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i.i.i.i" ] ; 11 uses
  %.sroa.7.043.i.i.i.i.i.i.i = phi i64 [ %i.as, %bb.r ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.10.042.i.i.i.i.i.i.i = phi i64 [ %i.ap, %bb.r ], [ %.val1.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.i.i.i.i.i.i.i" ]
  %i.ap = add nsw i64 %.sroa.10.042.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.aq = icmp eq ptr %.sroa.012.044.i.i.i.i.i.i.i, %i.ao
  br i1 %i.aq, label %.loopexit.i.i.i.i, label %bb.l

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.m
  %lpad.loopexit.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i, i64 48
  %i.as = add nuw nsw i64 %.sroa.7.043.i.i.i.i.i.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.715.i.i.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15709)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15710)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i, i64 23
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !15711, !noalias !15712, !noundef !6 ; 2 uses
  %i.av = icmp ne i8 %i.au, -1                    ; 2 uses
  br i1 %i.av, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = invoke { ptr, i64 } @"_ZN67_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h99dc39076b9f17afE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.012.044.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i, !noalias !15713 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.m
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0
  %i.ay = extractvalue { ptr, i64 } %i.aw, 1
  br label %"_ZN76_$LT$kstring..string..KStringBase$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8f3fa0212b1f67b2E.exit.i.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.l
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.012.044.i.i.i.i.i.i.i, align 8, !alias.scope !15714, !noalias !15715
  %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i, i64 8
  %.sroa.5.0.copyload3.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !15714, !noalias !15715
  %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(7) %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i.i.i, i64 7, i1 false), !alias.scope !15716, !noalias !15715
  br label %"_ZN76_$LT$kstring..string..KStringBase$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8f3fa0212b1f67b2E.exit.i.i.i.i.i.i.i.i"

"_ZN76_$LT$kstring..string..KStringBase$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8f3fa0212b1f67b2E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.n, %.noexc.i.i.i.i.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ay, %.noexc.i.i.i.i.i.i.i ], [ %.sroa.5.0.copyload3.i.i.i.i.i.i.i.i.i, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.noexc.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, %bb.n ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.715.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.i.i.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !15717
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i1.i.i.i.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15718)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i, i64 47
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !15719, !noalias !15720, !noundef !6 ; 2 uses
  %i.bc = icmp eq i8 %i.bb, -1
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %"_ZN76_$LT$kstring..string..KStringBase$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8f3fa0212b1f67b2E.exit.i.i.i.i.i.i.i.i"
  %i.bd = invoke { ptr, i64 } @"_ZN67_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h99dc39076b9f17afE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.q, !noalias !15721 ; 2 uses

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.o
  %i.be = extractvalue { ptr, i64 } %i.bd, 0
  %i.bf = extractvalue { ptr, i64 } %i.bd, 1
  br label %bb.r

bb.p:                                             ; preds = %"_ZN76_$LT$kstring..string..KStringBase$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8f3fa0212b1f67b2E.exit.i.i.i.i.i.i.i.i"
  %.sroa.0.0.copyload1.i2.i.i.i.i.i.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !15722, !noalias !15723
  %.sroa.5.0..sroa_idx2.i3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i, i64 32
  %.sroa.5.0.copyload3.i4.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx2.i3.i.i.i.i.i.i.i.i, align 8, !alias.scope !15722, !noalias !15723
  %.sroa.6.0..sroa_idx4.i5.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.i1.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(7) %.sroa.6.0..sroa_idx4.i5.i.i.i.i.i.i.i.i, i64 7, i1 false), !alias.scope !15724, !noalias !15723
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = icmp eq i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i13.i.i.i.i = select i1 %i.av, i1 true, i1 %i.bh
  br i1 %or.cond.i.i.i13.i.i.i.i, label %bb.s, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.5.0.i.i.i.i.i.i.i.i.i, i64 noundef 1) #59, !noalias !15725
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %.noexc.i.i.i.i.i.i.i.i
  %.sroa.5.0.i6.i.i.i.i.i.i.i.i = phi i64 [ %i.bf, %.noexc.i.i.i.i.i.i.i.i ], [ %.sroa.5.0.copyload3.i4.i.i.i.i.i.i.i.i, %bb.p ]
  %.sroa.0.0.i7.i.i.i.i.i.i.i.i = phi ptr [ %i.be, %.noexc.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload1.i2.i.i.i.i.i.i.i.i, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.929.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.929.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.i1.i.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !15706
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i1.i.i.i.i.i.i.i.i)
  %i.bi = getelementptr inbounds nuw [48 x i8], ptr %i.am, i64 %.sroa.7.043.i.i.i.i.i.i.i ; 8 uses
  %.sroa.525.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.525.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.715.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !15713
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr %i.bi, align 8, !noalias !15713
  %.sroa.424.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.424.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !15713
  %.sroa.626.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 23
  store i8 %i.au, ptr %.sroa.626.0..sroa_idx.i.i.i.i.i.i.i, align 1, !noalias !15713
  %.sroa.727.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %.sroa.0.0.i7.i.i.i.i.i.i.i.i, ptr %.sroa.727.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !15713
  %.sroa.828.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store i64 %.sroa.5.0.i6.i.i.i.i.i.i.i.i, ptr %.sroa.828.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !15713
  %.sroa.929.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.929.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.929.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !15713
  %.sroa.1030.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 47
  store i8 %i.bb, ptr %.sroa.1030.0..sroa_idx.i.i.i.i.i.i.i, align 1, !noalias !15713
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.929.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715.i.i.i.i.i.i.i)
  %i.bj = icmp eq i64 %i.ap, 0
  br i1 %i.bj, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.s:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.q, %.loopexit.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bg, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.bg, %bb.q ], [ %lpad.loopexit.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ]
  store i64 %.sroa.7.043.i.i.i.i.i.i.i, ptr %i.t, align 8, !alias.scope !15726, !noalias !15706
  call fastcc void @"_ZN4core3ptr183drop_in_place$LT$alloc..vec..Vec$LT$$LP$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$C$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$RP$$GT$$GT$17hbf1fe09b2a541fbfE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #58, !noalias !15713
  br label %.body.i.i.i.i.i

bb.t:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.t, %bb.s
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.bk, %bb.t ], [ %eh.lpad-body.i.i.i.i.i.i.i, %bb.s ] ; 3 uses
  br i1 %i.z, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.body.i.i.i.i.i
  %i.bl = icmp ne i8 %.sroa.92.0.i.i.i.i.i, -1
  %i.bm = icmp eq i64 %.sroa.8.0.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = select i1 %i.bl, i1 true, i1 %i.bm
  br i1 %or.cond.i.i.i.i.i, label %bb.v, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i.i.i.i, i64 noundef %.sroa.8.0.i.i.i.i.i, i64 noundef 1) #59, !noalias !15727
  br label %bb.v

.loopexit.i.i.i.i:                                ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.thread.i.i.i.i.i.i.i"
  store i64 %.val1.i.i.i.i.i, ptr %i.t, align 8, !noalias !15706
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.830.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.830.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !15728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15706
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.628.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.628.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7.i.i.i.i.i, i64 7, i1 false), !noalias !15728
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  %i.bn = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %.sroa.7.071.i.i.i.i ; 6 uses
  store i64 %.sroa.0.0.i12.i.i.i.i, ptr %i.bn, align 8, !noalias !15703
  %.sroa.426.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %.sroa.6.0.i.i.i.i.i, ptr %.sroa.426.0..sroa_idx.i.i.i.i, align 8, !noalias !15703
  %.sroa.527.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %.sroa.8.0.i.i.i.i.i, ptr %.sroa.527.0..sroa_idx.i.i.i.i, align 8, !noalias !15703
  %.sroa.628.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.628.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.628.i.i.i.i, i64 7, i1 false), !noalias !15703
  %.sroa.729.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 31
  store i8 %.sroa.92.0.i.i.i.i.i, ptr %.sroa.729.0..sroa_idx.i.i.i.i, align 1, !noalias !15703
  %.sroa.830.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.830.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.830.i.i.i.i, i64 24, i1 false), !noalias !15703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.628.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.830.i.i.i.i)
  %i.bo = icmp eq i64 %i.u, 0
  br i1 %i.bo, label %.loopexit.i.i, label %bb.f

bb.v:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.u, %.body.i.i.i.i.i, %.loopexit36.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %eh.lpad-body.i.i.i.i.i, %bb.u ], [ %lpad.loopexit.i.i.i.i, %.loopexit36.i.i.i.i ]
  %i.bp = icmp eq i64 %.sroa.7.071.i.i.i.i, 0
  br i1 %i.bp, label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..error..trace..Trace$GT$$GT$17hf54377b069ce67f5E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.v, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.v ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %.sroa.0.07.i.i.i.i.i.i
  %i.br = add nuw i64 %.sroa.0.07.i.i.i.i.i.i, 1  ; 2 uses
  tail call fastcc void @"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..trace..Trace$GT$17hae39f20a06620ecaE"(ptr noalias noundef readonly align 8 dereferenceable(56) %i.bq), !noalias !15729
  %i.bs = icmp eq i64 %i.br, %.sroa.7.071.i.i.i.i
  br i1 %i.bs, label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..error..trace..Trace$GT$$GT$17hf54377b069ce67f5E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i

"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..error..trace..Trace$GT$$GT$17hf54377b069ce67f5E.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.v
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !15729
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.y, %bb.w, %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..error..trace..Trace$GT$$GT$17hf54377b069ce67f5E.exit.i.i.i"
  %.pn.i.i = phi { ptr, i32 } [ %i.cd, %bb.y ], [ %i.bv, %bb.w ], [ %eh.lpad-body.i.i.i.i, %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..error..trace..Trace$GT$$GT$17hf54377b069ce67f5E.exit.i.i.i" ] ; 2 uses
  %i.bt = icmp ne i8 %i.g, -1
  %i.bu = icmp eq i64 %.sroa.515.0.i.i, 0
  %or.cond.i.i = select i1 %i.bt, i1 true, i1 %i.bu
  br i1 %or.cond.i.i, label %bb.ab, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %.body.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.014.0.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.014.0.i.i, i64 noundef %.sroa.515.0.i.i, i64 noundef 1) #59, !noalias !15730
  br label %bb.ab

bb.w:                                             ; preds = %bb.e
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.i.i, %bb.f, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.thread.i.i.i.i"
  %.sroa.6.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit.thread.i.i.i.i" ], [ %i.q, %bb.f ], [ %i.q, %.loopexit.i.i.i.i ]
  store i64 %.val3.i.i, ptr %i.b, align 8, !alias.scope !15694, !noalias !15731
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !15694, !noalias !15731
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.val3.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !alias.scope !15694, !noalias !15731
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !15693, !noalias !15691, !align !8, !noundef !6 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %.loopexit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15732)
  %i.by = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !15733, !noalias !15691, !nonnull !6, !align !9, !noundef !6
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 88
  %i.cb = load ptr, ptr %i.ca, align 8, !invariant.load !6, !noalias !15734, !nonnull !6
  %i.cc = invoke { ptr, ptr } %i.cb(ptr noundef nonnull align 1 %i.bx)
          to label %"_ZN11liquid_core5error5clone119_$LT$impl$u20$core..clone..Clone$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$liquid_core..error..clone..ErrorClone$GT$$GT$5clone17h7aa0c00737db22feE.exit.i.i" unwind label %bb.y, !noalias !15691, !inline_history !15735 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..error..trace..Trace$GT$$GT$17hf54377b069ce67f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #58, !noalias !15691
  br label %.body.i.i

"_ZN11liquid_core5error5clone119_$LT$impl$u20$core..clone..Clone$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$liquid_core..error..clone..ErrorClone$GT$$GT$5clone17h7aa0c00737db22feE.exit.i.i": ; preds = %bb.x
  %i.ce = extractvalue { ptr, ptr } %i.cc, 0
  %i.cf = extractvalue { ptr, ptr } %i.cc, 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %"_ZN11liquid_core5error5clone119_$LT$impl$u20$core..clone..Clone$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$liquid_core..error..clone..ErrorClone$GT$$GT$5clone17h7aa0c00737db22feE.exit.i.i", %.loopexit.i.i
  %.sroa.5.0.i.i = phi ptr [ %i.cf, %"_ZN11liquid_core5error5clone119_$LT$impl$u20$core..clone..Clone$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$liquid_core..error..clone..ErrorClone$GT$$GT$5clone17h7aa0c00737db22feE.exit.i.i" ], [ undef, %.loopexit.i.i ]
  %.sroa.0.0.i.i = phi ptr [ %i.ce, %"_ZN11liquid_core5error5clone119_$LT$impl$u20$core..clone..Clone$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$liquid_core..error..clone..ErrorClone$GT$$GT$5clone17h7aa0c00737db22feE.exit.i.i" ], [ null, %.loopexit.i.i ]
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7.i.i, i64 7, i1 false), !noalias !15685
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !15685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15692
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.014.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !15685
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sroa.515.0.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !15685
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 47
  store i8 %i.g, ptr %.sroa.7.0..sroa_idx.i, align 1, !noalias !15685
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.0.0.i.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !15685
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %.sroa.5.0.i.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !15685
  ret ptr %i.c

bb.ab:                                            ; preds = %bb.z, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %.body.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.cg, %bb.z ], [ %.pn.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i" ], [ %.pn.i.i, %.body.i.i ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 64, i64 noundef 8) #59
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$core..str..error..ParseBoolError$u20$as$u20$core..fmt..Debug$GT$3fmt17hf390f1ccdb904956E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @613, i64 noundef 14)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$liquid_core..error..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h287305660a4de3f1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @559, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @585, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @614)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN69_$LT$liquid_core..model..find..Path$u20$as$u20$core..fmt..Display$GT$3fmt17he5c39a6bb341e780E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !6 ; 3 uses
  %.idx = shl nuw nsw i64 %i.q, 5                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15812)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !15813
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h19777d8f013c474eE.exit.thread.i.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15815)
  %i.u = load i64, ptr %i.o, align 8, !range !7, !alias.scope !15816, !noalias !15817, !noundef !6 ; 2 uses
  %i.v = add nsw i64 %i.u, -2
  %i.w = icmp samesign ugt i64 %i.u, 1
  %i.x = select i1 %i.w, i64 %i.v, i64 5
  switch i64 %i.x, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 4, label %bb.h
    i64 5, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h19777d8f013c474eE.exit.i.i"
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h19777d8f013c474eE.exit.i.i"

bb.e:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h19777d8f013c474eE.exit.i.i"

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h19777d8f013c474eE.exit.i.i"

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h19777d8f013c474eE.exit.i.i"

bb.h:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h19777d8f013c474eE.exit.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h19777d8f013c474eE.exit.i.i": ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.9.0.i.i.i.i.i = phi ptr [ @0, %bb.d ], [ @1, %bb.e ], [ @2, %bb.f ], [ @3, %bb.g ], [ @4, %bb.h ], [ @5, %bb.b ]
  %.sroa.0.0.i.i2.i.i.i = phi ptr [ %i.y, %bb.d ], [ %i.z, %bb.e ], [ %i.aa, %bb.f ], [ %i.ab, %bb.g ], [ %i.ac, %bb.h ], [ %i.o, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i.i.i.i.i, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !6, !noalias !15818, !nonnull !6
  call void %i.ae(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull align 1 %.sroa.0.0.i.i2.i.i.i), !noalias !15819, !inline_history !15750
  %.pr.i.i = load i64, ptr %i.k, align 8, !noalias !15813
  %.not.i.i = icmp eq i64 %.pr.i.i, 2
  br i1 %.not.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h19777d8f013c474eE.exit.thread.i.i", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h19777d8f013c474eE.exit.thread.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h19777d8f013c474eE.exit.i.i", %bb.a
  store i64 0, ptr %i.m, align 8, !alias.scope !15820, !noalias !15821
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !15820, !noalias !15821
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !15820, !noalias !15821
  br label %bb.al

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit.i.i": ; preds = %bb.l, %.body.i.i, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.af, %bb.i ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i.i, %bb.l ]
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE"(ptr noalias noundef align 8 dereferenceable(24) %i.j) #58
          to label %common.resume unwind label %bb.ak, !noalias !15813

bb.i:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit.i.i"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h19777d8f013c474eE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15813
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !15813
  %gepdiff = add nsw i64 %.idx, -32
  %i.ag = lshr exact i64 %gepdiff, 5              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15813
  %i.ah = icmp eq i64 %i.q, 1                     ; 2 uses
  br i1 %i.ah, label %bb.k, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !15822
  %i.ai = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, 9) 1) #59, !noalias !15822 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @558) #57
          to label %.noexc13.i.i unwind label %bb.i, !noalias !15813

.noexc13.i.i:                                     ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.ai, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ]
end_hunk_0
