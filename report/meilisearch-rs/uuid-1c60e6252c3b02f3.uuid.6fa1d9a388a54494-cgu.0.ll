Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/uuid-1c60e6252c3b02f3.uuid.6fa1d9a388a54494-cgu.0?download=true
inline.NumInlined: 319
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17ha83ac665cb741901E":bb.a

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx4.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i.i, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %.sroa.4.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.e, ptr %.sroa.4.0..sroa_idx2.i.i, align 8
  call fastcc void @_ZN4uuid5error11InvalidUuid8into_err17h2662b006ae31b65fE(ptr noalias nonnull align 8 %i.b, ptr align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %"_ZN4uuid6parser67_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$uuid..Uuid$GT$8from_str17hd3d67d812d82d9e2E.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  store i32 9, ptr %0, align 8
  br label %"_ZN4uuid6parser67_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$uuid..Uuid$GT$8from_str17hd3d67d812d82d9e2E.exit"

"_ZN4uuid6parser67_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$uuid..Uuid$GT$8from_str17hd3d67d812d82d9e2E.exit": ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17hb57742474a9094c6E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 20)) %0, ptr align 1 %1, i64 %2) unnamed_addr #1 {
bb.a:
  tail call void @"_ZN61_$LT$uuid..fmt..Urn$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hb7dc77d2821ef8ecE"(ptr sret([32 x i8]) align 8 %0, ptr align 1 %1, i64 %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h2180a820a6d13b23E"(ptr align 1 %0, i64 %1, i64 %2, i64 %3, ptr align 8 %4) unnamed_addr #1 {
bb.a:
  %.not.i.i = icmp ugt i64 %2, %3
  br i1 %.not.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.thread.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not5.i.i = icmp ult i64 %2, %1
  br i1 %.not5.i.i, label %bb.e, label %.split.i.i

bb.d:                                             ; preds = %bb.e, %.split.i.i, %bb.b
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.i", label %bb.f

.split.i.i:                                       ; preds = %bb.c
  %i.c = icmp eq i64 %2, %1
  br i1 %i.c, label %bb.d, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.thread.i"

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp sgt i8 %i.e, -65
  br i1 %i.f, label %bb.d, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.thread.i"

bb.f:                                             ; preds = %bb.d
  %.not6.i.i = icmp ult i64 %3, %1
  br i1 %.not6.i.i, label %bb.g, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.f
  %i.g = icmp ne i64 %3, %1
  %.not.i = icmp eq ptr %0, null
  %or.cond.i = select i1 %i.g, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.thread.i", label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17h5c06608529b2ad4eE.exit"

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %3
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp slt i8 %i.i, -64
  %.not.old.i = icmp eq ptr %0, null
  %or.cond6.i = select i1 %i.j, i1 true, i1 %.not.old.i
  br i1 %or.cond6.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.thread.i", label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17h5c06608529b2ad4eE.exit"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.i": ; preds = %bb.d
  %.not.old.old.i = icmp eq ptr %0, null
  br i1 %.not.old.old.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.thread.i", label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17h5c06608529b2ad4eE.exit"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.thread.i": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.i", %bb.g, %.split7.i.i, %bb.e, %.split.i.i, %bb.a
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr align 1 %0, i64 %1, i64 %2, i64 %3, ptr align 8 %4) #25
  unreachable

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17h5c06608529b2ad4eE.exit": ; preds = %.split7.i.i, %bb.g, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.i"
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.l = insertvalue { ptr, i64 } poison, ptr %i.k, 0
  %i.m = sub nuw i64 %3, %2
  %i.n = insertvalue { ptr, i64 } %i.l, i64 %i.m, 1
  ret { ptr, i64 } %i.n
}

; Function Attrs: cold inlinehint noreturn nounwind nonlazybind uwtable
define internal fastcc void @_ZN4core4hint21unreachable_unchecked18precondition_check17hd59bff297b3b8e9bE(ptr align 8 %0) unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  store ptr @9, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 199, ptr %i.c, align 8
  store ptr %i.a, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.g, align 8
  call void @_ZN4core9panicking18panic_nounwind_fmt17h622822847ebd61beE(ptr nonnull align 8 %i.b, i1 zeroext false, ptr align 8 %0) #28
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h79cce2ba1ce91291E"(ptr nofree align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %0, align 8                ; 3 uses
  %i.c = load i64, ptr %i.a, align 8
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h7d335ce1a8513054E.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i64 %i.b, 1
  store i64 %i.e, ptr %0, align 8
  br label %"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h7d335ce1a8513054E.exit"

"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h7d335ce1a8513054E.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %i.b, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 1 ptr @"_ZN4core5array102_$LT$impl$u20$core..convert..TryFrom$LT$$RF$$u5b$T$u5d$$GT$$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$8try_from17h51944f39b64c49c3E"(ptr nofree readnone align 1 captures(ret: address, provenance) %0, i64 %1) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %1, 8
  %. = select i1 %i.a, ptr %0, ptr null
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 1 ptr @"_ZN4core5array118_$LT$impl$u20$core..convert..TryFrom$LT$$RF$mut$u20$$u5b$T$u5d$$GT$$u20$for$u20$$RF$mut$u20$$u5b$T$u3b$$u20$N$u5d$$GT$8try_from17h11e7ea2b713194acE"(ptr nofree readnone align 1 captures(ret: address, provenance) %0, i64 %1) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %1, 36
  %. = select i1 %i.a, ptr %0, ptr null
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 1 ptr @"_ZN4core5array118_$LT$impl$u20$core..convert..TryFrom$LT$$RF$mut$u20$$u5b$T$u5d$$GT$$u20$for$u20$$RF$mut$u20$$u5b$T$u3b$$u20$N$u5d$$GT$8try_from17hd0d5b63d88cb696dE"(ptr nofree readnone align 1 captures(ret: address, provenance) %0, i64 %1) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %1, 32
  %. = select i1 %i.a, ptr %0, ptr null
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 1 ptr @"_ZN4core5array118_$LT$impl$u20$core..convert..TryFrom$LT$$RF$mut$u20$$u5b$T$u5d$$GT$$u20$for$u20$$RF$mut$u20$$u5b$T$u3b$$u20$N$u5d$$GT$8try_from17hfd54b89a5af82a97E"(ptr nofree readnone align 1 captures(ret: address, provenance) %0, i64 %1) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %1, 38
  %. = select i1 %i.a, ptr %0, ptr null
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i8 -1, 2) i8 @"_ZN4core5array74_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$11partial_cmp17h8e5b60bd5d28f6a5E"(ptr nofree readonly align 1 captures(none) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #3 {
loadbb:
  %i.a = load i64, ptr %0, align 1
  %i.b = load i64, ptr %1, align 1
  %i.c = tail call i64 @llvm.bswap.i64(i64 %i.a)  ; 2 uses
  %i.d = tail call i64 @llvm.bswap.i64(i64 %i.b)  ; 2 uses
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %loadbb3, label %res_block

res_block:                                        ; preds = %loadbb3, %loadbb
  %phi.src1 = phi i64 [ %i.c, %loadbb ], [ %i.l, %loadbb3 ]
  %phi.src2 = phi i64 [ %i.d, %loadbb ], [ %i.m, %loadbb3 ]
  %i.f = icmp ult i64 %phi.src1, %phi.src2
  %i.g = select i1 %i.f, i32 -1, i32 1
  br label %endblock

loadbb3:                                          ; preds = %loadbb
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.h, align 1
  %i.k = load i64, ptr %i.i, align 1
  %i.l = tail call i64 @llvm.bswap.i64(i64 %i.j)  ; 2 uses
  %i.m = tail call i64 @llvm.bswap.i64(i64 %i.k)  ; 2 uses
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb3
  %phi.res = phi i32 [ 0, %loadbb3 ], [ %i.g, %res_block ]
  %i.o = tail call i8 @llvm.scmp.i8.i32(i32 %phi.res, i32 0)
  ret i8 %i.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17hbc4204d4645e0f14E"(ptr align 1 %0, i64 %1, i64 %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp uge i64 %2, %1
  %i.b = icmp ult i64 %2, 17
  %or.cond.i.i = and i1 %i.a, %i.b
  br i1 %or.cond.i.i, label %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h0fa5687b6d27c690E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 %1, i64 %2, i64 16, ptr align 8 %3) #25
  unreachable

"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h0fa5687b6d27c690E.exit": ; preds = %bb.a
  %i.c = sub nuw i64 %2, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.c, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$U$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$2eq17h5a6e802b112b88c4E"(ptr nofree readonly align 1 captures(none) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i128, ptr %0, align 1
  %i.b = load i128, ptr %1, align 1
  %i.c = icmp eq i128 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i128 @"_ZN4core6option15Option$LT$T$GT$3map17ha4a9d62bb562fb3aE"(i128 returned %0) unnamed_addr #7 {
bb.a:
  ret i128 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN4core6option15Option$LT$T$GT$5ok_or17hbec4b095224fb3fdE"(ptr nofree writeonly sret([32 x i8]) align 16 captures(none) initializes((0, 4), (16, 32)) %0, i128 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i128 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %1, ptr %i.a, align 16
  store i32 9, ptr %0, align 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$3map17h0b375a56394789f7E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 17)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8
  %.not = icmp eq i8 %i.b, 5
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$3map17h3e4d6b9dd790d00fE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 17)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8
  %.not = icmp eq i8 %i.b, 5
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$3map17h56fe7456cdf6937aE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 17)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8
  %.not = icmp eq i8 %i.b, 5
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$3map17h6cb39965d3c58edbE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 17)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8
  %.not = icmp eq i8 %i.b, 5
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$3map17hd92d2b60501e6842E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 17)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8
  %.not = icmp eq i8 %i.b, 5
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i32 } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h5d6fa6a6435e196bE"(ptr nofree readonly align 8 captures(none) %0, ptr align 1 %1, i64 %2, ptr align 8 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load i64, ptr %0, align 8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.e, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.g, ptr %i.h, align 8
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr align 1 %1, i64 %2, ptr nonnull align 1 %i.a, ptr nonnull align 8 @13, ptr align 8 %3) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = insertvalue { i64, i32 } poison, i64 %i.e, 0
  %i.j = insertvalue { i64, i32 } %i.i, i32 %i.g, 1
  ret { i64, i32 } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hb87c6b3012181850E"(i1 zeroext %0, ptr align 1 %1, i64 %2, ptr align 8 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN4uuid7builder7Builder29from_sorted_rfc4122_timestamp17haef5d647f7c12d50E:bb.a
  %i.q = trunc i64 %i.p to i8
  %i.r = trunc i64 %i.a to i8
  %i.s = lshr i64 %1, 20
  %i.t = trunc i64 %i.s to i8
  %i.u = trunc i64 %i.b to i8
  %i.v = lshr i64 %1, 8
  %i.w = trunc i64 %i.v to i8
  %i.x = and i8 %i.w, 15
  %i.y = or disjoint i8 %i.x, 96
  %i.z = trunc i64 %1 to i8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 7
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aa = load <4 x i8>, ptr %3, align 1
  store i8 %i.m, ptr %0, align 1
  store i8 %i.o, ptr %.sroa.2.0..sroa_idx.i, align 1
  store i8 %i.q, ptr %.sroa.3.0..sroa_idx.i, align 1
  store i8 %i.r, ptr %.sroa.4.0..sroa_idx.i, align 1
  store i8 %i.t, ptr %.sroa.5.0..sroa_idx.i, align 1
  store i8 %i.u, ptr %.sroa.6.0..sroa_idx.i, align 1
  store i8 %i.y, ptr %.sroa.7.0..sroa_idx.i, align 1
  store i8 %i.z, ptr %.sroa.8.0..sroa_idx.i, align 1
  store i8 %i.f, ptr %.sroa.9.0..sroa_idx.i, align 1
  store i8 %i.g, ptr %.sroa.10.0..sroa_idx.i, align 1
  store <4 x i8> %i.aa, ptr %.sroa.11.0..sroa_idx.i, align 1
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.i, ptr %.sroa.15.0..sroa_idx.i, align 1
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.k, ptr %.sroa.16.0..sroa_idx.i, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder31from_sorted_gregorian_timestamp17hcd889ce210dcb8acE(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, i64 %1, i16 %2, ptr nofree readonly align 1 captures(none) %3) unnamed_addr #9 {
bb.a:
  %i.a = lshr i64 %1, 28
  %i.b = lshr i64 %1, 12
  %i.c = lshr i16 %2, 8
  %i.d = trunc nuw i16 %i.c to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128
  %i.g = trunc i16 %2 to i8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = load i8, ptr %i.h, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.k = load i8, ptr %i.j, align 1
  %i.l = lshr i64 %1, 52
  %i.m = trunc i64 %i.l to i8
  %i.n = lshr i64 %1, 44
  %i.o = trunc i64 %i.n to i8
  %i.p = lshr i64 %1, 36
  %i.q = trunc i64 %i.p to i8
  %i.r = trunc i64 %i.a to i8
  %i.s = lshr i64 %1, 20
  %i.t = trunc i64 %i.s to i8
  %i.u = trunc i64 %i.b to i8
  %i.v = lshr i64 %1, 8
  %i.w = trunc i64 %i.v to i8
  %i.x = and i8 %i.w, 15
  %i.y = or disjoint i8 %i.x, 96
  %i.z = trunc i64 %1 to i8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aa = load <4 x i8>, ptr %3, align 1
  store i8 %i.m, ptr %0, align 1
  store i8 %i.o, ptr %.sroa.2.0..sroa_idx, align 1
  store i8 %i.q, ptr %.sroa.3.0..sroa_idx, align 1
  store i8 %i.r, ptr %.sroa.4.0..sroa_idx, align 1
  store i8 %i.t, ptr %.sroa.5.0..sroa_idx, align 1
  store i8 %i.u, ptr %.sroa.6.0..sroa_idx, align 1
  store i8 %i.y, ptr %.sroa.7.0..sroa_idx, align 1
  store i8 %i.z, ptr %.sroa.8.0..sroa_idx, align 1
  store i8 %i.f, ptr %.sroa.9.0..sroa_idx, align 1
  store i8 %i.g, ptr %.sroa.10.0..sroa_idx, align 1
  store <4 x i8> %i.aa, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.i, ptr %.sroa.15.0..sroa_idx, align 1
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.k, ptr %.sroa.16.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN4uuid7builder7Builder3nil17h1e6219db12bce6a1E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 1 ptr @_ZN4uuid7builder7Builder7as_uuid17hea75551ab8d23e00E(ptr nofree readnone returned align 1 captures(ret: address, provenance) %0) unnamed_addr #8 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN4uuid7builder7Builder9from_u12817hb71d52e68d0256b6E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, i128 %1) unnamed_addr #11 {
bb.a:
  %i.a = tail call i128 @llvm.bswap.i128(i128 %1)
  store i128 %i.a, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder9into_uuid17h6e67a56caa8a7cd6E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define range(i128 1, 0) i128 @_ZN4uuid7non_nil10NonNilUuid13new_unchecked17h1ec7a8febaa8fbcaE(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #12 {
bb.a:
  %.sroa.0.0.copyload.i = load i128, ptr %0, align 1 ; 2 uses
  %.not.i = icmp eq i128 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i, label %bb.b, label %"_ZN4core3num7nonzero16NonZero$LT$T$GT$13new_unchecked17hd498d392179aa3afE.exit"

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3num7nonzero16NonZero$LT$T$GT$13new_unchecked18precondition_check17he570e3b70abab15fE"(ptr nonnull align 8 @49) #27
  unreachable

"_ZN4core3num7nonzero16NonZero$LT$T$GT$13new_unchecked17hd498d392179aa3afE.exit": ; preds = %bb.a
  %i.a = tail call i128 @llvm.bswap.i128(i128 %.sroa.0.0.copyload.i)
  ret i128 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i128 @_ZN4uuid7non_nil10NonNilUuid3new17h3e185f155f9c63bcE(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #10 {
bb.a:
  %.sroa.0.0.copyload.i = load i128, ptr %0, align 1
  %i.a = tail call i128 @llvm.bswap.i128(i128 %.sroa.0.0.copyload.i)
  ret i128 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @"_ZN4uuid7non_nil93_$LT$impl$u20$core..convert..From$LT$uuid..non_nil..NonNilUuid$GT$$u20$for$u20$uuid..Uuid$GT$4from17hb3d616139e0e9c64E"(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, i128 %1) unnamed_addr #11 {
bb.a:
  %i.a = tail call i128 @llvm.bswap.i128(i128 %1)
  store i128 %i.a, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @"_ZN4uuid7non_nil94_$LT$impl$u20$core..cmp..PartialEq$LT$uuid..non_nil..NonNilUuid$GT$$u20$for$u20$uuid..Uuid$GT$2eq17he7f09f21a4076779E"(ptr nofree readonly align 1 captures(none) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #10 {
bb.a:
  %i.a = load i128, ptr %1, align 16
  %i.b = tail call i128 @llvm.bswap.i128(i128 %i.a)
  %.val = load i128, ptr %0, align 1
  %i.c = icmp eq i128 %.val, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i8 -1, 2) i8 @"_ZN4uuid7non_nil95_$LT$impl$u20$core..cmp..PartialOrd$LT$uuid..non_nil..NonNilUuid$GT$$u20$for$u20$uuid..Uuid$GT$11partial_cmp17hf950dac662c8c4a2E"(ptr nofree readonly align 1 captures(none) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #10 {
loadbb:
  %i.a = alloca [16 x i8], align 16               ; 3 uses
  %i.b = load i128, ptr %1, align 16
  %i.c = tail call i128 @llvm.bswap.i128(i128 %i.b)
  store i128 %i.c, ptr %i.a, align 16, !alias.scope !15
  %i.d = load i64, ptr %0, align 1
  %i.e = load i64, ptr %i.a, align 16
  %i.f = tail call i64 @llvm.bswap.i64(i64 %i.d)  ; 2 uses
  %i.g = tail call i64 @llvm.bswap.i64(i64 %i.e)  ; 2 uses
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %loadbb1, label %res_block

res_block:                                        ; preds = %loadbb1, %loadbb
  %phi.src1 = phi i64 [ %i.f, %loadbb ], [ %i.o, %loadbb1 ]
  %phi.src2 = phi i64 [ %i.g, %loadbb ], [ %i.p, %loadbb1 ]
  %i.i = icmp ult i64 %phi.src1, %phi.src2
  %i.j = select i1 %i.i, i32 -1, i32 1
  br label %endblock

loadbb1:                                          ; preds = %loadbb
  %i.k = getelementptr i8, ptr %0, i64 8
  %i.l = getelementptr i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.k, align 1
  %i.n = load i64, ptr %i.l, align 8
  %i.o = tail call i64 @llvm.bswap.i64(i64 %i.m)  ; 2 uses
  %i.p = tail call i64 @llvm.bswap.i64(i64 %i.n)  ; 2 uses
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb1
  %phi.res = phi i32 [ 0, %loadbb1 ], [ %i.j, %res_block ]
  %i.r = tail call range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %phi.res, i32 0)
  ret i8 %i.r
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4uuid93_$LT$impl$u20$core..convert..From$LT$uuid..Uuid$GT$$u20$for$u20$alloc..vec..Vec$LT$u8$GT$$GT$4from17h24dd02b28ea04df2E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h537773684db19152E"(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 16, i1 zeroext false, i64 1, i64 1)
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17hd348eb437a0117abE.exit"

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 %i.e, i64 %i.g, ptr nonnull align 8 @84) #25
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17hd348eb437a0117abE.exit": ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.h, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 16, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @"_ZN4uuid9timestamp105_$LT$impl$u20$core..convert..From$LT$uuid..timestamp..Timestamp$GT$$u20$for$u20$std..time..SystemTime$GT$4from17h03e1ddb189d5a949E"(ptr nofree readonly align 16 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 16             ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp ult i32 %i.d, 1000000000
  br i1 %i.e, label %_ZN4core4time8Duration3new17h87c832a0ae28fde9E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = udiv i32 %i.d, 1000000000
  %i.g = urem i32 %i.d, 1000000000
  %i.h = zext nneg i32 %i.f to i64
  %i.i = add i64 %i.b, %i.h                       ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.b
  br i1 %i.j, label %bb.c, label %_ZN4core4time8Duration3new17h87c832a0ae28fde9E.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr nonnull align 1 @10, i64 25, ptr nonnull align 8 @12) #25
  unreachable

_ZN4core4time8Duration3new17h87c832a0ae28fde9E.exit: ; preds = %bb.b, %bb.a
  %.sroa.3.0.i = phi i32 [ %i.d, %bb.a ], [ %i.g, %bb.b ]
  %.sroa.0.0.i = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.b ]
  %i.k = tail call { i64, i32 } @"_ZN91_$LT$std..time..SystemTime$u20$as$u20$core..ops..arith..Add$LT$core..time..Duration$GT$$GT$3add17h2da34e10fae85c2bE"(i64 0, i32 0, i64 %.sroa.0.0.i, i32 %.sroa.3.0.i)
  ret { i64, i32 } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i64, i16 } @_ZN4uuid9timestamp26decode_gregorian_timestamp17he744b4d744ed507aE(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 15
  %i.d = zext nneg i8 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 48
  %i.j = or disjoint i64 %i.e, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 40
  %i.o = or disjoint i64 %i.j, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 32
  %i.t = or disjoint i64 %i.o, %i.s
  %i.u = load i8, ptr %0, align 1
  %i.v = zext i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 24
  %i.x = or disjoint i64 %i.t, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 16
  %i.ac = or disjoint i64 %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 8
  %i.ah = or disjoint i64 %i.ac, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i64
  %i.al = or i64 %i.ah, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = and i8 %i.an, 63
  %i.ap = zext nneg i8 %i.ao to i16
  %i.aq = shl nuw nsw i16 %i.ap, 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i16
  %i.au = or disjoint i16 %i.aq, %i.at
  %i.av = insertvalue { i64, i16 } poison, i64 %i.al, 0
  %i.aw = insertvalue { i64, i16 } %i.av, i16 %i.au, 1
  ret { i64, i16 } %i.aw
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid9timestamp26encode_gregorian_timestamp17h480f277356366f07E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, i64 %1, i16 %2, ptr nofree readonly align 1 captures(none) %3) unnamed_addr #9 {
bb.a:
  %i.a = lshr i64 %1, 32
  %i.b = lshr i64 %1, 48
  %i.c = lshr i16 %2, 8
  %i.d = trunc nuw i16 %i.c to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128
  %i.g = trunc i16 %2 to i8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = load i8, ptr %i.h, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.k = load i8, ptr %i.j, align 1
  %i.l = lshr i64 %1, 24
  %i.m = trunc i64 %i.l to i8
  %i.n = lshr i64 %1, 16
  %i.o = trunc i64 %i.n to i8
  %i.p = lshr i64 %1, 8
  %i.q = trunc i64 %i.p to i8
  %i.r = trunc i64 %1 to i8
  %i.s = lshr i64 %1, 40
  %i.t = trunc i64 %i.s to i8
  %i.u = trunc i64 %i.a to i8
  %i.v = lshr i64 %1, 56
  %i.w = trunc nuw i64 %i.v to i8
  %i.x = and i8 %i.w, 15
  %i.y = or disjoint i8 %i.x, 16
  %i.z = trunc i64 %i.b to i8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 7
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aa = load <4 x i8>, ptr %3, align 1
  store i8 %i.m, ptr %0, align 1
  store i8 %i.o, ptr %.sroa.2.0..sroa_idx.i, align 1
  store i8 %i.q, ptr %.sroa.3.0..sroa_idx.i, align 1
  store i8 %i.r, ptr %.sroa.4.0..sroa_idx.i, align 1
  store i8 %i.t, ptr %.sroa.5.0..sroa_idx.i, align 1
  store i8 %i.u, ptr %.sroa.6.0..sroa_idx.i, align 1
  store i8 %i.y, ptr %.sroa.7.0..sroa_idx.i, align 1
  store i8 %i.z, ptr %.sroa.8.0..sroa_idx.i, align 1
  store i8 %i.f, ptr %.sroa.9.0..sroa_idx.i, align 1
  store i8 %i.g, ptr %.sroa.10.0..sroa_idx.i, align 1
  store <4 x i8> %i.aa, ptr %.sroa.11.0..sroa_idx.i, align 1
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.i, ptr %.sroa.15.0..sroa_idx.i, align 1
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.k, ptr %.sroa.16.0..sroa_idx.i, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 281474976710656) i64 @_ZN4uuid9timestamp28decode_unix_timestamp_millis17h22deb0cdfb3c30cdE(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = zext i8 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = load i32, ptr %i.h, align 1
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)
  %i.k = zext i32 %i.j to i64
  %op.rdx = or disjoint i64 %i.g, %i.k
  %op.rdx1 = or disjoint i64 %op.rdx, %i.c
  ret i64 %op.rdx1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid9timestamp28encode_unix_timestamp_millis17h96bdc9d2b4aad7bbE(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, i64 %1, ptr nofree readonly align 1 captures(none) %2) unnamed_addr #9 {
bb.a:
  %i.a = lshr i64 %1, 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_1
begin_hunk_2_@"_ZN84_$LT$uuid..fmt..Braced$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$10from_slice17he69d861d5ec12549E":bb.a

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 9, %bb.c ], [ 1, %bb.b ]
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN84_$LT$uuid..fmt..Braced$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$8from_str17h68b0f2e9904cc2a0E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 20)) %0, ptr align 1 %1, i64 %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.d = icmp eq i64 %2, 38
  br i1 %i.d, label %bb.b, label %_ZN4uuid6parser12parse_braced17h8eee123177b88602E.exit.thread.i.i

_ZN4uuid6parser12parse_braced17h8eee123177b88602E.exit.thread.i.i: ; preds = %bb.c, %bb.b, %bb.a
  store ptr %1, ptr %i.c, align 8, !alias.scope !24
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %2, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8, !alias.scope !24
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1, !noalias !24
  %i.f = icmp eq i8 %i.e, 123
  br i1 %i.f, label %bb.c, label %_ZN4uuid6parser12parse_braced17h8eee123177b88602E.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.h = load i8, ptr %i.g, align 1, !noalias !24
  %i.i = icmp eq i8 %i.h, 125
  br i1 %i.i, label %_ZN4uuid6parser12parse_braced17h8eee123177b88602E.exit.i.i, label %_ZN4uuid6parser12parse_braced17h8eee123177b88602E.exit.thread.i.i

_ZN4uuid6parser12parse_braced17h8eee123177b88602E.exit.i.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  call fastcc void @_ZN4uuid6parser16parse_hyphenated17h7a13680d9f9875aeE(ptr noalias nonnull align 8 %i.c, ptr nonnull align 1 %i.j, i64 36)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq i8 %.pre.i.i, 5
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4uuid6parser12parse_braced17h8eee123177b88602E.exit.i.i, %_ZN4uuid6parser12parse_braced17h8eee123177b88602E.exit.thread.i.i
  %i.k = phi i8 [ 3, %_ZN4uuid6parser12parse_braced17h8eee123177b88602E.exit.thread.i.i ], [ %.pre.i.i, %_ZN4uuid6parser12parse_braced17h8eee123177b88602E.exit.i.i ]
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx4.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i.i, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %.sroa.4.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.k, ptr %.sroa.4.0..sroa_idx2.i.i, align 8
  call fastcc void @_ZN4uuid5error11InvalidUuid8into_err17h2662b006ae31b65fE(ptr noalias nonnull align 8 %i.b, ptr align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h9a848f68ffe351aeE.exit"

bb.e:                                             ; preds = %_ZN4uuid6parser12parse_braced17h8eee123177b88602E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  store i32 9, ptr %0, align 8
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h9a848f68ffe351aeE.exit"

"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h9a848f68ffe351aeE.exit": ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN84_$LT$uuid..fmt..Simple$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$10from_bytes17h1e4fd6cf58f5f368E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 20)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  store i32 9, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN84_$LT$uuid..fmt..Simple$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$10from_slice17h008c9147c1d6ed64E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 4), (8, 16)) %0, ptr align 1 %1, i64 %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp eq i64 %2, 16
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.319.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h349328e3014a3616E"(ptr nonnull align 1 %i.a, i64 16, ptr align 1 %1, i64 16, ptr nonnull align 8 @46)
  %.sroa.3.4.copyload = load i32, ptr %i.a, align 4
  %.sroa.68.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.68.4.copyload = load i64, ptr %.sroa.68.4..sroa_idx, align 4
  %.sroa.7.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.7.sroa.0.0.copyload = load i32, ptr %.sroa.7.4..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.3.4.copyload, ptr %i.c, align 4
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.68.4.copyload, ptr %.sroa.228.0..sroa_idx, align 8
  %.sroa.329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.7.sroa.0.0.copyload, ptr %.sroa.329.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 9, %bb.c ], [ 1, %bb.b ]
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN84_$LT$uuid..fmt..Simple$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$8from_str17hfc115617a50095e7E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 20)) %0, ptr align 1 %1, i64 %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_ZN4uuid6parser12parse_simple17h09c56f65bde52600E(ptr noalias nonnull align 8 %i.c, ptr align 1 %1, i64 %2, i1 zeroext false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 8               ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.e, 5
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx4.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i.i, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %.sroa.4.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.e, ptr %.sroa.4.0..sroa_idx2.i.i, align 8
  call fastcc void @_ZN4uuid5error11InvalidUuid8into_err17h2662b006ae31b65fE(ptr noalias nonnull align 8 %i.b, ptr align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h17d4b087afc5d160E.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  store i32 9, ptr %0, align 8
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h17d4b087afc5d160E.exit"

"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h17d4b087afc5d160E.exit": ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @"_ZN84_$LT$uuid..non_nil..NonNilUuid$u20$as$u20$core..cmp..PartialEq$LT$uuid..Uuid$GT$$GT$2eq17h90f278fcec7fe397E"(ptr nofree readonly align 16 captures(none) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #10 {
bb.a:
  %i.a = load i128, ptr %0, align 16
  %i.b = tail call i128 @llvm.bswap.i128(i128 %i.a)
  %.val1 = load i128, ptr %1, align 1
  %i.c = icmp eq i128 %i.b, %.val1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i8 -1, 2) i8 @"_ZN85_$LT$uuid..non_nil..NonNilUuid$u20$as$u20$core..cmp..PartialOrd$LT$uuid..Uuid$GT$$GT$11partial_cmp17h807f4920d76b1601E"(ptr nofree readonly align 16 captures(none) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #10 {
loadbb:
  %i.a = alloca [16 x i8], align 16               ; 3 uses
  %i.b = load i128, ptr %0, align 16
  %i.c = tail call i128 @llvm.bswap.i128(i128 %i.b)
  store i128 %i.c, ptr %i.a, align 16, !alias.scope !27
  %i.d = load i64, ptr %i.a, align 16
  %i.e = load i64, ptr %1, align 1
  %i.f = tail call i64 @llvm.bswap.i64(i64 %i.d)  ; 2 uses
  %i.g = tail call i64 @llvm.bswap.i64(i64 %i.e)  ; 2 uses
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %loadbb1, label %res_block

res_block:                                        ; preds = %loadbb1, %loadbb
  %phi.src1 = phi i64 [ %i.f, %loadbb ], [ %i.o, %loadbb1 ]
  %phi.src2 = phi i64 [ %i.g, %loadbb ], [ %i.p, %loadbb1 ]
  %i.i = icmp ult i64 %phi.src1, %phi.src2
  %i.j = select i1 %i.i, i32 -1, i32 1
  br label %endblock

loadbb1:                                          ; preds = %loadbb
  %i.k = getelementptr i8, ptr %i.a, i64 8
  %i.l = getelementptr i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.k, align 8
  %i.n = load i64, ptr %i.l, align 1
  %i.o = tail call i64 @llvm.bswap.i64(i64 %i.m)  ; 2 uses
  %i.p = tail call i64 @llvm.bswap.i64(i64 %i.n)  ; 2 uses
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb1
  %phi.res = phi i32 [ 0, %loadbb1 ], [ %i.j, %res_block ]
  %i.r = tail call range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %phi.res, i32 0)
  ret i8 %i.r
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN86_$LT$uuid..Uuid$u20$as$u20$core..convert..TryFrom$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$8try_from17hab6d2ecac04808beE"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = icmp eq i64 %i.e, 16
  br i1 %i.f, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h68002b7b6fc23f76E"(ptr nonnull align 8 %1) #24
          to label %common.resume unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  invoke void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h349328e3014a3616E"(ptr nonnull align 1 %i.a, i64 16, ptr align 1 %i.c, i64 16, ptr nonnull align 8 @46)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 1 dereferenceable(16) %i.a, i64 16, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %.sroa.34.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %.sroa.34.0..sroa_idx.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  %.sink.i = phi i32 [ 9, %.noexc ], [ 1, %bb.d ]
  store i32 %.sink.i, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9d31ff021d90655fE"(ptr nonnull align 8 %1)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h68002b7b6fc23f76E.exit" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d336a5866d2c9c3E"(ptr nonnull align 8 %1)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #26
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h68002b7b6fc23f76E.exit": ; preds = %bb.e
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d336a5866d2c9c3E"(ptr nonnull align 8 %1)
  ret void

bb.h:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #26
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN86_$LT$uuid..non_nil..NonNilUuid$u20$as$u20$core..convert..TryFrom$LT$uuid..Uuid$GT$$GT$8try_from17h2d259baaf066983eE"(ptr nofree writeonly sret([32 x i8]) align 16 captures(none) initializes((0, 4)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #9 {
bb.a:
  %.sroa.0.0.copyload.i = load i128, ptr %1, align 1 ; 2 uses
  %.not.i = icmp eq i128 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i, label %"_ZN4core6option15Option$LT$T$GT$5ok_or17hbec4b095224fb3fdE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i128 @llvm.bswap.i128(i128 %.sroa.0.0.copyload.i)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %i.a, ptr %i.b, align 16
  br label %"_ZN4core6option15Option$LT$T$GT$5ok_or17hbec4b095224fb3fdE.exit"

"_ZN4core6option15Option$LT$T$GT$5ok_or17hbec4b095224fb3fdE.exit": ; preds = %bb.a, %bb.b
  %storemerge = phi i32 [ 9, %bb.b ], [ 7, %bb.a ]
  store i32 %storemerge, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i64 @"_ZN86_$LT$uuid..timestamp..context..NoContext$u20$as$u20$uuid..timestamp..ClockSequence$GT$11usable_bits17ha69f1e95a78ee91fE"(ptr nofree readnone align 1 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i16 @"_ZN86_$LT$uuid..timestamp..context..NoContext$u20$as$u20$uuid..timestamp..ClockSequence$GT$17generate_sequence17h1d50b1092ce45aadE"(ptr nofree readnone align 1 captures(none) %0, i64 %1, i32 %2) unnamed_addr #8 {
bb.a:
  ret i16 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h18d8e4f691f1de61E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 1 captures(none) %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h537773684db19152E"(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %2, i1 zeroext false, i64 1, i64 1)
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h987ea01cbcaadfbaE.exit"

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 %i.e, i64 %i.g, ptr nonnull align 8 @84) #25
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h987ea01cbcaadfbaE.exit": ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %1, i64 %2, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN88_$LT$uuid..fmt..Hyphenated$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$10from_bytes17h6de1416bbc3ae542E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 20)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  store i32 9, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN88_$LT$uuid..fmt..Hyphenated$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$10from_slice17hac91e011d572ae3fE"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 4), (8, 16)) %0, ptr align 1 %1, i64 %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp eq i64 %2, 16
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.319.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h349328e3014a3616E"(ptr nonnull align 1 %i.a, i64 16, ptr align 1 %1, i64 16, ptr nonnull align 8 @46)
  %.sroa.3.4.copyload = load i32, ptr %i.a, align 4
  %.sroa.68.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.68.4.copyload = load i64, ptr %.sroa.68.4..sroa_idx, align 4
  %.sroa.7.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.7.sroa.0.0.copyload = load i32, ptr %.sroa.7.4..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.3.4.copyload, ptr %i.c, align 4
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.68.4.copyload, ptr %.sroa.228.0..sroa_idx, align 8
  %.sroa.329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.7.sroa.0.0.copyload, ptr %.sroa.329.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 9, %bb.c ], [ 1, %bb.b ]
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN88_$LT$uuid..fmt..Hyphenated$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$8from_str17h39e2123d36d33015E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 20)) %0, ptr align 1 %1, i64 %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_ZN4uuid6parser16parse_hyphenated17h7a13680d9f9875aeE(ptr noalias nonnull align 8 %i.c, ptr align 1 %1, i64 %2)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 8               ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.e, 5
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx4.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i.i, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %.sroa.4.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.e, ptr %.sroa.4.0..sroa_idx2.i.i, align 8
  call fastcc void @_ZN4uuid5error11InvalidUuid8into_err17h2662b006ae31b65fE(ptr noalias nonnull align 8 %i.b, ptr align 8 %i.a)
end_hunk_2
begin_hunk_3_@"_ZN88_$LT$uuid..fmt..Hyphenated$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$8from_str17h39e2123d36d33015E":bb.a

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h7d335ce1a8513054E"(ptr nofree align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %0, align 8                ; 3 uses
  %i.c = load i64, ptr %i.a, align 8
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i64 %i.b, 1
  store i64 %i.e, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %i.b, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN98_$LT$uuid..timestamp..Timestamp$u20$as$u20$core..convert..TryFrom$LT$std..time..SystemTime$GT$$GT$8try_from17h4453ea84765c43d5E"(ptr nofree writeonly sret([48 x i8]) align 16 captures(none) initializes((0, 8), (16, 32)) %0, i64 %1, i32 %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store i64 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.c, align 8
  call void @_ZN3std4time10SystemTime14duration_since17h85cfc48171ee6db2E(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b, i64 0, i32 0)
  %i.d = load i64, ptr %i.a, align 8
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb23de9ef405e195cE.exit", label %bb.b

"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb23de9ef405e195cE.exit": ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 8, ptr %i.f, align 8
  %.sroa.318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @85 to i64), ptr %.sroa.318.0..sroa_idx, align 16
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 54, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 0, ptr %i.k, align 16
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.h, ptr %.sroa.222.0..sroa_idx, align 16
  %.sroa.323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.j, ptr %.sroa.323.0..sroa_idx, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 0, ptr %.sroa.424.0..sroa_idx, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb23de9ef405e195cE.exit"
  %storemerge = phi i64 [ 0, %bb.b ], [ 1, %"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb23de9ef405e195cE.exit" ]
  store i64 %storemerge, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$20offset_from_unsigned17h8bd542db65ddcd5bE"(ptr, ptr) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64, i64, i64, ptr align 8) unnamed_addr #14

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hbe5e3233d5ba0df1E"(i64, i64, ptr align 1, i64, ptr align 8) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN57_$LT$core..time..Duration$u20$as$u20$core..fmt..Debug$GT$3fmt17h6dc90c1fafc37461E"(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #17

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #12

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E"(ptr align 4, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr align 1, ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.bswap.i128(i128) #17

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking18panic_nounwind_fmt17h622822847ebd61beE(ptr align 8, i1 zeroext, ptr align 8) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9d31ff021d90655fE"(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d336a5866d2c9c3E"(ptr align 8) unnamed_addr #2

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64, i64, ptr align 8) unnamed_addr #20

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr align 1, i64, i64, i64, ptr align 8) unnamed_addr #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr align 1, i64, ptr align 8) unnamed_addr #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr align 8) unnamed_addr #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr align 1, i64, ptr align 1, ptr align 8, ptr align 8) unnamed_addr #14

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h349328e3014a3616E"(ptr align 1, i64, ptr align 1, i64, ptr align 8) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr sret([24 x i8]) align 8, ptr align 1, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @"_ZN91_$LT$std..time..SystemTime$u20$as$u20$core..ops..arith..Add$LT$core..time..Duration$GT$$GT$3add17h2da34e10fae85c2bE"(i64, i32, i64, i32) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std4time10SystemTime7elapsed17hb54201ce03b980a7E(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr align 8, ptr align 8) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr align 8, ptr align 1, i64) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core3fmt2rt8Argument11new_display17hf281101eab850e54E(ptr sret([16 x i8]) align 8, ptr align 4) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core3fmt2rt8Argument11new_display17h88c9f66bad4ec0aeE(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117hb8e13184f7a475e0E"(ptr sret([48 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core3fmt2rt8Argument11new_display17h3354ce3e83e129c7E(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h61de6076a7a02d5fE"(ptr align 8, i64, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hf4fb6bd6ba18bf21E"(ptr align 8, ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h537773684db19152E"(ptr sret([24 x i8]) align 8, i64, i1 zeroext, i64, i64) unnamed_addr #2

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64, i64, ptr align 8) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr align 8, ptr align 1, i64, ptr align 1, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0a1302bc724a5ce4E"(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { i32, i32 } @_ZN4core3str11validations15next_code_point17h41e07acfe5d3561eE(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std4time10SystemTime14duration_since17h85cfc48171ee6db2E(ptr sret([24 x i8]) align 8, ptr align 8, i64, i32) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #17

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold inlinehint noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { cold }
attributes #25 = { noreturn }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { nounwind }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.91.1 (ed61e7d7e 2025-11-07)"}
!3 = !{ptr @"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h1720e3c1cb5a137cE"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_ZN4uuid6parser12parse_braced17h8eee123177b88602E: argument 0"}
!6 = distinct !{!6, !"_ZN4uuid6parser12parse_braced17h8eee123177b88602E"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN4uuid3fmt13format_simple17h17ae80b5dc609eb1E: argument 0"}
!9 = distinct !{!9, !"_ZN4uuid3fmt13format_simple17h17ae80b5dc609eb1E"}
!10 = !{}
!11 = distinct !{null}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN4core3str21_$LT$impl$u20$str$GT$12char_indices17hed8d4879c4ff10deE: argument 0"}
!14 = distinct !{!14, !"_ZN4core3str21_$LT$impl$u20$str$GT$12char_indices17hed8d4879c4ff10deE"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN4uuid7non_nil10NonNilUuid3get17hf8c47513844e2809E: argument 0"}
!17 = distinct !{!17, !"_ZN4uuid7non_nil10NonNilUuid3get17hf8c47513844e2809E"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZN4uuid6parser9parse_urn17hf83726bb033384cbE: argument 0"}
!20 = distinct !{!20, !"_ZN4uuid6parser9parse_urn17hf83726bb033384cbE"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN4uuid6parser12parse_braced17h8eee123177b88602E: argument 0"}
!23 = distinct !{!23, !"_ZN4uuid6parser12parse_braced17h8eee123177b88602E"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZN4uuid6parser12parse_braced17h8eee123177b88602E: argument 0"}
!26 = distinct !{!26, !"_ZN4uuid6parser12parse_braced17h8eee123177b88602E"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN4uuid7non_nil10NonNilUuid3get17hf8c47513844e2809E: argument 0"}
!29 = distinct !{!29, !"_ZN4uuid7non_nil10NonNilUuid3get17hf8c47513844e2809E"}
end_hunk_3
