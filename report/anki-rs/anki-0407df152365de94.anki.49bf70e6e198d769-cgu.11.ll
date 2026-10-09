Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.11?download=true
inline.NumInlined: 6091
inline.NumDeleted: 2657
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 42
begin_hunk_0_@"_ZN136_$LT$rayon..iter..while_some..WhileSomeFolder$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$core..option..Option$LT$T$GT$$GT$$GT$7consume17h9e040cf17a0ccc11E":bb.a
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load float, ptr %i.g, align 4, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @"_ZN102_$LT$rayon..iter..extend..ListVecFolder$LT$T$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$T$GT$$GT$7consume17heee5e4d88e52a550E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %i.f, float noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !9, !align !28, !noundef !9
  store atomic i8 1, ptr %i.j monotonic, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN136_$LT$rayon..iter..while_some..WhileSomeFolder$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$core..option..Option$LT$T$GT$$GT$$GT$7consume17hc8560d413327eec7E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load i32, ptr %2, align 4, !range !25, !noundef !9
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load float, ptr %i.g, align 4, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @"_ZN113_$LT$rayon..iter..collect..consumer..CollectResult$LT$T$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$T$GT$$GT$7consume17hcaf5a6c46a4c7ddcE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %i.f, float noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !nonnull !9, !align !28, !noundef !9
  store atomic i8 1, ptr %i.j monotonic, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN136_$LT$rayon..iter..while_some..WhileSomeFolder$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$core..option..Option$LT$T$GT$$GT$$GT$8complete17h31d8cf63ad897c9dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN136_$LT$rayon..iter..while_some..WhileSomeFolder$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$core..option..Option$LT$T$GT$$GT$$GT$8complete17h730076da85539b74E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @"_ZN102_$LT$rayon..iter..extend..ListVecFolder$LT$T$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$T$GT$$GT$8complete17hc13e34eca7a4811bE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN136_$LT$rayon..iter..while_some..WhileSomeFolder$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$core..option..Option$LT$T$GT$$GT$$GT$8complete17h9e4674d65ae5a342E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN136_$LT$rayon..iter..while_some..WhileSomeFolder$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$core..option..Option$LT$T$GT$$GT$$GT$8complete17ha1851efd56959687E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @"_ZN102_$LT$rayon..iter..extend..ListVecFolder$LT$T$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$T$GT$$GT$8complete17h21da57ac24814825E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN136_$LT$rayon..iter..while_some..WhileSomeFolder$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$core..option..Option$LT$T$GT$$GT$$GT$8complete17hd1146d2960357aebE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN136_$LT$rayon..iter..while_some..WhileSomeFolder$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$core..option..Option$LT$T$GT$$GT$$GT$8complete17hde9df85f177f04ecE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @"_ZN102_$LT$rayon..iter..extend..ListVecFolder$LT$T$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$T$GT$$GT$8complete17h9d52e4bce0e4c119E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @"_ZN140_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$core..option..Option$LT$T$GT$$GT$$GT$11into_folder17h13ec1a36752d7295E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef nonnull align 1 %1) unnamed_addr #4 {
bb.a:
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN140_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$core..option..Option$LT$T$GT$$GT$$GT$11into_folder17h4ead1022a3c01d99E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !9
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.c = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.c, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN140_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$core..option..Option$LT$T$GT$$GT$$GT$11into_folder17h7d81e8a3c0e57264E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !9
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.c = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.c, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @"_ZN140_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$core..option..Option$LT$T$GT$$GT$$GT$11into_folder17hb99ca47982228a1fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef nonnull align 1 %1) unnamed_addr #4 {
bb.a:
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN140_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$core..option..Option$LT$T$GT$$GT$$GT$11into_folder17he5b0905d98152f6aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !9
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.c = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.c, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @"_ZN140_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$core..option..Option$LT$T$GT$$GT$$GT$11into_folder17hea228477019a43aeE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef nonnull align 1 %1) unnamed_addr #4 {
bb.a:
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @"_ZN140_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$core..option..Option$LT$T$GT$$GT$$GT$4full17h13113a4c3701426aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !28, !noundef !9
  %i.b = load atomic i8, ptr %i.a monotonic, align 1
  %i.c = icmp ne i8 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @"_ZN140_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$core..option..Option$LT$T$GT$$GT$$GT$4full17h13cde048031b2006E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !28, !noundef !9
  %i.b = load atomic i8, ptr %i.a monotonic, align 1
  %i.c = icmp ne i8 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @"_ZN140_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$core..option..Option$LT$T$GT$$GT$$GT$4full17h5ea82c063db45404E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !28, !noundef !9
  %i.b = load atomic i8, ptr %i.a monotonic, align 1
  %i.c = icmp ne i8 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @"_ZN140_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$core..option..Option$LT$T$GT$$GT$$GT$4full17h61fba5c21dc1e471E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !28, !noundef !9
  %i.b = load atomic i8, ptr %i.a monotonic, align 1
  %i.c = icmp ne i8 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @"_ZN140_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$core..option..Option$LT$T$GT$$GT$$GT$4full17ha0d744d5d5f3b1f2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !28, !noundef !9
  %i.b = load atomic i8, ptr %i.a monotonic, align 1
  %i.c = icmp ne i8 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @"_ZN140_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$core..option..Option$LT$T$GT$$GT$$GT$4full17ha47f063877abe22cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !28, !noundef !9
  %i.b = load atomic i8, ptr %i.a monotonic, align 1
  %i.c = icmp ne i8 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN140_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$core..option..Option$LT$T$GT$$GT$$GT$8split_at17h08ec34f04f697ea0E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !9
  call void @"_ZN117_$LT$rayon..iter..collect..consumer..CollectConsumer$LT$T$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$T$GT$$GT$8split_at17h48c8e911eb2b9685E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef %i.c, i64 noundef %i.e, i64 noundef %2)
  %i.f = load ptr, ptr %i.a, align 8, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = load ptr, ptr %1, align 8, !nonnull !9, !align !28, !noundef !9 ; 2 uses
  store ptr %i.m, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.n, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.l, ptr %.sroa.53.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN140_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$core..option..Option$LT$T$GT$$GT$$GT$8split_at17h391b14241d3b7bf4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !9
  call void @"_ZN117_$LT$rayon..iter..collect..consumer..CollectConsumer$LT$T$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$T$GT$$GT$8split_at17ha5091041869e2f93E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef %i.c, i64 noundef %i.e, i64 noundef %2)
  %i.f = load ptr, ptr %i.a, align 8, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = load ptr, ptr %1, align 8, !nonnull !9, !align !28, !noundef !9 ; 2 uses
  store ptr %i.m, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.n, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.l, ptr %.sroa.53.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @"_ZN140_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$core..option..Option$LT$T$GT$$GT$$GT$8split_at17h65b6c1d813e8a95aE"(ptr noundef nonnull align 1 %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %0, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @"_ZN140_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$core..option..Option$LT$T$GT$$GT$$GT$8split_at17h86d676c8f31b4514E"(ptr noundef nonnull align 1 %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %0, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN140_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$core..option..Option$LT$T$GT$$GT$$GT$8split_at17hc5ddc1908be45b1fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !9
  call void @"_ZN117_$LT$rayon..iter..collect..consumer..CollectConsumer$LT$T$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$T$GT$$GT$8split_at17h70f92caa11394fcbE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef %i.c, i64 noundef %i.e, i64 noundef %2)
  %i.f = load ptr, ptr %i.a, align 8, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = load ptr, ptr %1, align 8, !nonnull !9, !align !28, !noundef !9 ; 2 uses
  store ptr %i.m, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.n, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.l, ptr %.sroa.53.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @"_ZN140_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Consumer$LT$core..option..Option$LT$T$GT$$GT$$GT$8split_at17he4e8763a37d9bc37E"(ptr noundef nonnull align 1 %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %0, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @"_ZN149_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..UnindexedConsumer$LT$core..option..Option$LT$T$GT$$GT$$GT$10to_reducer17h220c8f4f3bd35cf5E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @"_ZN149_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..UnindexedConsumer$LT$core..option..Option$LT$T$GT$$GT$$GT$10to_reducer17h94a883f1656f497aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @"_ZN149_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..UnindexedConsumer$LT$core..option..Option$LT$T$GT$$GT$$GT$10to_reducer17had343c70d4d0e0c4E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @"_ZN149_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..UnindexedConsumer$LT$core..option..Option$LT$T$GT$$GT$$GT$10to_reducer17hd9196a9dfb9e2a95E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 1 ptr @"_ZN149_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..UnindexedConsumer$LT$core..option..Option$LT$T$GT$$GT$$GT$14split_off_left17h678a6bc0adf7aa7eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !28, !noundef !9
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN149_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..UnindexedConsumer$LT$core..option..Option$LT$T$GT$$GT$$GT$14split_off_left17ha4586d173f3355a7E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call { ptr, i64 } @"_ZN126_$LT$rayon..iter..collect..consumer..CollectConsumer$LT$T$GT$$u20$as$u20$rayon..iter..plumbing..UnindexedConsumer$LT$T$GT$$GT$14split_off_left17hd3d54ff40fd57157E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.f, align 8
  %i.g = load ptr, ptr %1, align 8, !nonnull !9, !align !28, !noundef !9
  store ptr %i.g, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN149_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..UnindexedConsumer$LT$core..option..Option$LT$T$GT$$GT$$GT$14split_off_left17hf2f8d1e1e81fb5b4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call { ptr, i64 } @"_ZN126_$LT$rayon..iter..collect..consumer..CollectConsumer$LT$T$GT$$u20$as$u20$rayon..iter..plumbing..UnindexedConsumer$LT$T$GT$$GT$14split_off_left17h70632bc6d4c01d5eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.f, align 8
  %i.g = load ptr, ptr %1, align 8, !nonnull !9, !align !28, !noundef !9
  store ptr %i.g, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 1 ptr @"_ZN149_$LT$rayon..iter..while_some..WhileSomeConsumer$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..UnindexedConsumer$LT$core..option..Option$LT$T$GT$$GT$$GT$14split_off_left17hf307e47d431a1515E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !28, !noundef !9
  ret ptr %i.a
}
end_hunk_0
begin_hunk_1_@_ZN5rayon4iter7collect21collect_with_consumer17ha4f451b4a7d66562E:bb.a
bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

"_ZN4core3ptr111drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$17h905d8dfd15a2f8feE.exit12": ; preds = %bb.d
  resume { ptr, i32 } %i.aa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5rayon4iter7collect21collect_with_consumer17hf0ce39f2a61ccea3E(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.i, align 8
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h100aca7b536464bfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.j = tail call { ptr, i64 } @"_ZN5rayon4iter7collect8consumer24CollectConsumer$LT$T$GT$8appender17h5b35a2c8217e21f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15629
  store i8 0, ptr %i.c, align 1, !noalias !15629
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.m, align 8, !noalias !15629
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.l, ptr %i.n, align 8, !noalias !15629
  store ptr %i.c, ptr %i.b, align 8, !noalias !15629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %2, i64 48, i1 false), !noalias !15630
  call void @"_ZN84_$LT$rayon..iter..map..Map$LT$I$C$F$GT$$u20$as$u20$rayon..iter..ParallelIterator$GT$15drive_unindexed17h261cbd4b66c86834E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b), !noalias !15631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15628
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !9 ; 2 uses
  store i64 %i.p, ptr %i.g, align 8
  %.not = icmp eq i64 %i.p, %1
  br i1 %.not, label %"_ZN4core3ptr91drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$f32$RP$$GT$$GT$17hd8c23bb7d3dc79a3E.exit", label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.i, ptr %i.e, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.45.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.g, ptr %i.q, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.49.0..sroa_idx, align 8
  store ptr @313, ptr %i.f, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.e, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 2, ptr %i.u, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #33
          to label %bb.c unwind label %bb.d

"_ZN4core3ptr91drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$f32$RP$$GT$$GT$17hd8c23bb7d3dc79a3E.exit": ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.v, align 8
  call void @"_ZN96_$LT$rayon..iter..collect..consumer..CollectResult$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h28ddefdcf685e4a1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !noundef !9 ; 2 uses
  %i.y = icmp ult i64 %i.x, 1152921504606846976
  call void @llvm.assume(i1 %i.y)
  %i.z = add i64 %1, %i.x
  store i64 %i.z, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN96_$LT$rayon..iter..collect..consumer..CollectResult$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h28ddefdcf685e4a1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %"_ZN4core3ptr91drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$f32$RP$$GT$$GT$17hd8c23bb7d3dc79a3E.exit12" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

"_ZN4core3ptr91drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$f32$RP$$GT$$GT$17hd8c23bb7d3dc79a3E.exit12": ; preds = %bb.d
  resume { ptr, i32 } %i.aa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5rayon4iter7collect21collect_with_consumer17hf9f5334357ecb32cE(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.i, align 8
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hac8dc2f1d7bd8a78E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.j = tail call { ptr, i64 } @"_ZN5rayon4iter7collect8consumer24CollectConsumer$LT$T$GT$8appender17h8017c3bf7f537eb6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15639
  store i8 0, ptr %i.c, align 1, !noalias !15639
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.m, align 8, !noalias !15639
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.l, ptr %i.n, align 8, !noalias !15639
  store ptr %i.c, ptr %i.b, align 8, !noalias !15639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15639
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %2, i64 72, i1 false), !noalias !15640
  call void @"_ZN84_$LT$rayon..iter..map..Map$LT$I$C$F$GT$$u20$as$u20$rayon..iter..ParallelIterator$GT$15drive_unindexed17h21a660d58e0fba65E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b), !noalias !15641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15638
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !9 ; 2 uses
  store i64 %i.p, ptr %i.g, align 8
  %.not = icmp eq i64 %i.p, %1
  br i1 %.not, label %"_ZN4core3ptr77drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$f32$GT$$GT$17hb0a869a561843b11E.exit", label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.i, ptr %i.e, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.45.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.g, ptr %i.q, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.49.0..sroa_idx, align 8
  store ptr @313, ptr %i.f, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.e, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 2, ptr %i.u, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #33
          to label %bb.c unwind label %bb.d

"_ZN4core3ptr77drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$f32$GT$$GT$17hb0a869a561843b11E.exit": ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.v, align 8
  call void @"_ZN96_$LT$rayon..iter..collect..consumer..CollectResult$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h734aeb92f6ef2351E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !noundef !9 ; 2 uses
  %i.y = icmp ult i64 %i.x, 2305843009213693952
  call void @llvm.assume(i1 %i.y)
  %i.z = add i64 %1, %i.x
  store i64 %i.z, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN96_$LT$rayon..iter..collect..consumer..CollectResult$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h734aeb92f6ef2351E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %"_ZN4core3ptr77drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$f32$GT$$GT$17hb0a869a561843b11E.exit12" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

"_ZN4core3ptr77drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$f32$GT$$GT$17hb0a869a561843b11E.exit12": ; preds = %bb.d
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @"_ZN5tokio4sync5watch15Sender$LT$T$GT$14receiver_count17h299863998caf68e9E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  ret i64 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5tokio4sync5watch7channel17h3d31580566d08abdE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.02.sroa.0 = alloca [256 x i8], align 8   ; 2 uses
  call void @_ZN5tokio4sync5watch10big_notify9BigNotify3new17h1950d31cddc697a4E(ptr noalias noundef nonnull sret([256 x i8]) align 8 captures(address) dereferenceable(256) %.sroa.02.sroa.0)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !15644
  %i.a = call noundef align 8 dereferenceable_or_null(344) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 993) 344, i64 noundef range(i64 1, 9) 8) #34, !noalias !15644 ; 15 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5alloc5alloc15exchange_malloc17hcfed4d974299cc5fE.exit, !prof !30

bb.b:                                             ; preds = %bb.a
  call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 344) #33, !noalias !15644
  unreachable

_ZN5alloc5alloc15exchange_malloc17hcfed4d974299cc5fE.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.5.0..sroa_idx43, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.02.sroa.0, i64 256, i1 false)
  %.sroa.6.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store i64 0, ptr %.sroa.6.0..sroa_idx44, align 8
  %.sroa.7.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store i32 0, ptr %.sroa.7.0..sroa_idx45, align 8
  %.sroa.8.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.a, i64 284
  store i8 0, ptr %.sroa.8.0..sroa_idx46, align 4
  %.sroa.947.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.947.0..sroa_idx, i8 0, i64 24, i1 false)
  store i64 1, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store i64 1, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store i64 0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store i8 0, ptr %.sroa.15.0..sroa_idx, align 8
  %i.c = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5alloc5alloc15exchange_malloc17hcfed4d974299cc5fE.exit
  store ptr %i.a, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.f, align 8
  ret void

bb.d:                                             ; preds = %_ZN5alloc5alloc15exchange_malloc17hcfed4d974299cc5fE.exit
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5tokio7runtime4task8new_task17h33f64b0e2a7b151aE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @"_ZN5tokio7runtime4task4core17Cell$LT$T$C$S$GT$3new17h2b95cf38653ab0aeE"(ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5tokio7runtime4task8new_task17h38b0f9f1649f082bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef %2, ptr %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @"_ZN5tokio7runtime4task4core17Cell$LT$T$C$S$GT$3new17hbe15518fdde0a942E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1, ptr noundef %2, ptr %3, i64 204, i64 noundef %4) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5tokio7runtime4task8new_task17h6204ff3c39a27d07E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noundef %2, ptr %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @"_ZN5tokio7runtime4task4core17Cell$LT$T$C$S$GT$3new17h759e548c24f15479E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1, ptr noundef %2, ptr %3, i64 204, i64 noundef %4) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5tokio7runtime4task8new_task17h6d391b35a536629fE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(1064) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @"_ZN5tokio7runtime4task4core17Cell$LT$T$C$S$GT$3new17h8e72b72a8d4c1bb0E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1064) %1, ptr noundef nonnull %2, i64 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5tokio7runtime4task8new_task17h70b662bd7d36491cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 8 %1, ptr noundef %2, ptr %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @"_ZN5tokio7runtime4task4core17Cell$LT$T$C$S$GT$3new17hec9afbea70ddffa4E"(ptr noalias noundef align 8 %1, ptr noundef %2, ptr %3, i64 204, i64 noundef %4) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5tokio7runtime4task8new_task17h843431271564d8dbE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 8 %1, ptr noundef %2, ptr %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @"_ZN5tokio7runtime4task4core17Cell$LT$T$C$S$GT$3new17hb46b5be52d4dd086E"(ptr noalias noundef align 8 %1, ptr noundef %2, ptr %3, i64 204, i64 noundef %4) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5tokio7runtime4task8new_task17h86d44d5f8f1cff53E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(1064) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @"_ZN5tokio7runtime4task4core17Cell$LT$T$C$S$GT$3new17hff4896fe7d1041ecE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1064) %1, ptr noundef nonnull %2, i64 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5tokio7runtime4task8new_task17hb883be3e32caade7E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @"_ZN5tokio7runtime4task4core17Cell$LT$T$C$S$GT$3new17h4f2fb08a2f7f0902E"(ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5tokio7runtime4task8new_task17hd62b985b5c293ea0E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(200) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @"_ZN5tokio7runtime4task4core17Cell$LT$T$C$S$GT$3new17hf9e1aa44cb97e2efE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(200) %1, ptr noundef nonnull %2, i64 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5tokio7runtime4task8new_task17hde882c3389286979E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @"_ZN5tokio7runtime4task4core17Cell$LT$T$C$S$GT$3new17h5d23d6a7fb912688E"(ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5tokio7runtime4task8new_task17hfc4f2216f7e9dddfE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @"_ZN5tokio7runtime4task4core17Cell$LT$T$C$S$GT$3new17h16b39112aad2a717E"(ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5tokio7runtime4task8new_task17hfd0cb425e2e2dfc9E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(200) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @"_ZN5tokio7runtime4task4core17Cell$LT$T$C$S$GT$3new17h34a4f724dcd30537E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(200) %1, ptr noundef nonnull %2, i64 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
end_hunk_1
begin_hunk_2_@"_ZN10serde_core2de5impls79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..string..String$GT$11deserialize17hf78c3844213925c1E"
; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN14axum_client_ip1_88_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$axum_client_ip..ClientIpSource$GT$11deserialize17ha9c51d874bfdac1aE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN179_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..net..ip_addr..IpAddr$GT$..deserialize..IpAddrKind$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hcfb84f3e1c3d8f82E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN10serde_core2de5impls84_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..net..ip_addr..IpAddr$GT$11deserialize17h559e58396e0ac387E"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_ZN5prost8encoding7message5merge17hfd153936362013adE(i8 noundef range(i8 0, 6), ptr noalias noundef align 8 dereferenceable(176), ptr noalias noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN5prost8encoding7message6encode17h29c9b18724abab3cE(i32 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN48_$LT$$RF$str$u20$as$u20$rusqlite..util..Name$GT$7as_cstr17hb1a49f438c4b7418E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef i32 @"_ZN8rusqlite9collation61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$16create_collation18call_boxed_closure17h35b027eb6210a2f8E"(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sqlite3_create_collation_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_ZN8rusqlite5error17decode_result_raw17h16c71faa3c40e349E(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function18call_boxed_closure17hbcb851633a988558E"(ptr noundef, i32 noundef, ptr noundef) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sqlite3_create_function_v2(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function18call_boxed_closure17hfbb23ba4718ef4f9E"(ptr noundef, i32 noundef, ptr noundef) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function18call_boxed_closure17hcbe1ccc0b7883811E"(ptr noundef, i32 noundef, ptr noundef) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function18call_boxed_closure17h2be8b77e62afac21E"(ptr noundef, i32 noundef, ptr noundef) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function18call_boxed_closure17h0f59973d056d4d63E"(ptr noundef, i32 noundef, ptr noundef) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function18call_boxed_closure17h0325efabcfbced62E"(ptr noundef, i32 noundef, ptr noundef) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function18call_boxed_closure17hf4af34324ce2a16aE"(ptr noundef, i32 noundef, ptr noundef) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function18call_boxed_closure17h2f9588c863158a43E"(ptr noundef, i32 noundef, ptr noundef) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function18call_boxed_closure17h665c621a8f82a7ebE"(ptr noundef, i32 noundef, ptr noundef) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function18call_boxed_closure17h7929abada69f62cbE"(ptr noundef, i32 noundef, ptr noundef) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function18call_boxed_closure17h283fc5248f5d91bcE"(ptr noundef, i32 noundef, ptr noundef) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h22a1324080b95d03E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h1801de9f4fa4c11bE"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN5prost8encoding7message6encode17h083cd0e31bb4af18E(i32 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_ZN5prost8encoding7message5merge17h193504a6081e171bE(i8 noundef range(i8 0, 6), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN10anki_proto9scheduler16scheduling_state6normal4Kind6encode17hace3f80acbe47de5E(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_ZN10anki_proto9scheduler16scheduling_state6normal4Kind5merge17hd32c20fef6b1e0dbE(ptr noalias noundef align 4 dereferenceable(56), i32 noundef, i8 noundef range(i8 0, 6), ptr noalias noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN5prost8encoding7message6encode17h2d0ecb006457e4a0E(i32 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN5prost8encoding7message6encode17habf0b7fae2d3d1e1E(i32 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN10anki_proto14card_rendering22rendered_template_node5Value6encode17hd0195cdae5e5c5e0E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN5prost8encoding7message6encode17hf0422e552b5fb26eE(i32 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN10anki_proto9scheduler16scheduling_state8filtered4Kind6encode17hfe90776a535baa36E(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_ZN10anki_proto9scheduler16scheduling_state8filtered4Kind5merge17hecdec9889307b048E(ptr noalias noundef align 4 dereferenceable(56), i32 noundef, i8 noundef range(i8 0, 6), ptr noalias noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN84_$LT$rayon..iter..map..Map$LT$I$C$F$GT$$u20$as$u20$rayon..iter..ParallelIterator$GT$15drive_unindexed17h261cbd4b66c86834E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN84_$LT$rayon..iter..map..Map$LT$I$C$F$GT$$u20$as$u20$rayon..iter..ParallelIterator$GT$15drive_unindexed17hff45b3a349c88f92E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noundef nonnull align 1) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN84_$LT$rayon..iter..map..Map$LT$I$C$F$GT$$u20$as$u20$rayon..iter..ParallelIterator$GT$15drive_unindexed17hd165208d3e354272E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN84_$LT$rayon..iter..map..Map$LT$I$C$F$GT$$u20$as$u20$rayon..iter..ParallelIterator$GT$15drive_unindexed17h7ec5b28100592a0dE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noundef nonnull align 1) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN84_$LT$rayon..iter..map..Map$LT$I$C$F$GT$$u20$as$u20$rayon..iter..ParallelIterator$GT$15drive_unindexed17h21a660d58e0fba65E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN84_$LT$rayon..iter..map..Map$LT$I$C$F$GT$$u20$as$u20$rayon..iter..ParallelIterator$GT$15drive_unindexed17hde5588a90b2f1f82E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72), ptr noundef nonnull align 1) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_ZN5prost8encoding7message5merge17h92f544711fc72f9fE(i8 noundef range(i8 0, 6), ptr noalias noundef align 1 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_ZN5prost8encoding7message5merge17h78cf250bc1f80e86E(i8 noundef range(i8 0, 6), ptr noalias noundef align 4 dereferenceable(12), ptr noalias noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN5prost8encoding7message6encode17h263e67778dab42bcE(i32 noundef, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN5prost8encoding7message6encode17hdffda0ac73f9d3e0E(i32 noundef, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_ZN5prost8encoding7message5merge17h83b342ebfcb2fab8E(i8 noundef range(i8 0, 6), ptr noalias noundef align 4 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_ZN5prost8encoding7message5merge17h2b96bb03580fe1a2E(i8 noundef range(i8 0, 6), ptr noalias noundef align 4 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_ZN5prost8encoding7message5merge17h37cbbd4a44d9178cE(i8 noundef range(i8 0, 6), ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN9hashbrown3raw13RawTableInner13drop_elements17hc735e450521d0f4eE(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN9same_file4unix6Handle9from_path17h98a27e53396034adE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #16

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v8i8(<8 x i8>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v4i8(<4 x i8>) #30

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsiGVaDesi5rv_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { cold }
attributes #32 = { cold noreturn nounwind }
attributes #33 = { noreturn }
attributes #34 = { nounwind }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = distinct !{null}
!1 = distinct !{null, null, null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{ptr @"_ZN4core3ptr52drop_in_place$LT$reqwest..async_impl..body..Body$GT$17h4a5d88b4e9c84b51E", null, null, null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 2, !"RtLibUseGOT", i32 1}
!7 = !{!"rustc version 1.92.0 (ded5c06cf 2025-12-08)"}
!8 = !{i32 0, i32 8}
!9 = !{}
!10 = !{i64 8}
!11 = !{i64 0, i64 7}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{i64 0, i64 5}
!14 = !{i64 0, i64 4}
!15 = !{i64 0, i64 3}
!16 = !{!"branch_weights", i32 12000, i32 1}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!18 = !{i8 0, i8 2}
!19 = !{!"branch_weights", i32 1, i32 2000, i32 2000}
!20 = !{i8 0, i8 3}
!21 = !{i8 0, i8 4}
!22 = !{i32 0, i32 3}
!23 = !{i64 0, i64 -9223372036854775806}
!24 = !{i64 0, i64 -9223372036854775807}
!25 = !{i32 0, i32 2}
!26 = !{i64 0, i64 2}
!27 = !{i64 0, i64 -9223372036854775805}
!28 = !{i64 1}
!29 = !{i64 0, i64 6}
!30 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!31 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2000}
!32 = !{i32 0, i32 -1}
!33 = !{i64 0, i64 -9223372036854775772}
!34 = !{i64 0, i64 -9223372036854775808}
!35 = !{i64 1, i64 0}
!36 = !{i64 0, i64 -9223372036854775801}
!37 = !{i64 0, i64 -9223372036854775782}
!38 = !{i64 0, i64 -9223372036854775802}
!39 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!40 = !{i64 0, i64 -9223372036854775771}
!41 = !{i64 0, i64 -9223372036854775766}
!42 = !{i8 0, i8 5}
!43 = !{i16 0, i16 2}
!44 = !{i32 0, i32 13}
!45 = !{i64 0, i64 9}
!46 = !{i8 0, i8 7}
!47 = !{i64 0, i64 -9223372036854775785}
!48 = !{i8 0, i8 6}
!49 = !{i8 0, i8 11}
!50 = !{i16 0, i16 7}
!51 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!52 = !{i64 0, i64 -9223372036854775773}
!53 = !{i64 0, i64 -9223372036854775803}
!54 = !{i64 0, i64 -9223372036854775794}
!55 = !{i64 0, i64 -9223372036854775804}
!56 = !{i64 0, i64 -9223372036854775786}
!57 = distinct !{!57, i1 false, !"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4788ac0b3bc4e82bE"}
!58 = distinct !{!58, !57, !"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4788ac0b3bc4e82bE: argument 0"}
!59 = distinct !{!59, i1 false, !"_ZN103_$LT$anki_proto..scheduler..scheduling_state..ReschedulingFilter$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17h7a94966e1e1374fbE"}
!60 = distinct !{!60, !59, !"_ZN103_$LT$anki_proto..scheduler..scheduling_state..ReschedulingFilter$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17h7a94966e1e1374fbE: argument 0"}
!61 = !{!58}
!62 = !{!60}
!63 = distinct !{!63, i1 false, !"_ZN107_$LT$std..collections..hash..map..Values$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h0cef3e3d0cf34e9dE"}
!64 = distinct !{!64, !63, !"_ZN107_$LT$std..collections..hash..map..Values$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h0cef3e3d0cf34e9dE: argument 1"}
!65 = distinct !{!65, !63, !"_ZN107_$LT$std..collections..hash..map..Values$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h0cef3e3d0cf34e9dE: argument 0"}
!66 = !{!65, !64}
!67 = !{!64}
!68 = !{!65}
!69 = distinct !{!69, i1 false, !"_ZN107_$LT$std..collections..hash..map..Values$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h021865c723876419E"}
!70 = distinct !{!70, !69, !"_ZN107_$LT$std..collections..hash..map..Values$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h021865c723876419E: argument 1"}
!71 = distinct !{!71, !69, !"_ZN107_$LT$std..collections..hash..map..Values$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h021865c723876419E: argument 0"}
!72 = !{!71, !70}
!73 = !{!70}
!74 = !{!71}
!75 = distinct !{!75, i1 false, !"_ZN107_$LT$std..collections..hash..map..Values$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h8159269d057be8bfE"}
!76 = distinct !{!76, !75, !"_ZN107_$LT$std..collections..hash..map..Values$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h8159269d057be8bfE: argument 0"}
!77 = !{!76}
!78 = distinct !{!78, i1 false, !"_ZN105_$LT$std..collections..hash..map..Keys$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hfcdf268e00926acdE"}
!79 = distinct !{!79, !78, !"_ZN105_$LT$std..collections..hash..map..Keys$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hfcdf268e00926acdE: argument 0"}
!80 = !{!79}
!81 = distinct !{!81, i1 false, !"_ZN107_$LT$std..collections..hash..map..Values$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h15617c0f0fc155cbE"}
!82 = distinct !{!82, !81, !"_ZN107_$LT$std..collections..hash..map..Values$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h15617c0f0fc155cbE: argument 0"}
!83 = !{!82}
!84 = distinct !{!84, i1 false, !"_ZN106_$LT$anki_proto..import_export..PackageMetadata$u20$as$u20$anki..import_export..package..meta..MetaExt$GT$12from_archive28_$u7b$$u7b$closure$u7d$$u7d$17h51aae7efc28832b6E"}
!85 = distinct !{!85, !84, !"_ZN106_$LT$anki_proto..import_export..PackageMetadata$u20$as$u20$anki..import_export..package..meta..MetaExt$GT$12from_archive28_$u7b$$u7b$closure$u7d$$u7d$17h51aae7efc28832b6E: argument 1"}
!86 = distinct !{!86, !84, !"_ZN106_$LT$anki_proto..import_export..PackageMetadata$u20$as$u20$anki..import_export..package..meta..MetaExt$GT$12from_archive28_$u7b$$u7b$closure$u7d$$u7d$17h51aae7efc28832b6E: argument 0"}
!87 = distinct !{!87, i1 false, !"_ZN4core3ptr60drop_in_place$LT$zip..read..ZipFile$LT$std..fs..File$GT$$GT$17h7fc96db745c6aa7fE"}
!88 = distinct !{!88, !87, !"_ZN4core3ptr60drop_in_place$LT$zip..read..ZipFile$LT$std..fs..File$GT$$GT$17h7fc96db745c6aa7fE: argument 0"}
!89 = distinct !{!89, i1 false, !"_ZN4core3ptr60drop_in_place$LT$zip..read..ZipFile$LT$std..fs..File$GT$$GT$17h7fc96db745c6aa7fE"}
!90 = distinct !{!90, !89, !"_ZN4core3ptr60drop_in_place$LT$zip..read..ZipFile$LT$std..fs..File$GT$$GT$17h7fc96db745c6aa7fE: argument 0"}
!91 = distinct !{!91, i1 false, !"_ZN5prost7message7Message6decode17hd032dc4d348307beE"}
!92 = distinct !{!92, !91, !"_ZN5prost7message7Message6decode17hd032dc4d348307beE: argument 1"}
!93 = distinct !{!93, !91, !"_ZN5prost7message7Message6decode17hd032dc4d348307beE: argument 0"}
!94 = distinct !{!94, i1 false, !"_ZN5prost7message7Message5merge17h0e536b69e907971fE"}
!95 = distinct !{!95, !94, !"_ZN5prost7message7Message5merge17h0e536b69e907971fE: argument 1"}
!96 = distinct !{!96, !94, !"_ZN5prost7message7Message5merge17h0e536b69e907971fE: argument 0"}
!97 = distinct !{!97, i1 false, !"_ZN5prost8encoding10decode_key17h73e86717855793b2E"}
!98 = distinct !{!98, !97, !"_ZN5prost8encoding10decode_key17h73e86717855793b2E: argument 1"}
!99 = distinct !{!99, !97, !"_ZN5prost8encoding10decode_key17h73e86717855793b2E: argument 0"}
!100 = distinct !{!100, i1 false, !"_ZN90_$LT$prost..encoding..wire_type..WireType$u20$as$u20$core..convert..TryFrom$LT$u64$GT$$GT$8try_from17h71f37861c028e355E"}
!101 = distinct !{!101, !100, !"_ZN90_$LT$prost..encoding..wire_type..WireType$u20$as$u20$core..convert..TryFrom$LT$u64$GT$$GT$8try_from17h71f37861c028e355E: argument 0"}
!102 = distinct !{!102, i1 false, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"}
!103 = distinct !{!103, !102, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 2"}
!104 = distinct !{!104, !102, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 1"}
!105 = distinct !{!105, !102, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 0"}
!106 = distinct !{!106, i1 false, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E"}
!107 = distinct !{!107, !106, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 1"}
!108 = distinct !{!108, !106, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 0"}
!109 = distinct !{!109, i1 false, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"}
!110 = distinct !{!110, !109, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 2"}
!111 = distinct !{!111, !109, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 1"}
!112 = distinct !{!112, !109, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 0"}
!113 = distinct !{!113, i1 false, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E"}
!114 = distinct !{!114, !113, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 1"}
!115 = distinct !{!115, !113, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 0"}
!116 = distinct !{!116, i1 false, !"_ZN86_$LT$anki_proto..import_export..PackageMetadata$u20$as$u20$prost..message..Message$GT$11merge_field17h72a5328a230245a8E"}
!117 = distinct !{!117, !116, !"_ZN86_$LT$anki_proto..import_export..PackageMetadata$u20$as$u20$prost..message..Message$GT$11merge_field17h72a5328a230245a8E: argument 1"}
!118 = distinct !{!118, !116, !"_ZN86_$LT$anki_proto..import_export..PackageMetadata$u20$as$u20$prost..message..Message$GT$11merge_field17h72a5328a230245a8E: argument 0"}
!119 = distinct !{!119, i1 false, !"_ZN5prost8encoding5int325merge17h65dd780af1c95fe6E"}
!120 = distinct !{!120, !119, !"_ZN5prost8encoding5int325merge17h65dd780af1c95fe6E: argument 1"}
!121 = distinct !{!121, !119, !"_ZN5prost8encoding5int325merge17h65dd780af1c95fe6E: argument 0"}
!122 = distinct !{!122, i1 false, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"}
!123 = distinct !{!123, !122, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 2"}
!124 = distinct !{!124, !122, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 1"}
!125 = distinct !{!125, !122, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 0"}
!126 = distinct !{!126, i1 false, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E"}
!127 = distinct !{!127, !126, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 1"}
!128 = distinct !{!128, !126, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 0"}
!129 = distinct !{!129, i1 false, !"_ZN86_$LT$anki_proto..import_export..PackageMetadata$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17h1b683e6a6ac65fdeE"}
!130 = distinct !{!130, !129, !"_ZN86_$LT$anki_proto..import_export..PackageMetadata$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17h1b683e6a6ac65fdeE: argument 0"}
!131 = !{!85}
!132 = !{!86, !85}
!133 = !{!86}
!134 = !{!88, !85}
!135 = !{!90, !85}
!136 = !{!93, !92}
!137 = !{!96, !95, !93, !92}
!138 = !{!99, !98, !96, !95, !93, !92}
!139 = !{!101, !99, !96, !95, !93, !92}
!140 = !{!108, !107, !105, !104, !103, !99, !96, !95, !93, !92}
!141 = !{!108, !105, !104, !99, !96, !95, !93, !92}
!142 = !{!115, !114, !112, !111, !110, !101, !99, !96, !95, !93, !92}
!143 = !{!115, !112, !111, !101, !99, !96, !95, !93, !92}
!144 = !{!121, !120, !118, !117, !96, !95, !93, !92}
!145 = !{!128, !127, !125, !124, !123, !121, !120, !118, !117, !96, !95, !93, !92}
!146 = !{!128, !125, !124, !121, !120, !118, !117, !96, !95, !93, !92}
!147 = !{!118, !117, !96, !95, !93, !92}
!148 = !{!130, !118, !117, !96, !95, !93, !92}
!149 = !{!118, !96, !93}
!150 = distinct !{!150, i1 false, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_enum17h1178a9e166996ef5E"}
!151 = distinct !{!151, !150, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_enum17h1178a9e166996ef5E: argument 0"}
!152 = distinct !{!152, !150, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_enum17h1178a9e166996ef5E: argument 1"}
!153 = distinct !{!153, i1 false, !"_ZN220_$LT$anki_proto..import_export..csv_metadata.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki_proto..import_export..csv_metadata..MatchScope$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h8fc767d5b4be56c8E"}
!154 = distinct !{!154, !153, !"_ZN220_$LT$anki_proto..import_export..csv_metadata.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki_proto..import_export..csv_metadata..MatchScope$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h8fc767d5b4be56c8E: argument 0"}
!155 = distinct !{!155, !153, !"_ZN220_$LT$anki_proto..import_export..csv_metadata.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki_proto..import_export..csv_metadata..MatchScope$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h8fc767d5b4be56c8E: argument 1"}
!156 = distinct !{!156, i1 false, !"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$7discard17h48b968eb231cae57E"}
!157 = distinct !{!157, !156, !"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$7discard17h48b968eb231cae57E: argument 0"}
!158 = distinct !{!158, i1 false, !"_ZN220_$LT$anki_proto..import_export..csv_metadata.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki_proto..import_export..csv_metadata..MatchScope$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hf605736ab2c39c0cE"}
!159 = distinct !{!159, !158, !"_ZN220_$LT$anki_proto..import_export..csv_metadata.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki_proto..import_export..csv_metadata..MatchScope$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hf605736ab2c39c0cE: argument 0"}
!160 = distinct !{!160, !158, !"_ZN220_$LT$anki_proto..import_export..csv_metadata.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki_proto..import_export..csv_metadata..MatchScope$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hf605736ab2c39c0cE: argument 1"}
!161 = distinct !{!161, i1 false, !"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$7discard17h48b968eb231cae57E"}
!162 = distinct !{!162, !161, !"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$7discard17h48b968eb231cae57E: argument 0"}
!163 = !{!151}
!164 = !{!152}
!165 = !{!151, !152}
!166 = !{!154}
end_hunk_2
