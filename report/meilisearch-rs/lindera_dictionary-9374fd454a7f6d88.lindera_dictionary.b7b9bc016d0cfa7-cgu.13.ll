Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/lindera_dictionary-9374fd454a7f6d88.lindera_dictionary.b7b9bc016d0cfa7-cgu.13?download=true
inline.NumInlined: 82
inline.NumDeleted: 21
begin_hunk_0_@"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he5684c596f5bbceaE":bb.a

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i64 } [ %i.d, %bb.c ], [ %i.c, %bb.b ]
  ret { ptr, i64 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h6ef5077cc227cfe7E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @"_ZN95_$LT$csv..string_record..StringRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9cde7936b4986520E"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %1)
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = trunc nuw i64 %i.d to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = call i64 @llvm.usub.sat.i64(i64 %i.i, i64 %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %.sroa.3.0 = phi i64 [ %i.j, %bb.b ], [ undef, %bb.a ]
  %i.k = call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %i.f)
  store i64 %i.k, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h566b16e98ea98accE"(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = call { i32, i32 } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h60867dca64c345d5E"(ptr nonnull align 8 %i.b, ptr nonnull align 1 %i.a, ptr align 1 %i.c) ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i32, i32 } %i.d, 1
  %i.g = trunc i32 %i.e to i1
  %.sroa.3.0 = select i1 %i.g, i32 %i.f, i32 undef
  %.sroa.0.0 = and i32 %i.e, 1
  %i.h = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.i = insertvalue { i32, i32 } %i.h, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17he3bc4f90b1f64f1aE"(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = call { i32, i32 } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h60867dca64c345d5E"(ptr nonnull align 8 %i.b, ptr nonnull align 1 %i.a, ptr align 1 %i.c) ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0        ; 2 uses
  %.not = icmp eq i32 %i.e, 2                     ; 2 uses
  %i.f = extractvalue { i32, i32 } %i.d, 1
  %spec.select = select i1 %.not, i32 undef, i32 %i.f
  %spec.select6 = select i1 %.not, i32 0, i32 %i.e
  %i.g = insertvalue { i32, i32 } poison, i32 %spec.select6, 0
  %i.h = insertvalue { i32, i32 } %i.g, i32 %spec.select, 1
  ret { i32, i32 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i32, i32 } @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hd7bf94c577ca2aa2E"(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hc3c8744ae5169280E"(i64 %1) ; 3 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.214.0.extract.shift = lshr i64 %i.a, 8
  %.sroa.214.0.extract.trunc = trunc i64 %.sroa.214.0.extract.shift to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  store i8 %.sroa.214.0.extract.trunc, ptr %i.d, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.416.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.416.0.extract.trunc = trunc nuw i64 %.sroa.416.0.extract.shift to i32
  %i.e = load ptr, ptr %0, align 8
  %i.f = tail call { i32, i32 } @"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hd6de820da5e63361E"(ptr align 1 %i.e, i32 %.sroa.416.0.extract.trunc) ; 2 uses
  %i.g = extractvalue { i32, i32 } %i.f, 0
  %i.h = extractvalue { i32, i32 } %i.f, 1
  %i.i = and i32 %i.g, 1                          ; 2 uses
  %spec.select = sub nuw nsw i32 2, %i.i
  %.not = icmp eq i32 %i.i, 0
  %spec.select17 = select i1 %.not, i32 undef, i32 %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0 = phi i32 [ 0, %bb.b ], [ %spec.select, %bb.c ]
  %.sroa.4.0 = phi i32 [ undef, %bb.b ], [ %spec.select17, %bb.c ]
  %i.j = insertvalue { i32, i32 } poison, i32 %.sroa.03.0, 0
  %i.k = insertvalue { i32, i32 } %i.j, i32 %.sroa.4.0, 1
  ret { i32, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h86461f9b5c020e33E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = load ptr, ptr %1, align 8
  %i.c = load i8, ptr %i.b, align 1
  %.not = icmp eq i8 %i.c, 5
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4997c696647f1177E"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <2 x i64>, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi <2 x i64> [ %i.f, %bb.b ], [ <i64 1, i64 0>, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.g, ptr %i.h, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hafa935e373000beaE"(ptr sret([32 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  tail call void @"_ZN18lindera_dictionary10dictionary1_103_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lindera_dictionary..dictionary..UserDictionary$GT$9serialize17h465516f2e498eb23E"(ptr sret([32 x i8]) align 8 %0, ptr align 8 %i.a, ptr align 8 %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN10serde_core3ser5impls62_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$RF$T$GT$9serialize17hc69ca19ec4706988E"(ptr sret([32 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  tail call void @"_ZN18lindera_dictionary7viterbi1_95_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lindera_dictionary..viterbi..WordEntry$GT$9serialize17h5b4a5c23d0226517E"(ptr sret([32 x i8]) align 8 %0, ptr align 4 %i.a, ptr align 8 %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_ZN11encoding_rs8Encoding24for_label_no_replacement17h785e4ddda5a9b747E(ptr align 1 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = tail call align 8 ptr @_ZN11encoding_rs8Encoding9for_label17hf7bbd5bf0316f170E(ptr align 1 %0, i64 %1) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hf97d81522856fa45E"(ptr nonnull align 8 %i.a, ptr nonnull align 8 @_ZN11encoding_rs11REPLACEMENT17h9df21668d959789cE)
  %i.d = load ptr, ptr %i.a, align 8
  %spec.select = select i1 %i.c, ptr null, ptr %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_ZN11encoding_rs8Encoding6decode17h8c217a98fae014a4E(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 33)) %0, ptr align 8 %1, ptr align 1 %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = tail call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha84cd94831845d54E"(ptr align 1 %2, i64 %3, ptr nonnull align 1 @2, i64 3)
  br i1 %i.b, label %_ZN11encoding_rs8Encoding7for_bom17hf682eb3f4b962435E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha84cd94831845d54E"(ptr align 1 %2, i64 %3, ptr nonnull align 1 @3, i64 2)
  br i1 %i.c, label %_ZN11encoding_rs8Encoding7for_bom17hf682eb3f4b962435E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17ha84cd94831845d54E"(ptr align 1 %2, i64 %3, ptr nonnull align 1 @4, i64 2)
  br i1 %i.d, label %_ZN11encoding_rs8Encoding7for_bom17hf682eb3f4b962435E.exit, label %_ZN11encoding_rs8Encoding7for_bom17hf682eb3f4b962435E.exit.thread

_ZN11encoding_rs8Encoding7for_bom17hf682eb3f4b962435E.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.5.0.i = phi i64 [ 2, %bb.c ], [ 3, %bb.a ], [ 2, %bb.b ]
  %.sroa.0.0.i.in = phi ptr [ @_ZN11encoding_rs8UTF_16BE17hbaa8b22e6dbca5a3E, %bb.c ], [ @_ZN11encoding_rs5UTF_817ha82da245c1453f10E, %bb.a ], [ @_ZN11encoding_rs8UTF_16LE17h78fb814f75eae0b9E, %bb.b ]
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.i.in, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not, label %_ZN11encoding_rs8Encoding7for_bom17hf682eb3f4b962435E.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN11encoding_rs8Encoding7for_bom17hf682eb3f4b962435E.exit
  %i.e = tail call { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hcc235865ec8c2340E"(i64 %.sroa.5.0.i, ptr align 1 %2, i64 %3, ptr nonnull align 8 @1) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  br label %_ZN11encoding_rs8Encoding7for_bom17hf682eb3f4b962435E.exit.thread

_ZN11encoding_rs8Encoding7for_bom17hf682eb3f4b962435E.exit.thread: ; preds = %bb.c, %_ZN11encoding_rs8Encoding7for_bom17hf682eb3f4b962435E.exit, %bb.d
  %.sroa.6.0 = phi i64 [ %i.g, %bb.d ], [ %3, %_ZN11encoding_rs8Encoding7for_bom17hf682eb3f4b962435E.exit ], [ %3, %bb.c ]
  %.sroa.3.0 = phi ptr [ %i.f, %bb.d ], [ %2, %_ZN11encoding_rs8Encoding7for_bom17hf682eb3f4b962435E.exit ], [ %2, %bb.c ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.d ], [ %1, %_ZN11encoding_rs8Encoding7for_bom17hf682eb3f4b962435E.exit ], [ %1, %bb.c ] ; 2 uses
  call void @_ZN11encoding_rs8Encoding27decode_without_bom_handling17h0fabcbf5eac09565E(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr align 8 %.sroa.0.0, ptr align 1 %.sroa.3.0, i64 %.sroa.6.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load i8, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14encoding_rs_io24DecodeReaderBytesBuilder17build_with_buffer17h9b800be8bf671cc7E(ptr nofree writeonly sret([160 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, i32 %2, ptr align 8 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.01 = alloca [136 x i8], align 8          ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  %i.e = alloca [16 x i8], align 8                ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 2 uses
  %i.g = alloca [48 x i8], align 8                ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  store i32 %2, ptr %i.j, align 4
  %i.k = invoke { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsMut$LT$$u5b$T$u5d$$GT$$GT$6as_mut17h1d088a4e5531b358E"(ptr align 8 %3)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.l, %bb.c
  %.sroa.02.0 = phi i1 [ true, %bb.c ], [ false, %bb.l ]
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.ab, %bb.l ] ; 2 uses
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hb6dcd47dd13e1397E"(ptr align 8 %3) #23
          to label %bb.u unwind label %bb.o

bb.c:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.j, %bb.f, %bb.e, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  %i.n = icmp ult i64 %i.m, 4
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %1, align 8
  invoke void @"_ZN4core6option15Option$LT$T$GT$3map17h24e0b9ca4de6e1bdE"(ptr nonnull sret([48 x i8]) align 8 %i.c, ptr align 8 %i.o)
          to label %bb.g unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.p = invoke { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsMut$LT$$u5b$T$u5d$$GT$$GT$6as_mut17h1d088a4e5531b358E"(ptr align 8 %3)
          to label %bb.p unwind label %bb.c

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.r = load i8, ptr %i.q, align 1
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.u = load i8, ptr %i.t, align 1
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.k
  %.sroa.0.0 = phi i8 [ 1, %bb.g ], [ %i.aa, %bb.k ], [ 0, %bb.h ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.x = load i8, ptr %i.w, align 2
  %i.y = load i32, ptr %i.j, align 4
  store i64 0, ptr %i.b, align 8
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.37.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.y, ptr %.sroa.5.0..sroa_idx8, align 8
  %.sroa.7.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i8 %i.x, ptr %.sroa.7.0..sroa_idx9, align 4
  invoke void @_ZN14encoding_rs_io4util14TinyTranscoder3new17h663718420b8f6fd7E(ptr nonnull sret([24 x i8]) align 8 %i.a)
          to label %bb.m unwind label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.z = invoke zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17h054f03ffd59b450fE"(ptr nonnull align 8 %i.c)
          to label %bb.k unwind label %bb.c

bb.k:                                             ; preds = %bb.j
  %i.aa = zext i1 %i.z to i8
  br label %bb.i

bb.l:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr73drop_in_place$LT$encoding_rs_io..util..BomPeeker$LT$std..fs..File$GT$$GT$17h7b3bf8dcec8349b2E"(ptr nonnull align 8 %i.b) #23
          to label %bb.b unwind label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i8, ptr %i.ac, align 8
  %.sroa.01.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %.sroa.01.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.01.64..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %.sroa.01.112..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.112..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.01, i64 136, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store i8 %i.ad, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 153
  store i8 %.sroa.0.0, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 154
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 2
  br label %bb.n

bb.n:                                             ; preds = %bb.v, %bb.m
  ret void

bb.o:                                             ; preds = %bb.x, %bb.l, %bb.b
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

bb.p:                                             ; preds = %bb.f
  %i.af = extractvalue { ptr, i64 } %i.p, 1
  store i64 %i.af, ptr %i.d, align 8
  invoke void @_ZN4core3fmt2rt8Argument11new_display17h3806591c33726a33E(ptr nonnull sret([16 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d)
          to label %bb.q unwind label %bb.c

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  invoke void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117ha5312cd206eec7aaE"(ptr nonnull sret([48 x i8]) align 8 %i.g, ptr nonnull align 8 @7, ptr nonnull align 8 %i.f)
          to label %bb.r unwind label %bb.c

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN5alloc3fmt6format17haf5c86cf8051d3e2E(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.s unwind label %bb.c

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.ag = invoke ptr @_ZN3std2io5error5Error3new17hf56646e3f509c3a9E(i8 40, ptr nonnull align 8 %i.i)
          to label %bb.t unwind label %bb.c

bb.t:                                             ; preds = %bb.s
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.ah, align 8
  store i64 2, ptr %0, align 8
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hb6dcd47dd13e1397E"(ptr align 8 %3)
          to label %bb.v unwind label %.thread

bb.u:                                             ; preds = %bb.b
  br i1 %.sroa.02.0, label %bb.x, label %bb.w

.thread:                                          ; preds = %bb.t
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  call void @"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h1e9ddcc7425fa11cE"(ptr nonnull align 4 %i.j)
  br label %bb.n

bb.w:                                             ; preds = %bb.x, %bb.u
  %.pn514 = phi { ptr, i32 } [ %.pn515, %bb.x ], [ %.pn, %bb.u ]
  resume { ptr, i32 } %.pn514

bb.x:                                             ; preds = %.thread, %bb.u
  %.pn515 = phi { ptr, i32 } [ %i.ai, %.thread ], [ %.pn, %bb.u ]
  invoke void @"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h1e9ddcc7425fa11cE"(ptr nonnull align 4 %i.j) #23
          to label %bb.w unwind label %bb.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN14encoding_rs_io24DecodeReaderBytesBuilder17build_with_buffer28_$u7b$$u7b$closure$u7d$$u7d$17hc0f2e930102763dbE"(ptr sret([48 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN11encoding_rs8Encoding19new_variant_decoder17hb36f82f3919d968aE(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr align 8 %1), !noalias !3
  call void @_ZN11encoding_rs7Decoder3new17h819bb47fb1ffa012E(ptr sret([48 x i8]) align 8 %0, ptr align 8 %1, ptr nonnull align 8 %i.a, i8 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14encoding_rs_io24DecodeReaderBytesBuilder5build17h9ca0b798ad14b4afE(ptr nofree writeonly sret([160 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, i32 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [4 x i8], align 4                 ; 2 uses
  %i.d = alloca [160 x i8], align 8               ; 4 uses
  store i32 %2, ptr %i.c, align 4
  invoke void @_ZN5alloc3vec9from_elem17h288fb034aac4bb4fE(ptr nonnull sret([24 x i8]) align 8 %i.b, i8 0, i64 8192, ptr nonnull align 8 @9)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @_ZN14encoding_rs_io24DecodeReaderBytesBuilder17build_with_buffer17h9b800be8bf671cc7E(ptr nonnull sret([160 x i8]) align 8 %i.d, ptr align 8 %1, i32 %2, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 2
  br i1 %i.f, label %bb.c, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf4fee96657c27fb1E.exit"

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@"_ZN14encoding_rs_io30DecodeReaderBytes$LT$R$C$B$GT$14tiny_transcode17hacc3bb77b5222264E":bb.a
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  %i.s = load i64, ptr %i.e, align 8
  %i.t = add i64 %i.s, %i.q
  store i64 %i.t, ptr %i.e, align 8
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h8172a5c2cf64c7d9E.exit"
  %i.u = tail call ptr @"_ZN14encoding_rs_io30DecodeReaderBytes$LT$R$C$B$GT$4fill17h0e258ff84a099409E"(ptr nonnull align 8 %0)
  %i.v = tail call ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd81fcc1386ad573dE"(ptr %i.u) ; 2 uses
  %.not3 = icmp eq ptr %i.v, null
  br i1 %.not3, label %bb.i, label %bb.h

bb.g:                                             ; preds = %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h8172a5c2cf64c7d9E.exit"
  %i.w = tail call { i64, ptr } @"_ZN70_$LT$encoding_rs_io..util..TinyTranscoder$u20$as$u20$std..io..Read$GT$4read17hf4ca60fa71cc008fE"(ptr nonnull align 8 %i.b, ptr align 1 %1, i64 %2)
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.x = tail call { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3fbd265e71ed4115E"(ptr nonnull %i.v, ptr nonnull align 8 @16)
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.y = load i64, ptr %i.f, align 8
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.c

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call align 8 ptr @"_ZN4core6option15Option$LT$T$GT$6as_mut17hee75ba659023d1dfE"(ptr nonnull align 8 %i.c) ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.k, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h10bf3a211c99b492E.exit"

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr nonnull align 8 @15) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h10bf3a211c99b492E.exit": ; preds = %bb.j
  %i.ab = tail call { i64, i64 } @_ZN14encoding_rs_io4util14TinyTranscoder9transcode17hcedf6b32e988528aE(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.aa, ptr nonnull align 1 inttoptr (i64 1 to ptr), i64 0, i1 zeroext true) ; 0 uses
  %i.ac = tail call { i64, ptr } @"_ZN70_$LT$encoding_rs_io..util..TinyTranscoder$u20$as$u20$std..io..Read$GT$4read17hf4ca60fa71cc008fE"(ptr nonnull align 8 %i.b, ptr align 1 %1, i64 %2)
  br label %bb.l

bb.l:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h10bf3a211c99b492E.exit", %bb.h, %bb.g
  %.pn = phi { i64, ptr } [ %i.w, %bb.g ], [ %i.x, %bb.h ], [ %i.ac, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h10bf3a211c99b492E.exit" ]
  ret { i64, ptr } %.pn
}

; Function Attrs: nonlazybind uwtable
define ptr @"_ZN14encoding_rs_io30DecodeReaderBytes$LT$R$C$B$GT$4fill17h0e258ff84a099409E"(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 7 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = tail call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsMut$LT$$u5b$T$u5d$$GT$$GT$6as_mut17h1d088a4e5531b358E"(ptr nonnull align 8 %i.j)
  %i.l = extractvalue { ptr, i64 } %i.k, 1
  %i.m = icmp ult i64 %i.h, %i.l
  br i1 %i.m, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %storemerge = phi i64 [ %i.aq, %._crit_edge ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %i.g, align 8
  store i64 0, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsMut$LT$$u5b$T$u5d$$GT$$GT$6as_mut17h1d088a4e5531b358E"(ptr nonnull align 8 %i.n) ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  %i.r = load i64, ptr %i.g, align 8
  %i.s = call { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2144d2173d4f8ef8E"(i64 %i.r, ptr align 1 %i.p, i64 %i.q, ptr nonnull align 8 @19) ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  %i.v = call { i64, ptr } @"_ZN74_$LT$encoding_rs_io..util..BomPeeker$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h42ce343ec8c80eb5E"(ptr nonnull align 8 %0, ptr align 1 %i.t, i64 %i.u) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1
  %i.y = call { i64, ptr } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdbdd436dff7562b6E"(i64 %i.w, ptr %i.x) ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0
  %i.aa = extractvalue { i64, ptr } %i.y, 1       ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1
  br i1 %i.ab, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN3std9panicking11begin_panic17h3ae8d44fd2c8c89bE(ptr nonnull align 1 @17, i64 41, ptr nonnull align 8 @18) #25
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.ac = tail call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsMut$LT$$u5b$T$u5d$$GT$$GT$6as_mut17h1d088a4e5531b358E"(ptr nonnull align 8 %i.j) ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0      ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1      ; 4 uses
  %i.af = load i64, ptr %i.e, align 8
  %i.ag = load i64, ptr %i.g, align 8
  call void @_ZN4core4iter6traits8iterator8Iterator9enumerate17he6f22b8aacc362b6E(ptr nonnull sret([24 x i8]) align 8 %i.c, i64 %i.af, i64 %i.ag)
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17habbbd07c41040f10E"(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h782cccb183021467E"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b)
  %i.ah = load i64, ptr %i.a, align 8
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.al = load i64, ptr %i.aj, align 8            ; 3 uses
  %i.am = load i64, ptr %i.ak, align 8            ; 3 uses
  %i.an = icmp ult i64 %i.am, %i.ae
  br i1 %i.an, label %bb.k, label %bb.l

._crit_edge:                                      ; preds = %bb.m, %bb.e
  %i.ao = load i64, ptr %i.e, align 8
  %i.ap = load i64, ptr %i.g, align 8
  %i.aq = sub i64 %i.ap, %i.ao
  br label %bb.c

bb.g:                                             ; preds = %bb.c
  %i.ar = call ptr @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h9feba4a747e2c187E"(ptr %i.aa, ptr nonnull align 8 @20)
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.as = ptrtoint ptr %i.aa to i64
  %i.at = load i64, ptr %i.g, align 8
  %i.au = add i64 %i.at, %i.as                    ; 2 uses
  store i64 %i.au, ptr %i.g, align 8
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 154
  store i8 1, ptr %i.aw, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.sroa.0.0 = phi ptr [ %i.ar, %bb.g ], [ null, %bb.i ], [ null, %bb.h ]
  ret ptr %.sroa.0.0

bb.k:                                             ; preds = %bb.f
  %i.ax = icmp ult i64 %i.al, %i.ae
  br i1 %i.ax, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.f
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 %i.am, i64 %i.ae, ptr nonnull align 8 @21) #25
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.am
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.al
  store i8 %i.az, ptr %i.ba, align 1
  call void @"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h782cccb183021467E"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b)
  %i.bb = load i64, ptr %i.a, align 8
  %i.bc = trunc nuw i64 %i.bb to i1
  br i1 %i.bc, label %bb.f, label %._crit_edge

bb.n:                                             ; preds = %bb.k
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 %i.al, i64 %i.ae, ptr nonnull align 8 @22) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define ptr @"_ZN14encoding_rs_io30DecodeReaderBytes$LT$R$C$B$GT$6detect17hdc53413313fee332E"(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [3 x i8], align 1                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 2 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 3 uses
  %i.h = alloca [16 x i8], align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 153 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = load i64, ptr %0, align 8
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  store i64 0, ptr %i.f, align 8
  br label %"_ZN14encoding_rs_io4util18BomPeeker$LT$R$GT$8peek_bom17hfe5139708fc3f489E.exit"

bb.d:                                             ; preds = %bb.b
  call void @_ZN14encoding_rs_io4util11PossibleBom3new17hf714d2602fc55f22E(ptr nonnull sret([16 x i8]) align 8 %i.c)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.b, i8 0, i64 3, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = call { i64, ptr } @_ZN14encoding_rs_io4util9read_full17h6e84ac2f93fa12edE(ptr nonnull align 4 %i.p, ptr nonnull align 1 %i.b, i64 3) ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = extractvalue { i64, ptr } %i.q, 1
  %i.t = call { i64, ptr } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdbdd436dff7562b6E"(i64 %i.r, ptr %i.s) ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0
  %i.v = extractvalue { i64, ptr } %i.t, 1        ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1
  br i1 %i.w, label %bb.e, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h3e652b878b6e4f2aE.exit.i"

bb.e:                                             ; preds = %bb.d
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hd09bbf10ca19b80cE"(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr %i.v, ptr nonnull align 8 @31)
  br label %"_ZN14encoding_rs_io4util18BomPeeker$LT$R$GT$8peek_bom17hfe5139708fc3f489E.exit"

"_ZN4core6option15Option$LT$T$GT$6unwrap17h3e652b878b6e4f2aE.exit.i": ; preds = %bb.d
  %i.x = ptrtoint ptr %i.v to i64
  %.sroa.25.sroa.2.0..sroa.25.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.25.sroa.2.0..sroa.25.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %i.b, i64 3, i1 false)
  store i64 1, ptr %0, align 8
  store i64 %i.x, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i, i64 16, i1 false)
  store i64 0, ptr %i.f, align 8
  br label %"_ZN14encoding_rs_io4util18BomPeeker$LT$R$GT$8peek_bom17hfe5139708fc3f489E.exit"

"_ZN14encoding_rs_io4util18BomPeeker$LT$R$GT$8peek_bom17hfe5139708fc3f489E.exit": ; preds = %bb.c, %bb.e, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h3e652b878b6e4f2aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h9febbcb72c1e9fdaE"(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f)
  %i.z = load i64, ptr %i.g, align 8
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %"_ZN14encoding_rs_io4util18BomPeeker$LT$R$GT$8peek_bom17hfe5139708fc3f489E.exit"
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call ptr @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h9feba4a747e2c187E"(ptr %i.ac, ptr nonnull align 8 @23)
  br label %bb.k

bb.g:                                             ; preds = %"_ZN14encoding_rs_io4util18BomPeeker$LT$R$GT$8peek_bom17hfe5139708fc3f489E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  %i.ae = call align 8 ptr @_ZN14encoding_rs_io4util11PossibleBom8encoding17he46852395800fd92E(ptr nonnull align 8 %i.h) ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.ae, ptr %i.e, align 8
  %i.af = call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hf97d81522856fa45E"(ptr nonnull align 8 %i.e, ptr nonnull align 8 @_ZN11encoding_rs5UTF_817ha82da245c1453f10E)
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.ag = load ptr, ptr %i.e, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN11encoding_rs8Encoding19new_variant_decoder17hb36f82f3919d968aE(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr align 8 %i.ag), !noalias !6
  call void @_ZN11encoding_rs7Decoder3new17h819bb47fb1ffa012E(ptr nonnull sret([48 x i8]) align 8 %i.d, ptr align 8 %i.ag, ptr nonnull align 8 %i.a, i8 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aj = load i8, ptr %i.ai, align 8
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.k, label %bb.i

bb.k:                                             ; preds = %bb.j, %bb.g, %bb.i, %bb.a, %bb.f
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.ad, %bb.f ], [ null, %bb.g ], [ null, %bb.i ], [ null, %bb.j ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN14encoding_rs_io30DecodeReaderBytes$LT$R$C$B$GT$9transcode17ha0609c8dc135422dE"(ptr align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 154
  %i.d = load i8, ptr %i.c, align 2
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17ha3995b82673929caE"(ptr align 1 %1, i64 %2)
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = tail call { i64, ptr } @"_ZN70_$LT$encoding_rs_io..util..TinyTranscoder$u20$as$u20$std..io..Read$GT$4read17hf4ca60fa71cc008fE"(ptr nonnull align 8 %i.g, ptr align 1 %1, i64 %2) ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1
  %i.k = tail call { i64, ptr } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdbdd436dff7562b6E"(i64 %i.i, ptr %i.j) ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0
  %i.m = extractvalue { i64, ptr } %i.k, 1        ; 3 uses
  %i.n = trunc nuw i64 %i.l to i1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3fbd265e71ed4115E"(ptr %i.m, ptr nonnull align 8 @29) ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.o, 0
  %i.q = extractvalue { i64, ptr } %i.o, 1
  %i.r = ptrtoint ptr %i.q to i64
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.s = ptrtoint ptr %i.m to i64
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8
  %.not9 = icmp ult i64 %i.u, %i.w
  br i1 %.not9, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.x = icmp ult i64 %2, 4
  br i1 %i.x, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ab = tail call ptr @"_ZN14encoding_rs_io30DecodeReaderBytes$LT$R$C$B$GT$4fill17h0e258ff84a099409E"(ptr nonnull align 8 %0)
  %i.ac = tail call ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd81fcc1386ad573dE"(ptr %i.ab) ; 2 uses
  %.not10 = icmp eq ptr %i.ac, null
  br i1 %.not10, label %bb.g, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3fbd265e71ed4115E"(ptr nonnull %i.ac, ptr nonnull align 8 @28) ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1
  %i.ag = ptrtoint ptr %i.af to i64
  br label %.loopexit

bb.j:                                             ; preds = %.preheader, %bb.p
  %i.ah = call align 8 ptr @"_ZN4core6option15Option$LT$T$GT$6as_mut17hee75ba659023d1dfE"(ptr nonnull align 8 %i.y) ; 2 uses
  %.not.i13 = icmp eq ptr %i.ah, null
  br i1 %.not.i13, label %bb.k, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h10bf3a211c99b492E.exit14"

bb.k:                                             ; preds = %bb.j
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr nonnull align 8 @24) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h10bf3a211c99b492E.exit14": ; preds = %bb.j
  %i.ai = call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsMut$LT$$u5b$T$u5d$$GT$$GT$6as_mut17h1d088a4e5531b358E"(ptr nonnull align 8 %i.z) ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %i.ai, 1      ; 2 uses
  %i.ak = load i64, ptr %i.t, align 8             ; 4 uses
  %i.al = load i64, ptr %i.v, align 8             ; 4 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %.not.i.i = icmp ugt i64 %i.al, %i.aj
  %or.cond.i.i = select i1 %i.am, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %bb.l, label %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h8172a5c2cf64c7d9E.exit"

bb.l:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h10bf3a211c99b492E.exit14"
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 %i.ak, i64 %i.al, i64 %i.aj, ptr nonnull align 8 @25) #25
  unreachable

"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h8172a5c2cf64c7d9E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h10bf3a211c99b492E.exit14"
  %i.an = extractvalue { ptr, i64 } %i.ai, 0
  %i.ao = sub nuw i64 %i.al, %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ak
  call void @_ZN11encoding_rs7Decoder14decode_to_utf817h1939cdbead8dcbc0E(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.ah, ptr align 1 %i.ap, i64 %i.ao, ptr align 1 %1, i64 %2, i1 zeroext false)
  %i.aq = load i64, ptr %i.b, align 8
  %i.ar = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.as = load i64, ptr %i.t, align 8
  %i.at = add i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.t, align 8
  %.not11 = icmp eq i64 %i.ar, 0
  br i1 %.not11, label %bb.n, label %.loopexit

bb.m:                                             ; preds = %bb.g
  %i.au = tail call { i64, ptr } @"_ZN14encoding_rs_io30DecodeReaderBytes$LT$R$C$B$GT$14tiny_transcode17hacc3bb77b5222264E"(ptr nonnull align 8 %0, ptr align 1 %1, i64 %2) ; 2 uses
  %i.av = extractvalue { i64, ptr } %i.au, 0
  %i.aw = extractvalue { i64, ptr } %i.au, 1
  %i.ax = ptrtoint ptr %i.aw to i64
  br label %.loopexit

bb.n:                                             ; preds = %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h8172a5c2cf64c7d9E.exit"
  %i.ay = call ptr @"_ZN14encoding_rs_io30DecodeReaderBytes$LT$R$C$B$GT$4fill17h0e258ff84a099409E"(ptr nonnull align 8 %0)
  %i.az = call ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd81fcc1386ad573dE"(ptr %i.ay) ; 2 uses
  %.not12 = icmp eq ptr %i.az, null
  br i1 %.not12, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = call { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3fbd265e71ed4115E"(ptr nonnull %i.az, ptr nonnull align 8 @27) ; 2 uses
  %i.bb = extractvalue { i64, ptr } %i.ba, 0
  %i.bc = extractvalue { i64, ptr } %i.ba, 1
  %i.bd = ptrtoint ptr %i.bc to i64
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.be = load i64, ptr %i.v, align 8
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.q, label %bb.j

bb.q:                                             ; preds = %bb.p
  %i.bg = call align 8 ptr @"_ZN4core6option15Option$LT$T$GT$6as_mut17hee75ba659023d1dfE"(ptr nonnull align 8 %i.y) ; 2 uses
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %bb.r, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h10bf3a211c99b492E.exit"

bb.r:                                             ; preds = %bb.q
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr nonnull align 8 @26) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h10bf3a211c99b492E.exit": ; preds = %bb.q
  call void @_ZN11encoding_rs7Decoder14decode_to_utf817h1939cdbead8dcbc0E(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.bg, ptr nonnull align 1 inttoptr (i64 1 to ptr), i64 0, ptr align 1 %1, i64 %2, i1 zeroext true)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bi = load i64, ptr %i.bh, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h8172a5c2cf64c7d9E.exit", %bb.e, %bb.a, %bb.b, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h10bf3a211c99b492E.exit", %bb.o, %bb.m, %bb.i, %bb.d
  %.sroa.9.0 = phi i64 [ %i.bi, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h10bf3a211c99b492E.exit" ], [ %i.r, %bb.d ], [ 0, %bb.a ], [ %i.ag, %bb.i ], [ %i.ax, %bb.m ], [ %i.s, %bb.e ], [ %i.bd, %bb.o ], [ 0, %bb.b ], [ %i.ar, %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h8172a5c2cf64c7d9E.exit" ]
  %.sroa.0.0 = phi i64 [ 0, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h10bf3a211c99b492E.exit" ], [ %i.p, %bb.d ], [ 0, %bb.a ], [ %i.ae, %bb.i ], [ %i.av, %bb.m ], [ 0, %bb.e ], [ %i.bb, %bb.o ], [ 0, %bb.b ], [ 0, %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h8172a5c2cf64c7d9E.exit" ]
  %i.bj = inttoptr i64 %.sroa.9.0 to ptr
  %i.bk = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.bl = insertvalue { i64, ptr } %i.bk, ptr %i.bj, 1
  ret { i64, ptr } %i.bl
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @"_ZN14encoding_rs_io4util18BomPeeker$LT$R$GT$11without_bom17h5235938e77893451E"(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 8), (24, 37)) %0, i32 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.b, align 4
  store i64 0, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN14encoding_rs_io4util18BomPeeker$LT$R$GT$8peek_bom17hfe5139708fc3f489E"(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = load i64, ptr %1, align 8
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_ZN14encoding_rs_io4util11PossibleBom3new17hf714d2602fc55f22E(ptr nonnull sret([16 x i8]) align 8 %i.b)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  store i64 1, ptr %1, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.a, i8 0, i64 3, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = call { i64, ptr } @_ZN14encoding_rs_io4util9read_full17h6e84ac2f93fa12edE(ptr nonnull align 4 %i.g, ptr nonnull align 1 %i.a, i64 3) ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1
  %i.k = call { i64, ptr } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdbdd436dff7562b6E"(i64 %i.i, ptr %i.j) ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0
  %i.m = extractvalue { i64, ptr } %i.k, 1        ; 2 uses
  %i.n = trunc nuw i64 %i.l to i1
  br i1 %i.n, label %bb.e, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h3e652b878b6e4f2aE.exit"

bb.d:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h3e652b878b6e4f2aE.exit", %bb.e, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hd09bbf10ca19b80cE"(ptr sret([24 x i8]) align 8 %0, ptr %i.m, ptr nonnull align 8 @31)
  br label %bb.d

"_ZN4core6option15Option$LT$T$GT$6unwrap17h3e652b878b6e4f2aE.exit": ; preds = %bb.c
  %i.o = ptrtoint ptr %i.m to i64
  %.sroa.25.sroa.2.0..sroa.25.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.25.sroa.2.0..sroa.25.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %i.a, i64 3, i1 false)
  store i64 1, ptr %1, align 8
  store i64 %i.o, ptr %.sroa.2.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @"_ZN14encoding_rs_io4util18BomPeeker$LT$R$GT$8with_bom17h0c675cdaa57a3954E"(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 8), (24, 37)) %0, i32 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.b, align 4
  store i64 0, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN14encoding_rs_io4util9read_full17h6e84ac2f93fa12edE(ptr align 4 %0, ptr align 1 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = tail call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17ha3995b82673929caE"(ptr align 1 %1, i64 %2)
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.n, %bb.g
  resume { ptr, i32 } %i.o

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.0.022 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.1, %bb.l ] ; 3 uses
  %.sroa.5.021 = phi i64 [ %2, %.lr.ph ], [ %.sroa.5.1, %bb.l ] ; 3 uses
  %.sroa.09.020 = phi i64 [ 0, %.lr.ph ], [ %.sroa.09.1, %bb.l ] ; 3 uses
  %i.f = call { i64, ptr } @"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$4read17he76610af587064f5E"(ptr nonnull align 8 %i.c, ptr align 1 %.sroa.0.022, i64 %.sroa.5.021) ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.b, align 8
  store ptr %i.h, ptr %i.e, align 8
  %i.i = trunc nuw i64 %i.g to i1
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.e, %bb.l
  %.sroa.09.0.lcssa.ph = phi i64 [ %.sroa.09.1, %bb.l ], [ %.sroa.09.020, %bb.e ]
  %i.k = inttoptr i64 %.sroa.09.0.lcssa.ph to ptr
  br label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.l = invoke i8 @_ZN3std2io5error5Error4kind17hbe6743d07948aac5E(ptr nonnull align 8 %i.e)
          to label %bb.i unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq ptr %i.h, null
  br i1 %i.m, label %._crit_edge.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = invoke { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2144d2173d4f8ef8E"(i64 %i.j, ptr align 1 %.sroa.0.022, i64 %.sroa.5.021, ptr nonnull align 8 @32)
          to label %"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h0022b0ec72ccc43fE.exit" unwind label %bb.g ; 2 uses

bb.g:                                             ; preds = %bb.f, %bb.i, %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load i64, ptr %i.b, align 8
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.n, label %bb.b

"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h0022b0ec72ccc43fE.exit": ; preds = %bb.f
  %i.r = add i64 %.sroa.09.020, %i.j
  %i.s = extractvalue { ptr, i64 } %i.n, 0
  %i.t = extractvalue { ptr, i64 } %i.n, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h0022b0ec72ccc43fE.exit"
  %.sroa.09.1 = phi i64 [ %.sroa.09.020, %bb.j ], [ %i.r, %"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h0022b0ec72ccc43fE.exit" ] ; 2 uses
  %.sroa.5.1 = phi i64 [ %.sroa.5.021, %bb.j ], [ %i.t, %"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h0022b0ec72ccc43fE.exit" ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.022, %bb.j ], [ %i.s, %"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h0022b0ec72ccc43fE.exit" ] ; 2 uses
  %i.u = load i64, ptr %i.b, align 8
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.m, label %bb.l

bb.i:                                             ; preds = %bb.d
  store i8 %i.l, ptr %i.a, align 1
  %i.w = invoke zeroext i1 @"_ZN66_$LT$std..io..error..ErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc3969bd415a9b2a7E"(ptr nonnull align 1 %i.a, ptr nonnull align 1 @33)
          to label %bb.j unwind label %bb.g

bb.j:                                             ; preds = %bb.i
  br i1 %i.w, label %bb.h, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = load ptr, ptr %i.e, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit, %bb.k
  %.sroa.3.0 = phi ptr [ %i.x, %bb.k ], [ null, %bb.a ], [ %i.k, %._crit_edge.loopexit ]
  %.sroa.08.0 = phi i64 [ 1, %bb.k ], [ 0, %bb.a ], [ 0, %._crit_edge.loopexit ]
  %i.y = insertvalue { i64, ptr } poison, i64 %.sroa.08.0, 0
  %i.z = insertvalue { i64, ptr } %i.y, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.z

bb.l:                                             ; preds = %bb.m, %bb.h
  %i.aa = call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17ha3995b82673929caE"(ptr align 1 %.sroa.0.1, i64 %.sroa.5.1)
  br i1 %i.aa, label %._crit_edge.loopexit, label %bb.c

bb.m:                                             ; preds = %bb.h
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hda4bf98b397becb6E"(ptr nonnull align 8 %i.e)
  br label %bb.l

bb.n:                                             ; preds = %bb.g
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hda4bf98b397becb6E"(ptr nonnull align 8 %i.e) #23
          to label %bb.b unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN184_$LT$lindera_dictionary..mode.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lindera_dictionary..mode..Mode$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17hfc5e3379f1cdd10dE"(ptr nofree readnone align 1 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr align 8 %1, ptr nonnull align 1 @34, i64 9)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i32, i32 } @"_ZN185_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..ops..control_flow..ControlFlow$LT$B$C$core..convert..Infallible$GT$$GT$$GT$13from_residual17h53fd9de88d33bde1E"(i32 %0, i32 %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { i32, i32 } poison, i32 %0, 0
  %i.b = insertvalue { i32, i32 } %i.a, i32 %1, 1
  ret { i32, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @"_ZN185_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..ops..control_flow..ControlFlow$LT$B$C$core..convert..Infallible$GT$$GT$$GT$13from_residual17h892951e88a6de404E"(ptr align 1 %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @"_ZN185_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..ops..control_flow..ControlFlow$LT$B$C$core..convert..Infallible$GT$$GT$$GT$13from_residual17h8b08a0a6cbad6053E"(ptr align 1 %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i32, i32 } @"_ZN185_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..ops..control_flow..ControlFlow$LT$B$C$core..convert..Infallible$GT$$GT$$GT$13from_residual17hf0963cc7cc3c1ab5E"(i32 %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { i32, i32 } { i32 1, i32 poison }, i32 %0, 1
  ret { i32, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN187_$LT$lindera_dictionary..mode.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lindera_dictionary..mode..Penalty$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17h8226396bfb1fcb71E"(ptr nofree readnone align 1 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr align 8 %1, ptr nonnull align 1 @35, i64 14)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN189_$LT$lindera_dictionary..mode.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lindera_dictionary..mode..Mode$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17hd3b42bd592075e7fE"(ptr nofree readnone align 1 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr align 8 %1, ptr nonnull align 1 @36, i64 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_ZN18lindera_dictionary10dictionary10Dictionary12word_details17h84cb0208c5ddffa8E(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = shl i64 %2, 2                            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.i = tail call { ptr, i64 } @"_ZN74_$LT$lindera_dictionary..util..Data$u20$as$u20$core..ops..deref..Deref$GT$5deref17h99b697719bae2cb0E"(ptr nonnull align 8 %i.h)
  %i.j = extractvalue { ptr, i64 } %i.i, 1
  %.not = icmp ult i64 %i.g, %i.j
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = tail call { ptr, i64 } @"_ZN74_$LT$lindera_dictionary..util..Data$u20$as$u20$core..ops..deref..Deref$GT$5deref17h99b697719bae2cb0E"(ptr nonnull align 8 %i.h) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  %i.n = tail call { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hcc235865ec8c2340E"(i64 %i.g, ptr align 1 %i.l, i64 %i.m, ptr nonnull align 8 @38) ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.o, 4
end_hunk_1
begin_hunk_2_@_ZN18lindera_dictionary10dictionary14UserDictionary12word_details17h1dcc0b0a3415f635E:bb.a

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @"_ZN18lindera_dictionary10dictionary14UserDictionary12word_details28_$u7b$$u7b$closure$u7d$$u7d$17h8804d5da7058c5b5E"(ptr nofree readnone align 1 captures(none) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %1, align 1
  %i.b = icmp eq i8 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_ZN18lindera_dictionary10dictionary14UserDictionary4load17h1c5542a98c683b69E(ptr sret([104 x i8]) align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 2 uses
  %i.b = alloca [104 x i8], align 8               ; 2 uses
  tail call void @_ZN7bincode6config6legacy17h4a2e280fd7e37135E()
  call void @_ZN7bincode8features5serde8de_owned17decode_from_slice17he962523149a83636E(ptr nonnull sret([112 x i8]) align 8 %i.a, ptr align 1 %1, i64 %2)
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$3map17hf2f173ab3ac5c01dE"(ptr nonnull sret([104 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h54d7117df7c7b6c8E"(ptr sret([104 x i8]) align 8 %0, ptr nonnull align 8 %i.b)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN18lindera_dictionary10dictionary14UserDictionary4load28_$u7b$$u7b$closure$u7d$$u7d$17h18c65bdec59a2c8bE"(ptr nofree writeonly sret([104 x i8]) align 8 captures(none) initializes((0, 104)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false)
  ret void
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define hidden { ptr, i8 } @"_ZN18lindera_dictionary10dictionary14UserDictionary4load28_$u7b$$u7b$closure$u7d$$u7d$17hf1c4efd8f7c2852aE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  invoke void @_ZN6anyhow4kind9TraitKind11anyhow_kind17h2cc5495c98484704E(ptr nonnull align 8 %i.b)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.c = call ptr @_ZN6anyhow4kind5Trait3new17hfae07a2730b6fdb4E(ptr nonnull align 8 %i.a)
  %i.d = call ptr @_ZN6anyhow9__private8must_use17h22d53a04146d5507E(ptr %i.c)
  %i.e = call { ptr, i8 } @_ZN18lindera_dictionary5error16LinderaErrorKind10with_error17h03ffb3564b92cf84E(i8 3, ptr %i.d)
  ret { ptr, i8 } %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr48drop_in_place$LT$bincode..error..DecodeError$GT$17h4fe2162e34a28b89E"(ptr nonnull align 8 %i.b) #23
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN18lindera_dictionary10dictionary1_103_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lindera_dictionary..dictionary..UserDictionary$GT$9serialize17h465516f2e498eb23E"(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  call void @"_ZN102_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17h12cf92b2856e1017E"(ptr nonnull sret([32 x i8]) align 8 %i.e, ptr align 8 %2, ptr nonnull align 1 @48, i64 14, i64 1)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h92ee6ce84bc3eda5E"(ptr nonnull sret([32 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
  %i.h = load i64, ptr %i.f, align 8
  %.not = icmp eq i64 %i.h, 9
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h55cde6960c05e988E"(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.d, ptr nonnull align 8 @50)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  store ptr %i.j, ptr %i.g, align 8
  call void @"_ZN107_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he562b84e0ff89e24E"(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 8 %i.g, ptr nonnull align 1 @49, i64 4, ptr align 8 %1)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hfde5ee0eab29d973E"(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  %i.k = load i64, ptr %i.c, align 8
  %.not2 = icmp eq i64 %i.k, 9
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h55cde6960c05e988E"(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @50)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.g, align 8
  call void @"_ZN107_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17hfd9f9462273b3a47E"(ptr sret([32 x i8]) align 8 %0, ptr align 8 %i.l)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN18lindera_dictionary10dictionary1_104_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lindera_dictionary..dictionary..UserDictionary$GT$11deserialize17h3d2494796be0f71eE"(ptr sret([104 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @"_ZN110_$LT$bincode..features..serde..de_borrowed..SerdeDecoder$LT$DE$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h93b4793403f22be1E"(ptr sret([104 x i8]) align 8 %0, ptr align 8 %1, ptr nonnull align 1 @48, i64 14, ptr nonnull align 8 @51, i64 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define range(i32 -32768, 32768) i32 @_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h5be7a7f72087495aE(ptr align 8 %0, i32 %1, i32 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8
  %i.d = mul i32 %i.c, %1
  %i.e = add i32 %i.d, %2
  %i.f = zext i32 %i.e to i64
  %i.g = tail call { ptr, i64 } @"_ZN74_$LT$lindera_dictionary..util..Data$u20$as$u20$core..ops..deref..Deref$GT$5deref17h99b697719bae2cb0E"(ptr align 8 %0) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  %i.j = shl nuw nsw i64 %i.f, 1
  %i.k = add nuw nsw i64 %i.j, 4
  %i.l = tail call { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hcc235865ec8c2340E"(i64 %i.k, ptr align 1 %i.h, i64 %i.i, ptr nonnull align 8 @53) ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 1        ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.m, 2
  br i1 %.not.i.i.i.i.i, label %bb.b, label %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h1e80377a7c416cb9E.exit.i.i"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 0, i64 2, i64 %i.m, ptr nonnull align 8 @138) #25
  unreachable

"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h1e80377a7c416cb9E.exit.i.i": ; preds = %bb.a
  %i.n = extractvalue { ptr, i64 } %i.l, 0
  %i.o = tail call i24 @"_ZN53_$LT$T$u20$as$u20$core..convert..TryInto$LT$U$GT$$GT$8try_into17hee1531a14f1c944fE"(ptr align 1 %i.n, i64 2) ; 2 uses
  %i.p = trunc i24 %i.o to i1
  br i1 %i.p, label %bb.c, label %_ZN9byteorder9ByteOrder8read_i1617h4e8ebc948f65b877E.exit

bb.c:                                             ; preds = %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h1e80377a7c416cb9E.exit.i.i"
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr nonnull align 1 @131, i64 43, ptr nonnull align 1 %i.a, ptr nonnull align 8 @130, ptr nonnull align 8 @139) #25
  unreachable

_ZN9byteorder9ByteOrder8read_i1617h4e8ebc948f65b877E.exit: ; preds = %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h1e80377a7c416cb9E.exit.i.i"
  %.sroa.22.0.extract.shift.i.i.i = lshr i24 %i.o, 8
  %.sroa.22.0.extract.trunc.i.i.i = zext nneg i24 %.sroa.22.0.extract.shift.i.i.i to i32
  %sext = shl nuw i32 %.sroa.22.0.extract.trunc.i.i.i, 16
  %i.q = ashr exact i32 %sext, 16
  ret i32 %i.q
}

; Function Attrs: nonlazybind uwtable
define void @_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4load17hec4a82b801377fb0E(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h1575ac232e6d99c6E"(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %1, ptr nonnull align 8 @54)
  %i.c = invoke { ptr, i64 } @"_ZN74_$LT$lindera_dictionary..util..Data$u20$as$u20$core..ops..deref..Deref$GT$5deref17h99b697719bae2cb0E"(ptr nonnull align 8 %i.b)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.e, %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h1e80377a7c416cb9E.exit.i.i", %bb.d, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr51drop_in_place$LT$lindera_dictionary..util..Data$GT$17h368d19677302e8cbE"(ptr nonnull align 8 %i.b) #23
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %.not.i.i = icmp ult i64 %i.e, 4
  br i1 %.not.i.i, label %bb.d, label %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h1e80377a7c416cb9E.exit.i.i"

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 2, i64 4, i64 %i.e, ptr nonnull align 8 @55) #25
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  unreachable

"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h1e80377a7c416cb9E.exit.i.i": ; preds = %bb.c
  %i.f = extractvalue { ptr, i64 } %i.c, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = invoke i24 @"_ZN53_$LT$T$u20$as$u20$core..convert..TryInto$LT$U$GT$$GT$8try_into17hee1531a14f1c944fE"(ptr nonnull align 1 %i.g, i64 2)
          to label %.noexc2 unwind label %bb.b    ; 2 uses

.noexc2:                                          ; preds = %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h1e80377a7c416cb9E.exit.i.i"
  %i.i = trunc i24 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc2
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr nonnull align 1 @131, i64 43, ptr nonnull align 1 %i.a, ptr nonnull align 8 @130, ptr nonnull align 8 @139) #25
          to label %.noexc3 unwind label %bb.b

.noexc3:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc2
  %.sroa.22.0.extract.shift.i.i.i = lshr i24 %i.h, 8
  %.sroa.22.0.extract.trunc.i.i.i = zext nneg i24 %.sroa.22.0.extract.shift.i.i.i to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %sext = shl nuw i32 %.sroa.22.0.extract.trunc.i.i.i, 16
  %2 = ashr exact i32 %sext, 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.j, align 8
  ret void

bb.g:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN18lindera_dictionary10dictionary3UNK28_$u7b$$u7b$closure$u7d$$u7d$17h7e6084819addf297E"(ptr sret([24 x i8]) align 8 %0, ptr nofree readnone align 1 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_ZN5alloc5alloc15exchange_malloc17h1822b769f97eab4fE(i64 16, i64 8) ; 3 uses
  store ptr @56, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 3, ptr %i.b, align 8
  tail call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8into_vec17h6aed2fb638c0b517E"(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a, i64 1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i32 @_ZN18lindera_dictionary4mode4Mode12penalty_cost17h32867eea720d1fc0E(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 4 captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN18lindera_dictionary4mode7Penalty7penalty17hbf635fc347a91bf9E.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sub i32 %i.e, %i.g
  %i.i = udiv i32 %i.h, 3                         ; 3 uses
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = load i64, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp ult i64 %i.k, %i.j
  br i1 %.not.i, label %bb.c, label %_ZN18lindera_dictionary4mode7Penalty7penalty17hbf635fc347a91bf9E.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.m = load i8, ptr %i.l, align 4
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %bb.f, label %_ZN18lindera_dictionary4mode7Penalty7penalty17hbf635fc347a91bf9E.exit

bb.e:                                             ; preds = %bb.c
  %i.r = trunc nuw nsw i64 %i.k to i32
  %i.s = sub nsw i32 %i.i, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i32, ptr %i.t, align 8
  %i.v = mul i32 %i.u, %i.s
  br label %_ZN18lindera_dictionary4mode7Penalty7penalty17hbf635fc347a91bf9E.exit

bb.f:                                             ; preds = %bb.d
  %i.w = trunc nuw nsw i64 %i.p to i32
  %i.x = sub nsw i32 %i.i, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = mul i32 %i.z, %i.x
  br label %_ZN18lindera_dictionary4mode7Penalty7penalty17hbf635fc347a91bf9E.exit

_ZN18lindera_dictionary4mode7Penalty7penalty17hbf635fc347a91bf9E.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.v, %bb.e ], [ %i.aa, %bb.f ], [ 0, %bb.d ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_ZN18lindera_dictionary4mode4Mode6as_str17h0a57d6aa6276529eE(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  %. = select i1 %i.b, i64 9, i64 6
  %.1 = select i1 %i.b, ptr @58, ptr @57
  %i.c = insertvalue { ptr, i64 } poison, ptr %.1, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 %., 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_ZN18lindera_dictionary4mode4Mode9is_search17h1548ffebe8fc2538E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = trunc nuw i64 %i.a to i1
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i32 @_ZN18lindera_dictionary4mode7Penalty7penalty17hbf635fc347a91bf9E(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 4 captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sub i32 %i.b, %i.d
  %i.f = udiv i32 %i.e, 3                         ; 3 uses
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %i.h = load i64, ptr %0, align 8                ; 2 uses
  %.not = icmp ult i64 %i.h, %i.g
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.j = load i8, ptr %i.i, align 4
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.g
  br i1 %i.n, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.o = trunc nuw nsw i64 %i.h to i32
  %i.p = sub nsw i32 %i.f, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8
  %i.s = mul i32 %i.r, %i.p
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = trunc nuw nsw i64 %i.m to i32
  %i.u = sub nsw i32 %i.f, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.w = load i32, ptr %i.v, align 4
  %i.x = mul i32 %i.w, %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.a, %bb.e, %bb.d
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ %i.s, %bb.d ], [ %i.x, %bb.e ], [ 0, %bb.c ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN18lindera_dictionary7viterbi1_92_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lindera_dictionary..viterbi..WordId$GT$9serialize17h068f4553af254039E"(ptr sret([32 x i8]) align 8 %0, ptr align 4 %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [32 x i8], align 8                ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 2 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  call void @"_ZN102_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17h70d48bc087e7f1cbE"(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr align 8 %2, ptr nonnull align 1 @59, i64 6, i64 2)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h69966e13a65f65caE"(ptr nonnull sret([32 x i8]) align 8 %i.i, ptr nonnull align 8 %i.h)
  %i.k = load i64, ptr %i.i, align 8
  %.not = icmp eq i64 %i.k, 9
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h55cde6960c05e988E"(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.g, ptr nonnull align 8 @63)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  store ptr %i.m, ptr %i.j, align 8
  call void @"_ZN107_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8ee131981f0bcd46E"(ptr nonnull sret([32 x i8]) align 8 %i.e, ptr nonnull align 8 %i.j, ptr nonnull align 1 @60, i64 2, ptr align 4 %1)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hfde5ee0eab29d973E"(ptr nonnull sret([32 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
  %i.n = load i64, ptr %i.f, align 8
  %.not2 = icmp eq i64 %i.n, 9
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h55cde6960c05e988E"(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.d, ptr nonnull align 8 @63)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @"_ZN107_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h34189c09997f7a03E"(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 8 %i.j, ptr nonnull align 1 @61, i64 9, ptr nonnull align 1 %i.o)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hfde5ee0eab29d973E"(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  %i.p = load i64, ptr %i.c, align 8
  %.not3 = icmp eq i64 %i.p, 9
  br i1 %.not3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h55cde6960c05e988E"(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @63)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.j, align 8
  call void @"_ZN107_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17had9a4c70ff3eebb0E"(ptr sret([32 x i8]) align 8 %0, ptr align 8 %i.q)
end_hunk_2
begin_hunk_3_@"_ZN192_$LT$lindera_dictionary..viterbi.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lindera_dictionary..viterbi..WordId$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h321c164206e57477E":bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.f, %bb.e, %bb.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN195_$LT$lindera_dictionary..viterbi.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lindera_dictionary..viterbi..WordEntry$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17hbb3cf706ec5a7367E"(ptr nofree readnone align 1 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr align 8 %1, ptr nonnull align 1 @111, i64 16)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN195_$LT$lindera_dictionary..viterbi.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lindera_dictionary..viterbi..WordEntry$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h4b01a60682245305E"(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 2 uses
  %i.j = alloca [32 x i8], align 8                ; 2 uses
  %i.k = alloca [32 x i8], align 8                ; 2 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 2 uses
  %i.n = alloca [32 x i8], align 8                ; 2 uses
  %i.o = alloca [32 x i8], align 8                ; 2 uses
  %i.p = alloca [32 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  store ptr %1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %2, ptr %i.r, align 8
  call void @_ZN10serde_core2de9SeqAccess12next_element17h48d77c491d78b5afE(ptr nonnull sret([32 x i8]) align 8 %i.o, ptr nonnull align 8 %i.q)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h1bd58d845eafc280E"(ptr nonnull sret([32 x i8]) align 8 %i.p, ptr nonnull align 8 %i.o)
  %i.s = load i8, ptr %i.p, align 8
  %.not = icmp eq i8 %i.s, 18
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h848466cdf8598715E"(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.n, ptr nonnull align 8 @114)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.u = load i32, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = load i8, ptr %i.v, align 8               ; 2 uses
  %.not17 = icmp eq i8 %i.w, 2
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN10serde_core2de9SeqAccess12next_element17h7b815bcea598acb0E(ptr nonnull sret([32 x i8]) align 8 %i.k, ptr nonnull align 8 %i.q)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h26c687f837857d10E"(ptr nonnull sret([32 x i8]) align 8 %i.l, ptr nonnull align 8 %i.k)
  %i.x = load i8, ptr %i.l, align 8
  %.not18 = icmp eq i8 %i.x, 18
  br i1 %.not18, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_ZN10serde_core2de5Error14invalid_length17h9c0a5a1cd35e8817E(ptr nonnull sret([32 x i8]) align 8 %i.m, i64 0, ptr nonnull align 1 @113, ptr nonnull align 8 @109)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h848466cdf8598715E"(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.j, ptr nonnull align 8 @114)
  br label %bb.r

bb.g:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ab = load i16, ptr %i.aa, align 4
  %i.ac = trunc i16 %i.z to i1
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN10serde_core2de9SeqAccess12next_element17h9f89e04679cfe07aE(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr nonnull align 8 %i.q)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h7769bb7ecc01754eE"(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
  %i.ad = load i8, ptr %i.h, align 8
  %.not19 = icmp eq i8 %i.ad, 18
  br i1 %.not19, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @_ZN10serde_core2de5Error14invalid_length17h9c0a5a1cd35e8817E(ptr nonnull sret([32 x i8]) align 8 %i.i, i64 1, ptr nonnull align 1 @113, ptr nonnull align 8 @109)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h848466cdf8598715E"(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.f, ptr nonnull align 8 @114)
  br label %bb.r

bb.k:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ah = load i16, ptr %i.ag, align 4
  %i.ai = trunc i16 %i.af to i1
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZN10serde_core2de9SeqAccess12next_element17h9f89e04679cfe07aE(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.q)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h7769bb7ecc01754eE"(ptr nonnull sret([32 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c)
  %i.aj = load i8, ptr %i.d, align 8
  %.not20 = icmp eq i8 %i.aj, 18
  br i1 %.not20, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @_ZN10serde_core2de5Error14invalid_length17h9c0a5a1cd35e8817E(ptr nonnull sret([32 x i8]) align 8 %i.e, i64 2, ptr nonnull align 1 @113, ptr nonnull align 8 @109)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h848466cdf8598715E"(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @114)
  br label %bb.r

bb.o:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = trunc i16 %i.al to i1
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ao = load i16, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.u, ptr %i.ap, align 4
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.w, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.ab, ptr %.sroa.314.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %i.ah, ptr %.sroa.4.0..sroa_idx, align 2
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.ao, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 18, ptr %0, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  call void @_ZN10serde_core2de5Error14invalid_length17h9c0a5a1cd35e8817E(ptr nonnull sret([32 x i8]) align 8 %i.a, i64 3, ptr nonnull align 1 @113, ptr nonnull align 8 @109)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.f, %bb.j, %bb.n, %bb.e, %bb.i, %bb.m, %bb.q, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN197_$LT$lindera_dictionary..viterbi.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lindera_dictionary..viterbi..WordId$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17h3f21b8ecba9fe1f2E"(ptr nofree readnone align 1 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr align 8 %1, ptr nonnull align 1 @105, i64 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN200_$LT$lindera_dictionary..viterbi.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lindera_dictionary..viterbi..WordEntry$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17h285c0150e572f062E"(ptr nofree readnone align 1 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr align 8 %1, ptr nonnull align 1 @105, i64 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN206_$LT$lindera_dictionary..dictionary.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lindera_dictionary..dictionary..UserDictionary$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17hf4d91cf8de33e7d7E"(ptr nofree readnone align 1 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr align 8 %1, ptr nonnull align 1 @115, i64 21)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN206_$LT$lindera_dictionary..dictionary.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lindera_dictionary..dictionary..UserDictionary$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17haf4d78ce21402511E"(ptr sret([104 x i8]) align 8 %0, ptr align 8 %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [104 x i8], align 8               ; 2 uses
  %i.d = alloca [104 x i8], align 8               ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %2, ptr %i.f, align 8
  call void @_ZN10serde_core2de9SeqAccess12next_element17h827f7068b6c45690E(ptr nonnull sret([104 x i8]) align 8 %i.c, ptr nonnull align 8 %i.e)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hc0c85087169df6d5E"(ptr nonnull sret([104 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c)
  %i.g = load i64, ptr %i.d, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 -9223372036854775806, label %bb.b
    i64 -9223372036854775807, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h2b09a70ee3aa8155E"(ptr sret([104 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @118)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.25.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %i.h, i64 96, i1 false)
  store i64 %i.g, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @_ZN10serde_core2de5Error14invalid_length17h9c0a5a1cd35e8817E(ptr nonnull sret([32 x i8]) align 8 %i.a, i64 0, ptr nonnull align 1 @117, ptr nonnull align 8 @109)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN211_$LT$lindera_dictionary..dictionary.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lindera_dictionary..dictionary..UserDictionary$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17haa59dd03c48aca32E"(ptr nofree readnone align 1 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr align 8 %1, ptr nonnull align 1 @105, i64 16)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN3std11collections4hash3set20HashSet$LT$T$C$S$GT$6insert17h48647ea8eefc394eE"(ptr align 8 %0, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h51e548475899f67eE"(ptr align 8 %0, i32 %1)
  %i.b = xor i1 %i.a, true
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define ptr @_ZN3std2io4Read10read_exact17h242622959106919bE(ptr align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @_ZN3std2io18default_read_exact17h27ac383ada01c4c5E(ptr align 8 %0, ptr align 1 %1, i64 %2)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN3std2io4Read11read_to_end17hb92d7e72d390b422E(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @_ZN3std2io19default_read_to_end17h07bbaf93ea0aa51bE(ptr align 8 %0, ptr align 8 %1, i64 0, i64 undef)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN3std2io4Read13read_vectored17hcb5322051fbd740fE(ptr align 8 %0, ptr align 8 %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @_ZN3std2io21default_read_vectored17hd0a827f52e47530bE(ptr align 8 %0, ptr align 8 %1, i64 %2)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define ptr @_ZN3std2io4Read14read_buf_exact17h0f988aba2f2c1d9cE(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @_ZN3std2io22default_read_buf_exact17h2cb83bbb466bf5b0E(ptr align 8 %0, ptr align 8 %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN3std2io4Read14read_to_string17hfa105f793050f9a8E(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  store i64 0, ptr %i.a, align 8
  %i.b = call { i64, ptr } @_ZN3std2io16append_to_string17h5a2e018bb558f2a9E(ptr align 8 %1, ptr align 8 %0, ptr nonnull align 8 %i.a)
  ret { i64, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN3std2io4Read16is_read_vectored17h12086eded8ddc41fE(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define ptr @_ZN3std2io4Read8read_buf17h6588d43ce50a2fa2E(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @_ZN3std2io16default_read_buf17ha3e7a3a37c7c4081E(ptr align 8 %0, ptr align 8 %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define ptr @_ZN3std2io5Write9write_all17h2619f0d790f1beedE(ptr align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.0.015 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.1, %bb.n ] ; 6 uses
  %.sroa.5.014 = phi i64 [ %2, %.lr.ph ], [ %.sroa.5.1, %bb.n ] ; 6 uses
  %i.h = call { i64, ptr } @"_ZN72_$LT$flate2..gz..write..GzEncoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h2e08831fcf636612E"(ptr align 8 %0, ptr align 1 %.sroa.0.015, i64 %.sroa.5.014) ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 4 uses
  store i64 %i.i, ptr %i.b, align 8
  store ptr %i.j, ptr %i.d, align 8
  %i.k = trunc nuw i64 %i.i to i1
  %i.l = ptrtoint ptr %i.j to i64
  br i1 %i.k, label %bb.c, label %bb.d

.loopexit:                                        ; preds = %bb.n, %bb.d, %bb.a, %bb.l
  %.sroa.05.0 = phi ptr [ %i.ai, %bb.l ], [ null, %bb.a ], [ null, %bb.n ], [ @120, %bb.d ]
  ret ptr %.sroa.05.0

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3std2io5error14repr_bitpacked11decode_repr17h28b6e1d28990a9e6E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr %i.j)
          to label %bb.i unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.m = icmp eq ptr %i.j, null
  br i1 %i.m, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = invoke { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hcc235865ec8c2340E"(i64 %i.l, ptr align 1 %.sroa.0.015, i64 %.sroa.5.014, ptr nonnull align 8 @122)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load i64, ptr %i.b, align 8
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.o, label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.r = extractvalue { ptr, i64 } %i.n, 0
  %i.s = extractvalue { ptr, i64 } %i.n, 1
  br label %bb.h

bb.h:                                             ; preds = %.split11, %.split10, %.split, %bb.k, %bb.g
  %.sroa.5.1 = phi i64 [ %.sroa.5.014, %bb.k ], [ %i.s, %bb.g ], [ %.sroa.5.014, %.split ], [ %.sroa.5.014, %.split10 ], [ %.sroa.5.014, %.split11 ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.015, %bb.k ], [ %i.r, %bb.g ], [ %.sroa.0.015, %.split ], [ %.sroa.0.015, %.split10 ], [ %.sroa.0.015, %.split11 ]
  %i.t = load i64, ptr %i.b, align 8
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.c
  %i.v = load i8, ptr %i.a, align 8
  switch i8 %i.v, label %bb.j [
    i8 0, label %.split
    i8 1, label %bb.k
    i8 2, label %.split11
    i8 3, label %.split10
  ]

bb.j:                                             ; preds = %bb.i
  unreachable

.split:                                           ; preds = %bb.i
  %i.w = load i32, ptr %i.g, align 4
  %i.x = icmp eq i32 %i.w, 4
  br i1 %i.x, label %bb.h, label %bb.l

.split11:                                         ; preds = %bb.i
  %i.y = load ptr, ptr %i.e, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i8, ptr %i.z, align 8
  %i.ab = icmp eq i8 %i.aa, 35
  br i1 %i.ab, label %bb.h, label %bb.l

.split10:                                         ; preds = %bb.i
  %i.ac = load ptr, ptr %i.e, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i8, ptr %i.ad, align 8
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %bb.h, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ag = load i8, ptr %i.f, align 1
  %i.ah = icmp eq i8 %i.ag, 35
  br i1 %i.ah, label %bb.h, label %bb.l

bb.l:                                             ; preds = %.split11, %.split10, %.split, %bb.k
  %i.ai = load ptr, ptr %i.d, align 8
  br label %.loopexit

bb.m:                                             ; preds = %bb.h
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hda4bf98b397becb6E"(ptr nonnull align 8 %i.d)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %i.aj = icmp eq i64 %.sroa.5.1, 0
  br i1 %i.aj, label %.loopexit, label %bb.b

bb.o:                                             ; preds = %bb.f
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hda4bf98b397becb6E"(ptr nonnull align 8 %i.d) #23
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.f
  resume { ptr, i32 } %i.o

bb.q:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable
end_hunk_3
begin_hunk_4_@_ZN6flate22gz5write10gz_encoder17habc20687f344a2d1E:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

.body:                                            ; preds = %bb.e, %bb.j, %bb.g
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.r, %bb.j ], [ %i.i, %bb.e ]
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hb6dcd47dd13e1397E"(ptr align 8 %1) #23
          to label %bb.k unwind label %bb.i

bb.j:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hb6dcd47dd13e1397E"(ptr nonnull align 8 %i.g) #23
          to label %.body unwind label %bb.i

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define ptr @"_ZN6flate22gz5write18GzEncoder$LT$W$GT$10try_finish17h27f0de8658240f49E"(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 3 uses
  %i.b = tail call ptr @"_ZN6flate22gz5write18GzEncoder$LT$W$GT$12write_header17hd2a2e5364d9699f3E"(ptr align 8 %0)
  %i.c = tail call ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd81fcc1386ad573dE"(ptr %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h9feba4a747e2c187E"(ptr nonnull %i.c, ptr nonnull align 8 @170)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @"_ZN6flate23zio19Writer$LT$W$C$D$GT$6finish17hfce1f9b78cea40f6E"(ptr align 8 %0)
  %i.f = tail call ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd81fcc1386ad573dE"(ptr %i.e) ; 2 uses
  %.not7 = icmp eq ptr %i.f, null
  br i1 %.not7, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp ult i64 %i.h, 8
  br i1 %i.i, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h9feba4a747e2c187E"(ptr nonnull %i.f, ptr nonnull align 8 @169)
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.n = call i32 @_ZN6flate23crc14impl_crc32fast3Crc3sum17h0e9fba0aef015291E(ptr nonnull align 8 %i.j)
  %i.o = call i32 @_ZN6flate23crc14impl_crc32fast3Crc6amount17hbf4f1bf4383d33e8E(ptr nonnull align 8 %i.j)
  store i32 %i.n, ptr %i.a, align 4
  store i32 %i.o, ptr %i.k, align 4
  %i.p = call align 8 ptr @"_ZN4core6option15Option$LT$T$GT$6as_mut17h1ebdd5007804b450E"(ptr nonnull align 8 %i.l) ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.f, label %"_ZN6flate23zio19Writer$LT$W$C$D$GT$7get_mut17h14798749a4e1e9b9E.exit"

bb.f:                                             ; preds = %bb.e
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr nonnull align 8 @184) #25
  unreachable

"_ZN6flate23zio19Writer$LT$W$C$D$GT$7get_mut17h14798749a4e1e9b9E.exit": ; preds = %bb.e
  %i.q = load i64, ptr %i.g, align 8
  %i.r = call { ptr, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h0e22de00be53634aE"(ptr nonnull align 1 %i.a, i64 %i.q, ptr nonnull align 8 @167) ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0
  %i.t = extractvalue { ptr, i64 } %i.r, 1
  %i.u = call { i64, ptr } @"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17hbea07ca0bc69d863E"(ptr nonnull align 8 %i.p, ptr align 1 %i.s, i64 %i.t) ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 0
  %i.w = extractvalue { i64, ptr } %i.u, 1
  %i.x = call { i64, ptr } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdbdd436dff7562b6E"(i64 %i.v, ptr %i.w) ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0
  %i.z = extractvalue { i64, ptr } %i.x, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  br i1 %i.aa, label %bb.g, label %bb.h

.loopexit:                                        ; preds = %bb.h, %.preheader, %bb.g, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.m, %bb.d ], [ %i.ab, %bb.g ], [ null, %.preheader ], [ null, %bb.h ]
  ret ptr %.sroa.0.0

bb.g:                                             ; preds = %"_ZN6flate23zio19Writer$LT$W$C$D$GT$7get_mut17h14798749a4e1e9b9E.exit"
  %i.ab = call ptr @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h9feba4a747e2c187E"(ptr %i.z, ptr nonnull align 8 @168)
  br label %.loopexit

bb.h:                                             ; preds = %"_ZN6flate23zio19Writer$LT$W$C$D$GT$7get_mut17h14798749a4e1e9b9E.exit"
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = load i64, ptr %i.g, align 8
  %i.ae = add i64 %i.ad, %i.ac                    ; 2 uses
  store i64 %i.ae, ptr %i.g, align 8
  %i.af = icmp ult i64 %i.ae, 8
  br i1 %i.af, label %bb.e, label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define ptr @"_ZN6flate22gz5write18GzEncoder$LT$W$GT$12write_header17hd2a2e5364d9699f3E"(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.c = tail call zeroext i1 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8is_empty17h2532a803a7244694E"(ptr nonnull align 8 %i.b)
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.e = call align 8 ptr @"_ZN4core6option15Option$LT$T$GT$6as_mut17h1ebdd5007804b450E"(ptr nonnull align 8 %i.d) ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.c, label %"_ZN6flate23zio19Writer$LT$W$C$D$GT$7get_mut17h14798749a4e1e9b9E.exit"

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr nonnull align 8 @184) #25
  unreachable

"_ZN6flate23zio19Writer$LT$W$C$D$GT$7get_mut17h14798749a4e1e9b9E.exit": ; preds = %bb.b
  %i.f = call { ptr, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb3ffd2076cb09974E"(ptr nonnull align 8 %i.b) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  %i.i = call { i64, ptr } @"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17hbea07ca0bc69d863E"(ptr nonnull align 8 %i.e, ptr align 1 %i.g, i64 %i.h) ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = extractvalue { i64, ptr } %i.i, 1
  %i.l = call { i64, ptr } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdbdd436dff7562b6E"(i64 %i.j, ptr %i.k) ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = extractvalue { i64, ptr } %i.l, 1        ; 2 uses
  %i.o = trunc nuw i64 %i.m to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZN6flate23zio19Writer$LT$W$C$D$GT$7get_mut17h14798749a4e1e9b9E.exit"
  %i.p = call ptr @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h9feba4a747e2c187E"(ptr %i.n, ptr nonnull align 8 @171)
  br label %.loopexit

bb.e:                                             ; preds = %"_ZN6flate23zio19Writer$LT$W$C$D$GT$7get_mut17h14798749a4e1e9b9E.exit"
  %i.q = ptrtoint ptr %i.n to i64
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h1d40b9a15fbf6639E"(ptr nonnull sret([40 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b, i64 %i.q)
  call void @"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h7d93bac1fca0738dE"(ptr nonnull align 8 %i.a)
  %i.r = call zeroext i1 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8is_empty17h2532a803a7244694E"(ptr nonnull align 8 %i.b)
  br i1 %i.r, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.e, %bb.a, %bb.d
  %.sroa.0.0 = phi ptr [ %i.p, %bb.d ], [ null, %bb.a ], [ null, %bb.e ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN6flate22gz5write18GzEncoder$LT$W$GT$3new17h4da1443483bda15dE"(ptr nofree writeonly sret([128 x i8]) align 8 captures(none) %0, ptr align 8 %1, i32 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [64 x i8], align 8                ; 2 uses
  invoke void @_ZN6flate22gz9GzBuilder3new17he186c7dde8d7f44cE(ptr nonnull sret([64 x i8]) align 8 %i.c)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN6flate22gz9GzBuilder11into_header17h46f7c6b3ffa6f1beE(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.c, i32 %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN6flate22gz5write10gz_encoder17habc20687f344a2d1E(ptr sret([128 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.b, i32 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hb6dcd47dd13e1397E"(ptr nonnull align 8 %i.b) #23
          to label %.body.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

.body.thread:                                     ; preds = %bb.d, %bb.f
  %eh.lpad-body4 = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.f, %bb.f ]
  resume { ptr, i32 } %eh.lpad-body4

bb.f:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hb6dcd47dd13e1397E"(ptr align 8 %1) #23
          to label %.body.thread unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN6flate22gz5write18GzEncoder$LT$W$GT$6finish17hec3f8fee13b2c6b7E"(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = invoke ptr @"_ZN6flate22gz5write18GzEncoder$LT$W$GT$10try_finish17h27f0de8658240f49E"(ptr align 8 %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr82drop_in_place$LT$flate2..gz..write..GzEncoder$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h1ba844c19e6b6ddaE"(ptr align 8 %1) #23
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.d = invoke ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd81fcc1386ad573dE"(ptr %i.b)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h8055acb7a9ffa989E"(ptr sret([24 x i8]) align 8 %0, ptr nonnull %i.d, ptr nonnull align 8 @172)
          to label %bb.j unwind label %bb.b

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @"_ZN4core6option15Option$LT$T$GT$4take17h5a66a9b7ec70cacaE"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.e)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.f
  %i.f = load i64, ptr %i.a, align 8
  %.not.i.i = icmp eq i64 %i.f, -9223372036854775808
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr nonnull align 8 @175) #25
          to label %.noexc3 unwind label %bb.b

.noexc3:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @"_ZN4core3ptr82drop_in_place$LT$flate2..gz..write..GzEncoder$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h1ba844c19e6b6ddaE"(ptr align 8 %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  ret void

bb.j:                                             ; preds = %bb.e
  tail call void @"_ZN4core3ptr82drop_in_place$LT$flate2..gz..write..GzEncoder$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h1ba844c19e6b6ddaE"(ptr align 8 %1)
  br label %bb.i

bb.k:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_ZN6flate22gz9GzBuilder5write17h9c2468c700d6431fE(ptr nofree writeonly sret([128 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr align 8 %2, i32 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  invoke void @_ZN6flate22gz9GzBuilder11into_header17h46f7c6b3ffa6f1beE(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %1, i32 %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_ZN6flate22gz5write10gz_encoder17habc20687f344a2d1E(ptr sret([128 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a, i32 %3)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hb6dcd47dd13e1397E"(ptr align 8 %2) #23
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN6flate22gz9read_into17h09f4f95d35ffc78eE(ptr align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = tail call { i64, ptr } @"_ZN71_$LT$flate2..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h9dd41a807f7e70e7E"(ptr align 8 %0, ptr align 1 %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 3 uses
  store i64 %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  store ptr %i.e, ptr %i.f, align 8
  %i.g = trunc nuw i64 %i.d to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = invoke i8 @_ZN3std2io5error5Error4kind17hbe6743d07948aac5E(ptr nonnull align 8 %i.f)
          to label %bb.g unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %i.e, null
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = invoke ptr @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hb7d82986e6b80d45E"(i8 37, ptr nonnull align 8 @173)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load i64, ptr %i.b, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.l, label %bb.k

bb.f:                                             ; preds = %bb.c, %bb.h, %bb.d
  %.sroa.5.0 = phi ptr [ %i.j, %bb.d ], [ null, %bb.h ], [ %i.e, %bb.c ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 1, %bb.d ], [ 0, %bb.h ], [ 0, %bb.c ] ; 2 uses
  %i.n = load i64, ptr %i.b, align 8
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.b
  store i8 %i.h, ptr %i.a, align 1
  %i.p = invoke zeroext i1 @"_ZN66_$LT$std..io..error..ErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc3969bd415a9b2a7E"(ptr nonnull align 1 %i.a, ptr nonnull align 1 @33)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  br i1 %i.p, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.h
  %i.q = load ptr, ptr %i.f, align 8
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.j, %bb.f
  %.sroa.0.013 = phi i64 [ 1, %.thread ], [ %.sroa.0.0, %bb.j ], [ %.sroa.0.0, %bb.f ]
  %.sroa.5.012 = phi ptr [ %i.q, %.thread ], [ %.sroa.5.0, %bb.j ], [ %.sroa.5.0, %bb.f ]
  %i.r = insertvalue { i64, ptr } poison, i64 %.sroa.0.013, 0
  %i.s = insertvalue { i64, ptr } %i.r, ptr %.sroa.5.012, 1
  ret { i64, ptr } %i.s

bb.j:                                             ; preds = %bb.f
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hda4bf98b397becb6E"(ptr nonnull align 8 %i.f)
  br label %bb.i

bb.k:                                             ; preds = %bb.l, %bb.e
  resume { ptr, i32 } %i.k

bb.l:                                             ; preds = %bb.e
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hda4bf98b397becb6E"(ptr nonnull align 8 %i.f) #23
          to label %bb.k unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN6flate23zio19Writer$LT$W$C$D$GT$10is_present17hfe97602d8a30a7bbE"(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17h1182477392e093c7E"(ptr nonnull align 8 %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN6flate23zio19Writer$LT$W$C$D$GT$10take_inner17hdc9f1b5c38bfb3a3E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @"_ZN4core6option15Option$LT$T$GT$4take17h5a66a9b7ec70cacaE"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b)
  %i.c = load i64, ptr %i.a, align 8
  %.not.i = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not.i, label %bb.b, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h9e63fd96a9b3a3afE.exit"

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr nonnull align 8 @175) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h9e63fd96a9b3a3afE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN6flate23zio19Writer$LT$W$C$D$GT$17write_with_status17h9b9db7ae1b7960e5E"(ptr sret([16 x i8]) align 8 %0, ptr align 8 %1, ptr align 1 %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.c = call ptr @"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17he1775a02a1b0c0d9E"(ptr align 8 %1)
  %i.d = call ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd81fcc1386ad573dE"(ptr %i.c) ; 2 uses
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcd3d08e578c80d5cE"(ptr sret([16 x i8]) align 8 %0, ptr nonnull %i.d, ptr nonnull align 8 @177)
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.e = call i64 @"_ZN58_$LT$flate2..mem..Compress$u20$as$u20$flate2..zio..Ops$GT$8total_in17hb03c6fab28673c4dE"(ptr nonnull align 8 %i.b) ; 3 uses
  %i.f = call i8 @"_ZN65_$LT$flate2..mem..FlushCompress$u20$as$u20$flate2..zio..Flush$GT$4none17h15a835f4ca6aae17E"()
  %i.g = call i8 @"_ZN58_$LT$flate2..mem..Compress$u20$as$u20$flate2..zio..Ops$GT$7run_vec17hd1c8abd8c9a89271E"(ptr nonnull align 8 %i.b, ptr align 1 %2, i64 %3, ptr align 8 %1, i8 %i.f)
  store i8 %i.g, ptr %i.a, align 1
  %i.h = call i64 @"_ZN58_$LT$flate2..mem..Compress$u20$as$u20$flate2..zio..Ops$GT$8total_in17hb03c6fab28673c4dE"(ptr nonnull align 8 %i.b) ; 2 uses
  %i.i = load i8, ptr %i.a, align 1
  %i.j = call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17ha3995b82673929caE"(ptr align 1 %2, i64 %3)
  %i.k = icmp ne i64 %i.h, %i.e
  %or.cond.not = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.d
  %.lcssa14 = phi i64 [ %i.e, %bb.f ], [ %i.h, %bb.d ]
  %i.l = load i8, ptr %i.a, align 1               ; 2 uses
  %i.m = icmp eq i8 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.o = icmp ne i8 %i.i, 2
  %i.p = call zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h534e6c1146dc3689E"(ptr nonnull align 1 %i.a)
  %or.cond3.not = and i1 %i.o, %i.p
  br i1 %or.cond3.not, label %bb.b, label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.q = call ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 20, ptr nonnull align 1 @176, i64 22)
  store ptr %i.q, ptr %0, align 8
  store i8 3, ptr %i.n, align 8
  br label %bb.i
end_hunk_4
begin_hunk_5_@_ZN6flate23zio4read17h8536e35b5cc31ce2E:bb.a
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @"_ZN74_$LT$flate2..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h1c020dfcea90be73E"(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %0)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2df9ec8c3720d461E"(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.m, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3fbd265e71ed4115E"(ptr %i.g, ptr nonnull align 8 @185)
  br label %bb.o

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %i.i = phi ptr [ %i.c, %.lr.ph ], [ %i.ac, %bb.m ] ; 2 uses
  %i.j = load i64, ptr %i.e, align 8              ; 2 uses
  %i.k = call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17ha3995b82673929caE"(ptr nonnull align 1 %i.i, i64 %i.j) ; 3 uses
  %i.l = call i64 @"_ZN60_$LT$flate2..mem..Decompress$u20$as$u20$flate2..zio..Ops$GT$9total_out17hdc2908ba559f3d91E"(ptr align 8 %1) ; 5 uses
  %i.m = call i64 @"_ZN60_$LT$flate2..mem..Decompress$u20$as$u20$flate2..zio..Ops$GT$8total_in17h3c861e961b5d0ca2E"(ptr align 8 %1)
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call i8 @"_ZN67_$LT$flate2..mem..FlushDecompress$u20$as$u20$flate2..zio..Flush$GT$4none17h8480340a73e7eb97E"()
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = call i8 @"_ZN67_$LT$flate2..mem..FlushDecompress$u20$as$u20$flate2..zio..Flush$GT$6finish17hdf58922b057c957dE"()
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.04.0 = phi i8 [ %i.o, %bb.d ], [ %i.n, %bb.c ]
  %i.p = call i64 @"_ZN60_$LT$flate2..mem..Decompress$u20$as$u20$flate2..zio..Ops$GT$3run17hd464aadb10dac857E"(ptr align 8 %1, ptr nonnull align 1 %i.i, i64 %i.j, ptr align 1 %2, i64 %3, i8 %.sroa.04.0) ; 2 uses
  %i.q = call i64 @"_ZN60_$LT$flate2..mem..Decompress$u20$as$u20$flate2..zio..Ops$GT$9total_out17hdc2908ba559f3d91E"(ptr align 8 %1) ; 5 uses
  %i.r = call i64 @"_ZN60_$LT$flate2..mem..Decompress$u20$as$u20$flate2..zio..Ops$GT$8total_in17h3c861e961b5d0ca2E"(ptr align 8 %1)
  %i.s = sub i64 %i.r, %i.m
  call void @"_ZN74_$LT$flate2..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$7consume17heb33c272722afd76E"(ptr align 8 %0, i64 %i.s)
  %i.t = and i64 %i.p, 4294967295
  %.not14 = icmp eq i64 %i.t, 2
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = call ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 20, ptr nonnull align 1 @176, i64 22)
  %i.v = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.u, 1
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %.sroa.212.0.extract.shift = lshr i64 %i.p, 32
  %trunc = trunc i64 %.sroa.212.0.extract.shift to i8
  switch i8 %trunc, label %bb.h [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.w = icmp ne i64 %i.q, %i.l
  %brmerge = select i1 %i.w, i1 true, i1 %i.k
  br i1 %brmerge, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.x = icmp ne i64 %i.q, %i.l
  %brmerge2 = select i1 %i.x, i1 true, i1 %i.k
  br i1 %brmerge2, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.n, %bb.l, %bb.g
  %.lcssa23 = phi i64 [ %i.q, %bb.j ], [ %i.q, %bb.i ], [ %i.l, %bb.n ], [ %i.l, %bb.l ], [ %i.q, %bb.g ]
  %i.y = sub i64 %.lcssa23, %i.l
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.z, 1
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.ab = call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17ha3995b82673929caE"(ptr align 1 %2, i64 %3)
  br i1 %i.ab, label %bb.k, label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  call void @"_ZN74_$LT$flate2..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17h1c020dfcea90be73E"(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %0)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h2df9ec8c3720d461E"(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.ac = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %._crit_edge, label %bb.b

bb.n:                                             ; preds = %bb.j
  %i.ae = call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17ha3995b82673929caE"(ptr align 1 %2, i64 %3)
  br i1 %i.ae, label %bb.k, label %bb.m

bb.o:                                             ; preds = %bb.k, %bb.f, %._crit_edge
  %.merged = phi { i64, ptr } [ %i.h, %._crit_edge ], [ %i.v, %bb.f ], [ %i.aa, %bb.k ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN72_$LT$flate2..gz..write..GzEncoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h2e08831fcf636612E"(ptr align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.b, align 8
  call void @_ZN4core9panicking13assert_failed17he513e705e2b74251E(i8 0, ptr nonnull align 8 %i.c, ptr nonnull align 8 @186, ptr nonnull align 8 %i.b, ptr nonnull align 8 @187) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call ptr @"_ZN6flate22gz5write18GzEncoder$LT$W$GT$12write_header17hd2a2e5364d9699f3E"(ptr nonnull align 8 %0)
  %i.g = tail call ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd81fcc1386ad573dE"(ptr %i.f) ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3fbd265e71ed4115E"(ptr nonnull %i.g, ptr nonnull align 8 @190)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN6flate23zio19Writer$LT$W$C$D$GT$17write_with_status17h9b9db7ae1b7960e5E"(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %0, ptr align 1 %1, i64 %2)
  %i.i = call { i64, ptr } @"_ZN4core6result19Result$LT$T$C$E$GT$3map17h27c827d38364611aE"(ptr nonnull align 8 %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = extractvalue { i64, ptr } %i.i, 1
  %i.l = call { i64, ptr } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdbdd436dff7562b6E"(i64 %i.j, ptr %i.k) ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = extractvalue { i64, ptr } %i.l, 1        ; 3 uses
  %i.o = trunc nuw i64 %i.m to i1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = call { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3fbd265e71ed4115E"(ptr %i.n, ptr nonnull align 8 @189)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %i.n to i64                 ; 3 uses
  %.not.i.i.i = icmp ult i64 %2, %i.q
  br i1 %.not.i.i.i, label %bb.h, label %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h1e80377a7c416cb9E.exit"

bb.h:                                             ; preds = %bb.g
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 0, i64 %i.q, i64 %2, ptr nonnull align 8 @188) #25
  unreachable

"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h1e80377a7c416cb9E.exit": ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZN6flate23crc14impl_crc32fast3Crc6update17ha9f717595a347bdaE(ptr nonnull align 8 %i.r, ptr align 1 %1, i64 %i.q)
  %i.s = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.n, 1
  br label %bb.i

bb.i:                                             ; preds = %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h1e80377a7c416cb9E.exit", %bb.f, %bb.d
  %.merged = phi { i64, ptr } [ %i.h, %bb.d ], [ %i.p, %bb.f ], [ %i.s, %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h1e80377a7c416cb9E.exit" ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN74_$LT$encoding_rs_io..util..BomPeeker$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h42ce343ec8c80eb5E"(ptr align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ult i64 %i.g, 3
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = call { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Read$GT$4read17h190ab4ac9c2ac827E"(ptr nonnull align 4 %i.i, ptr align 1 %1, i64 %2) ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = extractvalue { i64, ptr } %i.j, 1
  %i.m = call { i64, ptr } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdbdd436dff7562b6E"(i64 %i.k, ptr %i.l) ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = extractvalue { i64, ptr } %i.m, 1        ; 3 uses
  %i.p = trunc nuw i64 %i.n to i1
  br i1 %i.p, label %bb.k, label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = load i64, ptr %0, align 8
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  store i64 0, ptr %i.c, align 8
  br label %"_ZN14encoding_rs_io4util18BomPeeker$LT$R$GT$8peek_bom17hfe5139708fc3f489E.exit"

bb.e:                                             ; preds = %bb.c
  call void @_ZN14encoding_rs_io4util11PossibleBom3new17hf714d2602fc55f22E(ptr nonnull sret([16 x i8]) align 8 %i.b)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.a, i8 0, i64 3, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = call { i64, ptr } @_ZN14encoding_rs_io4util9read_full17h6e84ac2f93fa12edE(ptr nonnull align 4 %i.u, ptr nonnull align 1 %i.a, i64 3) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1
  %i.y = call { i64, ptr } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdbdd436dff7562b6E"(i64 %i.w, ptr %i.x) ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0
  %i.aa = extractvalue { i64, ptr } %i.y, 1       ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1
  br i1 %i.ab, label %bb.f, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h3e652b878b6e4f2aE.exit.i"

bb.f:                                             ; preds = %bb.e
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hd09bbf10ca19b80cE"(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr %i.aa, ptr nonnull align 8 @31)
  br label %"_ZN14encoding_rs_io4util18BomPeeker$LT$R$GT$8peek_bom17hfe5139708fc3f489E.exit"

"_ZN4core6option15Option$LT$T$GT$6unwrap17h3e652b878b6e4f2aE.exit.i": ; preds = %bb.e
  %i.ac = ptrtoint ptr %i.aa to i64
  %.sroa.25.sroa.2.0..sroa.25.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.25.sroa.2.0..sroa.25.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %i.a, i64 3, i1 false)
  store i64 1, ptr %0, align 8
  store i64 %i.ac, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i, i64 16, i1 false)
  store i64 0, ptr %i.c, align 8
  br label %"_ZN14encoding_rs_io4util18BomPeeker$LT$R$GT$8peek_bom17hfe5139708fc3f489E.exit"

"_ZN14encoding_rs_io4util18BomPeeker$LT$R$GT$8peek_bom17hfe5139708fc3f489E.exit": ; preds = %bb.d, %bb.f, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h3e652b878b6e4f2aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h9febbcb72c1e9fdaE"(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c)
  %i.ae = load i64, ptr %i.d, align 8
  %i.af = trunc nuw i64 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %"_ZN14encoding_rs_io4util18BomPeeker$LT$R$GT$8peek_bom17hfe5139708fc3f489E.exit"
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3fbd265e71ed4115E"(ptr %i.ah, ptr nonnull align 8 @198)
  br label %bb.m

bb.h:                                             ; preds = %"_ZN14encoding_rs_io4util18BomPeeker$LT$R$GT$8peek_bom17hfe5139708fc3f489E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ak = load i8, ptr %i.aj, align 4
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = xor i1 %i.al, true
  %i.an = call { ptr, i64 } @_ZN14encoding_rs_io4util11PossibleBom8as_slice17hb3f45c37559de276E(ptr nonnull align 8 %i.e, i1 zeroext %i.am) ; 2 uses
  %i.ao = extractvalue { ptr, i64 } %i.an, 1      ; 2 uses
  %i.ap = load i64, ptr %i.f, align 8             ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  br i1 %i.aq, label %bb.i, label %bb.b

bb.i:                                             ; preds = %bb.h
  %i.ar = extractvalue { ptr, i64 } %i.an, 0
  %i.as = call { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hcc235865ec8c2340E"(i64 %i.ap, ptr align 1 %i.ar, i64 %i.ao, ptr nonnull align 8 @194) ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.as, 1      ; 3 uses
  %i.au = call i64 @_ZN4core3cmp3min17h68646bb8418ecb11E(i64 %2, i64 %i.at) ; 6 uses
  %i.av = call { ptr, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h3b4c412f1a4abff3E"(i64 %i.au, ptr align 1 %1, i64 %2, ptr nonnull align 8 @195) ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.au, %i.at
  br i1 %.not.i.i.i, label %bb.j, label %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h1e80377a7c416cb9E.exit"

bb.j:                                             ; preds = %bb.i
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 0, i64 %i.au, i64 %i.at, ptr nonnull align 8 @196) #25
  unreachable

"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h1e80377a7c416cb9E.exit": ; preds = %bb.i
  %i.aw = extractvalue { ptr, i64 } %i.av, 1
  %i.ax = extractvalue { ptr, i64 } %i.av, 0
  %i.ay = extractvalue { ptr, i64 } %i.as, 0
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb28ca87ed726d338E"(ptr align 1 %i.ax, i64 %i.aw, ptr align 1 %i.ay, i64 %i.au, ptr nonnull align 8 @197)
  %i.az = load i64, ptr %i.f, align 8
  %i.ba = add i64 %i.az, %i.au
  store i64 %i.ba, ptr %i.f, align 8
  %i.bb = inttoptr i64 %i.au to ptr
  %i.bc = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.bb, 1
  br label %bb.m

bb.k:                                             ; preds = %bb.b
  %i.bd = call { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3fbd265e71ed4115E"(ptr %i.o, ptr nonnull align 8 @193)
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.be = ptrtoint ptr %i.o to i64
  %i.bf = load i64, ptr %i.f, align 8
  %i.bg = add i64 %i.bf, %i.be
  store i64 %i.bg, ptr %i.f, align 8
  %i.bh = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.o, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h1e80377a7c416cb9E.exit", %bb.g
  %.merged = phi { i64, ptr } [ %i.ai, %bb.g ], [ %i.bc, %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h1e80377a7c416cb9E.exit" ], [ %i.bd, %bb.k ], [ %i.bh, %bb.l ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN74_$LT$flate2..zio..Writer$LT$W$C$D$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd0552ded1b0d831dE"(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = tail call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17h1182477392e093c7E"(ptr nonnull align 8 %i.b)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @"_ZN6flate23zio19Writer$LT$W$C$D$GT$6finish17hfce1f9b78cea40f6E"(ptr align 8 %0)
  store ptr %i.d, ptr %i.a, align 8
  call void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17hdbf9e4c497480400E"(ptr nonnull align 8 %i.a)
  br label %bb.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i32 @"_ZN74_$LT$lindera_dictionary..viterbi..EdgeId$u20$as$u20$core..clone..Clone$GT$5clone17hd5ff9d5b0a50cda2E"(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @"_ZN76_$LT$lindera_dictionary..mode..Penalty$u20$as$u20$core..default..Default$GT$7default17hf44f949333e500bbE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #2 {
bb.a:
  store i64 2, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 3000, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1700, ptr %i.c, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$lindera_dictionary..mode..Mode$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h73081fb2ddb6b29dE"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 1 %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %2, ptr %i.g, align 8
  %i.h = tail call zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17hac6a1b4059db5cb1E"(ptr align 1 %1, i64 %2, ptr nonnull align 1 @57, i64 6)
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17hac6a1b4059db5cb1E"(ptr align 1 %1, i64 %2, ptr nonnull align 1 @58, i64 9)
  br i1 %i.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_ZN4core3fmt2rt8Argument11new_display17hc3ec3ff2001b6bd4E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h4f9cc54d462345c7E"(ptr nonnull sret([48 x i8]) align 8 %i.c, ptr nonnull align 8 @200, ptr nonnull align 8 %i.b)
  call void @_ZN5alloc3fmt6format17haf5c86cf8051d3e2E(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.j = call ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17h0cbd75cbd2030250E"(ptr nonnull align 8 %i.e)
  %i.k = call { ptr, i8 } @_ZN18lindera_dictionary5error16LinderaErrorKind10with_error17h03ffb3564b92cf84E(i8 14, ptr %i.j) ; 2 uses
  %i.l = extractvalue { ptr, i8 } %i.k, 0
  %i.m = extractvalue { ptr, i8 } %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.m, ptr %i.o, align 8
  store i64 2, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store i64 1, ptr %0, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.22.sroa.2.0..sroa.22.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 7, ptr %.sroa.22.sroa.2.0..sroa.22.0..sroa_idx.sroa_idx, align 8
  %.sroa.22.sroa.3.0..sroa.22.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 3000, ptr %.sroa.22.sroa.3.0..sroa.22.0..sroa_idx.sroa_idx, align 8
  %.sroa.22.sroa.4.0..sroa.22.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1700, ptr %.sroa.22.sroa.4.0..sroa.22.0..sroa_idx.sroa_idx, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i32, i1 } @"_ZN78_$LT$lindera_dictionary..viterbi..WordId$u20$as$u20$core..default..Default$GT$7default17hf646add1d8be5881E"() unnamed_addr #9 {
bb.a:
  ret { i32, i1 } { i32 -1, i1 true }
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN79_$LT$flate2..gz..write..GzEncoder$LT$W$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h338cdf721d1d89e9E"(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = tail call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17h1182477392e093c7E"(ptr nonnull align 8 %i.b)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @"_ZN6flate22gz5write18GzEncoder$LT$W$GT$10try_finish17h27f0de8658240f49E"(ptr align 8 %0)
  store ptr %i.d, ptr %i.a, align 8
  call void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17hdbf9e4c497480400E"(ptr nonnull align 8 %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN80_$LT$encoding_rs_io..DecodeReaderBytes$LT$R$C$B$GT$$u20$as$u20$std..io..Read$GT$4read17he69f7bd04700a171E"(ptr align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @"_ZN14encoding_rs_io30DecodeReaderBytes$LT$R$C$B$GT$6detect17hdc53413313fee332E"(ptr align 8 %0)
  %i.b = tail call ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd81fcc1386ad573dE"(ptr %i.a) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_5
