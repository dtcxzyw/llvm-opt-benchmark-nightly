Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/liquid_core-693624a1712aaef7.liquid_core.91b98bf4681e5dbd-cgu.0?download=true
inline.NumInlined: 4312
inline.NumDeleted: 1825
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 26
begin_hunk_0_@"_ZN115_$LT$liquid_core..model..value..view..ValueViewCmp$u20$as$u20$core..cmp..PartialEq$LT$alloc..string..String$GT$$GT$2eq17h41a7d309310aabc3E":bb.a
bb.g:                                             ; preds = %bb.f
  %.val1.i.i.i.i.i4.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1615, !noalias !1599, !noundef !6 ; 2 uses
  %i.v = icmp eq i64 %.val1.i.i.i.i.i4.i, 0
  br i1 %i.v, label %"_ZN97_$LT$liquid_core..model..value..view..ValueViewCmp$u20$as$u20$core..cmp..PartialEq$LT$str$GT$$GT$2eq17h06a4dc030d653c2cE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i5.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i5.i": ; preds = %bb.g
  %.val.i.i.i.i.i6.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1615, !noalias !1599, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i6.i, i64 noundef %.val1.i.i.i.i.i4.i, i64 noundef 1) #59, !noalias !1616
  br label %"_ZN97_$LT$liquid_core..model..value..view..ValueViewCmp$u20$as$u20$core..cmp..PartialEq$LT$str$GT$$GT$2eq17h06a4dc030d653c2cE.exit"

"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.j

"_ZN97_$LT$liquid_core..model..value..view..ValueViewCmp$u20$as$u20$core..cmp..PartialEq$LT$str$GT$$GT$2eq17h06a4dc030d653c2cE.exit": ; preds = %bb.e, %bb.f, %bb.g, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i5.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1599
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @"_ZN117_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..cmp..PartialEq$LT$kstring..string_ref..KStringRef$GT$$GT$2eq17hdf5db93cd5c6fc1aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit":
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %1, align 8, !range !18, !noundef !6
  %.sroa.5.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0 = load i64, ptr %.sroa.5.sroa.5.0.in, align 8, !noundef !6
  %.sroa.5.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0 = load ptr, ptr %.sroa.5.sroa.0.0.in, align 8, !nonnull !6, !align !8, !noundef !6
  store i64 %i.b, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.sroa.0.0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.5.sroa.5.0, ptr %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx, align 8
  %.sroa.45.sroa.6.0..sroa.45.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  store i8 0, ptr %.sroa.45.sroa.6.0..sroa.45.0..sroa_idx.sroa_idx, align 1
  %i.c = call fastcc noundef zeroext i1 @_ZN11liquid_core5model6scalar9scalar_eq17hf8920104858f0167E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef range(i8 -1, 3) i8 @"_ZN118_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..cmp..PartialOrd$LT$kstring..string_ref..KStringRef$GT$$GT$11partial_cmp17hdbeb4f3b2184d02aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit":
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %1, align 8, !range !18, !noundef !6
  %.sroa.5.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0 = load i64, ptr %.sroa.5.sroa.5.0.in, align 8, !noundef !6
  %.sroa.5.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0 = load ptr, ptr %.sroa.5.sroa.0.0.in, align 8, !nonnull !6, !align !8, !noundef !6
  store i64 %i.b, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.sroa.0.0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.5.sroa.5.0, ptr %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx, align 8
  %.sroa.45.sroa.6.0..sroa.45.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  store i8 0, ptr %.sroa.45.sroa.6.0..sroa.45.0..sroa_idx.sroa_idx, align 1
  %i.c = call fastcc noundef i8 @_ZN11liquid_core5model6scalar10scalar_cmp17h2bfd2bd2498e5618E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %i.c
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @"_ZN11liquid_core5error5clone119_$LT$impl$u20$core..clone..Clone$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$liquid_core..error..clone..ErrorClone$GT$$GT$5clone17h7aa0c00737db22feE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !8, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !9, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull align 1 %i.a)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error11cause_error17h6778162607865bdfE(ptr noalias noundef nonnull returned align 8 %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %.val = load ptr, ptr %i.b, align 8, !align !8, !noundef !6 ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %.val1 = load ptr, ptr %i.c, align 8            ; 6 uses
  %i.d = icmp eq ptr %.val, null
  br i1 %i.d, label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$liquid_core..error..clone..ErrorClone$GT$$GT$$GT$17h1d04e425dbaf361eE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !21, !invariant.load !6 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !31, !invariant.load !6 ; 2 uses
  %i.j = icmp ult i64 %i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$liquid_core..error..clone..ErrorClone$GT$$GT$$GT$17h1d04e425dbaf361eE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.i) #59
  br label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$liquid_core..error..clone..ErrorClone$GT$$GT$$GT$17h1d04e425dbaf361eE.exit"

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !21, !invariant.load !6 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !31, !invariant.load !6 ; 2 uses
  %i.q = icmp ult i64 %i.p, -9223372036854775807
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i64 %i.n, 0
  br i1 %i.r, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %i.p) #59
  br label %.body

.body:                                            ; preds = %bb.e, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.c, align 8
  invoke void @"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17h2518bcfbc332241fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #58
          to label %bb.g unwind label %bb.f

"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$dyn$u20$liquid_core..error..clone..ErrorClone$GT$$GT$$GT$17h1d04e425dbaf361eE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %bb.d, %bb.a
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.c, align 8
  ret ptr %0

bb.f:                                             ; preds = %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error11trace_trace17hd53f6cd3c8425f7dE(ptr noalias noundef nonnull returned align 8 %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1620)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1620, !noalias !1621, !noundef !6 ; 3 uses
  %i.f = load i64, ptr %0, align 8, !range !21, !alias.scope !1620, !noalias !1621, !noundef !6
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hd00c92a6d821de48E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64)
          to label %bb.c unwind label %.body, !noalias !1621

.body:                                            ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..trace..Trace$GT$17hae39f20a06620ecaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.a) #58, !noalias !1620
  invoke void @"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17h2518bcfbc332241fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #58
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1620, !noalias !1621, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %i.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !1620
  %i.l = add i64 %i.e, 1
  store i64 %i.l, ptr %i.d, align 8, !alias.scope !1620, !noalias !1621
  ret ptr %0

bb.d:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.e:                                             ; preds = %.body
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.sroa.616.0.copyload = load i8, ptr %.sroa.616.0..sroa_idx, align 1 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.b = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #59 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = icmp ne i8 %.sroa.616.0.copyload, -1
  %i.f = icmp eq i64 %.sroa.5.0.copyload, 0
  %or.cond = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef %.sroa.5.0.copyload, i64 noundef 1) #59, !noalias !1630
  br label %common.resume

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 56) #57
          to label %bb.h unwind label %bb.b

bb.d:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx, align 8
  %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.0.0.copyload, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx13, align 8
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.0..sroa_idx, i64 7, i1 false)
  %.sroa.616.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.a, i64 47
  store i8 %.sroa.616.0.copyload, ptr %.sroa.616.0..sroa_idx17, align 1
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.520.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.h, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !1631
  %i.i = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !1631 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h84fe02eb4bfa4748E.exit", !prof !12

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #57
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$liquid_core..error..error..InnerError$GT$17hc148546d09e4dc7cE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #58
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

common.resume:                                    ; preds = %bb.b, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.d, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i" ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h84fe02eb4bfa4748E.exit": ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  ret ptr %i.i

bb.h:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error18context_cow_string17h00596da4b59089fdE(ptr noalias noundef nonnull returned align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @65, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #57
          to label %bb.e unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  %i.g = getelementptr [56 x i8], ptr %i.f, i64 %i.d ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1639)
  %i.h = getelementptr i8, ptr %i.g, i64 -24      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !1641
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !1642
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  %i.j = getelementptr i8, ptr %i.g, i64 -8       ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1644, !noalias !1645, !noundef !6 ; 3 uses
  %i.l = load i64, ptr %i.h, align 8, !range !21, !alias.scope !1644, !noalias !1645, !noundef !6
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hc9563734253fc08fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68)
          to label %bb.f unwind label %.body, !noalias !1645

.body:                                            ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr160drop_in_place$LT$$LP$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$C$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$RP$$GT$17hcddcf81549d1430eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.a) #58, !noalias !1646
  br label %.critedge

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr i8, ptr %i.g, i64 -16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1644, !noalias !1645, !nonnull !6, !noundef !6
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !1646
  %i.r = add i64 %i.k, 1
  store i64 %i.r, ptr %i.j, align 8, !alias.scope !1644, !noalias !1645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1640
  ret ptr %0

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @"_ZN4core3ptr85drop_in_place$LT$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$17h62130ebd7b042b86E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2) #58
  tail call void @"_ZN4core3ptr85drop_in_place$LT$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$17h62130ebd7b042b86E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #58
  br label %.critedge

bb.h:                                             ; preds = %.critedge
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

.critedge:                                        ; preds = %bb.g, %.body
  %eh.lpad-body5 = phi { ptr, i32 } [ %i.n, %.body ], [ %i.s, %bb.g ]
  invoke void @"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17h2518bcfbc332241fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #58
          to label %bb.i unwind label %bb.h

bb.i:                                             ; preds = %.critedge
  resume { ptr, i32 } %eh.lpad-body5
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error7context17h3f53cf04a07a244eE(ptr noalias noundef nonnull returned align 8 %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 4, 19) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8, !alias.scope !1679, !noalias !1680
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %2, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !1679, !noalias !1680
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i.i.i, align 1, !alias.scope !1679, !noalias !1680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.0.0.copyload = load i64, ptr %3, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp sgt i64 %.sroa.7.0.copyload, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ult i64 %.sroa.7.0.copyload, 16
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %.sroa.0.0.copyload, %.sroa.7.0.copyload
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.h = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %.sroa.7.0.copyload) #59, !noalias !1683 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.7.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i.i.i unwind label %"_ZN4core3ptr85drop_in_place$LT$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$17h62130ebd7b042b86E.exit", !noalias !1684

.noexc.i.i.i.i:                                   ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !1685
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %.sroa.5.0.copyload, i64 %.sroa.7.0.copyload, i1 false), !noalias !1685
  %.0..0..0..0..0..0..0..sroa.0.1.copyload.i.i = load i56, ptr %i.a, align 8, !noalias !1686
  %.sroa.0.1.insert.ext.i.i = zext i56 %.0..0..0..0..0..0..0..sroa.0.1.copyload.i.i to i64
  %.sroa.0.1.insert.shift.i.i = shl nuw i64 %.sroa.0.1.insert.ext.i.i, 8
  %.sroa.0.1.insert.insert.i.i = or disjoint i64 %.sroa.0.1.insert.shift.i.i, %.sroa.7.0.copyload
  %i.j = inttoptr i64 %.sroa.0.1.insert.insert.i.i to ptr ; 2 uses
  %.7..7..7..7..7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..7..7..7..7..sroa.6.1.copyload.i.i = load i64, ptr %.7..7..7..7..7..7..7..sroa_idx, align 1, !noalias !1686 ; 2 uses
  %i.k = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1687
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.j, %bb.e ], [ %i.j, %bb.f ], [ %i.h, %bb.c ], [ %.sroa.5.0.copyload, %bb.b ]
  %.sroa.71.0.i.i = phi i8 [ 1, %bb.e ], [ 1, %bb.f ], [ -1, %bb.c ], [ -1, %bb.b ]
  %.sroa.6.0.i.i = phi i64 [ %.7..7..7..7..7..7..7..sroa.6.1.copyload.i.i, %bb.e ], [ %.7..7..7..7..7..7..7..sroa.6.1.copyload.i.i, %bb.f ], [ %.sroa.7.0.copyload, %bb.c ], [ %.sroa.7.0.copyload, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0.i.i, ptr %i.b, align 8, !alias.scope !1688, !noalias !1689
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.6.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1688, !noalias !1689
  %.sroa.71.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  store i8 %.sroa.71.0.i.i, ptr %.sroa.71.0..sroa_idx.i.i, align 1, !alias.scope !1688, !noalias !1689
  %i.l = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error18context_cow_string17h00596da4b59089fdE(ptr noalias noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %0

"_ZN4core3ptr85drop_in_place$LT$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$17h62130ebd7b042b86E.exit": ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1690
  invoke void @"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17h2518bcfbc332241fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #58
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$17h62130ebd7b042b86E.exit"
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.i:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$17h62130ebd7b042b86E.exit"
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_ZN11liquid_core5model3ser20key_must_be_a_string17hd8397ed50d19af25E() unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @69, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 21, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_ZN11liquid_core5model3ser8SerError12invalid_type17ha5a42d70a1dc4bbeE(ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(160) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %3, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !6, !nonnull !6
  %i.k = tail call { ptr, i64 } %i.j(ptr noundef nonnull align 1 %0) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  store ptr %i.l, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.m, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17ha1ea5792533ec5ecE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.g, ptr %i.o, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17ha1ea5792533ec5ecE", ptr %.sroa.46.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1714
  store ptr @72, ptr %i.b, align 8, !noalias !1715
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1715
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1715
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !1715
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !1715
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !1716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1717, !noalias !1718, !noundef !6 ; 9 uses
  %i.r = icmp sgt i64 %i.q, -1
  call void @llvm.assume(i1 %i.r)
  %i.s = icmp samesign ult i64 %i.q, 16
  br i1 %i.s, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.018.0.copyload.i = load i64, ptr %i.f, align 8, !alias.scope !1717, !noalias !1718 ; 3 uses
  %.sroa.219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.219.0.copyload.i = load ptr, ptr %.sroa.219.0..sroa_idx.i, align 8, !alias.scope !1717, !noalias !1718 ; 4 uses
  %i.t = icmp ugt i64 %.sroa.018.0.copyload.i, %i.q
  br i1 %i.t, label %bb.c, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.219.0.copyload.i) ]
  %i.u = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.219.0.copyload.i, i64 noundef %.sroa.018.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %i.q) #59, !noalias !1719 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !1720

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

.body.i:                                          ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.219.0.copyload.i, i64 noundef %.sroa.018.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1721
  resume { ptr, i32 } %i.w

bb.e:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1717, !noalias !1718, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !1722
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %i.y, i64 %i.q, i1 false), !noalias !1722
  %.0..0..0..sroa.07.1.copyload = load i56, ptr %i.a, align 8, !noalias !1717
  %.sroa.07.1.insert.ext = zext i56 %.0..0..0..sroa.07.1.copyload to i64
  %.sroa.07.1.insert.shift = shl nuw i64 %.sroa.07.1.insert.ext, 8
  %.sroa.07.1.insert.insert = or disjoint i64 %.sroa.07.1.insert.shift, %i.q
  %i.z = inttoptr i64 %.sroa.07.1.insert.insert to ptr ; 2 uses
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.68.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !1717 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  %.val.i.i.i = load i64, ptr %i.f, align 8, !range !21, !alias.scope !1725, !noalias !1718, !noundef !6 ; 2 uses
  %i.aa = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.aa, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1726
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit": ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.sroa.68.0 = phi i64 [ %.7..7..7..sroa.68.1.copyload, %bb.e ], [ %.7..7..7..sroa.68.1.copyload, %bb.f ], [ %i.q, %bb.c ], [ %i.q, %bb.b ]
  %.sroa.710.0 = phi i8 [ 1, %bb.e ], [ 1, %bb.f ], [ -1, %bb.c ], [ -1, %bb.b ]
  %.sroa.07.0 = phi ptr [ %i.z, %bb.e ], [ %i.z, %bb.f ], [ %i.u, %bb.c ], [ %.sroa.219.0.copyload.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.07.0, ptr %i.c, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.68.0, ptr %.sroa.68.0..sroa_idx, align 8
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  store i8 %.sroa.710.0, ptr %.sroa.710.0..sroa_idx, align 1
  %i.ab = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.ab
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_ZN11liquid_core5model3ser8SerError12unknown_type17h5ade88046dbcce21E(ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(160) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !6, !nonnull !6
  %i.i = tail call { ptr, i64 } %i.h(ptr noundef nonnull align 1 %0) ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  store ptr %i.j, ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.k, ptr %i.l, align 8
  store ptr %i.d, ptr %i.e, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17ha1ea5792533ec5ecE", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1750
  store ptr @74, ptr %i.b, align 8, !noalias !1751
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1751
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1751
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !1751
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !1751
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !1752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !1753)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1753, !noalias !1754, !noundef !6 ; 9 uses
  %i.o = icmp sgt i64 %i.n, -1
  call void @llvm.assume(i1 %i.o)
  %i.p = icmp samesign ult i64 %i.n, 16
  br i1 %i.p, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.018.0.copyload.i = load i64, ptr %i.f, align 8, !alias.scope !1753, !noalias !1754 ; 3 uses
  %.sroa.219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.219.0.copyload.i = load ptr, ptr %.sroa.219.0..sroa_idx.i, align 8, !alias.scope !1753, !noalias !1754 ; 4 uses
  %i.q = icmp ugt i64 %.sroa.018.0.copyload.i, %i.n
  br i1 %i.q, label %bb.c, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.219.0.copyload.i) ]
  %i.r = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.219.0.copyload.i, i64 noundef %.sroa.018.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %i.n) #59, !noalias !1755 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !1756

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

.body.i:                                          ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.219.0.copyload.i, i64 noundef %.sroa.018.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1757
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1753, !noalias !1754, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !1758
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %i.v, i64 %i.n, i1 false), !noalias !1758
  %.0..0..0..sroa.05.1.copyload = load i56, ptr %i.a, align 8, !noalias !1753
  %.sroa.05.1.insert.ext = zext i56 %.0..0..0..sroa.05.1.copyload to i64
  %.sroa.05.1.insert.shift = shl nuw i64 %.sroa.05.1.insert.ext, 8
  %.sroa.05.1.insert.insert = or disjoint i64 %.sroa.05.1.insert.shift, %i.n
  %i.w = inttoptr i64 %.sroa.05.1.insert.insert to ptr ; 2 uses
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.66.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !1753 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  call void @llvm.experimental.noalias.scope.decl(metadata !1760)
  %.val.i.i.i = load i64, ptr %i.f, align 8, !range !21, !alias.scope !1761, !noalias !1754, !noundef !6 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.x, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !1762
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit": ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.sroa.66.0 = phi i64 [ %.7..7..7..sroa.66.1.copyload, %bb.e ], [ %.7..7..7..sroa.66.1.copyload, %bb.f ], [ %i.n, %bb.c ], [ %i.n, %bb.b ]
  %.sroa.78.0 = phi i8 [ 1, %bb.e ], [ 1, %bb.f ], [ -1, %bb.c ], [ -1, %bb.b ]
  %.sroa.05.0 = phi ptr [ %i.w, %bb.e ], [ %i.w, %bb.f ], [ %i.r, %bb.c ], [ %.sroa.219.0.copyload.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.05.0, ptr %i.c, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.66.0, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.78.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  store i8 %.sroa.78.0, ptr %.sroa.78.0..sroa_idx, align 1
  %i.y = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.y
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN11liquid_core5model4find13augmented_get17h46ff90ade176ec95E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(160) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 14 uses
  %i.c = alloca [32 x i8], align 8                ; 15 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 19 uses
  %i.f = alloca [32 x i8], align 8                ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !6, !nonnull !6
  %i.i = tail call { ptr, ptr } %i.h(ptr noundef nonnull align 1 %1) ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 5 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 5 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = tail call { i64, i64 } @_ZN11liquid_core5model6scalar9ScalarCow10to_integer17h822563f805932902E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !6, !nonnull !6
  %i.q = tail call { ptr, ptr } %i.p(ptr noundef nonnull align 1 %1) ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.q, 0        ; 3 uses
  %i.s = extractvalue { ptr, ptr } %i.q, 1        ; 3 uses
  %.not78 = icmp eq ptr %i.r, null
  br i1 %.not78, label %bb.ba, label %bb.ao

bb.d:                                             ; preds = %bb.b
  %i.t = extractvalue { i64, i64 } %i.l, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !6, !nonnull !6
  %i.w = tail call { ptr, ptr } %i.v(ptr noundef nonnull align 1 %i.j, i64 noundef %i.t) ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 2 uses
  %.not93 = icmp eq ptr %i.x, null
  br i1 %.not93, label %bb.r, label %bb.q

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1877)
  %i.y = load i64, ptr %3, align 8, !range !7, !alias.scope !1877, !noalias !1878, !noundef !6 ; 2 uses
  %i.z = add nsw i64 %i.y, -2
  %i.aa = icmp samesign ugt i64 %i.y, 1
  %i.ab = select i1 %i.aa, i64 %i.z, i64 5
  switch i64 %i.ab, label %bb.f [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.k
    i64 5, label %"_ZN100_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$7to_kstr17h51c26f45faf3a7efE.exit"
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %"_ZN100_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$7to_kstr17h51c26f45faf3a7efE.exit"

bb.h:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %"_ZN100_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$7to_kstr17h51c26f45faf3a7efE.exit"

bb.i:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %"_ZN100_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$7to_kstr17h51c26f45faf3a7efE.exit"

bb.j:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %"_ZN100_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$7to_kstr17h51c26f45faf3a7efE.exit"

bb.k:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %"_ZN100_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$7to_kstr17h51c26f45faf3a7efE.exit"

"_ZN100_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$7to_kstr17h51c26f45faf3a7efE.exit": ; preds = %bb.e, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.9.0.i = phi ptr [ @0, %bb.g ], [ @1, %bb.h ], [ @2, %bb.i ], [ @3, %bb.j ], [ @4, %bb.k ], [ @5, %bb.e ]
  %.sroa.0.0.i = phi ptr [ %i.ac, %bb.g ], [ %i.ad, %bb.h ], [ %i.ae, %bb.i ], [ %i.af, %bb.j ], [ %i.ag, %bb.k ], [ %3, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !6, !noalias !1879, !nonnull !6
  call void %i.ai(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull align 1 %.sroa.0.0.i), !inline_history !13
  %i.aj = load i64, ptr %i.f, align 8, !range !18, !alias.scope !1880, !noundef !6 ; 3 uses
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 6 uses
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %"_ZN100_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$7to_kstr17h51c26f45faf3a7efE.exit"
end_hunk_0
begin_hunk_1_@"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$7to_kstr17h2194fa7e2aa1d4acE":bb.a
  %.sroa.5.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !2807 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = icmp sgt i64 %.sroa.5.0.copyload, -1
  call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ult i64 %.sroa.5.0.copyload, 16
  br i1 %i.l, label %bb.i, label %bb.f

bb.f:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h0da72b7ac46ae7a4E.exit"
  %i.m = icmp ugt i64 %.sroa.0.0.copyload, %.sroa.5.0.copyload
  br i1 %i.m, label %bb.g, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  %i.n = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.3.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %.sroa.5.0.copyload) #59, !noalias !2808 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.5.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !2809

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

.body.i:                                          ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !2810
  br label %common.resume

bb.i:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h0da72b7ac46ae7a4E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, i8 0, i64 15, i1 false), !noalias !2811
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 1 %.sroa.3.0.copyload, i64 %.sroa.5.0.copyload, i1 false), !noalias !2811
  %.0..0..0..sroa.04.1.copyload = load i56, ptr %i.b, align 8, !noalias !2812
  %.sroa.04.1.insert.ext = zext i56 %.0..0..0..sroa.04.1.copyload to i64
  %.sroa.04.1.insert.shift = shl nuw i64 %.sroa.04.1.insert.ext, 8
  %.sroa.04.1.insert.insert = or disjoint i64 %.sroa.04.1.insert.shift, %.sroa.5.0.copyload
  %i.q = inttoptr i64 %.sroa.04.1.insert.insert to ptr ; 2 uses
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %.7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !2812 ; 2 uses
  %i.r = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.r, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !2813
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit": ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %.sroa.04.0 = phi ptr [ %i.q, %bb.i ], [ %i.q, %bb.j ], [ %i.n, %bb.g ], [ %.sroa.3.0.copyload, %bb.f ]
  %.sroa.75.0 = phi i8 [ 1, %bb.i ], [ 1, %bb.j ], [ -1, %bb.g ], [ -1, %bb.f ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..sroa.6.1.copyload, %bb.i ], [ %.7..7..7..sroa.6.1.copyload, %bb.j ], [ %.sroa.5.0.copyload, %bb.g ], [ %.sroa.5.0.copyload, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.04.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.75.0, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$8as_debug17h7755a98ab707ec08E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @93, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$8to_value17hbd0e85448a51982eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfff25d08c22a1c41E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  store i8 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$9as_object17h733f59e16430dc4bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @39, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$9type_name17hcddfbd2d725846a6E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @41, i64 6 }
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 dereferenceable(56) ptr @_ZN11liquid_core5model6object3map5Entry9or_insert17h5d3bb33502d57ab9E(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !6   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  tail call void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17h3ebd55d3060db4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2819)
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !2819, !noalias !2820, !nonnull !6, !noundef !6 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val4.i = load i64, ptr %i.i, align 8, !alias.scope !2819, !noalias !2820, !noundef !6 ; 4 uses
  %.sroa.0.04.i.i.i = and i64 %.val4.i, %i.f      ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.04.i.i.i
  %.sroa.0.0.copyload.i35.i.i.i = load <16 x i8>, ptr %i.j, align 1, !noalias !2821
  %i.k = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i.i, zeroinitializer
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not.not.i.not6.i.i.i = icmp eq i16 %i.l, 0
  br i1 %.not.not.i.not6.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !25

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.04.i.i.i, %bb.c ]
  %i.m = phi i64 [ %i.n, %.lr.ph.i.i.i ], [ 0, %bb.c ]
  %i.n = add i64 %i.m, 16                         ; 2 uses
  %i.o = add i64 %i.n, %.sroa.0.07.i.i.i
  %.sroa.0.0.i.i.i = and i64 %i.o, %.val4.i       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.i.i.i
  %.sroa.0.0.copyload.i3.i.i.i = load <16 x i8>, ptr %i.p, align 1, !noalias !2821
  %i.q = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i.i, zeroinitializer
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not.not.i.not.i.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.not.i.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !26

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.04.i.i.i, %bb.c ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.l, %bb.c ], [ %i.r, %.lr.ph.i.i.i ]
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = add i64 %.sroa.0.0.lcssa.i.i.i, %i.t
  %i.v = and i64 %i.u, %.val4.i                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !2822, !noundef !6 ; 2 uses
  %i.y = icmp sgt i8 %i.x, -1
  br i1 %i.y, label %bb.d, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h60da9c70d9b2bd6bE.exit", !prof !12

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !2822
  %i.z = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %i.ab = icmp ne i16 %i.aa, 0
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aa, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64              ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ad
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !2822
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h60da9c70d9b2bd6bE.exit"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h60da9c70d9b2bd6bE.exit": ; preds = %._crit_edge.i.i.i, %bb.d
  %i.ae = phi i8 [ %.pre.i.i, %bb.d ], [ %i.x, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.ad, %bb.d ], [ %i.v, %._crit_edge.i.i.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.i5.i.i.i
  %i.ag = lshr i64 %i.f, 57
  %i.ah = trunc nuw nsw i64 %i.ag to i8           ; 2 uses
  %i.ai = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.aj = and i64 %i.ai, %.val4.i
  store i8 %i.ah, ptr %i.af, align 1, !noalias !2822
  %i.ak = getelementptr i8, ptr %.val.i, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  store i8 %i.ah, ptr %i.al, align 1, !noalias !2822
  %i.am = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.an = getelementptr inbounds [80 x i8], ptr %.val.i, i64 %i.am ; 2 uses
  %i.ao = and i8 %i.ae, 1
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 -80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !2819
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !2819, !noalias !2820
  %i.at = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ap, i64 0
  %i.au = sub <2 x i64> %i.as, %i.at
  store <2 x i64> %i.au, ptr %i.aq, align 8, !alias.scope !2819, !noalias !2820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h60da9c70d9b2bd6bE.exit", %bb.b
  %.pn = phi ptr [ %i.e, %bb.b ], [ %i.an, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h60da9c70d9b2bd6bE.exit" ]
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.pn, i64 -56
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_ZN11liquid_core5model6object3ser25object_cannot_be_a_scalar17h7c7bbba1f18deda3E() unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @94, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 26, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef zeroext i1 @"_ZN11liquid_core5model6scalar104_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_ref..KStringRef$GT$11query_state17h04241d7a00e461d7E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #20 {
bb.a:
  %.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0 = load i64, ptr %.sroa.5.0.in, align 8, !noundef !6 ; 3 uses
  switch i8 %1, label %default.unreachable [
    i8 0, label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %.sroa.5.0, 0
  br label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.sroa.5.0, 0
  br label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !nonnull !6, !align !8, !noundef !6
  %i.c = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h03fe2cfe0c149ccaE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.5.0), !noalias !2825
  %i.d = extractvalue { ptr, i64 } %i.c, 1
  %i.e = icmp eq i64 %i.d, 0
  br label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"

"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit": ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.shrunk.i = phi i1 [ %i.e, %bb.d ], [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN11liquid_core5model6scalar104_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_ref..KStringRef$GT$6render17hf54f0315ddec3540E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @96, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar104_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_ref..KStringRef$GT$6source17hf46ce8be84854106E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !nonnull !6, !align !8, !noundef !6
  %.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0 = load i64, ptr %.sroa.5.0.in, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !2828
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !2828 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #57, !noalias !2828
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit: ; preds = %bb.a
  store ptr %.sroa.0.0, ptr %i.a, align 8, !noalias !2828
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.5.0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @97, ptr %i.e, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar104_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_ref..KStringRef$GT$7to_kstr17h75eefb2a982917d3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !18, !noundef !6
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !8, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink16 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink16, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model6scalar104_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_ref..KStringRef$GT$8as_debug17h8f6a81abcd9a2342E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @98, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar104_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_ref..KStringRef$GT$8to_value17h597f9b151d043763E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %1, align 8, !range !18, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !6 ; 9 uses
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = icmp ult i64 %i.g, 16
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %bb.d, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", !prof !14

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !2840
  %i.j = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !2840 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i"

bb.d:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %bb.c
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ], [ 0, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #57, !noalias !2841
  unreachable

"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i"
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %i.e, i64 %i.g, i1 false), !noalias !2842
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit"

bb.e:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !2843
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %i.e, i64 %i.g, i1 false), !noalias !2842
  %.0..0..0..sroa.0.1.copyload = load i56, ptr %i.a, align 8, !noalias !2844
  %.sroa.0.1.insert.ext = zext i56 %.0..0..0..sroa.0.1.copyload to i64
  %.sroa.0.1.insert.shift = shl nuw i64 %.sroa.0.1.insert.ext, 8
  %.sroa.0.1.insert.insert = or disjoint i64 %.sroa.0.1.insert.shift, %i.g
  %i.l = inttoptr i64 %.sroa.0.1.insert.insert to ptr
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !2844
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit": ; preds = %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i", %bb.e
  %.sroa.0.0 = phi ptr [ %i.l, %bb.e ], [ %i.j, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i" ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..sroa.6.1.copyload, %bb.e ], [ %i.g, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i" ]
  %.sink.i = phi i8 [ 1, %bb.e ], [ -1, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit"
  %.sroa.05.0 = phi ptr [ %.sroa.0.0, %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit" ], [ %i.e, %bb.a ]
  %.sroa.57.0 = phi i64 [ %.sroa.6.0, %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit" ], [ %i.g, %bb.a ]
  %.sroa.7.0 = phi i8 [ %.sink.i, %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit" ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.m, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.05.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.57.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 39
  store i8 %.sroa.7.0, ptr %.sroa.531.0..sroa_idx, align 1
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar104_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_ref..KStringRef$GT$9as_scalar17h0e6072c4ee294fe2E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24), (31, 32)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !18, !noundef !6
  %.sroa.5.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0 = load i64, ptr %.sroa.5.sroa.5.0.in, align 8, !noundef !6
  %.sroa.5.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_1
begin_hunk_2_@"_ZN11liquid_core5model6scalar119_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..scalar..datetime..DateTime$GT$9type_name17h71c2921b15f7379fE":bb.a
bb.a:
  ret { ptr, i64 } { ptr @107, i64 9 }
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef zeroext i1 @"_ZN11liquid_core5model6scalar137_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$11query_state17hf72d846ac2d9d526E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.b = load i8, ptr %i.a, align 1, !noundef !6
  switch i8 %i.b, label %bb.h [
    i8 0, label %bb.b
    i8 -1, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !6, !align !8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.g, %bb.b
  %.sroa.6.0 = phi i64 [ %i.o, %bb.h ], [ %i.e, %bb.b ], [ %i.m, %bb.g ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.p, %bb.h ], [ %i.c, %bb.b ], [ %i.k, %bb.g ]
  switch i8 %1, label %default.unreachable [
    i8 0, label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %.sroa.6.0, 0
  br label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"

bb.e:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %.sroa.6.0, 0
  br label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"

bb.f:                                             ; preds = %bb.c
  %i.h = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h03fe2cfe0c149ccaE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.6.0), !noalias !3006
  %i.i = extractvalue { ptr, i64 } %i.h, 1
  %i.j = icmp eq i64 %i.i, 0
  br label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"

"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit": ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.shrunk.i = phi i1 [ %i.j, %bb.f ], [ %i.f, %bb.d ], [ %i.g, %bb.e ], [ true, %bb.c ]
  ret i1 %.sroa.0.0.shrunk.i

bb.g:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !6
  br label %bb.c

bb.h:                                             ; preds = %bb.a
  %i.n = load i8, ptr %0, align 8, !noundef !6
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar137_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$6source17h40c659a788c5c106E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.b = load i8, ptr %i.a, align 1, !noundef !6
  switch i8 %i.b, label %bb.f [
    i8 0, label %bb.b
    i8 -1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !nonnull !6, !align !8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.e, %bb.b
  %.sroa.6.0 = phi i64 [ %i.o, %bb.f ], [ %i.e, %bb.b ], [ %i.m, %bb.e ]
  %.sroa.0.0 = phi ptr [ %i.p, %bb.f ], [ %i.c, %bb.b ], [ %i.k, %bb.e ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !3009
  %i.f = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !3009 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #57, !noalias !3009
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit: ; preds = %bb.c
  store ptr %.sroa.0.0, ptr %i.f, align 8, !noalias !3009
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.6.0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @97, ptr %i.j, align 8
  store i64 0, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !6
  br label %bb.c

bb.f:                                             ; preds = %bb.a
  %i.n = load i8, ptr %1, align 8, !noundef !6
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar137_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$8to_value17hc94d0478302146e2E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 1), (8, 40)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [7 x i8], align 8             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3016)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !3017, !noalias !3016, !noundef !6 ; 2 uses
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { ptr, i64 } @"_ZN67_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h99dc39076b9f17afE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !noalias !3016 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  br label %"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit"

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload6 = load ptr, ptr %1, align 8, !alias.scope !3018
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload8 = load i64, ptr %.sroa.5.0..sroa_idx7, align 8, !alias.scope !3018
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.0..sroa_idx9, i64 7, i1 false)
  br label %"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit"

"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit": ; preds = %bb.b, %bb.c
  %.sroa.5.0 = phi i64 [ %i.f, %bb.b ], [ %.sroa.5.0.copyload8, %bb.c ]
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ %.sroa.0.0.copyload6, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.0, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6, i64 7, i1 false)
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 39
  store i8 %i.b, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx, align 1
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN11liquid_core5model6scalar137_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$9as_scalar17h9b5e0738101a59b1E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24), (31, 32)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !3022, !noalias !3023, !noundef !6
  switch i8 %i.b, label %bb.d [
    i8 0, label %bb.b
    i8 -1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !alias.scope !3022, !noalias !3023, !nonnull !6, !align !8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !3022, !noalias !3023, !noundef !6
  br label %"_ZN153_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..convert..From$LT$$RF$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$$GT$4from17h200d1e7cbeaeed0dE.exit"

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !alias.scope !3022, !noalias !3023, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !3022, !noalias !3023, !noundef !6
  br label %"_ZN153_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..convert..From$LT$$RF$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$$GT$4from17h200d1e7cbeaeed0dE.exit"

bb.d:                                             ; preds = %bb.a
  %i.i = load i8, ptr %1, align 8, !alias.scope !3022, !noalias !3023, !noundef !6
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %"_ZN153_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..convert..From$LT$$RF$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$$GT$4from17h200d1e7cbeaeed0dE.exit"

"_ZN153_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..convert..From$LT$$RF$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$$GT$4from17h200d1e7cbeaeed0dE.exit": ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.09.0.i = phi i64 [ 1, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ]
  %.sroa.511.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ %i.k, %bb.d ], [ %i.f, %bb.c ]
  %.sroa.511.sroa.5.0.i = phi i64 [ %i.e, %bb.b ], [ %i.j, %bb.d ], [ %i.h, %bb.c ]
  store i64 %.sroa.09.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.511.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.511.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %.sroa.61.0..sroa_idx, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_ZN11liquid_core5model6scalar3ser23scalar_must_be_a_string17hd619324c6cdf633dE() unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @108, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 24, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_ZN11liquid_core5model6scalar4date4Date8from_str17hfb85b54e2d603f5bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 23 uses
  %i.b = alloca [64 x i8], align 16               ; 23 uses
  %.sroa.33.i98 = alloca [10 x i8], align 2       ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 23 uses
  %i.d = alloca [64 x i8], align 16               ; 23 uses
  %.sroa.33.i4 = alloca [10 x i8], align 2        ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 23 uses
  %i.f = alloca [64 x i8], align 16               ; 23 uses
  %.sroa.33.i = alloca [10 x i8], align 2         ; 5 uses
  %i.g = alloca [64 x i8], align 16               ; 33 uses
  %.sroa.132 = alloca [10 x i8], align 2          ; 18 uses
  %i.h = alloca [24 x i8], align 8                ; 19 uses
  %i.i = alloca [16 x i8], align 4                ; 4 uses
  %.not.i = icmp eq i64 %1, 5
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %0, align 1
  %i.k = xor i32 %i.j, 1633972084
  %i.l = getelementptr i8, ptr %0, i64 4
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = xor i32 %i.n, 121
  %i.p = or i32 %i.k, %i.o
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.07.i.sroa.7.0..sroa_idx11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 3 uses
  %.sroa.07.i.sroa.9.0..sroa_idx17.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 25 ; 3 uses
  %.sroa.07.i.sroa.10.0..sroa_idx19.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  %.sroa.811.0..sroa_idx12.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 54 ; 3 uses
  %.sroa.07.i.sroa.6.0..sroa_idx7.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sroa.07.i.sroa.8.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3084
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.132)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.33.i98)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3085
  store i128 -170141183460469231731687303715884105728, ptr %i.b, align 16, !noalias !3086
  %.sroa.7.0..sroa_idx3.i99 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i32 -2147483648, ptr %.sroa.7.0..sroa_idx3.i99, align 16, !noalias !3086
  %.sroa.8.0..sroa_idx7.i100 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 -2147483648, ptr %.sroa.8.0..sroa_idx7.i100, align 4, !noalias !3086
  %.sroa.9.0..sroa_idx11.i101 = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i32 -1, ptr %.sroa.9.0..sroa_idx11.i101, align 8, !noalias !3086
  %.sroa.10.0..sroa_idx15.i102 = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i16 -32768, ptr %.sroa.10.0..sroa_idx15.i102, align 4, !noalias !3086
  %.sroa.11.0..sroa_idx19.i103 = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  store i16 -32768, ptr %.sroa.11.0..sroa_idx19.i103, align 2, !noalias !3086
  %.sroa.12.0..sroa_idx23.i104 = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i16 0, ptr %.sroa.12.0..sroa_idx23.i104, align 16, !noalias !3086
  %.sroa.13.0..sroa_idx27.i105 = getelementptr inbounds nuw i8, ptr %i.b, i64 34 ; 2 uses
  %.sroa.17.0..sroa_idx43.i109 = getelementptr inbounds nuw i8, ptr %i.b, i64 38
  store i32 -1, ptr %.sroa.13.0..sroa_idx27.i105, align 2, !noalias !3087
  store <8 x i8> <i8 0, i8 0, i8 -1, i8 0, i8 -1, i8 -1, i8 -128, i8 -128>, ptr %.sroa.17.0..sroa_idx43.i109, align 2, !noalias !3086
  %.sroa.25.0..sroa_idx75.i117 = getelementptr inbounds nuw i8, ptr %i.b, i64 46
  store <4 x i8> <i8 -128, i8 0, i8 7, i8 2>, ptr %.sroa.25.0..sroa_idx75.i117, align 2, !noalias !3086
  %.sroa.29.0..sroa_idx91.i121 = getelementptr inbounds nuw i8, ptr %i.b, i64 50 ; 2 uses
  %.sroa.32.0..sroa_idx103.i124 = getelementptr inbounds nuw i8, ptr %i.b, i64 53
  %.sroa.33.0..sroa_idx107.i125 = getelementptr inbounds nuw i8, ptr %i.b, i64 54
  store i32 0, ptr %.sroa.29.0..sroa_idx91.i121, align 2, !noalias !3087
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3085
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @110, ptr noalias noundef align 16 dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1), !noalias !3088, !inline_history !0
  %i.w = load i64, ptr %i.a, align 8, !range !40, !noalias !3085, !noundef !6
  %.not.i.i.i.i129 = icmp eq i64 %i.w, 3
  br i1 %.not.i.i.i.i129, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.u, align 8, !noalias !3085, !nonnull !6, !align !8, !noundef !6
  %i.y = load i64, ptr %i.v, align 8, !noalias !3085, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3085
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3085
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @110, i64 24), ptr noalias noundef align 16 dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.x, i64 noundef %i.y), !noalias !3088, !inline_history !0
  %i.z = load i64, ptr %i.a, align 8, !range !40, !noalias !3085, !noundef !6
  %.not.i.i.i.i129.1 = icmp eq i64 %i.z, 3
  br i1 %.not.i.i.i.i129.1, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.u, align 8, !noalias !3085, !nonnull !6, !align !8, !noundef !6
  %i.ab = load i64, ptr %i.v, align 8, !noalias !3085, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3085
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3085
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @110, i64 48), ptr noalias noundef align 16 dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aa, i64 noundef %i.ab), !noalias !3088, !inline_history !0
  %i.ac = load i64, ptr %i.a, align 8, !range !40, !noalias !3085, !noundef !6
  %.not.i.i.i.i129.2 = icmp eq i64 %i.ac, 3
  br i1 %.not.i.i.i.i129.2, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.u, align 8, !noalias !3085, !nonnull !6, !align !8, !noundef !6
  %i.ae = load i64, ptr %i.v, align 8, !noalias !3085, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3085
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3085
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @110, i64 72), ptr noalias noundef align 16 dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ad, i64 noundef %i.ae), !noalias !3088, !inline_history !0
  %i.af = load i64, ptr %i.a, align 8, !range !40, !noalias !3085, !noundef !6
  %.not.i.i.i.i129.3 = icmp eq i64 %i.af, 3
  br i1 %.not.i.i.i.i129.3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.u, align 8, !noalias !3085, !nonnull !6, !align !8, !noundef !6
  %i.ah = load i64, ptr %i.v, align 8, !noalias !3085, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3085
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3085
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @110, i64 96), ptr noalias noundef align 16 dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ag, i64 noundef %i.ah), !noalias !3088, !inline_history !0
  %i.ai = load i64, ptr %i.a, align 8, !range !40, !noalias !3085, !noundef !6
  %.not.i.i.i.i129.4 = icmp eq i64 %i.ai, 3
  br i1 %.not.i.i.i.i129.4, label %.loopexit.loopexit.i136, label %bb.h

.loopexit.loopexit.i136:                          ; preds = %bb.g
  %i.aj = load i64, ptr %i.v, align 8, !noalias !3085, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3085
  %.sroa.0.0.copyload2.pre.i137199 = load i64, ptr %i.b, align 16
  %.sroa_idx200 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload2.pre.i137201 = load i64, ptr %.sroa_idx200, align 8 ; 2 uses
  %.sroa.7.0.copyload6.pre.i138 = load i64, ptr %.sroa.7.0..sroa_idx3.i99, align 16, !noalias !3086
  %.sroa.9.0.copyload14.pre.i140 = load i64, ptr %.sroa.9.0..sroa_idx11.i101, align 8, !noalias !3086 ; 2 uses
  %.sroa.12.0.copyload26.pre.i143 = load i16, ptr %.sroa.12.0..sroa_idx23.i104, align 16, !noalias !3086
  %i.ak = load <16 x i8>, ptr %.sroa.13.0..sroa_idx27.i105, align 2, !noalias !3086
  %.sroa.32.0.copyload106.pre.i163 = load i8, ptr %.sroa.32.0..sroa_idx103.i124, align 1, !noalias !3086
  %i.al = load <4 x i8>, ptr %.sroa.29.0..sroa_idx91.i121, align 2, !noalias !3086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.33.i98, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.33.0..sroa_idx107.i125, i64 10, i1 false), !noalias !3086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3085
  %i.am = icmp eq i64 %i.aj, 0
  br i1 %i.am, label %_ZN4time7parsing8parsable6sealed6Sealed5parse17h63b1d875608d6d83E.exit191, label %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.i.thread

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3085
  br label %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.i.thread

_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.i.thread: ; preds = %.loopexit.loopexit.i136, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33.i98)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.132)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3083
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.thread.i"

_ZN4time7parsing8parsable6sealed6Sealed5parse17h63b1d875608d6d83E.exit191: ; preds = %.loopexit.loopexit.i136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.132, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.33.i98, i64 10, i1 false), !noalias !3089
  %.sroa.21.sroa.0.0.extract.trunc351 = trunc i64 %.sroa.0.0.copyload2.pre.i137201 to i32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33.i98)
  %i.an = icmp eq i8 %.sroa.32.0.copyload106.pre.i163, 2
  %.sroa.07.i.sroa.0.0.copyload6.fr.i.i.i.i = freeze i64 %.sroa.0.0.copyload2.pre.i137199 ; 2 uses
  br i1 %i.an, label %_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.sink.split.i.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.sink.split.i.i": ; preds = %_ZN4time7parsing8parsable6sealed6Sealed5parse17h63b1d875608d6d83E.exit191
  %.sroa.21.sroa.21.0.extract.shift360 = lshr i64 %.sroa.0.0.copyload2.pre.i137201, 32
  %.sroa.21.sroa.21.0.extract.trunc361 = trunc nuw i64 %.sroa.21.sroa.21.0.extract.shift360 to i32
  store i32 %.sroa.21.sroa.21.0.extract.trunc361, ptr %.sroa.07.i.sroa.7.0..sroa_idx11.i.i.i.i, align 4, !noalias !3084
  %.sroa.36.12..sroa.07.i.sroa.7.0..sroa_idx11.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.7.0.copyload6.pre.i138, ptr %.sroa.36.12..sroa.07.i.sroa.7.0..sroa_idx11.i.i.i.i.sroa_idx, align 16, !noalias !3084
  %.sroa.45.24.extract.trunc = trunc i64 %.sroa.9.0.copyload14.pre.i140 to i8
  %.sroa.45.25.extract.shift = lshr i64 %.sroa.9.0.copyload14.pre.i140, 8
  %.sroa.45.25.extract.trunc = trunc nuw i64 %.sroa.45.25.extract.shift to i56
  store i56 %.sroa.45.25.extract.trunc, ptr %.sroa.07.i.sroa.9.0..sroa_idx17.i.i.i.i, align 1, !noalias !3084
  store i16 %.sroa.12.0.copyload26.pre.i143, ptr %.sroa.07.i.sroa.10.0..sroa_idx19.i.i.i.i, align 16, !noalias !3084
  %.sroa.69.32..sroa.07.i.sroa.10.0..sroa_idx19.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 34
  store <16 x i8> %i.ak, ptr %.sroa.69.32..sroa.07.i.sroa.10.0..sroa_idx19.i.i.i.i.sroa_idx, align 2, !noalias !3084
  %.sroa.117.32..sroa.07.i.sroa.10.0..sroa_idx19.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.811.0..sroa_idx12.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.132, i64 10, i1 false), !noalias !3084
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.132)
  store i64 %.sroa.07.i.sroa.0.0.copyload6.fr.i.i.i.i, ptr %i.g, align 16, !noalias !3084
  store i32 %.sroa.21.sroa.0.0.extract.trunc351, ptr %.sroa.07.i.sroa.6.0..sroa_idx7.i.i.i.i, align 8, !noalias !3084
  store i8 %.sroa.45.24.extract.trunc, ptr %.sroa.07.i.sroa.8.0..sroa_idx13.i.i.i.i, align 8, !noalias !3084
  store <4 x i8> %i.al, ptr %.sroa.117.32..sroa.07.i.sroa.10.0..sroa_idx19.i.i.i.i.sroa_idx, align 2, !noalias !3084
  call fastcc void @"_ZN4time7parsing6parsed106_$LT$impl$u20$core..convert..TryFrom$LT$time..parsing..parsed..Parsed$GT$$u20$for$u20$time..date..Date$GT$8try_from17h4f9089a24f77f352E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef align 16 captures(address) dereferenceable(64) %i.g), !noalias !3090
  %i.ao = load i8, ptr %i.t, align 8, !range !17, !noalias !3084, !noundef !6
  %.not.i.i.i.i.i = icmp eq i8 %i.ao, 3
  %i.ap = load i32, ptr %i.h, align 8, !noalias !3083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3083
  br i1 %.not.i.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.i", label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.thread.i"

_ZN4time7parsing8parsable6sealed6Sealed10parse_date17h2841cdc99e14c5c0E.exit.i.i.i.i: ; preds = %_ZN4time7parsing8parsable6sealed6Sealed5parse17h63b1d875608d6d83E.exit191
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.132)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3083
  %.not.i.i.i.i = icmp eq i64 %.sroa.07.i.sroa.0.0.copyload6.fr.i.i.i.i, 2
  br i1 %.not.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.i", label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h42d4410205bf1487E.exit.i.thread.i"
end_hunk_2
begin_hunk_3_@_ZN11liquid_core6parser6parser11parse_value17hfbce2d5071e4f949E:bb.a

bb.n:                                             ; preds = %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i12"
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.az, i64 %i.bg ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 8, !range !11, !noundef !6
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.o, label %.invoke, !prof !24

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !range !28, !noundef !6
  switch i8 %i.bm, label %.invoke [
    i8 17, label %bb.p
    i8 31, label %bb.q
  ], !prof !29

.invoke:                                          ; preds = %bb.o, %bb.n, %bb.m
  %i.bn = phi ptr [ @539, %bb.n ], [ @536, %bb.m ], [ @237, %bb.o ]
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @236, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn) #57
          to label %.cont unwind label %bb.s

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @_ZN11liquid_core6parser6parser19parse_variable_pair17h1516911f094d03b2E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.bo, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @_ZN11liquid_core6parser6parser13parse_literal17h67e343576f749e45E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.bp, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %storemerge = phi i64 [ 1, %bb.q ], [ 0, %bb.p ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.s:                                             ; preds = %.invoke41, %.invoke
  %lpad.thr_comm31 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE"(ptr noalias noundef align 8 dereferenceable(40) %i.a) #58
  br label %.thread21

.thread21:                                        ; preds = %bb.s, %bb.f, %bb.t
  %.pn20 = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %lpad.thr_comm, %bb.t ], [ %lpad.thr_comm31, %bb.s ]
  resume { ptr, i32 } %.pn20

bb.t:                                             ; preds = %.invoke45, %.invoke43, %bb.e
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE"(ptr noalias noundef align 8 dereferenceable(40) %1) #58
  br label %.thread21
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core6parser6parser12BlockElement5parse17h00d154f4f7b0ed75E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %1, ptr noalias noundef align 8 dereferenceable(56) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %3) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !40, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  %i.f = tail call { ptr, ptr } @_ZN11liquid_core6parser6parser3Raw15into_renderable17hc75aa409bb2a1c06E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef %i.e)
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  store ptr %i.g, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @308, ptr %i.h, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call fastcc void @_ZN11liquid_core6parser6parser3Tag10parse_pair17h1fbc62ede14ea312E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(96) %i.b, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @286, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %3)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN11liquid_core6parser6parser3Exp5parse17h423b1436e3d7d0afE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %3)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call fastcc void @_ZN11liquid_core6parser6parser18InvalidLiquidToken10parse_pair17h4bb13aa8ebf865e3E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noundef nonnull align 1 %i.j, ptr nonnull @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h656ff0f85e676c7aE")
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_ZN11liquid_core6parser6parser12BlockElement6as_str17h2a639ce14498365eE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !40, !noundef !6
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.e, 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !align !8, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load i64, ptr %i.j, align 8, !noundef !6
  %i.l = insertvalue { ptr, i64 } poison, ptr %i.i, 0
  %i.m = insertvalue { ptr, i64 } %i.l, i64 %i.k, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = tail call fastcc { ptr, i64 } @"_ZN4pest9iterators4pair13Pair$LT$R$GT$6as_str17h64daa3b571d3e876E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = tail call fastcc { ptr, i64 } @"_ZN4pest9iterators4pair13Pair$LT$R$GT$6as_str17h64daa3b571d3e876E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.merged = phi { ptr, i64 } [ %i.g, %bb.b ], [ %i.m, %bb.c ], [ %i.o, %bb.d ], [ %i.q, %bb.e ]
  ret { ptr, i64 } %.merged
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core6parser6parser12TagTokenIter11expect_next17h30e893536af25900E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [120 x i8], align 8               ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @"_ZN100_$LT$liquid_core..parser..parser..TagTokenIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf73ba06344106499E"(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  %i.e = load i64, ptr %i.d, align 8, !range !10, !noundef !6
  %.not = icmp eq i64 %i.e, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4742
  %i.f = icmp slt i64 %3, 0
  br i1 %i.f, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.c
  %i.g = icmp eq i64 %3, 0
  br i1 %i.g, label %_ZN11liquid_core6parser6parser12TagTokenIter11raise_error17h8aed728ee11bd026E.exit, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !4743
  %i.h = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef range(i64 1, 9) 1) #59, !noalias !4743 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %_ZN11liquid_core6parser6parser12TagTokenIter11raise_error17h8aed728ee11bd026E.exit

bb.d:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %bb.c
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ 0, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #57, !noalias !4744
  unreachable

_ZN11liquid_core6parser6parser12TagTokenIter11raise_error17h8aed728ee11bd026E.exit: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.h, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !noalias !4745
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.j, align 8, !noalias !4742
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !4742
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %3, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !4742
  store i64 -9223372036854775808, ptr %i.b, align 8, !noalias !4742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4742
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !4746
  call fastcc void @"_ZN4pest5error14Error$LT$R$GT$12new_from_pos17h1834878f83f7e23aE"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !4742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4742
  %i.l = call fastcc noundef nonnull align 8 ptr @_ZN11liquid_core6parser6parser18convert_pest_error17h1b49e119442899d5E(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.c), !noalias !4742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN11liquid_core6parser6parser12TagTokenIter11raise_error17h8aed728ee11bd026E.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_ZN11liquid_core6parser6parser12TagTokenIter11raise_error17h8aed728ee11bd026E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [120 x i8], align 8               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = icmp slt i64 %2, 0
  br i1 %i.d, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !4754
  %i.f = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #59, !noalias !4754 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #57, !noalias !4755
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.f, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !4756
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.h, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.10.0.i.i, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %2, ptr %.sroa.53.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call fastcc void @"_ZN4pest5error14Error$LT$R$GT$12new_from_pos17h1834878f83f7e23aE"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call fastcc noundef nonnull align 8 ptr @_ZN11liquid_core6parser6parser18convert_pest_error17h1b49e119442899d5E(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.c)
  ret ptr %i.j
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_ZN11liquid_core6parser6parser12TagTokenIter14expect_nothing17h9ba7d5fd9938dd14E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 3 uses
  call void @"_ZN100_$LT$liquid_core..parser..parser..TagTokenIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf73ba06344106499E"(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
  %i.b = load i64, ptr %i.a, align 8, !range !10, !noundef !6
  %.not = icmp eq i64 %i.b, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef nonnull align 8 ptr @_ZN11liquid_core6parser6parser8TagToken11raise_error17hf92ecdb3f3700967E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN11liquid_core6parser6parser12TagTokenIter3new17h64f8da5e8a9d59eaE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !4759
  %i.a = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !4759 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h65ae119acf6fecc1E.exit", !prof !12

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 56) #57
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @"_ZN4core3ptr304drop_in_place$LT$core..iter..adapters..map..Map$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$C$$LT$liquid_core..parser..parser..TagToken$u20$as$u20$core..convert..From$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$..from$GT$$GT$17ha1fe326f31b97d41E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %2) #58
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.i, %bb.d ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h65ae119acf6fecc1E.exit": ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 3 uses
  %.val3 = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val3, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noundef !6 ; 3 uses
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %bb.e, label %.invoke

bb.d:                                             ; preds = %.invoke, %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr153drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$liquid_core..parser..parser..TagToken$GT$$GT$17ha3e8f9cec9700703E"(ptr nonnull %i.a, ptr nonnull @241) #58
          to label %common.resume unwind label %bb.i

bb.e:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h65ae119acf6fecc1E.exit"
  %i.j = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.e ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !range !11, !noundef !6
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @236, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @536) #57
          to label %.noexc10 unwind label %bb.d

.noexc10:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !6 ; 3 uses
  %i.q = icmp ult i64 %i.p, %i.g
  br i1 %i.q, label %bb.h, label %.invoke

.invoke:                                          ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h65ae119acf6fecc1E.exit", %bb.g
  %i.r = phi i64 [ %i.p, %bb.g ], [ %i.e, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h65ae119acf6fecc1E.exit" ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.r, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @534) #57
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.p ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !range !11, !noundef !6
  %i.u = trunc nuw i8 %i.t to i1
  %.sroa.0.0.in.v.i11 = select i1 %i.u, i64 32, i64 16
  %.sroa.0.0.in.i12 = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.in.v.i11
  %.sroa.0.0.i13 = load i64, ptr %.sroa.0.0.in.i12, align 8, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !6, !align !8, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !6
  store ptr %i.a, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @241, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %i.aa, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.0.i13, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.i:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN11liquid_core6parser6parser13parse_literal17h67e343576f749e45E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [15 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 8 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  %i.h = alloca [40 x i8], align 8                ; 12 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %.val26 = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val27 = load i64, ptr %i.j, align 8, !noundef !6 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val26, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !6 ; 3 uses
  %i.m = icmp ult i64 %.val27, %i.l
  br i1 %i.m, label %bb.b, label %.invoke133

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %.val26, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.val27 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !range !11, !noundef !6
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %.invoke135, label %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i", !prof !12

"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i": ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noundef !6 ; 4 uses
  %i.u = icmp ult i64 %i.t, %i.l
  br i1 %i.u, label %bb.c, label %.invoke133

bb.c:                                             ; preds = %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i"
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.t ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !range !11, !noundef !6
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %.invoke135, !prof !24

.invoke133:                                       ; preds = %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i", %bb.a
  %i.y = phi i64 [ %.val27, %bb.a ], [ %i.t, %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i" ]
  %i.z = phi ptr [ @535, %bb.a ], [ @538, %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i" ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.y, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z) #57
          to label %.cont134 unwind label %bb.bb

.cont134:                                         ; preds = %.invoke133
  unreachable

.invoke135:                                       ; preds = %bb.c, %bb.b
  %i.aa = phi ptr [ @536, %bb.b ], [ @539, %bb.c ]
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @236, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa) #57
          to label %.cont136 unwind label %bb.bb

.cont136:                                         ; preds = %.invoke135
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !range !28, !noundef !6
  %.not = icmp eq i8 %i.ac, 31
  br i1 %.not, label %"_ZN4pest9iterators4pair13Pair$LT$R$GT$10into_inner17hd13c95c0d8f6d8c6E.exit", label %bb.e, !prof !24

"_ZN4pest9iterators4pair13Pair$LT$R$GT$10into_inner17hd13c95c0d8f6d8c6E.exit": ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !4809, !noalias !4810, !nonnull !6, !align !8, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !4809, !noalias !4810, !noundef !6
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !4809, !noalias !4810, !nonnull !6, !noundef !6
  %i.aj = add nuw i64 %.val27, 1
  call fastcc void @_ZN4pest9iterators5pairs3new17hc537a28ad13868b5E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.f, ptr noundef nonnull %.val26, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.ai, i64 noundef %i.aj, i64 noundef %i.t)
  invoke void @"_ZN97_$LT$pest..iterators..pairs..Pairs$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5dd2ff5d2b077a7eE"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @272, ptr %i.i, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %i.al, align 8
end_hunk_3
begin_hunk_4_@_ZN11liquid_core6parser6parser13parse_literal17h67e343576f749e45E:bb.a
  br label %.loopexit.invoke

.loopexit.invoke:                                 ; preds = %bb.ay, %bb.ba, %bb.az, %bb.aw, %.loopexit
  %i.fc = phi ptr [ @264, %.loopexit ], [ @266, %bb.aw ], [ @268, %bb.az ], [ @268, %bb.ba ], [ @268, %bb.ay ]
  %i.fd = phi i64 [ 50, %.loopexit ], [ 48, %bb.aw ], [ 47, %bb.az ], [ 47, %bb.ba ], [ 47, %bb.ay ]
  %i.fe = phi ptr [ %i.c, %.loopexit ], [ %i.b, %bb.aw ], [ %i.a, %bb.az ], [ %i.a, %bb.ba ], [ %i.a, %bb.ay ]
  %i.ff = phi ptr [ @466, %.loopexit ], [ @473, %bb.aw ], [ @470, %bb.az ], [ @470, %bb.ba ], [ @470, %bb.ay ]
  %i.fg = phi ptr [ @265, %.loopexit ], [ @267, %bb.aw ], [ @269, %bb.az ], [ @269, %bb.ba ], [ @269, %bb.ay ]
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fc, i64 noundef %i.fd, ptr noundef nonnull align 1 %i.fe, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ff, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fg) #57
          to label %.loopexit.cont unwind label %.body41

.loopexit.cont:                                   ; preds = %.loopexit.invoke
  unreachable

.loopexit83:                                      ; preds = %.preheader99.i, %bb.ap, %bb.am, %bb.at, %.preheader99.i.preheader, %.preheader95.i, %.preheader.i, %.preheader97.i
  %.sroa.1549.0 = phi i64 [ %i.fb, %bb.at ], [ %i.dj, %bb.am ], [ %i.ef, %bb.ap ], [ 0, %.preheader.i ], [ 0, %.preheader97.i ], [ 0, %.preheader95.i ], [ 0, %.preheader99.i.preheader ], [ %i.dk, %.preheader99.i ]
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.fh, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.1549.0, ptr %.sroa.47.0..sroa_idx, align 8
  br label %bb.v

bb.au:                                            ; preds = %bb.t
  %i.fi = extractvalue { ptr, i64 } %i.by, 0
  %i.fj = extractvalue { ptr, i64 } %i.by, 1
  invoke void @"_ZN4core3num7dec2flt60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$f64$GT$8from_str17h27ef7ae142abe0bdE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fi, i64 noundef %i.fj)
          to label %bb.av unwind label %.body41

bb.av:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !4833)
  %i.fk = load i8, ptr %i.e, align 8, !range !11, !alias.scope !4833, !noundef !6
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.aw, label %bb.ax, !prof !12

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4833
  %i.fm = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !range !11, !alias.scope !4833, !noundef !6
  store i8 %i.fn, ptr %i.b, align 1, !noalias !4833
  br label %.loopexit.invoke

bb.ax:                                            ; preds = %bb.av
  %i.fo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.fp = load double, ptr %i.fo, align 8, !alias.scope !4833, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.fq, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.fp, ptr %.sroa.413.0..sroa_idx, align 8
  br label %bb.v

bb.ay:                                            ; preds = %bb.u
  %i.fr = extractvalue { ptr, i64 } %i.bz, 0      ; 3 uses
  %i.fs = extractvalue { ptr, i64 } %i.bz, 1
  switch i64 %i.fs, label %.loopexit.invoke [
    i64 4, label %bb.az
    i64 5, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  %i.ft = load i32, ptr %i.fr, align 1
  %i.fu = icmp ne i32 %i.ft, 1702195828
  %i.fv = zext i1 %i.fu to i32
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %select.unfold, label %.loopexit.invoke

bb.ba:                                            ; preds = %bb.ay
  %i.fx = load i32, ptr %i.fr, align 1
  %i.fy = xor i32 %i.fx, 1936482662
  %i.fz = getelementptr i8, ptr %i.fr, i64 4
  %i.ga = load i8, ptr %i.fz, align 1
  %i.gb = zext i8 %i.ga to i32
  %i.gc = xor i32 %i.gb, 101
  %i.gd = or i32 %i.fy, %i.gc
  %i.ge = icmp ne i32 %i.gd, 0
  %i.gf = zext i1 %i.ge to i32
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %select.unfold, label %.loopexit.invoke

select.unfold:                                    ; preds = %bb.ba, %bb.az
  %.sroa.0.0.i46 = phi i8 [ 1, %bb.az ], [ 0, %bb.ba ]
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.gh, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.0.0.i46, ptr %.sroa.419.0..sroa_idx, align 8
  br label %bb.v

"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit": ; preds = %bb.x, %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i38"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

.thread60:                                        ; preds = %.body41, %bb.f, %bb.bb
  %.pn59 = phi { ptr, i32 } [ %i.ao, %bb.f ], [ %lpad.thr_comm, %bb.bb ], [ %i.az, %.body41 ]
  resume { ptr, i32 } %.pn59

bb.bb:                                            ; preds = %.invoke135, %.invoke133, %bb.e
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE"(ptr noalias noundef align 8 dereferenceable(40) %1) #58
  br label %.thread60
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core6parser6parser14parse_variable17hd4bedca70fa27241E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 2 uses
  %i.c = alloca [120 x i8], align 8               ; 8 uses
  %i.d = alloca [56 x i8], align 16               ; 10 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @"_ZN137_$LT$liquid_core..parser..parser..inner..LiquidParser$u20$as$u20$pest..parser..Parser$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$5parse17h78f6f1092b06af3eE"(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.c, i8 noundef 17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %i.f = load i64, ptr %i.c, align 8, !range !37, !noundef !6
  %.not = icmp eq i64 %i.f, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %i.c, i64 120, i1 false)
  %i.g = call fastcc noundef nonnull align 8 ptr @_ZN11liquid_core6parser6parser18convert_pest_error17h1b49e119442899d5E(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store i64 7, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.616.0..sroa_idx, i64 40, i1 false)
  %i.j = load <2 x ptr>, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store <2 x ptr> %i.j, ptr %i.d, align 16
  invoke void @"_ZN97_$LT$pest..iterators..pairs..Pairs$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5dd2ff5d2b077a7eE"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr98drop_in_place$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h35e9182a7d43856fE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d) #58
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.e, align 8, !noundef !6
  %.not22 = icmp eq ptr %i.l, null
  br i1 %.not22, label %bb.i, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4846)
  %i.m = load ptr, ptr %i.d, align 16, !alias.scope !4847, !nonnull !6, !noundef !6 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !4847, !noundef !6
  %i.o = add i64 %i.n, -1                         ; 2 uses
  store i64 %i.o, ptr %i.m, align 8, !noalias !4847
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.g, label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i"

bb.g:                                             ; preds = %bb.f
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hbb0a19576e836c63E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.d)
  br label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i"

"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i": ; preds = %bb.g, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4849)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !4850, !nonnull !6, !noundef !6 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noalias !4850, !noundef !6
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.r, align 8, !noalias !4850
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.h, label %"_ZN4core3ptr98drop_in_place$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h35e9182a7d43856fE.exit"

bb.h:                                             ; preds = %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h1ff8d69044974696E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.q)
  br label %"_ZN4core3ptr98drop_in_place$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h35e9182a7d43856fE.exit"

bb.i:                                             ; preds = %bb.e
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @274, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @275) #57
          to label %bb.j unwind label %bb.d

bb.j:                                             ; preds = %bb.i
  unreachable

"_ZN4core3ptr98drop_in_place$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h35e9182a7d43856fE.exit": ; preds = %bb.h, %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @_ZN11liquid_core6parser6parser19parse_variable_pair17h1516911f094d03b2E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b)
  br label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr98drop_in_place$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h35e9182a7d43856fE.exit", %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_ZN11liquid_core6parser6parser15error_from_pair17h610605060f03e103E(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [120 x i8], align 8               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 3 uses
  %.val3 = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val3, i64 32
  %i.h = load i64, ptr %i.g, align 8, !noundef !6 ; 3 uses
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %.invoke

bb.b:                                             ; preds = %bb.f
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.f ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !range !11, !noundef !6
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  %.sroa.0.0.in.v.i = select i1 %i.n, i64 32, i64 16
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.0.0.in.v.i
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 8, !noundef !6
  br i1 %i.n, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @236, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @536) #57
          to label %.noexc7 unwind label %bb.m

.noexc7:                                          ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !6 ; 3 uses
  %i.q = icmp ult i64 %i.p, %i.h
  br i1 %i.q, label %bb.f, label %.invoke

.invoke:                                          ; preds = %bb.e, %bb.a
  %i.r = phi i64 [ %i.f, %bb.a ], [ %i.p, %bb.e ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.r, i64 noundef %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @534) #57
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.p ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !range !11, !noundef !6
  %i.u = trunc nuw i8 %i.t to i1
  %.sroa.0.0.in.v.i8 = select i1 %i.u, i64 32, i64 16
  %.sroa.0.0.in.i9 = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.in.v.i8
  %.sroa.0.0.i10 = load i64, ptr %.sroa.0.0.in.i9, align 8, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !6, !align !8, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !6
  store ptr %i.w, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.0.0.i, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.0.0.i10, ptr %i.ab, align 8
  invoke fastcc void @"_ZN4pest5error14Error$LT$R$GT$13new_from_span17hebe500a03703d2cbE"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ac = invoke fastcc noundef nonnull align 8 ptr @_ZN11liquid_core6parser6parser18convert_pest_error17h1b49e119442899d5E(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.c)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.m, %bb.b, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %lpad.thr_comm, %bb.m ], [ %lpad.thr_comm.split-lp, %bb.b ]
  call fastcc void @"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE"(ptr noalias noundef align 8 dereferenceable(40) %0) #58
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !4861)
  %i.ae = load i64, ptr %.val3, align 8, !noalias !4862, !noundef !6
  %i.af = add i64 %i.ae, -1                       ; 2 uses
  store i64 %i.af, ptr %.val3, align 8, !noalias !4862
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.k, label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i"

bb.k:                                             ; preds = %bb.j
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hbb0a19576e836c63E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %0)
  br label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i"

"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i": ; preds = %bb.k, %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4863)
  call void @llvm.experimental.noalias.scope.decl(metadata !4864)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !4865, !nonnull !6, !noundef !6 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !4865, !noundef !6
  %i.ak = add i64 %i.aj, -1                       ; 2 uses
  store i64 %i.ak, ptr %i.ai, align 8, !noalias !4865
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.l, label %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit"

bb.l:                                             ; preds = %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h1ff8d69044974696E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ah)
  br label %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit"

"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit": ; preds = %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i", %bb.l
  ret ptr %i.ac

bb.m:                                             ; preds = %.invoke, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr94drop_in_place$LT$pest..error..ErrorVariant$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17hfdb4d90bcf94f5d6E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #58
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN11liquid_core6parser6parser18InvalidLiquidToken10parse_pair17h4bb13aa8ebf865e3E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr noundef nonnull align 1 %2, ptr nofree readonly captures(none) %.24.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [120 x i8], align 8               ; 10 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [120 x i8], align 8               ; 12 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 4 uses
  %.sroa.16 = alloca [56 x i8], align 8           ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [40 x i8], align 8                ; 9 uses
  %.sroa.5 = alloca [32 x i8], align 8            ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i64, ptr %i.m, align 8, !noundef !6 ; 3 uses
  %.val32 = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val32, i64 32
  %i.p = load i64, ptr %i.o, align 8, !noundef !6 ; 3 uses
  %i.q = icmp ult i64 %i.n, %i.p
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink.sroa.gep82 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink.sroa.gep84 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sink.sroa.gep85 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sink.sroa.gep87 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink.sroa.gep88 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sink.sroa.gep90 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sink.sroa.gep91 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br i1 %i.q, label %bb.b, label %.invoke68

.invoke68:                                        ; preds = %bb.a, %bb.d
  %i.r = phi i64 [ %i.y, %bb.d ], [ %i.n, %bb.a ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.r, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @534) #57
          to label %.cont69 unwind label %.loopexit.split-lp

.cont69:                                          ; preds = %.invoke68
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ag, %bb.ba, %bb.az, %bb.u
  %.pn28 = phi { ptr, i32 } [ %i.co, %bb.ag ], [ %i.bv, %bb.u ], [ %.pn26, %bb.ba ], [ %.pn26, %bb.az ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr68drop_in_place$LT$liquid_core..parser..parser..InvalidLiquidToken$GT$17hfe03a7fab20c73f4E"(ptr noalias noundef align 8 dereferenceable(40) %1) #58
  resume { ptr, i32 } %.pn28

.loopexit:                                        ; preds = %.lr.ph.split.i, %.noexc47
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.lr.ph.split.us.i.invoke, %.invoke68, %.invoke, %bb.e, %bb.c, %bb.y, %.noexc56, %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %.val32, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %i.n ; 3 uses
  %i.v = load i8, ptr %i.u, align 8, !range !11, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1                  ; 2 uses
  %.sroa.0.0.in.v.i = select i1 %i.w, i64 32, i64 16
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.in.v.i
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 8, !noundef !6 ; 11 uses
  br i1 %i.w, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @236, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @536) #57
          to label %.noexc39 unwind label %.loopexit.split-lp

end_hunk_4
begin_hunk_5_@_ZN11liquid_core6parser6parser18InvalidLiquidToken10parse_pair17h4bb13aa8ebf865e3E:bb.a
  br i1 %.not6.i, label %bb.ay, label %.split7.i

.split7.i:                                        ; preds = %bb.ax
  %i.en = icmp eq i64 %.sroa.018.0, %i.ag
  br i1 %i.en, label %bb.bc, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.018.0
  %i.ep = load i8, ptr %i.eo, align 1, !alias.scope !4972, !noundef !6
  %i.eq = icmp sgt i8 %i.ep, -65
  br i1 %i.eq, label %bb.bc, label %bb.be

bb.az:                                            ; preds = %bb.bi, %bb.bk, %bb.bb
  %.pn26 = phi { ptr, i32 } [ %i.fe, %bb.bi ], [ %i.fi, %bb.bk ], [ %i.es, %bb.bb ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4973)
  call void @llvm.experimental.noalias.scope.decl(metadata !4974)
  %.val.i.i = load i64, ptr %i.j, align 8, !range !21, !alias.scope !4975, !noundef !6 ; 2 uses
  %i.er = icmp eq i64 %.val.i.i, 0
  br i1 %i.er, label %.body, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.val1.i.i = load ptr, ptr %.sroa.47.0..sroa_idx, align 8, !alias.scope !4975, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !4975
  br label %.body

bb.bb:                                            ; preds = %bb.bd, %bb.bf, %bb.be, %bb.at
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.bc:                                            ; preds = %bb.ay, %.split7.i, %.split.i72
  %i.et = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.0.0.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4976)
  %gepdiff = sub nuw nsw i64 %.sroa.018.0, %.sroa.0.0.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4977)
  %.not18 = icmp eq i64 %.sroa.018.0, %.sroa.0.0.i
  br i1 %.not18, label %bb.bf, label %bb.bd, !prof !24

bb.bd:                                            ; preds = %bb.bc
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %.sroa.0.0, i64 noundef %gepdiff, i64 noundef 1, i64 noundef 1)
          to label %.noexc74 unwind label %bb.bb

.noexc74:                                         ; preds = %bb.bd
  %.pre.i.i = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !4978
  %.pre = load ptr, ptr %.sroa.47.0..sroa_idx, align 8, !alias.scope !4978
  br label %bb.bf

bb.be:                                            ; preds = %bb.ay, %bb.aw, %bb.au, %.split7.i
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ae, i64 noundef %i.ag, i64 noundef %.sroa.0.0.i, i64 noundef %.sroa.018.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @282) #57
          to label %bb.as unwind label %bb.bb

bb.bf:                                            ; preds = %.noexc74, %bb.bc
  %i.eu = phi ptr [ %.sroa.10.0.i.i, %bb.bc ], [ %.pre, %.noexc74 ] ; 3 uses
  %i.ev = phi i64 [ %.sroa.0.0, %bb.bc ], [ %.pre.i.i, %.noexc74 ] ; 3 uses
  %i.ew = icmp sgt i64 %i.ev, -1
  call void @llvm.assume(i1 %i.ew)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ev
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ex, ptr nonnull readonly align 1 %i.et, i64 %gepdiff, i1 false), !noalias !4978
  %i.ey = add i64 %i.ev, %gepdiff                 ; 2 uses
  store i64 %i.ey, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !4978
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @"_ZN137_$LT$liquid_core..parser..parser..inner..LiquidParser$u20$as$u20$pest..parser..Parser$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$5parse17h78f6f1092b06af3eE"(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.i, i8 noundef 4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.eu, i64 noundef %i.ey)
          to label %bb.bg unwind label %bb.bb

bb.bg:                                            ; preds = %bb.bf
  %i.ez = load i64, ptr %i.i, align 8, !range !37, !noundef !6
  %.not23 = icmp eq i64 %i.ez, 2
  br i1 %.not23, label %bb.bh, label %bb.bj, !prof !12

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @284, ptr %i.h, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.fd, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @285) #57
          to label %bb.as unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr195drop_in_place$LT$core..result..Result$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$C$pest..error..Error$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$17ha879ecd44e856a5bE"(ptr noalias noundef align 8 dereferenceable(120) %i.i) #58
  br label %bb.az

bb.bj:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.441.0.copyload = load i64, ptr %.sroa.441.0..sroa_idx, align 8 ; 2 uses
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.542.0.copyload = load i64, ptr %.sroa.542.0..sroa_idx, align 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.643.0.copyload = load i64, ptr %.sroa.643.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.944.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.944.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ff = trunc nuw i64 %.sroa.441.0.copyload to i1 ; 2 uses
  %i.fg = add i64 %.sroa.7.0.copyload, %i.am
  %.sroa.10.0 = select i1 %i.ff, i64 %.sroa.8.0.copyload, i64 undef
  %.sroa.9.0 = select i1 %i.ff, i64 %i.fg, i64 undef
  %.sroa.54.0 = add i64 %.sroa.542.0.copyload, %i.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %.sroa.4.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.441.0.copyload, ptr %.sroa.4.0..sroa_idx26, align 8
  %.sroa.6.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %.sroa.54.0, ptr %.sroa.6.0..sroa_idx28, align 8
  %.sroa.9.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %.sroa.643.0.copyload, ptr %.sroa.9.0..sroa_idx32, align 8
  %.sroa.12.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %.sroa.9.0, ptr %.sroa.12.0..sroa_idx35, align 8
  %.sroa.14.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i64 %.sroa.10.0, ptr %.sroa.14.0..sroa_idx37, align 8
  %.sroa.16.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.16.0..sroa_idx39, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.16, i64 56, i1 false)
  %i.fh = invoke fastcc noundef nonnull align 8 ptr @_ZN11liquid_core6parser6parser18convert_pest_error17h1b49e119442899d5E(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.g)
          to label %bb.bl unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fh, ptr %i.fj, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.experimental.noalias.scope.decl(metadata !4979)
  call void @llvm.experimental.noalias.scope.decl(metadata !4980)
  %.val.i.i75 = load i64, ptr %i.j, align 8, !range !21, !alias.scope !4981, !noundef !6 ; 2 uses
  %i.fk = icmp eq i64 %.val.i.i75, 0
  br i1 %i.fk, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit77", label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eu, i64 noundef %.val.i.i75, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !4981
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit77"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit77": ; preds = %bb.bm, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !4982)
  call void @llvm.experimental.noalias.scope.decl(metadata !4983)
  %i.fl = load i64, ptr %.val32, align 8, !noalias !4984, !noundef !6
  %i.fm = add i64 %i.fl, -1                       ; 2 uses
  store i64 %i.fm, ptr %.val32, align 8, !noalias !4984
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %bb.bn, label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i"

bb.bn:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit77"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hbb0a19576e836c63E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %1)
  br label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i"

"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i": ; preds = %bb.bn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit77"
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4985)
  call void @llvm.experimental.noalias.scope.decl(metadata !4986)
  %i.fp = load ptr, ptr %i.fo, align 8, !alias.scope !4987, !nonnull !6, !noundef !6 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !noalias !4987, !noundef !6
  %i.fr = add i64 %i.fq, -1                       ; 2 uses
  store i64 %i.fr, ptr %i.fp, align 8, !noalias !4987
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %bb.bo, label %"_ZN4core3ptr68drop_in_place$LT$liquid_core..parser..parser..InvalidLiquidToken$GT$17hfe03a7fab20c73f4E.exit"

bb.bo:                                            ; preds = %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h1ff8d69044974696E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fo)
  br label %"_ZN4core3ptr68drop_in_place$LT$liquid_core..parser..parser..InvalidLiquidToken$GT$17hfe03a7fab20c73f4E.exit"

"_ZN4core3ptr68drop_in_place$LT$liquid_core..parser..parser..InvalidLiquidToken$GT$17hfe03a7fab20c73f4E.exit": ; preds = %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i", %bb.bo
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core6parser6parser18InvalidLiquidToken5parse17h818157b282ab7ae7E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr noalias noundef align 8 dereferenceable(56) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call fastcc void @_ZN11liquid_core6parser6parser18InvalidLiquidToken10parse_pair17h4bb13aa8ebf865e3E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(40) %1, ptr noundef nonnull align 1 %i.a, ptr nonnull @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h656ff0f85e676c7aE")
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_ZN11liquid_core6parser6parser18InvalidLiquidToken6as_str17hcd4cd6cd0c6bf92eE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc { ptr, i64 } @"_ZN4pest9iterators4pair13Pair$LT$R$GT$6as_str17h64daa3b571d3e876E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0)
  ret { ptr, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_ZN11liquid_core6parser6parser18convert_pest_error17h1b49e119442899d5E(ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [15 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = alloca [48 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [112 x i8], align 8               ; 17 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [160 x i8], align 8               ; 23 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [16 x i8], align 8               ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [160 x i8], align 8              ; 23 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [16 x i8], align 8               ; 4 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 5 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.6.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 14 uses
  %i.am = alloca [24 x i8], align 8               ; 11 uses
  %i.an = alloca [24 x i8], align 8               ; 10 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [24 x i8], align 8               ; 8 uses
  %i.aq = alloca [48 x i8], align 8               ; 8 uses
  %i.ar = alloca [48 x i8], align 8               ; 8 uses
  %i.as = alloca [48 x i8], align 8               ; 8 uses
  %i.at = alloca [24 x i8], align 8               ; 7 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 7 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [24 x i8], align 8               ; 6 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [24 x i8], align 8               ; 8 uses
  %i.bb = alloca [24 x i8], align 8               ; 7 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.7.i = alloca [16 x i8], align 8          ; 4 uses
  %i.bd = alloca [24 x i8], align 8               ; 6 uses
  %i.be = alloca [120 x i8], align 8              ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5221)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !noalias !5222
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !range !10, !alias.scope !5221, !noalias !5220, !noundef !6 ; 5 uses
  %i.bh = icmp eq i64 %i.bg, -9223372036854775808
  %.sink64.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %.sink64.i.sroa.gep75.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %.sink64.i.sroa.gep76.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.4.sroa.5.0.copyload.i = load i64, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !5221, !noalias !5220 ; 5 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br i1 %i.bh, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.4.sroa.0.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !5221, !noalias !5220
  %.sroa.4.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !5221, !noalias !5220
  br label %"_ZN4pest5error14Error$LT$R$GT$13renamed_rules17h24d0b68b4c4e0eb5E.exit"

bb.c:                                             ; preds = %bb.a
  %.sroa.544.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !5221, !noalias !5220, !nonnull !6, !noundef !6 ; 4 uses
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !5221, !noalias !5220 ; 3 uses
  %.sroa.546.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !5221, !noalias !5220, !nonnull !6, !noundef !6 ; 4 uses
  %.sroa.847.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.847.0.copyload.i = load i64, ptr %.sroa.847.0..sroa_idx.i, align 8, !alias.scope !5221, !noalias !5220 ; 3 uses
  %i.bi = icmp eq i64 %.sroa.8.0.copyload.i, 0    ; 2 uses
  %i.bj = icmp eq i64 %.sroa.847.0.copyload.i, 0
  br i1 %i.bj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.bi, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.bi, label %bb.m, label %bb.l

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !5223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5223
  invoke fastcc void @"_ZN4pest5error14Error$LT$R$GT$9enumerate17hc9f62a982d96fabeE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.at, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.544.0.copyload.i, i64 noundef %.sroa.8.0.copyload.i)
          to label %.noexc.i unwind label %bb.x

.noexc.i:                                         ; preds = %bb.f
  store ptr %i.at, ptr %i.au, align 8, !noalias !5223
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.416.0..sroa_idx.i.i, align 8, !noalias !5223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !5224
  store ptr @495, ptr %i.as, align 8, !noalias !5225
  %.sroa.454.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 1, ptr %.sroa.454.0..sroa_idx.i.i, align 8, !noalias !5225
  %.sroa.555.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.au, ptr %.sroa.555.0..sroa_idx.i.i, align 8, !noalias !5225
  %.sroa.656.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 1, ptr %.sroa.656.0..sroa_idx.i.i, align 8, !noalias !5225
  %.sroa.757.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store ptr null, ptr %.sroa.757.0..sroa_idx.i.i, align 8, !noalias !5225
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.as)
          to label %bb.j unwind label %bb.i, !noalias !5223

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !5226
  %i.bk = tail call noundef dereferenceable_or_null(21) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 21, i64 noundef range(i64 1, 9) 1) #59, !noalias !5226 ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.h, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.i.i"

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 21, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #57
          to label %.noexc23.i unwind label %bb.x, !noalias !5222

.noexc23.i:                                       ; preds = %bb.h
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.i.i": ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.bk, ptr noundef nonnull align 1 dereferenceable(21) @496, i64 21, i1 false), !noalias !5227
  br label %"_ZN4pest5error14Error$LT$R$GT$21parsing_error_message17h5a674af85939108fE.exit.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit.sink.split.i.i": ; preds = %bb.u, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit34.i.i", %bb.i
  %.sink64.i.sroa.phi.i = phi ptr [ %.sink64.i.sroa.gep.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit34.i.i" ], [ %.sink64.i.sroa.gep75.i, %bb.i ], [ %.sink64.i.sroa.gep76.i, %bb.u ]
  %.val.i.i41.sink.i.i = phi i64 [ %.val.i.i28.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit34.i.i" ], [ %.val.i.i.i.i, %bb.i ], [ %.val.i.i41.i.i, %bb.u ]
  %.pn22.ph.i.i = phi { ptr, i32 } [ %.pn.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit34.i.i" ], [ %i.bm, %bb.i ], [ %i.by, %bb.u ]
  %.val1.i.i42.i.i = load ptr, ptr %.sink64.i.sroa.phi.i, align 8, !noalias !5223, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i42.i.i, i64 noundef %.val.i.i41.sink.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !5223
  br label %.body.i

bb.i:                                             ; preds = %.noexc.i
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.at, align 8, !range !21, !alias.scope !5228, !noalias !5223, !noundef !6 ; 2 uses
  %i.bn = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.bn, label %.body.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit.sink.split.i.i"

bb.j:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !5224
  call void @llvm.experimental.noalias.scope.decl(metadata !5229)
  call void @llvm.experimental.noalias.scope.decl(metadata !5230)
  %.val.i.i24.i.i = load i64, ptr %i.at, align 8, !range !21, !alias.scope !5231, !noalias !5223, !noundef !6 ; 2 uses
  %i.bo = icmp eq i64 %.val.i.i24.i.i, 0
  br i1 %i.bo, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit26.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val1.i.i25.i.i = load ptr, ptr %.sink64.i.sroa.gep75.i, align 8, !alias.scope !5231, !noalias !5223, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i25.i.i, i64 noundef %.val.i.i24.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !5232
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit26.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit26.i.i": ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5223
  %.sroa.048.0.copyload51.i = load i64, ptr %i.av, align 8, !noalias !5233
  %.sroa.552.0..sroa_idx56.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.552.0.copyload57.i = load ptr, ptr %.sroa.552.0..sroa_idx56.i, align 8, !noalias !5233
  %.sroa.658.0..sroa_idx62.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.658.0.copyload63.i = load i64, ptr %.sroa.658.0..sroa_idx62.i, align 8, !noalias !5233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !5223
  br label %"_ZN4pest5error14Error$LT$R$GT$21parsing_error_message17h5a674af85939108fE.exit.i"

bb.l:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !5223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !5223
  invoke fastcc void @"_ZN4pest5error14Error$LT$R$GT$9enumerate17hc9f62a982d96fabeE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.546.0.copyload.i, i64 noundef %.sroa.847.0.copyload.i)
          to label %.noexc24.i unwind label %bb.x

.noexc24.i:                                       ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !5223
  invoke fastcc void @"_ZN4pest5error14Error$LT$R$GT$9enumerate17hc9f62a982d96fabeE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.544.0.copyload.i, i64 noundef %.sroa.8.0.copyload.i)
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !5223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !5223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !5223
  invoke fastcc void @"_ZN4pest5error14Error$LT$R$GT$9enumerate17hc9f62a982d96fabeE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.546.0.copyload.i, i64 noundef %.sroa.847.0.copyload.i)
          to label %.noexc25.i unwind label %bb.x

.noexc25.i:                                       ; preds = %bb.m
  store ptr %i.aw, ptr %i.ax, align 8, !noalias !5223
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !5223
end_hunk_5
begin_hunk_6_@_ZN11liquid_core6parser6parser8TagBlock4next17hc9f8e548df7efb99E:bb.a
  call void @"_ZN4core3ptr98drop_in_place$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h35e9182a7d43856fE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #58
  br label %.thread59

.thread59:                                        ; preds = %bb.an, %bb.k, %bb.bb, %.body50, %bb.bc, %bb.u, %bb.t
  %.pn2758 = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.u ], [ %lpad.thr_comm, %bb.bc ], [ %i.aw, %bb.k ], [ %lpad.thr_comm.i, %bb.t ], [ %eh.lpad-body51, %.body50 ], [ %lpad.thr_comm.split-lp, %bb.an ], [ %.pn72, %bb.bb ]
  resume { ptr, i32 } %.pn2758

bb.bc:                                            ; preds = %.invoke80, %.invoke, %bb.l
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE"(ptr noalias noundef align 8 dereferenceable(40) %i.b) #58
  br label %.thread59
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core6parser6parser8TagBlock9parse_all17h44b3f8ca87217241E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h208b3e73ee9d7cb6E.exit", %bb.a
  %i.g = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.s, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h208b3e73ee9d7cb6E.exit" ]
  %i.h = phi i64 [ 0, %bb.a ], [ %i.v, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h208b3e73ee9d7cb6E.exit" ] ; 4 uses
  store i64 %i.h, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN11liquid_core6parser6parser8TagBlock10parse_next17hbfc9aa75ba62104eE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %2)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.q, %bb.i ]
  invoke fastcc void @"_ZN4core3ptr121drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$liquid_core..runtime..renderable..Renderable$GT$$GT$$GT$17h4cc33152bedf4fadE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #58
          to label %bb.n unwind label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.a, align 8, !range !18, !noundef !6
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = load ptr, ptr %i.e, align 8, !align !8, !noundef !6 ; 4 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr121drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$liquid_core..runtime..renderable..Renderable$GT$$GT$$GT$17h4cc33152bedf4fadE"(ptr noalias noundef align 8 dereferenceable(24) %i.b)
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.f, align 8              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6598)
  %i.o = load i64, ptr %i.b, align 8, !range !21, !alias.scope !6598, !noalias !6599, !noundef !6
  %i.p = icmp eq i64 %i.h, %i.o
  br i1 %i.p, label %bb.h, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h208b3e73ee9d7cb6E.exit"

bb.h:                                             ; preds = %bb.g
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h76fa41ec129b9c9fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @341)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h208b3e73ee9d7cb6E.exit_crit_edge" unwind label %bb.i, !noalias !6600

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h208b3e73ee9d7cb6E.exit_crit_edge": ; preds = %bb.h
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !6598, !noalias !6599
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h208b3e73ee9d7cb6E.exit"

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$liquid_core..runtime..renderable..Renderable$GT$$GT$17hb408d74fff4158e2E"(ptr nonnull align 1 %i.l, ptr nonnull readonly align 8 dereferenceable(48) %i.n) #58
          to label %.body unwind label %bb.j, !noalias !6598

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !6601
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h208b3e73ee9d7cb6E.exit": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h208b3e73ee9d7cb6E.exit_crit_edge", %bb.g
  %i.s = phi ptr [ %.pre, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h208b3e73ee9d7cb6E.exit_crit_edge" ], [ %i.g, %bb.g ] ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.h ; 2 uses
  store ptr %i.l, ptr %i.t, align 8, !noalias !6601
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.n, ptr %i.u, align 8, !noalias !6601
  %i.v = add i64 %i.h, 1
  br label %bb.b

bb.k:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.m:                                             ; preds = %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core6parser6parser8TagToken10expect_str17h6617e642d4095318E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = invoke fastcc { ptr, i64 } @"_ZN4pest9iterators4pair13Pair$LT$R$GT$6as_str17h64daa3b571d3e876E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$liquid_core..parser..parser..TagToken$GT$17ha6a7863d054cd7ecE"(ptr noalias noundef align 8 dereferenceable(64) %1) #58
  resume { ptr, i32 } %i.c

bb.c:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.b, 0
  %i.e = extractvalue { ptr, i64 } %i.b, 1
  %i.f = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h03fe2cfe0c149ccaE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef %i.e), !noalias !6618 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 1
  %.not = icmp eq i64 %i.g, %3
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = extractvalue { ptr, i64 } %i.f, 0
  %bcmp = tail call i32 @bcmp(ptr %i.h, ptr nonnull %2, i64 %3)
  %i.i = icmp eq i32 %bcmp, 0
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  br label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..parser..parser..TagToken$GT$17ha6a7863d054cd7ecE.exit"

bb.f:                                             ; preds = %bb.d
  store i64 -9223372036854775808, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6622)
  %i.j = load ptr, ptr %i.a, align 8, !alias.scope !6623, !nonnull !6, !noundef !6 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noalias !6623, !noundef !6
  %i.l = add i64 %i.k, -1                         ; 2 uses
  store i64 %i.l, ptr %i.j, align 8, !noalias !6623
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.g, label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i"

bb.g:                                             ; preds = %bb.f
  tail call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hbb0a19576e836c63E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.a)
  br label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i"

"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i": ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6625)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !6626, !nonnull !6, !noundef !6 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noalias !6626, !noundef !6
  %i.q = add i64 %i.p, -1                         ; 2 uses
  store i64 %i.q, ptr %i.o, align 8, !noalias !6626
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit.i"

bb.h:                                             ; preds = %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i"
  tail call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h1ff8d69044974696E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
  br label %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit.i"

"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit.i": ; preds = %bb.h, %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6627)
  %.val.i1.i = load i64, ptr %1, align 8, !range !21, !alias.scope !6628, !noundef !6 ; 2 uses
  %i.s = icmp eq i64 %.val.i1.i, 0
  br i1 %i.s, label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..parser..parser..TagToken$GT$17ha6a7863d054cd7ecE.exit", label %bb.i

bb.i:                                             ; preds = %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit.i"
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i2.i = load ptr, ptr %i.t, align 8, !alias.scope !6628, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i, i64 noundef %.val.i1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !6628
  br label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..parser..parser..TagToken$GT$17ha6a7863d054cd7ecE.exit"

"_ZN4core3ptr58drop_in_place$LT$liquid_core..parser..parser..TagToken$GT$17ha6a7863d054cd7ecE.exit": ; preds = %bb.i, %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit.i", %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_ZN11liquid_core6parser6parser8TagToken11raise_error17hf92ecdb3f3700967E(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [120 x i8], align 8               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.d = tail call noundef dereferenceable_or_null(1) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef 1) #59 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.f, !prof !12

bb.b:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.aa, %bb.i ] ; 2 uses
  %i.f = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.f, label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !6641
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit"

bb.d:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.e:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 1, i64 noundef 1) #57
          to label %bb.t unwind label %bb.d

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val10 = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val11 = load i64, ptr %i.i, align 8, !noundef !6 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val10, i64 32
  %i.k = load i64, ptr %i.j, align 8, !noundef !6 ; 3 uses
  %i.l = icmp ult i64 %.val11, %i.k
  br i1 %i.l, label %bb.g, label %.invoke38

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.val10, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.val11 ; 4 uses
  %i.p = load i8, ptr %i.o, align 8, !range !11, !noundef !6
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.invoke, label %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i", !prof !12

"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i": ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noundef !6 ; 3 uses
  %i.t = icmp ult i64 %i.s, %i.k
  br i1 %i.t, label %bb.h, label %.invoke38

bb.h:                                             ; preds = %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i"
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.s ; 4 uses
  %i.v = load i8, ptr %i.u, align 8, !range !11, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.k, label %.invoke, !prof !24

.invoke38:                                        ; preds = %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i", %bb.f
  %i.x = phi i64 [ %.val11, %bb.f ], [ %i.s, %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i" ]
  %i.y = phi ptr [ @535, %bb.f ], [ @538, %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hef95b58abee12659E.exit.i" ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.x, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y) #57
          to label %.cont39 unwind label %bb.i

.cont39:                                          ; preds = %.invoke38
  unreachable

.invoke:                                          ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ @536, %bb.g ], [ @539, %bb.h ]
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @236, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z) #57
          to label %.cont unwind label %bb.i

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %.invoke38, %.invoke
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 1) #59
  br label %bb.b

bb.j:                                             ; preds = %bb.m
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit"

bb.k:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !range !28, !noundef !6
  store i8 %i.ac, ptr %i.d, align 1
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx25, align 8
  %.sroa.6.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx27, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.ad, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 1, ptr %.sroa.530.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = load i8, ptr %i.o, align 8, !range !11, !noundef !6
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.l, label %bb.m, !prof !12

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @236, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @536) #57
          to label %.noexc18 unwind label %bb.s

.noexc18:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 8, !noundef !6
  %i.ag = load i8, ptr %i.u, align 8, !range !11, !noundef !6
  %i.ah = trunc nuw i8 %i.ag to i1
  %.sroa.0.0.in.v.i19 = select i1 %i.ah, i64 32, i64 16
  %.sroa.0.0.in.i20 = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.in.v.i19
  %.sroa.0.0.i21 = load i64, ptr %.sroa.0.0.in.i20, align 8, !noundef !6
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !6, !align !8, !noundef !6
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !noundef !6
  store ptr %i.aj, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.al, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.0.0.i, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.0.0.i21, ptr %i.ao, align 8
  invoke fastcc void @"_ZN4pest5error14Error$LT$R$GT$13new_from_span17hebe500a03703d2cbE"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.n unwind label %bb.j

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ap = invoke fastcc noundef nonnull align 8 ptr @_ZN11liquid_core6parser6parser18convert_pest_error17h1b49e119442899d5E(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.c)
          to label %bb.p unwind label %bb.o

"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit": ; preds = %bb.s, %bb.j, %bb.c, %bb.b, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.j ], [ %i.ar, %bb.o ], [ %lpad.thr_comm, %bb.s ], [ %.pn, %bb.b ], [ %.pn, %bb.c ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  call fastcc void @"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE"(ptr noalias noundef align 8 dereferenceable(40) %i.aq) #58
  resume { ptr, i32 } %.pn.pn

bb.o:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit"

bb.p:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !6642)
  %i.as = load i64, ptr %.val10, align 8, !noalias !6643, !noundef !6
  %i.at = add i64 %i.as, -1                       ; 2 uses
  store i64 %i.at, ptr %.val10, align 8, !noalias !6643
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.q, label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i"

bb.q:                                             ; preds = %bb.p
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hbb0a19576e836c63E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.h)
  br label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i"

"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i": ; preds = %bb.q, %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6644)
  call void @llvm.experimental.noalias.scope.decl(metadata !6645)
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !6646, !nonnull !6, !noundef !6 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !6646, !noundef !6
  %i.ay = add i64 %i.ax, -1                       ; 2 uses
  store i64 %i.ay, ptr %i.aw, align 8, !noalias !6646
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.r, label %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit"

bb.r:                                             ; preds = %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h1ff8d69044974696E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.av)
  br label %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit"

"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit": ; preds = %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i", %bb.r
  ret ptr %i.ap

bb.s:                                             ; preds = %bb.l
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr94drop_in_place$LT$pest..error..ErrorVariant$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17hfdb4d90bcf94f5d6E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #58
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit"

bb.t:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core6parser6parser8TagToken12expect_range17h764891e14aedb200E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
end_hunk_6
begin_hunk_7_@_ZN11liquid_core6parser6parser8TagToken17expect_identifier17hdcab7941abcaef89E:bb.a
bb.x:                                             ; preds = %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit.i"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hbb0a19576e836c63E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.d), !noalias !7092
  br label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i5.i"

"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i5.i": ; preds = %bb.x, %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit.i"
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7123)
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !7124, !noalias !7092, !nonnull !6, !noundef !6 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !7125, !noundef !6
  %i.bl = add i64 %i.bk, -1                       ; 2 uses
  store i64 %i.bl, ptr %i.bj, align 8, !noalias !7125
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.y, label %"_ZN4core3ptr98drop_in_place$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h35e9182a7d43856fE.exit.i"

bb.y:                                             ; preds = %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i5.i"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h1ff8d69044974696E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bi), !noalias !7092
  br label %"_ZN4core3ptr98drop_in_place$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h35e9182a7d43856fE.exit.i"

"_ZN4core3ptr98drop_in_place$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h35e9182a7d43856fE.exit.i": ; preds = %bb.y, %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i5.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7092
  br label %.thread

bb.z:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7092
  %.sroa.0.0.copyload6 = load ptr, ptr %i.c, align 8, !noalias !7126 ; 4 uses
  %.sroa.8.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx7, i64 32, i1 false), !noalias !7126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7092
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7129)
  %i.bn = load ptr, ptr %i.d, align 8, !alias.scope !7130, !noalias !7092, !nonnull !6, !noundef !6 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !7131, !noundef !6
  %i.bp = add i64 %i.bo, -1                       ; 2 uses
  store i64 %i.bp, ptr %i.bn, align 8, !noalias !7131
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.aa, label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i6.i"

bb.aa:                                            ; preds = %bb.z
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hbb0a19576e836c63E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.d), !noalias !7092
  br label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i6.i"

"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i6.i": ; preds = %bb.aa, %bb.z
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7133)
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !7134, !noalias !7092, !nonnull !6, !noundef !6 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !7135, !noundef !6
  %i.bu = add i64 %i.bt, -1                       ; 2 uses
  store i64 %i.bu, ptr %i.bs, align 8, !noalias !7135
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i6.i"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h1ff8d69044974696E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.br), !noalias !7092
  br label %bb.ad

bb.ac:                                            ; preds = %bb.af, %"_ZN4pest9iterators4pair13Pair$LT$R$GT$10into_inner17hd13c95c0d8f6d8c6E.exit.i", %bb.a
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread:                                          ; preds = %bb.b, %"_ZN4core3ptr98drop_in_place$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h35e9182a7d43856fE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ae

bb.ad:                                            ; preds = %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i6.i", %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bx = icmp eq ptr %.sroa.0.0.copyload6, null
  br i1 %i.bx, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %.thread, %bb.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7136)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !7136, !noalias !7137, !noundef !6 ; 3 uses
  %i.ca = load i64, ptr %1, align 8, !range !21, !alias.scope !7136, !noalias !7137, !noundef !6
  %i.cb = icmp eq i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %bb.ae
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdc51bcaa4d9d69b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @355)
          to label %bb.ao unwind label %bb.ac

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %.sroa.0.0.copyload6, ptr %i.g, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8, i64 32, i1 false)
  %i.cc = invoke fastcc { ptr, i64 } @"_ZN4pest9iterators4pair13Pair$LT$R$GT$6as_str17h64daa3b571d3e876E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g)
          to label %bb.ai unwind label %bb.ah     ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE"(ptr noalias noundef align 8 dereferenceable(40) %i.g) #58
  br label %.body

bb.ai:                                            ; preds = %bb.ag
  %i.ce = extractvalue { ptr, i64 } %i.cc, 0
  %i.cf = extractvalue { ptr, i64 } %i.cc, 1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ce, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cf, ptr %i.ch, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7138)
  %i.ci = load i64, ptr %.sroa.0.0.copyload6, align 8, !noalias !7139, !noundef !6
  %i.cj = add i64 %i.ci, -1                       ; 2 uses
  store i64 %i.cj, ptr %.sroa.0.0.copyload6, align 8, !noalias !7139
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.aj, label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i"

bb.aj:                                            ; preds = %bb.ai
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hbb0a19576e836c63E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.g)
  br label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i"

"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i": ; preds = %bb.aj, %bb.ai
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7141)
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !7142, !nonnull !6, !noundef !6 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !7142, !noundef !6
  %i.co = add i64 %i.cn, -1                       ; 2 uses
  store i64 %i.co, ptr %i.cm, align 8, !noalias !7142
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.ak, label %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit"

bb.ak:                                            ; preds = %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h1ff8d69044974696E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cl)
  br label %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit"

"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit": ; preds = %bb.ak, %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7143)
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7146)
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !7147, !nonnull !6, !noundef !6 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !noalias !7147, !noundef !6
  %i.ct = add i64 %i.cs, -1                       ; 2 uses
  store i64 %i.ct, ptr %i.cr, align 8, !noalias !7147
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.al, label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i4"

bb.al:                                            ; preds = %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit"
  tail call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hbb0a19576e836c63E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.cq)
  br label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i4"

"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i4": ; preds = %bb.al, %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit"
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7149)
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !7150, !nonnull !6, !noundef !6 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !7150, !noundef !6
  %i.cy = add i64 %i.cx, -1                       ; 2 uses
  store i64 %i.cy, ptr %i.cw, align 8, !noalias !7150
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.am, label %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit.i5"

bb.am:                                            ; preds = %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i4"
  tail call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h1ff8d69044974696E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cv)
  br label %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit.i5"

"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit.i5": ; preds = %bb.am, %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i4"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7151)
  %.val.i1.i = load i64, ptr %1, align 8, !range !21, !alias.scope !7152, !noundef !6 ; 2 uses
  %i.da = icmp eq i64 %.val.i1.i, 0
  br i1 %i.da, label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..parser..parser..TagToken$GT$17ha6a7863d054cd7ecE.exit", label %bb.an

bb.an:                                            ; preds = %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit.i5"
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i2.i = load ptr, ptr %i.db, align 8, !alias.scope !7152, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i, i64 noundef %.val.i1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !7152
  br label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..parser..parser..TagToken$GT$17ha6a7863d054cd7ecE.exit"

"_ZN4core3ptr58drop_in_place$LT$liquid_core..parser..parser..TagToken$GT$17ha6a7863d054cd7ecE.exit": ; preds = %bb.an, %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit.i5", %bb.ao
  ret void

bb.ao:                                            ; preds = %bb.ae, %bb.af
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !7136, !noalias !7137, !nonnull !6, !noundef !6
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.bz
  store i8 16, ptr %i.de, align 1, !noalias !7136
  %i.df = add i64 %i.bz, 1
  store i64 %i.df, ptr %i.by, align 8, !alias.scope !7136, !noalias !7137
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..parser..parser..TagToken$GT$17ha6a7863d054cd7ecE.exit"

.body:                                            ; preds = %bb.ah, %bb.ac, %bb.k, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.ah ], [ %i.bw, %bb.ac ], [ %.pn.i, %bb.k ], [ %lpad.thr_comm.i.i, %bb.j ], [ %lpad.thr_comm.i.i, %bb.i ]
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$liquid_core..parser..parser..TagToken$GT$17ha6a7863d054cd7ecE"(ptr noalias noundef align 8 dereferenceable(64) %1) #58
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_ZN11liquid_core6parser6parser8TagToken18raise_custom_error17h4d2cf0e699454331E(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [120 x i8], align 8               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = icmp slt i64 %2, 0
  br i1 %i.d, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bb.e, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !7174
  %i.f = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #59, !noalias !7174 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #57
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.p, %bb.f, %bb.d
  %.pn = phi { ptr, i32 } [ %i.h, %bb.d ], [ %lpad.thr_comm, %bb.p ], [ %lpad.thr_comm.split-lp, %bb.f ]
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$liquid_core..parser..parser..TagToken$GT$17ha6a7863d054cd7ecE"(ptr noalias noundef align 8 dereferenceable(64) %0) #58
  resume { ptr, i32 } %.pn

bb.d:                                             ; preds = %bb.b, %bb.k
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.f, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !7175
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.i, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.10.0.i.i, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %2, ptr %.sroa.516.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i64, ptr %i.k, align 8, !noundef !6 ; 3 uses
  %.val3 = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val3, i64 32
  %i.n = load i64, ptr %i.m, align 8, !noundef !6 ; 3 uses
  %i.o = icmp ult i64 %i.l, %i.n
  br i1 %i.o, label %bb.g, label %.invoke

bb.f:                                             ; preds = %bb.j
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.l ; 3 uses
  %i.s = load i8, ptr %i.r, align 8, !range !11, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  %.sroa.0.0.in.v.i = select i1 %i.t, i64 32, i64 16
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.0.in.v.i
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 8, !noundef !6
  br i1 %i.t, label %bb.h, label %bb.i, !prof !12

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @236, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @536) #57
          to label %.noexc8 unwind label %bb.p

.noexc8:                                          ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noundef !6 ; 3 uses
  %i.w = icmp ult i64 %i.v, %i.n
  br i1 %i.w, label %bb.j, label %.invoke

.invoke:                                          ; preds = %bb.i, %bb.e
  %i.x = phi i64 [ %i.l, %bb.e ], [ %i.v, %bb.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.x, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @534) #57
          to label %.cont unwind label %bb.p

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.v ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !range !11, !noundef !6
  %i.aa = trunc nuw i8 %i.z to i1
  %.sroa.0.0.in.v.i9 = select i1 %i.aa, i64 32, i64 16
  %.sroa.0.0.in.i10 = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.0.0.in.v.i9
  %.sroa.0.0.i11 = load i64, ptr %.sroa.0.0.in.i10, align 8, !noundef !6
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !6, !align !8, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !6
  store ptr %i.ac, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.0.0.i, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.0.0.i11, ptr %i.ah, align 8
  invoke fastcc void @"_ZN4pest5error14Error$LT$R$GT$13new_from_span17hebe500a03703d2cbE"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.k unwind label %bb.f

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = invoke fastcc noundef nonnull align 8 ptr @_ZN11liquid_core6parser6parser18convert_pest_error17h1b49e119442899d5E(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.c)
          to label %bb.l unwind label %bb.d

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !7176)
  call void @llvm.experimental.noalias.scope.decl(metadata !7177)
  %i.aj = load i64, ptr %.val3, align 8, !noalias !7178, !noundef !6
  %i.ak = add i64 %i.aj, -1                       ; 2 uses
  store i64 %i.ak, ptr %.val3, align 8, !noalias !7178
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.m, label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i"

bb.m:                                             ; preds = %bb.l
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hbb0a19576e836c63E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.j)
  br label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i"

"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i": ; preds = %bb.m, %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7179)
  call void @llvm.experimental.noalias.scope.decl(metadata !7180)
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !7181, !nonnull !6, !noundef !6 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noalias !7181, !noundef !6
  %i.ap = add i64 %i.ao, -1                       ; 2 uses
  store i64 %i.ap, ptr %i.an, align 8, !noalias !7181
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.n, label %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit.i"

bb.n:                                             ; preds = %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h1ff8d69044974696E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.am)
  br label %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit.i"

"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit.i": ; preds = %bb.n, %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !7182)
  %.val.i1.i = load i64, ptr %0, align 8, !range !21, !alias.scope !7183, !noundef !6 ; 2 uses
  %i.ar = icmp eq i64 %.val.i1.i, 0
  br i1 %i.ar, label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..parser..parser..TagToken$GT$17ha6a7863d054cd7ecE.exit", label %bb.o

bb.o:                                             ; preds = %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit.i"
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i2.i = load ptr, ptr %i.as, align 8, !alias.scope !7183, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i, i64 noundef %.val.i1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !7183
  br label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..parser..parser..TagToken$GT$17ha6a7863d054cd7ecE.exit"

"_ZN4core3ptr58drop_in_place$LT$liquid_core..parser..parser..TagToken$GT$17ha6a7863d054cd7ecE.exit": ; preds = %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit.i", %bb.o
  ret ptr %i.ai

bb.p:                                             ; preds = %.invoke, %bb.h
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr94drop_in_place$LT$pest..error..ErrorVariant$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17hfdb4d90bcf94f5d6E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #58
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core6parser6parser8TagToken19expect_filter_chain17h324b7b07d7d8ee48E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(64) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [88 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [88 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7205)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7206
  invoke fastcc void @_ZN11liquid_core6parser6parser8TagToken19unwrap_filter_chain17h6b9bdcd910133ed7E(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %1)
          to label %.noexc unwind label %.thread15

.noexc:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !noalias !7206, !noundef !6 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7206
  store ptr @359, ptr %i.a, align 8, !noalias !7206
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 15, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !7206
  %.sroa.628.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.628.0..sroa_idx.i, align 1, !noalias !7206
  %i.h = invoke noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc7 unwind label %.thread15

end_hunk_7
begin_hunk_8_@"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$12serialize_i817h991a5ecd735775fcE":bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16639)
  store i8 45, ptr %i.g, align 1, !noalias !16640
  store i64 1, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !16639, !noalias !16636
  br label %bb.e

bb.f:                                             ; preds = %bb.e
  %i.m = extractvalue { ptr, i64 } %i.l, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16641)
  call void @llvm.experimental.noalias.scope.decl(metadata !16642)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = sub nuw nsw i64 %i.j, %i.k
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.g, label %"_ZN50_$LT$i8$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hfec9c5a07f2a5a7eE.exit", !prof !12

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.k, i64 noundef %i.m, i64 noundef 1, i64 noundef 1)
          to label %.noexc17.i unwind label %bb.h, !noalias !16636

.noexc17.i:                                       ; preds = %bb.g
  %.pre.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !16643, !noalias !16636
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !16643, !noalias !16636
  br label %"_ZN50_$LT$i8$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hfec9c5a07f2a5a7eE.exit"

common.resume:                                    ; preds = %bb.h, %bb.i, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %.body.i ], [ %lpad.thr_comm.i, %bb.i ], [ %lpad.thr_comm.i, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g, %bb.e
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16644)
  call void @llvm.experimental.noalias.scope.decl(metadata !16645)
  %.val.i.i.i = load i64, ptr %i.b, align 8, !range !21, !alias.scope !16646, !noalias !16636, !noundef !6 ; 2 uses
  %i.q = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.q, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !16646, !noalias !16636, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16647
  br label %common.resume

"_ZN50_$LT$i8$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hfec9c5a07f2a5a7eE.exit": ; preds = %bb.f, %.noexc17.i
  %i.s = phi ptr [ %i.i, %bb.f ], [ %.pre.i, %.noexc17.i ]
  %i.t = phi i64 [ %i.k, %bb.f ], [ %.pre.i.i.i, %.noexc17.i ] ; 3 uses
  %i.u = extractvalue { ptr, i64 } %i.l, 0
  %i.v = icmp sgt i64 %i.t, -1
  call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.u, i64 %i.m, i1 false), !noalias !16648
  %i.x = add i64 %i.t, %i.m                       ; 9 uses
  %.sroa.04.0.copyload = load i64, ptr %i.b, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = icmp sgt i64 %i.x, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp samesign ult i64 %i.x, 16
  br i1 %i.z, label %bb.m, label %bb.j

bb.j:                                             ; preds = %"_ZN50_$LT$i8$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hfec9c5a07f2a5a7eE.exit"
  %i.aa = icmp ugt i64 %.sroa.04.0.copyload, %i.x
  br i1 %i.aa, label %bb.k, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.ab = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.04.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %i.x) #59, !noalias !16649 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.l, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !16650

.noexc.i.i:                                       ; preds = %bb.l
  unreachable

.body.i:                                          ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.04.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16651
  br label %common.resume

bb.m:                                             ; preds = %"_ZN50_$LT$i8$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hfec9c5a07f2a5a7eE.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !16652
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %.sroa.5.0.copyload, i64 %i.x, i1 false), !noalias !16652
  %.0..0..0..sroa.05.1.copyload = load i56, ptr %i.a, align 8, !noalias !16653
  %.sroa.05.1.insert.ext = zext i56 %.0..0..0..sroa.05.1.copyload to i64
  %.sroa.05.1.insert.shift = shl nuw i64 %.sroa.05.1.insert.ext, 8
  %.sroa.05.1.insert.insert = or disjoint i64 %.sroa.05.1.insert.shift, %i.x
  %i.ae = inttoptr i64 %.sroa.05.1.insert.insert to ptr ; 2 uses
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !16653 ; 2 uses
  %i.af = icmp eq i64 %.sroa.04.0.copyload, 0
  br i1 %i.af, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.04.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16654
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit": ; preds = %bb.j, %bb.k, %bb.m, %bb.n
  %.sroa.05.0 = phi ptr [ %i.ae, %bb.m ], [ %i.ae, %bb.n ], [ %i.ab, %bb.k ], [ %.sroa.5.0.copyload, %bb.j ]
  %.sroa.77.0 = phi i8 [ 1, %bb.m ], [ 1, %bb.n ], [ -1, %bb.k ], [ -1, %bb.j ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..sroa.6.1.copyload, %bb.m ], [ %.7..7..7..sroa.6.1.copyload, %bb.n ], [ %i.x, %bb.k ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.05.0, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.77.0, ptr %.sroa.610.0..sroa_idx, align 1
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$12serialize_u817h7cc275e868f2b326E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i8 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 7 uses
  %i.b = alloca [3 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = call { ptr, i64 } @"_ZN4core3fmt3num3imp20_$LT$impl$u20$u8$GT$4_fmt17h0aba84ed63f64164E"(i8 noundef %1, ptr noalias noundef nonnull align 1 %i.b, i64 noundef 3) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 10 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.g = icmp eq i64 %i.e, 0                      ; 2 uses
  br i1 %i.g, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.thread", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.thread": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.c

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !16669
  %i.h = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 1) #59, !noalias !16669 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.a ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #57, !noalias !16670
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.d, i64 %i.e, i1 false), !noalias !16671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = icmp samesign ult i64 %i.e, 16
  br i1 %i.j, label %bb.c, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.c:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.thread", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit"
  %.sroa.10.0.i.i13 = phi ptr [ inttoptr (i64 1 to ptr), %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.thread" ], [ %i.h, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit" ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !16672
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %.sroa.10.0.i.i13, i64 %i.e, i1 false), !noalias !16672
  %.0..0..0..sroa.04.1.copyload = load i56, ptr %i.a, align 8, !noalias !16673
  %.sroa.04.1.insert.ext = zext i56 %.0..0..0..sroa.04.1.copyload to i64
  %.sroa.04.1.insert.shift = shl nuw i64 %.sroa.04.1.insert.ext, 8
  %.sroa.04.1.insert.insert = or i64 %.sroa.04.1.insert.shift, %i.e
  %i.k = inttoptr i64 %.sroa.04.1.insert.insert to ptr ; 2 uses
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.65.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !16673 ; 2 uses
  br i1 %i.g, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i13, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16674
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit", %bb.c, %bb.d
  %.sroa.04.0 = phi ptr [ %i.k, %bb.c ], [ %i.k, %bb.d ], [ %i.h, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit" ]
  %.sroa.77.0 = phi i8 [ 1, %bb.c ], [ 1, %bb.d ], [ -1, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit" ]
  %.sroa.65.0 = phi i64 [ %.7..7..7..sroa.65.1.copyload, %bb.c ], [ %.7..7..7..sroa.65.1.copyload, %bb.d ], [ %i.e, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.04.0, ptr %i.l, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.65.0, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.77.0, ptr %.sroa.611.0..sroa_idx, align 1
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_f3217hc199fdada695f7feE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, float noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @69, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 21, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_f6417h87a03d2b3a59506fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, double noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @69, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 21, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i1617hb6f59d1f380f4213E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i16 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 15 uses
  %i.c = alloca [5 x i8], align 1                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16712
  %i.d = icmp slt i16 %1, 0
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !16712
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef dereferenceable_or_null(5) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 5, i64 noundef range(i64 1, 9) 1) #59, !noalias !16713 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @558) #57, !noalias !16712
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef dereferenceable_or_null(6) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 6, i64 noundef range(i64 1, 9) 1) #59, !noalias !16714 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.noexc14.i, label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i

.noexc14.i:                                       ; preds = %bb.c
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @558) #57, !noalias !16712
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 5, ptr %i.b, align 8, !noalias !16712
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !16712
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !16712
  br label %bb.e

bb.e:                                             ; preds = %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i, %bb.d
  %i.i = phi ptr [ %i.g, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i ], [ %i.e, %bb.d ]
  %i.j = phi i64 [ 6, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i ], [ 5, %bb.d ]
  %i.k = phi i64 [ 1, %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i ], [ 0, %bb.d ] ; 3 uses
  %.sroa.011.0.i = tail call i16 @llvm.abs.i16(i16 %1, i1 false)
  %i.l = invoke { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u16$GT$4_fmt17h58c92274f7b16df7E"(i16 noundef %.sroa.011.0.i, ptr noalias noundef nonnull align 1 %i.c, i64 noundef 5)
          to label %bb.f unwind label %bb.h, !noalias !16712 ; 2 uses

_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i: ; preds = %bb.c
  store i64 6, ptr %i.b, align 8, !noalias !16712
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !16712
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16715)
  store i8 45, ptr %i.g, align 1, !noalias !16716
  store i64 1, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !16715, !noalias !16712
  br label %bb.e

bb.f:                                             ; preds = %bb.e
  %i.m = extractvalue { ptr, i64 } %i.l, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16717)
  call void @llvm.experimental.noalias.scope.decl(metadata !16718)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = sub nuw nsw i64 %i.j, %i.k
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.g, label %"_ZN51_$LT$i16$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h31b0fb7b6dec011cE.exit", !prof !12

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.k, i64 noundef %i.m, i64 noundef 1, i64 noundef 1)
          to label %.noexc17.i unwind label %bb.h, !noalias !16712

.noexc17.i:                                       ; preds = %bb.g
  %.pre.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !16719, !noalias !16712
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !16719, !noalias !16712
  br label %"_ZN51_$LT$i16$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h31b0fb7b6dec011cE.exit"

common.resume:                                    ; preds = %bb.h, %bb.i, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %.body.i ], [ %lpad.thr_comm.i, %bb.i ], [ %lpad.thr_comm.i, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g, %bb.e
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16720)
  call void @llvm.experimental.noalias.scope.decl(metadata !16721)
  %.val.i.i.i = load i64, ptr %i.b, align 8, !range !21, !alias.scope !16722, !noalias !16712, !noundef !6 ; 2 uses
  %i.q = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.q, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !16722, !noalias !16712, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16723
  br label %common.resume

"_ZN51_$LT$i16$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h31b0fb7b6dec011cE.exit": ; preds = %bb.f, %.noexc17.i
  %i.s = phi ptr [ %i.i, %bb.f ], [ %.pre.i, %.noexc17.i ]
  %i.t = phi i64 [ %i.k, %bb.f ], [ %.pre.i.i.i, %.noexc17.i ] ; 3 uses
  %i.u = extractvalue { ptr, i64 } %i.l, 0
  %i.v = icmp sgt i64 %i.t, -1
  call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.u, i64 %i.m, i1 false), !noalias !16724
  %i.x = add i64 %i.t, %i.m                       ; 9 uses
  %.sroa.04.0.copyload = load i64, ptr %i.b, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = icmp sgt i64 %i.x, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp samesign ult i64 %i.x, 16
  br i1 %i.z, label %bb.m, label %bb.j

bb.j:                                             ; preds = %"_ZN51_$LT$i16$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h31b0fb7b6dec011cE.exit"
  %i.aa = icmp ugt i64 %.sroa.04.0.copyload, %i.x
  br i1 %i.aa, label %bb.k, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.ab = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.04.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %i.x) #59, !noalias !16725 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.l, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !16726

.noexc.i.i:                                       ; preds = %bb.l
  unreachable

.body.i:                                          ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.04.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16727
  br label %common.resume

bb.m:                                             ; preds = %"_ZN51_$LT$i16$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h31b0fb7b6dec011cE.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !16728
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %.sroa.5.0.copyload, i64 %i.x, i1 false), !noalias !16728
  %.0..0..0..sroa.05.1.copyload = load i56, ptr %i.a, align 8, !noalias !16729
  %.sroa.05.1.insert.ext = zext i56 %.0..0..0..sroa.05.1.copyload to i64
  %.sroa.05.1.insert.shift = shl nuw i64 %.sroa.05.1.insert.ext, 8
  %.sroa.05.1.insert.insert = or disjoint i64 %.sroa.05.1.insert.shift, %i.x
  %i.ae = inttoptr i64 %.sroa.05.1.insert.insert to ptr ; 2 uses
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !16729 ; 2 uses
  %i.af = icmp eq i64 %.sroa.04.0.copyload, 0
  br i1 %i.af, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.04.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16730
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit": ; preds = %bb.j, %bb.k, %bb.m, %bb.n
  %.sroa.05.0 = phi ptr [ %i.ae, %bb.m ], [ %i.ae, %bb.n ], [ %i.ab, %bb.k ], [ %.sroa.5.0.copyload, %bb.j ]
  %.sroa.77.0 = phi i8 [ 1, %bb.m ], [ 1, %bb.n ], [ -1, %bb.k ], [ -1, %bb.j ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..sroa.6.1.copyload, %bb.m ], [ %.7..7..7..sroa.6.1.copyload, %bb.n ], [ %i.x, %bb.k ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.05.0, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.77.0, ptr %.sroa.610.0..sroa_idx, align 1
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i3217hd4f6f0147880feafE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 15 uses
  %i.c = alloca [10 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16768
  %i.d = icmp slt i32 %1, 0
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !16768
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef dereferenceable_or_null(10) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 10, i64 noundef range(i64 1, 9) 1) #59, !noalias !16769 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @558) #57, !noalias !16768
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef dereferenceable_or_null(11) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 11, i64 noundef range(i64 1, 9) 1) #59, !noalias !16770 ; 4 uses
end_hunk_8
begin_hunk_9_@"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i3217hd4f6f0147880feafE":bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16771)
  store i8 45, ptr %i.g, align 1, !noalias !16772
  store i64 1, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !16771, !noalias !16768
  br label %bb.e

bb.f:                                             ; preds = %bb.e
  %i.m = extractvalue { ptr, i64 } %i.l, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16773)
  call void @llvm.experimental.noalias.scope.decl(metadata !16774)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = sub nuw nsw i64 %i.j, %i.k
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.g, label %"_ZN51_$LT$i32$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h572eb671b30dea37E.exit", !prof !12

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.k, i64 noundef %i.m, i64 noundef 1, i64 noundef 1)
          to label %.noexc17.i unwind label %bb.h, !noalias !16768

.noexc17.i:                                       ; preds = %bb.g
  %.pre.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !16775, !noalias !16768
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !16775, !noalias !16768
  br label %"_ZN51_$LT$i32$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h572eb671b30dea37E.exit"

common.resume:                                    ; preds = %bb.h, %bb.i, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %.body.i ], [ %lpad.thr_comm.i, %bb.i ], [ %lpad.thr_comm.i, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g, %bb.e
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16776)
  call void @llvm.experimental.noalias.scope.decl(metadata !16777)
  %.val.i.i.i = load i64, ptr %i.b, align 8, !range !21, !alias.scope !16778, !noalias !16768, !noundef !6 ; 2 uses
  %i.q = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.q, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !16778, !noalias !16768, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16779
  br label %common.resume

"_ZN51_$LT$i32$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h572eb671b30dea37E.exit": ; preds = %bb.f, %.noexc17.i
  %i.s = phi ptr [ %i.i, %bb.f ], [ %.pre.i, %.noexc17.i ]
  %i.t = phi i64 [ %i.k, %bb.f ], [ %.pre.i.i.i, %.noexc17.i ] ; 3 uses
  %i.u = extractvalue { ptr, i64 } %i.l, 0
  %i.v = icmp sgt i64 %i.t, -1
  call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.u, i64 %i.m, i1 false), !noalias !16780
  %i.x = add i64 %i.t, %i.m                       ; 9 uses
  %.sroa.04.0.copyload = load i64, ptr %i.b, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = icmp sgt i64 %i.x, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp samesign ult i64 %i.x, 16
  br i1 %i.z, label %bb.m, label %bb.j

bb.j:                                             ; preds = %"_ZN51_$LT$i32$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h572eb671b30dea37E.exit"
  %i.aa = icmp ugt i64 %.sroa.04.0.copyload, %i.x
  br i1 %i.aa, label %bb.k, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.ab = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.04.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %i.x) #59, !noalias !16781 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.l, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !16782

.noexc.i.i:                                       ; preds = %bb.l
  unreachable

.body.i:                                          ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.04.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16783
  br label %common.resume

bb.m:                                             ; preds = %"_ZN51_$LT$i32$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h572eb671b30dea37E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !16784
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %.sroa.5.0.copyload, i64 %i.x, i1 false), !noalias !16784
  %.0..0..0..sroa.05.1.copyload = load i56, ptr %i.a, align 8, !noalias !16785
  %.sroa.05.1.insert.ext = zext i56 %.0..0..0..sroa.05.1.copyload to i64
  %.sroa.05.1.insert.shift = shl nuw i64 %.sroa.05.1.insert.ext, 8
  %.sroa.05.1.insert.insert = or disjoint i64 %.sroa.05.1.insert.shift, %i.x
  %i.ae = inttoptr i64 %.sroa.05.1.insert.insert to ptr ; 2 uses
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !16785 ; 2 uses
  %i.af = icmp eq i64 %.sroa.04.0.copyload, 0
  br i1 %i.af, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.04.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16786
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit": ; preds = %bb.j, %bb.k, %bb.m, %bb.n
  %.sroa.05.0 = phi ptr [ %i.ae, %bb.m ], [ %i.ae, %bb.n ], [ %i.ab, %bb.k ], [ %.sroa.5.0.copyload, %bb.j ]
  %.sroa.77.0 = phi i8 [ 1, %bb.m ], [ 1, %bb.n ], [ -1, %bb.k ], [ -1, %bb.j ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..sroa.6.1.copyload, %bb.m ], [ %.7..7..7..sroa.6.1.copyload, %bb.n ], [ %i.x, %bb.k ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.05.0, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.77.0, ptr %.sroa.610.0..sroa_idx, align 1
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i6417h77600f56556e548eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN51_$LT$i64$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h43f0aca62bb23cf4E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16804)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !16804, !noalias !16805, !noundef !6 ; 9 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ult i64 %i.d, 16
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.018.0.copyload.i = load i64, ptr %i.b, align 8, !alias.scope !16804, !noalias !16805 ; 3 uses
  %.sroa.219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.219.0.copyload.i = load ptr, ptr %.sroa.219.0..sroa_idx.i, align 8, !alias.scope !16804, !noalias !16805 ; 4 uses
  %i.g = icmp ugt i64 %.sroa.018.0.copyload.i, %i.d
  br i1 %i.g, label %bb.c, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.219.0.copyload.i) ]
  %i.h = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.219.0.copyload.i, i64 noundef %.sroa.018.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %i.d) #59, !noalias !16806 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !16807

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

.body.i:                                          ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.219.0.copyload.i, i64 noundef %.sroa.018.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16808
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !16804, !noalias !16805, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !16809
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %i.l, i64 %i.d, i1 false), !noalias !16809
  %.0..0..0..sroa.01.1.copyload = load i56, ptr %i.a, align 8, !noalias !16804
  %.sroa.01.1.insert.ext = zext i56 %.0..0..0..sroa.01.1.copyload to i64
  %.sroa.01.1.insert.shift = shl nuw i64 %.sroa.01.1.insert.ext, 8
  %.sroa.01.1.insert.insert = or disjoint i64 %.sroa.01.1.insert.shift, %i.d
  %i.m = inttoptr i64 %.sroa.01.1.insert.insert to ptr ; 2 uses
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !16804 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16811)
  %.val.i.i.i = load i64, ptr %i.b, align 8, !range !21, !alias.scope !16812, !noalias !16805, !noundef !6 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.n, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16813
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit": ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.sroa.01.0 = phi ptr [ %i.m, %bb.e ], [ %i.m, %bb.f ], [ %i.h, %bb.c ], [ %.sroa.219.0.copyload.i, %bb.b ]
  %.sroa.72.0 = phi i8 [ 1, %bb.e ], [ 1, %bb.f ], [ -1, %bb.c ], [ -1, %bb.b ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..sroa.6.1.copyload, %bb.e ], [ %.7..7..7..sroa.6.1.copyload, %bb.f ], [ %i.d, %bb.c ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.01.0, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.72.0, ptr %.sroa.64.0..sroa_idx, align 1
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h3682d48c3bdf71f5E"(i64 noundef range(i64 0, 2) %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @69, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 21, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_seq17hbbd2eb67cbe50c29E"(i64 noundef range(i64 0, 2) %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @69, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 21, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_u1617h9da1074cd534e0aaE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i16 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 7 uses
  %i.b = alloca [5 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = call { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u16$GT$4_fmt17h58c92274f7b16df7E"(i16 noundef %1, ptr noalias noundef nonnull align 1 %i.b, i64 noundef 5) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 10 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.g = icmp eq i64 %i.e, 0                      ; 2 uses
  br i1 %i.g, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.thread", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.thread": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.c

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !16828
  %i.h = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 1) #59, !noalias !16828 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.a ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #57, !noalias !16829
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.d, i64 %i.e, i1 false), !noalias !16830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = icmp samesign ult i64 %i.e, 16
  br i1 %i.j, label %bb.c, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.c:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.thread", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit"
  %.sroa.10.0.i.i13 = phi ptr [ inttoptr (i64 1 to ptr), %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.thread" ], [ %i.h, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit" ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !16831
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %.sroa.10.0.i.i13, i64 %i.e, i1 false), !noalias !16831
  %.0..0..0..sroa.04.1.copyload = load i56, ptr %i.a, align 8, !noalias !16832
  %.sroa.04.1.insert.ext = zext i56 %.0..0..0..sroa.04.1.copyload to i64
  %.sroa.04.1.insert.shift = shl nuw i64 %.sroa.04.1.insert.ext, 8
  %.sroa.04.1.insert.insert = or i64 %.sroa.04.1.insert.shift, %i.e
  %i.k = inttoptr i64 %.sroa.04.1.insert.insert to ptr ; 2 uses
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.65.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !16832 ; 2 uses
  br i1 %i.g, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i13, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16833
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit", %bb.c, %bb.d
  %.sroa.04.0 = phi ptr [ %i.k, %bb.c ], [ %i.k, %bb.d ], [ %i.h, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit" ]
  %.sroa.77.0 = phi i8 [ 1, %bb.c ], [ 1, %bb.d ], [ -1, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit" ]
  %.sroa.65.0 = phi i64 [ %.7..7..7..sroa.65.1.copyload, %bb.c ], [ %.7..7..7..sroa.65.1.copyload, %bb.d ], [ %i.e, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.04.0, ptr %i.l, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.65.0, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.77.0, ptr %.sroa.611.0..sroa_idx, align 1
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_u3217h0f6bb5e4c6f61303E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 7 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = call { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h90579d648c67d9beE"(i32 noundef %1, ptr noalias noundef nonnull align 1 %i.b, i64 noundef 10) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 10 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.g = icmp eq i64 %i.e, 0                      ; 2 uses
  br i1 %i.g, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.thread", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.thread": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.c

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !16848
  %i.h = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 1) #59, !noalias !16848 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.a ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #57, !noalias !16849
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.d, i64 %i.e, i1 false), !noalias !16850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = icmp samesign ult i64 %i.e, 16
  br i1 %i.j, label %bb.c, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.c:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.thread", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit"
  %.sroa.10.0.i.i13 = phi ptr [ inttoptr (i64 1 to ptr), %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.thread" ], [ %i.h, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit" ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !16851
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %.sroa.10.0.i.i13, i64 %i.e, i1 false), !noalias !16851
  %.0..0..0..sroa.04.1.copyload = load i56, ptr %i.a, align 8, !noalias !16852
  %.sroa.04.1.insert.ext = zext i56 %.0..0..0..sroa.04.1.copyload to i64
  %.sroa.04.1.insert.shift = shl nuw i64 %.sroa.04.1.insert.ext, 8
  %.sroa.04.1.insert.insert = or i64 %.sroa.04.1.insert.shift, %i.e
  %i.k = inttoptr i64 %.sroa.04.1.insert.insert to ptr ; 2 uses
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.65.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !16852 ; 2 uses
  br i1 %i.g, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i13, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16853
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit", %bb.c, %bb.d
  %.sroa.04.0 = phi ptr [ %i.k, %bb.c ], [ %i.k, %bb.d ], [ %i.h, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit" ]
  %.sroa.77.0 = phi i8 [ 1, %bb.c ], [ 1, %bb.d ], [ -1, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit" ]
  %.sroa.65.0 = phi i64 [ %.7..7..7..sroa.65.1.copyload, %bb.c ], [ %.7..7..7..sroa.65.1.copyload, %bb.d ], [ %i.e, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.04.0, ptr %i.l, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.65.0, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.77.0, ptr %.sroa.611.0..sroa_idx, align 1
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_u6417hc4dfc467fad4a995E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 7 uses
  %i.b = alloca [20 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = call { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17h04203418c0187945E"(i64 noundef %1, ptr noalias noundef nonnull align 1 %i.b, i64 noundef 20) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 10 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.g = icmp eq i64 %i.e, 0                      ; 2 uses
  br i1 %i.g, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.thread", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.thread": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.c

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !16868
  %i.h = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 1) #59, !noalias !16868 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.a ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #57, !noalias !16869
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.d, i64 %i.e, i1 false), !noalias !16870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = icmp samesign ult i64 %i.e, 16
  br i1 %i.j, label %bb.c, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.c:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.thread", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit"
  %.sroa.10.0.i.i13 = phi ptr [ inttoptr (i64 1 to ptr), %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit.thread" ], [ %i.h, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit" ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !16871
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %.sroa.10.0.i.i13, i64 %i.e, i1 false), !noalias !16871
  %.0..0..0..sroa.04.1.copyload = load i56, ptr %i.a, align 8, !noalias !16872
  %.sroa.04.1.insert.ext = zext i56 %.0..0..0..sroa.04.1.copyload to i64
  %.sroa.04.1.insert.shift = shl nuw i64 %.sroa.04.1.insert.ext, 8
  %.sroa.04.1.insert.insert = or i64 %.sroa.04.1.insert.shift, %i.e
  %i.k = inttoptr i64 %.sroa.04.1.insert.insert to ptr ; 2 uses
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.65.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !16872 ; 2 uses
  br i1 %i.g, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i13, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !16873
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit", %bb.c, %bb.d
  %.sroa.04.0 = phi ptr [ %i.k, %bb.c ], [ %i.k, %bb.d ], [ %i.h, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit" ]
  %.sroa.77.0 = phi i8 [ 1, %bb.c ], [ 1, %bb.d ], [ -1, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit" ]
  %.sroa.65.0 = phi i64 [ %.7..7..7..sroa.65.1.copyload, %bb.c ], [ %.7..7..7..sroa.65.1.copyload, %bb.d ], [ %i.e, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h26a84ef38360be51E.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.04.0, ptr %i.l, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.65.0, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.77.0, ptr %.sroa.611.0..sroa_idx, align 1
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_bool17ha94b0a7510870ecfE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, i1 noundef zeroext %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @69, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 21, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h11ed124af825ad2aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @69, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 21, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_unit17hd75ddb63be874849E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @69, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 21, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$15serialize_bytes17h126d59b9439dd3d4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @69, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 21, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$15serialize_tuple17h1e5e24d16736ee8dE"(i64 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @69, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 21, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17h920d718328817012E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @69, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 21, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$21serialize_unit_struct17h3c498bb7782f4a0eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @69, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 21, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_tuple_struct17haf0b85ab49ad928bE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @69, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 21, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$23serialize_tuple_variant17h2fca5b477445ec00E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, i32 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @69, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 21, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN89_$LT$liquid_core..model..ser..MapKeySerializer$u20$as$u20$serde_core..ser..Serializer$GT$24serialize_struct_variant17hab29c8ff386aadffE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, i32 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @69, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 21, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN8powerfmt13smart_display12SmartDisplay3fmt17hb984493e88a38bbeE(i32 %.0.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
  %i.g = alloca [4 x i8], align 4                 ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 3 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @"_ZN113_$LT$powerfmt..smart_display..FormatterOptions$u20$as$u20$core..convert..From$LT$$RF$core..fmt..Formatter$GT$$GT$4from17hded540aebc368e28E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  call fastcc void @"_ZN74_$LT$time..date..Date$u20$as$u20$powerfmt..smart_display..SmartDisplay$GT$8metadata17hb8eeda8efb6f59aeE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.i, i32 %.0.val)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !16877)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.l = load i8, ptr %i.k, align 4, !alias.scope !16877, !noalias !16878, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 15
  %i.n = load i8, ptr %i.m, align 1, !range !11, !alias.scope !16877, !noalias !16878, !noundef !6
  %i.o = trunc nuw i8 %i.n to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16879
  %i.p = load i32, ptr %i.j, align 8, !alias.scope !16877, !noalias !16878, !noundef !6
  store i32 %i.p, ptr %i.g, align 4, !noalias !16879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16879
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 13
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !16877, !noalias !16878, !noundef !6
  store i8 %i.r, ptr %i.f, align 1, !noalias !16879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16879
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 14
  %i.t = load i8, ptr %i.s, align 2, !alias.scope !16877, !noalias !16878, !noundef !6
  store i8 %i.t, ptr %i.e, align 1, !noalias !16879
  %i.u = load i64, ptr %i.i, align 8, !alias.scope !16877, !noalias !16878, !noundef !6 ; 2 uses
  %i.v = zext i8 %i.l to i16                      ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16879
  store ptr %i.g, ptr %i.a, align 8, !noalias !16879
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E", ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !16879
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.w, align 8, !noalias !16879
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h4106ba8e3ec0c355E", ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !16879
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %i.x, align 8, !noalias !16879
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h4106ba8e3ec0c355E", ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !16879
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.y, align 8, !noalias !16879
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i16 %i.v, ptr %.sroa.437.0..sroa_idx.i, align 8, !noalias !16879
  store ptr @185, ptr %i.b, align 8, !noalias !16879
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 3, ptr %i.z, align 8, !noalias !16879
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @676, ptr %i.aa, align 8, !noalias !16879
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 3, ptr %i.ab, align 8, !noalias !16879
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.ac, align 8, !noalias !16879
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 4, ptr %i.ad, align 8, !noalias !16879
  %i.ae = call noundef zeroext i1 @"_ZN68_$LT$core..fmt..Formatter$u20$as$u20$powerfmt..ext..FormatterExt$GT$14pad_with_width17ha25c628238c85746E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b), !noalias !16877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16879
  br label %"_ZN74_$LT$time..date..Date$u20$as$u20$powerfmt..smart_display..SmartDisplay$GT$17fmt_with_metadata17h4ece450b8f86020fE.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16879
  store ptr %i.g, ptr %i.c, align 8, !noalias !16879
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E", ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !16879
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %i.af, align 8, !noalias !16879
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h4106ba8e3ec0c355E", ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !16879
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.e, ptr %i.ag, align 8, !noalias !16879
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h4106ba8e3ec0c355E", ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !16879
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr null, ptr %i.ah, align 8, !noalias !16879
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i16 %i.v, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !16879
  store ptr @185, ptr %i.d, align 8, !noalias !16879
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 3, ptr %i.ai, align 8, !noalias !16879
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr @677, ptr %i.aj, align 8, !noalias !16879
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 3, ptr %i.ak, align 8, !noalias !16879
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.c, ptr %i.al, align 8, !noalias !16879
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 4, ptr %i.am, align 8, !noalias !16879
  %i.an = call noundef zeroext i1 @"_ZN68_$LT$core..fmt..Formatter$u20$as$u20$powerfmt..ext..FormatterExt$GT$14pad_with_width17ha25c628238c85746E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d), !noalias !16877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16879
  br label %"_ZN74_$LT$time..date..Date$u20$as$u20$powerfmt..smart_display..SmartDisplay$GT$17fmt_with_metadata17h4ece450b8f86020fE.exit"

"_ZN74_$LT$time..date..Date$u20$as$u20$powerfmt..smart_display..SmartDisplay$GT$17fmt_with_metadata17h4ece450b8f86020fE.exit": ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.an, %bb.c ], [ %i.ae, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16879
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @"_ZN90_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..cmp..PartialEq$LT$bool$GT$$GT$2eq17he3513d148e2990d9E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit":
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %1, align 1, !range !11, !noundef !6
  store i64 4, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %i.c = call fastcc noundef zeroext i1 @_ZN11liquid_core5model6scalar9scalar_eq17hf8920104858f0167E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef range(i8 -1, 3) i8 @"_ZN90_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..cmp..PartialOrd$LT$f32$GT$$GT$11partial_cmp17h557233ad117d6c3aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit":
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load float, ptr %1, align 4, !noundef !6
  %i.c = fpext float %i.b to double
  store i64 3, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %i.d = call fastcc noundef i8 @_ZN11liquid_core5model6scalar10scalar_cmp17h2bfd2bd2498e5618E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef range(i8 -1, 3) i8 @"_ZN90_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..cmp..PartialOrd$LT$f64$GT$$GT$11partial_cmp17hab381fc6c5fbd0d1E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit":
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load double, ptr %1, align 8, !noundef !6
  store i64 3, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %i.c = call fastcc noundef i8 @_ZN11liquid_core5model6scalar10scalar_cmp17h2bfd2bd2498e5618E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef range(i8 -1, 3) i8 @"_ZN90_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..cmp..PartialOrd$LT$i16$GT$$GT$11partial_cmp17h131b080f681f7bfdE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit":
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i16, ptr %1, align 2, !noundef !6
  %i.c = sext i16 %i.b to i64
  store i64 2, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %i.d = call fastcc noundef i8 @_ZN11liquid_core5model6scalar10scalar_cmp17h2bfd2bd2498e5618E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef range(i8 -1, 3) i8 @"_ZN90_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..cmp..PartialOrd$LT$i32$GT$$GT$11partial_cmp17h2aaf1b8a2dd3e630E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit":
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %1, align 4, !noundef !6
  %i.c = sext i32 %i.b to i64
  store i64 2, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %i.d = call fastcc noundef i8 @_ZN11liquid_core5model6scalar10scalar_cmp17h2bfd2bd2498e5618E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef range(i8 -1, 3) i8 @"_ZN90_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..cmp..PartialOrd$LT$i64$GT$$GT$11partial_cmp17hd5de9c405b0a8afcE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit":
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %1, align 8, !noundef !6
  store i64 2, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_9
begin_hunk_10_@"_ZN95_$LT$liquid_core..model..value..ser..ValueSerializer$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_tuple_struct17hb0a7557eb6da0bddE":bb.a
  %or.cond.i.i.i = icmp ugt i64 %3, 164703072086692425
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.a
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !17041
  %i.c = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.a, i64 noundef range(i64 1, 9) 8) #59, !noalias !17041 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i", %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @794) #57
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h2acf4673a1afc302E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %i.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i" ]
  %.sroa.4.0.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %3, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i" ] ; 2 uses
  %i.e = icmp samesign ule i64 %3, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.e)
  store i64 %.sroa.4.0.i, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN95_$LT$liquid_core..model..value..ser..ValueSerializer$u20$as$u20$serde_core..ser..Serializer$GT$23serialize_tuple_variant17he180368a30132628E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2, i32 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = mul i64 %6, 56                           ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %6, 164703072086692425
  br i1 %or.cond.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.a
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !17046
  %i.c = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.a, i64 noundef range(i64 1, 9) 8) #59, !noalias !17046 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i", %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @795) #57
  unreachable

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %i.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i" ]
  %.sroa.4.0.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %6, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i" ] ; 2 uses
  %i.e = icmp samesign ule i64 %6, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.e)
  store i64 %.sroa.4.0.i, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %5, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 47
  store i8 0, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN95_$LT$liquid_core..model..value..ser..ValueSerializer$u20$as$u20$serde_core..ser..Serializer$GT$24serialize_struct_variant17hd89239d410274d45E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 64), (71, 72)) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2, i32 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !11, !noalias !17057, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i", !prof !24

._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.a, align 8, !noalias !17058
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !17058
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i": ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE() ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8, !noalias !17059
  store i8 1, ptr %i.b, align 8, !noalias !17059
  br label %bb.b

bb.b:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i", %._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i
  %.pre-phi23 = phi i64 [ %i.g, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i" ], [ %.pre1.i.i, %._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i ]
  %.pre-phi = phi i64 [ %i.f, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i" ], [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i ] ; 2 uses
  %i.i = add i64 %.pre-phi, 1
  store i64 %i.i, ptr %i.a, align 8, !noalias !17058
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @44, i64 32, i1 false)
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.pre-phi, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.pre-phi23, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %4, ptr %.sroa.617.0..sroa_idx, align 8
  %.sroa.617.sroa.4.0..sroa.617.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %5, ptr %.sroa.617.sroa.4.0..sroa.617.0..sroa_idx.sroa_idx, align 8
  %.sroa.617.sroa.6.0..sroa.617.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 71
  store i8 0, ptr %.sroa.617.sroa.6.0..sroa.617.0..sroa_idx.sroa_idx, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN96_$LT$liquid_core..model..value..cow..ValueCow$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hbd18f9adb895cb50E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !19, !alias.scope !17062, !noundef !6
  switch i8 %i.a, label %default.unreachable [
    i8 5, label %bb.b
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %_ZN11liquid_core5model5value3cow8ValueCow7as_view17h1c819dda421933e7E.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !17062, !nonnull !6, !align !8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !17062, !nonnull !6, !align !9, !noundef !6
  br label %_ZN11liquid_core5model5value3cow8ValueCow7as_view17h1c819dda421933e7E.exit

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN11liquid_core5model5value3cow8ValueCow7as_view17h1c819dda421933e7E.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN11liquid_core5model5value3cow8ValueCow7as_view17h1c819dda421933e7E.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN11liquid_core5model5value3cow8ValueCow7as_view17h1c819dda421933e7E.exit

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN11liquid_core5model5value3cow8ValueCow7as_view17h1c819dda421933e7E.exit

_ZN11liquid_core5model5value3cow8ValueCow7as_view17h1c819dda421933e7E.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.5.0.i = phi ptr [ %i.e, %bb.b ], [ @57, %bb.c ], [ @58, %bb.d ], [ @59, %bb.e ], [ @60, %bb.f ], [ @61, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.i, %bb.f ], [ %0, %bb.a ]
  %i.j = tail call fastcc noundef zeroext i1 @_ZN11liquid_core5model5value4view8value_eq17h5cfa56ac54299a2bE(ptr noundef nonnull align 1 %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.5.0.i, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) @13)
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN96_$LT$liquid_core..model..value..values..Value$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h694d68ce1c0e56a8E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !15, !noundef !6
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0 = phi ptr [ @57, %bb.b ], [ @58, %bb.c ], [ @59, %bb.d ], [ @60, %bb.e ], [ @61, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ %i.e, %bb.e ], [ %0, %bb.a ]
  %i.f = tail call fastcc noundef zeroext i1 @_ZN11liquid_core5model5value4view8value_eq17h5cfa56ac54299a2bE(ptr noundef nonnull align 1 %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.8.0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) @13)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @"_ZN96_$LT$liquid_core..parser..text..Text$u20$as$u20$liquid_core..runtime..renderable..Renderable$GT$9render_to17h47758e2ea333665cE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %2, ptr nofree nonnull readnone align 1 captures(none) %3, ptr noalias readonly align 8 captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd2d179df342a5d87E", ptr %.sroa.46.0..sroa_idx, align 8
  store ptr @34, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.c, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !6, !nonnull !6
  %i.k = call noundef ptr %i.j(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %"_ZN117_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$liquid_core..error..result_ext..ResultLiquidReplaceExt$LT$T$GT$$GT$7replace17h8856a61f8ac574e8E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @62, ptr %i.a, align 8, !alias.scope !17072, !noalias !17073
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 16, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !17072, !noalias !17073
  %.sroa.64.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i, align 1, !alias.scope !17072, !noalias !17073
  %i.l = invoke noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %"_ZN117_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$liquid_core..error..result_ext..ResultLiquidReplaceExt$LT$T$GT$$GT$7replace28_$u7b$$u7b$closure$u7d$$u7d$17h14d758a440951a3dE.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hcacf76e9f129423eE"(ptr nonnull %i.k) #58
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.m

"_ZN117_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$liquid_core..error..result_ext..ResultLiquidReplaceExt$LT$T$GT$$GT$7replace28_$u7b$$u7b$closure$u7d$$u7d$17h14d758a440951a3dE.exit.i": ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hcacf76e9f129423eE"(ptr nonnull %i.k)
  br label %"_ZN117_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$liquid_core..error..result_ext..ResultLiquidReplaceExt$LT$T$GT$$GT$7replace17h8856a61f8ac574e8E.exit"

"_ZN117_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$liquid_core..error..result_ext..ResultLiquidReplaceExt$LT$T$GT$$GT$7replace17h8856a61f8ac574e8E.exit": ; preds = %bb.a, %"_ZN117_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$liquid_core..error..result_ext..ResultLiquidReplaceExt$LT$T$GT$$GT$7replace28_$u7b$$u7b$closure$u7d$$u7d$17h14d758a440951a3dE.exit.i"
  %.sroa.02.0.i = phi ptr [ %i.l, %"_ZN117_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$liquid_core..error..result_ext..ResultLiquidReplaceExt$LT$T$GT$$GT$7replace28_$u7b$$u7b$closure$u7d$$u7d$17h14d758a440951a3dE.exit.i" ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %.sroa.02.0.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN97_$LT$liquid_core..model..object..ser..ObjectSerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_i6417h515c409fb28eb75dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 16)) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @94, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 26, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN97_$LT$liquid_core..model..object..ser..ObjectSerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17he8b1c8eb742f2920E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 8), (32, 80)) %0, i64 noundef range(i64 0, 2) %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !11, !noalias !17084, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i", !prof !24

._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.a, align 8, !noalias !17085
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !17085
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h630dc5379a959ae0E.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i": ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !17086 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8, !noalias !17086
  store i8 1, ptr %i.b, align 8, !noalias !17086
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h630dc5379a959ae0E.exit"

"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h630dc5379a959ae0E.exit": ; preds = %._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i"
  %.pre-phi13 = phi i64 [ %.pre1.i.i, %._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i ], [ %i.g, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i" ]
  %i.i = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i ], [ %i.f, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i" ] ; 2 uses
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.a, align 8, !noalias !17085
  store i64 0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @44, i64 32, i1 false)
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.pre-phi13, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN97_$LT$liquid_core..model..object..ser..ObjectSerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_seq17ha4c1e4301831ced7E"(i64 noundef range(i64 0, 2) %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @95, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 26, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN97_$LT$liquid_core..model..object..ser..ObjectSerializer$u20$as$u20$serde_core..ser..Serializer$GT$15serialize_bytes17hab47df7a4a0b3007E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @94, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 26, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN97_$LT$liquid_core..model..object..ser..ObjectSerializer$u20$as$u20$serde_core..ser..Serializer$GT$15serialize_tuple17h11a626243a6d0580E"(i64 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @95, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 26, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN97_$LT$liquid_core..model..object..ser..ObjectSerializer$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17h5d6a51bd183f36cbE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 8), (32, 80)) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17099)
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !11, !noalias !17100, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i.i", !prof !24

._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i.i: ; preds = %bb.a
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !noalias !17101
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !17101
  br label %"_ZN97_$LT$liquid_core..model..object..ser..ObjectSerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17he8b1c8eb742f2920E.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i.i": ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !17102 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8, !noalias !17102
  store i8 1, ptr %i.b, align 8, !noalias !17102
  br label %"_ZN97_$LT$liquid_core..model..object..ser..ObjectSerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17he8b1c8eb742f2920E.exit"

"_ZN97_$LT$liquid_core..model..object..ser..ObjectSerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17he8b1c8eb742f2920E.exit": ; preds = %._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i.i"
  %.pre-phi13.i = phi i64 [ %.pre1.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i.i ], [ %i.g, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i.i" ]
  %i.i = phi i64 [ %.pre.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i.i ], [ %i.f, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i.i" ] ; 2 uses
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.a, align 8, !noalias !17101
  store i64 0, ptr %0, align 8, !alias.scope !17099
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @44, i64 32, i1 false)
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !17099
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.pre-phi13.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !17099
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN97_$LT$liquid_core..model..object..ser..ObjectSerializer$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_tuple_struct17hd3e691bb0283029bE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @95, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 26, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN97_$LT$liquid_core..model..object..ser..ObjectSerializer$u20$as$u20$serde_core..ser..Serializer$GT$23serialize_tuple_variant17hd41756721a11d651E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2, i32 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = mul i64 %6, 56                           ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %6, 164703072086692425
  br i1 %or.cond.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.a
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !17107
  %i.c = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.a, i64 noundef range(i64 1, 9) 8) #59, !noalias !17107 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i", %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @798) #57
  unreachable

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %i.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i" ]
  %.sroa.4.0.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %6, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i" ] ; 2 uses
  %i.e = icmp samesign ule i64 %6, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.e)
  store i64 %.sroa.4.0.i, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %5, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 47
  store i8 0, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN97_$LT$liquid_core..model..object..ser..ObjectSerializer$u20$as$u20$serde_core..ser..Serializer$GT$24serialize_struct_variant17h4710e7df21fc0ac2E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 64), (71, 72)) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2, i32 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !11, !noalias !17118, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i", !prof !24

._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.a, align 8, !noalias !17119
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !17119
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i": ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE() ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8, !noalias !17120
  store i8 1, ptr %i.b, align 8, !noalias !17120
  br label %bb.b

bb.b:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i", %._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i
  %.pre-phi23 = phi i64 [ %i.g, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i" ], [ %.pre1.i.i, %._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i ]
  %.pre-phi = phi i64 [ %i.f, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i" ], [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i ] ; 2 uses
  %i.i = add i64 %.pre-phi, 1
  store i64 %i.i, ptr %i.a, align 8, !noalias !17119
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @44, i64 32, i1 false)
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.pre-phi, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.pre-phi23, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %4, ptr %.sroa.617.0..sroa_idx, align 8
  %.sroa.617.sroa.4.0..sroa.617.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %5, ptr %.sroa.617.sroa.4.0..sroa.617.0..sroa_idx.sroa_idx, align 8
  %.sroa.617.sroa.6.0..sroa.617.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 71
  store i8 0, ptr %.sroa.617.sroa.6.0..sroa.617.0..sroa_idx.sroa_idx, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN97_$LT$liquid_core..model..scalar..ser..ScalarSerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h59f83211b6c9c87dE"(i64 noundef range(i64 0, 2) %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @108, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 24, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN97_$LT$liquid_core..model..scalar..ser..ScalarSerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_seq17h9bfe4712acccd7d5E"(i64 noundef range(i64 0, 2) %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @108, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 24, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN97_$LT$liquid_core..model..scalar..ser..ScalarSerializer$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h243c95ca8da0d62bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @108, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 24, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  store i64 7, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN97_$LT$liquid_core..model..scalar..ser..ScalarSerializer$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_unit17h38413d9b33294f66E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @108, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 24, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  store i64 7, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN97_$LT$liquid_core..model..scalar..ser..ScalarSerializer$u20$as$u20$serde_core..ser..Serializer$GT$15serialize_bytes17h949ecc14b8f86369E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @108, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 24, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  store i64 7, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN97_$LT$liquid_core..model..scalar..ser..ScalarSerializer$u20$as$u20$serde_core..ser..Serializer$GT$15serialize_tuple17h35a8b8eb99b508dbE"(i64 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @108, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 24, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN97_$LT$liquid_core..model..scalar..ser..ScalarSerializer$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8fb4cff5f5b3670E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @108, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 24, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN97_$LT$liquid_core..model..scalar..ser..ScalarSerializer$u20$as$u20$serde_core..ser..Serializer$GT$21serialize_unit_struct17h151c793aaa1fdfe4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @108, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 24, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  store i64 7, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN97_$LT$liquid_core..model..scalar..ser..ScalarSerializer$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_tuple_struct17h158a1b1e59e92947E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @108, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 24, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN97_$LT$liquid_core..model..scalar..ser..ScalarSerializer$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_unit_variant17h91f3ed533665bb02E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2, i32 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(none) %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp ult i64 %5, 16
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i64 %5, 0
  br i1 %i.c, label %bb.c, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", !prof !14

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i": ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !17132
  %i.d = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !17132 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i"

bb.c:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %bb.b
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #57, !noalias !17133
  unreachable

"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i"
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull readonly align 1 %4, i64 %5, i1 false), !noalias !17134
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit"

bb.d:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !17135
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %4, i64 %5, i1 false), !noalias !17134
  %.0..0..0..sroa.0.1.copyload = load i56, ptr %i.a, align 8, !noalias !17136
  %.sroa.0.1.insert.ext = zext i56 %.0..0..0..sroa.0.1.copyload to i64
  %.sroa.0.1.insert.shift = shl nuw i64 %.sroa.0.1.insert.ext, 8
  %.sroa.0.1.insert.insert = or disjoint i64 %.sroa.0.1.insert.shift, %5
  %i.f = inttoptr i64 %.sroa.0.1.insert.insert to ptr
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !17136
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit": ; preds = %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i", %bb.d
  %.sroa.0.0 = phi ptr [ %i.f, %bb.d ], [ %i.d, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i" ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..sroa.6.1.copyload, %bb.d ], [ %5, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i" ]
  %.sink.i = phi i8 [ 1, %bb.d ], [ -1, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 1, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.6.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sink.i, ptr %.sroa.46.sroa.6.0..sroa.46.0..sroa_idx.sroa_idx, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN97_$LT$liquid_core..model..scalar..ser..ScalarSerializer$u20$as$u20$serde_core..ser..Serializer$GT$23serialize_tuple_variant17hdd8afb6505629fb9E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, i32 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @108, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 24, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN97_$LT$liquid_core..model..scalar..ser..ScalarSerializer$u20$as$u20$serde_core..ser..Serializer$GT$24serialize_struct_variant17h048c74c8956a9bb3E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, i32 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @108, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 24, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN97_$LT$liquid_core..model..value..view..ValueViewCmp$u20$as$u20$core..cmp..PartialEq$LT$f64$GT$$GT$2eq17h7610393b7f789c3dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !8, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !9, !noundef !6
  %i.d = tail call fastcc noundef zeroext i1 @_ZN11liquid_core5model5value4view8value_eq17h5cfa56ac54299a2bE(ptr noundef nonnull align 1 %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.c, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) @1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN97_$LT$liquid_core..model..value..view..ValueViewCmp$u20$as$u20$core..cmp..PartialEq$LT$i64$GT$$GT$2eq17h383213465e238416E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !8, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !9, !noundef !6
  %i.d = tail call fastcc noundef zeroext i1 @_ZN11liquid_core5model5value4view8value_eq17h5cfa56ac54299a2bE(ptr noundef nonnull align 1 %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.c, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) @0)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN97_$LT$liquid_core..model..value..view..ValueViewCmp$u20$as$u20$core..cmp..PartialEq$LT$str$GT$$GT$2eq17h06a4dc030d653c2cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !8, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !9, !noundef !6
  %i.e = invoke fastcc noundef zeroext i1 @_ZN11liquid_core5model5value4view8value_eq17h5cfa56ac54299a2bE(ptr noundef nonnull align 1 %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.d, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) @5)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !17157)
  call void @llvm.experimental.noalias.scope.decl(metadata !17158)
  %i.g = load i64, ptr %i.a, align 8, !range !18, !alias.scope !17159, !noundef !6
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !17160)
  call void @llvm.experimental.noalias.scope.decl(metadata !17161)
  call void @llvm.experimental.noalias.scope.decl(metadata !17162)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !17163, !noundef !6
  %i.k = icmp eq i8 %i.j, -1
  br i1 %i.k, label %bb.d, label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit"

bb.d:                                             ; preds = %bb.c
  %.val1.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !17163, !noundef !6 ; 2 uses
  %i.l = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.l, label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.d
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !17163, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i, i64 noundef 1) #59, !noalias !17163
  br label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit"

bb.e:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !17164)
  call void @llvm.experimental.noalias.scope.decl(metadata !17165)
  %i.m = load i64, ptr %i.a, align 8, !range !18, !alias.scope !17166, !noundef !6
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit7", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !17167)
  call void @llvm.experimental.noalias.scope.decl(metadata !17168)
  call void @llvm.experimental.noalias.scope.decl(metadata !17169)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !17170, !noundef !6
  %i.q = icmp eq i8 %i.p, -1
  br i1 %i.q, label %bb.g, label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit7"

bb.g:                                             ; preds = %bb.f
  %.val1.i.i.i.i.i4 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !17170, !noundef !6 ; 2 uses
  %i.r = icmp eq i64 %.val1.i.i.i.i.i4, 0
  br i1 %i.r, label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit7", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i5"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i5": ; preds = %bb.g
  %.val.i.i.i.i.i6 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !17170, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i6, i64 noundef %.val1.i.i.i.i.i4, i64 noundef 1) #59, !noalias !17170
  br label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit7"

"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit7": ; preds = %bb.e, %bb.f, %bb.g, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i5"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e

"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN97_$LT$pest..iterators..pairs..Pairs$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5dd2ff5d2b077a7eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17174)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !17174, !noalias !17175, !noundef !6 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !17174, !noalias !17175, !noundef !6
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !alias.scope !17174, !noalias !17175, !nonnull !6, !noundef !6 ; 5 uses
  %.val.i.i = load i64, ptr %i.g, align 8, !noalias !17176, !noundef !6 ; 2 uses
  %i.h = icmp ne i64 %.val.i.i, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add i64 %.val.i.i, 1                     ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !noalias !17176
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17hdd5d1fa8c4fdbfb8E.exit.i, !prof !12

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17hdd5d1fa8c4fdbfb8E.exit.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !17174, !noalias !17175, !nonnull !6, !align !8, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !17174, !noalias !17175, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !17174, !noalias !17175, !nonnull !6, !noundef !6 ; 3 uses
  %.val.i4.i = load i64, ptr %i.p, align 8, !noalias !17176, !noundef !6 ; 2 uses
  %i.q = icmp ne i64 %.val.i4.i, 0
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add i64 %.val.i4.i, 1                    ; 2 uses
  store i64 %i.r, ptr %i.p, align 8, !noalias !17176
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %"_ZN4pest9iterators5pairs14Pairs$LT$R$GT$4peek17h740c1a3da124b8c9E.exit", !prof !12

bb.d:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17hdd5d1fa8c4fdbfb8E.exit.i
  tail call void @llvm.trap()
  unreachable

"_ZN4pest9iterators5pairs14Pairs$LT$R$GT$4peek17h740c1a3da124b8c9E.exit": ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17hdd5d1fa8c4fdbfb8E.exit.i
  store ptr %i.g, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.n, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.p, ptr %.sroa.613.0..sroa_idx, align 8
  %.sroa.714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.c, ptr %.sroa.714.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.u = load i64, ptr %i.t, align 8, !noundef !6 ; 2 uses
  %i.v = icmp ult i64 %i.c, %i.u
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %"_ZN4pest9iterators5pairs14Pairs$LT$R$GT$4peek17h740c1a3da124b8c9E.exit"
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !6, !noundef !6
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %i.c ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !range !11, !noundef !6
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.g, label %bb.k, !prof !12

bb.f:                                             ; preds = %"_ZN4pest9iterators5pairs14Pairs$LT$R$GT$4peek17h740c1a3da124b8c9E.exit"
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.c, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @541) #57
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @236, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @542) #57
          to label %.noexc2 unwind label %bb.j

.noexc2:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE"(ptr noalias noundef align 8 dereferenceable(40) %i.a) #58
  resume { ptr, i32 } %i.ab

bb.k:                                             ; preds = %bb.e
end_hunk_10
