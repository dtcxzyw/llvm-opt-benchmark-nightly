inline.NumInlined: 82
inline.NumDeleted: 21
begin_hunk_0_@"_ZN18lindera_dictionary10dictionary14UserDictionary4load28_$u7b$$u7b$closure$u7d$$u7d$17hf1c4efd8f7c2852aE":bb.a

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
  %sext = shl nuw i32 %.sroa.22.0.extract.trunc.i.i.i, 16
  %i.j = ashr exact i32 %sext, 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.j, ptr %i.k, align 8
  ret void

bb.g:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
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
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sub i32 %i.e, %i.g
  %i.i = udiv i32 %i.h, 3                         ; 2 uses
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
  br i1 %i.q, label %bb.e, label %_ZN18lindera_dictionary4mode7Penalty7penalty17hbf635fc347a91bf9E.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink8.i = phi i64 [ %i.k, %bb.c ], [ %i.p, %bb.d ]
  %.sink.i = phi i64 [ 16, %bb.c ], [ 20, %bb.d ]
  %i.r = trunc nuw nsw i64 %.sink8.i to i32
  %i.s = sub nsw i32 %i.i, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink.i
  %i.u = load i32, ptr %i.t, align 4
  %i.v = mul i32 %i.u, %i.s
  br label %_ZN18lindera_dictionary4mode7Penalty7penalty17hbf635fc347a91bf9E.exit

_ZN18lindera_dictionary4mode7Penalty7penalty17hbf635fc347a91bf9E.exit: ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ %i.v, %bb.e ]
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
  %i.f = udiv i32 %i.e, 3                         ; 2 uses
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %i.h = load i64, ptr %0, align 8                ; 2 uses
  %.not = icmp ult i64 %i.h, %i.g
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.j = load i8, ptr %i.i, align 4
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.g
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink8 = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.c ]
  %.sink = phi i64 [ 16, %bb.b ], [ 20, %bb.c ]
  %i.o = trunc nuw nsw i64 %.sink8 to i32
  %i.p = sub nsw i32 %i.f, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.r = load i32, ptr %i.q, align 4
  %i.s = mul i32 %i.r, %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %i.s, %bb.d ]
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
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.d, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN18lindera_dictionary7viterbi1_93_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lindera_dictionary..viterbi..WordId$GT$11deserialize17h9ee8f2831b302b1eE"(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @"_ZN110_$LT$bincode..features..serde..de_borrowed..SerdeDecoder$LT$DE$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h9e8519ad3f2f2b59E"(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1, ptr nonnull align 1 @59, i64 6, ptr nonnull align 8 @64, i64 2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN18lindera_dictionary7viterbi1_95_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lindera_dictionary..viterbi..WordEntry$GT$9serialize17h5b4a5c23d0226517E"(ptr sret([32 x i8]) align 8 %0, ptr align 4 %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [32 x i8], align 8                ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 2 uses
  %i.i = alloca [32 x i8], align 8                ; 3 uses
  %i.j = alloca [32 x i8], align 8                ; 2 uses
  %i.k = alloca [32 x i8], align 8                ; 2 uses
  %i.l = alloca [32 x i8], align 8                ; 3 uses
  %i.m = alloca [32 x i8], align 8                ; 2 uses
  %i.n = alloca [32 x i8], align 8                ; 2 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  call void @"_ZN102_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17h70d48bc087e7f1cbE"(ptr nonnull sret([32 x i8]) align 8 %i.n, ptr align 8 %2, ptr nonnull align 1 @65, i64 9, i64 4)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h69966e13a65f65caE"(ptr nonnull sret([32 x i8]) align 8 %i.o, ptr nonnull align 8 %i.n)
  %i.q = load i64, ptr %i.o, align 8
  %.not = icmp eq i64 %i.q, 9
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h55cde6960c05e988E"(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.m, ptr nonnull align 8 @70)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  store ptr %i.s, ptr %i.p, align 8
  call void @"_ZN107_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h068c4958f8034643E"(ptr nonnull sret([32 x i8]) align 8 %i.k, ptr nonnull align 8 %i.p, ptr nonnull align 1 @66, i64 7, ptr align 4 %1)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hfde5ee0eab29d973E"(ptr nonnull sret([32 x i8]) align 8 %i.l, ptr nonnull align 8 %i.k)
  %i.t = load i64, ptr %i.l, align 8
  %.not2 = icmp eq i64 %i.t, 9
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h55cde6960c05e988E"(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.j, ptr nonnull align 8 @70)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @"_ZN107_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h812508a2b7cbb21bE"(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr nonnull align 8 %i.p, ptr nonnull align 1 @67, i64 9, ptr nonnull align 2 %i.u)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hfde5ee0eab29d973E"(ptr nonnull sret([32 x i8]) align 8 %i.i, ptr nonnull align 8 %i.h)
  %i.v = load i64, ptr %i.i, align 8
  %.not3 = icmp eq i64 %i.v, 9
  br i1 %.not3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h55cde6960c05e988E"(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.g, ptr nonnull align 8 @70)
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 10
  call void @"_ZN107_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h7a3d154628341915E"(ptr nonnull sret([32 x i8]) align 8 %i.e, ptr nonnull align 8 %i.p, ptr nonnull align 1 @68, i64 7, ptr nonnull align 2 %i.w)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hfde5ee0eab29d973E"(ptr nonnull sret([32 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
  %i.x = load i64, ptr %i.f, align 8
  %.not4 = icmp eq i64 %i.x, 9
  br i1 %.not4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h55cde6960c05e988E"(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.d, ptr nonnull align 8 @70)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @"_ZN107_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h7a3d154628341915E"(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 8 %i.p, ptr nonnull align 1 @69, i64 8, ptr nonnull align 2 %i.y)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hfde5ee0eab29d973E"(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  %i.z = load i64, ptr %i.c, align 8
  %.not5 = icmp eq i64 %i.z, 9
  br i1 %.not5, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h55cde6960c05e988E"(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @70)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.p, align 8
  call void @"_ZN107_$LT$bincode..features..serde..ser..SerdeEncoder$LT$ENC$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$3end17had9a4c70ff3eebb0E"(ptr sret([32 x i8]) align 8 %0, ptr align 8 %i.aa)
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.j, %bb.h, %bb.f, %bb.d, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN18lindera_dictionary7viterbi1_96_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lindera_dictionary..viterbi..WordEntry$GT$11deserialize17hbedad78668462700E"(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @"_ZN110_$LT$bincode..features..serde..de_borrowed..SerdeDecoder$LT$DE$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17ha11c1a7f11d40d87E"(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1, ptr nonnull align 1 @65, i64 9, ptr nonnull align 8 @71, i64 4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 1431655766) i64 @_ZN18lindera_dictionary7viterbi4Edge9num_chars17hd41d9dbd327c8bc5E(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sub i32 %i.b, %i.d
  %i.f = udiv i32 %i.e, 3
  %i.g = zext nneg i32 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_ZN18lindera_dictionary7viterbi6WordId10is_unknown17hf5e807d1502a8043E(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = icmp eq i32 %i.a, -1
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_ZN18lindera_dictionary7viterbi6WordId9is_system17h56ad9390e9a0facfE(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}
end_hunk_0
begin_hunk_1_@_ZN18lindera_dictionary7viterbi7Lattice13tokens_offset17h6620bf6753d91a19E:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  br label %_ZN18lindera_dictionary7viterbi7Lattice4edge17h9aaf3da0c239c461E.exit

.loopexit:                                        ; preds = %bb.c, %_ZN18lindera_dictionary7viterbi7Lattice4edge17h9aaf3da0c239c461E.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %bb.d, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6552266c79be0e57E.exit", %bb.a, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr95drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$lindera_dictionary..viterbi..WordId$RP$$GT$$GT$17hee1f9f5cfeb93a3eE"(ptr nonnull align 8 %i.c) #23
          to label %bb.h unwind label %bb.g

_ZN18lindera_dictionary7viterbi7Lattice4edge17h9aaf3da0c239c461E.exit: ; preds = %_ZN18lindera_dictionary7viterbi7Lattice4edge17h9aaf3da0c239c461E.exit.preheader, %bb.c
  %.sroa.0.0 = phi i32 [ %i.l, %bb.c ], [ 1, %_ZN18lindera_dictionary7viterbi7Lattice4edge17h9aaf3da0c239c461E.exit.preheader ]
  %i.g = zext i32 %.sroa.0.0 to i64
  %i.h = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcada758cec5a4e7bE"(ptr align 8 %1, i64 %i.g, ptr nonnull align 8 @83)
          to label %_ZN18lindera_dictionary7viterbi7Lattice4edge17h9aaf3da0c239c461E.exit2 unwind label %.loopexit ; 5 uses

_ZN18lindera_dictionary7viterbi7Lattice4edge17h9aaf3da0c239c461E.exit2: ; preds = %_ZN18lindera_dictionary7viterbi7Lattice4edge17h9aaf3da0c239c461E.exit
  %i.i = load i32, ptr %i.h, align 4
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN18lindera_dictionary7viterbi7Lattice4edge17h9aaf3da0c239c461E.exit2
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.n = load i32, ptr %i.m, align 4
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.s = load i8, ptr %i.r, align 4
  store i64 %i.o, ptr %i.b, align 8
  store i32 %i.q, ptr %i.e, align 8
  store i8 %i.s, ptr %i.f, align 4
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h30bbf3b02c6beed7E"(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.b, ptr nonnull align 8 @74)
          to label %_ZN18lindera_dictionary7viterbi7Lattice4edge17h9aaf3da0c239c461E.exit unwind label %.loopexit

bb.d:                                             ; preds = %_ZN18lindera_dictionary7viterbi7Lattice4edge17h9aaf3da0c239c461E.exit2
  %i.t = invoke { ptr, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hddd8dc46fd5786cdE"(ptr nonnull align 8 %i.c)
          to label %bb.e unwind label %.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.u = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.t, 1        ; 2 uses
  %i.w = lshr i64 %i.v, 1                         ; 4 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.v
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.y
  invoke void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h9ffa0a13976be8ebE"(ptr align 8 %i.u, i64 %i.w, ptr align 8 %i.z, i64 %i.w, i64 %i.w)
          to label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6552266c79be0e57E.exit" unwind label %.loopexit.split-lp

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6552266c79be0e57E.exit": ; preds = %bb.e
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17hdcb3d80042dba308E"(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.c)
          to label %bb.f unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6552266c79be0e57E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  ret void

bb.g:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs17hfa625d0f921a321cE(ptr align 8 %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = tail call i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17hb70393ab6935b05eE"(ptr nonnull align 8 %i.g)
  %i.i = tail call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h72e0f2e4a3e503a6E"(i64 0, i64 %i.h) ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
  store i64 %i.j, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hecd6df68a516e275E"(ptr nonnull align 8 %i.f) ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %.lr.ph5, label %._crit_edge

.lr.ph5:                                          ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.b

.loopexit:                                        ; preds = %.backedge, %bb.b
  %i.x = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hecd6df68a516e275E"(ptr nonnull align 8 %i.f) ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph5, %.loopexit
  %i.aa = phi { i64, i64 } [ %i.m, %.lr.ph5 ], [ %i.x, %.loopexit ]
  %i.ab = extractvalue { i64, i64 } %i.aa, 1      ; 2 uses
  %i.ac = call align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7650b66bbb5a9846E"(ptr nonnull align 8 %i.p, i64 %i.ab, ptr nonnull align 8 @79)
  %i.ad = call align 8 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7650b66bbb5a9846E"(ptr nonnull align 8 %i.g, i64 %i.ab, ptr nonnull align 8 @80)
  %i.ae = call { ptr, ptr } @"_ZN94_$LT$$RF$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hfedbe214e3fb8e89E"(ptr align 8 %i.ad) ; 2 uses
  %i.af = extractvalue { ptr, ptr } %i.ae, 0
  %i.ag = extractvalue { ptr, ptr } %i.ae, 1
  store ptr %i.af, ptr %i.e, align 8
  store ptr %i.ag, ptr %i.q, align 8
  %i.ah = call align 4 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5e13b7f9ee7d20fbE"(ptr nonnull align 8 %i.e) ; 2 uses
  %.not4 = icmp eq ptr %i.ah, null
  br i1 %.not4, label %.loopexit, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.b, %.backedge
  %i.ai = phi ptr [ %i.ay, %.backedge ], [ %i.ah, %bb.b ]
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = call align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcada758cec5a4e7bE"(ptr align 8 %0, i64 %i.ak, ptr nonnull align 8 @83)
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.am, i64 16, i1 false)
  %i.an = call { ptr, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h2477b1a91a023f3cE"(ptr align 8 %i.ac) ; 2 uses
  %i.ao = extractvalue { ptr, i64 } %i.an, 0
  %i.ap = extractvalue { ptr, i64 } %i.an, 1
  %i.aq = call { ptr, ptr } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17hcb1aab53c73537f2E"(ptr align 4 %i.ao, i64 %i.ap) ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0
  %i.as = extractvalue { ptr, ptr } %i.aq, 1
  %i.at = call { ptr, ptr } @_ZN4core4iter6traits8iterator8Iterator6cloned17hbb46458b231d6233E(ptr %i.ar, ptr %i.as) ; 2 uses
  %i.au = extractvalue { ptr, ptr } %i.at, 0
  %i.av = extractvalue { ptr, ptr } %i.at, 1
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.r, align 8
  store ptr %i.d, ptr %i.s, align 8
  store ptr %2, ptr %i.t, align 8
  call void @_ZN4core4iter6traits8iterator8Iterator3map17hd2fc5ee1335d0519E(ptr nonnull sret([48 x i8]) align 8 %i.b, ptr %i.au, ptr %i.av, ptr nonnull align 8 %i.a)
  call void @_ZN4core4iter6traits8iterator8Iterator10min_by_key17haf8b1ce400047dcdE(ptr nonnull sret([12 x i8]) align 4 %i.c, ptr nonnull align 8 %i.b)
  %i.aw = load i32, ptr %i.c, align 4
  %i.ax = trunc i32 %i.aw to i1
  br i1 %i.ax, label %bb.c, label %.backedge

.backedge:                                        ; preds = %.lr.ph, %bb.c
  %i.ay = call align 4 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5e13b7f9ee7d20fbE"(ptr nonnull align 8 %i.e) ; 2 uses
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.az = load i32, ptr %i.u, align 4
  %i.ba = load i32, ptr %i.v, align 4
  %i.bb = call align 4 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h52622668dee5cb4cE"(ptr align 8 %0, i64 %i.ak, ptr nonnull align 8 @81) ; 3 uses
  store i32 1, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 %i.ba, ptr %i.bc, align 4
  %i.bd = load i16, ptr %i.w, align 4
  %i.be = sext i16 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bg = add i32 %i.az, %i.be
  store i32 %i.bg, ptr %i.bf, align 4
  br label %.backedge
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i32, i32 } @"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h0b1a673db287288dE"(ptr nofree readonly align 8 captures(none) %0, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = zext i32 %1 to i64
  %i.c = tail call align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcada758cec5a4e7bE"(ptr align 8 %i.a, i64 %i.b, ptr nonnull align 8 @83) ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.i = load i16, ptr %i.h, align 4
  %i.j = zext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i32
  %i.p = tail call i32 @_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h5be7a7f72087495aE(ptr align 8 %i.g, i32 %i.j, i32 %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.b, label %_ZN18lindera_dictionary4mode4Mode12penalty_cost17h32867eea720d1fc0E.exit

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.w = load i32, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.y = load i32, ptr %i.x, align 4
  %i.z = sub i32 %i.w, %i.y
  %i.aa = udiv i32 %i.z, 3                        ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = load i64, ptr %i.u, align 8             ; 2 uses
  %.not.i.i = icmp ult i64 %i.ac, %i.ab
  br i1 %.not.i.i, label %bb.c, label %_ZN18lindera_dictionary4mode4Mode12penalty_cost17h32867eea720d1fc0E.exit

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.ae = load i8, ptr %i.ad, align 4
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ab
  br i1 %i.ai, label %bb.e, label %_ZN18lindera_dictionary4mode4Mode12penalty_cost17h32867eea720d1fc0E.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink8.i.i = phi i64 [ %i.ac, %bb.c ], [ %i.ah, %bb.d ]
  %.sink.i.i = phi i64 [ 16, %bb.c ], [ 20, %bb.d ]
  %i.aj = trunc nuw nsw i64 %.sink8.i.i to i32
  %i.ak = sub nsw i32 %i.aa, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sink.i.i
  %i.am = load i32, ptr %i.al, align 4
  %i.an = mul i32 %i.am, %i.ak
  br label %_ZN18lindera_dictionary4mode4Mode12penalty_cost17h32867eea720d1fc0E.exit

_ZN18lindera_dictionary4mode4Mode12penalty_cost17h32867eea720d1fc0E.exit: ; preds = %bb.a, %bb.b, %bb.d, %bb.e
  %.sroa.0.0.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ %i.an, %bb.e ]
  %i.ao = add i32 %i.p, %i.e
  %i.ap = add i32 %i.ao, %.sroa.0.0.i
  %i.aq = insertvalue { i32, i32 } poison, i32 %i.ap, 0
  %i.ar = insertvalue { i32, i32 } %i.aq, i32 %1, 1
  ret { i32, i32 } %i.ar
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i32 @"_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs28_$u7b$$u7b$closure$u7d$$u7d$17h8d641a1db79c2944E"(ptr nofree readnone align 1 captures(none) %0, ptr nofree readonly align 4 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define align 4 ptr @_ZN18lindera_dictionary7viterbi7Lattice4edge17h9aaf3da0c239c461E(ptr align 8 %0, i32 %1) unnamed_addr #1 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = tail call align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hcada758cec5a4e7bE"(ptr align 8 %0, i64 %i.a, ptr nonnull align 8 @83)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_ZN18lindera_dictionary7viterbi7Lattice5clear17h0e04129bed2f1852E(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = tail call { ptr, ptr } @"_ZN102_$LT$$RF$mut$u20$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h83bd6bdec50c6074E"(ptr nonnull align 8 %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  store ptr %i.e, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = call align 8 ptr @"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2da99a47d8486ac5E"(ptr nonnull align 8 %i.b) ; 2 uses
  %.not5 = icmp eq ptr %i.h, null
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.i = phi ptr [ %i.j, %.lr.ph ], [ %i.h, %bb.a ]
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17h4d41bf145d03c121E"(ptr nonnull align 8 %i.i)
  %i.j = call align 8 ptr @"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2da99a47d8486ac5E"(ptr nonnull align 8 %i.b) ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = call { ptr, ptr } @"_ZN102_$LT$$RF$mut$u20$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h83bd6bdec50c6074E"(ptr nonnull align 8 %i.k) ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0
  %i.n = extractvalue { ptr, ptr } %i.l, 1
  store ptr %i.m, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.n, ptr %i.o, align 8
  %i.p = call align 8 ptr @"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2da99a47d8486ac5E"(ptr nonnull align 8 %i.a) ; 2 uses
  %.not46 = icmp eq ptr %i.p, null
  br i1 %.not46, label %._crit_edge9, label %.lr.ph8

.lr.ph8:                                          ; preds = %._crit_edge, %.lr.ph8
  %i.q = phi ptr [ %i.r, %.lr.ph8 ], [ %i.p, %._crit_edge ]
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17h4d41bf145d03c121E"(ptr nonnull align 8 %i.q)
  %i.r = call align 8 ptr @"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2da99a47d8486ac5E"(ptr nonnull align 8 %i.a) ; 2 uses
  %.not4 = icmp eq ptr %i.r, null
  br i1 %.not4, label %._crit_edge9, label %.lr.ph8

._crit_edge9:                                     ; preds = %.lr.ph8, %._crit_edge
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17h5c6aedb6940a598eE"(ptr align 8 %0)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN18lindera_dictionary7viterbi7Lattice8set_text17h77ccf3e0c2564d50E(ptr align 8 %0, ptr align 8 %1, ptr align 8 %2, ptr align 8 %3, ptr align 8 %4, ptr align 1 %5, i64 %6, ptr nofree readonly align 8 captures(none) %7) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 4                ; 10 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 3 uses
  %i.o = alloca [24 x i8], align 8                ; 2 uses
  %i.p = alloca [24 x i8], align 8                ; 2 uses
  %i.q = alloca [16 x i8], align 8                ; 3 uses
  %i.r = alloca [40 x i8], align 4                ; 8 uses
  %i.s = alloca [16 x i8], align 4                ; 2 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [144 x i8], align 8               ; 3 uses
  %i.v = alloca [144 x i8], align 8               ; 2 uses
  %i.w = alloca [144 x i8], align 8               ; 2 uses
  %i.x = alloca [40 x i8], align 4                ; 8 uses
  %i.y = alloca [16 x i8], align 4                ; 2 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [144 x i8], align 8              ; 3 uses
  %i.ab = alloca [144 x i8], align 8              ; 2 uses
  %i.ac = alloca [144 x i8], align 8              ; 2 uses
  %i.ad = alloca [8 x i8], align 8                ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [48 x i8], align 8               ; 2 uses
  %i.ag = alloca [40 x i8], align 4               ; 11 uses
  %i.ah = alloca [4 x i8], align 4                ; 2 uses
  %i.ai = alloca [40 x i8], align 4               ; 11 uses
  %i.aj = tail call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17hbc7fc6016503decdE"(ptr align 1 %5, i64 %6) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  tail call void @_ZN18lindera_dictionary7viterbi7Lattice5clear17h0e04129bed2f1852E(ptr align 8 %0)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = icmp ult i64 %i.al, %i.aj
  br i1 %i.am, label %bb.b, label %_ZN18lindera_dictionary7viterbi7Lattice12set_capacity17h82289a4195e6cb9eE.exit

bb.b:                                             ; preds = %bb.a
  store i64 %i.aj, ptr %i.ak, align 8
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17h5c6aedb6940a598eE"(ptr nonnull align 8 %0)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = add i64 %i.aj, 1                        ; 2 uses
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h10dcab0d9d99a650E"(ptr nonnull sret([24 x i8]) align 8 %i.m)
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17h87f14a74fed42583E"(ptr nonnull align 8 %i.an, i64 %i.ao, ptr nonnull align 8 %i.m, ptr nonnull align 8 @72)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h10dcab0d9d99a650E"(ptr nonnull sret([24 x i8]) align 8 %i.l)
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17h87f14a74fed42583E"(ptr nonnull align 8 %i.ap, i64 %i.ao, ptr nonnull align 8 %i.l, ptr nonnull align 8 @73)
  br label %_ZN18lindera_dictionary7viterbi7Lattice12set_capacity17h82289a4195e6cb9eE.exit

_ZN18lindera_dictionary7viterbi7Lattice12set_capacity17h82289a4195e6cb9eE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !9)
  %i.aq = call { i32, i32 } @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h1be60cc74e1f1e79E"(), !noalias !9 ; 2 uses
  %i.ar = extractvalue { i32, i32 } %i.aq, 0
  %i.as = extractvalue { i32, i32 } %i.aq, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 37
  store i8 0, ptr %i.at, align 1, !alias.scope !9
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 -1, ptr %i.au, align 4, !alias.scope !9
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i8 1, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !9
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i16 0, ptr %.sroa.31.0..sroa_idx.i, align 4, !alias.scope !9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 18
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 2, !alias.scope !9
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i32 0, ptr %i.av, align 4, !alias.scope !9
  store i32 %i.ar, ptr %i.ai, align 4, !alias.scope !9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.as, ptr %i.aw, align 4, !alias.scope !9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ax, i8 0, i64 9, i1 false), !alias.scope !9
  %i.ay = call i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17hb94f5cf7cf0d43dbE"(ptr nonnull align 8 %0)
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hbbeff9b5bdaddabaE"(ptr nonnull align 8 %0, ptr nonnull align 4 %i.ai, ptr nonnull align 8 @84)
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.az = call { i32, i32 } @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h1be60cc74e1f1e79E"(), !noalias !12 ; 2 uses
  %i.ba = extractvalue { i32, i32 } %i.az, 0
  %i.bb = extractvalue { i32, i32 } %i.az, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 37
  store i8 0, ptr %i.bc, align 1, !alias.scope !12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 -1, ptr %i.bd, align 4, !alias.scope !12
  %.sroa.2.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i8 1, ptr %.sroa.2.0..sroa_idx.i14, align 4, !alias.scope !12
  %.sroa.31.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i16 0, ptr %.sroa.31.0..sroa_idx.i15, align 4, !alias.scope !12
  %.sroa.4.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.ag, i64 18
  store i16 0, ptr %.sroa.4.0..sroa_idx.i16, align 2, !alias.scope !12
  %.sroa.5.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  store i16 0, ptr %.sroa.5.0..sroa_idx.i17, align 4, !alias.scope !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i32 0, ptr %i.be, align 4, !alias.scope !12
  store i32 %i.ba, ptr %i.ag, align 4, !alias.scope !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %i.bb, ptr %i.bf, align 4, !alias.scope !12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bg, i8 0, i64 9, i1 false), !alias.scope !12
  %i.bh = call i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17hb94f5cf7cf0d43dbE"(ptr nonnull align 8 %0)
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hbbeff9b5bdaddabaE"(ptr nonnull align 8 %0, ptr nonnull align 4 %i.ag, ptr nonnull align 8 @84)
  store i32 %i.bi, ptr %i.ah, align 4
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN18lindera_dictionary7viterbi7Lattice12set_capacity17h82289a4195e6cb9eE.exit
  store ptr null, ptr %i.af, align 8
  call void @_ZN4core9panicking13assert_failed17hfea3ac8041b002aaE(i8 0, ptr nonnull align 4 @85, ptr nonnull align 4 %i.ah, ptr nonnull align 8 %i.af, ptr nonnull align 8 @86) #25
  unreachable

bb.d:                                             ; preds = %_ZN18lindera_dictionary7viterbi7Lattice12set_capacity17h82289a4195e6cb9eE.exit
  %i.bk = trunc i64 %i.ay to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.bm = call align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hef47ca29663f5f57E"(ptr nonnull align 8 %i.bl, i64 0, ptr nonnull align 8 @87)
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h14ee8d28859bd434E"(ptr align 8 %i.bm, i32 %i.bk, ptr nonnull align 8 @88)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bo = call align 8 ptr @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hef47ca29663f5f57E"(ptr nonnull align 8 %i.bn, i64 %i.aj, ptr nonnull align 8 @89)
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h14ee8d28859bd434E"(ptr align 8 %i.bo, i32 1, ptr nonnull align 8 @90)
  %i.bp = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h72e0f2e4a3e503a6E"(i64 0, i64 %i.aj) ; 2 uses
end_hunk_1
