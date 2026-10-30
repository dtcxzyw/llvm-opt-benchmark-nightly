Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/lindera_dictionary-9374fd454a7f6d88.lindera_dictionary.b7b9bc016d0cfa7-cgu.13?download=true
inline.NumInlined: 83
inline.NumDeleted: 21
begin_hunk_0_@"_ZN195_$LT$lindera_dictionary..viterbi.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lindera_dictionary..viterbi..WordEntry$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h4b01a60682245305E":bb.a
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
  %.sroa.5.014 = phi i64 [ %2, %.lr.ph ], [ %.sroa.5.1.a, %bb.n ] ; 6 uses
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
  %.sroa.5.1.a = phi i64 [ %.sroa.5.014, %bb.k ], [ %i.s, %bb.g ], [ %.sroa.5.014, %.split ], [ %.sroa.5.014, %.split10 ], [ %.sroa.5.014, %.split11 ] ; 2 uses
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
  %3 = icmp eq i64 %.sroa.5.1.a, 0
  br i1 %3, label %.loopexit, label %bb.b

bb.o:                                             ; preds = %bb.f
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hda4bf98b397becb6E"(ptr nonnull align 8 %i.d) #23
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.f
  resume { ptr, i32 } %i.o

bb.q:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17haf6e9e23a2e1ce01E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr align 8 %1, ptr nonnull align 1 @191, i64 6, ptr nonnull align 1 %i.a, ptr nonnull align 8 @192)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3mem4drop17h008e038fa1ef1b77E(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  call void @"_ZN4core3ptr111drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..num..error..TryFromIntError$GT$$GT$$GT$17he050ba9d6238ece5E"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3mem4drop17h08e1ce85e58bc15fE(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  call void @"_ZN4core3ptr139drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$glob..GlobError$GT$$GT$$GT$$GT$17h931f520a9b566fcdE"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3mem4drop17h127b86f8c73d98c0E(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  call void @"_ZN4core3ptr141drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$csv..error..Error$GT$$GT$$GT$$GT$17hc55f248dd729a1dcE"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3mem4drop17h183dd8a3df7970a7E(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  call void @"_ZN4core3ptr96drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$glob..PatternError$GT$$GT$$GT$17h22f1412ff014529cE"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3mem4drop17h3d42b3a4a91e18ffE(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  call void @"_ZN4core3ptr109drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..num..error..ParseIntError$GT$$GT$$GT$17hf44c81e113ebea36E"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3mem4drop17h561c9925ed65eea3E(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  call void @"_ZN4core3ptr93drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$glob..GlobError$GT$$GT$$GT$17h92a5812852b8acc9E"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3mem4drop17h61adf3bfcc8ea004E(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  call void @"_ZN4core3ptr105drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$bincode..error..EncodeError$GT$$GT$$GT$17h3f3e72c6b5909e63E"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3mem4drop17h6a459dbe420c9019E(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  call void @"_ZN4core3ptr151drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$bincode..error..EncodeError$GT$$GT$$GT$$GT$17h17f24cc3b0611981E"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3mem4drop17ha3a9cbc4da3d2fbcE(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  call void @"_ZN4core3ptr95drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$csv..error..Error$GT$$GT$$GT$17h6df3d1fe2fd3fffcE"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3mem4drop17haf7c327c97e583aeE(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  call void @"_ZN4core3ptr105drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$bincode..error..DecodeError$GT$$GT$$GT$17h4a34d09fde32faa0E"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3mem4drop17hc60abcf1603f015dE(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  call void @"_ZN4core3ptr157drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$core..num..error..TryFromIntError$GT$$GT$$GT$$GT$17h3a8543a2f899897dE"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3mem4drop17hcfc9069d861c550bE(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  call void @"_ZN4core3ptr142drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$glob..PatternError$GT$$GT$$GT$$GT$17h0d9e1efa18e1019eE"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3mem4drop17hd4802d6564e015abE(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  call void @"_ZN4core3ptr151drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$bincode..error..DecodeError$GT$$GT$$GT$$GT$17he9d42c20da9ad051E"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3mem4drop17he055d2d99f3826e2E(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  call void @"_ZN4core3ptr145drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$std..io..error..Error$GT$$GT$$GT$$GT$17hefe8e15d0994ee57E"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3mem4drop17he33faf845a75bfb2E(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  call void @"_ZN4core3ptr155drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$core..num..error..ParseIntError$GT$$GT$$GT$$GT$17h619183230220e35eE"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3mem4drop17he9ff344b4c93ce12E(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  call void @"_ZN4core3ptr99drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$std..io..error..Error$GT$$GT$$GT$17hee21cf4b821f699eE"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core3mem4take17h3b8c14df5421e7e0E(ptr nofree writeonly sret([104 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.i = alloca [72 x i8], align 8          ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.4 = alloca [19 x i8], align 1            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 6, ptr %i.d, align 8, !alias.scope !21, !noalias !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22
  invoke void @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17he0587b5894b9d9caE"(ptr nonnull sret([24 x i8]) align 8 %i.c)
          to label %.noexc.i unwind label %bb.b, !noalias !22

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.c, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn.pn.i.i, %bb.c ]
  invoke void @"_ZN4core3ptr46drop_in_place$LT$flate2..gz..GzHeaderState$GT$17h81828351dc166e12E"(ptr nonnull align 8 %i.d) #23
          to label %bb.i unwind label %bb.h, !noalias !22

.noexc.i:                                         ; preds = %bb.a
  invoke void @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17he0587b5894b9d9caE"(ptr nonnull sret([24 x i8]) align 8 %i.b)
end_hunk_0
