Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/bindgen-65c77e4a6229ce89.bindgen.295e8af88b7da52f-cgu.11?download=true
inline.NumInlined: 237
inline.NumDeleted: 55
begin_hunk_0_@"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hd1c150ef96233f89E":bb.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddbc358e547a5621E"(ptr align 1 %0, i64 %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17h2cdced3627f7a2f2E"(ptr align 1 %0, ptr align 8 %2)
  %i.b = tail call i64 @"_ZN56_$LT$usize$u20$as$u20$core..iter..traits..accum..Sum$GT$3sum28_$u7b$$u7b$closure$u7d$$u7d$17h6db673268d24454bE"(ptr align 1 %0, i64 %1, i64 %i.a)
  ret i64 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17he0dfc87615ff0067E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call ptr @"_ZN7bindgen5clang15TranslationUnit5parse28_$u7b$$u7b$closure$u7d$$u7d$17h02345c11d4a44d86E"(ptr nonnull align 1 %i.a, ptr align 8 %1)
  tail call void @"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hcd797c1dca06b5d4E"(ptr align 8 %0, ptr %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17heef38e661e28c98aE"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call { ptr, i64 } @"_ZN7bindgen5clang15TranslationUnit5parse28_$u7b$$u7b$closure$u7d$$u7d$17hf7926f8b88f13203E"(ptr nonnull align 1 %i.a, ptr align 8 %1) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  tail call void @"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17ha6a4e09478161383E"(ptr align 8 %0, ptr align 1 %i.c, i64 %i.d)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hfa772564260c5066E"(ptr align 1 %0, i64 %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @"_ZN61_$LT$$u5b$V$u5d$$u20$as$u20$alloc..slice..Concat$LT$T$GT$$GT$6concat28_$u7b$$u7b$closure$u7d$$u7d$17h0b53f387d7269f6dE"(ptr align 1 %0, ptr align 8 %2)
  %i.b = tail call i64 @"_ZN56_$LT$usize$u20$as$u20$core..iter..traits..accum..Sum$GT$3sum28_$u7b$$u7b$closure$u7d$$u7d$17h61cd662cec372b17E"(ptr align 1 %0, i64 %1, i64 %i.a)
  ret i64 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hfe71d4a26f7bf317E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN4core3ops8function5FnMut8call_mut17hdff3da7e2deebfd2E(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 1 %i.c, ptr align 8 %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7a3fdae71ddb9a0aE"(ptr align 8 %0, ptr nonnull align 8 %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hff1ec0c72889badeE"(ptr align 8 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call i64 @"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend28_$u7b$$u7b$closure$u7d$$u7d$17h423b2cf8b70f5080E"(ptr nonnull align 1 %i.a, i64 %1)
  tail call void @"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc5040fee2a1902d2E"(ptr align 8 %0, i64 %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define i64 @_ZN4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4size17hea0a7facf283c1b4E(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc2475d7bd27be855E"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %0)
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 8 ptr @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h2ce7a0dc64b3cdd4E"(ptr nofree readnone align 8 captures(ret: address, provenance) %0, i64 %1, i64 %2) unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i64 %2, %1
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2
  %.sroa.0.0.i = select i1 %i.a, ptr %i.b, ptr null
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 8 ptr @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17he30050a04a000807E"(ptr nofree readnone align 8 captures(ret: address, provenance) %0, i64 %1, i64 %2) unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i64 %2, %1
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2
  %.sroa.0.0.i = select i1 %i.a, ptr %i.b, ptr null
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hf47b30cd02e2d2feE"(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h0f6a31e24c0e57ddE"(ptr align 8 %0, i64 %1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8iter_mut17hbad01664a87fa330E"(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN4core5slice4iter16IterMut$LT$T$GT$3new17h19c31f920d01375aE"(ptr align 8 %0, i64 %1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @"_ZN4core5slice4iter87_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$$u5b$T$u5d$$GT$9into_iter17h63877bf2bd6de06bE"(ptr align 8 %0, i64 %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @"_ZN4core5slice4iter87_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$$u5b$T$u5d$$GT$9into_iter17hfceac58e65c085b9E"(ptr align 8 %0, i64 %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_ZN4core5slice5index5range17hda9694a158981700E(i64 %0, i64 %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %0, ptr %i.a, align 8
  %i.b = call { i64, ptr } @"_ZN95_$LT$core..ops..range..RangeFrom$LT$T$GT$$u20$as$u20$core..ops..range..RangeBounds$LT$T$GT$$GT$9end_bound17h932446db2707bc8dE"(ptr nonnull align 8 %i.a) ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1        ; 2 uses
  switch i64 %i.c, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.g, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %.not = icmp ult i64 %i.e, %1
  br i1 %.not, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8              ; 3 uses
  %i.g = icmp ugt i64 %i.f, %1
  br i1 %i.g, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.h = add nuw i64 %i.e, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 0, i64 %i.e, i64 %1, ptr align 8 %2) #28
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.a, %bb.e
  %.sroa.0.0 = phi i64 [ %i.h, %bb.e ], [ %1, %bb.a ], [ %i.f, %bb.d ] ; 5 uses
  %i.i = call { i64, ptr } @"_ZN95_$LT$core..ops..range..RangeFrom$LT$T$GT$$u20$as$u20$core..ops..range..RangeBounds$LT$T$GT$$GT$11start_bound17h4b571405832ae7fbE"(ptr nonnull align 8 %i.a) ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 2 uses
  switch i64 %i.j, label %bb.b [
    i64 0, label %bb.i
    i64 1, label %bb.j
    i64 2, label %bb.l
  ]

bb.h:                                             ; preds = %bb.d
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 0, i64 %i.f, i64 %1, ptr align 8 %2) #28
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ugt i64 %i.l, %.sroa.0.0
  br i1 %i.m, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.n = load i64, ptr %i.k, align 8              ; 3 uses
  %.not23 = icmp ult i64 %i.n, %.sroa.0.0
  br i1 %.not23, label %bb.m, label %bb.n

bb.k:                                             ; preds = %bb.i
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 %i.l, i64 %.sroa.0.0, i64 %1, ptr align 8 %2) #28
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.g, %bb.m
  %.sroa.08.0 = phi i64 [ 0, %bb.g ], [ %i.q, %bb.m ], [ %i.l, %bb.i ]
  %i.o = insertvalue { i64, i64 } poison, i64 %.sroa.08.0, 0
  %i.p = insertvalue { i64, i64 } %i.o, i64 %.sroa.0.0, 1
  ret { i64, i64 } %i.p

bb.m:                                             ; preds = %bb.j
  %i.q = add nuw i64 %i.n, 1
  br label %bb.l

bb.n:                                             ; preds = %bb.j
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 %i.n, i64 %.sroa.0.0, i64 %1, ptr align 8 %2) #28
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN4core6escape10hex_escape17h42422a5ed58c311eE(ptr nofree writeonly sret([12 x i8]) align 1 captures(none) initializes((0, 12)) %0, i8 %1) unnamed_addr #8 {
bb.a:
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.54.0..sroa_idx, i8 0, i64 6, i1 false)
  %i.a = and i8 %1, 15
  %i.b = zext nneg i8 %i.a to i64
  %i.c = lshr i8 %1, 4
  %i.d = zext nneg i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @15, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1
  %i.g = getelementptr inbounds nuw i8, ptr @15, i64 %i.b
  %i.h = load i8, ptr %i.g, align 1
  store i8 92, ptr %0, align 1
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 120, ptr %.sroa.2.0..sroa_idx, align 1
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.f, ptr %.sroa.32.0..sroa_idx, align 1
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.h, ptr %.sroa.43.0..sroa_idx, align 1
  %.sroa.54.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 0, ptr %.sroa.54.0..sroa_idx.a, align 1
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 4, ptr %2, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN4core6escape12escape_ascii17h84fff9605808ea97E(ptr nofree writeonly sret([12 x i8]) align 1 captures(none) initializes((0, 12)) %0, i8 %1) unnamed_addr #9 {
bb.a:
  %i.a = zext i8 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @16, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %i.d = and i8 %i.c, 127                         ; 3 uses
  %i.e = icmp sgt i8 %i.c, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.26.0..sroa_idx, i8 0, i64 9, i1 false)
  store i8 %i.d, ptr %0, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i8 %i.d, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.e, %bb.f, %bb.b
  %.sink = phi i8 [ 4, %bb.e ], [ 2, %bb.f ], [ 1, %bb.b ]
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %.sink, ptr %3, align 1
  ret void

bb.e:                                             ; preds = %bb.c
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.54.0..sroa_idx.i, i8 0, i64 6, i1 false)
  %i.g = and i8 %1, 15
  %i.h = zext nneg i8 %i.g to i64
  %i.i = lshr i8 %1, 4
  %i.j = zext nneg i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @15, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1
  %i.m = getelementptr inbounds nuw i8, ptr @15, i64 %i.h
  %i.n = load i8, ptr %i.m, align 1
  store i8 92, ptr %0, align 1
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 120, ptr %.sroa.2.0..sroa_idx.i, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.l, ptr %.sroa.32.0..sroa_idx.i, align 1
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.n, ptr %.sroa.43.0..sroa_idx.i, align 1
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  store i8 92, ptr %0, align 1
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.d, ptr %.sroa.2.0..sroa_idx, align 1
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i64 0, ptr %.sroa.32.0..sroa_idx, align 1
  br label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @"_ZN4core6escape35EscapeIterInner$LT$_$C$ESCAPING$GT$9backslash17h21868c26adfd3689E"(ptr nofree writeonly sret([16 x i8]) align 4 captures(none) initializes((0, 10), (12, 14)) %0, i8 %1) unnamed_addr #9 {
bb.a:
  store i8 92, ptr %0, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %1, ptr %.sroa.24.0..sroa_idx, align 1
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i64 0, ptr %.sroa.35.0..sroa_idx, align 2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 2, ptr %i.b, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define { i1, i8 } @"_ZN4core6escape54EscapeIterInner$LT$_$C$core..escape..AlwaysEscaped$GT$4next17hb90ec86743e29a6bE"(ptr nofree align 4 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp ult i8 %i.b, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i8 %i.b, 1
  store i8 %i.f, ptr %i.a, align 4
  %i.g = zext i8 %i.b to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i8 [ %i.i, %bb.b ], [ undef, %bb.a ]
  %i.j = insertvalue { i1, i8 } poison, i1 %i.e, 0
  %i.k = insertvalue { i1, i8 } %i.j, i8 %.sroa.3.0, 1
  ret { i1, i8 } %i.k
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h85b4a86b64a83b40E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %.val, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.val1, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN55_$LT$bindgen..Formatter$u20$as$u20$core..fmt..Debug$GT$3fmt17hb982e9f027be03b3E"(ptr nofree readonly align 1 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 7, i64 4
  %.1 = select i1 %i.b, ptr @20, ptr @19
  %i.c = tail call zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr align 8 %1, ptr nonnull align 1 %.1, i64 %.)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN56_$LT$bindgen..Bindings$u20$as$u20$core..fmt..Display$GT$3fmt17h7102c8c978640333E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17hb4039314695f25e2E"(ptr nonnull sret([24 x i8]) align 8 %i.b)
  %i.c = invoke ptr @_ZN5alloc5alloc15exchange_malloc17h8637461dce49ab40E(i64 8, i64 8)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha5acf9bcb05d98b3E"(ptr nonnull align 8 %i.b) #26
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8
  %i.e = invoke ptr @_ZN7bindgen8Bindings5write17h3c4b1c1337caedd9E(ptr align 8 %0, ptr nonnull align 1 %i.c, ptr nonnull align 8 @21)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17haf35c91a3dd3a4c6E"(ptr %i.e, ptr nonnull align 1 @22, i64 28, ptr nonnull align 8 @24)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.f = invoke { ptr, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h363ac57645da5fd5E"(ptr nonnull align 8 %i.b)
          to label %bb.f unwind label %bb.b       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 1 %i.g, i64 %i.h)
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  %i.i = invoke { ptr, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h7e581b1008a5ca1dE"(ptr nonnull align 8 %i.a, ptr nonnull align 1 @25, i64 50, ptr nonnull align 8 @26)
          to label %bb.h unwind label %bb.b       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  %i.l = invoke zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr align 8 %1, ptr align 1 %i.j, i64 %i.k)
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.h
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha5acf9bcb05d98b3E"(ptr nonnull align 8 %i.b)
  ret i1 %i.l

bb.j:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #27
  unreachable

bb.k:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN57_$LT$bindgen..Formatter$u20$as$u20$core..fmt..Display$GT$3fmt17h8ad90de8cbd6b1baE"(ptr nofree readonly align 1 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load i8, ptr %0, align 1
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %spec.select = select i1 %i.c, ptr @28, ptr @27
  %spec.select2 = select i1 %i.c, i64 7, i64 4
  store ptr %spec.select, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %spec.select2, ptr %i.d, align 8
  %i.e = call zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h792c408db9af68dcE"(ptr nonnull align 8 %i.a, ptr align 8 %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN59_$LT$bindgen..CodegenConfig$u20$as$u20$core..fmt..Debug$GT$3fmt17h038dbd0e364bf74cE"(ptr align 4 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr align 8 %1, ptr nonnull align 1 @29, i64 13, ptr nonnull align 1 %i.a, ptr nonnull align 8 @30)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_ZN5alloc3ffi5c_str7CString3new17h6f78ac0dbb6e43d0E(ptr sret([32 x i8]) align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #1 {
bb.a:
  tail call void @"_ZN72_$LT$$RF$str$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17h5c79284146c438c1E"(ptr sret([32 x i8]) align 8 %0, ptr align 1 %1, i64 %2)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_ZN5alloc3ffi5c_str7CString8as_bytes17h1b4fee76b5e58e51E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h52cf0456ed0082dcE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 1 %1, i64 %2, ptr align 4 %3, ptr align 1 %4, i64 %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [56 x i8], align 8                ; 3 uses
  %i.g = alloca [12 x i8], align 4                ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 2 uses
  %i.k = alloca [1 x i8], align 1                 ; 2 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  call void @_ZN4core3str7pattern7Pattern15as_utf8_pattern17h57619c023062fd05E(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr align 4 %3)
  %i.m = load i64, ptr %i.l, align 8
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = trunc nuw nsw i32 %i.s to i8
  %.not = icmp ugt i32 %i.s, 127
  br i1 %.not, label %.critedge, label %bb.f
end_hunk_0
begin_hunk_1_@_ZN7bindgen7Builder23dump_preprocessed_input17haf5731197e967b59E:bb.a
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.ck ], [ %i.ah, %bb.b ], [ %.sroa.0.5, %bb.dc ]
  ret ptr %.sroa.0.1

bb.cm:                                            ; preds = %bb.dk, %bb.dj, %bb.di, %bb.da, %bb.cz, %bb.cj, %bb.br, %bb.bl, %bb.bh, %bb.ay, %bb.ah, %bb.z, %bb.t, %.loopexit.split-lp50
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #27
  unreachable

bb.cn:                                            ; preds = %bb.dk, %bb.da, %bb.cj
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn35.pn, %bb.dk ], [ %.pn33, %bb.da ], [ %i.es, %bb.cj ]
  resume { ptr, i32 } %.pn35.pn.pn

bb.co:                                            ; preds = %.invoke
  invoke void @"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17hb96848288cf5d48fE"(ptr nonnull align 4 %i.f)
          to label %bb.cp unwind label %bb.bm

bb.cp:                                            ; preds = %bb.bp, %bb.co
  %.sroa.0.3 = phi ptr [ %i.em, %bb.co ], [ %i.dv, %bb.bp ]
  invoke void @"_ZN4core3ptr46drop_in_place$LT$std..process..ChildStdout$GT$17hda7dd8cb8e952ce3E"(ptr nonnull align 4 %i.g)
          to label %bb.cq unwind label %bb.bi

bb.cq:                                            ; preds = %bb.cp
  invoke void @"_ZN4core3ptr40drop_in_place$LT$std..process..Child$GT$17hfd8e7104c4162c15E"(ptr nonnull align 4 %i.j)
          to label %bb.cr unwind label %.loopexit.split-lp

bb.cr:                                            ; preds = %bb.bf, %bb.cq
  %.sroa.0.4 = phi ptr [ %.sroa.0.3, %bb.cq ], [ %i.dl, %bb.bf ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..process..Command$GT$17hfcfd371024dca1f7E"(ptr nonnull align 8 %i.r)
          to label %bb.cs unwind label %bb.u

bb.cs:                                            ; preds = %bb.x, %bb.cu, %bb.cr
  %.sroa.019.6 = phi i8 [ 0, %bb.cr ], [ 1, %bb.cu ], [ 1, %bb.x ] ; 3 uses
  %.sroa.0.5 = phi ptr [ %.sroa.0.4, %bb.cr ], [ %i.ck, %bb.cu ], [ %i.cb, %bb.x ]
  invoke void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h82e236a746cdd84dE"(ptr nonnull align 8 %i.v)
          to label %bb.cv unwind label %.loopexit.split-lp50.loopexit.split-lp

bb.ct:                                            ; preds = %bb.as
  %i.ew = extractvalue { ptr, i64 } %i.cz, 0
  %i.ex = extractvalue { ptr, i64 } %i.cz, 1
  %i.ey = invoke align 8 ptr @_ZN3std7process7Command3arg17hb1aefbeb91870c52E(ptr nonnull align 8 %i.r, ptr align 1 %i.ew, i64 %i.ex)
          to label %bb.aq unwind label %.loopexit ; 0 uses

bb.cu:                                            ; preds = %bb.ad
  invoke void @"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17hb96848288cf5d48fE"(ptr nonnull align 4 %i.u)
          to label %bb.cs unwind label %bb.u

bb.cv:                                            ; preds = %bb.cs
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h685aa45b87bc79d0E"(ptr nonnull align 8 %i.y)
          to label %bb.cw unwind label %bb.e

bb.cw:                                            ; preds = %bb.cv
  %i.ez = trunc nuw i8 %.sroa.019.6 to i1
  br i1 %i.ez, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cy, %bb.cw
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  invoke void @"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$$GT$17hb45c2bd7e65c3b4eE"(ptr nonnull align 8 %i.fa)
          to label %bb.dc unwind label %bb.db

bb.cy:                                            ; preds = %bb.cw
  invoke void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h82e236a746cdd84dE"(ptr nonnull align 8 %i.ac)
          to label %bb.cx unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.fb = landingpad { ptr, i32 }
          cleanup
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  invoke void @"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$$GT$17hb45c2bd7e65c3b4eE"(ptr nonnull align 8 %i.fc) #26
          to label %bb.da unwind label %bb.cm

bb.da:                                            ; preds = %bb.db, %bb.cz
  %.pn33 = phi { ptr, i32 } [ %i.fe, %bb.db ], [ %i.fb, %bb.cz ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  invoke void @"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$$GT$17hb45c2bd7e65c3b4eE"(ptr nonnull align 8 %i.fd) #26
          to label %bb.cn unwind label %bb.cm

bb.db:                                            ; preds = %bb.cx
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.dc:                                            ; preds = %bb.cx
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  call void @"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$$GT$17hb45c2bd7e65c3b4eE"(ptr nonnull align 8 %i.ff)
  br label %bb.cl

_ZN7bindgen11file_is_cpp17h98ba765c50cfe18aE.exit48: ; preds = %.noexc46
  %i.fg = or i1 %.sroa.01.1, %i.bv
  invoke void @_ZN5alloc6string6String8push_str17hd0b02f08b3f267caE(ptr nonnull align 8 %i.y, ptr nonnull align 1 @172, i64 9, ptr nonnull align 8 @173)
          to label %bb.dd unwind label %.loopexit49

bb.dd:                                            ; preds = %_ZN7bindgen11file_is_cpp17h98ba765c50cfe18aE.exit48
  %i.fh = load ptr, ptr %i.bk, align 8
  %i.fi = load i64, ptr %i.bn, align 8
  invoke void @_ZN5alloc6string6String8push_str17hd0b02f08b3f267caE(ptr nonnull align 8 %i.y, ptr align 1 %i.fh, i64 %i.fi, ptr nonnull align 8 @174)
          to label %bb.de unwind label %.loopexit49

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZN5alloc6string6String8push_str17hd0b02f08b3f267caE(ptr nonnull align 8 %i.y, ptr nonnull align 1 @175, i64 2, ptr nonnull align 8 @176)
          to label %bb.df unwind label %.loopexit49

bb.df:                                            ; preds = %bb.de
  %i.fj = load ptr, ptr %i.bl, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.fl = load i64, ptr %i.fk, align 8
  invoke void @_ZN5alloc6string6String8push_str17hd0b02f08b3f267caE(ptr nonnull align 8 %i.y, ptr align 1 %i.fj, i64 %i.fl, ptr nonnull align 8 @177)
          to label %bb.o unwind label %.loopexit49

_ZN7bindgen11file_is_cpp17h98ba765c50cfe18aE.exit: ; preds = %.noexc43
  %i.fm = or i1 %.sroa.01.0.in, %i.be
  invoke void @_ZN5alloc6string6String8push_str17hd0b02f08b3f267caE(ptr nonnull align 8 %i.y, ptr nonnull align 1 @178, i64 10, ptr nonnull align 8 @179)
          to label %bb.dg unwind label %.loopexit.split-lp50.loopexit

bb.dg:                                            ; preds = %_ZN7bindgen11file_is_cpp17h98ba765c50cfe18aE.exit
  %i.fn = load ptr, ptr %i.au, align 8
  %i.fo = load i64, ptr %i.aw, align 8
  invoke void @_ZN5alloc6string6String8push_str17hd0b02f08b3f267caE(ptr nonnull align 8 %i.y, ptr align 1 %i.fn, i64 %i.fo, ptr nonnull align 8 @180)
          to label %bb.dh unwind label %.loopexit.split-lp50.loopexit

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN5alloc6string6String8push_str17hd0b02f08b3f267caE(ptr nonnull align 8 %i.y, ptr nonnull align 1 @175, i64 2, ptr nonnull align 8 @181)
          to label %bb.j unwind label %.loopexit.split-lp50.loopexit

bb.di:                                            ; preds = %bb.dj, %bb.d
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  invoke void @"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$$GT$17hb45c2bd7e65c3b4eE"(ptr nonnull align 8 %i.fp) #26
          to label %bb.dk unwind label %bb.cm

bb.dj:                                            ; preds = %bb.d
  invoke void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h82e236a746cdd84dE"(ptr nonnull align 8 %i.ac) #26
          to label %bb.di unwind label %bb.cm

bb.dk:                                            ; preds = %bb.di
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  invoke void @"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$$GT$17hb45c2bd7e65c3b4eE"(ptr nonnull align 8 %i.fq) #26
          to label %bb.cn unwind label %bb.cm
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden ptr @"_ZN7bindgen7Builder23dump_preprocessed_input28_$u7b$$u7b$closure$u7d$$u7d$17hfa8085518ffba777E"() unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 40, ptr nonnull align 1 @183, i64 28)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_ZN7bindgen7Builder8generate17hab86c10eaf95b4dfE(ptr sret([3192 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [40 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 4 uses
  %i.ab = alloca [48 x i8], align 8               ; 3 uses
  %i.ac = alloca [88 x i8], align 8               ; 5 uses
  %i.ad = alloca [88 x i8], align 8               ; 10 uses
  %i.ae = alloca [16 x i8], align 8               ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 4 uses
  %i.ag = alloca [48 x i8], align 8               ; 3 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [1 x i8], align 1                ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [32 x i8], align 8               ; 10 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [72 x i8], align 8               ; 5 uses
  %i.ap = alloca [16 x i8], align 8               ; 7 uses
  %i.aq = alloca [8 x i8], align 8                ; 4 uses
  %i.ar = alloca [16 x i8], align 8               ; 4 uses
  %i.as = alloca [3192 x i8], align 8             ; 5 uses
  %i.at = alloca [48 x i8], align 8               ; 4 uses
  %i.au = alloca [4136 x i8], align 8             ; 4 uses
  %i.av = alloca [3192 x i8], align 8             ; 4 uses
  %i.aw = alloca [3192 x i8], align 8             ; 4 uses
  %i.ax = alloca [3192 x i8], align 8             ; 6 uses
  %i.ay = alloca [48 x i8], align 8               ; 4 uses
  %i.az = alloca [48 x i8], align 8               ; 5 uses
  %i.ba = alloca [48 x i8], align 8               ; 5 uses
  %i.bb = alloca [40 x i8], align 8               ; 4 uses
  %i.bc = alloca [40 x i8], align 8               ; 6 uses
  %i.bd = alloca [3160 x i8], align 8             ; 4 uses
  %i.be = alloca [4136 x i8], align 8             ; 13 uses
  %i.bf = alloca [16 x i8], align 8               ; 4 uses
  %i.bg = alloca [16 x i8], align 8               ; 4 uses
  %i.bh = alloca [48 x i8], align 8               ; 3 uses
  %i.bi = alloca [24 x i8], align 8               ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 4 uses
  %i.bk = alloca [24 x i8], align 8               ; 4 uses
  %i.bl = alloca [24 x i8], align 8               ; 4 uses
  %i.bm = alloca [24 x i8], align 8               ; 4 uses
  %i.bn = alloca [24 x i8], align 8               ; 4 uses
  %i.bo = alloca [4 x i8], align 4                ; 4 uses
  %i.bp = alloca [24 x i8], align 8               ; 4 uses
  %i.bq = alloca [176 x i8], align 8              ; 5 uses
  %i.br = alloca [176 x i8], align 8              ; 10 uses
  %i.bs = alloca [16 x i8], align 8               ; 4 uses
  %i.bt = alloca [16 x i8], align 8               ; 4 uses
  %i.bu = alloca [48 x i8], align 8               ; 4 uses
  %i.bv = alloca [24 x i8], align 8               ; 4 uses
  %i.bw = alloca [24 x i8], align 8               ; 4 uses
  %i.bx = alloca [16 x i8], align 8               ; 7 uses
  %i.by = alloca [16 x i8], align 8               ; 9 uses
  %i.bz = alloca [8 x i8], align 8                ; 6 uses
  %i.ca = alloca [16 x i8], align 8               ; 5 uses
  %i.cb = alloca [16 x i8], align 8               ; 4 uses
  %i.cc = alloca [16 x i8], align 8               ; 4 uses
  %i.cd = alloca [48 x i8], align 8               ; 3 uses
  %i.ce = alloca [16 x i8], align 8               ; 4 uses
  %i.cf = alloca [16 x i8], align 8               ; 4 uses
  %i.cg = alloca [48 x i8], align 8               ; 3 uses
  %i.ch = alloca [1 x i8], align 1                ; 5 uses
  %i.ci = alloca [48 x i8], align 8               ; 3 uses
  %i.cj = alloca [8 x i8], align 8                ; 6 uses
  %i.ck = alloca [32 x i8], align 8               ; 4 uses
  %i.cl = alloca [3160 x i8], align 8             ; 12 uses
  %i.cm = alloca [24 x i8], align 8               ; 2 uses
  %i.cn = alloca [32 x i8], align 8               ; 2 uses
  %i.co = alloca [32 x i8], align 8               ; 2 uses
  %i.cp = alloca [24 x i8], align 8               ; 4 uses
  %i.cq = alloca [128 x i8], align 8              ; 2 uses
  %i.cr = alloca [24 x i8], align 8               ; 3 uses
  %i.cs = alloca [16 x i8], align 8               ; 3 uses
  %i.ct = alloca [24 x i8], align 8               ; 2 uses
  %i.cu = alloca [32 x i8], align 8               ; 2 uses
  %i.cv = alloca [32 x i8], align 8               ; 2 uses
  %i.cw = alloca [24 x i8], align 8               ; 2 uses
  %i.cx = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  %i.cy = alloca [24 x i8], align 8               ; 2 uses
  %i.cz = alloca [18 x i8], align 1               ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 3158
  %i.db = load i8, ptr %i.da, align 2             ; 4 uses
  %.not = icmp eq i8 %i.db, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.dc = invoke zeroext i1 @_ZN7bindgen8features11RustEdition12is_available17h53e1f45f0cffc246E(i8 %i.db, ptr nonnull align 8 %i.cy)
          to label %bb.e unwind label %.thread111.loopexit.split-lp

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  invoke void @_ZN7bindgen8features12RustFeatures23new_with_latest_edition17hf2c38984e9d5eb60E(ptr nonnull sret([18 x i8]) align 1 %i.cz, ptr nonnull align 8 %i.cw)
          to label %bb.d unwind label %.thread111.loopexit.split-lp

.thread111.loopexit:                              ; preds = %bb.o, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread111

.thread111.loopexit.split-lp:                     ; preds = %bb.b, %bb.g, %bb.d, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.x, %bb.c, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread111

bb.d:                                             ; preds = %bb.g, %bb.c
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 3076
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(18) %i.dd, ptr noundef nonnull align 1 dereferenceable(18) %i.cz, i64 18, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 2120 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 2192
  %i.dg = invoke { ptr, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h367560f4b96f2d39E"(ptr nonnull align 8 %i.df)
          to label %bb.i unwind label %.thread111.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %bb.b
  br i1 %i.dc, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775802, ptr %i.dh, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.db, ptr %.sroa.3.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  call void @"_ZN4core3ptr37drop_in_place$LT$bindgen..Builder$GT$17he692405a1807f665E"(ptr nonnull align 8 %1)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  invoke void @_ZN7bindgen8features12RustFeatures3new17hb8bfa8c1a515ace5E(ptr nonnull sret([18 x i8]) align 1 %i.cz, ptr nonnull align 8 %i.cx, i8 %i.db)
          to label %bb.d unwind label %.thread111.loopexit.split-lp

bb.h:                                             ; preds = %bb.ib, %bb.f
  ret void

bb.i:                                             ; preds = %bb.d
  %i.di = extractvalue { ptr, i64 } %i.dg, 0
  %i.dj = extractvalue { ptr, i64 } %i.dg, 1
  invoke fastcc void @_ZN7bindgen20get_extra_clang_args17hfee38315d4c10a32E(ptr noalias align 8 %i.ct, ptr align 8 %i.di, i64 %i.dj)
          to label %bb.j unwind label %.thread111.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  invoke void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd503801269537b92E"(ptr nonnull sret([32 x i8]) align 8 %i.cu, ptr nonnull align 8 %i.ct)
          to label %bb.k unwind label %.thread111.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core4iter6traits8iterator8Iterator3map17h250dc3d5ce54eb7eE(ptr nonnull sret([32 x i8]) align 8 %i.cv, ptr nonnull align 8 %i.cu)
          to label %bb.l unwind label %.thread111.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  invoke void @"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h4b38bf864ae68365E"(ptr nonnull align 8 %i.de, ptr nonnull align 8 %i.cv, ptr nonnull align 8 @184)
          to label %bb.m unwind label %.thread111.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 2096 ; 3 uses
  %i.dl = invoke { ptr, ptr } @"_ZN94_$LT$$RF$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he4200c3aa7036265E"(ptr nonnull align 8 %i.dk)
          to label %bb.n unwind label %.thread111.loopexit.split-lp ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.dm = extractvalue { ptr, ptr } %i.dl, 0
  %i.dn = extractvalue { ptr, ptr } %i.dl, 1
  store ptr %i.dm, ptr %i.cs, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.dn, ptr %i.do, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %i.dp = invoke align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he50c2e81116461ceE"(ptr nonnull align 8 %i.cs)
          to label %bb.p unwind label %.thread111.loopexit ; 2 uses

bb.p:                                             ; preds = %bb.o
  %.not54 = icmp eq ptr %i.dp, null
  br i1 %.not54, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @"_ZN7bindgen50_$LT$impl$u20$bindgen..options..BindgenOptions$GT$17for_each_callback17h46a9bba8614f73feE"(ptr align 8 %1, ptr nonnull align 8 %i.dp)
          to label %bb.o unwind label %.thread111.loopexit

bb.r:                                             ; preds = %bb.p
  %i.dq = invoke { ptr, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hbefe9276b7b82728E"(ptr nonnull align 8 %i.de)
          to label %bb.s unwind label %.thread111.loopexit.split-lp ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.dr = extractvalue { ptr, i64 } %i.dq, 0
  %i.ds = extractvalue { ptr, i64 } %i.dq, 1
  %i.dt = invoke { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h43b8435eb0050ab3E"(ptr align 8 %i.dr, i64 %i.ds)
          to label %bb.t unwind label %.thread111.loopexit.split-lp ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.du = extractvalue { ptr, ptr } %i.dt, 0
  %i.dv = extractvalue { ptr, ptr } %i.dt, 1
  %i.dw = invoke { ptr, ptr } @_ZN4core4iter6traits8iterator8Iterator6filter17hfd225938b8670f2dE(ptr %i.du, ptr %i.dv)
          to label %bb.u unwind label %.thread111.loopexit.split-lp ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.dx = extractvalue { ptr, ptr } %i.dw, 0
  %i.dy = extractvalue { ptr, ptr } %i.dw, 1
  %i.dz = invoke { ptr, ptr } @_ZN4core4iter6traits8iterator8Iterator6cloned17hde4d9792b1509cd1E(ptr %i.dx, ptr %i.dy)
          to label %bb.v unwind label %.thread111.loopexit.split-lp ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.ea = extractvalue { ptr, ptr } %i.dz, 0
  %i.eb = extractvalue { ptr, ptr } %i.dz, 1
  invoke void @_ZN4core4iter6traits8iterator8Iterator7collect17h00fe7eb361a24a47E(ptr nonnull sret([24 x i8]) align 8 %i.cr, ptr %i.ea, ptr %i.eb)
          to label %bb.w unwind label %.thread111.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 2144 ; 3 uses
  invoke void @"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$17h0000022f73b79186E"(ptr nonnull align 8 %i.ec)
          to label %bb.x unwind label %.thread

.thread:                                          ; preds = %bb.w
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false)
  br label %.thread111

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false)
  %i.ee = invoke i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17hd61f9e53d4c1331dE"(ptr nonnull align 8 %i.dk)
          to label %bb.y unwind label %.thread111.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.ef = call i64 @llvm.usub.sat.i64(i64 %i.ee, i64 1)
  %i.eg = invoke { ptr, i64 } @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf8475d388413939bE"(ptr nonnull align 8 %i.dk, i64 %i.ef, ptr nonnull align 8 @185)
          to label %bb.z unwind label %.thread111.loopexit.split-lp ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN7bindgen7Builder8generate17hab86c10eaf95b4dfE:bb.a

bb.dm:                                            ; preds = %bb.dj
  invoke void @"_ZN4core3ptr99drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..ffi..os_str..OsString$GT$$GT$17h30b66658fcbcb59eE"(ptr nonnull align 8 %i.s) #26
          to label %bb.cw unwind label %bb.dl, !noalias !52

.thread.i.i:                                      ; preds = %bb.dd, %bb.dc
  invoke void @"_ZN4core3ptr99drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..ffi..os_str..OsString$GT$$GT$17h30b66658fcbcb59eE"(ptr nonnull align 8 %i.s)
          to label %.backedge.i58.i.backedge unwind label %bb.cx, !noalias !52

.backedge.i58.i.backedge:                         ; preds = %.thread.i.i, %bb.dd
  br label %.backedge.i58.i

bb.dn:                                            ; preds = %bb.cu
  %i.jc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jd = trunc nuw i8 %.sroa.06.2.i.i to i1
  br i1 %i.jd, label %bb.du, label %bb.dr

bb.do:                                            ; preds = %bb.cu
  %i.je = trunc nuw i8 %.sroa.06.2.i.i to i1
  br i1 %i.je, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.dq, %bb.do
  %i.jf = trunc nuw i8 %.sroa.09.2.i.i to i1
  br i1 %i.jf, label %bb.dt, label %.sink.split.i.i

bb.dq:                                            ; preds = %bb.do
  invoke void @"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$$GT$17hb45c2bd7e65c3b4eE"(ptr nonnull align 8 %.sink28.i.sroa.gep74.i)
          to label %bb.dp unwind label %bb.ds, !noalias !52

bb.dr:                                            ; preds = %bb.du, %bb.ds, %bb.dn
  %.pn.i59.i = phi { ptr, i32 } [ %i.jh, %bb.ds ], [ %i.jc, %bb.du ], [ %i.jc, %bb.dn ] ; 2 uses
  %i.jg = trunc nuw i8 %.sroa.09.2.i.i to i1
  br i1 %i.jg, label %bb.dv, label %bb.cb

bb.ds:                                            ; preds = %bb.dq
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dt:                                            ; preds = %bb.dp
  invoke void @"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$$GT$17hb45c2bd7e65c3b4eE"(ptr nonnull align 8 %.sink28.i.sroa.gep.i)
          to label %.sink.split.i.i unwind label %bb.cc, !noalias !52

bb.du:                                            ; preds = %bb.dn
  invoke void @"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$$GT$17hb45c2bd7e65c3b4eE"(ptr nonnull align 8 %.sink28.i.sroa.gep74.i) #26
          to label %bb.dr unwind label %bb.dl, !noalias !52

bb.dv:                                            ; preds = %bb.dr
  invoke void @"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$$GT$17hb45c2bd7e65c3b4eE"(ptr nonnull align 8 %.sink28.i.sroa.gep.i) #26
          to label %bb.cb unwind label %bb.dl, !noalias !52

bb.dw:                                            ; preds = %bb.ci
  %i.ji = trunc nuw i8 %.sroa.06.0.i.i to i1
  br i1 %i.ji, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dy, %bb.dw
  %i.jj = trunc nuw i8 %.sroa.09.0.i.i to i1
  br i1 %i.jj, label %bb.dz, label %bb.cb

bb.dy:                                            ; preds = %bb.dw
  invoke void @"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$$GT$17hb45c2bd7e65c3b4eE"(ptr nonnull align 8 %.sink28.i.sroa.gep74.i) #26
          to label %bb.dx unwind label %bb.dl, !noalias !52

bb.dz:                                            ; preds = %bb.dx
  invoke void @"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$$GT$17hb45c2bd7e65c3b4eE"(ptr nonnull align 8 %.sink28.i.sroa.gep.i) #26
          to label %bb.cb unwind label %bb.dl, !noalias !52

bb.ea:                                            ; preds = %bb.by
  invoke void @_ZN4core3fmt2rt8Argument11new_display17hdf0ac198ccdbebcfE(ptr nonnull sret([16 x i8]) align 8 %i.bs, ptr nonnull align 8 %i.by)
          to label %bb.eb unwind label %.loopexit.split-lp.i, !noalias !52

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !noalias !52
  invoke void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117hbf7a982ee1b2372bE"(ptr nonnull sret([48 x i8]) align 8 %i.bu, ptr nonnull align 8 @263, ptr nonnull align 8 %i.bt)
          to label %bb.ec unwind label %.loopexit.split-lp.i, !noalias !52

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZN5alloc3fmt6format17h54c7a6cac171cacaE(ptr nonnull sret([24 x i8]) align 8 %i.bv, ptr nonnull align 8 %i.bu)
          to label %bb.ed unwind label %.loopexit.split-lp.i, !noalias !52

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !noalias !52
  %i.jk = invoke { ptr, i64 } @_ZN5alloc6string6String14into_boxed_str17h388215d1e4a196d6E(ptr nonnull align 8 %i.bw, ptr nonnull align 8 @264)
          to label %bb.ee unwind label %.loopexit.split-lp.i, !noalias !52 ; 2 uses

bb.ee:                                            ; preds = %bb.ed
  %i.jl = extractvalue { ptr, i64 } %i.jk, 0
  %i.jm = extractvalue { ptr, i64 } %i.jk, 1
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6insert17hc72cbd3a09ff4021E"(ptr nonnull align 8 %i.fm, i64 0, ptr align 1 %i.jl, i64 %i.jm, ptr nonnull align 8 @265)
          to label %bb.bz unwind label %.loopexit.split-lp.i, !noalias !52

bb.ef:                                            ; preds = %.sink.split.i.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !52
  %i.jn = getelementptr inbounds nuw i8, ptr %i.cl, i64 2096 ; 2 uses
  %i.jo = invoke { ptr, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hbefe9276b7b82728E"(ptr nonnull align 8 %i.jn)
          to label %bb.eg unwind label %.loopexit.split-lp.i, !noalias !52 ; 2 uses

bb.eg:                                            ; preds = %bb.ef
  %i.jp = extractvalue { ptr, i64 } %i.jo, 0
  %i.jq = extractvalue { ptr, i64 } %i.jo, 1
  %i.jr = invoke align 8 ptr @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4last17ha0a7a239c8e4fbccE"(ptr align 8 %i.jp, i64 %i.jq)
          to label %bb.eh unwind label %.loopexit.split-lp.i, !noalias !52 ; 3 uses

bb.eh:                                            ; preds = %bb.eg
  %.not20.i = icmp eq ptr %i.jr, null
  br i1 %.not20.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.js = invoke { ptr, i64 } @"_ZN80_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$T$GT$$GT$6as_ref17he2d1f09c7252c84eE"(ptr nonnull align 8 %i.jr)
          to label %bb.ek unwind label %.loopexit.split-lp.i, !noalias !52 ; 2 uses

bb.ej:                                            ; preds = %bb.ez, %bb.eh
  %i.jt = invoke { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hd088413fc056b703E"(ptr align 8 %i.ep, i64 %i.eq)
          to label %bb.fd unwind label %.loopexit.split-lp.i, !noalias !52 ; 2 uses

bb.ek:                                            ; preds = %bb.ei
  %i.ju = extractvalue { ptr, i64 } %i.js, 0
  %i.jv = extractvalue { ptr, i64 } %i.js, 1
  %i.jw = invoke { ptr, i64 } @_ZN3std4path4Path3new17h675efd287458fbf7E(ptr align 1 %i.ju, i64 %i.jv)
          to label %bb.el unwind label %.loopexit.split-lp.i, !noalias !52 ; 2 uses

bb.el:                                            ; preds = %bb.ek
  %i.jx = extractvalue { ptr, i64 } %i.jw, 0      ; 4 uses
  %i.jy = extractvalue { ptr, i64 } %i.jw, 1      ; 4 uses
  invoke void @_ZN3std2fs8metadata17h7c34ddf9b2499f0aE(ptr nonnull sret([176 x i8]) align 8 %i.br, ptr align 1 %i.jx, i64 %i.jy)
          to label %bb.em unwind label %.loopexit.split-lp.i, !noalias !52

bb.em:                                            ; preds = %bb.el
  %i.jz = load i64, ptr %i.br, align 8, !noalias !52
  %i.ka = icmp eq i64 %i.jz, 2
  br i1 %i.ka, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  invoke void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h089bea8e4b04ece1E"(ptr nonnull sret([24 x i8]) align 8 %i.bm, ptr align 1 %i.jx, i64 %i.jy, ptr nonnull align 8 @269)
          to label %bb.ex unwind label %bb.ep, !noalias !52

bb.eo:                                            ; preds = %bb.em
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.bq, ptr noundef nonnull align 8 dereferenceable(176) %i.br, i64 176, i1 false), !noalias !52
  %i.kb = invoke zeroext i1 @_ZN3std2fs8Metadata6is_dir17h2691aadc36c5f297E(ptr nonnull align 8 %i.bq)
          to label %bb.eq unwind label %bb.ep, !noalias !52

bb.ep:                                            ; preds = %bb.ey, %bb.ew, %bb.ev, %bb.et, %bb.es, %bb.er, %bb.eo, %bb.en
  %i.kc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kd = load i64, ptr %i.br, align 8, !noalias !52
  %.not24.i = icmp eq i64 %i.kd, 2
  br i1 %.not24.i, label %bb.fb, label %.body66.i

bb.eq:                                            ; preds = %bb.eo
  br i1 %i.kb, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ke = invoke i32 @_ZN3std2fs8Metadata11permissions17hb47ac7c20138733eE(ptr nonnull align 8 %i.bq)
          to label %bb.et unwind label %bb.ep, !noalias !52

bb.es:                                            ; preds = %bb.eq
  invoke void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h089bea8e4b04ece1E"(ptr nonnull sret([24 x i8]) align 8 %i.bp, ptr align 1 %i.jx, i64 %i.jy, ptr nonnull align 8 @268)
          to label %bb.ex unwind label %bb.ep, !noalias !52

bb.et:                                            ; preds = %bb.er
  store i32 %i.ke, ptr %i.bo, align 4, !noalias !52
  %i.kf = invoke i32 @"_ZN74_$LT$std..fs..Permissions$u20$as$u20$std..os..unix..fs..PermissionsExt$GT$4mode17hbd823ddad1051b52E"(ptr nonnull align 4 %i.bo)
          to label %bb.eu unwind label %bb.ep, !noalias !52

bb.eu:                                            ; preds = %bb.et
  %i.kg = and i32 %i.kf, 292
  %.not93.i = icmp eq i32 %i.kg, 0
  br i1 %.not93.i, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  invoke void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h089bea8e4b04ece1E"(ptr nonnull sret([24 x i8]) align 8 %i.bn, ptr align 1 %i.jx, i64 %i.jy, ptr nonnull align 8 @266)
          to label %bb.ex unwind label %bb.ep, !noalias !52

bb.ew:                                            ; preds = %bb.eu
  %i.kh = invoke { ptr, i64 } @"_ZN67_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h99dc39076b9f17afE"(ptr nonnull align 8 %i.jr)
          to label %bb.ey unwind label %bb.ep, !noalias !52 ; 2 uses

bb.ex:                                            ; preds = %bb.ev, %bb.es, %bb.en
  %.sink135.i = phi ptr [ %i.bp, %bb.es ], [ %i.bm, %bb.en ], [ %i.bn, %bb.ev ]
  %.sink.i = phi i64 [ -9223372036854775807, %bb.es ], [ -9223372036854775805, %bb.en ], [ -9223372036854775806, %bb.ev ]
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ki, ptr noundef nonnull align 8 dereferenceable(24) %.sink135.i, i64 24, i1 false)
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink.i, ptr %.sroa.29.0..sroa_idx.i, align 8, !alias.scope !52
  store i64 2, ptr %0, align 8, !alias.scope !52
  %i.kj = load i64, ptr %i.br, align 8, !noalias !52
  %i.kk = icmp eq i64 %i.kj, 2
  br i1 %i.kk, label %bb.fa, label %.thread89.i

bb.ey:                                            ; preds = %bb.ew
  %i.kl = extractvalue { ptr, i64 } %i.kh, 0
  %i.km = extractvalue { ptr, i64 } %i.kh, 1
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h56a643ad23de69fdE"(ptr nonnull align 8 %i.fm, ptr align 1 %i.kl, i64 %i.km, ptr nonnull align 8 @267)
          to label %bb.ez unwind label %bb.ep, !noalias !52

bb.ez:                                            ; preds = %bb.ey
  invoke void @"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$std..fs..Metadata$C$std..io..error..Error$GT$$GT$17hc66abcdbd0851961E"(ptr nonnull align 8 %i.br)
          to label %bb.ej unwind label %.loopexit.split-lp.i, !noalias !52

bb.fa:                                            ; preds = %bb.ex
  invoke void @"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$std..fs..Metadata$C$std..io..error..Error$GT$$GT$17hc66abcdbd0851961E"(ptr nonnull align 8 %i.br)
          to label %.thread89.i unwind label %.loopexit.split-lp.i, !noalias !52

.thread89.i:                                      ; preds = %bb.hp, %bb.hm, %bb.fa, %bb.ex
  %.sroa.017.4.i = phi i8 [ 1, %bb.fa ], [ 1, %bb.ex ], [ 0, %bb.hp ], [ 0, %bb.hm ] ; 2 uses
  invoke void @"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h1f4c84c9e40a8e27E"(ptr nonnull align 8 %i.by)
          to label %bb.hq unwind label %.loopexit.split-lp95.i

bb.fb:                                            ; preds = %bb.ep
  invoke void @"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$std..fs..Metadata$C$std..io..error..Error$GT$$GT$17hc66abcdbd0851961E"(ptr nonnull align 8 %i.br) #26
          to label %.body66.i unwind label %bb.fc, !noalias !52

bb.fc:                                            ; preds = %.thread.i, %.thread81.i, %.body72.i, %bb.fb, %bb.bw, %.body66.i, %bb.aw, %bb.al
  %i.kn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #27
  unreachable

bb.fd:                                            ; preds = %bb.ej
  %i.ko = extractvalue { ptr, ptr } %i.jt, 0
  %i.kp = extractvalue { ptr, ptr } %i.jt, 1
  invoke void @_ZN4core4iter6traits8iterator8Iterator9enumerate17h996e696738cf3b88E(ptr nonnull sret([24 x i8]) align 8 %i.bk, ptr %i.ko, ptr %i.kp)
          to label %bb.fe unwind label %.loopexit.split-lp.i, !noalias !52

bb.fe:                                            ; preds = %bb.fd
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3e03a472a284daf4E"(ptr nonnull sret([24 x i8]) align 8 %i.bl, ptr nonnull align 8 %i.bk)
          to label %bb.ff unwind label %.loopexit.split-lp.i, !noalias !52

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false), !noalias !52
  %i.kq = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ia, %bb.ff
  %i.ks = invoke { i64, ptr } @"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7e30fc789f75daa2E"(ptr nonnull align 8 %i.bj)
          to label %bb.fh unwind label %.loopexit.i, !noalias !52 ; 2 uses

bb.fh:                                            ; preds = %bb.fg
  %i.kt = extractvalue { i64, ptr } %i.ks, 1      ; 3 uses
  %.not21.i = icmp eq ptr %i.kt, null
  br i1 %.not21.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ku = extractvalue { i64, ptr } %i.ks, 0
  %i.kv = icmp eq i64 %i.ku, 0
  br i1 %i.kv, label %bb.hs, label %bb.ht

bb.fj:                                            ; preds = %bb.fh
  invoke void @_ZN4core3fmt2rt8Argument9new_debug17h442adde5cb78bef4E(ptr nonnull sret([16 x i8]) align 8 %i.bf, ptr nonnull align 8 %i.cl)
          to label %bb.fk unwind label %.loopexit.split-lp.i, !noalias !52

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false), !noalias !52
  invoke void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117hbf7a982ee1b2372bE"(ptr nonnull sret([48 x i8]) align 8 %i.bh, ptr nonnull align 8 @271, ptr nonnull align 8 %i.bg)
          to label %bb.fl unwind label %.loopexit.split-lp.i, !noalias !52

bb.fl:                                            ; preds = %bb.fk
  %i.kw = getelementptr inbounds nuw i8, ptr %i.cl, i64 3121
  %i.kx = load i8, ptr %i.kw, align 1, !noalias !52
  %i.ky = trunc nuw i8 %i.kx to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3160) %i.bd, ptr noundef nonnull align 8 dereferenceable(3160) %i.cl, i64 3160, i1 false), !noalias !52
  invoke void @_ZN7bindgen2ir7context14BindgenContext3new17h2979b8d5149914a3E(ptr nonnull sret([4136 x i8]) align 8 %i.be, ptr nonnull align 8 %i.bd, ptr align 8 %i.ep, i64 %i.eq)
          to label %bb.fm unwind label %.loopexit.split-lp.i, !noalias !52

bb.fm:                                            ; preds = %bb.fl
  invoke void @_ZN7bindgen4time5Timer3new17h185b834451d22a4dE(ptr nonnull sret([40 x i8]) align 8 %i.bb, ptr nonnull align 1 @272, i64 5)
          to label %bb.fo unwind label %.thread86.i, !noalias !52

.thread86.i:                                      ; preds = %bb.ho, %bb.hh, %bb.fo, %bb.fm
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread81.i

bb.fn:                                            ; preds = %bb.hm, %bb.hk, %bb.hj, %bb.hi
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body66.i

bb.fo:                                            ; preds = %bb.fm
  invoke void @_ZN7bindgen4time5Timer11with_output17hfe2cf893638512a2E(ptr nonnull sret([40 x i8]) align 8 %i.bc, ptr nonnull align 8 %i.bb, i1 zeroext %i.ky)
          to label %bb.fp unwind label %.thread86.i, !noalias !52

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !52
  store i64 -9223372036854775808, ptr %i.l, align 8, !noalias !65
  %i.kz = invoke align 8 ptr @_ZN7bindgen2ir7context14BindgenContext16translation_unit17h18a6e5fbb296670cE(ptr nonnull align 8 %i.be)
          to label %bb.fs unwind label %bb.fr, !noalias !65

bb.fq:                                            ; preds = %bb.fu, %bb.fr
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i69.i, %bb.fu ], [ %i.lb, %bb.fr ] ; 2 uses
  %i.la = load i64, ptr %i.l, align 8, !noalias !65
  %.not9.i.i = icmp eq i64 %i.la, -9223372036854775808
  br i1 %.not9.i.i, label %.body72.i, label %bb.hc

bb.fr:                                            ; preds = %bb.go, %bb.gn, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.ge, %bb.gd, %bb.gc, %bb.fz, %bb.fs, %bb.fp
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.fs:                                            ; preds = %bb.fp
  invoke void @_ZN7bindgen5clang15TranslationUnit5diags17h95a1c1eb6904f860E(ptr nonnull sret([24 x i8]) align 8 %i.k, ptr align 8 %i.kz)
          to label %bb.ft unwind label %bb.fr, !noalias !65

bb.ft:                                            ; preds = %bb.fs
  %i.lc = invoke { ptr, ptr } @"_ZN94_$LT$$RF$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8d7e75be9cf68ff3E"(ptr nonnull align 8 %i.k)
          to label %bb.fv unwind label %.loopexit.split-lp.i.i, !noalias !65 ; 2 uses

bb.fu:                                            ; preds = %bb.gr, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.pn.i69.i = phi { ptr, i32 } [ %i.ls, %bb.gr ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$bindgen..clang..Diagnostic$GT$$GT$17h3a44013ef1994c8aE"(ptr nonnull align 8 %i.k) #26
          to label %bb.fq unwind label %bb.hb, !noalias !65

.loopexit.i.i:                                    ; preds = %bb.gx, %bb.fy, %bb.fw
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

.loopexit.split-lp.i.i:                           ; preds = %bb.ft
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.fv:                                            ; preds = %bb.ft
  %i.ld = extractvalue { ptr, ptr } %i.lc, 0
  %i.le = extractvalue { ptr, ptr } %i.lc, 1
  store ptr %i.ld, ptr %i.j, align 8, !noalias !65
  %i.lf = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.le, ptr %i.lf, align 8, !noalias !65
  br label %bb.fw

bb.fw:                                            ; preds = %bb.gx, %bb.fv
  %i.lg = invoke align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h33035f7f9987c4f8E"(ptr nonnull align 8 %i.j)
          to label %bb.fx unwind label %.loopexit.i.i, !noalias !65 ; 3 uses

bb.fx:                                            ; preds = %bb.fw
  %.not.i70.i = icmp eq ptr %i.lg, null
  br i1 %.not.i70.i, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  invoke void @_ZN7bindgen5clang10Diagnostic6format17hd9a09e49299cd1ccE(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr nonnull align 8 %i.lg)
          to label %bb.gq unwind label %.loopexit.i.i, !noalias !65

bb.fz:                                            ; preds = %bb.fx
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$bindgen..clang..Diagnostic$GT$$GT$17h3a44013ef1994c8aE"(ptr nonnull align 8 %i.k)
          to label %bb.ga unwind label %bb.fr, !noalias !65

bb.ga:                                            ; preds = %bb.fz
  %i.lh = load i64, ptr %i.l, align 8, !noalias !65
  %.not6.i71.i = icmp eq i64 %i.lh, -9223372036854775808
  br i1 %.not6.i71.i, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !52
  br label %bb.he

bb.gc:                                            ; preds = %bb.ga
  %i.li = invoke align 8 ptr @_ZN7bindgen2ir7context14BindgenContext16translation_unit17h18a6e5fbb296670cE(ptr nonnull align 8 %i.be)
          to label %bb.gd unwind label %bb.fr, !noalias !65

bb.gd:                                            ; preds = %bb.gc
  invoke void @_ZN7bindgen5clang15TranslationUnit6cursor17hc542657b1aefa50cE(ptr nonnull sret([32 x i8]) align 8 %i.e, ptr align 8 %i.li)
          to label %bb.ge unwind label %bb.fr, !noalias !65

bb.ge:                                            ; preds = %bb.gd
  %i.lj = invoke align 8 ptr @_ZN7bindgen2ir7context14BindgenContext7options17hdfbaf4eb76f9f4d7E(ptr nonnull align 8 %i.be)
          to label %bb.gf unwind label %bb.fr, !noalias !65

bb.gf:                                            ; preds = %bb.ge
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 3102
  %i.ll = load i8, ptr %i.lk, align 2, !noalias !65
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gh, %bb.gf
  %i.ln = invoke i64 @_ZN7bindgen2ir7context14BindgenContext11root_module17ha63bb402ac54f28aE(ptr nonnull align 8 %i.be)
          to label %bb.gi unwind label %bb.fr, !noalias !65

bb.gh:                                            ; preds = %bb.gf
  invoke void @_ZN7bindgen5clang6Cursor5visit17h1397f097fd54b4f9E(ptr nonnull align 8 %i.e)
          to label %bb.gg unwind label %bb.fr, !noalias !65

bb.gi:                                            ; preds = %bb.gg
  invoke void @_ZN7bindgen2ir7context14BindgenContext11with_module17he2888dfebf91b21bE(ptr nonnull align 8 %i.be, i64 %i.ln, ptr nonnull align 8 %i.e)
          to label %bb.gj unwind label %bb.fr, !noalias !65

bb.gj:                                            ; preds = %bb.gi
  %i.lo = invoke i64 @_ZN7bindgen2ir7context14BindgenContext14current_module17h58a6f1760c47d8caE(ptr nonnull align 8 %i.be)
          to label %bb.gk unwind label %bb.fr, !noalias !65

bb.gk:                                            ; preds = %bb.gj
  store i64 %i.lo, ptr %i.d, align 8, !noalias !65
  %i.lp = invoke i64 @_ZN7bindgen2ir7context14BindgenContext11root_module17ha63bb402ac54f28aE(ptr nonnull align 8 %i.be)
          to label %bb.gl unwind label %bb.fr, !noalias !65

bb.gl:                                            ; preds = %bb.gk
  store i64 %i.lp, ptr %i.c, align 8, !noalias !65
  %i.lq = invoke zeroext i1 @"_ZN80_$LT$bindgen..ir..context..ModuleId$u20$as$u20$core..cmp..PartialEq$LT$T$GT$$GT$2eq17h6cc9d6bcad314ff5E"(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.c)
          to label %bb.gm unwind label %bb.fr, !noalias !65

bb.gm:                                            ; preds = %bb.gl
  br i1 %i.lq, label %bb.he, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  invoke void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$9new_const17hc5b7dbd5e09b6b2dE"(ptr nonnull sret([48 x i8]) align 8 %i.a, ptr nonnull align 8 @150)
          to label %bb.go unwind label %bb.fr, !noalias !65

bb.go:                                            ; preds = %bb.gn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !65
  invoke void @_ZN4core9panicking13assert_failed17haa6e3390d78bd0daE(i8 0, ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.b, ptr nonnull align 8 @151) #28
          to label %bb.gp unwind label %bb.fr, !noalias !65

bb.gp:                                            ; preds = %bb.go
  unreachable

bb.gq:                                            ; preds = %bb.fy
  %i.lr = invoke i32 @_ZN7bindgen5clang10Diagnostic8severity17hd07efb79f8eae4bbE(ptr nonnull align 8 %i.lg)
          to label %bb.gs unwind label %bb.gr, !noalias !65

bb.gr:                                            ; preds = %bb.ha, %bb.gz, %bb.gy, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gq
  %i.ls = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h685aa45b87bc79d0E"(ptr nonnull align 8 %i.i) #26
          to label %bb.fu unwind label %bb.hb, !noalias !65

bb.gs:                                            ; preds = %bb.gq
  %i.lt = icmp sgt i32 %i.lr, 2
  br i1 %i.lt, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  invoke void @_ZN4core3fmt2rt8Argument11new_display17h10fe4c82e518c0bcE(ptr nonnull sret([16 x i8]) align 8 %i.f, ptr nonnull align 8 %i.i)
          to label %bb.gv unwind label %bb.gr, !noalias !65

bb.gu:                                            ; preds = %bb.gs
  %i.lu = invoke align 8 ptr @"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hf9d0a00a1ff136e7E"(ptr nonnull align 8 %i.l)
          to label %bb.gy unwind label %bb.gr, !noalias !65 ; 2 uses

bb.gv:                                            ; preds = %bb.gt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !65
  invoke void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h02e78eff79030551E"(ptr nonnull sret([48 x i8]) align 8 %i.h, ptr nonnull align 8 @153, ptr nonnull align 8 %i.g)
          to label %bb.gw unwind label %bb.gr, !noalias !65

bb.gw:                                            ; preds = %bb.gv
  invoke void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr nonnull align 8 %i.h)
          to label %bb.gx unwind label %bb.gr, !noalias !65

bb.gx:                                            ; preds = %bb.ha, %bb.gw
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h685aa45b87bc79d0E"(ptr nonnull align 8 %i.i)
          to label %bb.fw unwind label %.loopexit.i.i, !noalias !65

bb.gy:                                            ; preds = %bb.gu
  %i.lv = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17he8a15547cc913f1fE"(ptr nonnull align 8 %i.i)
          to label %bb.gz unwind label %bb.gr, !noalias !65 ; 2 uses

bb.gz:                                            ; preds = %bb.gy
  %i.lw = extractvalue { ptr, i64 } %i.lv, 0
  %i.lx = extractvalue { ptr, i64 } %i.lv, 1
  invoke void @_ZN5alloc6string6String8push_str17hd0b02f08b3f267caE(ptr align 8 %i.lu, ptr align 1 %i.lw, i64 %i.lx, ptr nonnull align 8 @154)
          to label %bb.ha unwind label %bb.gr, !noalias !65

bb.ha:                                            ; preds = %bb.gz
  invoke void @_ZN5alloc6string6String4push17h62fb9d96a0023b52E(ptr align 8 %i.lu, i32 10, ptr nonnull align 8 @155)
          to label %bb.gx unwind label %bb.gr, !noalias !65

bb.hb:                                            ; preds = %bb.hc, %bb.gr, %bb.fu
  %i.ly = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #27, !noalias !65
  unreachable

bb.hc:                                            ; preds = %bb.fq
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h685aa45b87bc79d0E"(ptr nonnull align 8 %i.l) #26
          to label %.body72.i unwind label %bb.hb, !noalias !65

bb.hd:                                            ; preds = %bb.hg, %bb.he
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %.body72.i

.body72.i:                                        ; preds = %bb.hd, %bb.hc, %bb.fq
  %eh.lpad-body73.i = phi { ptr, i32 } [ %i.lz, %bb.hd ], [ %.pn.pn.i.i, %bb.hc ], [ %.pn.pn.i.i, %bb.fq ]
  invoke void @"_ZN4core3ptr41drop_in_place$LT$bindgen..time..Timer$GT$17h8364f3a0591a702cE"(ptr nonnull align 8 %i.bc) #26
          to label %.thread81.i unwind label %bb.fc

bb.he:                                            ; preds = %bb.gm, %bb.gb
  %.sink.i72.i = phi i64 [ -9223372036854775804, %bb.gb ], [ -9223372036854775801, %bb.gm ]
  store i64 %.sink.i72.i, ptr %i.az, align 8, !alias.scope !62, !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !52
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hc6acc29860c4141dE"(ptr nonnull sret([48 x i8]) align 8 %i.ba, ptr nonnull align 8 %i.az)
          to label %bb.hf unwind label %bb.hd, !noalias !52

bb.hf:                                            ; preds = %bb.he
  %i.ma = load i64, ptr %i.ba, align 8, !noalias !52
  %.not22.not.i = icmp eq i64 %i.ma, -9223372036854775801
  br i1 %.not22.not.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 48, i1 false), !noalias !52
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hf87c302ca416f0b9E"(ptr sret([3192 x i8]) align 8 %0, ptr nonnull align 8 %i.ay, ptr nonnull align 8 @274)
          to label %bb.ho unwind label %bb.hd

bb.hh:                                            ; preds = %bb.hf
  invoke void @"_ZN4core3ptr41drop_in_place$LT$bindgen..time..Timer$GT$17h8364f3a0591a702cE"(ptr nonnull align 8 %i.bc)
          to label %bb.hi unwind label %.thread86.i, !noalias !52

bb.hi:                                            ; preds = %bb.hh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4136) %i.au, ptr noundef nonnull align 8 dereferenceable(4136) %i.be, i64 4136, i1 false), !noalias !52
  invoke void @_ZN7bindgen7codegen7codegen17h523fbeac31f2830aE(ptr nonnull sret([3192 x i8]) align 8 %i.av, ptr nonnull align 8 %i.au)
          to label %bb.hj unwind label %bb.fn, !noalias !52

bb.hj:                                            ; preds = %bb.hi
  invoke void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h25d530ea02454908E"(ptr nonnull sret([3192 x i8]) align 8 %i.aw, ptr nonnull align 8 %i.av)
          to label %bb.hk unwind label %bb.fn, !noalias !52

bb.hk:                                            ; preds = %bb.hj
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h6e8975b6e0d2ec57E"(ptr nonnull sret([3192 x i8]) align 8 %i.ax, ptr nonnull align 8 %i.aw)
          to label %bb.hl unwind label %bb.fn, !noalias !52

bb.hl:                                            ; preds = %bb.hk
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %i.mc = load i64, ptr %i.mb, align 8, !noalias !52
  %i.md = icmp eq i64 %i.mc, 2
  br i1 %i.md, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.me = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull align 8 dereferenceable(48) %i.me, i64 48, i1 false), !noalias !52
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hf87c302ca416f0b9E"(ptr sret([3192 x i8]) align 8 %0, ptr nonnull align 8 %i.at, ptr nonnull align 8 @273)
          to label %.thread89.i unwind label %bb.fn

bb.hn:                                            ; preds = %bb.hl
  %i.mf = getelementptr inbounds nuw i8, ptr %i.as, i64 3160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mf, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false), !noalias !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3160) %i.as, ptr noundef nonnull align 8 dereferenceable(3160) %i.mb, i64 3160, i1 false), !noalias !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3192) %0, ptr noundef nonnull align 8 dereferenceable(3192) %i.as, i64 3192, i1 false)
  invoke void @"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h1f4c84c9e40a8e27E"(ptr nonnull align 8 %i.by)
          to label %bb.ib unwind label %.loopexit.split-lp95.i, !noalias !52

bb.ho:                                            ; preds = %bb.hg
  invoke void @"_ZN4core3ptr41drop_in_place$LT$bindgen..time..Timer$GT$17h8364f3a0591a702cE"(ptr nonnull align 8 %i.bc)
          to label %bb.hp unwind label %.thread86.i

bb.hp:                                            ; preds = %bb.ho
  invoke void @"_ZN4core3ptr57drop_in_place$LT$bindgen..ir..context..BindgenContext$GT$17he7ceed56951086b5E"(ptr nonnull align 8 %i.be)
          to label %.thread89.i unwind label %.loopexit.split-lp.i

bb.hq:                                            ; preds = %.thread89.i
  %i.mg = trunc nuw i8 %.sroa.017.4.i to i1
  br i1 %i.mg, label %bb.hr, label %bb.ib

bb.hr:                                            ; preds = %bb.hq
  invoke void @"_ZN4core3ptr53drop_in_place$LT$bindgen..options..BindgenOptions$GT$17h3e240b578fc41184E"(ptr nonnull align 8 %i.cl)
          to label %bb.ib unwind label %.body

.thread81.i:                                      ; preds = %.body72.i, %.thread86.i
  %.pn84.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread86.i ], [ %eh.lpad-body73.i, %.body72.i ]
  invoke void @"_ZN4core3ptr57drop_in_place$LT$bindgen..ir..context..BindgenContext$GT$17he7ceed56951086b5E"(ptr nonnull align 8 %i.be) #26
          to label %.body66.i unwind label %bb.fc

bb.hs:                                            ; preds = %bb.fi
  %i.mh = invoke zeroext i1 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8is_empty17h190b0023973031afE"(ptr nonnull align 8 %i.jn)
          to label %bb.hu unwind label %.loopexit.i, !noalias !52

bb.ht:                                            ; preds = %bb.hu, %bb.fi
  %i.mi = invoke { ptr, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hf9eae9c799cf77c7E"(ptr nonnull align 1 @91, i64 8, ptr nonnull align 8 @275)
          to label %bb.hv unwind label %.loopexit.i, !noalias !52 ; 2 uses

bb.hu:                                            ; preds = %bb.hs
  br i1 %i.mh, label %bb.hw, label %bb.ht

bb.hv:                                            ; preds = %bb.ht
  %i.mj = extractvalue { ptr, i64 } %i.mi, 0
  %i.mk = extractvalue { ptr, i64 } %i.mi, 1
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h56a643ad23de69fdE"(ptr nonnull align 8 %i.fm, ptr align 1 %i.mj, i64 %i.mk, ptr nonnull align 8 @276)
          to label %bb.hw unwind label %.loopexit.i, !noalias !52

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %i.ml = load ptr, ptr %i.kt, align 8, !noalias !52
  %i.mm = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.mn = load i64, ptr %i.mm, align 8, !noalias !52
  invoke void @_ZN4core3ffi5c_str4CStr6to_str17he552d3e7f5a29733E(ptr nonnull sret([24 x i8]) align 8 %i.bi, ptr align 1 %i.ml, i64 %i.mn)
          to label %bb.hx unwind label %.loopexit.i, !noalias !52

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !52
  %i.mo = load i64, ptr %i.bi, align 8, !noalias !52
  %i.mp = trunc nuw i64 %i.mo to i1
  br i1 %i.mp, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.kq, i64 16, i1 false), !noalias !52
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr nonnull align 1 @18, i64 43, ptr nonnull align 1 %i.ar, ptr nonnull align 8 @17, ptr nonnull align 8 @277) #28
          to label %.noexc32.i unwind label %.loopexit.split-lp.i, !noalias !52

.noexc32.i:                                       ; preds = %bb.hy
  unreachable

bb.hz:                                            ; preds = %bb.hx
  %i.mq = load ptr, ptr %i.kq, align 8, !noalias !52
  %i.mr = load i64, ptr %i.kr, align 8, !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !52
  %i.ms = invoke { ptr, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hf9eae9c799cf77c7E"(ptr align 1 %i.mq, i64 %i.mr, ptr nonnull align 8 @278)
          to label %bb.ia unwind label %.loopexit.i, !noalias !52 ; 2 uses

bb.ia:                                            ; preds = %bb.hz
  %i.mt = extractvalue { ptr, i64 } %i.ms, 0
  %i.mu = extractvalue { ptr, i64 } %i.ms, 1
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h56a643ad23de69fdE"(ptr nonnull align 8 %i.fm, ptr align 1 %i.mt, i64 %i.mu, ptr nonnull align 8 @279)
          to label %bb.fg unwind label %.loopexit.i, !noalias !52

.thread.i:                                        ; preds = %bb.bt, %bb.bo, %bb.aw, %bb.al, %.body.thread.i, %.body.i
  %.pn2780.i = phi { ptr, i32 } [ %.pn27.i, %.body.i ], [ %i.ey, %bb.al ], [ %i.fe, %bb.aw ], [ %.pn.i.i, %bb.bt ], [ %.pn.i.i, %bb.bo ], [ %lpad.loopexit96.i, %.body.thread.i ]
  invoke void @"_ZN4core3ptr53drop_in_place$LT$bindgen..options..BindgenOptions$GT$17h3e240b578fc41184E"(ptr nonnull align 8 %i.cl) #26
          to label %.body.thread unwind label %bb.fc

bb.ib:                                            ; preds = %bb.hq, %bb.hn, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$bindgen..clang..UnsavedFile$GT$$GT$17h58a089c6a24d55ccE"(ptr nonnull align 8 %i.cp)
  br label %bb.h

.body.thread:                                     ; preds = %.thread.i, %.body.i, %.body, %bb.ic
  %eh.lpad-body116 = phi { ptr, i32 } [ %i.eo, %.body ], [ %i.mv, %bb.ic ], [ %.pn2780.i, %.thread.i ], [ %.pn27.i, %.body.i ]
  invoke void @"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$bindgen..clang..UnsavedFile$GT$$GT$17h58a089c6a24d55ccE"(ptr nonnull align 8 %i.cp) #26
          to label %.critedge101 unwind label %bb.id

bb.ic:                                            ; preds = %bb.ag
  %i.mv = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr53drop_in_place$LT$bindgen..options..BindgenOptions$GT$17h3e240b578fc41184E"(ptr nonnull align 8 %i.cl) #26
          to label %.body.thread unwind label %bb.id

bb.id:                                            ; preds = %.critedge100, %.critedge99, %.critedge98, %.critedge97, %.critedge96, %.critedge95, %.critedge94, %.critedge93, %.critedge92, %.critedge91, %.critedge90, %.critedge89, %.critedge88, %.critedge87, %.critedge86, %.critedge85, %.critedge84, %.critedge83, %.critedge82, %.critedge81, %.critedge80, %.critedge79, %.critedge78, %.critedge77, %.critedge76, %.critedge75, %.critedge74, %.critedge73, %.critedge72, %.critedge71, %.critedge70, %.critedge69, %.critedge68, %.critedge67, %.critedge66, %.critedge65, %.critedge64, %.critedge63, %.critedge62, %.critedge61, %.critedge60, %.critedge59, %.critedge58, %.critedge57, %.critedge56, %.critedge, %bb.ie, %.thread111, %bb.ic, %.body.thread
  %i.mw = landingpad { ptr, i32 }
end_hunk_2
