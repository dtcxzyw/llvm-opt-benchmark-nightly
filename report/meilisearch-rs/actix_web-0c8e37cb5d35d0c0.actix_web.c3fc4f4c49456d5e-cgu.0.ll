Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_web-0c8e37cb5d35d0c0.actix_web.c3fc4f4c49456d5e-cgu.0?download=true
inline.NumInlined: 5794
inline.NumDeleted: 2637
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN9actix_web3web6method17h1a05bf0de1e50cdbE
define void @_ZN9actix_web3web6method17h1a05bf0de1e50cdbE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !11358 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN9actix_web5route5Route3new17hd8ea532171087dc4E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN9actix_web5route5Route6method17hb7c83ac69d7372ecE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17hd6b68afe6593fa5cE"(ptr noalias noundef align 8 dereferenceable(24) %1) #53
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header15accept_encoding14AcceptEncoding10preference17h788d095e6ebff5aaE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !11368 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !32 ; 3 uses
  %i.d = icmp ult i64 %i.c, 288230376151711744
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775807, ptr %0, align 8
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h340e484570534fcbE.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !32, !noundef !32 ; 3 uses
  %.idx = shl nuw nsw i64 %i.c, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx ; 2 uses
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.519.sroa.5.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

"_ZN4core6option15Option$LT$T$GT$7or_else17h340e484570534fcbE.exit": ; preds = %bb.d, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h618004b67aed7cf0E.exit.i.i", %.loopexit.i.i, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph, %"_ZN4core3ptr147drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17h5fe535d6e3895cdeE.exit"
  %.sroa.01.059 = phi i16 [ 0, %.lr.ph ], [ %.sroa.01.1, %"_ZN4core3ptr147drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17h5fe535d6e3895cdeE.exit" ] ; 3 uses
  %.sroa.02.058 = phi i8 [ 0, %.lr.ph ], [ %.sroa.02.1, %"_ZN4core3ptr147drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17h5fe535d6e3895cdeE.exit" ] ; 2 uses
  %.sroa.020.057 = phi ptr [ %i.g, %.lr.ph ], [ %i.i, %"_ZN4core3ptr147drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17h5fe535d6e3895cdeE.exit" ] ; 8 uses
  %.sroa.0.056 = phi i64 [ -9223372036854775806, %.lr.ph ], [ %.sroa.0.1, %"_ZN4core3ptr147drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17h5fe535d6e3895cdeE.exit" ] ; 4 uses
  %.sroa.8.055 = phi ptr [ undef, %.lr.ph ], [ %.sroa.8.1, %"_ZN4core3ptr147drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17h5fe535d6e3895cdeE.exit" ] ; 4 uses
  %.sroa.12.054 = phi i64 [ undef, %.lr.ph ], [ %.sroa.12.1, %"_ZN4core3ptr147drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17h5fe535d6e3895cdeE.exit" ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.020.057, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.020.057, i64 24
  %i.k = load i16, ptr %i.j, align 8, !noundef !32 ; 8 uses
  %i.l = icmp eq i16 %i.k, 0
  br i1 %i.l, label %bb.i, label %bb.f

._crit_edge:                                      ; preds = %"_ZN4core3ptr147drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17h5fe535d6e3895cdeE.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !11369)
  call void @llvm.experimental.noalias.scope.decl(metadata !11370)
  %.not.i = icmp eq i64 %.sroa.0.1, -9223372036854775806
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  store i64 %.sroa.0.1, ptr %0, align 8, !alias.scope !11371
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !11371
  %.sroa.644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.1, ptr %.sroa.644.0..sroa_idx, align 8, !alias.scope !11371
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h340e484570534fcbE.exit"

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !11372)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.split.backedge.i.i.i
  %i.m = phi ptr [ %i.n, %.split.backedge.i.i.i ], [ %i.g, %bb.e ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.o = load i64, ptr %i.m, align 8, !range !44, !noalias !11373, !noundef !32
  switch i64 %i.o, label %.split.backedge.i.i.i [
    i64 -9223372036854775807, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h618004b67aed7cf0E.exit.i.i"
    i64 -9223372036854775808, label %"_ZN9actix_web4http6header15accept_encoding14AcceptEncoding10preference28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hd6592286fc371964E.exit.i.i.i"
  ]

"_ZN9actix_web4http6header15accept_encoding14AcceptEncoding10preference28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hd6592286fc371964E.exit.i.i.i": ; preds = %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load i8, ptr %i.p, align 8, !range !57, !noalias !11373, !noundef !32
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h618004b67aed7cf0E.exit.i.i", label %.split.backedge.i.i.i

.split.backedge.i.i.i:                            ; preds = %"_ZN9actix_web4http6header15accept_encoding14AcceptEncoding10preference28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hd6592286fc371964E.exit.i.i.i", %.lr.ph.i.i.i
  %i.s = icmp eq ptr %i.n, %i.h
  br i1 %i.s, label %.loopexit.i.i, label %.lr.ph.i.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h618004b67aed7cf0E.exit.i.i": ; preds = %"_ZN9actix_web4http6header15accept_encoding14AcceptEncoding10preference28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hd6592286fc371964E.exit.i.i.i", %.lr.ph.i.i.i
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !11374
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h340e484570534fcbE.exit"

.loopexit.i.i:                                    ; preds = %.split.backedge.i.i.i
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !11374
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !11374
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h340e484570534fcbE.exit"

bb.f:                                             ; preds = %bb.c
  %i.t = load i64, ptr %.sroa.020.057, align 8, !range !44, !noundef !32
  switch i64 %i.t, label %bb.g [
    i64 -9223372036854775807, label %bb.i
    i64 -9223372036854775808, label %switch.lookup
  ]

bb.g:                                             ; preds = %bb.f
  br label %bb.i

switch.lookup:                                    ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.020.057, i64 8
  %i.v = load i8, ptr %i.u, align 8, !range !57, !noundef !32
  %i.w = shl nuw nsw i8 %i.v, 3
  %switch.shiftamt = zext nneg i8 %i.w to i40
  %switch.downshift = lshr i40 17230333184, %switch.shiftamt
  %switch.masked = trunc i40 %switch.downshift to i8
  br label %bb.i

bb.h:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr147drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17h5fe535d6e3895cdeE"(i64 %.sroa.0.056, ptr %.sroa.8.055) #53
  resume { ptr, i32 } %i.x

bb.i:                                             ; preds = %switch.lookup, %bb.g, %bb.c, %bb.f
  %.sroa.04.0 = phi i8 [ 0, %bb.c ], [ 1, %bb.g ], [ 0, %bb.f ], [ %switch.masked, %switch.lookup ] ; 6 uses
  %cond.i.not = icmp eq i16 %i.k, %.sroa.01.059
  %i.y = icmp ugt i16 %i.k, %.sroa.01.059
  %i.z = icmp ugt i8 %.sroa.04.0, %.sroa.02.058
  %.sroa.06.0 = select i1 %cond.i.not, i1 %i.z, i1 %i.y
  br i1 %.sroa.06.0, label %bb.j, label %"_ZN4core3ptr147drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17h5fe535d6e3895cdeE.exit"

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %.sroa.020.057, align 8, !range !44, !noundef !32 ; 2 uses
  switch i64 %i.aa, label %bb.m [
    i64 -9223372036854775807, label %bb.k
    i64 -9223372036854775808, label %bb.n
  ]

"_ZN4core3ptr147drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17h5fe535d6e3895cdeE.exit": ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.l, %bb.i
  %.sroa.12.1 = phi i64 [ %.sroa.12.054, %bb.i ], [ %.sroa.5.sroa.4.0, %bb.l ], [ %.sroa.5.sroa.4.0, %bb.k ], [ %.sroa.5.sroa.4.0, %bb.k ], [ %.sroa.5.sroa.4.0, %bb.k ], [ %.sroa.5.sroa.4.0, %bb.k ] ; 2 uses
  %.sroa.8.1 = phi ptr [ %.sroa.8.055, %bb.i ], [ %.sroa.5.sroa.0.0, %bb.l ], [ %.sroa.5.sroa.0.0, %bb.k ], [ %.sroa.5.sroa.0.0, %bb.k ], [ %.sroa.5.sroa.0.0, %bb.k ], [ %.sroa.5.sroa.0.0, %bb.k ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.056, %bb.i ], [ %.sroa.07.0, %bb.l ], [ %.sroa.07.0, %bb.k ], [ %.sroa.07.0, %bb.k ], [ %.sroa.07.0, %bb.k ], [ %.sroa.07.0, %bb.k ] ; 3 uses
  %.sroa.02.1 = phi i8 [ %.sroa.02.058, %bb.i ], [ %.sroa.04.0, %bb.l ], [ %.sroa.04.0, %bb.k ], [ %.sroa.04.0, %bb.k ], [ %.sroa.04.0, %bb.k ], [ %.sroa.04.0, %bb.k ]
  %.sroa.01.1 = phi i16 [ %.sroa.01.059, %bb.i ], [ %i.k, %bb.l ], [ %i.k, %bb.k ], [ %i.k, %bb.k ], [ %i.k, %bb.k ], [ %i.k, %bb.k ]
  %.not = icmp eq ptr %i.i, %i.h
  br i1 %.not, label %._crit_edge, label %bb.c

bb.k:                                             ; preds = %bb.j, %bb.n, %bb.o
  %.sroa.5.sroa.4.0 = phi i64 [ undef, %bb.j ], [ %.sroa.519.sroa.5.0.copyload, %bb.n ], [ %.sroa.519.sroa.5.0.copyload46, %bb.o ] ; 5 uses
  %.sroa.5.sroa.0.0 = phi ptr [ undef, %bb.j ], [ %.sroa.519.sroa.0.0.copyload, %bb.n ], [ %.sroa.519.sroa.0.0.copyload45, %bb.o ] ; 5 uses
  %.sroa.07.0 = phi i64 [ %i.aa, %bb.j ], [ -9223372036854775808, %bb.n ], [ %.sroa.017.0.copyload18, %bb.o ] ; 5 uses
  switch i64 %.sroa.0.056, label %bb.l [
    i64 -9223372036854775806, label %"_ZN4core3ptr147drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17h5fe535d6e3895cdeE.exit"
    i64 -9223372036854775807, label %"_ZN4core3ptr147drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17h5fe535d6e3895cdeE.exit"
    i64 -9223372036854775808, label %"_ZN4core3ptr147drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17h5fe535d6e3895cdeE.exit"
    i64 0, label %"_ZN4core3ptr147drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17h5fe535d6e3895cdeE.exit"
  ]

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.055) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.055, i64 noundef %.sroa.0.056, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !11375
  br label %"_ZN4core3ptr147drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17h5fe535d6e3895cdeE.exit"

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.020.057, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @554)
          to label %bb.o unwind label %bb.h

bb.n:                                             ; preds = %bb.j
  %.sroa.519.0..sroa.03.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.020.057, i64 8
  %.sroa.519.sroa.0.0.copyload = load ptr, ptr %.sroa.519.0..sroa.03.0..sroa_idx, align 8
  %.sroa.519.sroa.5.0..sroa.519.0..sroa.03.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.020.057, i64 16
  %.sroa.519.sroa.5.0.copyload = load i64, ptr %.sroa.519.sroa.5.0..sroa.519.0..sroa.03.0..sroa_idx.sroa_idx, align 8
  br label %bb.k

bb.o:                                             ; preds = %bb.m
  %.sroa.017.0.copyload18 = load i64, ptr %i.a, align 8
  %.sroa.519.sroa.0.0.copyload45 = load ptr, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.5.0.copyload46 = load i64, ptr %.sroa.519.sroa.5.0..sroa.519.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header15accept_encoding14AcceptEncoding12ranked_items17h72777727209556b9E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !11398 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.422.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !32 ; 6 uses
  %i.g = icmp ult i64 %i.f, 288230376151711744
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8, !alias.scope !11399
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.i, align 8, !alias.scope !11399
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !alias.scope !11399
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !alias.scope !11399
  br label %bb.l

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.l, align 8, !nonnull !32, !noundef !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11400)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11401
  %i.m = shl nuw nsw i64 %i.f, 5                  ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !11402
  %i.n = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, 9) 8) #46, !noalias !11402 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i"

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @571) #52, !noalias !11401
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  store i64 %i.f, ptr %i.c, align 8, !noalias !11401
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !11401
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i", %bb.g
  %.sroa.013.035.i.i = phi ptr [ %.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i" ], [ %i.s, %bb.g ] ; 5 uses
  %.sroa.7.034.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i" ], [ %i.t, %bb.g ] ; 3 uses
  %.sroa.10.033.i.i = phi i64 [ %i.f, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i" ], [ %2, %bb.g ]
  %2 = add nsw i64 %.sroa.10.033.i.i, -1          ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.035.i.i, i64 32
  %i.t = add nuw nsw i64 %.sroa.7.034.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !11403)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11401
  %i.u = load i64, ptr %.sroa.013.035.i.i, align 8, !range !44, !alias.scope !11404, !noalias !11405, !noundef !32 ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 -9223372036854775807, label %bb.g
    i64 -9223372036854775808, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.013.035.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @554)
          to label %"_ZN82_$LT$actix_web..http..header..encoding..Encoding$u20$as$u20$core..clone..Clone$GT$5clone17hd4415a86631a91cbE.exit.i.i.i.i" unwind label %bb.h, !noalias !11406

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.013.035.i.i, i64 24, i1 false), !noalias !11407
  br label %"_ZN82_$LT$actix_web..http..header..encoding..Encoding$u20$as$u20$core..clone..Clone$GT$5clone17hd4415a86631a91cbE.exit.i.i.i.i"

"_ZN82_$LT$actix_web..http..header..encoding..Encoding$u20$as$u20$core..clone..Clone$GT$5clone17hd4415a86631a91cbE.exit.i.i.i.i": ; preds = %bb.f, %bb.e
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.b, align 8, !noalias !11408
  br label %bb.g

bb.g:                                             ; preds = %"_ZN82_$LT$actix_web..http..header..encoding..Encoding$u20$as$u20$core..clone..Clone$GT$5clone17hd4415a86631a91cbE.exit.i.i.i.i", %bb.d
  %.sroa.0.0.i12.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i, %"_ZN82_$LT$actix_web..http..header..encoding..Encoding$u20$as$u20$core..clone..Clone$GT$5clone17hd4415a86631a91cbE.exit.i.i.i.i" ], [ %i.u, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.035.i.i, i64 24
  %i.w = load i16, ptr %i.v, align 8, !alias.scope !11409, !noalias !11405, !noundef !32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.422.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.422.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !noalias !11401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11401
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.7.034.i.i ; 3 uses
  store i64 %.sroa.0.0.i12.i.i, ptr %i.x, align 8, !noalias !11406
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.422.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.422.i.i, i64 16, i1 false), !noalias !11406
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i16 %i.w, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !11406
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.422.i.i)
  %i.y = icmp eq i64 %2, 0
  br i1 %i.y, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7dba8b275dddaf69E.exit", label %bb.d

common.resume:                                    ; preds = %bb.m, %bb.h
  %.sink = phi ptr [ %i.d, %bb.m ], [ %i.c, %bb.h ]
  %common.resume.op = phi { ptr, i32 } [ %i.al, %bb.m ], [ %lpad.loopexit.i.i, %bb.h ]
  call fastcc void @"_ZN4core3ptr203drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$$GT$17hde1ab4660770297bE"(ptr noalias noundef align 8 dereferenceable(24) %.sink) #53
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.e
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.034.i.i, ptr %i.q, align 8, !alias.scope !11410, !noalias !11401
  br label %common.resume

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7dba8b275dddaf69E.exit": ; preds = %bb.g
  store i64 %i.f, ptr %i.q, align 8, !noalias !11401
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !11400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11401
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !32, !noundef !32 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11411
  %i.ad = icmp ult i64 %i.ac, 2
  br i1 %i.ad, label %.loopexit, label %bb.i, !prof !36

bb.i:                                             ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7dba8b275dddaf69E.exit"
  %i.ae = icmp ult i64 %i.ac, 21
  br i1 %i.ae, label %bb.k, label %bb.j, !prof !36

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h88c5b1a02b87627fE(ptr noalias noundef nonnull align 8 %i.aa, i64 noundef %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.loopexit unwind label %bb.m

bb.k:                                             ; preds = %bb.i
  %.idx.i.i.i = shl nuw nsw i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i.i.i
  %.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.k
  %.sroa.0.03.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.01.i.i.i, %bb.k ] ; 2 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h54b556b9d6601ae0E(ptr noundef nonnull align 8 %i.aa, ptr noundef %.sroa.0.03.i.i.i)
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i, %i.af
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

bb.l:                                             ; preds = %.loopexit, %bb.b
  ret void

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %bb.j, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7dba8b275dddaf69E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11411
  %.sroa.08.0.copyload = load i64, ptr %i.d, align 8
  %i.ag = icmp ult i64 %i.ac, 288230376151711744
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.ac
  store ptr %i.aa, ptr %0, align 8, !alias.scope !11412
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.08.0.copyload, ptr %i.ai, align 8, !alias.scope !11412
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.aj, align 8, !alias.scope !11412
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %i.ak, align 8, !alias.scope !11412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.m:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header15accept_encoding14AcceptEncoding6ranked17h137886dc8ab97c95E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !11440 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11441
  call void @_ZN9actix_web4http6header15accept_encoding14AcceptEncoding12ranked_items17h72777727209556b9E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11449)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !11450, !noalias !11441, !noundef !32 ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !11450, !noalias !11441, !nonnull !32, !noundef !32 ; 7 uses
  %i.f = shl i64 %i.d, 5                          ; 5 uses
  %i.g = udiv i64 %i.f, 24                        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11453)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !11454, !noalias !11441, !nonnull !32, !noundef !32 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !11454, !noalias !11441 ; 3 uses
  %.not12.i.i.i.i.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i, %i.i
  br i1 %.not12.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.4.013.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i.i.i, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.013.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !11455
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.a
  %i.n = phi ptr [ %.promoted.i.i.i.i.i.i.i.i, %bb.a ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.e, %bb.a ], [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.o = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i to i64
  %i.p = ptrtoint ptr %i.e to i64
  %i.q = sub nuw i64 %i.o, %i.p
  %i.r = udiv exact i64 %i.q, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11456
  store ptr %i.e, ptr %i.a, align 8, !noalias !11456
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %i.s, align 8, !noalias !11456
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.d, ptr %i.t, align 8, !noalias !11456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11457)
  %i.u = ptrtoint ptr %i.i to i64
  %i.v = ptrtoint ptr %i.n to i64
  %i.w = sub nuw i64 %i.u, %i.v
  %i.x = lshr exact i64 %i.w, 5
  store i64 0, ptr %i.c, align 8, !alias.scope !11458, !noalias !11441
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !alias.scope !11458, !noalias !11441
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !alias.scope !11458, !noalias !11441
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !alias.scope !11458, !noalias !11441
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11459)
  %i.y = icmp eq ptr %i.i, %i.n
  br i1 %i.y, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h716c632562611cd3E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %"_ZN4core3ptr180drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17hbadaf0316661b28cE.exit.i.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i.i = phi i64 [ %i.aa, %"_ZN4core3ptr180drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17hbadaf0316661b28cE.exit.i.i.i.i.i.i.i" ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.0.011.i.i.i.i.i.i.i ; 2 uses
  %i.aa = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !range !44, !alias.scope !11459, !noalias !11460, !noundef !32 ; 2 uses
  %switch.i.i.i.i.i.i.i = icmp sgt i64 %.val8.i.i.i.i.i.i.i, 0
  br i1 %switch.i.i.i.i.i.i.i, label %bb.b, label %"_ZN4core3ptr180drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17hbadaf0316661b28cE.exit.i.i.i.i.i.i.i"

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ab = getelementptr i8, ptr %i.z, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !11459, !noalias !11460, !nonnull !32, !noundef !32
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !11461
  br label %"_ZN4core3ptr180drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17hbadaf0316661b28cE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr180drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17hbadaf0316661b28cE.exit.i.i.i.i.i.i.i": ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i
  %i.ac = icmp eq i64 %i.aa, %i.x
  br i1 %i.ac, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h716c632562611cd3E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr340drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$C$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17hbe6730ab52dca72cE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #53, !noalias !11456
  call fastcc void @"_ZN4core3ptr353drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$$C$actix_web..http..header..accept_encoding..AcceptEncoding..ranked..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hef921b6b02525536E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #53, !noalias !11462
  resume { ptr, i32 } %i.ad

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h716c632562611cd3E.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr180drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17hbadaf0316661b28cE.exit.i.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd3b5b1b9f89eab48E.exit, label %bb.d

bb.d:                                             ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h716c632562611cd3E.exit.i.i.i.i.i"
  %i.ae = mul nuw i64 %i.g, 24                    ; 4 uses
  %.not49.i.i.i.i.i = icmp eq i64 %i.f, %i.ae
  br i1 %.not49.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd3b5b1b9f89eab48E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = icmp eq i64 %i.f, 0
  br i1 %i.af, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd3b5b1b9f89eab48E.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp ule i64 %i.ae, %i.f
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.f, i64 noundef 8, i64 noundef %i.ae) #46, !noalias !11456 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.g, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd3b5b1b9f89eab48E.exit, !prof !39

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.ae) #52
          to label %bb.h unwind label %bb.c, !noalias !11456

bb.h:                                             ; preds = %bb.g
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17hd3b5b1b9f89eab48E.exit: ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h716c632562611cd3E.exit.i.i.i.i.i", %bb.d, %bb.e, %bb.f
  %.sroa.01.0.i.i.i.i.i = phi ptr [ %i.e, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h716c632562611cd3E.exit.i.i.i.i.i" ], [ %i.e, %bb.d ], [ %i.ah, %bb.f ], [ inttoptr (i64 8 to ptr), %bb.e ]
  store i64 %i.g, ptr %0, align 8, !alias.scope !11463
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.01.0.i.i.i.i.i, ptr %i.aj, align 8, !alias.scope !11463
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %i.ak, align 8, !alias.scope !11463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11441
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header15accept_language14AcceptLanguage10preference17h17a0d86cd4bd8cdbE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !11468 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !32, !noundef !32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !32 ; 2 uses
  %.idx = mul nuw nsw i64 %i.e, 80
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not4656 = icmp eq i64 %i.e, 0
  br i1 %.not4656, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit"
  %.sroa.023.067 = phi i16 [ 0, %.lr.ph ], [ %.sroa.023.1, %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit" ] ; 2 uses
  %.sroa.024.066 = phi ptr [ %i.c, %.lr.ph ], [ %i.j, %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit" ] ; 7 uses
  %.sroa.0.065 = phi i64 [ -9223372036854775807, %.lr.ph ], [ %.sroa.0.1, %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit" ] ; 5 uses
  %.sroa.8.064 = phi ptr [ undef, %.lr.ph ], [ %.sroa.8.1, %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit" ] ; 5 uses
  %.sroa.13.063 = phi i64 [ undef, %.lr.ph ], [ %.sroa.13.1, %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit" ]
  %i.g = phi <2 x i64> [ undef, %.lr.ph ], [ %i.n, %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit" ]
  %i.h = phi <2 x i64> [ undef, %.lr.ph ], [ %i.o, %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit" ]
  %i.i = phi <2 x i64> [ undef, %.lr.ph ], [ %i.p, %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit" ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.024.066, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.024.066, i64 72
  %i.l = load i16, ptr %i.k, align 8, !noundef !32 ; 5 uses
  %i.m = icmp ugt i16 %i.l, %.sroa.023.067
  br i1 %i.m, label %bb.c, label %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit"

._crit_edge:                                      ; preds = %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit"
  %.not28 = icmp eq i64 %.sroa.0.1, -9223372036854775807
  br i1 %.not28, label %._crit_edge.thread, label %"_ZN4core3ptr102drop_in_place$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$17h4edb119732b9bbd9E.exit"

"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit": ; preds = %bb.e, %bb.e, %bb.e, %bb.f, %bb.b
  %.sroa.13.1 = phi i64 [ %.sroa.13.063, %bb.b ], [ %.sroa.5.sroa.0.sroa.4.0, %bb.f ], [ %.sroa.5.sroa.0.sroa.4.0, %bb.e ], [ %.sroa.5.sroa.0.sroa.4.0, %bb.e ], [ %.sroa.5.sroa.0.sroa.4.0, %bb.e ] ; 2 uses
  %.sroa.8.1 = phi ptr [ %.sroa.8.064, %bb.b ], [ %.sroa.5.sroa.0.sroa.0.0, %bb.f ], [ %.sroa.5.sroa.0.sroa.0.0, %bb.e ], [ %.sroa.5.sroa.0.sroa.0.0, %bb.e ], [ %.sroa.5.sroa.0.sroa.0.0, %bb.e ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.065, %bb.b ], [ %.sroa.01.0, %bb.f ], [ %.sroa.01.0, %bb.e ], [ %.sroa.01.0, %bb.e ], [ %.sroa.01.0, %bb.e ] ; 3 uses
  %.sroa.023.1 = phi i16 [ %.sroa.023.067, %bb.b ], [ %i.l, %bb.f ], [ %i.l, %bb.e ], [ %i.l, %bb.e ], [ %i.l, %bb.e ]
  %i.n = phi <2 x i64> [ %i.g, %bb.b ], [ %i.r, %bb.f ], [ %i.r, %bb.e ], [ %i.r, %bb.e ], [ %i.r, %bb.e ] ; 2 uses
  %i.o = phi <2 x i64> [ %i.h, %bb.b ], [ %i.s, %bb.f ], [ %i.s, %bb.e ], [ %i.s, %bb.e ], [ %i.s, %bb.e ] ; 2 uses
  %i.p = phi <2 x i64> [ %i.i, %bb.b ], [ %i.t, %bb.f ], [ %i.t, %bb.e ], [ %i.t, %bb.e ], [ %i.t, %bb.e ] ; 2 uses
  %.not46 = icmp eq ptr %i.j, %i.f
  br i1 %.not46, label %._crit_edge, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr %.sroa.024.066, align 8, !range !37, !noundef !32
  %.not = icmp eq i64 %i.q, -9223372036854775808
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.024.066, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @434)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.h
  %.sroa.5.sroa.0.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %.sroa.415.sroa.4.0.copyload, %bb.h ] ; 4 uses
  %.sroa.5.sroa.0.sroa.0.0 = phi ptr [ undef, %bb.c ], [ %.sroa.415.sroa.0.0.copyload, %bb.h ] ; 4 uses
  %.sroa.01.0 = phi i64 [ -9223372036854775808, %bb.c ], [ %.sroa.014.0.copyload, %bb.h ] ; 4 uses
  %i.r = phi <2 x i64> [ undef, %bb.c ], [ %i.w, %bb.h ] ; 4 uses
  %i.s = phi <2 x i64> [ undef, %bb.c ], [ %i.y, %bb.h ] ; 4 uses
  %i.t = phi <2 x i64> [ undef, %bb.c ], [ %i.aa, %bb.h ] ; 4 uses
  switch i64 %.sroa.0.065, label %bb.f [
    i64 -9223372036854775807, label %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit"
    i64 -9223372036854775808, label %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit"
    i64 0, label %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit"
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.064) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.064, i64 noundef %.sroa.0.065, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !11469
  br label %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit"

bb.g:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  switch i64 %.sroa.0.065, label %bb.j [
    i64 -9223372036854775807, label %bb.i
    i64 -9223372036854775808, label %bb.i
    i64 0, label %bb.i
  ]

bb.h:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.024.066, i64 24
  %i.w = load <2 x i64>, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.024.066, i64 40
  %i.y = load <2 x i64>, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.024.066, i64 56
  %i.aa = load <2 x i64>, ptr %i.z, align 8
  %.sroa.014.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.415.sroa.0.0.copyload = load ptr, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.415.sroa.4.0.copyload = load i64, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

"_ZN4core3ptr102drop_in_place$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$17h4edb119732b9bbd9E.exit": ; preds = %._crit_edge
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.13.1, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.n, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i64> %i.o, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i64> %i.p, ptr %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge, %"_ZN4core3ptr102drop_in_place$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$17h4edb119732b9bbd9E.exit"
  %.sroa.0.0.lcssa.sink = phi i64 [ %.sroa.0.1, %"_ZN4core3ptr102drop_in_place$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$17h4edb119732b9bbd9E.exit" ], [ -9223372036854775808, %._crit_edge ], [ -9223372036854775808, %bb.a ]
  store i64 %.sroa.0.0.lcssa.sink, ptr %0, align 8
  ret void

bb.i:                                             ; preds = %bb.j, %bb.g, %bb.g, %bb.g
  resume { ptr, i32 } %i.u

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.064) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.064, i64 noundef %.sroa.0.065, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !11470
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header15accept_language14AcceptLanguage6ranked17h73cc2535e2f66fb5E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !11518 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.422.i.i = alloca [64 x i8], align 8      ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !32 ; 6 uses
  %i.i = icmp ult i64 %i.h, 115292150460684698
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8
  br label %bb.k

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.m, align 8, !nonnull !32, !noundef !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11519)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11520
  %i.n = mul nuw nsw i64 %i.h, 80                 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !11521
  %i.o = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, 9) 8) #46, !noalias !11521 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i"

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @571) #52, !noalias !11520
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  store i64 %i.h, ptr %i.e, align 8, !noalias !11520
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !11520
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.d

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i", %bb.f
  %.sroa.013.035.i.i = phi ptr [ %.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i" ], [ %i.w, %bb.f ] ; 7 uses
  %.sroa.7.034.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i" ], [ %i.x, %bb.f ] ; 3 uses
  %.sroa.10.033.i.i = phi i64 [ %i.h, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i" ], [ %2, %bb.f ]
  %2 = add nsw i64 %.sroa.10.033.i.i, -1          ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.035.i.i, i64 80
  %i.x = add nuw nsw i64 %.sroa.7.034.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !11522)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11520
  %i.y = load i64, ptr %.sroa.013.035.i.i, align 8, !range !37, !alias.scope !11523, !noalias !11524, !noundef !32
  %.not.i.i.i.i = icmp eq i64 %i.y, -9223372036854775808
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.013.035.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @434)
          to label %.noexc.i.i unwind label %bb.g, !noalias !11525

.noexc.i.i:                                       ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.035.i.i, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.013.035.i.i, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.013.035.i.i, i64 56
  %i.ac = load <2 x i64>, ptr %i.z, align 8, !alias.scope !11526, !noalias !11524
  store <2 x i64> %i.ac, ptr %i.s, align 8, !noalias !11527
  %i.ad = load <2 x i64>, ptr %i.aa, align 8, !alias.scope !11526, !noalias !11524
  store <2 x i64> %i.ad, ptr %i.t, align 8, !noalias !11527
  %i.ae = load <2 x i64>, ptr %i.ab, align 8, !alias.scope !11526, !noalias !11524
  store <2 x i64> %i.ae, ptr %i.u, align 8, !noalias !11527
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.d, align 8, !noalias !11527
  br label %bb.f

bb.f:                                             ; preds = %.noexc.i.i, %bb.d
  %.sroa.0.0.i12.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i, %.noexc.i.i ], [ -9223372036854775808, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.013.035.i.i, i64 72
  %i.ag = load i16, ptr %i.af, align 8, !alias.scope !11528, !noalias !11524, !noundef !32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.422.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.422.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.v, i64 64, i1 false), !noalias !11520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11520
  %i.ah = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.7.034.i.i ; 3 uses
  store i64 %.sroa.0.0.i12.i.i, ptr %i.ah, align 8, !noalias !11525
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.422.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.422.i.i, i64 64, i1 false), !noalias !11525
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  store i16 %i.ag, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !11525
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.422.i.i)
  %i.ai = icmp eq i64 %2, 0
  br i1 %i.ai, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hec9ee5395934ef23E.exit", label %bb.d

common.resume:                                    ; preds = %.body, %bb.v, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.i.i, %bb.g ], [ %i.bv, %bb.v ], [ %i.ap, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.034.i.i, ptr %i.r, align 8, !alias.scope !11529, !noalias !11520
  call fastcc void @"_ZN4core3ptr186drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$$GT$17h12ff89f94f19a767E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #53, !noalias !11525
  br label %common.resume

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hec9ee5395934ef23E.exit": ; preds = %bb.f
  store i64 %i.h, ptr %i.r, align 8, !noalias !11520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !11519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11520
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !32, !noundef !32 ; 13 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !32 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11530
  %i.an = icmp ult i64 %i.am, 2
  br i1 %i.an, label %bb.l, label %bb.h, !prof !36

bb.h:                                             ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hec9ee5395934ef23E.exit"
  %i.ao = icmp ult i64 %i.am, 21
  br i1 %i.ao, label %bb.j, label %bb.i, !prof !36

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17hf0e40f45a62d7de1E(ptr noalias noundef nonnull align 8 %i.ak, i64 noundef %i.am, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.l unwind label %bb.v

bb.j:                                             ; preds = %bb.h
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h782a46af7c17f943E(ptr noalias noundef nonnull align 8 %i.ak, i64 noundef %i.am)
  br label %bb.l

bb.k:                                             ; preds = %bb.u, %bb.b
  ret void

.body:                                            ; preds = %bb.s
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr306drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$C$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17h72556f0f40fc7053E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #53, !noalias !11531
  call fastcc void @"_ZN4core3ptr336drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$$C$actix_web..http..header..accept_language..AcceptLanguage..ranked..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h31367caf4e2423cbE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #53, !noalias !11532
  br label %common.resume

bb.l:                                             ; preds = %bb.i, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hec9ee5395934ef23E.exit", %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11530
  %.sroa.07.0.copyload = load i64, ptr %i.f, align 8 ; 3 uses
  %i.aq = icmp ult i64 %i.am, 115292150460684698
  call void @llvm.assume(i1 %i.aq)
  %.idx = mul nuw nsw i64 %i.am, 80
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11533)
  call void @llvm.experimental.noalias.scope.decl(metadata !11534)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11535
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !11536)
  call void @llvm.experimental.noalias.scope.decl(metadata !11537)
  call void @llvm.experimental.noalias.scope.decl(metadata !11538)
  call void @llvm.experimental.noalias.scope.decl(metadata !11539)
  call void @llvm.experimental.noalias.scope.decl(metadata !11540)
  call void @llvm.experimental.noalias.scope.decl(metadata !11541)
  %i.as = mul i64 %.sroa.07.0.copyload, 80        ; 7 uses
  %i.at = udiv i64 %i.as, 72                      ; 2 uses
  %.not12.i.i.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not12.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.4.013.i.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ak, %bb.l ] ; 2 uses
  %i.au = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ak, %bb.l ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 80 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.013.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.au, i64 72, i1 false), !noalias !11542
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.ar
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.l
  %i.ax = phi ptr [ %i.ak, %bb.l ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.l ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ay = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i to i64
  %i.az = ptrtoint ptr %i.ak to i64
  %i.ba = sub nuw i64 %i.ay, %i.az
  %i.bb = udiv exact i64 %i.ba, 72                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11531
  store ptr %i.ak, ptr %i.a, align 8, !noalias !11531
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !noalias !11531
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.07.0.copyload, ptr %i.bd, align 8, !noalias !11531
  call void @llvm.experimental.noalias.scope.decl(metadata !11543)
  %i.be = ptrtoint ptr %i.ar to i64
  %i.bf = ptrtoint ptr %i.ax to i64
  %i.bg = sub nuw i64 %i.be, %i.bf
  %i.bh = udiv exact i64 %i.bg, 80
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !11544, !noalias !11535
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !alias.scope !11544, !noalias !11535
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !11544, !noalias !11535
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.66.0..sroa_idx, align 8, !alias.scope !11544, !noalias !11535
  call void @llvm.experimental.noalias.scope.decl(metadata !11545)
  %i.bi = icmp eq ptr %i.ar, %i.ax
  br i1 %i.bi, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hb4826d2434ca663bE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %"_ZN4core3ptr163drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17h4d37a6c4baa51f26E.exit.i.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i.i = phi i64 [ %i.bk, %"_ZN4core3ptr163drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17h4d37a6c4baa51f26E.exit.i.i.i.i.i.i.i" ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [80 x i8], ptr %i.ax, i64 %.sroa.0.011.i.i.i.i.i.i.i ; 2 uses
  %i.bk = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i = load i64, ptr %i.bj, align 8, !range !37, !alias.scope !11545, !noalias !11546, !noundef !32 ; 2 uses
  %switch.i.i.i.i.i.i.i = icmp sgt i64 %.val8.i.i.i.i.i.i.i, 0
  br i1 %switch.i.i.i.i.i.i.i, label %bb.m, label %"_ZN4core3ptr163drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17h4d37a6c4baa51f26E.exit.i.i.i.i.i.i.i"

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bl = getelementptr i8, ptr %i.bj, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !11545, !noalias !11546, !nonnull !32, !noundef !32
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !11547
  br label %"_ZN4core3ptr163drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17h4d37a6c4baa51f26E.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr163drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17h4d37a6c4baa51f26E.exit.i.i.i.i.i.i.i": ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i
  %i.bm = icmp eq i64 %i.bk, %i.bh
  br i1 %i.bm, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hb4826d2434ca663bE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hb4826d2434ca663bE.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr163drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17h4d37a6c4baa51f26E.exit.i.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.07.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.n

bb.n:                                             ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hb4826d2434ca663bE.exit.i.i.i.i.i"
  %i.bn = mul nuw i64 %i.at, 72                   ; 4 uses
  %.not49.i.i.i.i.i = icmp eq i64 %i.as, %i.bn
  br i1 %.not49.i.i.i.i.i, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = icmp ult i64 %i.as, 72
  br i1 %i.bo, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bp = icmp eq i64 %i.as, 0
  br i1 %i.bp, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.as, i64 noundef 8) #46, !noalias !11531
  br label %bb.u

bb.r:                                             ; preds = %bb.o
  %i.bq = icmp ule i64 %i.bn, %i.as
  call void @llvm.assume(i1 %i.bq)
  %i.br = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.ak, i64 noundef %i.as, i64 noundef 8, i64 noundef %i.bn) #46, !noalias !11531 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.s, label %bb.u, !prof !39

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.bn) #52
          to label %bb.t unwind label %.body, !noalias !11531

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.n, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hb4826d2434ca663bE.exit.i.i.i.i.i"
  %.sroa.01.0.i.i.i.i.i = phi ptr [ %i.ak, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hb4826d2434ca663bE.exit.i.i.i.i.i" ], [ %i.ak, %bb.n ], [ %i.br, %bb.r ], [ inttoptr (i64 8 to ptr), %bb.q ], [ inttoptr (i64 8 to ptr), %bb.p ]
  store i64 %i.at, ptr %0, align 8, !alias.scope !11548
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.01.0.i.i.i.i.i, ptr %i.bt, align 8, !alias.scope !11548
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bb, ptr %i.bu, align 8, !alias.scope !11548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.v:                                             ; preds = %bb.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr186drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$$GT$17h12ff89f94f19a767E"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #53
  br label %common.resume
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_ZN9actix_web4http6header19content_disposition18ContentDisposition12get_filename17h5f7124d8cebb995bE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #26 personality ptr @rust_eh_personality !guid !11555 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !32, !noundef !32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !32 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 144
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h82a80edb4561139aE.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.i, i64 144 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h82a80edb4561139aE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !range !35, !alias.scope !11556, !noalias !11557, !noundef !32
  %.not.i = icmp eq i64 %i.j, -9223372036854775807
  br i1 %.not.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h58e3c7dbe02ecc4dE.exit.thread.split.loop.exit13.i", label %bb.b

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h58e3c7dbe02ecc4dE.exit.thread.split.loop.exit13.i": ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !11556, !noalias !11557, !nonnull !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !11556, !noalias !11557
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h82a80edb4561139aE.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h82a80edb4561139aE.exit": ; preds = %bb.b, %bb.a, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h58e3c7dbe02ecc4dE.exit.thread.split.loop.exit13.i"
  %.sroa.3.0.i = phi i64 [ %i.n, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h58e3c7dbe02ecc4dE.exit.thread.split.loop.exit13.i" ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0.i = phi ptr [ %i.l, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h58e3c7dbe02ecc4dE.exit.thread.split.loop.exit13.i" ], [ null, %bb.a ], [ null, %bb.b ]
  %i.o = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.p = insertvalue { ptr, i64 } %i.o, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.p
end_hunk_0
begin_hunk_1_@_ZN9actix_web4http6header6accept6Accept10preference17hdb9302611cbcb7c5E:bb.a

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = load i64, ptr %i.a, align 8, !range !49, !noundef !32
  %i.t = icmp eq i64 %i.s, 2
  br i1 %i.t, label %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i8, ptr %i.i, align 8, !range !38, !noundef !32
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val.i.i.i.i = load i64, ptr %i.j, align 8     ; 2 uses
  %i.w = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.w, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val1.i.i.i.i = load ptr, ptr %i.k, align 8, !nonnull !32, !noundef !32
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !11802
  br label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i"

"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i": ; preds = %bb.i, %bb.h, %bb.g
  %.val.i.i = load i64, ptr %i.l, align 8, !range !31, !noundef !32 ; 3 uses
  %i.x = icmp ne i64 %.val.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.x)
  %or.cond.i4.i.i = icmp slt i64 %.val.i.i, 1
  br i1 %or.cond.i4.i.i, label %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit", label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i"
  %.val1.i.i = load ptr, ptr %i.m, align 8, !nonnull !32, !noundef !32
  %i.y = shl nuw i64 %.val.i.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !11803
  br label %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit"

"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit": ; preds = %bb.j, %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i", %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit": ; preds = %._crit_edge
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, i64 80, i1 false)
  store i64 %.sroa.01.0.copyload.pre, ptr %0, align 8
  br label %bb.k

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @674, i64 16, i1 false)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -9223372036854775806, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @674, i64 32), i64 16, i1 false)
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %.sroa.614.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @674, i64 49), i64 7, i1 false)
  %.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 ptrtoint (ptr @673 to i64), ptr %.sroa.716.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr inttoptr (i64 3 to ptr), ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @674, i64 72), i64 16, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit", %._crit_edge.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header6accept6Accept4html17hf9ddfd537db9048eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 !guid !11804 {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef 8) #46 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !40

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 96) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) @676, i64 88, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i16 1000, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header6accept6Accept4json17h5483acf2f09739ebE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 !guid !11805 {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef 8) #46 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !40

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 96) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) @678, i64 88, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i16 1000, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header6accept6Accept4star17h3987aa14a97bc303E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 !guid !11806 {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef 8) #46 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !40

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 96) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) @674, i64 88, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i16 1000, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header6accept6Accept4text17h5e7e3bc9439b1b3fE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 !guid !11807 {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef 8) #46 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !40

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 96) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) @680, i64 88, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i16 1000, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header6accept6Accept5image17h9688ecde952453e6E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 !guid !11808 {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef 8) #46 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !40

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 96) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) @682, i64 88, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i16 1000, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header6accept6Accept6ranked17h5c31449181035c80E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !11858 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [96 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !32 ; 6 uses
  %i.i = icmp ult i64 %i.h, 96076792050570582
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8
  br label %bb.j

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.m, align 8, !nonnull !32, !noundef !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11859)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11860
  %i.n = mul nuw nsw i64 %i.h, 96                 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !11861
  %i.o = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, 9) 8) #46, !noalias !11861 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i"

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @571) #52, !noalias !11860
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  store i64 %i.h, ptr %i.e, align 8, !noalias !11860
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !11860
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  br label %bb.d

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i", %bb.e
  %.sroa.012.023.i.i = phi ptr [ %.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i" ], [ %i.u, %bb.e ] ; 3 uses
  %.sroa.7.022.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i" ], [ %i.t, %bb.e ] ; 3 uses
  %.sroa.10.021.i.i = phi i64 [ %i.h, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i" ], [ %2, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11860
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11863)
  invoke fastcc void @"_ZN49_$LT$mime..Mime$u20$as$u20$core..clone..Clone$GT$5clone17he158e8ae0cbadfb2E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.012.023.i.i)
          to label %bb.e unwind label %bb.f, !noalias !11864

bb.e:                                             ; preds = %bb.d
  %2 = add nsw i64 %.sroa.10.021.i.i, -1          ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.7.022.i.i, 1
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i, i64 88
  %i.w = load i16, ptr %i.v, align 8, !alias.scope !11865, !noalias !11866, !noundef !32
  store i16 %i.w, ptr %i.s, align 8, !alias.scope !11862, !noalias !11860
  %i.x = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %.sroa.7.022.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false), !noalias !11864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11860
  %i.y = icmp eq i64 %2, 0
  br i1 %i.y, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h322e336dbc5a7fd6E.exit", label %bb.d

common.resume:                                    ; preds = %.body, %bb.w, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.i.i, %bb.f ], [ %i.bu, %bb.w ], [ %i.af, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i.i, ptr %i.r, align 8, !alias.scope !11867, !noalias !11860
  call fastcc void @"_ZN4core3ptr115drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$GT$17hf817c962f99692d4E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #53, !noalias !11864
  br label %common.resume

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h322e336dbc5a7fd6E.exit": ; preds = %bb.e
  store i64 %i.h, ptr %i.r, align 8, !noalias !11860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !11859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11860
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !32, !noundef !32 ; 13 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !32 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11868
  %i.ad = icmp ult i64 %i.ac, 2
  br i1 %i.ad, label %bb.k, label %bb.g, !prof !36

bb.g:                                             ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h322e336dbc5a7fd6E.exit"
  %i.ae = icmp ult i64 %i.ac, 21
  br i1 %i.ae, label %bb.i, label %bb.h, !prof !36

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17hc310332344a5dac4E(ptr noalias noundef nonnull align 8 %i.aa, i64 noundef %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.k unwind label %bb.w

bb.i:                                             ; preds = %bb.g
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h954e04d66902a653E(ptr noalias noundef nonnull align 8 %i.aa, i64 noundef %i.ac)
          to label %bb.k unwind label %bb.w

bb.j:                                             ; preds = %bb.v, %bb.b
  ret void

.body:                                            ; preds = %bb.t
  %i.af = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr164drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$C$mime..Mime$GT$$GT$17hb28af52d0ed5479fE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #53, !noalias !11869
  call fastcc void @"_ZN4core3ptr248drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$C$actix_web..http..header..accept..Accept..ranked..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h256853844a9cf9f1E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #53, !noalias !11870
  br label %common.resume

bb.k:                                             ; preds = %bb.i, %bb.h, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h322e336dbc5a7fd6E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11868
  %.sroa.08.0.copyload = load i64, ptr %i.f, align 8 ; 3 uses
  %i.ag = icmp ult i64 %i.ac, 96076792050570582
  tail call void @llvm.assume(i1 %i.ag)
  %.idx = mul nuw nsw i64 %i.ac, 96
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11872)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11873
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11879)
  %i.ai = mul i64 %.sroa.08.0.copyload, 96        ; 7 uses
  %i.aj = udiv i64 %i.ai, 88                      ; 2 uses
  %.not12.i.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not12.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.4.013.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.aa, %bb.k ] ; 2 uses
  %i.ak = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.aa, %bb.k ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 96 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.013.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.ak, i64 88, i1 false), !noalias !11880
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.ah
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.k
  %i.an = phi ptr [ %i.aa, %bb.k ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.aa, %bb.k ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ao = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i to i64
  %i.ap = ptrtoint ptr %i.aa to i64
  %i.aq = sub nuw i64 %i.ao, %i.ap
  %i.ar = udiv exact i64 %i.aq, 88                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11869
  store ptr %i.aa, ptr %i.a, align 8, !noalias !11869
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !noalias !11869
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.08.0.copyload, ptr %i.at, align 8, !noalias !11869
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11881)
  %i.au = ptrtoint ptr %i.ah to i64
  %i.av = ptrtoint ptr %i.an to i64
  %i.aw = sub nuw i64 %i.au, %i.av
  %i.ax = udiv exact i64 %i.aw, 96
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !11882, !noalias !11873
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !alias.scope !11882, !noalias !11873
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx, align 8, !alias.scope !11882, !noalias !11873
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.67.0..sroa_idx, align 8, !alias.scope !11882, !noalias !11873
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11883)
  %i.ay = icmp eq ptr %i.ah, %i.an
  br i1 %i.ay, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hd67ca21da714113cE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i.i = phi i64 [ %i.ba, %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i.i.i" ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw [96 x i8], ptr %i.an, i64 %.sroa.0.07.i.i.i.i.i.i.i ; 5 uses
  %i.ba = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11885)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11886)
  %i.bc = load i8, ptr %i.bb, align 8, !range !38, !alias.scope !11887, !noalias !11888, !noundef !32
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11889)
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !11890, !noalias !11888 ; 2 uses
  %i.bf = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bf, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i.i.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !11890, !noalias !11888, !nonnull !32, !noundef !32
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !11891
  br label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.m, %bb.l, %.lr.ph.i.i.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bh, align 8, !range !31, !alias.scope !11892, !noalias !11888, !noundef !32 ; 3 uses
  %i.bi = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.bi)
  %or.cond.i4.i.i.i.i.i.i.i.i.i = icmp slt i64 %.val.i.i.i.i.i.i.i.i.i, 1
  br i1 %or.cond.i4.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i.i.i"
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !11892, !noalias !11888, !nonnull !32, !noundef !32
  %i.bk = shl nuw i64 %.val.i.i.i.i.i.i.i.i.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !11893
  br label %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i.i.i": ; preds = %bb.n, %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i.i.i"
  %i.bl = icmp eq i64 %i.ba, %i.ax
  br i1 %i.bl, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hd67ca21da714113cE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hd67ca21da714113cE.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.08.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.o

bb.o:                                             ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hd67ca21da714113cE.exit.i.i.i.i.i"
  %i.bm = mul nuw i64 %i.aj, 88                   ; 4 uses
  %.not49.i.i.i.i.i = icmp eq i64 %i.ai, %i.bm
  br i1 %.not49.i.i.i.i.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = icmp ult i64 %i.ai, 88
  br i1 %i.bn, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bo = icmp eq i64 %i.ai, 0
  br i1 %i.bo, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef %i.ai, i64 noundef 8) #46, !noalias !11869
  br label %bb.v

bb.s:                                             ; preds = %bb.p
  %i.bp = icmp ule i64 %i.bm, %i.ai
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.aa, i64 noundef %i.ai, i64 noundef 8, i64 noundef %i.bm) #46, !noalias !11869 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.t, label %bb.v, !prof !39

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.bm) #52
          to label %bb.u unwind label %.body, !noalias !11869

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.o, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hd67ca21da714113cE.exit.i.i.i.i.i"
  %.sroa.01.0.i.i.i.i.i = phi ptr [ %i.aa, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hd67ca21da714113cE.exit.i.i.i.i.i" ], [ %i.aa, %bb.o ], [ %i.bq, %bb.s ], [ inttoptr (i64 8 to ptr), %bb.r ], [ inttoptr (i64 8 to ptr), %bb.q ]
  store i64 %i.aj, ptr %0, align 8, !alias.scope !11894
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.01.0.i.i.i.i.i, ptr %i.bs, align 8, !alias.scope !11894
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ar, ptr %i.bt, align 8, !alias.scope !11894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.w:                                             ; preds = %bb.i, %bb.h
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr115drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$GT$17hf817c962f99692d4E"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #53
  br label %common.resume
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN9actix_web4http6header6entity20check_slice_validity17ha9af411239614ccfE(ptr noalias noundef nonnull readonly align 1 captures(address) %0, i64 noundef %1) unnamed_addr #27 personality ptr @rust_eh_personality !guid !11897 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %.not.not.not.i.not2 = icmp samesign eq i64 %1, 0
  br i1 %.not.not.not.i.not2, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h4c288dec6bd8f8baE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.b = phi ptr [ %i.f, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.val.i = load i8, ptr %i.b, align 1, !noalias !11898, !noundef !32 ; 3 uses
end_hunk_1
