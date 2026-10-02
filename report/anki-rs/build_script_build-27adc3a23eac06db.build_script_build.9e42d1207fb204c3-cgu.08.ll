Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/build_script_build-27adc3a23eac06db.build_script_build.9e42d1207fb204c3-cgu.08?download=true
inline.NumInlined: 91
inline.NumDeleted: 39
begin_hunk_0_@_ZN4core5error5Error5cause17h479bee4daa2c0d26E:bb.a
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !4, !nonnull !4
  %i.h = tail call { ptr, ptr } %i.g(ptr align 1 %i.d), !inline_history !7
  ret { ptr, ptr } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h77e99cf1338f1c2fE(ptr align 8 %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @25, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17hbc96c8e0d2f87a89E(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$3new17h8bb322541161cf58E"(ptr align 8 %0)
  %i.b = tail call ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$4cast17h1671a7f3cc87fa87E"(ptr %i.a)
  %i.c = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17ha649a5efb2de2e67E(ptr %i.b) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !4, !nonnull !4
  %i.h = tail call { ptr, ptr } %i.g(ptr align 1 %i.d), !inline_history !8
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17hd5ae49b347165840E(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$3new17h076ccb8fce3fcd0aE"(ptr align 8 %0)
  %i.b = tail call ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$4cast17h0eeb6fd3774f6a9aE"(ptr %i.a)
  %i.c = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17ha649a5efb2de2e67E(ptr %i.b) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !4, !nonnull !4
  %i.h = tail call { ptr, ptr } %i.g(ptr align 1 %i.d), !inline_history !9
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17hfb64daf4723ab263E(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$3new17h0f6e7847cec63c78E"(ptr align 8 %0)
  %i.b = tail call ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$4cast17hf00642a252a6d39aE"(ptr %i.a)
  %i.c = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17ha649a5efb2de2e67E(ptr %i.b) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !4, !nonnull !4
  %i.h = tail call { ptr, ptr } %i.g(ptr align 1 %i.d), !inline_history !10
  ret { ptr, ptr } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h3d73630d8a8dbdf2E(ptr nofree readnone align 8 captures(none) %0, ptr nofree readnone align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h605ed953c7ff14a6E(ptr nofree readnone align 8 captures(none) %0, ptr nofree readnone align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h8d209b357203ac66E(ptr nofree readnone align 8 captures(none) %0, ptr nofree readnone align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17hbaee4c2d0e14c20dE(ptr nofree readnone align 8 captures(none) %0, ptr nofree readnone align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17hd3949fadd0c46ffcE(ptr nofree readnone align 8 captures(none) %0, ptr nofree readnone align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17he497d3686480f298E(ptr nofree readnone align 8 captures(none) %0, ptr nofree readnone align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17he9b7e5448b345105E(ptr nofree readnone align 8 captures(none) %0, ptr nofree readnone align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h07541c3119f23752E(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @6, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h25498579eb476a86E(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @7, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h9ab3c531a8eb042cE(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @8, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17habdb7a9c63c98ae1E(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @9, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17hd8686eb3d5aa1713E(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @10, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17he8922fbf309057bcE(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @11, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17hf09161b681817805E(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @12, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17h3b8d0a7dc71dc8f0E"(ptr align 8 %0, ptr align 8 %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %2
  store ptr %1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8
  %i.d = call zeroext i1 @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17h3378c2e8204c9919E"(ptr nonnull align 8 %i.a, ptr align 8 %0)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17hdd91c19d5302b0adE"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h982f623c052cf7d2E"(ptr align 8 %1, ptr align 8 %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h04bff78f4e5b4752E"(ptr nofree readnone align 1 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr align 8 %1, ptr nonnull align 1 @13, i64 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$27deallocating_next_unchecked28_$u7b$$u7b$closure$u7d$$u7d$17h5ea33d52eae5f09dE"(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  call void @"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$17deallocating_next17h79b5bcac3a026d72E"(ptr nonnull sret([48 x i8]) align 8 %i.a, ptr align 8 %1)
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr nonnull align 8 @15) #17
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17hb45f8af7e8834e05E"(ptr nofree align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.01.0.copyload.i = load i64, ptr %0, align 8, !noalias !13
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.sroa.0.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !13 ; 2 uses
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !13 ; 3 uses
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.sroa.3.0.copyload.i = load i64, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !13 ; 3 uses
  store i64 0, ptr %0, align 8, !noalias !13
  %i.c = trunc nuw i64 %.sroa.01.0.copyload.i to i1
  br i1 %i.c, label %bb.b, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17h31ac3d1f27a60dcfE.exit.thread"

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17h31ac3d1f27a60dcfE.exit.thread": ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %.sroa.2.sroa.0.0.copyload.i, null
  br i1 %.not.i, label %.preheader.i, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17h31ac3d1f27a60dcfE.exit.thread6"

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17h31ac3d1f27a60dcfE.exit.thread6": ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

.preheader.i:                                     ; preds = %bb.b
  %i.d = icmp eq i64 %.sroa.2.sroa.3.0.copyload.i, 0
  br i1 %i.d, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17h31ac3d1f27a60dcfE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.sroa.023.026.i = phi ptr [ %.sroa.2.sroa.2.0.copyload.i, %.lr.ph.i ], [ %i.h, %bb.c ]
  %.sroa.020.025.i = phi i64 [ %.sroa.2.sroa.3.0.copyload.i, %.lr.ph.i ], [ %i.i, %bb.c ]
  store ptr %.sroa.023.026.i, ptr %i.a, align 8, !noalias !13
  store i64 %.sroa.020.025.i, ptr %i.e, align 8, !noalias !13
  store i64 0, ptr %i.f, align 8, !noalias !13
  %i.g = call { ptr, i64 } @"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$7descend17hac4d47c4c6d7a165E"(ptr nonnull align 8 %i.a), !noalias !13 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17h31ac3d1f27a60dcfE.exit", label %bb.c

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17h31ac3d1f27a60dcfE.exit": ; preds = %bb.c, %.preheader.i
  %.sroa.0.0 = phi ptr [ %.sroa.2.sroa.2.0.copyload.i, %.preheader.i ], [ %i.h, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %.sroa.0.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17h31ac3d1f27a60dcfE.exit.thread6", %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17h31ac3d1f27a60dcfE.exit"
  %.sroa.0.013 = phi ptr [ %.sroa.2.sroa.0.0.copyload.i, %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17h31ac3d1f27a60dcfE.exit.thread6" ], [ %.sroa.0.0, %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17h31ac3d1f27a60dcfE.exit" ]
  %.sroa.7.012 = phi i64 [ %.sroa.2.sroa.3.0.copyload.i, %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17h31ac3d1f27a60dcfE.exit.thread6" ], [ 0, %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17h31ac3d1f27a60dcfE.exit" ]
  %.sroa.5.011 = phi ptr [ %.sroa.2.sroa.2.0.copyload.i, %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17h31ac3d1f27a60dcfE.exit.thread6" ], [ null, %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17h31ac3d1f27a60dcfE.exit" ]
  store ptr %.sroa.0.013, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.011, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.7.012, ptr %.sroa.7.0..sroa_idx, align 8
  call void @"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hbc00ab5d961cf36eE"(ptr nonnull align 8 %i.b)
  br label %bb.e

bb.e:                                             ; preds = %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17h31ac3d1f27a60dcfE.exit.thread", %bb.d, %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17h31ac3d1f27a60dcfE.exit"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hff8df0b9346a8910E"(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %1, align 8
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.013.017.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.n, %bb.d ]
  %.sroa.010.016.i = phi i64 [ %i.h, %.lr.ph.i ], [ %i.o, %bb.d ]
  store ptr %.sroa.013.017.i, ptr %i.a, align 8
  store i64 %.sroa.010.016.i, ptr %i.k, align 8
  store i64 0, ptr %i.l, align 8
  %i.m = call { ptr, i64 } @"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$7descend17hac4d47c4c6d7a165E"(ptr nonnull align 8 %i.a) ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.m, 1        ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.c
  %.sroa.013.0.lcssa.i = phi ptr [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  store i64 1, ptr %1, align 8
  store ptr %.sroa.013.0.lcssa.i, ptr %i.d, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %.not15.i = icmp eq ptr %.sroa.013.0.lcssa.i, null
  br i1 %.not15.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %.loopexit
  call void @_ZN4core4hint21unreachable_unchecked18precondition_check17hc1840a2fd70e861fE(ptr nonnull align 8 @16) #19
  unreachable

.thread:                                          ; preds = %bb.b, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN5alloc11collections5btree3mem7replace17h0489d84da7dbe334E(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.d)
  ret void

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr nonnull align 8 @17) #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden align 8 ptr @_ZN5prost8encoding6string14merge_repeated17h3026e449edbe8c15E(i8 %0, ptr align 8 %1, ptr align 8 %2, i32 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = tail call align 8 ptr @_ZN5prost8encoding9wire_type15check_wire_type17hbedbff077ca8763aE(i8 2, i8 %0)
  %i.d = tail call align 8 ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h736ad0efb9d310e5E"(ptr align 8 %i.c) ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call align 8 ptr @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17he7e59c90b7200414E"(ptr nonnull align 8 %i.d, ptr nonnull align 8 @19)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @"_ZN64_$LT$alloc..string..String$u20$as$u20$core..default..Default$GT$7default17hb7cf5b58c62de3b9E"(ptr nonnull sret([24 x i8]) align 8 %i.b)
  %i.f = invoke align 8 ptr @_ZN5prost8encoding6string5merge17hb17ef0d94cf9a7f0E(i8 %0, ptr nonnull align 8 %i.b, ptr align 8 %2, i32 %3)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.g = invoke align 8 ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h736ad0efb9d310e5E"(ptr align 8 %i.f)
          to label %bb.e unwind label %bb.k       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not7 = icmp eq ptr %i.g, null
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = invoke align 8 ptr @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17he7e59c90b7200414E"(ptr nonnull align 8 %i.g, ptr nonnull align 8 @19)
          to label %bb.i unwind label %bb.k

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h91264224434ca67dE"(ptr align 8 %1, ptr nonnull align 8 %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.i, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ %i.h, %bb.i ], [ null, %bb.g ]
  ret ptr %.sroa.0.0

bb.i:                                             ; preds = %bb.f
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1515553a37999eb3E"(ptr nonnull align 8 %i.b)
  br label %bb.h

bb.j:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.thr_comm

bb.k:                                             ; preds = %bb.f, %bb.d, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1515553a37999eb3E"(ptr nonnull align 8 %i.b) #15
          to label %bb.j unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h736bdd0dfafa17eeE"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i1 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h972a96bf0796f110E"(ptr %0, i1 zeroext %1) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, i1 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i1 } %i.a, i1 %1, 1
  ret { ptr, i1 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_ZN6anyhow5error10object_ref17h4a50f749c6261fcbE(ptr %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$4cast17hb48eaed71e687b16E"(ptr %0)
  %i.b = tail call ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$6as_ptr17hac5f5eeb7060f2b9E"(ptr %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = tail call { ptr, ptr } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h86c62d3e2357c9c4E"(ptr nonnull %i.c, ptr nonnull align 8 @21, ptr nonnull align 8 @23) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  %i.g = tail call { ptr, ptr } @"_ZN6anyhow3ptr12Ref$LT$T$GT$8from_raw17h5e094773d259c6f9E"(ptr %i.e, ptr align 8 %i.f)
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_ZN6anyhow5error10object_ref17h99bf8fddb5a2ade4E(ptr %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$4cast17haf61a2ba4a8b5bb4E"(ptr %0)
  %i.b = tail call ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$6as_ptr17hb5b813cf776b0e75E"(ptr %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = tail call { ptr, ptr } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h86c62d3e2357c9c4E"(ptr nonnull %i.c, ptr nonnull align 8 @25, ptr nonnull align 8 @23) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  %i.g = tail call { ptr, ptr } @"_ZN6anyhow3ptr12Ref$LT$T$GT$8from_raw17h5e094773d259c6f9E"(ptr %i.e, ptr align 8 %i.f)
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_ZN6anyhow5error10object_ref17haee344c67d0caf44E(ptr %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$4cast17ha15db46ddb994159E"(ptr %0)
  %i.b = tail call ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$6as_ptr17hdea84573499bba7cE"(ptr %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = tail call { ptr, ptr } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h86c62d3e2357c9c4E"(ptr nonnull %i.c, ptr nonnull align 8 @27, ptr nonnull align 8 @23) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
end_hunk_0
begin_hunk_1_@"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h594012cbcb23698bE"
; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$8from_raw17he3d851d8a00354f9E"(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$4cast17hc1ca011e452888faE"(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4core3any6TypeId2of17h821fa528926fced9E(ptr sret([16 x i8]) align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden ptr @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h12eccdb044fdf0d9E"(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$8from_raw17h6a71c85a723fc8cdE"(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$4cast17h01bb89322a9c90f4E"(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4core3any6TypeId2of17h70ee21c1a9a9e839E(ptr sret([16 x i8]) align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden ptr @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hd7315a61bd6b5611E"(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$8from_raw17h304fc4f09dd45bedE"(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$4cast17h4842e9054f72be34E"(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3any6TypeId2of17hb998c2d4ed4601fcE(ptr sret([16 x i8]) align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare ptr @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h9b1f8b3e9d079212E"(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$8from_raw17he1937fcca4758cadE"(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$4cast17h24d52fdbd9bd75a0E"(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Own$LT$T$GT$4cast17h6a279f637caf8d91E"(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden align 8 ptr @"_ZN6anyhow3ptr12Own$LT$T$GT$5boxed17h0cb8742a986a878fE"(ptr) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_ZN4core3mem4drop17h5f7fb8fe28fec289E(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Own$LT$T$GT$4cast17h2792d3c639d21991E"(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden align 8 ptr @"_ZN6anyhow3ptr12Own$LT$T$GT$5boxed17hd9474e20e0a4a99dE"(ptr) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_ZN4core3mem4drop17h976581dab85906d8E(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Own$LT$T$GT$4cast17h3940d2f7f1391977E"(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden align 8 ptr @"_ZN6anyhow3ptr12Own$LT$T$GT$5boxed17h94700e1cf421cffbE"(ptr) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_ZN4core3mem4drop17h94cb9f816a5fc4bcE(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Own$LT$T$GT$4cast17h2e89dd185990f4edE"(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden align 8 ptr @"_ZN6anyhow3ptr12Own$LT$T$GT$5boxed17hfb8387c8ee532d45E"(ptr) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_ZN4core3mem4drop17h06bf12716c667cb7E(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Own$LT$T$GT$4cast17h9c1f271b75cfb9afE"(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden align 8 ptr @"_ZN6anyhow3ptr12Own$LT$T$GT$5boxed17h1d68dc709eec3793E"(ptr) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_ZN4core3mem4drop17hf385d20f4b9a8c7dE(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Own$LT$T$GT$4cast17h02d1bb5d17c17becE"(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden align 8 ptr @"_ZN6anyhow3ptr12Own$LT$T$GT$5boxed17h28b49786f13c0a48E"(ptr) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_ZN4core3mem4drop17h7eba40194cb3a791E(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$3new17h169b9825fa72e778E"(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$4cast17h3d10526b317c012bE"(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$3new17h0fe90cfba7be5ce4E"(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$4cast17h6249a87818f70a3dE"(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$3new17h8bb322541161cf58E"(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$4cast17h1671a7f3cc87fa87E"(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$3new17h076ccb8fce3fcd0aE"(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$4cast17h0eeb6fd3774f6a9aE"(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$3new17h0f6e7847cec63c78E"(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$4cast17hf00642a252a6d39aE"(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$3new17h51032d1caa6ebc46E"(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden ptr @"_ZN6anyhow3ptr12Ref$LT$T$GT$4cast17h14b5e4b5492135e4E"(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter12debug_struct17h1e7fed6a090e7031E(ptr sret([16 x i8]) align 8, ptr align 8, ptr align 1, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden zeroext i1 @"_ZN69_$LT$anyhow..context..Quoted$LT$C$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17he232afba5bb7cb7bE"(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr align 8, ptr align 1, i64, ptr align 1, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17h85c161700f9add69E(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5100df7389eaceb0E"(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN6anyhow3fmt42_$LT$impl$u20$anyhow..error..ErrorImpl$GT$5debug17h1840e0e12bf3495fE"(ptr, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17ha649a5efb2de2e67E(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h55e40b7c64891dabE"(ptr align 8) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { cold }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { noreturn }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.92.0 (ded5c06cf 2025-12-08)"}
!4 = !{}
!5 = !{ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h9fd96e51dac2a252E"}
!6 = !{ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h68b94eb140c04d8aE"}
!7 = !{ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h142a5790faafb3e8E"}
!8 = !{ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17hd56592726824c77eE"}
!9 = !{ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h0121acbf5f1c12deE"}
!10 = !{ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h5720f61f76d6f969E"}
!11 = distinct !{!11, i1 false, !"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17h31ac3d1f27a60dcfE"}
!12 = distinct !{!12, !11, !"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17h31ac3d1f27a60dcfE: argument 0"}
!13 = !{!12}
end_hunk_1
