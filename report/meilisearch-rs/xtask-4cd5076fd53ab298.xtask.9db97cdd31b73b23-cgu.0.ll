Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-4cd5076fd53ab298.xtask.9db97cdd31b73b23-cgu.0?download=true
inline.NumInlined: 15192
inline.NumDeleted: 6593
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 95
begin_hunk_0_@"_ZN7reqwest10async_impl8response8Response4text28_$u7b$$u7b$closure$u7d$$u7d$17h120bc7fa8fbc2f53E":bb.a
  %i.i = load i64, ptr %i.b, align 8, !range !36, !noundef !24
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.i, label %bb.j

common.ret:                                       ; preds = %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17hf2dd529688bb0b67E.exit12", %bb.i
  %storemerge = phi i8 [ 1, %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17hf2dd529688bb0b67E.exit12" ], [ 3, %bb.i ]
  store i8 %storemerge, ptr %i.d, align 8
  ret void

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %common.ret

bb.j:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.019.0.copyload = load ptr, ptr %i.k, align 8 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.520, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.520.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.m = load i8, ptr %i.l, align 8, !range !90, !noundef !24
  switch i8 %i.m, label %"_ZN4core3ptr96drop_in_place$LT$reqwest..async_impl..response..Response..bytes..$u7b$$u7b$closure$u7d$$u7d$$GT$17h877230fc202ce1bfE.exit" [
    i8 0, label %bb.k
    i8 3, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$reqwest..async_impl..response..Response$GT$17ha00f2e93c0236768E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %i.g)
          to label %"_ZN4core3ptr96drop_in_place$LT$reqwest..async_impl..response..Response..bytes..$u7b$$u7b$closure$u7d$$u7d$$GT$17h877230fc202ce1bfE.exit" unwind label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 408
  invoke fastcc void @"_ZN4core3ptr247drop_in_place$LT$http_body_util..combinators..collect..Collect$LT$http_body_util..combinators..box_body..BoxBody$LT$bytes..bytes..Bytes$C$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hf43c61a585bacc14E"(ptr noalias noundef readonly align 8 dereferenceable(144) %i.n)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 400
  %.val2.i = load ptr, ptr %i.p, align 8, !nonnull !24, !noundef !24
  tail call fastcc void @"_ZN4core3ptr54drop_in_place$LT$alloc..boxed..Box$LT$url..Url$GT$$GT$17h9f399d07d71b2abdE"(ptr nonnull %.val2.i) #55
  br label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17hf2dd529688bb0b67E.exit"

bb.n:                                             ; preds = %bb.l
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 400
  %.val.i = load ptr, ptr %i.q, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %.val.i.i = load i64, ptr %.val.i, align 8, !alias.scope !41056 ; 2 uses
  %i.r = icmp eq i64 %.val.i.i, 0
  br i1 %i.r, label %"_ZN4core3ptr54drop_in_place$LT$alloc..boxed..Box$LT$url..Url$GT$$GT$17h9f399d07d71b2abdE.exit.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.s = getelementptr i8, ptr %.val.i, i64 8
  %.val1.i.i = load ptr, ptr %i.s, align 8, !nonnull !24, !noundef !24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !41057
  br label %"_ZN4core3ptr54drop_in_place$LT$alloc..boxed..Box$LT$url..Url$GT$$GT$17h9f399d07d71b2abdE.exit.i"

"_ZN4core3ptr54drop_in_place$LT$alloc..boxed..Box$LT$url..Url$GT$$GT$17h9f399d07d71b2abdE.exit.i": ; preds = %bb.o, %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 88, i64 noundef 8) #47
  br label %"_ZN4core3ptr96drop_in_place$LT$reqwest..async_impl..response..Response..bytes..$u7b$$u7b$closure$u7d$$u7d$$GT$17h877230fc202ce1bfE.exit"

"_ZN4core3ptr96drop_in_place$LT$reqwest..async_impl..response..Response..bytes..$u7b$$u7b$closure$u7d$$u7d$$GT$17h877230fc202ce1bfE.exit": ; preds = %"_ZN4core3ptr54drop_in_place$LT$alloc..boxed..Box$LT$url..Url$GT$$GT$17h9f399d07d71b2abdE.exit.i", %bb.j, %bb.k
  %i.t = icmp eq ptr %.sroa.019.0.copyload, null
  br i1 %i.t, label %bb.w, label %bb.p

bb.p:                                             ; preds = %"_ZN4core3ptr96drop_in_place$LT$reqwest..async_impl..response..Response..bytes..$u7b$$u7b$closure$u7d$$u7d$$GT$17h877230fc202ce1bfE.exit"
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.522.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.520, i64 16, i1 false)
  store ptr %.sroa.019.0.copyload, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %.sroa.3.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.val8 = load i64, ptr %.sroa.522.0..sroa_idx, align 8, !noundef !24 ; 2 uses
  invoke void @_ZN5alloc6string6String15from_utf8_lossy17h21794fcc38759ff3E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.3.0.copyload, i64 noundef %.val8)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !41058)
  call void @llvm.experimental.noalias.scope.decl(metadata !41059)
  %i.u = load i64, ptr %i.a, align 8, !range !47, !alias.scope !41059, !noundef !24 ; 2 uses
  %.not.i = icmp eq i64 %i.u, -9223372036854775808
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !41060 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !41060 ; 7 uses
  br i1 %.not.i, label %bb.r, label %"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17h633b0ca7793d8942E.exit"

bb.r:                                             ; preds = %bb.q
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.s, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !43

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.r
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !41061
  %i.ab = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.y, i64 noundef range(i64 1, 9) 1) #47, !noalias !41061 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.s, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i"

bb.s:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %bb.r
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ], [ 0, %bb.r ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #54
          to label %.noexc10 unwind label %bb.t

.noexc10:                                         ; preds = %bb.s
  unreachable

"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.ab, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %i.w, i64 %i.y, i1 false), !noalias !41062
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !41063
  %.pre34 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !41063
  %.pre35 = load i64, ptr %.sroa.522.0..sroa_idx, align 8, !alias.scope !41063
  br label %"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17h633b0ca7793d8942E.exit"

bb.t:                                             ; preds = %bb.p, %bb.s
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !41064)
  call void @llvm.experimental.noalias.scope.decl(metadata !41065)
  %i.ae = load ptr, ptr %i.c, align 8, !alias.scope !41066, !nonnull !24, !align !31, !noundef !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !41066, !nonnull !24, !noundef !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ai = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !41066, !noundef !24
  %i.aj = load i64, ptr %.sroa.522.0..sroa_idx, align 8, !alias.scope !41066, !noundef !24
  invoke void %i.ag(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef %i.ai, i64 noundef %i.aj)
          to label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17hf2dd529688bb0b67E.exit" unwind label %bb.v, !inline_history !8

"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17h633b0ca7793d8942E.exit": ; preds = %bb.q, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i"
  %i.ak = phi i64 [ %.pre35, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i" ], [ %.val8, %bb.q ]
  %i.al = phi ptr [ %.pre34, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i" ], [ %.sroa.3.0.copyload, %bb.q ]
  %i.am = phi ptr [ %.pre, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i" ], [ %.sroa.019.0.copyload, %bb.q ]
  %.sroa.625.0 = phi ptr [ %.sroa.10.0.i.i.i.i, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i" ], [ %i.w, %bb.q ]
  %.sroa.023.0 = phi i64 [ %i.y, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i" ], [ %i.u, %bb.q ]
  call void @llvm.experimental.noalias.scope.decl(metadata !41067)
  call void @llvm.experimental.noalias.scope.decl(metadata !41068)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !41063, !nonnull !24, !noundef !24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  invoke void %i.ao(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef %i.al, i64 noundef %i.ak)
          to label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17hf2dd529688bb0b67E.exit12" unwind label %bb.u, !inline_history !8

"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17hf2dd529688bb0b67E.exit": ; preds = %bb.g, %bb.m, %bb.t, %bb.u
  %.pn5.pn = phi { ptr, i32 } [ %i.ad, %bb.t ], [ %i.aq, %bb.u ], [ %i.o, %bb.m ], [ %i.h, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 2, ptr %i.d, align 8
  resume { ptr, i32 } %.pn5.pn

bb.u:                                             ; preds = %bb.k, %"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17h633b0ca7793d8942E.exit"
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17hf2dd529688bb0b67E.exit"

"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17hf2dd529688bb0b67E.exit12": ; preds = %"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17h633b0ca7793d8942E.exit", %bb.w
  %.sroa.030.0 = phi i64 [ -9223372036854775808, %bb.w ], [ %.sroa.023.0, %"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17h633b0ca7793d8942E.exit" ]
  %.sroa.331.0 = phi ptr [ %.sroa.3.0.copyload, %bb.w ], [ %.sroa.625.0, %"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17h633b0ca7793d8942E.exit" ]
  %.sroa.532.0 = phi i64 [ undef, %bb.w ], [ %i.y, %"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17h633b0ca7793d8942E.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %.sroa.030.0, ptr %0, align 8
  %.sroa.331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.331.0, ptr %.sroa.331.0..sroa_idx, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.532.0, ptr %.sroa.532.0..sroa_idx, align 8
  br label %common.ret

bb.v:                                             ; preds = %bb.t, %bb.g
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.w:                                             ; preds = %"_ZN4core3ptr96drop_in_place$LT$reqwest..async_impl..response..Response..bytes..$u7b$$u7b$closure$u7d$$u7d$$GT$17h877230fc202ce1bfE.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  br label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17hf2dd529688bb0b67E.exit12"
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN7reqwest10async_impl8response8Response5bytes28_$u7b$$u7b$closure$u7d$$u7d$17hba0b216e3d972376E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [144 x i8], align 8               ; 8 uses
  %i.c = alloca [128 x i8], align 8               ; 12 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 11 uses
  %i.f = alloca [72 x i8], align 8                ; 11 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 12 uses
  %i.m = alloca [40 x i8], align 8                ; 10 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [72 x i8], align 8                ; 23 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [104 x i8], align 8               ; 14 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.655 = alloca [72 x i8], align 8          ; 8 uses
  %i.s = alloca [96 x i8], align 8                ; 10 uses
  %i.t = alloca [96 x i8], align 8                ; 11 uses
  %.sroa.748 = alloca [104 x i8], align 8         ; 2 uses
  %.sroa.1245 = alloca [104 x i8], align 8        ; 6 uses
  %i.u = alloca [128 x i8], align 8               ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 3 uses
  %i.w = load i8, ptr %i.v, align 8, !range !90, !noundef !24
  switch i8 %i.w, label %default.unreachable405 [
    i8 0, label %bb.b
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.e
  ]

default.unreachable405:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.x, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41289)
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !41289, !nonnull !24, !align !42, !noundef !24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !41289, !nonnull !24, !align !31, !noundef !24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41290)
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..header..map..HeaderMap$GT$17he04bf0689d578762E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(128) %i.u)
          to label %"_ZN4core3ptr42drop_in_place$LT$http..response..Parts$GT$17h4d85b9bfdb2132beE.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %.val1.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !41291, !align !31, !noundef !24
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..extensions..Extensions$GT$17hae5432ff86390e45E"(ptr %.val1.i.i) #55
          to label %.body unwind label %bb.d, !noalias !41291

bb.d:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !41291
  unreachable

"_ZN4core3ptr42drop_in_place$LT$http..response..Parts$GT$17h4d85b9bfdb2132beE.exit.i": ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %.val.i.i = load ptr, ptr %i.af, align 8, !alias.scope !41291, !align !31, !noundef !24
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..extensions..Extensions$GT$17hae5432ff86390e45E"(ptr %.val.i.i)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 400
  %.val429.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !41292
  %.phi.trans.insert376 = getelementptr inbounds nuw i8, ptr %1, i64 408
  %.val44430.i.pre = load ptr, ptr %.phi.trans.insert376, align 8, !alias.scope !41292
  br label %bb.j

bb.f:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$http..response..Parts$GT$17h4d85b9bfdb2132beE.exit.i"
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.f ], [ %i.ac, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %.body19

bb.g:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$http..response..Parts$GT$17h4d85b9bfdb2132beE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.sroa.1040.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1040.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i64 3, ptr %i.ah, align 8
  %.sroa.838.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i64 0, ptr %.sroa.838.0..sroa_idx, align 8
  %.sroa.939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.939.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 400
  store ptr %i.z, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.1241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 408
  store ptr %i.ab, ptr %.sroa.1241.0..sroa_idx, align 8
  br label %bb.j

.body19:                                          ; preds = %bb.dl, %bb.db, %bb.cx, %.body14, %.body
  %.pn5.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body15, %.body14 ], [ %i.nn, %bb.db ], [ %i.mx, %bb.cx ], [ %i.pi, %bb.dl ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val10 = load ptr, ptr %i.ai, align 8, !nonnull !24, !noundef !24
  call fastcc void @"_ZN4core3ptr54drop_in_place$LT$alloc..boxed..Box$LT$url..Url$GT$$GT$17h9f399d07d71b2abdE"(ptr nonnull %.val10) #55
  store i8 2, ptr %i.v, align 8
  resume { ptr, i32 } %.pn5.pn

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h8d6dad3360c2bb22E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1728) #54
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1728) #54
  unreachable

bb.j:                                             ; preds = %bb.e, %bb.g
  %.val44430.i = phi ptr [ %.val44430.i.pre, %bb.e ], [ %i.ab, %bb.g ]
  %.val429.i = phi ptr [ %.val429.i.pre, %bb.e ], [ %i.z, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1245)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41292)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.655)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !41294
  %i.am = getelementptr inbounds nuw i8, ptr %.val44430.i, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !24, !noalias !41295, !nonnull !24
  invoke void %i.an(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.t, ptr noundef nonnull align 1 %.val429.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !41080

.noexc:                                           ; preds = %bb.j
  %i.ao = load i64, ptr %i.t, align 8, !range !74, !noalias !41294, !noundef !24 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 6
  br i1 %i.ap, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %.sroa.5196.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %.sroa.4195.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 6 uses
  %.sroa.219.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %.sroa.322.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %.sroa.732.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 12 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 10 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.483.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.584.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.bu = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.bz = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.655.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.655, i64 16
  %.sroa.655.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.655, i64 24 ; 2 uses
  br label %bb.k

.thread:                                          ; preds = %.noexc12, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !41294
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.655)
  br label %bb.cv

bb.k:                                             ; preds = %.noexc12, %.lr.ph.i
  %i.cb = phi i64 [ %i.mt, %.noexc12 ], [ %i.ao, %.lr.ph.i ] ; 5 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !41294 ; 4 uses
  %.sroa.554.0.copyload = load ptr, ptr %.sroa.554.0..sroa_idx, align 8, !noalias !41294 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.655, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.655.0..sroa_idx, i64 72, i1 false), !noalias !41294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !41294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !41294
  switch i64 %i.cb, label %bb.m [
    i64 5, label %bb.l
    i64 4, label %.thread60
  ]

bb.l:                                             ; preds = %bb.k
  %.sroa.019.0.copyload.i = load i64, ptr %i.aj, align 8, !alias.scope !41292 ; 3 uses
  store i64 4, ptr %i.aj, align 8, !alias.scope !41292
  %.not41.i = icmp eq i64 %.sroa.019.0.copyload.i, 4
  br i1 %.not41.i, label %bb.ct, label %bb.cu, !prof !26

.thread60:                                        ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload), "nonnull"(ptr %.sroa.554.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !41294
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.655)
  br label %bb.cw

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.618.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.655, i64 72, i1 false), !noalias !41294
  store i64 %i.cb, ptr %i.s, align 8, !noalias !41294
  store ptr %.sroa.4.0.copyload, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !41294
  store ptr %.sroa.554.0.copyload, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !41294
  %i.cc = load i64, ptr %i.aj, align 8, !range !101, !alias.scope !41292, !noundef !24 ; 2 uses
  %.not42.i = icmp eq i64 %i.cc, 4
  br i1 %.not42.i, label %bb.co, label %bb.n, !prof !26

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !41296)
  %.not.i.i = icmp eq i64 %i.cb, 3
  br i1 %.not.i.i, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !41297
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.416.0..sroa_idx.i, i64 32, i1 false), !noalias !41294
  %.val.i.i11 = load i64, ptr %i.bu, align 8, !noalias !41297, !noundef !24
  %.not56.i.i = icmp eq i64 %.val.i.i11, 0
  br i1 %.not56.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !41298)
  call void @llvm.experimental.noalias.scope.decl(metadata !41299)
  %i.cd = load ptr, ptr %i.r, align 8, !alias.scope !41300, !noalias !41297, !nonnull !24, !align !31, !noundef !24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !41301, !nonnull !24, !noundef !24
  %i.cg = load ptr, ptr %i.ca, align 8, !alias.scope !41300, !noalias !41297, !noundef !24
  invoke void %i.cf(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef %i.cg, i64 noundef 0)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41293, !inline_history !41088

bb.q:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !41302)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !41303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.416.0..sroa_idx.i, i64 32, i1 false), !noalias !41294
  call void @llvm.experimental.noalias.scope.decl(metadata !41304)
  call void @llvm.experimental.noalias.scope.decl(metadata !41305)
  %i.ch = load i64, ptr %i.bw, align 8, !alias.scope !41306, !noundef !24 ; 2 uses
  %i.ci = load i64, ptr %i.bv, align 8, !range !30, !alias.scope !41306, !noundef !24 ; 2 uses
  %i.cj = icmp eq i64 %i.ch, %i.ci
  br i1 %i.cj, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  invoke void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h99338650aa43862fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283)
          to label %._crit_edge.i.i.i.i unwind label %bb.s, !noalias !41307

._crit_edge.i.i.i.i:                              ; preds = %bb.r
  %.pre.i.i.i.i = load i64, ptr %i.bw, align 8, !alias.scope !41306
  %.pre1.i.i.i.i = load i64, ptr %i.bv, align 8, !range !30, !alias.scope !41306
  br label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !41308)
  call void @llvm.experimental.noalias.scope.decl(metadata !41309)
  %i.cl = load ptr, ptr %i.p, align 8, !alias.scope !41310, !noalias !41303, !nonnull !24, !align !31, !noundef !24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !41311, !nonnull !24, !noundef !24
  %i.co = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !41310, !noalias !41303, !noundef !24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !41310, !noalias !41303, !noundef !24
  invoke void %i.cn(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef %i.cq, i64 noundef %i.cs)
          to label %.body14 unwind label %bb.t, !noalias !41312, !inline_history !8

bb.t:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !41312
  unreachable

.noexc.i:                                         ; preds = %bb.u, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !41297
  br label %"_ZN14http_body_util9collected18Collected$LT$B$GT$10push_frame17h551e31d0b864a74dE.exit.i"

bb.u:                                             ; preds = %._crit_edge.i.i.i.i, %bb.q
  %i.cu = phi i64 [ %.pre1.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ci, %bb.q ] ; 2 uses
  %i.cv = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ch, %bb.q ] ; 2 uses
  %i.cw = add i64 %i.cv, 1
  store i64 %i.cw, ptr %i.bw, align 8, !alias.scope !41306
  %i.cx = load i64, ptr %i.bx, align 8, !alias.scope !41306, !noundef !24
  %i.cy = add i64 %i.cx, %i.cv                    ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.cy, %i.cu
  %i.cz = select i1 %.not.i.i.i.i, i64 0, i64 %i.cu
  %.sroa.0.0.i.i.i.i = sub nuw i64 %i.cy, %i.cz
  %i.da = load ptr, ptr %i.by, align 8, !alias.scope !41306, !nonnull !24, !noundef !24
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %i.da, i64 %.sroa.0.0.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.db, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.416.0..sroa_idx.i, i64 32, i1 false), !noalias !41293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !41303
  br label %.noexc.i

bb.v:                                             ; preds = %bb.ck, %bb.cj
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !41313
  unreachable

bb.w:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !41297
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5196.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.655.40..sroa_idx, i64 56, i1 false), !noalias !41294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4195.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.416.0..sroa_idx.i, i64 32, i1 false), !noalias !41294
  store i64 %i.cb, ptr %i.aq, align 8, !noalias !41297
  store i64 0, ptr %i.q, align 8, !noalias !41297
  %.sroa.219.0.copyload.i.i = load i64, ptr %.sroa.219.0..sroa_idx.i.i, align 8, !noalias !41297 ; 2 uses
  %.sroa.322.0.copyload.i.i = load ptr, ptr %.sroa.322.0..sroa_idx.i.i, align 8, !noalias !41297 ; 10 uses
  %.sroa.425.0.copyload.i.i = load i64, ptr %.sroa.5196.0..sroa_idx.i.i, align 8, !noalias !41297 ; 6 uses
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !41297 ; 3 uses
  %.sroa.732.0.copyload.i.i = load i64, ptr %.sroa.732.0..sroa_idx.i.i, align 8, !noalias !41297 ; 3 uses
  %.not11.i.i = icmp eq i64 %i.cc, 3
  br i1 %.not11.i.i, label %.thread.i.i, label %bb.y

bb.x:                                             ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !41314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !41297
  %.pre.i.i = load i64, ptr %i.q, align 8, !range !36, !noalias !41297
  %i.dd = trunc nuw i64 %.pre.i.i to i1
  br i1 %i.dd, label %bb.cl, label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$http..header..map..HeaderMap$C$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h896843fcd7c7c0a1E.exit.i.i"

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !41315)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !41297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !41314
  call void @llvm.experimental.noalias.scope.decl(metadata !41316)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.322.0.copyload.i.i) ]
  %i.de = icmp ult i64 %.sroa.425.0.copyload.i.i, 88686269585142076
  call void @llvm.assume(i1 %i.de)
  %.idx.i.i.i = mul nuw nsw i64 %.sroa.425.0.copyload.i.i, 104
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload.i.i, i64 %.idx.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.655.48..sroa_idx, i64 24, i1 false), !noalias !41294
  store i64 0, ptr %i.o, align 8, !alias.scope !41316, !noalias !41314
  store ptr %.sroa.322.0.copyload.i.i, ptr %i.as, align 8, !alias.scope !41316, !noalias !41314
  store ptr %.sroa.322.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !41316, !noalias !41314
  store i64 %.sroa.219.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !41316, !noalias !41314
  store ptr %i.df, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !41316, !noalias !41314
  %i.dg = icmp eq i64 %.sroa.732.0.copyload.i.i, 0
  br i1 %i.dg, label %"_ZN99_$LT$http..header..map..HeaderMap$LT$T$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0268a0236837d17eE.exit.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i4.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i4.i.i.i.i": ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i) ]
  %i.dh = shl nuw nsw i64 %.sroa.732.0.copyload.i.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i, i64 noundef %i.dh, i64 noundef 2) #47, !noalias !41317
  br label %"_ZN99_$LT$http..header..map..HeaderMap$LT$T$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0268a0236837d17eE.exit.i.i.i"

"_ZN99_$LT$http..header..map..HeaderMap$LT$T$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0268a0236837d17eE.exit.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i4.i.i.i.i", %bb.y
  %i.di = load i64, ptr %i.at, align 8, !alias.scope !41318, !noundef !24 ; 4 uses
  %i.dj = icmp ult i64 %i.di, 88686269585142076
  call void @llvm.assume(i1 %i.dj)
  %i.dk = icmp eq i64 %i.di, 0                    ; 2 uses
  %i.dl = add nuw nsw i64 %.sroa.425.0.copyload.i.i, 1
  %i.dm = lshr i64 %i.dl, 1
  %.sroa.0.0.i.i.i = select i1 %i.dk, i64 %.sroa.425.0.copyload.i.i, i64 %i.dm
  call void @llvm.experimental.noalias.scope.decl(metadata !41319)
  %i.dn = call i64 @llvm.usub.sat.i64(i64 24576, i64 %i.di)
  %.sroa.0.0.i.i15.i.i = call noundef i64 @llvm.umin.i64(i64 %i.dn, i64 %.sroa.0.0.i.i.i)
  %i.do = add nuw nsw i64 %.sroa.0.0.i.i15.i.i, %i.di ; 2 uses
  %i.dp = udiv i64 %i.do, 3
  %i.dq = add nuw nsw i64 %i.dp, %i.do            ; 3 uses
  %i.dr = load i64, ptr %i.aw, align 8, !alias.scope !41320, !noundef !24 ; 3 uses
  %i.ds = icmp ugt i64 %i.dq, %i.dr
  br i1 %i.ds, label %bb.z, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread96.i.i.i"

.body.i.i.i:                                      ; preds = %.body32.thread106.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body32.thread.i.i.i, %bb.cf, %.body32.thread106.loopexit.split-lp.loopexit.i.i.i, %.body32.thread106.loopexit.i.i.body.i, %.body.i.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.lc, %bb.cf ], [ %i.ey, %.body.i.i.i.i ], [ %eh.lpad-body33101.i.i.i, %.body32.thread.i.i.i ], [ %eh.lpad-body51.i, %.body32.thread106.loopexit.i.i.body.i ], [ %lpad.loopexit137.i.i.i, %.body32.thread106.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp, %.body32.thread106.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr88drop_in_place$LT$http..header..map..IntoIter$LT$http..header..value..HeaderValue$GT$$GT$17hdc187f1d2a1ecae9E"(ptr noalias noundef align 8 dereferenceable(72) %i.o) #55
          to label %.body17.i.i unwind label %bb.ah, !noalias !41321

bb.z:                                             ; preds = %"_ZN99_$LT$http..header..map..HeaderMap$LT$T$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0268a0236837d17eE.exit.i.i.i"
  %i.dt = icmp samesign ult i64 %i.dq, 2          ; 2 uses
  %i.du = add nsw i64 %i.dq, -1
  %i.dv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.du, i1 true)
  %i.dw = lshr i64 -1, %i.dv                      ; 4 uses
  %.sroa.022.0.i.i.i.i = select i1 %i.dt, i64 0, i64 %i.dw ; 2 uses
  %i.dx = add nuw nsw i64 %.sroa.022.0.i.i.i.i, 1 ; 6 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %.sroa.022.0.i.i.i.i, 32767
  br i1 %or.cond.i.i.i.i, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread.invoke.i.i.i", label %bb.aa, !prof !43

bb.aa:                                            ; preds = %bb.z
  br i1 %i.dk, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i", label %bb.ab

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i": ; preds = %bb.aa
  %i.dy = trunc nuw i64 %i.dx to i16
  %i.dz = add i16 %i.dy, -1
  store i16 %i.dz, ptr %i.ax, align 8, !alias.scope !41320
  %i.ea = shl nuw nsw i64 %i.dx, 2                ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !41322
  %i.eb = call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ea, i64 noundef range(i64 1, 9) 2) #47, !noalias !41322 ; 7 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %.invoke.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i.i.i.i.i"

.invoke.i.i.i:                                    ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"
  %i.ed = phi i64 [ 2, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ 8, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i" ]
  %i.ee = phi i64 [ %i.ea, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ %i.ev, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i" ]
  %i.ef = phi ptr [ @568, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ @569, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.ed, i64 %i.ee, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ef) #54
          to label %.cont.i.i.i unwind label %.body32.thread106.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41321

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"
  br i1 %i.dt, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i.i.i.i.i"
  %min.iters.check = icmp ult i64 %i.dw, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader755, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.dw, -8                      ; 3 uses
  %i.eg = shl i64 %n.vec, 2
  %i.eh = getelementptr i8, ptr %i.eb, i64 %i.eg
  %i.ei = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ej = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.eb, i64 %i.ej
  %i.ek = getelementptr i8, ptr %i.eb, i64 %i.ej
  %next.gep751 = getelementptr i8, ptr %i.ek, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2, !noalias !41323
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep751, align 2, !noalias !41323
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %.lr.ph.i.i.i.i.i.i.preheader755, label %vector.body, !llvm.loop !41116

.lr.ph.i.i.i.i.i.i.preheader755:                  ; preds = %vector.body, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.09.i.i.i.i.i.i.ph = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.eh, %vector.body ]
  %.sroa.03.08.i.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ei, %vector.body ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader755, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader755 ] ; 3 uses
  %.sroa.03.08.i.i.i.i.i.i = phi i64 [ %i.em, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.03.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader755 ] ; 2 uses
  %i.em = add nuw nsw i64 %.sroa.03.08.i.i.i.i.i.i, 1
  store i16 -1, ptr %.sroa.0.09.i.i.i.i.i.i, align 2, !noalias !41323
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i, i64 2
  store i16 0, ptr %i.en, align 2, !noalias !41323
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i, i64 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %.sroa.03.08.i.i.i.i.i.i, %i.dw
  br i1 %exitcond.not.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !41117

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i.i.i.i.i"
  %.sroa.0.0.lcssa16.i.i.i.i.i.i = phi ptr [ %i.eb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i.i.i.i.i" ], [ %i.eo, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  store i16 -1, ptr %.sroa.0.0.lcssa16.i.i.i.i.i.i, align 2, !noalias !41323
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa16.i.i.i.i.i.i, i64 2
  store i16 0, ptr %i.ep, align 2, !noalias !41323
  %i.eq = icmp eq i64 %i.dr, 0
  br i1 %i.eq, label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit.i.i.i.i"
  %.val.i21.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !41320, !nonnull !24, !noundef !24
  %i.er = shl nuw nsw i64 %i.dr, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i21.i.i.i, i64 noundef %i.er, i64 noundef 2) #47, !noalias !41324
  br label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i"

bb.ab:                                            ; preds = %bb.aa
  %i.es = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$8try_grow17haea69580bd90cf09E"(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.aj, i64 noundef %i.dx)
          to label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.i.i.i" unwind label %.body32.thread106.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41321

"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit.i.i.i.i"
  store ptr %i.eb, ptr %i.av, align 8, !alias.scope !41320
  store i64 %i.dx, ptr %i.aw, align 8, !alias.scope !41320
  %i.et = lshr i64 %i.dx, 2
  %i.eu = sub nuw nsw i64 %i.dx, %i.et            ; 3 uses
  %i.ev = mul nuw nsw i64 %i.eu, 104              ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !41325
  %i.ew = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ev, i64 noundef range(i64 1, 9) 8) #47, !noalias !41325 ; 3 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %.invoke.i.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !41326)
  %.val.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !41327, !nonnull !24, !noundef !24 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$$u5b$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$u5d$$GT$17hf1eb4dfc17aacc06E"(ptr noalias noundef nonnull align 8 %.val.i.i.i.i.i, i64 noundef 0)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62614eb66c936b58E.exit.i.i.i.i.i" unwind label %bb.ac, !noalias !41328

bb.ac:                                            ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i.i.i.i"
  %i.ey = landingpad { ptr, i32 }
          cleanup
  %.val4.i.i.i.i.i = load i64, ptr %i.au, align 8, !range !30, !alias.scope !41327, !noundef !24 ; 2 uses
  %i.ez = icmp eq i64 %.val4.i.i.i.i.i, 0
  br i1 %i.ez, label %.body.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fa = mul nuw i64 %.val4.i.i.i.i.i, 104
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !41328
  br label %.body.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62614eb66c936b58E.exit.i.i.i.i.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i.i.i.i"
  %.val2.i.i.i.i.i = load i64, ptr %i.au, align 8, !range !30, !alias.scope !41327, !noundef !24 ; 2 uses
  %i.fb = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.fb, label %"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17hb65dc6e3ed25b711E.exit.i.i.i.i", label %bb.ae

bb.ae:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62614eb66c936b58E.exit.i.i.i.i.i"
  %i.fc = mul nuw i64 %.val2.i.i.i.i.i, 104
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.fc, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !41328
  br label %"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17hb65dc6e3ed25b711E.exit.i.i.i.i"

.body.i.i.i.i:                                    ; preds = %bb.ad, %bb.ac
  store i64 %i.eu, ptr %i.au, align 8, !alias.scope !41320
  store ptr %i.ew, ptr %i.ay, align 8, !alias.scope !41320
  br label %.body.i.i.i

"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17hb65dc6e3ed25b711E.exit.i.i.i.i": ; preds = %bb.ae, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62614eb66c936b58E.exit.i.i.i.i.i"
  store i64 %i.eu, ptr %i.au, align 8, !alias.scope !41320
  store ptr %i.ew, ptr %i.ay, align 8, !alias.scope !41320
  br label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread96.i.i.i"

end_hunk_0
begin_hunk_1_@"_ZN7reqwest10async_impl8response8Response5bytes28_$u7b$$u7b$closure$u7d$$u7d$17hba0b216e3d972376E":bb.a
  %i.jn = trunc nuw i64 %i.jm to i1
  br i1 %i.jn, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 16 ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !alias.scope !41370, !noalias !41321, !noundef !24 ; 4 uses
  %i.jq = load i64, ptr %i.bj, align 8, !alias.scope !41372, !noalias !41373, !noundef !24 ; 7 uses
  %i.jr = icmp ult i64 %i.jq, 128102389400760776
  call void @llvm.assume(i1 %i.jr), !noalias !41373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !41374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bp, ptr noundef nonnull align 8 dereferenceable(40) %i.ji, i64 40, i1 false), !noalias !41293
  store i64 1, ptr %i.f, align 8, !noalias !41374
  store i64 %i.jp, ptr %i.bq, align 8, !noalias !41374
  store i64 0, ptr %i.br, align 8, !noalias !41374
  store i64 %.sroa.7.0.i.i.i, ptr %i.bs, align 8, !noalias !41374
  call void @llvm.experimental.noalias.scope.decl(metadata !41375), !noalias !41373
  call void @llvm.experimental.noalias.scope.decl(metadata !41376), !noalias !41373
  %i.js = load i64, ptr %i.bi, align 8, !range !30, !alias.scope !41377, !noalias !41373, !noundef !24
  %i.jt = icmp eq i64 %i.jq, %i.js
  br i1 %i.jt, label %bb.bu, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb78809325760a0c8E.exit.i.i"

bb.bu:                                            ; preds = %bb.bt
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5edb042558e7182fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @561)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb78809325760a0c8E.exit.i.i" unwind label %bb.bv, !noalias !41378

bb.bv:                                            ; preds = %bb.bu
  %i.ju = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !41379), !noalias !41373
  call void @llvm.experimental.noalias.scope.decl(metadata !41380), !noalias !41373
  call void @llvm.experimental.noalias.scope.decl(metadata !41381), !noalias !41373
  call void @llvm.experimental.noalias.scope.decl(metadata !41382), !noalias !41373
  %i.jv = load ptr, ptr %i.bp, align 8, !alias.scope !41383, !noalias !41374, !nonnull !24, !align !31, !noundef !24
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  %i.jx = load ptr, ptr %i.jw, align 8, !noalias !41384, !nonnull !24, !noundef !24
  %i.jy = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.jz = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ka = load ptr, ptr %i.jz, align 8, !alias.scope !41383, !noalias !41374, !noundef !24
  %i.kb = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.kc = load i64, ptr %i.kb, align 8, !alias.scope !41383, !noalias !41374, !noundef !24
  invoke void %i.jx(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jy, ptr noundef %i.ka, i64 noundef %i.kc)
          to label %.body32.thread106.loopexit.i.i.body.i unwind label %bb.bw, !noalias !41385, !inline_history !5

bb.bw:                                            ; preds = %bb.bv
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !41385
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb78809325760a0c8E.exit.i.i": ; preds = %bb.bu, %bb.bt
  %i.ke = load ptr, ptr %i.bo, align 8, !alias.scope !41377, !noalias !41373, !nonnull !24, !noundef !24
  %i.kf = getelementptr inbounds nuw [72 x i8], ptr %i.ke, i64 %i.jq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.kf, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false), !noalias !41385
  %i.kg = add nuw nsw i64 %i.jq, 1                ; 2 uses
  store i64 %i.kg, ptr %i.bj, align 8, !alias.scope !41377, !noalias !41373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !41374
  %.not.i50.i = icmp ugt i64 %i.jp, %i.jq
  br i1 %.not.i50.i, label %bb.cc, label %bb.cb

bb.bx:                                            ; preds = %bb.bs
  %i.kh = load i64, ptr %i.bj, align 8, !alias.scope !41372, !noalias !41373, !noundef !24 ; 6 uses
  %i.ki = icmp ult i64 %i.kh, 128102389400760776
  call void @llvm.assume(i1 %i.ki), !noalias !41373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !41374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 8 dereferenceable(40) %i.ji, i64 40, i1 false), !noalias !41293
  store i64 0, ptr %i.e, align 8, !noalias !41374
  store i64 %.sroa.7.0.i.i.i, ptr %i.bl, align 8, !noalias !41374
  store i64 0, ptr %i.bm, align 8, !noalias !41374
  store i64 %.sroa.7.0.i.i.i, ptr %i.bn, align 8, !noalias !41374
  call void @llvm.experimental.noalias.scope.decl(metadata !41386), !noalias !41373
  call void @llvm.experimental.noalias.scope.decl(metadata !41387), !noalias !41373
  %i.kj = load i64, ptr %i.bi, align 8, !range !30, !alias.scope !41388, !noalias !41373, !noundef !24
  %i.kk = icmp eq i64 %i.kh, %i.kj
  br i1 %i.kk, label %bb.by, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb78809325760a0c8E.exit9.i.i"

bb.by:                                            ; preds = %bb.bx
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5edb042558e7182fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @560)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb78809325760a0c8E.exit9.i.i" unwind label %bb.bz, !noalias !41389

bb.bz:                                            ; preds = %bb.by
  %i.kl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !41390), !noalias !41373
  call void @llvm.experimental.noalias.scope.decl(metadata !41391), !noalias !41373
  call void @llvm.experimental.noalias.scope.decl(metadata !41392), !noalias !41373
  call void @llvm.experimental.noalias.scope.decl(metadata !41393), !noalias !41373
  %i.km = load ptr, ptr %i.bk, align 8, !alias.scope !41394, !noalias !41374, !nonnull !24, !align !31, !noundef !24
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  %i.ko = load ptr, ptr %i.kn, align 8, !noalias !41395, !nonnull !24, !noundef !24
  %i.kp = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.kq = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.kr = load ptr, ptr %i.kq, align 8, !alias.scope !41394, !noalias !41374, !noundef !24
  %i.ks = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.kt = load i64, ptr %i.ks, align 8, !alias.scope !41394, !noalias !41374, !noundef !24
  invoke void %i.ko(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kp, ptr noundef %i.kr, i64 noundef %i.kt)
          to label %.body32.thread106.loopexit.i.i.body.i unwind label %bb.ca, !noalias !41385, !inline_history !5

bb.ca:                                            ; preds = %bb.bz
  %i.ku = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !41385
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb78809325760a0c8E.exit9.i.i": ; preds = %bb.by, %bb.bx
  %i.kv = load ptr, ptr %i.bo, align 8, !alias.scope !41388, !noalias !41373, !nonnull !24, !noundef !24
  %i.kw = getelementptr inbounds nuw [72 x i8], ptr %i.kv, i64 %i.kh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.kw, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !41385
  %i.kx = add nuw nsw i64 %i.kh, 1
  store i64 %i.kx, ptr %i.bj, align 8, !alias.scope !41388, !noalias !41373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !41374
  store i64 1, ptr %i.jl, align 8, !alias.scope !41370, !noalias !41321
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store i64 %i.kh, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !41370, !noalias !41321
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store i64 %i.kh, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !41370, !noalias !41321
  br label %"_ZN4http6header3map22OccupiedEntry$LT$T$GT$6append17h8ec6c883fd82d656E.exit.i.i.i"

bb.cb:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb78809325760a0c8E.exit.i.i"
  %i.ky = load ptr, ptr %i.bo, align 8, !alias.scope !41372, !noalias !41373, !nonnull !24, !noundef !24
  %i.kz = getelementptr inbounds nuw [72 x i8], ptr %i.ky, i64 %i.jp ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  store i64 1, ptr %i.la, align 8, !noalias !41385
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  store i64 %i.jq, ptr %i.lb, align 8, !noalias !41385
  store i64 1, ptr %i.jl, align 8, !alias.scope !41370, !noalias !41321
  store i64 %i.jq, ptr %i.jo, align 8, !alias.scope !41370, !noalias !41321
  br label %"_ZN4http6header3map22OccupiedEntry$LT$T$GT$6append17h8ec6c883fd82d656E.exit.i.i.i"

bb.cc:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb78809325760a0c8E.exit.i.i"
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.jp, i64 noundef %i.kg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @562) #54
          to label %.noexc52.i unwind label %.body32.thread106.loopexit.i.i.i, !noalias !41293

.noexc52.i:                                       ; preds = %bb.cc
  unreachable

bb.cd:                                            ; preds = %bb.br
  store ptr %i.fl, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !41314
  store i64 %.sroa.0.0.i50.i.i.i, ptr %i.o, align 8, !noalias !41314
  store i64 %.sroa.5.0.i49.i.i.i, ptr %i.az, align 8, !noalias !41314
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.7.0.i.i.i, i64 noundef %i.jj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @594) #54
          to label %bb.ce unwind label %bb.cf, !noalias !41396

bb.ce:                                            ; preds = %bb.cd
  unreachable

bb.cf:                                            ; preds = %bb.cd
  %i.lc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !41397)
  call void @llvm.experimental.noalias.scope.decl(metadata !41398)
  call void @llvm.experimental.noalias.scope.decl(metadata !41399)
  %i.ld = load ptr, ptr %i.h, align 8, !alias.scope !41400, !noalias !41314, !nonnull !24, !align !31, !noundef !24
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  %i.lf = load ptr, ptr %i.le, align 8, !noalias !41401, !nonnull !24, !noundef !24
  %i.lg = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.lh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !alias.scope !41400, !noalias !41314, !noundef !24
  %i.lj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.lk = load i64, ptr %i.lj, align 8, !alias.scope !41400, !noalias !41314, !noundef !24
  invoke void %i.lf(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.lg, ptr noundef %i.li, i64 noundef %i.lk)
          to label %.body.i.i.i unwind label %bb.cg, !noalias !41321, !inline_history !17

bb.cg:                                            ; preds = %bb.cf
  %i.ll = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !41321
  unreachable

"_ZN4http6header3map22OccupiedEntry$LT$T$GT$6append17h8ec6c883fd82d656E.exit.i.i.i": ; preds = %bb.cb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb78809325760a0c8E.exit9.i.i"
  %i.lm = trunc nuw i64 %.sroa.0.0.i50.i.i.i to i1
  br i1 %i.lm, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.body32.thread.i.i.i:                             ; preds = %.body32.loopexit.split-lp.i.i.i, %.body32.loopexit.i.i.i, %bb.az, %bb.ay
  %eh.lpad-body33101.i.i.i = phi { ptr, i32 } [ %lpad.phi133.i.i.i, %bb.az ], [ %lpad.phi133.i.i.i, %bb.ay ], [ %lpad.loopexit134.i.i.i, %.body32.loopexit.i.i.i ], [ %lpad.loopexit.split-lp135.i.i.i, %.body32.loopexit.split-lp.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !41402)
  call void @llvm.experimental.noalias.scope.decl(metadata !41403)
  call void @llvm.experimental.noalias.scope.decl(metadata !41404)
  %i.ln = load ptr, ptr %i.m, align 8, !alias.scope !41405, !noalias !41314, !nonnull !24, !align !31, !noundef !24
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 32
  %i.lp = load ptr, ptr %i.lo, align 8, !noalias !41406, !nonnull !24, !noundef !24
  %i.lq = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.lr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !alias.scope !41405, !noalias !41314, !noundef !24
  %i.lt = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.lu = load i64, ptr %i.lt, align 8, !alias.scope !41405, !noalias !41314, !noundef !24
  invoke void %i.lp(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.lq, ptr noundef %i.ls, i64 noundef %i.lu)
          to label %.body.i.i.i unwind label %bb.ah, !noalias !41321, !inline_history !17

.body17.i.i:                                      ; preds = %bb.ch, %.body.i.i.i
  %.pn.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %.body.i.i.i ], [ %i.lx, %bb.ch ] ; 3 uses
  %i.lv = load i64, ptr %i.q, align 8, !range !36, !noalias !41297, !noundef !24
  %i.lw = icmp eq i64 %i.lv, 0
  br i1 %i.lw, label %.body14, label %bb.ci

bb.ch:                                            ; preds = %bb.af
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %.body17.i.i

.thread.i.i:                                      ; preds = %bb.w
  %.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !41297
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !41407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.655.48..sroa_idx, i64 24, i1 false), !noalias !41408
  store i64 %.sroa.219.0.copyload.i.i, ptr %i.au, align 8, !alias.scope !41409
  store ptr %.sroa.322.0.copyload.i.i, ptr %i.ay, align 8, !alias.scope !41409
  store i64 %.sroa.425.0.copyload.i.i, ptr %i.at, align 8, !alias.scope !41409
  store ptr %.sroa.6.0.copyload.i.i, ptr %i.av, align 8, !alias.scope !41409
  store i64 %.sroa.732.0.copyload.i.i, ptr %i.aw, align 8, !alias.scope !41409
  store i64 %.sroa.8.0.copyload.i.i, ptr %i.ax, align 8, !alias.scope !41409
  br label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$http..header..map..HeaderMap$C$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h896843fcd7c7c0a1E.exit.i.i"

bb.ci:                                            ; preds = %.body17.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !41410)
  call void @llvm.experimental.noalias.scope.decl(metadata !41411), !noalias !41412
  call void @llvm.experimental.noalias.scope.decl(metadata !41413), !noalias !41412
  %i.ly = load i64, ptr %i.aq, align 8, !range !56, !alias.scope !41414, !noalias !41415, !noundef !24
  %i.lz = icmp eq i64 %i.ly, 3
  br i1 %i.lz, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.experimental.noalias.scope.decl(metadata !41416), !noalias !41412
  call void @llvm.experimental.noalias.scope.decl(metadata !41417), !noalias !41412
  %i.ma = load ptr, ptr %.sroa.4195.0..sroa_idx.i.i, align 8, !alias.scope !41418, !noalias !41415, !nonnull !24, !align !31, !noundef !24
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  %i.mc = load ptr, ptr %i.mb, align 8, !noalias !41419, !nonnull !24, !noundef !24
  %i.md = load ptr, ptr %i.bt, align 8, !alias.scope !41418, !noalias !41415, !noundef !24
  %i.me = load i64, ptr %.sroa.219.0..sroa_idx.i.i, align 8, !alias.scope !41418, !noalias !41415, !noundef !24
  invoke void %i.mc(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.322.0..sroa_idx.i.i, ptr noundef %i.md, i64 noundef %i.me)
          to label %.body14 unwind label %bb.v, !noalias !41293, !inline_history !41239

bb.ck:                                            ; preds = %bb.ci
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..header..map..HeaderMap$GT$17he04bf0689d578762E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.aq)
          to label %.body14 unwind label %bb.v, !noalias !41293

bb.cl:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !41420)
  call void @llvm.experimental.noalias.scope.decl(metadata !41421)
  call void @llvm.experimental.noalias.scope.decl(metadata !41422)
  %i.mf = load i64, ptr %i.aq, align 8, !range !56, !alias.scope !41423, !noalias !41297, !noundef !24
  %i.mg = icmp eq i64 %i.mf, 3
  br i1 %i.mg, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !41424)
  call void @llvm.experimental.noalias.scope.decl(metadata !41425)
  %i.mh = load ptr, ptr %.sroa.4195.0..sroa_idx.i.i, align 8, !alias.scope !41426, !noalias !41297, !nonnull !24, !align !31, !noundef !24
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 32
  %i.mj = load ptr, ptr %i.mi, align 8, !noalias !41427, !nonnull !24, !noundef !24
  %i.mk = load ptr, ptr %i.bt, align 8, !alias.scope !41426, !noalias !41297, !noundef !24
  %i.ml = load i64, ptr %.sroa.219.0..sroa_idx.i.i, align 8, !alias.scope !41426, !noalias !41297, !noundef !24
  invoke void %i.mj(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.322.0..sroa_idx.i.i, ptr noundef %i.mk, i64 noundef %i.ml)
          to label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$http..header..map..HeaderMap$C$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h896843fcd7c7c0a1E.exit.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41293, !inline_history !41088

bb.cn:                                            ; preds = %bb.cl
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..header..map..HeaderMap$GT$17he04bf0689d578762E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.aq)
          to label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$http..header..map..HeaderMap$C$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h896843fcd7c7c0a1E.exit.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41293

"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$http..header..map..HeaderMap$C$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h896843fcd7c7c0a1E.exit.i.i": ; preds = %bb.cn, %bb.cm, %.thread.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !41297
  br label %"_ZN14http_body_util9collected18Collected$LT$B$GT$10push_frame17h551e31d0b864a74dE.exit.i"

bb.co:                                            ; preds = %bb.m
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #54
          to label %bb.cr unwind label %.body.thread.i, !noalias !41293

.body.thread.i:                                   ; preds = %bb.co
  %lpad.loopexit.split-lp60.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41428)
  call void @llvm.experimental.noalias.scope.decl(metadata !41429), !noalias !41293
  %i.mm = icmp eq i64 %i.cb, 3
  br i1 %i.mm, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.body.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !41430), !noalias !41293
  call void @llvm.experimental.noalias.scope.decl(metadata !41431), !noalias !41293
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 32
  %i.mo = load ptr, ptr %i.mn, align 8, !noalias !41432, !nonnull !24, !noundef !24
  %i.mp = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.mq = load i64, ptr %.sroa.618.0..sroa_idx.i, align 8, !alias.scope !41433, !noalias !41293, !noundef !24
  invoke void %i.mo(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.mp, ptr noundef %.sroa.554.0.copyload, i64 noundef %i.mq)
          to label %.body14 unwind label %bb.cs, !inline_history !41258

bb.cq:                                            ; preds = %.body.thread.i
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..header..map..HeaderMap$GT$17he04bf0689d578762E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.s)
          to label %.body14 unwind label %bb.cs

bb.cr:                                            ; preds = %bb.co
  unreachable

"_ZN14http_body_util9collected18Collected$LT$B$GT$10push_frame17h551e31d0b864a74dE.exit.i": ; preds = %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$http..header..map..HeaderMap$C$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h896843fcd7c7c0a1E.exit.i.i", %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !41294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !41294
  %.val.i = load ptr, ptr %i.ak, align 8, !alias.scope !41292, !nonnull !24, !noundef !24
  %.val44.i = load ptr, ptr %i.al, align 8, !alias.scope !41292, !nonnull !24, !align !31, !noundef !24
  %i.mr = getelementptr inbounds nuw i8, ptr %.val44.i, i64 24
  %i.ms = load ptr, ptr %i.mr, align 8, !invariant.load !24, !noalias !41434, !nonnull !24
  invoke void %i.ms(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.t, ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !41080

.noexc12:                                         ; preds = %"_ZN14http_body_util9collected18Collected$LT$B$GT$10push_frame17h551e31d0b864a74dE.exit.i"
  %i.mt = load i64, ptr %i.t, align 8, !noalias !41294 ; 2 uses
  %i.mu = icmp eq i64 %i.mt, 6
  br i1 %i.mu, label %.thread, label %bb.k

bb.cs:                                            ; preds = %bb.cq, %bb.cp
  %i.mv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !41293
  unreachable

bb.ct:                                            ; preds = %bb.l
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @17, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #54
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.ct
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %bb.cm, %bb.cn, %"_ZN14http_body_util9collected18Collected$LT$B$GT$10push_frame17h551e31d0b864a74dE.exit.i", %bb.ct, %bb.j
  %lpad.loopexit.split-lp757 = landingpad { ptr, i32 }
          cleanup
  br label %.body14

.body14:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.s, %bb.cq, %bb.cp, %bb.ck, %bb.cj, %.body17.i.i
  %eh.lpad-body15 = phi { ptr, i32 } [ %.pn.i.i, %bb.cj ], [ %i.ck, %bb.s ], [ %lpad.loopexit.split-lp60.i, %bb.cp ], [ %lpad.loopexit.split-lp60.i, %bb.cq ], [ %.pn.i.i, %bb.ck ], [ %.pn.i.i, %.body17.i.i ], [ %lpad.loopexit.split-lp757, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1245)
  invoke fastcc void @"_ZN4core3ptr247drop_in_place$LT$http_body_util..combinators..collect..Collect$LT$http_body_util..combinators..box_body..BoxBody$LT$bytes..bytes..Bytes$C$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hf43c61a585bacc14E"(ptr noalias noundef align 8 dereferenceable(144) %i.aj) #55
          to label %.body19 unwind label %bb.dp

bb.cu:                                            ; preds = %bb.l
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.sroa.943.8.copyload = load ptr, ptr %.sroa.521.0..sroa_idx.i, align 8, !alias.scope !41435
  %.sroa.1144.8..sroa.521.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.sroa.1144.8.copyload = load ptr, ptr %.sroa.1144.8..sroa.521.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !41435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.1245, ptr noundef nonnull align 8 dereferenceable(104) %i.au, i64 104, i1 false), !alias.scope !41435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !41294
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.655)
  %i.mw = icmp eq i64 %.sroa.019.0.copyload.i, 5
  br i1 %i.mw, label %bb.cv, label %bb.cw

common.ret:                                       ; preds = %bb.do, %bb.cv
  %storemerge576 = phi i64 [ 0, %bb.do ], [ 1, %bb.cv ]
  %storemerge = phi i8 [ 1, %bb.do ], [ 3, %bb.cv ]
  store i64 %storemerge576, ptr %0, align 8
  store i8 %storemerge, ptr %i.v, align 8
  ret void

bb.cv:                                            ; preds = %.thread, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1245)
  br label %common.ret

bb.cw:                                            ; preds = %.thread60, %bb.cu
  %.sroa.042.066 = phi i64 [ 4, %.thread60 ], [ %.sroa.019.0.copyload.i, %bb.cu ] ; 2 uses
  %.sroa.943.065 = phi ptr [ %.sroa.4.0.copyload, %.thread60 ], [ %.sroa.943.8.copyload, %bb.cu ] ; 3 uses
  %.sroa.1144.064 = phi ptr [ %.sroa.554.0.copyload, %.thread60 ], [ %.sroa.1144.8.copyload, %bb.cu ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.748, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.1245, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1245)
  invoke fastcc void @"_ZN4core3ptr247drop_in_place$LT$http_body_util..combinators..collect..Collect$LT$http_body_util..combinators..box_body..BoxBody$LT$bytes..bytes..Bytes$C$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hf43c61a585bacc14E"(ptr noalias noundef align 8 dereferenceable(144) %i.aj)
          to label %bb.cy unwind label %bb.cx

bb.cx:                                            ; preds = %"_ZN7reqwest10async_impl8response8Response5bytes28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h0bbca49c98fccedeE.exit.i", %bb.cw
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %.body19

bb.cy:                                            ; preds = %bb.cw
  %i.my = icmp eq i64 %.sroa.042.066, 4
  br i1 %i.my, label %"_ZN4core6result19Result$LT$T$C$E$GT$3map17hfcd3b851820dd823E.exit.thread", label %bb.cz

"_ZN4core6result19Result$LT$T$C$E$GT$3map17hfcd3b851820dd823E.exit.thread": ; preds = %bb.cy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.943.065), "nonnull"(ptr %.sroa.1144.064) ]
  br label %bb.dj

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !41436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !41436
  store i64 %.sroa.042.066, ptr %i.c, align 8, !noalias !41437
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.943.065, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !41437
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.1144.064, ptr %.sroa.547.0..sroa_idx, align 8, !noalias !41437
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.748.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.748, i64 104, i1 false), !noalias !41437
  call void @llvm.experimental.noalias.scope.decl(metadata !41438)
  call void @llvm.experimental.noalias.scope.decl(metadata !41439)
  %i.mz = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.nb = load i64, ptr %i.na, align 8, !alias.scope !41440, !noalias !41436, !noundef !24 ; 4 uses
  %i.nc = icmp eq i64 %i.nb, 0
  br i1 %i.nc, label %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h2b914928f46e381eE.exit.i.i.i", label %bb.da

bb.da:                                            ; preds = %bb.cz
  %.val.i.i.i.i = load i64, ptr %i.mz, align 8, !alias.scope !41440, !noalias !41436 ; 4 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %.val2.i.i.i.i = load i64, ptr %i.nd, align 8, !alias.scope !41440, !noalias !41436 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %.val2.i.i.i.i, %.val.i.i.i.i
  %i.ne = select i1 %.not.i.i.i.i.i, i64 0, i64 %.val.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = sub nuw i64 %.val2.i.i.i.i, %i.ne ; 5 uses
  %i.nf = sub i64 %.val.i.i.i.i, %.sroa.0.0.i.i.i.i.i ; 2 uses
  %.not11.i.i.i.i.i = icmp ult i64 %i.nf, %i.nb   ; 2 uses
  %i.ng = add i64 %.sroa.0.0.i.i.i.i.i, %i.nb
  %i.nh = sub nuw i64 %i.nb, %i.nf
  %i.ni = shl nuw nsw i64 %i.nh, 5
  %.sroa.5.0.i.i.i.i = select i1 %.not11.i.i.i.i.i, i64 %.val.i.i.i.i, i64 %i.ng ; 2 uses
  %.sroa.11.0.i.i.i.i = select i1 %.not11.i.i.i.i.i, i64 %i.ni, i64 0 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.nk = load ptr, ptr %i.nj, align 8, !alias.scope !41440, !noalias !41436, !nonnull !24, !noundef !24 ; 6 uses
  %.idx1.i.i.i = shl nuw nsw i64 %.sroa.0.0.i.i.i.i.i, 5
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 %.idx1.i.i.i ; 5 uses
end_hunk_1
