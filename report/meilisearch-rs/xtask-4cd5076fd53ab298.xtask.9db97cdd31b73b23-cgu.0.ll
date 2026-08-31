Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-4cd5076fd53ab298.xtask.9db97cdd31b73b23-cgu.0?download=true
inline.NumInlined: 15191
inline.NumDeleted: 6593
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN7reqwest10async_impl6client6Client7request17h388fa87f11cf124eE:bb.a

bb.c:                                             ; preds = %bb.b
  %switch.i.i.i = icmp samesign ult i8 %.sroa.0.0.copyload1, 10
  %i.g = icmp eq i64 %.sroa.68.0.copyload, 0
  %or.cond = select i1 %switch.i.i.i, i1 true, i1 %i.g
  br i1 %or.cond, label %"_ZN4core3ptr123drop_in_place$LT$reqwest..async_impl..client..Client..request$LT$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc044ca5b6c03599aE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.55.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.55.0.copyload, i64 noundef %.sroa.68.0.copyload, i64 noundef 1) #47, !noalias !42664
  br label %"_ZN4core3ptr123drop_in_place$LT$reqwest..async_impl..client..Client..request$LT$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc044ca5b6c03599aE.exit"

bb.d:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.17, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.19, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx3, i64 7, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8, i8 0, i64 16, i1 false)
  br label %"_ZN4core3ptr123drop_in_place$LT$reqwest..async_impl..client..Client..request$LT$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc044ca5b6c03599aE.exit"

"_ZN4core3ptr123drop_in_place$LT$reqwest..async_impl..client..Client..request$LT$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc044ca5b6c03599aE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.c, %bb.d
  %.sroa.6.sroa.21.0 = phi i64 [ %.sroa.68.0.copyload, %bb.d ], [ undef, %bb.c ], [ undef, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i" ]
  %.sroa.6.sroa.20.0 = phi ptr [ %.sroa.55.0.copyload, %bb.d ], [ undef, %bb.c ], [ undef, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i" ]
  %.sroa.6.sroa.18.0 = phi i8 [ %.sroa.0.0.copyload1, %bb.d ], [ undef, %bb.c ], [ undef, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i" ]
  %.sroa.6.sroa.16.0 = phi ptr [ %i.f, %bb.d ], [ undef, %bb.c ], [ undef, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i" ]
  %.sroa.5.0 = phi ptr [ undef, %bb.d ], [ %i.f, %bb.c ], [ %i.f, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i" ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 2, %bb.c ], [ 2, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.h = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr123drop_in_place$LT$reqwest..async_impl..client..Client..request$LT$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc044ca5b6c03599aE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.0.0, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx4.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8, i64 16, i1 false)
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.12.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 0, ptr %.sroa.6.sroa.12.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.13.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i16 0, ptr %.sroa.6.sroa.13.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.15.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %i.c, ptr %.sroa.6.sroa.15.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.16.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr %.sroa.6.sroa.16.0, ptr %.sroa.6.sroa.16.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.17.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.17.0..sroa.6.0..sroa_idx4.sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.17, i64 72, i1 false)
  %.sroa.6.sroa.18.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store i8 %.sroa.6.sroa.18.0, ptr %.sroa.6.sroa.18.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.19.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.19.0..sroa.6.0..sroa_idx4.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.19, i64 7, i1 false)
  %.sroa.6.sroa.20.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store ptr %.sroa.6.sroa.20.0, ptr %.sroa.6.sroa.20.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.21.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i64 %.sroa.6.sroa.21.0, ptr %.sroa.6.sroa.21.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.22.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store ptr null, ptr %.sroa.6.sroa.22.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  %.sroa.6.sroa.23.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store i8 2, ptr %.sroa.6.sroa.23.0..sroa.6.0..sroa_idx4.sroa_idx, align 8
  call void @_ZN7reqwest10async_impl7request14RequestBuilder3new17hfe554bcbd3c529d2E(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %0, ptr noundef nonnull %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(264) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.19)
  ret void

bb.f:                                             ; preds = %"_ZN4core3ptr123drop_in_place$LT$reqwest..async_impl..client..Client..request$LT$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc044ca5b6c03599aE.exit"
  call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17h30abae5580368b2aE"(ptr noalias noundef align 8 dereferenceable(24) %1) #55
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7reqwest10async_impl7request14RequestBuilder4json17h9ea771070548a0beE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(272) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(272) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [32 x i8], align 8            ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = load i64, ptr %1, align 8, !range !479, !noundef !8
  %i.m = icmp eq i64 %i.l, 2
  br i1 %i.m, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !42671
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !42675
  %i.n = tail call noundef dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, 9) 1) #47, !noalias !42675 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i"

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 128, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #54
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i": ; preds = %bb.b
  store i64 128, ptr %i.c, align 8, !noalias !42671
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr %i.n, ptr %i.p, align 8, !noalias !42671
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !noalias !42671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42680
  store ptr %i.c, ptr %i.b, align 8, !noalias !42680
  %i.r = invoke fastcc noalias noundef align 8 ptr @"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17h5d116488b970e604E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %2, ptr noalias noundef align 8 dereferenceable(8) %i.b)
          to label %bb.f unwind label %bb.d, !noalias !42684 ; 2 uses

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i"
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i = load i64, ptr %i.c, align 8, !noalias !42671 ; 2 uses
  %i.t = icmp eq i64 %.val4.i, 0
  br i1 %i.t, label %.thread43, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val5.i = load ptr, ptr %i.p, align 8, !noalias !42671, !nonnull !8, !noundef !8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %.val4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !42671
  br label %.thread43

bb.f:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42680
  %.not.i = icmp eq ptr %i.r, null
  %.sroa.0.0.copyload33 = load i64, ptr %i.c, align 8, !noalias !42685 ; 6 uses
  br i1 %.not.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp eq i64 %.sroa.0.0.copyload33, 0
  br i1 %i.u, label %.thread49, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val3.i = load ptr, ptr %i.p, align 8, !noalias !42671, !nonnull !8, !noundef !8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.sroa.0.0.copyload33, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !42671
  br label %.thread49

bb.i:                                             ; preds = %bb.c, %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.thread43

.thread49:                                        ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !42671
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %.sroa.6.0.copyload35 = load ptr, ptr %i.p, align 8, !noalias !42685 ; 4 uses
  %.sroa.8.0.copyload37 = load i64, ptr %i.q, align 8, !noalias !42685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !42671
  %i.w = icmp eq i64 %.sroa.0.0.copyload33, -9223372036854775808
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread49, %bb.j
  %.sroa.6.053 = phi ptr [ %i.r, %.thread49 ], [ %.sroa.6.0.copyload35, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.053) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i16 0, ptr %i.g, align 8
  %i.x = invoke fastcc noundef nonnull align 8 ptr @_ZN7reqwest5error5Error3new17h7a33dd0cec3b22acE(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.g, ptr noalias noundef align 8 %.sroa.6.053)
          to label %bb.ap unwind label %bb.i      ; 2 uses

bb.l:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @1257, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !42686)
  call void @llvm.experimental.noalias.scope.decl(metadata !42689)
  call void @llvm.experimental.noalias.scope.decl(metadata !42691)
  call void @llvm.experimental.noalias.scope.decl(metadata !42694)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !42697, !noalias !42698, !noundef !8 ; 4 uses
  %i.ab = icmp ult i64 %i.aa, 88686269585142076
  call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp eq i64 %i.aa, 0
  br i1 %i.ac, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17hd72bec0a7b061d3aE.exit.thread95", label %bb.m

"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17hd72bec0a7b061d3aE.exit.thread95": ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.z

bb.m:                                             ; preds = %bb.l
  %i.ad = call fastcc noundef i16 @_ZN4http6header3map15hash_elem_using17hfa00c2547dd9d71bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d), !noalias !42701 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.af = load i16, ptr %i.ae, align 8, !alias.scope !42697, !noalias !42698, !noundef !8 ; 3 uses
  %i.ag = and i16 %i.af, %i.ad
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !42697, !noalias !42698, !noundef !8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !42697, !noalias !42698, !nonnull !8, !align !20674
  %i.am = zext i16 %i.af to i64
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !42697, !noalias !42698, !nonnull !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ar = load ptr, ptr %i.d, align 8, !alias.scope !42689, !noalias !42686 ; 4 uses
  %i.as = icmp eq ptr %i.ar, null                 ; 4 uses
  %not..i.i.i.i.i = xor i1 %i.as, true
  %i.at = load i8, ptr %i.ap, align 8, !range !20652, !alias.scope !42689, !noalias !42686
  %i.au = load i64, ptr %i.aq, align 8, !alias.scope !42689, !noalias !42686 ; 4 uses
  %i.av = load ptr, ptr %i.ap, align 8, !alias.scope !42689, !noalias !42686 ; 3 uses
  %.not = icmp eq i64 %i.aj, 0
  br label %.outer

.outer:                                           ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i", %bb.m
  %.sroa.05.0.i.i.i.ph = phi i64 [ %i.bi, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i" ], [ 0, %bb.m ] ; 2 uses
  %.sroa.0.0.i.i.i.ph = phi i64 [ %i.bj, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i" ], [ %i.ah, %bb.m ] ; 2 uses
  %i.aw = icmp ult i64 %.sroa.0.0.i.i.i.ph, %i.aj ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.aw, %.not.not
  %.sroa.0.0.i.i.i.ph.mux = select i1 %i.aw, i64 %.sroa.0.0.i.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.sroa.0.0.i.i.i.ph.mux ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !noalias !42702, !noundef !8 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ay, -1
  br i1 %.not.i.i.i, label %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h54bdff71bbc06893E.exit.i", label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.az = zext i16 %i.ay to i64                   ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bb = load i16, ptr %i.ba, align 2, !noalias !42702, !noundef !8 ; 2 uses
  %i.bc = and i16 %i.bb, %i.af
  %i.bd = zext i16 %i.bc to i64
  %i.be = sub i64 %.sroa.0.0.i.i.i.ph.mux, %i.bd
  %i.bf = and i64 %i.be, %i.am
  %i.bg = icmp samesign ugt i64 %.sroa.05.0.i.i.i.ph, %i.bf
  br i1 %i.bg, label %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h54bdff71bbc06893E.exit.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = icmp eq i16 %i.bb, %i.ad
  br i1 %i.bh, label %bb.p, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i"

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.i.i.i", %.split.i.i.i, %bb.s, %bb.q, %bb.o
  %i.bi = add nuw nsw i64 %.sroa.05.0.i.i.i.ph, 1
  %i.bj = add i64 %.sroa.0.0.i.i.i.ph.mux, 1
  br label %.outer

bb.p:                                             ; preds = %bb.o
  %i.bk = icmp samesign ugt i64 %i.aa, %i.az
  br i1 %i.bk, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw [104 x i8], ptr %i.ao, i64 %i.az ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !42702, !noundef !8
  %i.bo = icmp ne ptr %i.bn, null                 ; 2 uses
  %i.bp = xor i1 %i.as, %i.bo
  br i1 %i.bp, label %bb.r, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i"

bb.r:                                             ; preds = %bb.q
  br i1 %i.bo, label %bb.s, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.i.i.i"

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 %not..i.i.i.i.i)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 80
  %i.br = load i64, ptr %i.bq, align 8, !noalias !42702, !noundef !8
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.br, %i.au
  br i1 %.not.i.i.i.i.i.i.i, label %.split.i.i.i, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i"

.split.i.i.i:                                     ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !42702, !noundef !8
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.bt, ptr %i.av, i64 %i.au), !noalias !42702
  %i.bu = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.bu, label %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h54bdff71bbc06893E.exit.i", label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i"

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.i.i.i": ; preds = %bb.r
  call void @llvm.assume(i1 %i.as)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bw = load i8, ptr %i.bv, align 8, !range !20652, !noalias !42702, !noundef !8
  %i.bx = icmp eq i8 %i.bw, %i.at
  br i1 %i.bx, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17hd72bec0a7b061d3aE.exit.thread", label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i"

"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17hd72bec0a7b061d3aE.exit.thread": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ae

bb.t:                                             ; preds = %bb.p
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.az, i64 noundef %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @574) #54
          to label %.noexc.i unwind label %bb.u, !noalias !42703

.noexc.i:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.as, label %.thread73, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !42704, !nonnull !8, !noundef !8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke void %i.ca(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef %i.av, i64 noundef %i.au)
          to label %.thread73 unwind label %bb.x, !noalias !42686, !inline_history !19544

"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h54bdff71bbc06893E.exit.i": ; preds = %.split.i.i.i, %bb.n, %.loopexit
  %3 = phi i1 [ false, %.loopexit ], [ true, %.split.i.i.i ], [ false, %bb.n ]
  %i.cc = icmp eq ptr %i.ar, null
  br i1 %i.cc, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17hd72bec0a7b061d3aE.exit", label %bb.w

bb.w:                                             ; preds = %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h54bdff71bbc06893E.exit.i"
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !42717, !nonnull !8, !noundef !8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke void %i.ce(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef %i.av, i64 noundef %i.au)
          to label %"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17hd72bec0a7b061d3aE.exit" unwind label %.thread79, !inline_history !42730

bb.x:                                             ; preds = %bb.v
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !42686
  unreachable

.thread59:                                        ; preds = %bb.ab, %bb.z
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.thread73

.thread79:                                        ; preds = %bb.ad, %bb.w
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread73

bb.y:                                             ; preds = %bb.ae
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread43

"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17hd72bec0a7b061d3aE.exit": ; preds = %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h54bdff71bbc06893E.exit.i", %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %3, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17hd72bec0a7b061d3aE.exit.thread95", %"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17hd72bec0a7b061d3aE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) @1257, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @595, ptr %i.i, align 8, !alias.scope !42731
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @1107, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !42731
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !42731
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !42731
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i8 0, ptr %i.ci, align 8, !alias.scope !42731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_insert217h1a0b2ca5b6840d52E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 dereferenceable(96) %i.y, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.aa unwind label %.thread59

bb.aa:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !42734)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ck = load i8, ptr %i.cj, align 8, !range !11934, !alias.scope !42737, !noalias !42734, !noundef !8
  %i.cl = icmp eq i8 %i.ck, 3
  br i1 %i.cl, label %bb.ab, label %bb.ac, !prof !14

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @293, i64 noundef 23, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @554, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1724) #54
          to label %.noexc23 unwind label %.thread59

.noexc23:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.f, i64 40, i1 false), !alias.scope !42739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !42740)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.cn = load i8, ptr %i.cm, align 8, !range !483, !alias.scope !42740, !noundef !8
  %i.co = icmp eq i8 %i.cn, 2
  br i1 %i.co, label %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$http..header..value..HeaderValue$GT$$GT$17hc8406ce736f21ecaE.exit", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !42743)
  call void @llvm.experimental.noalias.scope.decl(metadata !42746)
  call void @llvm.experimental.noalias.scope.decl(metadata !42749)
  %i.cp = load ptr, ptr %i.k, align 8, !alias.scope !42752, !nonnull !8, !align !461, !noundef !8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !42752, !nonnull !8, !noundef !8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !42752, !noundef !8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !42752, !noundef !8
  invoke void %i.cr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef %i.cu, i64 noundef %i.cw)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$http..header..value..HeaderValue$GT$$GT$17hc8406ce736f21ecaE.exit" unwind label %.thread79, !inline_history !16735

"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$http..header..value..HeaderValue$GT$$GT$17hc8406ce736f21ecaE.exit": ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

bb.ae:                                            ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17hd72bec0a7b061d3aE.exit.thread", %"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17hd72bec0a7b061d3aE.exit", %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$http..header..value..HeaderValue$GT$$GT$17hc8406ce736f21ecaE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.0.0.copyload33, ptr %i.h, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.6.0.copyload35, ptr %.sroa.539.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.8.0.copyload37, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @"_ZN92_$LT$bytes..bytes..Bytes$u20$as$u20$core..convert..From$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$4from17h105911369ca93d58E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.ag unwind label %bb.y

bb.af:                                            ; preds = %bb.as, %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17hec39b520569f024bE.exit"
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !42753)
  %i.cy = load i64, ptr %1, align 8, !range !491, !alias.scope !42753, !noundef !8
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %.thread41, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42756)
  call void @llvm.experimental.noalias.scope.decl(metadata !42759)
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !42762, !noundef !8 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i26, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !42763)
  call void @llvm.experimental.noalias.scope.decl(metadata !42766)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !42769, !nonnull !8, !noundef !8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !42769, !noundef !8
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !42769, !noundef !8
  invoke void %i.dd(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.dg, i64 noundef %i.di)
          to label %.thread41 unwind label %bb.an, !inline_history !14091

bb.aj:                                            ; preds = %bb.ah
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.dj, align 8, !alias.scope !42762 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load ptr, ptr %i.dk, align 8, !alias.scope !42762, !nonnull !8, !align !461, !noundef !8 ; 5 uses
  %i.dl = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !8, !noalias !42762 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.dl(ptr noundef nonnull %.val.i.i.i)
          to label %bb.al unwind label %bb.am, !noalias !42762

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !range !33, !invariant.load !8, !noalias !42762 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !range !5277, !invariant.load !8, !noalias !42762 ; 2 uses
  %i.dq = icmp ult i64 %i.dp, -9223372036854775807
  call void @llvm.assume(i1 %i.dq)
  %i.dr = icmp eq i64 %i.dn, 0
  br i1 %i.dr, label %.thread41, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.dn, i64 noundef range(i64 1, -9223372036854775807) %i.dp) #47, !noalias !42762
  br label %.thread41

bb.am:                                            ; preds = %bb.ak
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !range !33, !invariant.load !8, !noalias !42762 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !range !5277, !invariant.load !8, !noalias !42762 ; 2 uses
  %i.dx = icmp ult i64 %i.dw, -9223372036854775807
  call void @llvm.assume(i1 %i.dx)
  %i.dy = icmp eq i64 %i.du, 0
  br i1 %i.dy, label %.thread67, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i": ; preds = %bb.am
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.du, i64 noundef range(i64 1, -9223372036854775807) %i.dw) #47, !noalias !42762
  br label %.thread67

bb.an:                                            ; preds = %bb.ai
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.thread67

.thread67:                                        ; preds = %bb.an, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i", %bb.am
  %eh.lpad-body29 = phi { ptr, i32 } [ %i.dz, %bb.an ], [ %i.ds, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i" ], [ %i.ds, %bb.am ]
  store i64 1, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.da, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  br label %.thread43

.thread41:                                        ; preds = %bb.ai, %bb.ag, %bb.al, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"
  store i64 1, ptr %1, align 8
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %.thread

.thread73:                                        ; preds = %bb.u, %bb.v, %.thread79, %.thread59
  %.pn66 = phi { ptr, i32 } [ %i.ch, %.thread59 ], [ %lpad.thr_comm, %.thread79 ], [ %i.by, %bb.v ], [ %i.by, %bb.u ] ; 2 uses
  %i.ea = icmp eq i64 %.sroa.0.0.copyload33, 0
  br i1 %i.ea, label %.thread43, label %bb.ao

bb.ao:                                            ; preds = %.thread73
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload35) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload35, i64 noundef %.sroa.0.0.copyload33, i64 noundef range(i64 1, -9223372036854775807) 1) #47
  br label %.thread43

bb.ap:                                            ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @"_ZN4core3ptr110drop_in_place$LT$core..result..Result$LT$reqwest..async_impl..request..Request$C$reqwest..error..Error$GT$$GT$17hd547304c3607ec1fE"(ptr noalias noundef align 8 dereferenceable(264) %1)
          to label %bb.ar unwind label %bb.aq

.thread:                                          ; preds = %bb.a, %.thread41, %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(272) %1, i64 272, i1 false)
  ret void

bb.aq:                                            ; preds = %bb.ap
  %i.eb = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %1, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.x, ptr %.sroa.56.0..sroa_idx, align 8
  br label %.thread43

bb.ar:                                            ; preds = %bb.ap
end_hunk_0
