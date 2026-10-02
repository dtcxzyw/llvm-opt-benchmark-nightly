Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/reqwest-c7daad916ec989ae.reqwest.b2b2e0a9347d7cb-cgu.01?download=true
inline.NumInlined: 50
inline.NumDeleted: 4
begin_hunk_0_@_ZN4core4iter6traits8iterator8Iterator8try_fold17hbb9dcbb43caeeea8E:bb.a
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 4                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.01.0 = phi i64 [ %1, %bb.a ], [ %i.g, %bb.c ] ; 3 uses
  call void @"_ZN109_$LT$hyper_util..client..legacy..connect..dns..GaiAddrs$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h46417ad6404e51acE"(ptr nonnull sret([32 x i8]) align 4 %i.c, ptr align 8 %0)
  %i.e = load i16, ptr %i.c, align 4
  %.not = icmp eq i16 %i.e, 2
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 4 dereferenceable(32) %i.c, i64 32, i1 false)
  store i64 %.sroa.01.0, ptr %i.b, align 8
  %i.f = call i64 @"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h4daa5b642917eb0aE"(ptr nonnull align 1 %i.a, i64 %.sroa.01.0, ptr nonnull align 4 %i.d)
  %i.g = call i64 @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdf9e07287a7a8b02E"(i64 %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.i = call i64 @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$11from_output17h59097d010dd212cfE"(i64 %.sroa.01.0)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = call i64 @"_ZN145_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..option..Option$LT$core..convert..Infallible$GT$$GT$$GT$13from_residual17h20274760b0b0d80dE"()
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0 = phi i64 [ %i.j, %bb.e ], [ %i.i, %bb.d ]
  ret i64 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN4core4iter6traits8iterator8Iterator9size_hint17h40cc68fee30b94b5E(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i32 } @_ZN4core4time8Duration11from_millis17h9dc6875d6d3c8cc9E(i64 %0) unnamed_addr #3 {
bb.a:
  %i.a = udiv i64 %0, 1000
  %i.b = urem i64 %0, 1000
  %i.c = trunc nuw nsw i64 %i.b to i32
  %i.d = mul nuw nsw i32 %i.c, 1000000
  %i.e = insertvalue { i64, i32 } poison, i64 %i.a, 0
  %i.f = insertvalue { i64, i32 } %i.e, i32 %i.d, 1
  ret { i64, i32 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i32 } @_ZN4core4time8Duration9from_secs17h9bf96ebca4d38054E(i64 %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { i64, i32 } poison, i64 %0, 0
  %i.b = insertvalue { i64, i32 } %i.a, i32 0, 1
  ret { i64, i32 } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @"_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h70c86cc3321f3e3cE"(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hba778ac102ef00bcE"(i64 %1, ptr align 8 %0, i64 16, ptr align 8 %2)
  ret { ptr, i64 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @"_ZN4core5slice4iter95_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$mut$u20$$u5b$T$u5d$$GT$9into_iter17h237d280201bd3aa2E"(ptr align 8 %0, i64 %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define hidden zeroext i1 @_ZN4core9ub_checks23maybe_is_nonoverlapping7runtime17hb95ee435819cd596E(ptr %0, ptr %1, i64 %2, i64 %3) unnamed_addr #9 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %3) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = icmp ult ptr %0, %1
  %i.f = sub i64 %i.c, %i.d
  %i.g = sub i64 %i.d, %i.c
  %.sroa.01.0 = select i1 %i.e, i64 %i.f, i64 %i.g
  %i.h = extractvalue { i64, i1 } %i.a, 0
  %i.i = icmp uge i64 %.sroa.01.0, %i.h
  ret i1 %i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking14panic_nounwind17h0b58b167cb35d9feE(ptr nonnull align 1 @35, i64 61) #25
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_ZN4http6status10StatusCode15is_client_error17h9c06edb72856153eE(ptr nofree readonly align 2 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 2 uses
  %i.b = load i16, ptr %0, align 2
  %i.c = tail call i16 @"_ZN4core3num7nonzero16NonZero$LT$T$GT$3get17h936d469f730f09b8E"(i16 %i.b)
  store i16 %i.c, ptr %i.a, align 2
  %i.d = call zeroext i1 @"_ZN4core3ops5range16Range$LT$Idx$GT$8contains17h7db6bb7cc82bea9bE"(ptr nonnull align 2 @36, ptr nonnull align 2 %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_ZN4http6status10StatusCode15is_server_error17hc55fb49b07f3a695E(ptr nofree readonly align 2 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 2 uses
  %i.b = load i16, ptr %0, align 2
  %i.c = tail call i16 @"_ZN4core3num7nonzero16NonZero$LT$T$GT$3get17h936d469f730f09b8E"(i16 %i.b)
  store i16 %i.c, ptr %i.a, align 2
  %i.d = call zeroext i1 @"_ZN4core3ops5range16Range$LT$Idx$GT$8contains17h7db6bb7cc82bea9bE"(ptr nonnull align 2 @37, ptr nonnull align 2 %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_ZN4http6status10StatusCode6as_str17h5daa62fcf6e9ea2fE(ptr nofree readonly align 2 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i16, ptr %0, align 2
  %i.b = tail call i16 @"_ZN4core3num7nonzero16NonZero$LT$T$GT$3get17h936d469f730f09b8E"(i16 %i.a)
  %i.c = add i16 %i.b, -100
  %i.d = zext i16 %i.c to i64
  %i.e = mul nuw nsw i64 %i.d, 3                  ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 3
  %i.g = tail call { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$13get_unchecked17h592ffc1855cac4beE"(ptr nonnull align 1 @38, i64 2700, i64 %i.e, i64 %i.f)
  ret { ptr, i64 } %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hfd799987cd6e5e1eE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN53_$LT$S$u20$as$u20$futures_core..stream..TryStream$GT$13try_poll_next17h19886277ffe020bcE"(ptr sret([96 x i8]) align 8 %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  tail call void @"_ZN101_$LT$futures_util..stream..stream..map..Map$LT$St$C$F$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17h164f967980451f6bE"(ptr sret([96 x i8]) align 8 %0, ptr align 8 %1, ptr align 8 %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN53_$LT$S$u20$as$u20$futures_core..stream..TryStream$GT$13try_poll_next17h264adbd2dd4e34f6E"(ptr sret([40 x i8]) align 8 %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  tail call void @"_ZN101_$LT$futures_util..stream..stream..map..Map$LT$St$C$F$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17h5da8bcdf1c1b73cbE"(ptr sret([40 x i8]) align 8 %0, ptr align 8 %1, ptr align 8 %2)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17h0892d8644729a37fE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN53_$LT$T$u20$as$u20$core..convert..TryInto$LT$U$GT$$GT$8try_into17h5990b835721291bbE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define ptr @"_ZN59_$LT$F$u20$as$u20$core..future..into_future..IntoFuture$GT$11into_future17h5c93b58619a8b55aE"(ptr nofree readnone returned captures(ret: address, provenance) %0) unnamed_addr #8 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN59_$LT$F$u20$as$u20$core..future..into_future..IntoFuture$GT$11into_future17h823e62d8c7b274e5E"(ptr nofree writeonly sret([64 x i8]) align 8 captures(none) initializes((0, 64)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i64, i32 } @"_ZN59_$LT$core..time..Duration$u20$as$u20$core..clone..Clone$GT$5clone17h6f0f73b5568e31f6E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = insertvalue { i64, i32 } poison, i64 %i.a, 0
  %i.e = insertvalue { i64, i32 } %i.d, i32 %i.c, 1
  ret { i64, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN59_$LT$http..method..Method$u20$as$u20$core..clone..Clone$GT$5clone17hf7df641798d7f0daE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 6 uses
  %.sroa.2 = alloca [7 x i8], align 1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %1, align 8, !noalias !8    ; 2 uses
  switch i8 %i.b, label %bb.b [
    i8 0, label %"_ZN58_$LT$http..method..Inner$u20$as$u20$core..clone..Clone$GT$5clone17h9e503e41150fd11dE.exit"
    i8 1, label %"_ZN58_$LT$http..method..Inner$u20$as$u20$core..clone..Clone$GT$5clone17h9e503e41150fd11dE.exit"
    i8 2, label %"_ZN58_$LT$http..method..Inner$u20$as$u20$core..clone..Clone$GT$5clone17h9e503e41150fd11dE.exit"
    i8 3, label %"_ZN58_$LT$http..method..Inner$u20$as$u20$core..clone..Clone$GT$5clone17h9e503e41150fd11dE.exit"
    i8 4, label %"_ZN58_$LT$http..method..Inner$u20$as$u20$core..clone..Clone$GT$5clone17h9e503e41150fd11dE.exit"
    i8 5, label %"_ZN58_$LT$http..method..Inner$u20$as$u20$core..clone..Clone$GT$5clone17h9e503e41150fd11dE.exit"
    i8 6, label %"_ZN58_$LT$http..method..Inner$u20$as$u20$core..clone..Clone$GT$5clone17h9e503e41150fd11dE.exit"
    i8 7, label %"_ZN58_$LT$http..method..Inner$u20$as$u20$core..clone..Clone$GT$5clone17h9e503e41150fd11dE.exit"
    i8 8, label %"_ZN58_$LT$http..method..Inner$u20$as$u20$core..clone..Clone$GT$5clone17h9e503e41150fd11dE.exit"
    i8 9, label %bb.c
    i8 10, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  call void @"_ZN79_$LT$http..method..extension..InlineExtension$u20$as$u20$core..clone..Clone$GT$5clone17h4ca92e2d32be5524E"(ptr nonnull sret([16 x i8]) align 1 %i.a, ptr nonnull align 1 %i.c), !noalias !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2, ptr noundef nonnull align 1 dereferenceable(7) %i.a, i64 7, i1 false)
  %.sroa.3.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.sroa.3.1.copyload = load ptr, ptr %.sroa.3.1..sroa_idx, align 1
  %.sroa.4.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %.sroa.4.1.copyload = load i8, ptr %.sroa.4.1..sroa_idx, align 1
  %.sroa.4.1.insert.ext = zext i8 %.sroa.4.1.copyload to i64
  br label %"_ZN58_$LT$http..method..Inner$u20$as$u20$core..clone..Clone$GT$5clone17h9e503e41150fd11dE.exit"

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = tail call { ptr, i64 } @"_ZN82_$LT$http..method..extension..AllocatedExtension$u20$as$u20$core..clone..Clone$GT$5clone17hae51246715d31955E"(ptr nonnull align 8 %i.d), !noalias !8 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  br label %"_ZN58_$LT$http..method..Inner$u20$as$u20$core..clone..Clone$GT$5clone17h9e503e41150fd11dE.exit"

"_ZN58_$LT$http..method..Inner$u20$as$u20$core..clone..Clone$GT$5clone17h9e503e41150fd11dE.exit": ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.c, %bb.d
  %.sroa.3.0 = phi ptr [ undef, %bb.a ], [ %i.f, %bb.d ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ %.sroa.3.1.copyload, %bb.c ], [ undef, %bb.a ]
  %.sroa.4.0 = phi i64 [ undef, %bb.a ], [ %i.g, %bb.d ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ %.sroa.4.1.insert.ext, %bb.c ], [ undef, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 %i.b, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2, i64 7, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @"_ZN60_$LT$$RF$mut$u20$T$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h1c77038c01f6ecd8E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN60_$LT$std..io..IoSlice$u20$as$u20$core..ops..deref..Deref$GT$5deref17h69b0d0b63409244eE"(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZN3std3sys2io8io_slice5iovec7IoSlice8as_slice17h3ba4c79f72f38038E(ptr align 8 %0)
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @"_ZN61_$LT$core..time..Duration$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcca73e96e4bab1d3E"(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = load i64, ptr %1, align 8
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.e, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN61_$LT$http..method..Method$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha342d2ee3c4d1a6fE"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load i8, ptr %0, align 8                 ; 2 uses
  %i.f = load i8, ptr %1, align 8
  %i.g = icmp eq i8 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %"_ZN60_$LT$http..method..Inner$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7f5a0f064bcbf86E.exit"

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %"_ZN60_$LT$http..method..Inner$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7f5a0f064bcbf86E.exit" [
    i8 9, label %bb.c
    i8 10, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.h, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  store ptr %i.i, ptr %i.c, align 8
  %i.j = call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h8a0690e482866186E"(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.c)
  br label %"_ZN60_$LT$http..method..Inner$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7f5a0f064bcbf86E.exit"

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.l, ptr %i.a, align 8
  %i.m = call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h1460196f0d7d5259E"(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
  br label %"_ZN60_$LT$http..method..Inner$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7f5a0f064bcbf86E.exit"

"_ZN60_$LT$http..method..Inner$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7f5a0f064bcbf86E.exit": ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.shrunk.i = phi i1 [ false, %bb.a ], [ %i.j, %bb.c ], [ %i.m, %bb.d ], [ true, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 8 ptr @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd23ecd19e4146cb7E"(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN63_$LT$std..io..IoSliceMut$u20$as$u20$core..ops..deref..Deref$GT$5deref17hfddfdb3bf74f0be6E"(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZN3std3sys2io8io_slice5iovec10IoSliceMut8as_slice17he818555ee2252940E(ptr align 8 %0)
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN66_$LT$std..io..IoSliceMut$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h514e3f84b8ee707eE"(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZN3std3sys2io8io_slice5iovec10IoSliceMut12as_mut_slice17h355a095fe5e26de5E(ptr align 8 %0)
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @"_ZN66_$LT$std..io..error..ErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h4a683d00836eef0cE"(ptr nofree readonly align 1 captures(none) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = load i8, ptr %1, align 1
  %i.c = icmp eq i8 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he9e350fdea3f0c9fE"(ptr sret([32 x i8]) align 4 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  tail call void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h893976e30988dc1cE"(ptr sret([32 x i8]) align 4 %0, ptr align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h25e192ce4c8a0570E"(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h3520efce42cd8a2bE.exit":
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.b = call zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr align 1 %0, ptr nonnull align 8 @16, ptr nonnull align 8 %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h4254984f00f64d00E"(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h8e061fcea234b10eE.exit":
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.b = call zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr align 1 %0, ptr nonnull align 8 @12, ptr nonnull align 8 %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h83610b70374e8209E"(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h7dbfe36236e8c8daE.exit":
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.b = call zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr align 1 %0, ptr nonnull align 8 @17, ptr nonnull align 8 %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @"_ZN75_$LT$hyper..body..length..DecodedLength$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha4dddb6aca45c4b5E"(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = load i64, ptr %1, align 8
  %i.c = icmp eq i64 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h3520efce42cd8a2bE"(ptr align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call ptr @_ZN3std2io5Write9write_all17hc7aa94022b2c778eE(ptr align 8 %i.a, ptr align 1 %1, i64 %2) ; 3 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17hdbf9e4c497480400E"(ptr nonnull align 8 %i.c)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.e
  ret i1 %.not

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  store ptr %i.b, ptr %i.c, align 8
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.b
  store ptr %i.b, ptr %i.c, align 8
  br label %bb.c
}

end_hunk_0
begin_hunk_1_@_ZN3std2io4Read8read_buf17h38946d6ac2a5e375E
declare ptr @_ZN3std2io4Read8read_buf17h38946d6ac2a5e375E(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hddd6f96806f9e206E"(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @"_ZN4core6option15Option$LT$T$GT$6map_or17h4c4794d4fe1822efE"(ptr align 8, ptr align 1, i64) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17haa2f11dbf542ecddE"(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @"_ZN4core6option15Option$LT$T$GT$6map_or17h39fd5e8e988bafffE"(ptr align 8, ptr align 1, i64) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h1f41c551c7218ec7E"(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @"_ZN4core6option15Option$LT$T$GT$6map_or17h3790d4c72d3b4f1bE"(ptr align 8, ptr align 1, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare ptr @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$8read_buf17h865b2a10d78efef5E"(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare ptr @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$8read_buf17hce7879f39944a37eE"(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN3std2io5error14repr_bitpacked11decode_repr17h98c8745b790b3eabE(ptr sret([16 x i8]) align 8, ptr) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h55db9a9075e32817E"(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17ha661ebde5baf312bE"(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare ptr @_ZN3std2io5error5Error4_new17h6d8eca976092d069E(i8, ptr align 1, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hdb40335551b393f2E"(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h3e9da31742570b01E"(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h0ace64fbe59fcee8E"(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden i8 @_ZN3std3sys3pal4unix17decode_error_kind17hff22d48c6f15ddc6E(i32) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17ha57d72e3cd29a32dE"(ptr align 1, i64, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h13a77f8662172742E"(ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h581f5927de12c878E"(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3f79fa99f6fe2db3E"(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha51cd5cec4bf63f6E"(i64, ptr align 8, i64, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h62ceb23194058131E"(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_ZN4core3cmp10PartialOrd2lt17h6302d28b66629a4eE(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #19

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_ZN4core4char7methods15encode_utf8_raw17h46286ada66b375f9E(i32, ptr align 1, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN109_$LT$hyper_util..client..legacy..connect..dns..GaiAddrs$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h46417ad6404e51acE"(ptr sret([32 x i8]) align 4, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h4daa5b642917eb0aE"(ptr align 1, i64, ptr align 4) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdf9e07287a7a8b02E"(i64) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @"_ZN145_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..option..Option$LT$core..convert..Infallible$GT$$GT$$GT$13from_residual17h20274760b0b0d80dE"() unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$11from_output17h59097d010dd212cfE"(i64) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hba778ac102ef00bcE"(i64, ptr align 8, i64, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8, ptr align 1, i64) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking14panic_nounwind17h0b58b167cb35d9feE(ptr align 1, i64) unnamed_addr #20

; Function Attrs: inlinehint nonlazybind uwtable
declare i16 @"_ZN4core3num7nonzero16NonZero$LT$T$GT$3get17h936d469f730f09b8E"(i16) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @"_ZN4core3ops5range16Range$LT$Idx$GT$8contains17h7db6bb7cc82bea9bE"(ptr align 2, ptr align 2) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$13get_unchecked17h592ffc1855cac4beE"(ptr align 1, i64, i64, i64) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @"_ZN79_$LT$http..method..extension..InlineExtension$u20$as$u20$core..clone..Clone$GT$5clone17h4ca92e2d32be5524E"(ptr sret([16 x i8]) align 1, ptr align 1) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @"_ZN82_$LT$http..method..extension..AllocatedExtension$u20$as$u20$core..clone..Clone$GT$5clone17hae51246715d31955E"(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h8a0690e482866186E"(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h1460196f0d7d5259E"(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_ZN3std3sys2io8io_slice5iovec7IoSlice8as_slice17h3ba4c79f72f38038E(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_ZN3std3sys2io8io_slice5iovec10IoSliceMut8as_slice17he818555ee2252940E(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_ZN3std3sys2io8io_slice5iovec10IoSliceMut12as_mut_slice17h355a095fe5e26de5E(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare ptr @_ZN3std2io5Write9write_all17hc7aa94022b2c778eE(ptr align 8, ptr align 1, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare ptr @_ZN3std2io5Write9write_all17h8f24c891589d24bcE(ptr align 8, ptr align 1, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare ptr @_ZN3std2io5Write9write_all17h53e125309850659cE(ptr align 8, ptr align 1, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4core9core_arch3x864sse217_mm_setzero_si12817h671f2b8b60fa81a1E(ptr sret([16 x i8]) align 16) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4core9core_arch3x864sse214_mm_cmpgt_epi817ha9fe5036f1efccddE(ptr sret([16 x i8]) align 16, ptr align 16, ptr align 16) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4core9core_arch3x864sse213_mm_set1_epi817heb549b2118e6735aE(ptr sret([16 x i8]) align 16, i8) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4core9core_arch3x864sse212_mm_or_si12817ha8b5449e6c273be6E(ptr sret([16 x i8]) align 16, ptr align 16, ptr align 16) unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2" }
attributes #22 = { noreturn }
attributes #23 = { cold }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.91.1 (ed61e7d7e 2025-11-07)"}
!3 = !{ptr @"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h25e192ce4c8a0570E"}
!4 = !{ptr @"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h4254984f00f64d00E"}
!5 = !{ptr @"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h83610b70374e8209E"}
!6 = distinct !{!6, i1 false, !"_ZN58_$LT$http..method..Inner$u20$as$u20$core..clone..Clone$GT$5clone17h9e503e41150fd11dE"}
!7 = distinct !{!7, !6, !"_ZN58_$LT$http..method..Inner$u20$as$u20$core..clone..Clone$GT$5clone17h9e503e41150fd11dE: argument 0"}
!8 = !{!7}
end_hunk_1
