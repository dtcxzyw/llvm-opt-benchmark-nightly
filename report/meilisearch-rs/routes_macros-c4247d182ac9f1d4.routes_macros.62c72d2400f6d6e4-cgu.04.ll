Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/routes_macros-c4247d182ac9f1d4.routes_macros.62c72d2400f6d6e4-cgu.04?download=true
inline.NumInlined: 11
inline.NumDeleted: 11
begin_hunk_0_@"_ZN67_$LT$u32$u20$as$u20$proc_macro..bridge..rpc..DecodeMut$LT$S$GT$$GT$6decode17h91bb627537341401E":bb.a
  %i.c = icmp ugt i64 %i.b, 3
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 0, i64 4, i64 %i.b, ptr nonnull align 8 @13) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %.val = load i32, ptr %i.d, align 1
  %i.e = tail call { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17ha7581dfeee559bfdE"(i64 4, ptr nonnull align 1 %i.d, i64 %i.b, ptr nonnull align 8 @13) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  store ptr %i.f, ptr %0, align 8
  store i64 %i.g, ptr %i.a, align 8
  ret i32 %.val
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN68_$LT$$RF$str$u20$as$u20$proc_macro..bridge..rpc..Encode$LT$S$GT$$GT$6encode17hae649cf01dadf98fE"(ptr align 1 %0, i64 %1, ptr align 8 %2, ptr nofree readnone align 1 captures(none) %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !73 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8
  call void @_ZN10proc_macro6bridge6buffer6Buffer17extend_from_array17h7c583525b504439dE(ptr align 8 %2, ptr nonnull align 1 %i.a)
  call void @_ZN10proc_macro6bridge6buffer6Buffer17extend_from_slice17h528e83efa8415e2bE(ptr align 8 %2, ptr align 1 %0, i64 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @"_ZN69_$LT$$LP$$RP$$u20$as$u20$proc_macro..bridge..rpc..Encode$LT$S$GT$$GT$6encode17h39d490d5fcebba59E"(ptr nofree readnone align 8 captures(none) %0, ptr nofree readnone align 1 captures(none) %1) unnamed_addr #8 !guid !74 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62ad30bbdc344a44E"(ptr align 8 %0) unnamed_addr #0 !guid !75 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !invariant.load !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !invariant.load !5
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1) ; 3 uses
  %i.h = add i64 %i.g, -1                         ; 2 uses
  %i.i = add i64 %i.h, %i.d
  %i.j = sub i64 0, %i.g                          ; 2 uses
  %i.k = and i64 %i.i, %i.j
  %i.l = add i64 %i.k, %i.h
  %i.m = and i64 %i.l, %i.j                       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf88c89532b03c4b3E"(ptr nonnull align 1 %i.p, ptr %i.o, i64 %i.g, i64 %i.m)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7fce52e1c939d1abE"(ptr align 8 %0) unnamed_addr #0 !guid !76 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !invariant.load !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !invariant.load !5
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf88c89532b03c4b3E"(ptr nonnull align 1 %i.i, ptr %i.h, i64 %i.g, i64 %i.d)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9f8a903e9a849c8fE"(ptr align 8 %0) unnamed_addr #0 !guid !77 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf88c89532b03c4b3E"(ptr nonnull align 1 %i.b, ptr %i.a, i64 8, i64 24)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafe7ee7c38e10ac1E"(ptr align 8 %0) unnamed_addr #0 !guid !78 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf88c89532b03c4b3E"(ptr nonnull align 1 %i.b, ptr %i.a, i64 8, i64 256)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb1aef7d84eae65a6E"(ptr align 8 %0) unnamed_addr #0 !guid !79 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf88c89532b03c4b3E"(ptr nonnull align 1 %i.b, ptr %i.a, i64 8, i64 296)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb8219bbbc7256a57E"(ptr align 8 %0) unnamed_addr #0 !guid !80 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !invariant.load !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !invariant.load !5
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1) ; 3 uses
  %i.h = add i64 %i.g, -1                         ; 2 uses
  %i.i = add i64 %i.h, %i.d
  %i.j = sub i64 0, %i.g                          ; 2 uses
  %i.k = and i64 %i.i, %i.j
  %i.l = add i64 %i.k, %i.h
  %i.m = and i64 %i.l, %i.j                       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf88c89532b03c4b3E"(ptr nonnull align 1 %i.p, ptr %i.o, i64 %i.g, i64 %i.m)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he492370d7b9fd653E"(ptr align 8 %0) unnamed_addr #0 !guid !81 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf88c89532b03c4b3E"(ptr nonnull align 1 %i.b, ptr %i.a, i64 8, i64 72)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he80fd556e5675ff1E"(ptr align 8 %0) unnamed_addr #0 !guid !82 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !invariant.load !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !invariant.load !5
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1) ; 3 uses
  %i.h = add i64 %i.g, -1                         ; 2 uses
  %i.i = add i64 %i.h, %i.d
  %i.j = sub i64 0, %i.g                          ; 2 uses
  %i.k = and i64 %i.i, %i.j
  %i.l = add i64 %i.k, %i.h
  %i.m = and i64 %i.l, %i.j                       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf88c89532b03c4b3E"(ptr nonnull align 1 %i.p, ptr %i.o, i64 %i.g, i64 %i.m)
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @"_ZN74_$LT$syn..drops..NoDrop$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h22c6f283ec7d35f0E"(ptr align 1 %0, ptr align 8 %1) unnamed_addr #8 !guid !83 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @"_ZN74_$LT$syn..drops..NoDrop$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hb7c82f46093ae64dE"(ptr align 1 %0, ptr align 8 %1) unnamed_addr #8 !guid !84 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1ea54191dcfcccf4E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !87 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = load ptr, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %.fr.i = freeze ptr %i.b                        ; 4 uses
  %i.c = ptrtoint ptr %.fr.i to i64               ; 3 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %bb.b
    i64 3, label %bb.c
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.c, 32
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %i.g, align 4, !alias.scope !88
  store i8 0, ptr %i.a, align 8, !alias.scope !88
  br label %_ZN3std2io5error14repr_bitpacked11decode_repr17h8602e8aa3813c72eE.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp ugt ptr %.fr.i, inttoptr (i64 180388626431 to ptr)
  br i1 %.not.i, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.fr.i, ptr %i.h, align 8, !alias.scope !88
  store i8 2, ptr %i.a, align 8, !alias.scope !88
  br label %_ZN3std2io5error14repr_bitpacked11decode_repr17h8602e8aa3813c72eE.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.fr.i, i64 -1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !88
  store i8 3, ptr %i.a, align 8, !alias.scope !88
  br label %_ZN3std2io5error14repr_bitpacked11decode_repr17h8602e8aa3813c72eE.exit

bb.f:                                             ; preds = %bb.c
  %i.k = lshr i64 %i.c, 24
  %tr.sh.diff.i = trunc i64 %i.k to i16
  %1 = and i16 %tr.sh.diff.i, -256
  %2 = or disjoint i16 %1, 1
  store i16 %2, ptr %i.a, align 8, !alias.scope !88
  br label %_ZN3std2io5error14repr_bitpacked11decode_repr17h8602e8aa3813c72eE.exit

bb.g:                                             ; preds = %bb.c
  tail call void @_ZN4core4hint21unreachable_unchecked18precondition_check17h7c02478f30e40397E(ptr nonnull align 8 @5) #21, !noalias !88
  unreachable

_ZN3std2io5error14repr_bitpacked11decode_repr17h8602e8aa3813c72eE.exit: ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  call void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17hce952bf0403f1bdbE"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden align 8 ptr @"_ZN80_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..convert..AsMut$LT$T$GT$$GT$6as_mut17h7e6975a175f46410E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 !guid !89 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i64 0, 576460752303423488) i64 @"_ZN83_$LT$I$u20$as$u20$alloc..vec..in_place_collect..SpecInPlaceCollect$LT$T$C$I$GT$$GT$16collect_in_place17hb9c0828c9cde0494E"(ptr align 8 %0, ptr %1, ptr %2) unnamed_addr #0 !guid !90 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h3e0e12e0296896f8E"(ptr align 8 %0, ptr %1, ptr %1, ptr nonnull align 1 %i.a, ptr %2)
  %i.c = extractvalue { ptr, ptr } %i.b, 1
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 5
  ret i64 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN83_$LT$quote..__private..RepInterp$LT$T$GT$$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17h1bf702039f751b05E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 !guid !91 {
bb.a:
  tail call void @"_ZN52_$LT$$RF$T$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17hc1035005feae8bf3E"(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN83_$LT$quote..__private..RepInterp$LT$T$GT$$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17h1ccfeac2c64622b1E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 !guid !92 {
bb.a:
  tail call void @"_ZN52_$LT$$RF$T$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17hf31bb73cf90b63efE"(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN83_$LT$quote..__private..RepInterp$LT$T$GT$$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17h42400d41563055aaE"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 !guid !93 {
bb.a:
  tail call void @"_ZN52_$LT$$RF$T$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17h73e1c845e8ccd490E"(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN83_$LT$quote..__private..RepInterp$LT$T$GT$$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17h6be98d5546045ad5E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 !guid !94 {
bb.a:
  tail call void @"_ZN65_$LT$proc_macro2..Ident$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17hab34f87b13ef870cE"(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @"_ZN86_$LT$quote..__private..IdentFragmentAdapter$LT$T$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h20bdcf9ba589d0c1E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 !guid !95 {
bb.a:
  %i.a = tail call zeroext i1 @"_ZN62_$LT$$RF$T$u20$as$u20$quote..ident_fragment..IdentFragment$GT$3fmt17h9bc53c78de2b9e98E"(ptr align 8 %0, ptr align 8 %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @"_ZN96_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..adapters..SourceIter$GT$8as_inner17hca158dcc94218e9bE"(ptr align 8 %0) unnamed_addr #0 !guid !96 {
bb.a:
  %i.a = tail call align 8 ptr @"_ZN97_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..adapters..SourceIter$GT$8as_inner17hc44ff9ee98d005daE"(ptr align 8 %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$proc_macro..bridge..rpc..PanicMessage$u20$as$u20$proc_macro..bridge..rpc..Encode$LT$S$GT$$GT$6encode17h191d260aacf8d05bE"(ptr align 8 %0, ptr align 8 %1, ptr align 1 %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !97 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, -9223372036854775806
  br i1 %i.b, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.sink.split
  %.sroa.4.0 = phi i64 [ undef, %bb.a ], [ %i.f, %.sink.split ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.d, %.sink.split ]
  invoke void @"_ZN10proc_macro6bridge100_$LT$impl$u20$proc_macro..bridge..rpc..Encode$LT$S$GT$$u20$for$u20$core..option..Option$LT$T$GT$$GT$6encode17h1d97c71bb757742dE"(ptr align 1 %.sroa.0.0, i64 %.sroa.4.0, ptr align 8 %1, ptr align 1 %2)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr58drop_in_place$LT$proc_macro..bridge..rpc..PanicMessage$GT$17h7d9002b50637e0b1E"(ptr nonnull align 8 %0) #17
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @"_ZN4core3ptr58drop_in_place$LT$proc_macro..bridge..rpc..PanicMessage$GT$17h7d9002b50637e0b1E"(ptr nonnull align 8 %0)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #18
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @"_ZN86_$LT$core..option..Iter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h02178af6a5f18b67E"(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @"_ZN13routes_macros6routes5Route24iter_path_handler_method28_$u7b$$u7b$closure$u7d$$u7d$17h740b3815112dac00E"(ptr sret([40 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdb4883524d6db5e0E"(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_ZN4core3ops8function5FnMut8call_mut17h152b0f8ca349f905E(ptr sret([24 x i8]) align 8, ptr align 1, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @"_ZN13routes_macros6routes5Route24iter_path_handler_method28_$u7b$$u7b$closure$u7d$$u7d$17hb3e17e8e7f7e2305E"(ptr sret([40 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7645305e113a87d3E"(ptr sret([40 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @"_ZN13routes_macros6routes10try_routes28_$u7b$$u7b$closure$u7d$$u7d$17h921da85e0d35ee19E"(ptr sret([32 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd300432adc5812feE"(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @"_ZN13routes_macros6routes10try_routes28_$u7b$$u7b$closure$u7d$$u7d$17h558b7cda29e1d2e8E"(ptr sret([88 x i8]) align 8, ptr align 1, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @"_ZN89_$LT$syn..punctuated..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h892eca337f13f0f5E"(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @"_ZN13routes_macros7request12parse_struct28_$u7b$$u7b$closure$u7d$$u7d$17h3bc61c3c19ae736cE"(ptr sret([224 x i8]) align 8, ptr align 1, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @"_ZN13routes_macros7request10parse_enum28_$u7b$$u7b$closure$u7d$$u7d$17h7a6df95e1fce43d1E"(ptr sret([224 x i8]) align 8, ptr align 1, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 8 ptr @"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hed69bcb61f7e8b49E"(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @"_ZN13routes_macros6routes10try_routes28_$u7b$$u7b$closure$u7d$$u7d$17hb980a7f1bad3b958E"(ptr sret([80 x i8]) align 8, ptr align 1, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @"_ZN13routes_macros6routes5Route24iter_path_handler_method28_$u7b$$u7b$closure$u7d$$u7d$17ha754b64c2216bebbE"(ptr sret([40 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @"_ZN13routes_macros6routes5Route24iter_path_handler_method28_$u7b$$u7b$closure$u7d$$u7d$17h4fa9851f6c93d686E"(ptr sret([40 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @"_ZN13routes_macros6routes5Route24iter_path_handler_method28_$u7b$$u7b$closure$u7d$$u7d$17hb01f8406707686d4E"(ptr sret([40 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_ZN4core4iter6traits8iterator8Iterator8try_fold17h610d611011a474c4E(ptr sret([32 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h3e0e12e0296896f8E"(ptr align 8, ptr, ptr, ptr align 1, ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN89_$LT$syn..punctuated..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h782b810eedbc20caE"(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5ec37e0b1939ba95E"(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN13routes_macros4path8try_path17h964b4cf21f1f53d6E(ptr sret([80 x i8]) align 8, i32, i32) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN23proc_macro2_diagnostics10diagnostic10Diagnostic19emit_as_item_tokens17hdd8a2453521677cfE(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hdc8ddf9c5b262cf0E"(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN13routes_macros6routes10try_routes17h225154e4931b1e38E(ptr sret([80 x i8]) align 8, i32, i32) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN13routes_macros7request11try_request17h445a9431a48a053dE(ptr sret([80 x i8]) align 8, i32, i32) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$21parse_terminated_with17hfe2a8c438b350891E"(ptr sret([32 x i8]) align 8, ptr align 8, ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$21parse_terminated_with17haca03545f6f1efd5E"(ptr sret([32 x i8]) align 8, ptr align 8, ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$21parse_terminated_with17h8177781a0abe9721E"(ptr sret([32 x i8]) align 8, ptr align 8, ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
end_hunk_0
