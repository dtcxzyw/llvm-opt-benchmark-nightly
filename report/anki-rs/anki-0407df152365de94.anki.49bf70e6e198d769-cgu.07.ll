Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.07?download=true
inline.NumInlined: 5610
inline.NumDeleted: 2048
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumUnrolled: 37
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@_ZN4anki5serde18default_on_invalid17hf31c060e5b3c0620E:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !8839)
  call void @llvm.experimental.noalias.scope.decl(metadata !8842)
  %i.i = load i32, ptr %i.a, align 8, !range !421, !alias.scope !8842, !noalias !8839, !noundef !5
  %i.j = trunc nuw i32 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.0.0.copyload9 = load i32, ptr %i.k, align 4, !alias.scope !8844
  %.sroa.510.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.510, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.510.0..sroa_idx11, i64 40, i1 false), !alias.scope !8844
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h5b34dbe0c6f6fd18E.exit"

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val3.i = load ptr, ptr %i.l, align 8, !alias.scope !8842, !noalias !8839, !nonnull !5, !noundef !5 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8845)
  call void @llvm.experimental.noalias.scope.decl(metadata !8848)
  %i.m = load i64, ptr %.val3.i, align 8, !range !147, !alias.scope !8851, !noalias !8844, !noundef !5
  switch i64 %i.m, label %"_ZN4core3ptr153drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$anki..sync..collection..sanity..SanityCheckCounts$GT$$C$serde_json..error..Error$GT$$GT$17h70ac914f60b183fdE.exit.i" [
    i64 0, label %bb.f
    i64 1, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !8851, !noalias !8844, !noundef !5 ; 2 uses
  %i.o = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.o, label %"_ZN4core3ptr153drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$anki..sync..collection..sanity..SanityCheckCounts$GT$$C$serde_json..error..Error$GT$$GT$17h70ac914f60b183fdE.exit.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.val3.i, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !8851, !noalias !8844, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i, i64 noundef 1) #29, !noalias !8852
  br label %"_ZN4core3ptr153drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$anki..sync..collection..sanity..SanityCheckCounts$GT$$C$serde_json..error..Error$GT$$GT$17h70ac914f60b183fdE.exit.i"

bb.h:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.val3.i, i64 8
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !8851, !noalias !8844, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val2.i.i.i.i.i.i)
          to label %"_ZN4core3ptr153drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$anki..sync..collection..sanity..SanityCheckCounts$GT$$C$serde_json..error..Error$GT$$GT$17h70ac914f60b183fdE.exit.i" unwind label %bb.i, !noalias !8844

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef 40, i64 noundef 8) #29, !noalias !8844
  resume { ptr, i32 } %i.r

"_ZN4core3ptr153drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$anki..sync..collection..sanity..SanityCheckCounts$GT$$C$serde_json..error..Error$GT$$GT$17h70ac914f60b183fdE.exit.i": ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef 40, i64 noundef 8) #29, !noalias !8844
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h5b34dbe0c6f6fd18E.exit"

"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h5b34dbe0c6f6fd18E.exit": ; preds = %bb.d, %"_ZN4core3ptr153drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$anki..sync..collection..sanity..SanityCheckCounts$GT$$C$serde_json..error..Error$GT$$GT$17h70ac914f60b183fdE.exit.i"
  %.sroa.0.0 = phi i32 [ 0, %"_ZN4core3ptr153drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$anki..sync..collection..sanity..SanityCheckCounts$GT$$C$serde_json..error..Error$GT$$GT$17h70ac914f60b183fdE.exit.i" ], [ %.sroa.0.0.copyload9, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.0, ptr %i.s, align 4
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.510.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(40) %.sroa.510, i64 40, i1 false)
  store i32 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510)
  br label %bb.j

bb.j:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h5b34dbe0c6f6fd18E.exit", %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki5serde18default_on_invalid17hfee3eef06bae67eaE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 7 uses
  %i.b = alloca [88 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hef0618edcc235835E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef align 8 dereferenceable(64) %1)
  %i.e = load i8, ptr %i.d, align 8, !range !1016, !noundef !5 ; 2 uses
  %i.f = icmp eq i8 %i.e, 6
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !126, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, i64 7, i1 false)
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.68.0.copyload = load ptr, ptr %.sroa.68.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.8.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 %i.e, ptr %i.c, align 8
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.68.0.copyload, ptr %.sroa.63.0..sroa_idx4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN4anki10deckconfig8schema111_101_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..deckconfig..schema11..NewConfSchema11$GT$11deserialize17h9ad95500c68fe863E"(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !8853)
  call void @llvm.experimental.noalias.scope.decl(metadata !8856)
  %i.j = load i64, ptr %i.a, align 8, !range !450, !alias.scope !8856, !noalias !8853, !noundef !5
  %i.k = icmp eq i64 %i.j, -9223372036854775808
  br i1 %i.k, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN86_$LT$anki..deckconfig..schema11..NewConfSchema11$u20$as$u20$core..default..Default$GT$7default17hed5e30d715cab003E"(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.b)
          to label %bb.e unwind label %bb.g, !noalias !8856

.thread.i:                                        ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !alias.scope !8858
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17hec550a736ce2c79bE.exit"

bb.e:                                             ; preds = %bb.d
  call fastcc void @"_ZN4core3ptr119drop_in_place$LT$core..result..Result$LT$anki..deckconfig..schema11..NewConfSchema11$C$serde_json..error..Error$GT$$GT$17h3b58b19c419942f3E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a), !noalias !8853
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17hec550a736ce2c79bE.exit"

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.l

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr119drop_in_place$LT$core..result..Result$LT$anki..deckconfig..schema11..NewConfSchema11$C$serde_json..error..Error$GT$$GT$17h3b58b19c419942f3E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a) #27
          to label %bb.f unwind label %bb.h, !noalias !8853

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !8853
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17hec550a736ce2c79bE.exit": ; preds = %.thread.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.i:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17hec550a736ce2c79bE.exit", %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki5serde27deserialize_int_from_number17h7eefad9bbb594c95E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN4anki5serde27deserialize_int_from_number1_110_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..serde..deserialize_int_from_number..IntOrFloat$GT$11deserialize17h44c68948740eaa9fE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef align 8 dereferenceable(64) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !115, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = trunc nuw i64 %i.b to i1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = bitcast i64 %i.g to double
  %i.j = tail call i64 @llvm.fptosi.sat.i64.f64(double %i.i)
  %.sroa.0.0.i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.j, i64 0)
  %i.k = trunc i64 %.sroa.0.0.i.i to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.k, ptr %i.l, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.i.i6 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.g, i64 0)
  %i.m = trunc i64 %.sroa.0.0.i.i6 to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.m, ptr %i.n, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %storemerge = phi i32 [ 1, %bb.b ], [ 0, %bb.e ], [ 0, %bb.d ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_ZN4anki5serde27deserialize_int_from_number17hcd88b40249c7e774E(ptr noalias noundef align 8 dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN4anki5serde27deserialize_int_from_number1_110_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..serde..deserialize_int_from_number..IntOrFloat$GT$11deserialize17h44c68948740eaa9fE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef align 8 dereferenceable(64) %0)
  %i.b = load i64, ptr %i.a, align 8, !range !115, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %i.e to i64
  %1 = bitcast i64 %i.f to double
  %2 = tail call i64 @llvm.fptosi.sat.i64.f64(double %1)
  %3 = inttoptr i64 %2 to ptr
  %4 = and i64 %i.b, 1
  %5 = icmp eq i64 %4, 0
  %.sroa.4.1 = select i1 %5, ptr %i.e, ptr %3
  %.sroa.0.1 = zext i1 %i.c to i64
  %i.g = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.h = insertvalue { i64, ptr } %i.g, ptr %.sroa.4.1, 1
  ret { i64, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki5serde27deserialize_int_from_number17hd7933367fda1e740E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN4anki5serde27deserialize_int_from_number1_110_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..serde..deserialize_int_from_number..IntOrFloat$GT$11deserialize17h44c68948740eaa9fE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef align 8 dereferenceable(64) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !115, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = trunc nuw i64 %i.b to i1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = bitcast i64 %i.g to double
  %i.j = tail call i64 @llvm.fptosi.sat.i64.f64(double %i.i)
  %i.k = trunc i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.k, ptr %i.l, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = trunc i64 %i.g to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.m, ptr %i.n, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %storemerge = phi i32 [ 1, %bb.b ], [ 0, %bb.e ], [ 0, %bb.d ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4anki5serde27deserialize_int_from_number1_110_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..serde..deserialize_int_from_number..IntOrFloat$GT$11deserialize17h44c68948740eaa9fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN10serde_core2de12Deserializer24__deserialize_content_v117h49a93c87aebcb319E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  %i.d = load i8, ptr %i.b, align 8, !range !132, !noundef !5 ; 2 uses
  %i.e = icmp eq i8 %i.d, 22
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !align !126, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store i64 2, ptr %0, align 8
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.513.0..sroa_idx, i64 7, i1 false)
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.614.0.copyload = load ptr, ptr %.sroa.614.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 %i.d, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.614.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %i.i = invoke { i64, ptr } @"_ZN5serde7private2de7content31ContentRefDeserializer$LT$E$GT$19deserialize_integer17h9c69b98f67911886E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.u, %bb.m, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.d, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.t ], [ %i.t, %bb.l ], [ %i.j, %bb.d ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.c) #27
          to label %bb.y unwind label %bb.x

bb.e:                                             ; preds = %bb.c
  %i.k = extractvalue { i64, ptr } %i.i, 0
  %i.l = extractvalue { i64, ptr } %i.i, 1        ; 8 uses
  %i.m = trunc nuw i64 %i.k to i1
  br i1 %i.m, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = ptrtoint ptr %i.l to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %bb.f
  %.sink65 = phi i64 [ 1, %bb.o ], [ 0, %bb.f ]
  %.sink = phi i64 [ %i.x, %bb.o ], [ %i.n, %bb.f ]
  store i64 %.sink65, ptr %0, align 8
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %.sroa.257.0..sroa_idx, align 8
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.c)
  br label %bb.w

bb.h:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !8859)
  call void @llvm.experimental.noalias.scope.decl(metadata !8862)
  %i.o = load i64, ptr %i.l, align 8, !range !147, !alias.scope !8865, !noundef !5
  switch i64 %i.o, label %bb.m [
    i64 0, label %bb.i
    i64 1, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val1.i.i.i.i.i32 = load i64, ptr %i.p, align 8, !alias.scope !8865, !noundef !5 ; 2 uses
  %i.q = icmp eq i64 %.val1.i.i.i.i.i32, 0
  br i1 %i.q, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val.i.i.i.i.i33 = load ptr, ptr %i.r, align 8, !alias.scope !8865, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i33, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i32, i64 noundef 1) #29, !noalias !8865
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val2.i.i.i.i.i30 = load ptr, ptr %i.s, align 8, !alias.scope !8865, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val2.i.i.i.i.i30)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 40, i64 noundef 8) #29
  br label %.body

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 40, i64 noundef 8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN5serde7private2de7content31ContentRefDeserializer$LT$E$GT$17deserialize_float17h25333f9ebe96a682E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.n unwind label %bb.d

bb.n:                                             ; preds = %bb.m
  %i.u = load i64, ptr %i.a, align 8, !range !2379, !noundef !5
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.v, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = load i64, ptr %i.w, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.p:                                             ; preds = %bb.n
  %i.y = load ptr, ptr %i.w, align 8, !nonnull !5, !align !126, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !8866)
  call void @llvm.experimental.noalias.scope.decl(metadata !8869)
  %i.z = load i64, ptr %i.y, align 8, !range !147, !alias.scope !8872, !noundef !5
  switch i64 %i.z, label %bb.u [
    i64 0, label %bb.q
    i64 1, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val1.i.i.i.i.i48 = load i64, ptr %i.aa, align 8, !alias.scope !8872, !noundef !5 ; 2 uses
  %i.ab = icmp eq i64 %.val1.i.i.i.i.i48, 0
  br i1 %i.ab, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.val.i.i.i.i.i49 = load ptr, ptr %i.ac, align 8, !alias.scope !8872, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i49, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i48, i64 noundef 1) #29, !noalias !8872
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.val2.i.i.i.i.i46 = load ptr, ptr %i.ad, align 8, !alias.scope !8872, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val2.i.i.i.i.i46)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef 40, i64 noundef 8) #29
end_hunk_0
begin_hunk_1_@"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17hd36830c1d4057e0fE":bb.a
  %.sroa.643.0 = phi i64 [ %i.bt, %bb.m ], [ %i.ci, %bb.s ], [ %i.cx, %bb.y ], [ %i.dm, %bb.ae ], [ %i.eb, %bb.ak ], [ %..i, %bb.aj ], [ %..i, %bb.ag ] ; 3 uses
  %.sink.i = phi i64 [ 1, %bb.m ], [ 1, %bb.s ], [ 1, %bb.y ], [ 1, %bb.ae ], [ 1, %bb.ak ], [ 0, %bb.aj ], [ 0, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.ec = load i8, ptr %i.av, align 8, !noundef !5
  %i.ed = add i8 %i.ec, 1
  store i8 %i.ed, ptr %i.av, align 8
  %i.ee = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17ha68093a0673dde5fE"(ptr noalias noundef align 8 dereferenceable(80) %1)
          to label %bb.an unwind label %bb.am     ; 9 uses

bb.al:                                            ; preds = %bb.aw, %bb.g
  %.sink = phi ptr [ %i.es, %bb.aw ], [ %i.bd, %bb.g ]
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ef, align 8
  br label %bb.cw

bb.am:                                            ; preds = %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h1c0c132243fe33baE.exit"
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %i.eh = inttoptr i64 %.sroa.643.0 to ptr
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$core..result..Result$LT$anki..import_export..text..ForeignCard$C$serde_json..error..Error$GT$$GT$17hbacc3fbb58043607E"(i64 %.sink.i, ptr %i.eh) #27
          to label %common.resume unwind label %bb.aq

bb.an:                                            ; preds = %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h1c0c132243fe33baE.exit"
  %i.ei = inttoptr i64 %.sroa.643.0 to ptr        ; 3 uses
  %i.ej = trunc nuw i64 %.sink.i to i1
  br i1 %i.ej, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not27 = icmp eq ptr %i.ee, null
  br i1 %.not27, label %.split, label %.thread90, !prof !45

bb.ap:                                            ; preds = %bb.an
  %i.ek = icmp ne i64 %.sroa.643.0, 0
  tail call void @llvm.assume(i1 %i.ek)
  %.not123 = icmp eq ptr %i.ee, null
  br i1 %.not123, label %.thread90, label %bb.ar

bb.aq:                                            ; preds = %bb.am, %bb.cn
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.ar:                                            ; preds = %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23052)
  %i.em = load i64, ptr %i.ee, align 8, !range !147, !alias.scope !23055, !noundef !5
  switch i64 %i.em, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit" [
    i64 0, label %bb.as
    i64 1, label %bb.au
  ]

bb.as:                                            ; preds = %bb.ar
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.en, align 8, !alias.scope !23055, !noundef !5 ; 2 uses
  %i.eo = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.eo, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit", label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.ep, align 8, !alias.scope !23055, !nonnull !5, !noundef !5
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #29, !noalias !23055
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit"

bb.au:                                            ; preds = %bb.ar
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.val2.i.i.i.i = load ptr, ptr %i.eq, align 8, !alias.scope !23055, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val2.i.i.i.i)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit" unwind label %bb.av

common.resume:                                    ; preds = %bb.cn, %bb.am, %bb.cv, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %i.er, %bb.av ], [ %i.kd, %bb.cv ], [ %i.jw, %bb.cn ], [ %i.eg, %bb.am ]
  resume { ptr, i32 } %common.resume.op

bb.av:                                            ; preds = %bb.au
  %i.er = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ee, i64 noundef 40, i64 noundef 8) #29
  br label %common.resume

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit": ; preds = %bb.ar, %bb.as, %bb.at, %bb.au
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ee, i64 noundef 40, i64 noundef 8) #29
  br label %.thread90

bb.aw:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 24, ptr %i.af, align 8
  %i.es = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.al

bb.ax:                                            ; preds = %bb.f
  %i.et = add i64 %i.ao, 1
  store i64 %i.et, ptr %i.ai, align 8, !alias.scope !23056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %1, ptr %i.u, align 8, !noalias !23059
  %i.eu = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i8 1, ptr %i.eu, align 8, !noalias !23059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !23063
  call fastcc void @"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed12has_next_key17h2bf61f5c6485f86bE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u), !noalias !23070
  %i.ev = load i8, ptr %i.p, align 8, !range !448, !noalias !23063, !noundef !5
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %._crit_edge.i, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.ax
  %i.ex = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  br label %bb.ay

._crit_edge.i:                                    ; preds = %bb.bs, %bb.ax
  %i.fi = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !23071, !nonnull !5, !align !126, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !23071
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ab6f3adc679b931E.exit"

bb.ay:                                            ; preds = %bb.bs, %.lr.ph.i34
  %.sroa.04.0333.i = phi i64 [ 0, %.lr.ph.i34 ], [ %.sroa.04.1.i, %bb.bs ] ; 7 uses
  %.sroa.4.0332.i = phi i64 [ undef, %.lr.ph.i34 ], [ %.sroa.4.1.i, %bb.bs ] ; 6 uses
  %.sroa.012.0331.i = phi i32 [ 0, %.lr.ph.i34 ], [ %.sroa.012.1.i, %bb.bs ] ; 7 uses
  %.sroa.414.0330.i = phi i32 [ undef, %.lr.ph.i34 ], [ %.sroa.414.1.i, %bb.bs ] ; 6 uses
  %.sroa.020.0329.i = phi i32 [ 0, %.lr.ph.i34 ], [ %.sroa.020.1.i, %bb.bs ] ; 7 uses
  %.sroa.422.0328.i = phi float [ undef, %.lr.ph.i34 ], [ %.sroa.422.1.i, %bb.bs ] ; 6 uses
  %.sroa.028.0327.i = phi i32 [ 0, %.lr.ph.i34 ], [ %.sroa.028.1.i, %bb.bs ] ; 7 uses
  %.sroa.430.0326.i = phi i32 [ undef, %.lr.ph.i34 ], [ %.sroa.430.1.i, %bb.bs ] ; 6 uses
  %.sroa.036.0325.i = phi i32 [ 0, %.lr.ph.i34 ], [ %.sroa.036.1.i, %bb.bs ] ; 7 uses
  %.sroa.438.0324.i = phi i32 [ undef, %.lr.ph.i34 ], [ %.sroa.438.1.i, %bb.bs ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23074)
  call void @llvm.experimental.noalias.scope.decl(metadata !23075)
  %i.fk = load i8, ptr %i.ex, align 1, !range !448, !noalias !23071, !noundef !5
  %i.fl = trunc nuw i8 %i.fk to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !23071
  br i1 %i.fl, label %bb.az, label %_ZN10serde_core2de9MapAccess8next_key17he1c989001bc0f1b8E.exit.thread98.i

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !23071
  %i.fm = load ptr, ptr %i.u, align 8, !alias.scope !23076, !noalias !23077, !nonnull !5, !align !126, !noundef !5 ; 28 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23078)
  call void @llvm.experimental.noalias.scope.decl(metadata !23081)
  call void @llvm.experimental.noalias.scope.decl(metadata !23084)
  call void @llvm.experimental.noalias.scope.decl(metadata !23087)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24 ; 7 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 40 ; 20 uses
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !23090, !noalias !23093, !noundef !5
  %i.fq = add i64 %i.fp, 1
  store i64 %i.fq, ptr %i.fo, align 8, !alias.scope !23090, !noalias !23093
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i64 0, ptr %i.fr, align 8, !alias.scope !23098, !noalias !23093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !23099
  call void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17h8029598f5bdd8687E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.fn, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.fm), !noalias !23093
  %i.fs = load i64, ptr %i.n, align 8, !range !115, !noalias !23099, !noundef !5
  %i.ft = icmp eq i64 %i.fs, 2
  %i.fu = load ptr, ptr %i.ey, align 8, !noalias !23099, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.ft, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hffeec7297a530d30E.exit.thread.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hffeec7297a530d30E.exit.i.i.i"

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hffeec7297a530d30E.exit.thread.i.i.i": ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !23099
  br label %bb.ba

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hffeec7297a530d30E.exit.i.i.i": ; preds = %bb.az
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !23099
  call fastcc void @"_ZN198_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17ha9c0f3bb0e716d1dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fu, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i), !noalias !23100
  %.pre.i.i.i = load i8, ptr %i.o, align 8, !range !448, !noalias !23071
  %i.fv = trunc nuw i8 %.pre.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !23099
  br i1 %i.fv, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hffeec7297a530d30E.exit.i._crit_edge.i.i", label %_ZN10serde_core2de9MapAccess8next_key17he1c989001bc0f1b8E.exit.i

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hffeec7297a530d30E.exit.i._crit_edge.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hffeec7297a530d30E.exit.i.i.i"
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !23071
  br label %bb.ba

bb.ba:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hffeec7297a530d30E.exit.i._crit_edge.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hffeec7297a530d30E.exit.thread.i.i.i"
  %i.fw = phi ptr [ %.pre.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hffeec7297a530d30E.exit.i._crit_edge.i.i" ], [ %i.fu, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hffeec7297a530d30E.exit.thread.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !23071
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ab6f3adc679b931E.exit"

_ZN10serde_core2de9MapAccess8next_key17he1c989001bc0f1b8E.exit.i: ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hffeec7297a530d30E.exit.i.i.i"
  %i.fx = load i8, ptr %i.ez, align 1, !range !569, !noalias !23071, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !23071
  switch i8 %i.fx, label %default.unreachable [
    i8 5, label %bb.bg
    i8 0, label %bb.bb
    i8 1, label %bb.bc
    i8 2, label %bb.bd
    i8 3, label %bb.be
    i8 4, label %bb.bf
  ]

_ZN10serde_core2de9MapAccess8next_key17he1c989001bc0f1b8E.exit.thread98.i: ; preds = %bb.ay
  %i.fy = trunc nuw i64 %.sroa.04.0333.i to i1
  %i.fz = trunc nuw i32 %.sroa.012.0331.i to i1
  %.sroa.049.0.i = select i1 %i.fz, i32 %.sroa.414.0330.i, i32 0
  %i.ga = trunc nuw i32 %.sroa.020.0329.i to i1
  %.sroa.050.0.i = select i1 %i.ga, float %.sroa.422.0328.i, float 0.000000e+00
  %i.gb = trunc nuw i32 %.sroa.028.0327.i to i1
  %.sroa.051.0.i = select i1 %i.gb, i32 %.sroa.430.0326.i, i32 0
  %i.gc = trunc nuw i32 %.sroa.036.0325.i to i1
  %.sroa.052.0.i = select i1 %i.gc, i32 %.sroa.438.0324.i, i32 0
  %i.gd = inttoptr i64 %.sroa.4.0332.i to ptr
  %6 = select i1 %i.fy, ptr %i.gd, ptr null
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ab6f3adc679b931E.exit"

default.unreachable:                              ; preds = %_ZN10serde_core2de9MapAccess8next_key17he1c989001bc0f1b8E.exit.i
  unreachable

bb.bb:                                            ; preds = %_ZN10serde_core2de9MapAccess8next_key17he1c989001bc0f1b8E.exit.i
  %i.ge = icmp eq i64 %.sroa.04.0333.i, 1
  br i1 %i.ge, label %bb.bk, label %bb.bl, !prof !116

bb.bc:                                            ; preds = %_ZN10serde_core2de9MapAccess8next_key17he1c989001bc0f1b8E.exit.i
  %i.gf = icmp eq i32 %.sroa.012.0331.i, 1
  br i1 %i.gf, label %bb.bt, label %bb.bu, !prof !116

bb.bd:                                            ; preds = %_ZN10serde_core2de9MapAccess8next_key17he1c989001bc0f1b8E.exit.i
  %i.gg = icmp eq i32 %.sroa.020.0329.i, 1
  br i1 %i.gg, label %bb.by, label %bb.bz, !prof !116

bb.be:                                            ; preds = %_ZN10serde_core2de9MapAccess8next_key17he1c989001bc0f1b8E.exit.i
  %i.gh = icmp eq i32 %.sroa.028.0327.i, 1
  br i1 %i.gh, label %bb.cd, label %bb.ce, !prof !116

bb.bf:                                            ; preds = %_ZN10serde_core2de9MapAccess8next_key17he1c989001bc0f1b8E.exit.i
  %i.gi = icmp eq i32 %.sroa.036.0325.i, 1
  br i1 %i.gi, label %bb.ci, label %bb.cj, !prof !116

bb.bg:                                            ; preds = %_ZN10serde_core2de9MapAccess8next_key17he1c989001bc0f1b8E.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23101)
  call void @llvm.experimental.noalias.scope.decl(metadata !23104)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !23107, !noalias !23112, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.fo, align 8, !alias.scope !23116, !noalias !23117 ; 2 uses
  %i.gl = icmp ult i64 %.promoted.i.i.i.i.i, %i.gk
  br i1 %i.gl, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bg
  %i.gm = load ptr, ptr %i.fn, align 8, !alias.scope !23107, !noalias !23112, !nonnull !5, !align !23, !noundef !5
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bi, %.lr.ph.i.i.i.i.i
  %i.gn = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.gq, %bb.bi ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23118)
  call void @llvm.experimental.noalias.scope.decl(metadata !23119)
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !noalias !23120, !noundef !5
  switch i8 %i.gp, label %bb.bj [
    i8 32, label %bb.bi
    i8 10, label %bb.bi
    i8 9, label %bb.bi
    i8 13, label %bb.bi
    i8 58, label %_ZN10serde_core2de9MapAccess10next_value17haee100b54517eb96E.exit.i
  ], !prof !476

bb.bi:                                            ; preds = %bb.bh, %bb.bh, %bb.bh, %bb.bh
  %i.gq = add i64 %i.gn, 1                        ; 3 uses
  store i64 %i.gq, ptr %i.fo, align 8, !alias.scope !23121, !noalias !23117
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.gq, %i.gk
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.bh

.loopexit.i.i.i.i:                                ; preds = %bb.bg, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !23124
  store i64 3, ptr %i.l, align 8, !noalias !23124
  %i.gr = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.fm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l), !noalias !23125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !23124
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ab6f3adc679b931E.exit"

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !23124
  store i64 6, ptr %i.m, align 8, !noalias !23124
  %i.gs = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.fm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !noalias !23125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !23124
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ab6f3adc679b931E.exit"

_ZN10serde_core2de9MapAccess10next_value17haee100b54517eb96E.exit.i: ; preds = %bb.bh
  %i.gt = add i64 %i.gn, 1
  store i64 %i.gt, ptr %i.fo, align 8, !alias.scope !23126, !noalias !23125
  %i.gu = call fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$12ignore_value17hc52a355ff55369d6E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.fm), !noalias !23125 ; 2 uses
  %.not60.i = icmp eq ptr %i.gu, null
  br i1 %.not60.i, label %bb.bs, label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ab6f3adc679b931E.exit"

bb.bk:                                            ; preds = %bb.bb
  %i.gv = call noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15duplicate_field17hd01d99523bf6430eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @82, i64 noundef 3), !noalias !23125
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ab6f3adc679b931E.exit"

bb.bl:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !23129)
  call void @llvm.experimental.noalias.scope.decl(metadata !23132)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !23135, !noalias !23140, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i67.i = load i64, ptr %i.fo, align 8, !alias.scope !23144, !noalias !23145 ; 2 uses
  %i.gy = icmp ult i64 %.promoted.i.i.i.i67.i, %i.gx
  br i1 %i.gy, label %.lr.ph.i.i.i.i69.i, label %.loopexit.i.i.i68.i

.lr.ph.i.i.i.i69.i:                               ; preds = %bb.bl
  %i.gz = load ptr, ptr %i.fn, align 8, !alias.scope !23135, !noalias !23140, !nonnull !5, !align !23, !noundef !5
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bn, %.lr.ph.i.i.i.i69.i
  %i.ha = phi i64 [ %.promoted.i.i.i.i67.i, %.lr.ph.i.i.i.i69.i ], [ %i.hd, %bb.bn ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23146)
  call void @llvm.experimental.noalias.scope.decl(metadata !23147)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !noalias !23148, !noundef !5
  switch i8 %i.hc, label %bb.bo [
    i8 32, label %bb.bn
    i8 10, label %bb.bn
    i8 9, label %bb.bn
    i8 13, label %bb.bn
    i8 58, label %bb.bq
  ], !prof !476

bb.bn:                                            ; preds = %bb.bm, %bb.bm, %bb.bm, %bb.bm
  %i.hd = add i64 %i.ha, 1                        ; 3 uses
  store i64 %i.hd, ptr %i.fo, align 8, !alias.scope !23149, !noalias !23145
  %exitcond.not.i.i.i.i70.i = icmp eq i64 %i.hd, %i.gx
  br i1 %exitcond.not.i.i.i.i70.i, label %.loopexit.i.i.i68.i, label %bb.bm

.loopexit.i.i.i68.i:                              ; preds = %bb.bn, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !23152
  store i64 3, ptr %i.j, align 8, !noalias !23152
  %i.he = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.fm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !23125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !23152
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !23152
  store i64 6, ptr %i.k, align 8, !noalias !23152
  %i.hf = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.fm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !noalias !23125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !23152
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.loopexit.i.i.i68.i
  %.sroa.0.0.i.ph.i.i.i = phi ptr [ %i.he, %.loopexit.i.i.i68.i ], [ %i.hf, %bb.bo ]
  %i.hg = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.0.0.i.ph.i.i.i, 1
  br label %_ZN10serde_core2de9MapAccess10next_value17hc3e651fa9f0f5189E.exit.i

bb.bq:                                            ; preds = %bb.bm
  %i.hh = add i64 %i.ha, 1
  store i64 %i.hh, ptr %i.fo, align 8, !alias.scope !23153, !noalias !23125
  %i.hi = call { i64, ptr } @"_ZN10serde_json2de21Deserializer$LT$R$GT$18deserialize_number17hdce54207f643f354E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.fm), !noalias !23125
  br label %_ZN10serde_core2de9MapAccess10next_value17hc3e651fa9f0f5189E.exit.i

_ZN10serde_core2de9MapAccess10next_value17hc3e651fa9f0f5189E.exit.i: ; preds = %bb.bq, %bb.bp
  %.merged.i.i.i = phi { i64, ptr } [ %i.hg, %bb.bp ], [ %i.hi, %bb.bq ] ; 2 uses
  %i.hj = extractvalue { i64, ptr } %.merged.i.i.i, 0
  %i.hk = extractvalue { i64, ptr } %.merged.i.i.i, 1 ; 2 uses
  %i.hl = trunc nuw i64 %i.hj to i1
  br i1 %i.hl, label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ab6f3adc679b931E.exit", label %bb.br

bb.br:                                            ; preds = %_ZN10serde_core2de9MapAccess10next_value17hc3e651fa9f0f5189E.exit.i
  %i.hm = ptrtoint ptr %i.hk to i64
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.i, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.i, %bb.br, %_ZN10serde_core2de9MapAccess10next_value17haee100b54517eb96E.exit.i
  %.sroa.438.1.i = phi i32 [ %.sroa.438.0324.i, %bb.br ], [ %i.js, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.i ], [ %.sroa.438.0324.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.i ], [ %.sroa.438.0324.i, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.i ], [ %.sroa.438.0324.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.i ], [ %.sroa.438.0324.i, %_ZN10serde_core2de9MapAccess10next_value17haee100b54517eb96E.exit.i ]
  %.sroa.036.1.i = phi i32 [ %.sroa.036.0325.i, %bb.br ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.i ], [ %.sroa.036.0325.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.i ], [ %.sroa.036.0325.i, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.i ], [ %.sroa.036.0325.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.i ], [ %.sroa.036.0325.i, %_ZN10serde_core2de9MapAccess10next_value17haee100b54517eb96E.exit.i ]
  %.sroa.430.1.i = phi i32 [ %.sroa.430.0326.i, %bb.br ], [ %.sroa.430.0326.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.i ], [ %.sroa.430.0326.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.i ], [ %.sroa.430.0326.i, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.i ], [ %i.je, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.i ], [ %.sroa.430.0326.i, %_ZN10serde_core2de9MapAccess10next_value17haee100b54517eb96E.exit.i ]
  %.sroa.028.1.i = phi i32 [ %.sroa.028.0327.i, %bb.br ], [ %.sroa.028.0327.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.i ], [ %.sroa.028.0327.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.i ], [ %.sroa.028.0327.i, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.i ], [ %.sroa.028.0327.i, %_ZN10serde_core2de9MapAccess10next_value17haee100b54517eb96E.exit.i ]
  %.sroa.422.1.i = phi float [ %.sroa.422.0328.i, %bb.br ], [ %.sroa.422.0328.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.i ], [ %.sroa.422.0328.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.i ], [ %i.iq, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.i ], [ %.sroa.422.0328.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.i ], [ %.sroa.422.0328.i, %_ZN10serde_core2de9MapAccess10next_value17haee100b54517eb96E.exit.i ]
  %.sroa.020.1.i = phi i32 [ %.sroa.020.0329.i, %bb.br ], [ %.sroa.020.0329.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.i ], [ %.sroa.020.0329.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.i ], [ %.sroa.020.0329.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.i ], [ %.sroa.020.0329.i, %_ZN10serde_core2de9MapAccess10next_value17haee100b54517eb96E.exit.i ]
  %.sroa.414.1.i = phi i32 [ %.sroa.414.0330.i, %bb.br ], [ %.sroa.414.0330.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.i ], [ %i.ic, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.i ], [ %.sroa.414.0330.i, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.i ], [ %.sroa.414.0330.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.i ], [ %.sroa.414.0330.i, %_ZN10serde_core2de9MapAccess10next_value17haee100b54517eb96E.exit.i ]
  %.sroa.012.1.i = phi i32 [ %.sroa.012.0331.i, %bb.br ], [ %.sroa.012.0331.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.i ], [ %.sroa.012.0331.i, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.i ], [ %.sroa.012.0331.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.i ], [ %.sroa.012.0331.i, %_ZN10serde_core2de9MapAccess10next_value17haee100b54517eb96E.exit.i ]
  %.sroa.4.1.i = phi i64 [ %i.hm, %bb.br ], [ %.sroa.4.0332.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.i ], [ %.sroa.4.0332.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.i ], [ %.sroa.4.0332.i, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.i ], [ %.sroa.4.0332.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.i ], [ %.sroa.4.0332.i, %_ZN10serde_core2de9MapAccess10next_value17haee100b54517eb96E.exit.i ]
  %.sroa.04.1.i = phi i64 [ 1, %bb.br ], [ %.sroa.04.0333.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.i ], [ %.sroa.04.0333.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.i ], [ %.sroa.04.0333.i, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.i ], [ %.sroa.04.0333.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.i ], [ %.sroa.04.0333.i, %_ZN10serde_core2de9MapAccess10next_value17haee100b54517eb96E.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !23156
  call fastcc void @"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed12has_next_key17h2bf61f5c6485f86bE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u), !noalias !23070
  %i.hn = load i8, ptr %i.p, align 8, !range !448, !noalias !23156, !noundef !5
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %._crit_edge.i, label %bb.ay

bb.bt:                                            ; preds = %bb.bc
  %i.hp = call noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15duplicate_field17hd01d99523bf6430eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @83, i64 noundef 8), !noalias !23125
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ab6f3adc679b931E.exit"

bb.bu:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !23059
  call void @llvm.experimental.noalias.scope.decl(metadata !23159)
  call void @llvm.experimental.noalias.scope.decl(metadata !23162)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.hr = load i64, ptr %i.hq, align 8, !alias.scope !23165, !noalias !23170, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i71.i = load i64, ptr %i.fo, align 8, !alias.scope !23178, !noalias !23179 ; 2 uses
  %i.hs = icmp ult i64 %.promoted.i.i.i.i71.i, %i.hr
  br i1 %i.hs, label %.lr.ph.i.i.i.i74.i, label %.loopexit.i.i.i72.i

.lr.ph.i.i.i.i74.i:                               ; preds = %bb.bu
  %i.ht = load ptr, ptr %i.fn, align 8, !alias.scope !23165, !noalias !23170, !nonnull !5, !align !23, !noundef !5
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %.lr.ph.i.i.i.i74.i
  %i.hu = phi i64 [ %.promoted.i.i.i.i71.i, %.lr.ph.i.i.i.i74.i ], [ %i.hx, %bb.bw ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23180)
  call void @llvm.experimental.noalias.scope.decl(metadata !23181)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1, !noalias !23182, !noundef !5
  switch i8 %i.hw, label %bb.bx [
    i8 32, label %bb.bw
    i8 10, label %bb.bw
    i8 9, label %bb.bw
    i8 13, label %bb.bw
    i8 58, label %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.i
  ], !prof !476
end_hunk_1
begin_hunk_2_@"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17hd36830c1d4057e0fE":bb.a
  %i.if = load i64, ptr %i.ie, align 8, !alias.scope !23197, !noalias !23202, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i76.i = load i64, ptr %i.fo, align 8, !alias.scope !23210, !noalias !23211 ; 2 uses
  %i.ig = icmp ult i64 %.promoted.i.i.i.i76.i, %i.if
  br i1 %i.ig, label %.lr.ph.i.i.i.i79.i, label %.loopexit.i.i.i77.i

.lr.ph.i.i.i.i79.i:                               ; preds = %bb.bz
  %i.ih = load ptr, ptr %i.fn, align 8, !alias.scope !23197, !noalias !23202, !nonnull !5, !align !23, !noundef !5
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cb, %.lr.ph.i.i.i.i79.i
  %i.ii = phi i64 [ %.promoted.i.i.i.i76.i, %.lr.ph.i.i.i.i79.i ], [ %i.il, %bb.cb ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23212)
  call void @llvm.experimental.noalias.scope.decl(metadata !23213)
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !noalias !23214, !noundef !5
  switch i8 %i.ik, label %bb.cc [
    i8 32, label %bb.cb
    i8 10, label %bb.cb
    i8 9, label %bb.cb
    i8 13, label %bb.cb
    i8 58, label %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.i
  ], !prof !476

bb.cb:                                            ; preds = %bb.ca, %bb.ca, %bb.ca, %bb.ca
  %i.il = add i64 %i.ii, 1                        ; 3 uses
  store i64 %i.il, ptr %i.fo, align 8, !alias.scope !23215, !noalias !23211
  %exitcond.not.i.i.i.i80.i = icmp eq i64 %i.il, %i.if
  br i1 %exitcond.not.i.i.i.i80.i, label %.loopexit.i.i.i77.i, label %bb.ca

.loopexit.i.i.i77.i:                              ; preds = %bb.bz, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23218
  store i64 3, ptr %i.f, align 8, !noalias !23218
  %i.im = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.fm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !23219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23218
  br label %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.thread.i

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23218
  store i64 6, ptr %i.g, align 8, !noalias !23218
  %i.in = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.fm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !noalias !23219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23218
  br label %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.thread.i

_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.thread.i: ; preds = %bb.cc, %.loopexit.i.i.i77.i
  %.sroa.0.0.i.ph.i.i78.i = phi ptr [ %i.im, %.loopexit.i.i.i77.i ], [ %i.in, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !23059
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ab6f3adc679b931E.exit"

_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.i: ; preds = %bb.ca
  %i.io = add i64 %i.ii, 1
  store i64 %i.io, ptr %i.fo, align 8, !alias.scope !23220, !noalias !23219
  call fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd34f403ec2c4c8c4E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.s, ptr noalias noundef align 8 dereferenceable(80) %i.fm), !noalias !23125
  %.pre557.i = load i32, ptr %i.s, align 8, !range !421, !noalias !23059
  %.pre558.i = load ptr, ptr %i.fe, align 8, !noalias !23059
  %i.ip = trunc nuw i32 %.pre557.i to i1
  %i.iq = load float, ptr %i.ff, align 4, !noalias !23059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !23059
  br i1 %i.ip, label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ab6f3adc679b931E.exit", label %bb.bs

bb.cd:                                            ; preds = %bb.be
  %i.ir = call noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15duplicate_field17hd01d99523bf6430eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @85, i64 noundef 4), !noalias !23125
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ab6f3adc679b931E.exit"

bb.ce:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !23059
  call void @llvm.experimental.noalias.scope.decl(metadata !23223)
  call void @llvm.experimental.noalias.scope.decl(metadata !23226)
  %i.is = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.it = load i64, ptr %i.is, align 8, !alias.scope !23229, !noalias !23234, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i81.i = load i64, ptr %i.fo, align 8, !alias.scope !23242, !noalias !23243 ; 2 uses
  %i.iu = icmp ult i64 %.promoted.i.i.i.i81.i, %i.it
  br i1 %i.iu, label %.lr.ph.i.i.i.i84.i, label %.loopexit.i.i.i82.i

.lr.ph.i.i.i.i84.i:                               ; preds = %bb.ce
  %i.iv = load ptr, ptr %i.fn, align 8, !alias.scope !23229, !noalias !23234, !nonnull !5, !align !23, !noundef !5
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cg, %.lr.ph.i.i.i.i84.i
  %i.iw = phi i64 [ %.promoted.i.i.i.i81.i, %.lr.ph.i.i.i.i84.i ], [ %i.iz, %bb.cg ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23244)
  call void @llvm.experimental.noalias.scope.decl(metadata !23245)
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1, !noalias !23246, !noundef !5
  switch i8 %i.iy, label %bb.ch [
    i8 32, label %bb.cg
    i8 10, label %bb.cg
    i8 9, label %bb.cg
    i8 13, label %bb.cg
    i8 58, label %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.i
  ], !prof !476

bb.cg:                                            ; preds = %bb.cf, %bb.cf, %bb.cf, %bb.cf
  %i.iz = add i64 %i.iw, 1                        ; 3 uses
  store i64 %i.iz, ptr %i.fo, align 8, !alias.scope !23247, !noalias !23243
  %exitcond.not.i.i.i.i85.i = icmp eq i64 %i.iz, %i.it
  br i1 %exitcond.not.i.i.i.i85.i, label %.loopexit.i.i.i82.i, label %bb.cf

.loopexit.i.i.i82.i:                              ; preds = %bb.ce, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23250
  store i64 3, ptr %i.d, align 8, !noalias !23250
  %i.ja = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.fm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !23251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23250
  br label %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.thread.i

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23250
  store i64 6, ptr %i.e, align 8, !noalias !23250
  %i.jb = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.fm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !23251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23250
  br label %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.thread.i

_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.thread.i: ; preds = %bb.ch, %.loopexit.i.i.i82.i
  %.sroa.0.0.i.ph.i.i83.i = phi ptr [ %i.ja, %.loopexit.i.i.i82.i ], [ %i.jb, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !23059
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ab6f3adc679b931E.exit"

_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.i: ; preds = %bb.cf
  %i.jc = add i64 %i.iw, 1
  store i64 %i.jc, ptr %i.fo, align 8, !alias.scope !23252, !noalias !23251
  call fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h1ae42534d2fcda24E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.r, ptr noalias noundef align 8 dereferenceable(80) %i.fm), !noalias !23125
  %.pre555.i = load i32, ptr %i.r, align 8, !range !421, !noalias !23059
  %.pre556.i = load ptr, ptr %i.fc, align 8, !noalias !23059
  %i.jd = trunc nuw i32 %.pre555.i to i1
  %i.je = load i32, ptr %i.fd, align 4, !noalias !23059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !23059
  br i1 %i.jd, label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ab6f3adc679b931E.exit", label %bb.bs

bb.ci:                                            ; preds = %bb.bf
  %i.jf = call noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15duplicate_field17hd01d99523bf6430eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @86, i64 noundef 6), !noalias !23125
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ab6f3adc679b931E.exit"

bb.cj:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !23059
  call void @llvm.experimental.noalias.scope.decl(metadata !23255)
  call void @llvm.experimental.noalias.scope.decl(metadata !23258)
  %i.jg = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.jh = load i64, ptr %i.jg, align 8, !alias.scope !23261, !noalias !23266, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i87.i = load i64, ptr %i.fo, align 8, !alias.scope !23274, !noalias !23275 ; 2 uses
  %i.ji = icmp ult i64 %.promoted.i.i.i.i87.i, %i.jh
  br i1 %i.ji, label %.lr.ph.i.i.i.i90.i, label %.loopexit.i.i.i88.i

.lr.ph.i.i.i.i90.i:                               ; preds = %bb.cj
  %i.jj = load ptr, ptr %i.fn, align 8, !alias.scope !23261, !noalias !23266, !nonnull !5, !align !23, !noundef !5
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cl, %.lr.ph.i.i.i.i90.i
  %i.jk = phi i64 [ %.promoted.i.i.i.i87.i, %.lr.ph.i.i.i.i90.i ], [ %i.jn, %bb.cl ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23276)
  call void @llvm.experimental.noalias.scope.decl(metadata !23277)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !noalias !23278, !noundef !5
  switch i8 %i.jm, label %bb.cm [
    i8 32, label %bb.cl
    i8 10, label %bb.cl
    i8 9, label %bb.cl
    i8 13, label %bb.cl
    i8 58, label %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.i
  ], !prof !476

bb.cl:                                            ; preds = %bb.ck, %bb.ck, %bb.ck, %bb.ck
  %i.jn = add i64 %i.jk, 1                        ; 3 uses
  store i64 %i.jn, ptr %i.fo, align 8, !alias.scope !23279, !noalias !23275
  %exitcond.not.i.i.i.i91.i = icmp eq i64 %i.jn, %i.jh
  br i1 %exitcond.not.i.i.i.i91.i, label %.loopexit.i.i.i88.i, label %bb.ck

.loopexit.i.i.i88.i:                              ; preds = %bb.cj, %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23282
  store i64 3, ptr %i.b, align 8, !noalias !23282
  %i.jo = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.fm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !23283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23282
  br label %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.thread.i

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23282
  store i64 6, ptr %i.c, align 8, !noalias !23282
  %i.jp = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.fm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !23283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23282
  br label %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.thread.i

_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.thread.i: ; preds = %bb.cm, %.loopexit.i.i.i88.i
  %.sroa.0.0.i.ph.i.i89.i = phi ptr [ %i.jo, %.loopexit.i.i.i88.i ], [ %i.jp, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !23059
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ab6f3adc679b931E.exit"

_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.i: ; preds = %bb.ck
  %i.jq = add i64 %i.jk, 1
  store i64 %i.jq, ptr %i.fo, align 8, !alias.scope !23284, !noalias !23283
  call fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h1ae42534d2fcda24E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.q, ptr noalias noundef align 8 dereferenceable(80) %i.fm), !noalias !23125
  %.pre.i = load i32, ptr %i.q, align 8, !range !421, !noalias !23059
  %.pre554.i = load ptr, ptr %i.fa, align 8, !noalias !23059
  %i.jr = trunc nuw i32 %.pre.i to i1
  %i.js = load i32, ptr %i.fb, align 4, !noalias !23059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !23059
  br i1 %i.jr, label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ab6f3adc679b931E.exit", label %bb.bs

"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ab6f3adc679b931E.exit": ; preds = %_ZN10serde_core2de9MapAccess10next_value17haee100b54517eb96E.exit.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.i, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.i, %_ZN10serde_core2de9MapAccess10next_value17hc3e651fa9f0f5189E.exit.i, %.loopexit.i.i.i.i, %bb.bj, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.thread.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.thread.i, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.thread.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.thread.i, %._crit_edge.i, %bb.ba, %_ZN10serde_core2de9MapAccess8next_key17he1c989001bc0f1b8E.exit.thread98.i, %bb.bk, %bb.bt, %bb.by, %bb.cd, %bb.ci
  %.sroa.22.0 = phi i32 [ %.sroa.052.0.i, %_ZN10serde_core2de9MapAccess8next_key17he1c989001bc0f1b8E.exit.thread98.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.thread.i ], [ undef, %bb.bk ], [ undef, %._crit_edge.i ], [ undef, %bb.bt ], [ undef, %bb.bj ], [ undef, %bb.by ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.thread.i ], [ undef, %bb.cd ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.thread.i ], [ undef, %bb.ci ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.thread.i ], [ undef, %bb.ba ], [ undef, %.loopexit.i.i.i.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17hc3e651fa9f0f5189E.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17haee100b54517eb96E.exit.i ]
  %.sroa.21.0 = phi i32 [ %.sroa.051.0.i, %_ZN10serde_core2de9MapAccess8next_key17he1c989001bc0f1b8E.exit.thread98.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.thread.i ], [ undef, %bb.bk ], [ undef, %._crit_edge.i ], [ undef, %bb.bt ], [ undef, %bb.bj ], [ undef, %bb.by ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.thread.i ], [ undef, %bb.cd ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.thread.i ], [ undef, %bb.ci ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.thread.i ], [ undef, %bb.ba ], [ undef, %.loopexit.i.i.i.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17hc3e651fa9f0f5189E.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17haee100b54517eb96E.exit.i ]
  %.sroa.20.0 = phi float [ %.sroa.050.0.i, %_ZN10serde_core2de9MapAccess8next_key17he1c989001bc0f1b8E.exit.thread98.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.thread.i ], [ undef, %bb.bk ], [ undef, %._crit_edge.i ], [ undef, %bb.bt ], [ undef, %bb.bj ], [ undef, %bb.by ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.thread.i ], [ undef, %bb.cd ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.thread.i ], [ undef, %bb.ci ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.thread.i ], [ undef, %bb.ba ], [ undef, %.loopexit.i.i.i.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17hc3e651fa9f0f5189E.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17haee100b54517eb96E.exit.i ]
  %.sroa.19.0 = phi i32 [ %.sroa.049.0.i, %_ZN10serde_core2de9MapAccess8next_key17he1c989001bc0f1b8E.exit.thread98.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.thread.i ], [ undef, %bb.bk ], [ undef, %._crit_edge.i ], [ undef, %bb.bt ], [ undef, %bb.bj ], [ undef, %bb.by ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.thread.i ], [ undef, %bb.cd ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.thread.i ], [ undef, %bb.ci ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.thread.i ], [ undef, %bb.ba ], [ undef, %.loopexit.i.i.i.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17hc3e651fa9f0f5189E.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17haee100b54517eb96E.exit.i ]
  %.sroa.656.0 = phi ptr [ %6, %_ZN10serde_core2de9MapAccess8next_key17he1c989001bc0f1b8E.exit.thread98.i ], [ %.sroa.0.0.i.ph.i.i89.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.thread.i ], [ %i.gv, %bb.bk ], [ %i.fj, %._crit_edge.i ], [ %i.hp, %bb.bt ], [ %i.gs, %bb.bj ], [ %i.id, %bb.by ], [ %.sroa.0.0.i.ph.i.i73.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.thread.i ], [ %i.ir, %bb.cd ], [ %.sroa.0.0.i.ph.i.i78.i, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.thread.i ], [ %i.jf, %bb.ci ], [ %.sroa.0.0.i.ph.i.i83.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.thread.i ], [ %i.fw, %bb.ba ], [ %i.gr, %.loopexit.i.i.i.i ], [ %i.gu, %_ZN10serde_core2de9MapAccess10next_value17haee100b54517eb96E.exit.i ], [ %.pre554.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.i ], [ %.pre556.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.i ], [ %.pre558.i, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.i ], [ %.pre560.i, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.i ], [ %i.hk, %_ZN10serde_core2de9MapAccess10next_value17hc3e651fa9f0f5189E.exit.i ] ; 5 uses
  %.sink.i35 = phi i64 [ 0, %_ZN10serde_core2de9MapAccess8next_key17he1c989001bc0f1b8E.exit.thread98.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.thread.i ], [ 1, %bb.bk ], [ 1, %._crit_edge.i ], [ 1, %bb.bt ], [ 1, %bb.bj ], [ 1, %bb.by ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.thread.i ], [ 1, %bb.cd ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.thread.i ], [ 1, %bb.ci ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.thread.i ], [ 1, %bb.ba ], [ 1, %.loopexit.i.i.i.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17hc3e651fa9f0f5189E.exit.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17h040eaf6bdc2dd42bE.exit.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit86.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17h0d9d7e127ced9de2E.exit92.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17haee100b54517eb96E.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.jt = load i8, ptr %i.az, align 8, !noundef !5
  %i.ju = add i8 %i.jt, 1
  store i8 %i.ju, ptr %i.az, align 8
  %i.jv = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h3c2229db26f48deaE"(ptr noalias noundef align 8 dereferenceable(80) %1)
          to label %bb.co unwind label %bb.cn     ; 9 uses

bb.cn:                                            ; preds = %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ab6f3adc679b931E.exit"
  %i.jw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$core..result..Result$LT$anki..import_export..text..ForeignCard$C$serde_json..error..Error$GT$$GT$17hbacc3fbb58043607E"(i64 %.sink.i35, ptr %.sroa.656.0) #27
          to label %common.resume unwind label %bb.aq

bb.co:                                            ; preds = %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ab6f3adc679b931E.exit"
  %i.jx = trunc nuw i64 %.sink.i35 to i1
  br i1 %i.jx, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.not = icmp eq ptr %i.jv, null
  br i1 %.not, label %.split, label %.thread90, !prof !45

bb.cq:                                            ; preds = %bb.co
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.656.0) ]
  %.not122 = icmp eq ptr %i.jv, null
  br i1 %.not122, label %.thread90, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.experimental.noalias.scope.decl(metadata !23287)
  call void @llvm.experimental.noalias.scope.decl(metadata !23290)
  %i.jy = load i64, ptr %i.jv, align 8, !range !147, !alias.scope !23293, !noundef !5
  switch i64 %i.jy, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit40" [
    i64 0, label %bb.cs
    i64 1, label %bb.cu
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %.val1.i.i.i.i38 = load i64, ptr %i.jz, align 8, !alias.scope !23293, !noundef !5 ; 2 uses
  %i.ka = icmp eq i64 %.val1.i.i.i.i38, 0
  br i1 %i.ka, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit40", label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %.val.i.i.i.i39 = load ptr, ptr %i.kb, align 8, !alias.scope !23293, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i39, i64 noundef range(i64 1, 0) %.val1.i.i.i.i38, i64 noundef 1) #29, !noalias !23293
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit40"

bb.cu:                                            ; preds = %bb.cr
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %.val2.i.i.i.i37 = load ptr, ptr %i.kc, align 8, !alias.scope !23293, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val2.i.i.i.i37)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit40" unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jv, i64 noundef 40, i64 noundef 8) #29
  br label %common.resume

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit40": ; preds = %bb.cr, %bb.cs, %bb.ct, %bb.cu
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jv, i64 noundef 40, i64 noundef 8) #29
  br label %.thread90

.thread90:                                        ; preds = %bb.cq, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit40", %bb.cp, %bb.ap, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit", %bb.ao, %bb.d
  %.sroa.11.3 = phi ptr [ %i.jv, %bb.cp ], [ %i.au, %bb.d ], [ %i.ee, %bb.ao ], [ %i.ei, %bb.ap ], [ %i.ei, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit" ], [ %.sroa.656.0, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit40" ], [ %.sroa.656.0, %bb.cq ]
  %i.ke = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h7d383251b064efd6E(ptr noalias noundef nonnull align 8 %.sroa.11.3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1)
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ke, ptr %i.kf, align 8
  br label %bb.cw

.split:                                           ; preds = %bb.cp, %bb.ao
  %.sroa.11.189 = phi ptr [ %i.ei, %bb.ao ], [ %.sroa.656.0, %bb.cp ]
  %.sroa.20.sroa.0.188 = phi i32 [ %.sroa.1244.0, %bb.ao ], [ %.sroa.19.0, %bb.cp ]
  %.sroa.20.sroa.6.187 = phi float [ %.sroa.13.0, %bb.ao ], [ %.sroa.20.0, %bb.cp ]
  %.sroa.20.sroa.7.186 = phi i32 [ %.sroa.14.0, %bb.ao ], [ %.sroa.21.0, %bb.cp ]
  %.sroa.20.sroa.8.185 = phi i32 [ %.sroa.15.0, %bb.ao ], [ %.sroa.22.0, %bb.cp ]
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.11.189, ptr %i.kg, align 8
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.20.sroa.0.188, ptr %.sroa.219.0..sroa_idx, align 8
  %.sroa.219.sroa.2.0..sroa.219.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %.sroa.20.sroa.6.187, ptr %.sroa.219.sroa.2.0..sroa.219.0..sroa_idx.sroa_idx, align 4
  %.sroa.219.sroa.3.0..sroa.219.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.20.sroa.7.186, ptr %.sroa.219.sroa.3.0..sroa.219.0..sroa_idx.sroa_idx, align 8
  %.sroa.219.sroa.4.0..sroa.219.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.20.sroa.8.185, ptr %.sroa.219.sroa.4.0..sroa.219.0..sroa_idx.sroa_idx, align 4
  br label %bb.cw

bb.cw:                                            ; preds = %.split, %.thread90, %.loopexit, %bb.al
  %storemerge.sink = phi i64 [ 1, %bb.al ], [ 1, %.loopexit ], [ 0, %.split ], [ 1, %.thread90 ]
  store i64 %storemerge.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17hd397e31e9bfdcc6dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [16 x i8], align 8                ; 10 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [16 x i8], align 8                ; 10 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23294)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !23297, !noalias !23300, !noundef !5 ; 2 uses
  %.promoted.i = load i64, ptr %i.z, align 8, !alias.scope !23294, !noalias !23303 ; 2 uses
  %i.ac = icmp ult i64 %.promoted.i, %i.ab
  br i1 %i.ac, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !23297, !noalias !23300, !nonnull !5, !align !23, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.af = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ai, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23304)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !23305, !noundef !5
  switch i8 %i.ah, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 91, label %bb.e
    i8 123, label %bb.f
  ], !prof !15094

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ai = add i64 %i.af, 1                        ; 3 uses
  store i64 %i.ai, ptr %i.z, align 8, !alias.scope !23306, !noalias !23303
  %exitcond.not.i = icmp eq i64 %i.ai, %i.ab
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 5, ptr %i.y, align 8
  %i.aj = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.co

bb.d:                                             ; preds = %bb.b
  %i.ak = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17he3395e43ce67b25fE"(ptr noalias noundef align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @468)
  br label %.thread80

bb.e:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.am = load i8, ptr %i.al, align 8, !noundef !5
  %i.an = add i8 %i.am, -1                        ; 2 uses
  store i8 %i.an, ptr %i.al, align 8
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.g, label %bb.h, !prof !116

bb.f:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.aq = load i8, ptr %i.ap, align 8, !noundef !5
  %i.ar = add i8 %i.aq, -1                        ; 2 uses
  store i8 %i.ar, ptr %i.ap, align 8
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.ak, label %bb.al, !prof !116

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 24, ptr %i.x, align 8
  %i.at = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.co

bb.h:                                             ; preds = %bb.e
  %i.au = add i64 %i.af, 1
  store i64 %i.au, ptr %i.z, align 8, !alias.scope !23309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %1, ptr %i.v, align 8, !noalias !23312
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i8 1, ptr %i.av, align 8, !noalias !23312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23319)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !23322
end_hunk_2
begin_hunk_3_@"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17hfde14499198c19fdE":bb.a
  %.sroa.643.0 = phi i64 [ %i.bt, %bb.m ], [ %i.ci, %bb.s ], [ %i.cx, %bb.y ], [ %i.dm, %bb.ae ], [ %i.eb, %bb.ak ], [ %..i, %bb.aj ], [ %..i, %bb.ag ] ; 3 uses
  %.sink.i = phi i64 [ 1, %bb.m ], [ 1, %bb.s ], [ 1, %bb.y ], [ 1, %bb.ae ], [ 1, %bb.ak ], [ 0, %bb.aj ], [ 0, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.ec = load i8, ptr %i.av, align 8, !noundef !5
  %i.ed = add i8 %i.ec, 1
  store i8 %i.ed, ptr %i.av, align 8
  %i.ee = invoke noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17h358f5c324b0da14cE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.an unwind label %bb.am     ; 9 uses

bb.al:                                            ; preds = %bb.aw, %bb.g
  %.sink = phi ptr [ %i.es, %bb.aw ], [ %i.bd, %bb.g ]
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ef, align 8
  br label %bb.cw

bb.am:                                            ; preds = %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17he78af3b9f5df9eb7E.exit"
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %i.eh = inttoptr i64 %.sroa.643.0 to ptr
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$core..result..Result$LT$anki..import_export..text..ForeignCard$C$serde_json..error..Error$GT$$GT$17hbacc3fbb58043607E"(i64 %.sink.i, ptr %i.eh) #27
          to label %common.resume unwind label %bb.aq

bb.an:                                            ; preds = %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17he78af3b9f5df9eb7E.exit"
  %i.ei = inttoptr i64 %.sroa.643.0 to ptr        ; 3 uses
  %i.ej = trunc nuw i64 %.sink.i to i1
  br i1 %i.ej, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not27 = icmp eq ptr %i.ee, null
  br i1 %.not27, label %.split, label %.thread90, !prof !45

bb.ap:                                            ; preds = %bb.an
  %i.ek = icmp ne i64 %.sroa.643.0, 0
  tail call void @llvm.assume(i1 %i.ek)
  %.not123 = icmp eq ptr %i.ee, null
  br i1 %.not123, label %.thread90, label %bb.ar

bb.aq:                                            ; preds = %bb.am, %bb.cn
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.ar:                                            ; preds = %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26624)
  %i.em = load i64, ptr %i.ee, align 8, !range !147, !alias.scope !26627, !noundef !5
  switch i64 %i.em, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit" [
    i64 0, label %bb.as
    i64 1, label %bb.au
  ]

bb.as:                                            ; preds = %bb.ar
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.en, align 8, !alias.scope !26627, !noundef !5 ; 2 uses
  %i.eo = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.eo, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit", label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.ep, align 8, !alias.scope !26627, !nonnull !5, !noundef !5
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #29, !noalias !26627
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit"

bb.au:                                            ; preds = %bb.ar
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.val2.i.i.i.i = load ptr, ptr %i.eq, align 8, !alias.scope !26627, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val2.i.i.i.i)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit" unwind label %bb.av

common.resume:                                    ; preds = %bb.cn, %bb.am, %bb.cv, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %i.er, %bb.av ], [ %i.kd, %bb.cv ], [ %i.jw, %bb.cn ], [ %i.eg, %bb.am ]
  resume { ptr, i32 } %common.resume.op

bb.av:                                            ; preds = %bb.au
  %i.er = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ee, i64 noundef 40, i64 noundef 8) #29
  br label %common.resume

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit": ; preds = %bb.ar, %bb.as, %bb.at, %bb.au
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ee, i64 noundef 40, i64 noundef 8) #29
  br label %.thread90

bb.aw:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 24, ptr %i.af, align 8
  %i.es = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.al

bb.ax:                                            ; preds = %bb.f
  %i.et = add i64 %i.ao, 1
  store i64 %i.et, ptr %i.ai, align 8, !alias.scope !26628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %1, ptr %i.u, align 8, !noalias !26631
  %i.eu = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i8 1, ptr %i.eu, align 8, !noalias !26631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !26635
  call fastcc void @"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed12has_next_key17h16fc23f44e64b53eE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u), !noalias !26642
  %i.ev = load i8, ptr %i.p, align 8, !range !448, !noalias !26635, !noundef !5
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %._crit_edge.i, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.ax
  %i.ex = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  br label %bb.ay

._crit_edge.i:                                    ; preds = %bb.bs, %bb.ax
  %i.fi = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !26643, !nonnull !5, !align !126, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !26643
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he63c2633245afbffE.exit"

bb.ay:                                            ; preds = %bb.bs, %.lr.ph.i34
  %.sroa.04.0333.i = phi i64 [ 0, %.lr.ph.i34 ], [ %.sroa.04.1.i, %bb.bs ] ; 7 uses
  %.sroa.4.0332.i = phi i64 [ undef, %.lr.ph.i34 ], [ %.sroa.4.1.i, %bb.bs ] ; 6 uses
  %.sroa.012.0331.i = phi i32 [ 0, %.lr.ph.i34 ], [ %.sroa.012.1.i, %bb.bs ] ; 7 uses
  %.sroa.414.0330.i = phi i32 [ undef, %.lr.ph.i34 ], [ %.sroa.414.1.i, %bb.bs ] ; 6 uses
  %.sroa.020.0329.i = phi i32 [ 0, %.lr.ph.i34 ], [ %.sroa.020.1.i, %bb.bs ] ; 7 uses
  %.sroa.422.0328.i = phi float [ undef, %.lr.ph.i34 ], [ %.sroa.422.1.i, %bb.bs ] ; 6 uses
  %.sroa.028.0327.i = phi i32 [ 0, %.lr.ph.i34 ], [ %.sroa.028.1.i, %bb.bs ] ; 7 uses
  %.sroa.430.0326.i = phi i32 [ undef, %.lr.ph.i34 ], [ %.sroa.430.1.i, %bb.bs ] ; 6 uses
  %.sroa.036.0325.i = phi i32 [ 0, %.lr.ph.i34 ], [ %.sroa.036.1.i, %bb.bs ] ; 7 uses
  %.sroa.438.0324.i = phi i32 [ undef, %.lr.ph.i34 ], [ %.sroa.438.1.i, %bb.bs ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26646)
  call void @llvm.experimental.noalias.scope.decl(metadata !26647)
  %i.fk = load i8, ptr %i.ex, align 1, !range !448, !noalias !26643, !noundef !5
  %i.fl = trunc nuw i8 %i.fk to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !26643
  br i1 %i.fl, label %bb.az, label %_ZN10serde_core2de9MapAccess8next_key17hab7980ba5b2435feE.exit.thread98.i

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !26643
  %i.fm = load ptr, ptr %i.u, align 8, !alias.scope !26648, !noalias !26649, !nonnull !5, !align !126, !noundef !5 ; 28 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26650)
  call void @llvm.experimental.noalias.scope.decl(metadata !26653)
  call void @llvm.experimental.noalias.scope.decl(metadata !26656)
  call void @llvm.experimental.noalias.scope.decl(metadata !26659)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24 ; 7 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 40 ; 20 uses
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !26662, !noalias !26665, !noundef !5
  %i.fq = add i64 %i.fp, 1
  store i64 %i.fq, ptr %i.fo, align 8, !alias.scope !26662, !noalias !26665
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i64 0, ptr %i.fr, align 8, !alias.scope !26670, !noalias !26665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !26671
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17hae7e20f71263c1f7E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fn, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.fm), !noalias !26665
  %i.fs = load i64, ptr %i.n, align 8, !range !115, !noalias !26671, !noundef !5
  %i.ft = icmp eq i64 %i.fs, 2
  %i.fu = load ptr, ptr %i.ey, align 8, !noalias !26671, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.ft, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h95ec47c01359de95E.exit.thread.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h95ec47c01359de95E.exit.i.i.i"

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h95ec47c01359de95E.exit.thread.i.i.i": ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !26671
  br label %bb.ba

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h95ec47c01359de95E.exit.i.i.i": ; preds = %bb.az
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !26671
  call fastcc void @"_ZN198_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17ha9c0f3bb0e716d1dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fu, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i), !noalias !26672
  %.pre.i.i.i = load i8, ptr %i.o, align 8, !range !448, !noalias !26643
  %i.fv = trunc nuw i8 %.pre.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !26671
  br i1 %i.fv, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h95ec47c01359de95E.exit.i._crit_edge.i.i", label %_ZN10serde_core2de9MapAccess8next_key17hab7980ba5b2435feE.exit.i

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h95ec47c01359de95E.exit.i._crit_edge.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h95ec47c01359de95E.exit.i.i.i"
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !26643
  br label %bb.ba

bb.ba:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h95ec47c01359de95E.exit.i._crit_edge.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h95ec47c01359de95E.exit.thread.i.i.i"
  %i.fw = phi ptr [ %.pre.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h95ec47c01359de95E.exit.i._crit_edge.i.i" ], [ %i.fu, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h95ec47c01359de95E.exit.thread.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !26643
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he63c2633245afbffE.exit"

_ZN10serde_core2de9MapAccess8next_key17hab7980ba5b2435feE.exit.i: ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h95ec47c01359de95E.exit.i.i.i"
  %i.fx = load i8, ptr %i.ez, align 1, !range !569, !noalias !26643, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !26643
  switch i8 %i.fx, label %default.unreachable [
    i8 5, label %bb.bg
    i8 0, label %bb.bb
    i8 1, label %bb.bc
    i8 2, label %bb.bd
    i8 3, label %bb.be
    i8 4, label %bb.bf
  ]

_ZN10serde_core2de9MapAccess8next_key17hab7980ba5b2435feE.exit.thread98.i: ; preds = %bb.ay
  %i.fy = trunc nuw i64 %.sroa.04.0333.i to i1
  %i.fz = trunc nuw i32 %.sroa.012.0331.i to i1
  %.sroa.049.0.i = select i1 %i.fz, i32 %.sroa.414.0330.i, i32 0
  %i.ga = trunc nuw i32 %.sroa.020.0329.i to i1
  %.sroa.050.0.i = select i1 %i.ga, float %.sroa.422.0328.i, float 0.000000e+00
  %i.gb = trunc nuw i32 %.sroa.028.0327.i to i1
  %.sroa.051.0.i = select i1 %i.gb, i32 %.sroa.430.0326.i, i32 0
  %i.gc = trunc nuw i32 %.sroa.036.0325.i to i1
  %.sroa.052.0.i = select i1 %i.gc, i32 %.sroa.438.0324.i, i32 0
  %i.gd = inttoptr i64 %.sroa.4.0332.i to ptr
  %6 = select i1 %i.fy, ptr %i.gd, ptr null
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he63c2633245afbffE.exit"

default.unreachable:                              ; preds = %_ZN10serde_core2de9MapAccess8next_key17hab7980ba5b2435feE.exit.i
  unreachable

bb.bb:                                            ; preds = %_ZN10serde_core2de9MapAccess8next_key17hab7980ba5b2435feE.exit.i
  %i.ge = icmp eq i64 %.sroa.04.0333.i, 1
  br i1 %i.ge, label %bb.bk, label %bb.bl, !prof !116

bb.bc:                                            ; preds = %_ZN10serde_core2de9MapAccess8next_key17hab7980ba5b2435feE.exit.i
  %i.gf = icmp eq i32 %.sroa.012.0331.i, 1
  br i1 %i.gf, label %bb.bt, label %bb.bu, !prof !116

bb.bd:                                            ; preds = %_ZN10serde_core2de9MapAccess8next_key17hab7980ba5b2435feE.exit.i
  %i.gg = icmp eq i32 %.sroa.020.0329.i, 1
  br i1 %i.gg, label %bb.by, label %bb.bz, !prof !116

bb.be:                                            ; preds = %_ZN10serde_core2de9MapAccess8next_key17hab7980ba5b2435feE.exit.i
  %i.gh = icmp eq i32 %.sroa.028.0327.i, 1
  br i1 %i.gh, label %bb.cd, label %bb.ce, !prof !116

bb.bf:                                            ; preds = %_ZN10serde_core2de9MapAccess8next_key17hab7980ba5b2435feE.exit.i
  %i.gi = icmp eq i32 %.sroa.036.0325.i, 1
  br i1 %i.gi, label %bb.ci, label %bb.cj, !prof !116

bb.bg:                                            ; preds = %_ZN10serde_core2de9MapAccess8next_key17hab7980ba5b2435feE.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !26673)
  call void @llvm.experimental.noalias.scope.decl(metadata !26676)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !26679, !noalias !26682, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.fo, align 8, !alias.scope !26685, !noalias !26686 ; 2 uses
  %i.gl = icmp ult i64 %.promoted.i.i.i.i.i, %i.gk
  br i1 %i.gl, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bg
  %i.gm = load ptr, ptr %i.fn, align 8, !alias.scope !26679, !noalias !26682, !nonnull !5, !align !23, !noundef !5
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bi, %.lr.ph.i.i.i.i.i
  %i.gn = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.gq, %bb.bi ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26687)
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !noalias !26688, !noundef !5
  switch i8 %i.gp, label %bb.bj [
    i8 32, label %bb.bi
    i8 10, label %bb.bi
    i8 9, label %bb.bi
    i8 13, label %bb.bi
    i8 58, label %_ZN10serde_core2de9MapAccess10next_value17h5deeaee55c32af16E.exit.i
  ], !prof !476

bb.bi:                                            ; preds = %bb.bh, %bb.bh, %bb.bh, %bb.bh
  %i.gq = add i64 %i.gn, 1                        ; 3 uses
  store i64 %i.gq, ptr %i.fo, align 8, !alias.scope !26689, !noalias !26686
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.gq, %i.gk
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.bh

.loopexit.i.i.i.i:                                ; preds = %bb.bg, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !26692
  store i64 3, ptr %i.l, align 8, !noalias !26692
  %i.gr = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l), !noalias !26693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !26692
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he63c2633245afbffE.exit"

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !26692
  store i64 6, ptr %i.m, align 8, !noalias !26692
  %i.gs = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !noalias !26693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !26692
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he63c2633245afbffE.exit"

_ZN10serde_core2de9MapAccess10next_value17h5deeaee55c32af16E.exit.i: ; preds = %bb.bh
  %i.gt = add i64 %i.gn, 1
  store i64 %i.gt, ptr %i.fo, align 8, !alias.scope !26694, !noalias !26693
  %i.gu = call fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$12ignore_value17hea9e11daff56b422E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.fm), !noalias !26693 ; 2 uses
  %.not60.i = icmp eq ptr %i.gu, null
  br i1 %.not60.i, label %bb.bs, label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he63c2633245afbffE.exit"

bb.bk:                                            ; preds = %bb.bb
  %i.gv = call noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15duplicate_field17hd01d99523bf6430eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @82, i64 noundef 3), !noalias !26693
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he63c2633245afbffE.exit"

bb.bl:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !26697)
  call void @llvm.experimental.noalias.scope.decl(metadata !26700)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !26703, !noalias !26706, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i67.i = load i64, ptr %i.fo, align 8, !alias.scope !26709, !noalias !26710 ; 2 uses
  %i.gy = icmp ult i64 %.promoted.i.i.i.i67.i, %i.gx
  br i1 %i.gy, label %.lr.ph.i.i.i.i69.i, label %.loopexit.i.i.i68.i

.lr.ph.i.i.i.i69.i:                               ; preds = %bb.bl
  %i.gz = load ptr, ptr %i.fn, align 8, !alias.scope !26703, !noalias !26706, !nonnull !5, !align !23, !noundef !5
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bn, %.lr.ph.i.i.i.i69.i
  %i.ha = phi i64 [ %.promoted.i.i.i.i67.i, %.lr.ph.i.i.i.i69.i ], [ %i.hd, %bb.bn ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26711)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !noalias !26712, !noundef !5
  switch i8 %i.hc, label %bb.bo [
    i8 32, label %bb.bn
    i8 10, label %bb.bn
    i8 9, label %bb.bn
    i8 13, label %bb.bn
    i8 58, label %bb.bq
  ], !prof !476

bb.bn:                                            ; preds = %bb.bm, %bb.bm, %bb.bm, %bb.bm
  %i.hd = add i64 %i.ha, 1                        ; 3 uses
  store i64 %i.hd, ptr %i.fo, align 8, !alias.scope !26713, !noalias !26710
  %exitcond.not.i.i.i.i70.i = icmp eq i64 %i.hd, %i.gx
  br i1 %exitcond.not.i.i.i.i70.i, label %.loopexit.i.i.i68.i, label %bb.bm

.loopexit.i.i.i68.i:                              ; preds = %bb.bn, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !26716
  store i64 3, ptr %i.j, align 8, !noalias !26716
  %i.he = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !26693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !26716
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !26716
  store i64 6, ptr %i.k, align 8, !noalias !26716
  %i.hf = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !noalias !26693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !26716
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.loopexit.i.i.i68.i
  %.sroa.0.0.i.ph.i.i.i = phi ptr [ %i.he, %.loopexit.i.i.i68.i ], [ %i.hf, %bb.bo ]
  %i.hg = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.0.0.i.ph.i.i.i, 1
  br label %_ZN10serde_core2de9MapAccess10next_value17h55c2e9349ad95068E.exit.i

bb.bq:                                            ; preds = %bb.bm
  %i.hh = add i64 %i.ha, 1
  store i64 %i.hh, ptr %i.fo, align 8, !alias.scope !26717, !noalias !26693
  %i.hi = call { i64, ptr } @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_i6417h1be3e260145aa8b8E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.fm), !noalias !26693
  br label %_ZN10serde_core2de9MapAccess10next_value17h55c2e9349ad95068E.exit.i

_ZN10serde_core2de9MapAccess10next_value17h55c2e9349ad95068E.exit.i: ; preds = %bb.bq, %bb.bp
  %.merged.i.i.i = phi { i64, ptr } [ %i.hg, %bb.bp ], [ %i.hi, %bb.bq ] ; 2 uses
  %i.hj = extractvalue { i64, ptr } %.merged.i.i.i, 0
  %i.hk = extractvalue { i64, ptr } %.merged.i.i.i, 1 ; 2 uses
  %i.hl = trunc nuw i64 %i.hj to i1
  br i1 %i.hl, label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he63c2633245afbffE.exit", label %bb.br

bb.br:                                            ; preds = %_ZN10serde_core2de9MapAccess10next_value17h55c2e9349ad95068E.exit.i
  %i.hm = ptrtoint ptr %i.hk to i64
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.i, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.i, %bb.br, %_ZN10serde_core2de9MapAccess10next_value17h5deeaee55c32af16E.exit.i
  %.sroa.438.1.i = phi i32 [ %.sroa.438.0324.i, %bb.br ], [ %i.js, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.i ], [ %.sroa.438.0324.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.i ], [ %.sroa.438.0324.i, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.i ], [ %.sroa.438.0324.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.i ], [ %.sroa.438.0324.i, %_ZN10serde_core2de9MapAccess10next_value17h5deeaee55c32af16E.exit.i ]
  %.sroa.036.1.i = phi i32 [ %.sroa.036.0325.i, %bb.br ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.i ], [ %.sroa.036.0325.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.i ], [ %.sroa.036.0325.i, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.i ], [ %.sroa.036.0325.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.i ], [ %.sroa.036.0325.i, %_ZN10serde_core2de9MapAccess10next_value17h5deeaee55c32af16E.exit.i ]
  %.sroa.430.1.i = phi i32 [ %.sroa.430.0326.i, %bb.br ], [ %.sroa.430.0326.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.i ], [ %.sroa.430.0326.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.i ], [ %.sroa.430.0326.i, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.i ], [ %i.je, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.i ], [ %.sroa.430.0326.i, %_ZN10serde_core2de9MapAccess10next_value17h5deeaee55c32af16E.exit.i ]
  %.sroa.028.1.i = phi i32 [ %.sroa.028.0327.i, %bb.br ], [ %.sroa.028.0327.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.i ], [ %.sroa.028.0327.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.i ], [ %.sroa.028.0327.i, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.i ], [ %.sroa.028.0327.i, %_ZN10serde_core2de9MapAccess10next_value17h5deeaee55c32af16E.exit.i ]
  %.sroa.422.1.i = phi float [ %.sroa.422.0328.i, %bb.br ], [ %.sroa.422.0328.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.i ], [ %.sroa.422.0328.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.i ], [ %i.iq, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.i ], [ %.sroa.422.0328.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.i ], [ %.sroa.422.0328.i, %_ZN10serde_core2de9MapAccess10next_value17h5deeaee55c32af16E.exit.i ]
  %.sroa.020.1.i = phi i32 [ %.sroa.020.0329.i, %bb.br ], [ %.sroa.020.0329.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.i ], [ %.sroa.020.0329.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.i ], [ %.sroa.020.0329.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.i ], [ %.sroa.020.0329.i, %_ZN10serde_core2de9MapAccess10next_value17h5deeaee55c32af16E.exit.i ]
  %.sroa.414.1.i = phi i32 [ %.sroa.414.0330.i, %bb.br ], [ %.sroa.414.0330.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.i ], [ %i.ic, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.i ], [ %.sroa.414.0330.i, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.i ], [ %.sroa.414.0330.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.i ], [ %.sroa.414.0330.i, %_ZN10serde_core2de9MapAccess10next_value17h5deeaee55c32af16E.exit.i ]
  %.sroa.012.1.i = phi i32 [ %.sroa.012.0331.i, %bb.br ], [ %.sroa.012.0331.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.i ], [ %.sroa.012.0331.i, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.i ], [ %.sroa.012.0331.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.i ], [ %.sroa.012.0331.i, %_ZN10serde_core2de9MapAccess10next_value17h5deeaee55c32af16E.exit.i ]
  %.sroa.4.1.i = phi i64 [ %i.hm, %bb.br ], [ %.sroa.4.0332.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.i ], [ %.sroa.4.0332.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.i ], [ %.sroa.4.0332.i, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.i ], [ %.sroa.4.0332.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.i ], [ %.sroa.4.0332.i, %_ZN10serde_core2de9MapAccess10next_value17h5deeaee55c32af16E.exit.i ]
  %.sroa.04.1.i = phi i64 [ 1, %bb.br ], [ %.sroa.04.0333.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.i ], [ %.sroa.04.0333.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.i ], [ %.sroa.04.0333.i, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.i ], [ %.sroa.04.0333.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.i ], [ %.sroa.04.0333.i, %_ZN10serde_core2de9MapAccess10next_value17h5deeaee55c32af16E.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !26720
  call fastcc void @"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed12has_next_key17h16fc23f44e64b53eE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u), !noalias !26642
  %i.hn = load i8, ptr %i.p, align 8, !range !448, !noalias !26720, !noundef !5
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %._crit_edge.i, label %bb.ay

bb.bt:                                            ; preds = %bb.bc
  %i.hp = call noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15duplicate_field17hd01d99523bf6430eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @83, i64 noundef 8), !noalias !26693
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he63c2633245afbffE.exit"

bb.bu:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !26631
  call void @llvm.experimental.noalias.scope.decl(metadata !26723)
  call void @llvm.experimental.noalias.scope.decl(metadata !26726)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.hr = load i64, ptr %i.hq, align 8, !alias.scope !26729, !noalias !26732, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i71.i = load i64, ptr %i.fo, align 8, !alias.scope !26739, !noalias !26740 ; 2 uses
  %i.hs = icmp ult i64 %.promoted.i.i.i.i71.i, %i.hr
  br i1 %i.hs, label %.lr.ph.i.i.i.i74.i, label %.loopexit.i.i.i72.i

.lr.ph.i.i.i.i74.i:                               ; preds = %bb.bu
  %i.ht = load ptr, ptr %i.fn, align 8, !alias.scope !26729, !noalias !26732, !nonnull !5, !align !23, !noundef !5
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %.lr.ph.i.i.i.i74.i
  %i.hu = phi i64 [ %.promoted.i.i.i.i71.i, %.lr.ph.i.i.i.i74.i ], [ %i.hx, %bb.bw ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26741)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1, !noalias !26742, !noundef !5
  switch i8 %i.hw, label %bb.bx [
    i8 32, label %bb.bw
    i8 10, label %bb.bw
    i8 9, label %bb.bw
    i8 13, label %bb.bw
    i8 58, label %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.i
  ], !prof !476

bb.bw:                                            ; preds = %bb.bv, %bb.bv, %bb.bv, %bb.bv
  %i.hx = add i64 %i.hu, 1                        ; 3 uses
end_hunk_3
begin_hunk_4_@"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17hfde14499198c19fdE":bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !26751)
  call void @llvm.experimental.noalias.scope.decl(metadata !26754)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.if = load i64, ptr %i.ie, align 8, !alias.scope !26757, !noalias !26760, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i76.i = load i64, ptr %i.fo, align 8, !alias.scope !26767, !noalias !26768 ; 2 uses
  %i.ig = icmp ult i64 %.promoted.i.i.i.i76.i, %i.if
  br i1 %i.ig, label %.lr.ph.i.i.i.i79.i, label %.loopexit.i.i.i77.i

.lr.ph.i.i.i.i79.i:                               ; preds = %bb.bz
  %i.ih = load ptr, ptr %i.fn, align 8, !alias.scope !26757, !noalias !26760, !nonnull !5, !align !23, !noundef !5
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cb, %.lr.ph.i.i.i.i79.i
  %i.ii = phi i64 [ %.promoted.i.i.i.i76.i, %.lr.ph.i.i.i.i79.i ], [ %i.il, %bb.cb ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26769)
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !noalias !26770, !noundef !5
  switch i8 %i.ik, label %bb.cc [
    i8 32, label %bb.cb
    i8 10, label %bb.cb
    i8 9, label %bb.cb
    i8 13, label %bb.cb
    i8 58, label %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.i
  ], !prof !476

bb.cb:                                            ; preds = %bb.ca, %bb.ca, %bb.ca, %bb.ca
  %i.il = add i64 %i.ii, 1                        ; 3 uses
  store i64 %i.il, ptr %i.fo, align 8, !alias.scope !26771, !noalias !26768
  %exitcond.not.i.i.i.i80.i = icmp eq i64 %i.il, %i.if
  br i1 %exitcond.not.i.i.i.i80.i, label %.loopexit.i.i.i77.i, label %bb.ca

.loopexit.i.i.i77.i:                              ; preds = %bb.bz, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !26774
  store i64 3, ptr %i.f, align 8, !noalias !26774
  %i.im = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !26775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !26774
  br label %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.thread.i

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !26774
  store i64 6, ptr %i.g, align 8, !noalias !26774
  %i.in = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !noalias !26775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !26774
  br label %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.thread.i

_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.thread.i: ; preds = %bb.cc, %.loopexit.i.i.i77.i
  %.sroa.0.0.i.ph.i.i78.i = phi ptr [ %i.im, %.loopexit.i.i.i77.i ], [ %i.in, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !26631
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he63c2633245afbffE.exit"

_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.i: ; preds = %bb.ca
  %i.io = add i64 %i.ii, 1
  store i64 %i.io, ptr %i.fo, align 8, !alias.scope !26776, !noalias !26775
  call fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h66affe29e51cea3dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.s, ptr noalias noundef align 8 dereferenceable(64) %i.fm), !noalias !26693
  %.pre557.i = load i32, ptr %i.s, align 8, !range !421, !noalias !26631
  %.pre558.i = load ptr, ptr %i.fe, align 8, !noalias !26631
  %i.ip = trunc nuw i32 %.pre557.i to i1
  %i.iq = load float, ptr %i.ff, align 4, !noalias !26631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !26631
  br i1 %i.ip, label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he63c2633245afbffE.exit", label %bb.bs

bb.cd:                                            ; preds = %bb.be
  %i.ir = call noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15duplicate_field17hd01d99523bf6430eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @85, i64 noundef 4), !noalias !26693
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he63c2633245afbffE.exit"

bb.ce:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !26631
  call void @llvm.experimental.noalias.scope.decl(metadata !26779)
  call void @llvm.experimental.noalias.scope.decl(metadata !26782)
  %i.is = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.it = load i64, ptr %i.is, align 8, !alias.scope !26785, !noalias !26788, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i81.i = load i64, ptr %i.fo, align 8, !alias.scope !26795, !noalias !26796 ; 2 uses
  %i.iu = icmp ult i64 %.promoted.i.i.i.i81.i, %i.it
  br i1 %i.iu, label %.lr.ph.i.i.i.i84.i, label %.loopexit.i.i.i82.i

.lr.ph.i.i.i.i84.i:                               ; preds = %bb.ce
  %i.iv = load ptr, ptr %i.fn, align 8, !alias.scope !26785, !noalias !26788, !nonnull !5, !align !23, !noundef !5
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cg, %.lr.ph.i.i.i.i84.i
  %i.iw = phi i64 [ %.promoted.i.i.i.i81.i, %.lr.ph.i.i.i.i84.i ], [ %i.iz, %bb.cg ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26797)
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1, !noalias !26798, !noundef !5
  switch i8 %i.iy, label %bb.ch [
    i8 32, label %bb.cg
    i8 10, label %bb.cg
    i8 9, label %bb.cg
    i8 13, label %bb.cg
    i8 58, label %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.i
  ], !prof !476

bb.cg:                                            ; preds = %bb.cf, %bb.cf, %bb.cf, %bb.cf
  %i.iz = add i64 %i.iw, 1                        ; 3 uses
  store i64 %i.iz, ptr %i.fo, align 8, !alias.scope !26799, !noalias !26796
  %exitcond.not.i.i.i.i85.i = icmp eq i64 %i.iz, %i.it
  br i1 %exitcond.not.i.i.i.i85.i, label %.loopexit.i.i.i82.i, label %bb.cf

.loopexit.i.i.i82.i:                              ; preds = %bb.ce, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26802
  store i64 3, ptr %i.d, align 8, !noalias !26802
  %i.ja = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !26803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26802
  br label %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.thread.i

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26802
  store i64 6, ptr %i.e, align 8, !noalias !26802
  %i.jb = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !26803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !26802
  br label %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.thread.i

_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.thread.i: ; preds = %bb.ch, %.loopexit.i.i.i82.i
  %.sroa.0.0.i.ph.i.i83.i = phi ptr [ %i.ja, %.loopexit.i.i.i82.i ], [ %i.jb, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !26631
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he63c2633245afbffE.exit"

_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.i: ; preds = %bb.cf
  %i.jc = add i64 %i.iw, 1
  store i64 %i.jc, ptr %i.fo, align 8, !alias.scope !26804, !noalias !26803
  call fastcc void @"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u32$GT$11deserialize17h3989bb4a7bb7f5c9E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.fm), !noalias !26693
  %.pre555.i = load i32, ptr %i.r, align 8, !range !421, !noalias !26631
  %.pre556.i = load ptr, ptr %i.fc, align 8, !noalias !26631
  %i.jd = trunc nuw i32 %.pre555.i to i1
  %i.je = load i32, ptr %i.fd, align 4, !noalias !26631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !26631
  br i1 %i.jd, label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he63c2633245afbffE.exit", label %bb.bs

bb.ci:                                            ; preds = %bb.bf
  %i.jf = call noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15duplicate_field17hd01d99523bf6430eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @86, i64 noundef 6), !noalias !26693
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he63c2633245afbffE.exit"

bb.cj:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !26631
  call void @llvm.experimental.noalias.scope.decl(metadata !26807)
  call void @llvm.experimental.noalias.scope.decl(metadata !26810)
  %i.jg = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.jh = load i64, ptr %i.jg, align 8, !alias.scope !26813, !noalias !26816, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i87.i = load i64, ptr %i.fo, align 8, !alias.scope !26823, !noalias !26824 ; 2 uses
  %i.ji = icmp ult i64 %.promoted.i.i.i.i87.i, %i.jh
  br i1 %i.ji, label %.lr.ph.i.i.i.i90.i, label %.loopexit.i.i.i88.i

.lr.ph.i.i.i.i90.i:                               ; preds = %bb.cj
  %i.jj = load ptr, ptr %i.fn, align 8, !alias.scope !26813, !noalias !26816, !nonnull !5, !align !23, !noundef !5
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cl, %.lr.ph.i.i.i.i90.i
  %i.jk = phi i64 [ %.promoted.i.i.i.i87.i, %.lr.ph.i.i.i.i90.i ], [ %i.jn, %bb.cl ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26825)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !noalias !26826, !noundef !5
  switch i8 %i.jm, label %bb.cm [
    i8 32, label %bb.cl
    i8 10, label %bb.cl
    i8 9, label %bb.cl
    i8 13, label %bb.cl
    i8 58, label %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.i
  ], !prof !476

bb.cl:                                            ; preds = %bb.ck, %bb.ck, %bb.ck, %bb.ck
  %i.jn = add i64 %i.jk, 1                        ; 3 uses
  store i64 %i.jn, ptr %i.fo, align 8, !alias.scope !26827, !noalias !26824
  %exitcond.not.i.i.i.i91.i = icmp eq i64 %i.jn, %i.jh
  br i1 %exitcond.not.i.i.i.i91.i, label %.loopexit.i.i.i88.i, label %bb.ck

.loopexit.i.i.i88.i:                              ; preds = %bb.cj, %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26830
  store i64 3, ptr %i.b, align 8, !noalias !26830
  %i.jo = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !26831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26830
  br label %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.thread.i

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26830
  store i64 6, ptr %i.c, align 8, !noalias !26830
  %i.jp = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !26831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26830
  br label %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.thread.i

_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.thread.i: ; preds = %bb.cm, %.loopexit.i.i.i88.i
  %.sroa.0.0.i.ph.i.i89.i = phi ptr [ %i.jo, %.loopexit.i.i.i88.i ], [ %i.jp, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !26631
  br label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he63c2633245afbffE.exit"

_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.i: ; preds = %bb.ck
  %i.jq = add i64 %i.jk, 1
  store i64 %i.jq, ptr %i.fo, align 8, !alias.scope !26832, !noalias !26831
  call fastcc void @"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u32$GT$11deserialize17h3989bb4a7bb7f5c9E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.fm), !noalias !26693
  %.pre.i = load i32, ptr %i.q, align 8, !range !421, !noalias !26631
  %.pre554.i = load ptr, ptr %i.fa, align 8, !noalias !26631
  %i.jr = trunc nuw i32 %.pre.i to i1
  %i.js = load i32, ptr %i.fb, align 4, !noalias !26631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !26631
  br i1 %i.jr, label %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he63c2633245afbffE.exit", label %bb.bs

"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he63c2633245afbffE.exit": ; preds = %_ZN10serde_core2de9MapAccess10next_value17h5deeaee55c32af16E.exit.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.i, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.i, %_ZN10serde_core2de9MapAccess10next_value17h55c2e9349ad95068E.exit.i, %.loopexit.i.i.i.i, %bb.bj, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.thread.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.thread.i, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.thread.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.thread.i, %._crit_edge.i, %bb.ba, %_ZN10serde_core2de9MapAccess8next_key17hab7980ba5b2435feE.exit.thread98.i, %bb.bk, %bb.bt, %bb.by, %bb.cd, %bb.ci
  %.sroa.22.0 = phi i32 [ %.sroa.052.0.i, %_ZN10serde_core2de9MapAccess8next_key17hab7980ba5b2435feE.exit.thread98.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.thread.i ], [ undef, %bb.bk ], [ undef, %._crit_edge.i ], [ undef, %bb.bt ], [ undef, %bb.bj ], [ undef, %bb.by ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.thread.i ], [ undef, %bb.cd ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.thread.i ], [ undef, %bb.ci ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.thread.i ], [ undef, %bb.ba ], [ undef, %.loopexit.i.i.i.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h55c2e9349ad95068E.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h5deeaee55c32af16E.exit.i ]
  %.sroa.21.0 = phi i32 [ %.sroa.051.0.i, %_ZN10serde_core2de9MapAccess8next_key17hab7980ba5b2435feE.exit.thread98.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.thread.i ], [ undef, %bb.bk ], [ undef, %._crit_edge.i ], [ undef, %bb.bt ], [ undef, %bb.bj ], [ undef, %bb.by ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.thread.i ], [ undef, %bb.cd ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.thread.i ], [ undef, %bb.ci ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.thread.i ], [ undef, %bb.ba ], [ undef, %.loopexit.i.i.i.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h55c2e9349ad95068E.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h5deeaee55c32af16E.exit.i ]
  %.sroa.20.0 = phi float [ %.sroa.050.0.i, %_ZN10serde_core2de9MapAccess8next_key17hab7980ba5b2435feE.exit.thread98.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.thread.i ], [ undef, %bb.bk ], [ undef, %._crit_edge.i ], [ undef, %bb.bt ], [ undef, %bb.bj ], [ undef, %bb.by ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.thread.i ], [ undef, %bb.cd ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.thread.i ], [ undef, %bb.ci ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.thread.i ], [ undef, %bb.ba ], [ undef, %.loopexit.i.i.i.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h55c2e9349ad95068E.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h5deeaee55c32af16E.exit.i ]
  %.sroa.19.0 = phi i32 [ %.sroa.049.0.i, %_ZN10serde_core2de9MapAccess8next_key17hab7980ba5b2435feE.exit.thread98.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.thread.i ], [ undef, %bb.bk ], [ undef, %._crit_edge.i ], [ undef, %bb.bt ], [ undef, %bb.bj ], [ undef, %bb.by ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.thread.i ], [ undef, %bb.cd ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.thread.i ], [ undef, %bb.ci ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.thread.i ], [ undef, %bb.ba ], [ undef, %.loopexit.i.i.i.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h55c2e9349ad95068E.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.i ], [ undef, %_ZN10serde_core2de9MapAccess10next_value17h5deeaee55c32af16E.exit.i ]
  %.sroa.656.0 = phi ptr [ %6, %_ZN10serde_core2de9MapAccess8next_key17hab7980ba5b2435feE.exit.thread98.i ], [ %.sroa.0.0.i.ph.i.i89.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.thread.i ], [ %i.gv, %bb.bk ], [ %i.fj, %._crit_edge.i ], [ %i.hp, %bb.bt ], [ %i.gs, %bb.bj ], [ %i.id, %bb.by ], [ %.sroa.0.0.i.ph.i.i73.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.thread.i ], [ %i.ir, %bb.cd ], [ %.sroa.0.0.i.ph.i.i78.i, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.thread.i ], [ %i.jf, %bb.ci ], [ %.sroa.0.0.i.ph.i.i83.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.thread.i ], [ %i.fw, %bb.ba ], [ %i.gr, %.loopexit.i.i.i.i ], [ %i.gu, %_ZN10serde_core2de9MapAccess10next_value17h5deeaee55c32af16E.exit.i ], [ %.pre554.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.i ], [ %.pre556.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.i ], [ %.pre558.i, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.i ], [ %.pre560.i, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.i ], [ %i.hk, %_ZN10serde_core2de9MapAccess10next_value17h55c2e9349ad95068E.exit.i ] ; 5 uses
  %.sink.i35 = phi i64 [ 0, %_ZN10serde_core2de9MapAccess8next_key17hab7980ba5b2435feE.exit.thread98.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.thread.i ], [ 1, %bb.bk ], [ 1, %._crit_edge.i ], [ 1, %bb.bt ], [ 1, %bb.bj ], [ 1, %bb.by ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.thread.i ], [ 1, %bb.cd ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.thread.i ], [ 1, %bb.ci ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.thread.i ], [ 1, %bb.ba ], [ 1, %.loopexit.i.i.i.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17h55c2e9349ad95068E.exit.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17hb71017311df7e94aE.exit.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit86.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17he091dee65b84b6bcE.exit92.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17h5deeaee55c32af16E.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.jt = load i8, ptr %i.az, align 8, !noundef !5
  %i.ju = add i8 %i.jt, 1
  store i8 %i.ju, ptr %i.az, align 8
  %i.jv = invoke noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17hd5d6f5827429f5a6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.co unwind label %bb.cn     ; 9 uses

bb.cn:                                            ; preds = %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he63c2633245afbffE.exit"
  %i.jw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$core..result..Result$LT$anki..import_export..text..ForeignCard$C$serde_json..error..Error$GT$$GT$17hbacc3fbb58043607E"(i64 %.sink.i35, ptr %.sroa.656.0) #27
          to label %common.resume unwind label %bb.aq

bb.co:                                            ; preds = %"_ZN193_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignCard$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he63c2633245afbffE.exit"
  %i.jx = trunc nuw i64 %.sink.i35 to i1
  br i1 %i.jx, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.not = icmp eq ptr %i.jv, null
  br i1 %.not, label %.split, label %.thread90, !prof !45

bb.cq:                                            ; preds = %bb.co
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.656.0) ]
  %.not122 = icmp eq ptr %i.jv, null
  br i1 %.not122, label %.thread90, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.experimental.noalias.scope.decl(metadata !26835)
  call void @llvm.experimental.noalias.scope.decl(metadata !26838)
  %i.jy = load i64, ptr %i.jv, align 8, !range !147, !alias.scope !26841, !noundef !5
  switch i64 %i.jy, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit40" [
    i64 0, label %bb.cs
    i64 1, label %bb.cu
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %.val1.i.i.i.i38 = load i64, ptr %i.jz, align 8, !alias.scope !26841, !noundef !5 ; 2 uses
  %i.ka = icmp eq i64 %.val1.i.i.i.i38, 0
  br i1 %i.ka, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit40", label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %.val.i.i.i.i39 = load ptr, ptr %i.kb, align 8, !alias.scope !26841, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i39, i64 noundef range(i64 1, 0) %.val1.i.i.i.i38, i64 noundef 1) #29, !noalias !26841
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit40"

bb.cu:                                            ; preds = %bb.cr
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %.val2.i.i.i.i37 = load ptr, ptr %i.kc, align 8, !alias.scope !26841, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val2.i.i.i.i37)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit40" unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jv, i64 noundef 40, i64 noundef 8) #29
  br label %common.resume

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit40": ; preds = %bb.cr, %bb.cs, %bb.ct, %bb.cu
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jv, i64 noundef 40, i64 noundef 8) #29
  br label %.thread90

.thread90:                                        ; preds = %bb.cq, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit40", %bb.cp, %bb.ap, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit", %bb.ao, %bb.d
  %.sroa.11.3 = phi ptr [ %i.jv, %bb.cp ], [ %i.au, %bb.d ], [ %i.ee, %bb.ao ], [ %i.ei, %bb.ap ], [ %i.ei, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit" ], [ %.sroa.656.0, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit40" ], [ %.sroa.656.0, %bb.cq ]
  %i.ke = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17hfc537fcc47dbaae6E(ptr noalias noundef nonnull align 8 %.sroa.11.3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ke, ptr %i.kf, align 8
  br label %bb.cw

.split:                                           ; preds = %bb.cp, %bb.ao
  %.sroa.11.189 = phi ptr [ %i.ei, %bb.ao ], [ %.sroa.656.0, %bb.cp ]
  %.sroa.20.sroa.0.188 = phi i32 [ %.sroa.1244.0, %bb.ao ], [ %.sroa.19.0, %bb.cp ]
  %.sroa.20.sroa.6.187 = phi float [ %.sroa.13.0, %bb.ao ], [ %.sroa.20.0, %bb.cp ]
  %.sroa.20.sroa.7.186 = phi i32 [ %.sroa.14.0, %bb.ao ], [ %.sroa.21.0, %bb.cp ]
  %.sroa.20.sroa.8.185 = phi i32 [ %.sroa.15.0, %bb.ao ], [ %.sroa.22.0, %bb.cp ]
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.11.189, ptr %i.kg, align 8
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.20.sroa.0.188, ptr %.sroa.219.0..sroa_idx, align 8
  %.sroa.219.sroa.2.0..sroa.219.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %.sroa.20.sroa.6.187, ptr %.sroa.219.sroa.2.0..sroa.219.0..sroa_idx.sroa_idx, align 4
  %.sroa.219.sroa.3.0..sroa.219.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.20.sroa.7.186, ptr %.sroa.219.sroa.3.0..sroa.219.0..sroa_idx.sroa_idx, align 8
  %.sroa.219.sroa.4.0..sroa.219.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.20.sroa.8.185, ptr %.sroa.219.sroa.4.0..sroa.219.0..sroa_idx.sroa_idx, align 4
  br label %bb.cw

bb.cw:                                            ; preds = %.split, %.thread90, %.loopexit, %bb.al
  %storemerge.sink = phi i64 [ 1, %bb.al ], [ 1, %.loopexit ], [ 0, %.split ], [ 1, %.thread90 ]
  store i64 %storemerge.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17hffb3028b8a1356bfE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 20 uses
  %i.r = alloca [24 x i8], align 8                ; 22 uses
  %i.s = alloca [24 x i8], align 8                ; 20 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [16 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 11 uses
  %i.ab = alloca [24 x i8], align 8               ; 10 uses
  %i.ac = alloca [16 x i8], align 8               ; 10 uses
  %i.ad = alloca [72 x i8], align 8               ; 11 uses
  %i.ae = alloca [80 x i8], align 8               ; 9 uses
  %.sroa.28.sroa.6 = alloca [24 x i8], align 8    ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [72 x i8], align 8               ; 11 uses
  %i.ah = alloca [80 x i8], align 8               ; 9 uses
  %.sroa.1265.sroa.6 = alloca [24 x i8], align 8  ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.18 = alloca [56 x i8], align 8           ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26842)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !26845, !noalias !26848, !noundef !5 ; 2 uses
  %.promoted.i = load i64, ptr %i.ak, align 8, !alias.scope !26842, !noalias !26851 ; 2 uses
  %i.an = icmp ult i64 %.promoted.i, %i.am
  br i1 %i.an, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !26845, !noalias !26848, !nonnull !5, !align !23, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.aq = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.at, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26852)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noalias !26853, !noundef !5 ; 2 uses
  switch i8 %i.as, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.at = add i64 %i.aq, 1                        ; 3 uses
  store i64 %i.at, ptr %i.ak, align 8, !alias.scope !26854, !noalias !26851
  %exitcond.not.i = icmp eq i64 %i.at, %i.am
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit": ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  switch i8 %i.as, label %bb.d [
    i8 91, label %bb.e
    i8 123, label %bb.f
  ], !prof !15411

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 5, ptr %i.aj, align 8
  %i.au = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.av, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.ej

bb.d:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit"
  %i.aw = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17he3395e43ce67b25fE"(ptr noalias noundef align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @470)
  br label %bb.eg

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit"
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.ay = load i8, ptr %i.ax, align 8, !noundef !5
  %i.az = add i8 %i.ay, -1                        ; 2 uses
  store i8 %i.az, ptr %i.ax, align 8
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.g, label %bb.h, !prof !116

bb.f:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit"
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.bc = load i8, ptr %i.bb, align 8, !noundef !5
end_hunk_4
