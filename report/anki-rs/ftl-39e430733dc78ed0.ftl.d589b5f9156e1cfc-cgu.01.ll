Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/ftl-39e430733dc78ed0.ftl.d589b5f9156e1cfc-cgu.01?download=true
inline.NumInlined: 849
inline.NumDeleted: 387
begin_hunk_0_@"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17h644400855881f352E":bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc77337ea8828181E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr100drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17he20af79d192d5f7cE.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc77337ea8828181E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #19
  unreachable

"_ZN4core3ptr100drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17he20af79d192d5f7cE.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr95drop_in_place$LT$alloc..vec..Vec$LT$fluent_syntax..ast..InlineExpression$LT$$RF$str$GT$$GT$$GT$17h71cff80a1ab863a2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !751, !nonnull !30, !noundef !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !751, !noundef !30
  invoke fastcc void @"_ZN4core3ptr82drop_in_place$LT$$u5b$fluent_syntax..ast..InlineExpression$LT$$RF$str$GT$$u5d$$GT$17h1670ee1bc9e0e32bE"(ptr noalias noundef nonnull align 8 %i.b, i64 noundef %i.d)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd0aa4d308a548ed0E.exit" unwind label %bb.b, !inline_history !754

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h41dcd5dc95e97c2eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr102drop_in_place$LT$alloc..raw_vec..RawVec$LT$fluent_syntax..ast..InlineExpression$LT$$RF$str$GT$$GT$$GT$17h022693b5a9e92757E.exit" unwind label %bb.c

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd0aa4d308a548ed0E.exit": ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h41dcd5dc95e97c2eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #19
  unreachable

"_ZN4core3ptr102drop_in_place$LT$alloc..raw_vec..RawVec$LT$fluent_syntax..ast..InlineExpression$LT$$RF$str$GT$$GT$$GT$17h022693b5a9e92757E.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$clap_builder..builder..value_parser..ValueParser$GT$$GT$17h0e905f160282bf6aE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !257, !noundef !30 ; 2 uses
  %i.b = icmp eq i64 %i.a, 5
  br i1 %i.b, label %"_ZN4core3ptr69drop_in_place$LT$clap_builder..builder..value_parser..ValueParser$GT$17h122f3f3e4593e231E.exit", label %bb.b

"_ZN4core3ptr69drop_in_place$LT$clap_builder..builder..value_parser..ValueParser$GT$17h122f3f3e4593e231E.exit": ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758)
  %switch.i.i = icmp samesign ult i64 %i.a, 4
  br i1 %switch.i.i, label %"_ZN4core3ptr69drop_in_place$LT$clap_builder..builder..value_parser..ValueParser$GT$17h122f3f3e4593e231E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !761 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !761, !nonnull !30, !align !119, !noundef !30 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i, align 8, !invariant.load !30, !noalias !761 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i)
          to label %bb.e unwind label %bb.g, !noalias !761

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !78, !invariant.load !30, !noalias !761 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !195, !invariant.load !30, !noalias !761 ; 2 uses
  %i.j = icmp ult i64 %i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %"_ZN4core3ptr69drop_in_place$LT$clap_builder..builder..value_parser..ValueParser$GT$17h122f3f3e4593e231E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.i) #23, !noalias !761
  br label %"_ZN4core3ptr69drop_in_place$LT$clap_builder..builder..value_parser..ValueParser$GT$17h122f3f3e4593e231E.exit"

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !78, !invariant.load !30, !noalias !761 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !195, !invariant.load !30, !noalias !761 ; 2 uses
  %i.q = icmp ult i64 %i.p, -9223372036854775807
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i64 %i.n, 0
  br i1 %i.r, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha0212a9d7ad21db1E.exit4.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, -9223372036854775807) %i.p) #23, !noalias !761
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha0212a9d7ad21db1E.exit4.i.i.i"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha0212a9d7ad21db1E.exit4.i.i.i": ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$fluent_syntax..ast..CallArguments$LT$$RF$str$GT$$GT$$GT$17h677fe1d19e724e9eE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !57, !noundef !30
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN4core3ptr69drop_in_place$LT$fluent_syntax..ast..CallArguments$LT$$RF$str$GT$$GT$17h3439143193f2e960E.exit", %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN4core3ptr95drop_in_place$LT$alloc..vec..Vec$LT$fluent_syntax..ast..InlineExpression$LT$$RF$str$GT$$GT$$GT$17h71cff80a1ab863a2E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %"_ZN4core3ptr69drop_in_place$LT$fluent_syntax..ast..CallArguments$LT$$RF$str$GT$$GT$17h3439143193f2e960E.exit" unwind label %bb.d, !inline_history !469

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$fluent_syntax..ast..NamedArgument$LT$$RF$str$GT$$GT$$GT$17hb7dd048f1895e01cE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #18
          to label %bb.f unwind label %bb.e, !inline_history !469

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #19, !inline_history !469
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.c

"_ZN4core3ptr69drop_in_place$LT$fluent_syntax..ast..CallArguments$LT$$RF$str$GT$$GT$17h3439143193f2e960E.exit": ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$fluent_syntax..ast..NamedArgument$LT$$RF$str$GT$$GT$$GT$17hb7dd048f1895e01cE"(ptr noalias noundef align 8 dereferenceable(24) %i.f), !inline_history !469
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h79a3d0f54b688e0eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !30 ; 3 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_ZN4core5slice5index5range17h78d273e2c10aba4dE(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !30, !noundef !30 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h38e278297ab6f6cbE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !762, !noundef !30 ; 5 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %1, %i.b
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !762, !nonnull !30, !noundef !30
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %1 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !762, !nonnull !30, !align !50, !noundef !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noalias !762, !noundef !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = xor i64 %1, -1
  %i.l = add nsw i64 %i.b, %i.k
  %i.m = shl nsw i64 %i.l, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.j, i64 %i.m, i1 false), !noalias !762
  %i.n = add nsw i64 %i.b, -1
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !762
  %i.o = insertvalue { ptr, i64 } poison, ptr %i.g, 0
  %i.p = insertvalue { ptr, i64 } %i.o, i64 %i.i, 1
  ret { ptr, i64 } %i.p

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17hdd0e456ceb323c6cE"(i64 noundef %1, i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hc84d5da8f4126594E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [96 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !765, !noalias !768, !noundef !30 ; 5 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1a0a47cf02d76a4E.exit", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1a0a47cf02d76a4E.exit.thread"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1a0a47cf02d76a4E.exit": ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !765, !noalias !768, !nonnull !30, !noundef !30
  %i.f = getelementptr inbounds nuw [104 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load i64, ptr %i.f, align 8, !noalias !765 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.0..sroa_idx2, i64 96, i1 false), !noalias !765
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nsw i64 %i.i, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !770
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !765, !noalias !768
  %.not = icmp eq i64 %.sroa.0.0.copyload1, 2
  br i1 %.not, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1a0a47cf02d76a4E.exit.thread", label %bb.b, !prof !771

bb.b:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1a0a47cf02d76a4E.exit"
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1a0a47cf02d76a4E.exit.thread": ; preds = %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1a0a47cf02d76a4E.exit"
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1a0a47cf02d76a4E.exit" ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 88686269585142076
  tail call void @llvm.assume(i1 %i.m)
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17hdd0e456ceb323c6cE"(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain17hd97583fd17ce166bE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !772, !noundef !30 ; 10 uses
  %i.c = icmp ult i64 %i.b, 96076792050570582
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17h450cc39a5d551478E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !alias.scope !772
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !772, !noalias !775, !nonnull !30, !noundef !30 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.thread.i.i", %.lr.ph.i.i
  %i.g = phi i64 [ 0, %.lr.ph.i.i ], [ %i.t, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.thread.i.i" ] ; 3 uses
  %i.h = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %i.g ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  %i.i = load i64, ptr %i.h, align 8, !range !257, !alias.scope !784, !noalias !785, !noundef !30
  %i.j = icmp ne i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !784, !noalias !785
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  %or.cond.i.i.i.i = select i1 %i.j, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.thread.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !784, !noalias !785, !nonnull !30, !noundef !30 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !786, !noundef !30
  %.not6.i.i.i.i = icmp eq i64 %i.p, 93
  br i1 %.not6.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.thread.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.i.i": ; preds = %bb.c
  %i.q = load ptr, ptr %i.n, align 8, !noalias !786, !nonnull !30, !align !50, !noundef !30
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(93) %i.q, ptr noundef nonnull dereferenceable(93) @4, i64 93), !noalias !786
  %.not2.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not2.i.i, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.thread.i.i"

bb.d:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.i.i"
  %i.r = add nuw i64 %i.g, 1                      ; 3 uses
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$fluent_syntax..ast..Entry$LT$$RF$str$GT$$GT$17h0e314594e29e6915E"(ptr noalias noundef align 8 dereferenceable(96) %i.h)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h6255ccac6ff51dabE.exit.i" unwind label %.thread.i, !noalias !772

.thread.i:                                        ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.thread.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.i.i", %bb.c, %bb.b
  %i.t = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %.not.i.i = icmp eq i64 %i.t, %i.b
  br i1 %.not.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h3583ada826b5d0adE.exit._crit_edge.i", label %bb.b

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h6255ccac6ff51dabE.exit.i": ; preds = %bb.d
  %.not3.i.i = icmp eq i64 %i.r, %i.b
  br i1 %.not3.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h3583ada826b5d0adE.exit.thread50.i", label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h6255ccac6ff51dabE.exit.i", %.backedge.i.i
  %.sroa.15.2.i = phi i64 [ %.sroa.15.3.i, %.backedge.i.i ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h6255ccac6ff51dabE.exit.i" ]
  %i.u = phi i64 [ %i.ai, %.backedge.i.i ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h6255ccac6ff51dabE.exit.i" ] ; 3 uses
  %i.v = phi i64 [ %.sroa.7.2.i, %.backedge.i.i ], [ %i.r, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h6255ccac6ff51dabE.exit.i" ] ; 4 uses
  %i.w = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %i.v ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  %i.x = load i64, ptr %i.w, align 8, !range !257, !alias.scope !793, !noalias !794, !noundef !30
  %i.y = icmp ne i64 %i.x, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !793, !noalias !794
  %.not.i.i.i4.i = icmp eq i64 %i.aa, 0
  %or.cond.i.i.i5.i = select i1 %i.y, i1 true, i1 %.not.i.i.i4.i
  br i1 %or.cond.i.i.i5.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.thread.i7.i", label %bb.e

bb.e:                                             ; preds = %.lr.ph.i3.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !793, !noalias !794, !nonnull !30, !noundef !30 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !797, !noundef !30
  %.not6.i.i.i6.i = icmp eq i64 %i.ae, 93
  br i1 %.not6.i.i.i6.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.i9.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.thread.i7.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.i9.i": ; preds = %bb.e
  %i.af = load ptr, ptr %i.ac, align 8, !noalias !797, !nonnull !30, !align !50, !noundef !30
  %bcmp.i.i.i10.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(93) %i.af, ptr noundef nonnull dereferenceable(93) @4, i64 93), !noalias !797
  %.not2.i11.i = icmp eq i32 %bcmp.i.i.i10.i, 0
  br i1 %.not2.i11.i, label %bb.f, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.thread.i7.i"

bb.f:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.i9.i"
  %i.ag = add i64 %i.v, 1                         ; 2 uses
  %i.ah = add i64 %i.u, 1                         ; 4 uses
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$fluent_syntax..ast..Entry$LT$$RF$str$GT$$GT$17h0e314594e29e6915E"(ptr noalias noundef align 8 dereferenceable(96) %i.w)
          to label %.backedge.i.i unwind label %bb.g, !noalias !772

.backedge.i.i:                                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.thread.i7.i", %bb.f
  %.sroa.15.3.i = phi i64 [ %.sroa.15.2.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.thread.i7.i" ], [ %i.ah, %bb.f ] ; 3 uses
  %.sroa.7.2.i = phi i64 [ %i.al, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.thread.i7.i" ], [ %i.ag, %bb.f ] ; 2 uses
  %i.ai = phi i64 [ %i.u, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.thread.i7.i" ], [ %i.ah, %bb.f ]
  %.not.i8.i = icmp eq i64 %.sroa.7.2.i, %i.b
  br i1 %.not.i8.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h3583ada826b5d0adE.exit.i", label %.lr.ph.i3.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.thread.i7.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.i9.i", %bb.e, %.lr.ph.i3.i
  %i.aj = sub i64 %i.v, %i.u
  %i.ak = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ak, ptr noundef nonnull align 8 dereferenceable(96) %i.w, i64 96, i1 false), !noalias !794
  %i.al = add i64 %i.v, 1
  br label %.backedge.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h3583ada826b5d0adE.exit.i": ; preds = %.backedge.i.i
  %.not.i.i.i = icmp eq i64 %.sroa.15.3.i, 0
  br i1 %.not.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h3583ada826b5d0adE.exit._crit_edge.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h3583ada826b5d0adE.exit.thread50.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h3583ada826b5d0adE.exit.thread50.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h3583ada826b5d0adE.exit.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h6255ccac6ff51dabE.exit.i"
  %.sroa.15.453.i = phi i64 [ %.sroa.15.3.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h3583ada826b5d0adE.exit.i" ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h6255ccac6ff51dabE.exit.i" ]
  %i.am = sub i64 %i.b, %.sroa.15.453.i
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h3583ada826b5d0adE.exit._crit_edge.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h3583ada826b5d0adE.exit._crit_edge.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.thread.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h3583ada826b5d0adE.exit.thread50.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h3583ada826b5d0adE.exit.i"
  %.pre-phi.i = phi i64 [ %i.am, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h3583ada826b5d0adE.exit.thread50.i" ], [ %i.b, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h3583ada826b5d0adE.exit.i" ], [ %i.b, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h850408daa45137f1E.exit.thread.i.i" ]
  store i64 %.pre-phi.i, ptr %i.a, align 8, !alias.scope !772, !noalias !798
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17h450cc39a5d551478E.exit"

._crit_edge.i.i15.i:                              ; preds = %bb.h, %bb.g
  %i.an = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %i.ap, %bb.g ]
  %.sroa.15.029.i = phi i64 [ %.sroa.15.028.i, %bb.h ], [ 0, %bb.g ]
  %i.ao = sub i64 %i.b, %.sroa.15.029.i
  store i64 %i.ao, ptr %i.a, align 8, !alias.scope !772, !noalias !803
  resume { ptr, i32 } %i.an

bb.g:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i13.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i13.i, label %._crit_edge.i.i15.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread.i
  %i.aq = phi { ptr, i32 } [ %i.s, %.thread.i ], [ %i.ap, %bb.g ]
  %.sroa.7.030.i = phi i64 [ %i.r, %.thread.i ], [ %i.ag, %bb.g ] ; 3 uses
  %.sroa.15.028.i = phi i64 [ 1, %.thread.i ], [ %i.ah, %bb.g ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %.sroa.7.030.i
  %i.as = sub i64 %.sroa.7.030.i, %.sroa.15.028.i
  %i.at = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %i.as
  %i.au = sub i64 %i.b, %.sroa.7.030.i
  %i.av = mul i64 %i.au, 96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.at, ptr nonnull align 8 %i.ar, i64 %i.av, i1 false), !noalias !808
  br label %._crit_edge.i.i15.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17h450cc39a5d551478E.exit": ; preds = %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h3583ada826b5d0adE.exit._crit_edge.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain17he0ef50c9145173ceE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !809, !noalias !812, !noundef !30 ; 10 uses
  %i.d = icmp ult i64 %i.c, 96076792050570582
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut17h4b0a150ee9ab9bf2E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !alias.scope !809, !noalias !812
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !809, !noalias !814, !nonnull !30, !noundef !30 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.h = phi i64 [ 0, %.lr.ph.i.i ], [ %i.l, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [96 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = invoke fastcc noundef zeroext i1 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain28_$u7b$$u7b$closure$u7d$$u7d$17h170750f058a7465dE"(ptr nonnull readonly align 8 dereferenceable(8) %i.a, ptr noalias noundef align 8 dereferenceable(96) %i.i)
          to label %.noexc.i unwind label %.thread.i, !noalias !809
end_hunk_0
