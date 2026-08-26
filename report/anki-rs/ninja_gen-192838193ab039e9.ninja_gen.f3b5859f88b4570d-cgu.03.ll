Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/ninja_gen-192838193ab039e9.ninja_gen.f3b5859f88b4570d-cgu.03?download=true
inline.NumInlined: 481
inline.NumDeleted: 276
begin_hunk_0_@"_ZN5alloc3vec16in_place_collect108_$LT$impl$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9from_iter17hc39a11d3de67c381E":bb.a
  tail call void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17he209815b43cb1e17E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc3vec16in_place_collect108_$LT$impl$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9from_iter17he55476cabc0272ccE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17hee88ad635b60de1dE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h1af2ddb735758efbE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h1797c9c6ec304cc8E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.b = load i64, ptr %i.a, align 8, !range !43, !noundef !17
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !23, !noundef !17 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h48f6be3e9b76576cE.exit", !prof !44

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.e, i64 %i.g) #13
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h48f6be3e9b76576cE.exit": ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !17, !noundef !17
  %i.i = icmp ule i64 %1, %i.e
  call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8dd855af775d93b3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h1797c9c6ec304cc8E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !range !43, !noundef !17
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !23, !noundef !17 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h48f6be3e9b76576cE.exit", !prof !44

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.e, i64 %i.g) #13
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h48f6be3e9b76576cE.exit": ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !17, !noundef !17
  %i.i = icmp ule i64 %1, %i.e
  call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17hcfa30c038bec254eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h1797c9c6ec304cc8E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.b = load i64, ptr %i.a, align 8, !range !43, !noundef !17
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !23, !noundef !17 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h48f6be3e9b76576cE.exit", !prof !44

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.e, i64 %i.g) #13
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h48f6be3e9b76576cE.exit": ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !17, !noundef !17
  %i.i = icmp ule i64 %1, %i.e
  call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17h3c6f676cadef7d19E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !17, !noundef !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !17 ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.d
  %i.f = load i64, ptr %0, align 8, !range !90, !noundef !17
  %i.g = sub i64 %i.f, %i.d
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17he7217def77bec1aaE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !17, !noundef !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !17 ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.d
  %i.f = load i64, ptr %0, align 8, !range !90, !noundef !17
  %i.g = sub i64 %i.f, %i.d
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17hf046416a355c780eE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !17, !noundef !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !17 ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load i64, ptr %0, align 8, !range !90, !noundef !17
  %i.g = sub i64 %i.f, %i.d
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h5d75001c19fed978E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !17, !noundef !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !17
  %i.e = tail call noundef zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4e0a0a13af15fe08E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h59a9c68dd0603e52E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !526
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h1797c9c6ec304cc8E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !526
  %i.h = load i64, ptr %i.a, align 8, !range !43, !noalias !526, !noundef !17
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !23, !noalias !526, !noundef !17 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h48f6be3e9b76576cE.exit.i", !prof !44

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !526
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.k, i64 %i.m) #13, !noalias !526
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h48f6be3e9b76576cE.exit.i": ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !526, !nonnull !17, !noundef !17 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !526
  store i64 %i.k, ptr %i.c, align 8, !noalias !526
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !526
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hf3728d45710e4894E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h48f6be3e9b76576cE.exit.i", %bb.d
  %.sroa.10.023.i = phi i64 [ %i.t, %bb.d ], [ %i.k, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h48f6be3e9b76576cE.exit.i" ]
  %.sroa.012.022.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h48f6be3e9b76576cE.exit.i" ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.v, %bb.d ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h48f6be3e9b76576cE.exit.i" ] ; 3 uses
  %i.t = add i64 %.sroa.10.023.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.022.i, %i.r
  br i1 %i.u, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hf3728d45710e4894E.exit", label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.022.i)
          to label %bb.d unwind label %bb.f, !noalias !530

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.10.021.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i, i64 24
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.10.021.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !530
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hf3728d45710e4894E.exit", label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14, !noalias !530
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.10.021.i, ptr %i.q, align 8, !noalias !526
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h506966ad25289d0aE"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #15
          to label %bb.g unwind label %bb.e, !noalias !530

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hf3728d45710e4894E.exit": ; preds = %.lr.ph.i, %bb.d, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h48f6be3e9b76576cE.exit.i"
  store i64 %i.g, ptr %i.q, align 8, !noalias !526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc0f4b0cad839cea5E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !17, !noundef !17
  %i.e = load i64, ptr %i.b, align 8, !noundef !17 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !535
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h1797c9c6ec304cc8E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !535
  %i.f = load i64, ptr %i.a, align 8, !range !43, !noalias !535, !noundef !17
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !23, !noalias !535, !noundef !17 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h977b0f3934ecbbd3E.exit", !prof !44

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !535
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.i, i64 %i.k) #13, !noalias !535
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h977b0f3934ecbbd3E.exit": ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !535, !nonnull !17, !noundef !17 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !535
  store i64 %i.i, ptr %0, align 8, !alias.scope !532, !noalias !537
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !532, !noalias !537
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.d, i64 %i.e, i1 false), !noalias !532
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !532, !noalias !537
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdfa6a891123987d3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !17, !noundef !17
  %i.e = load i64, ptr %i.b, align 8, !noundef !17 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !541
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h1797c9c6ec304cc8E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !541
  %i.f = load i64, ptr %i.a, align 8, !range !43, !noalias !541, !noundef !17
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !23, !noalias !541, !noundef !17 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h477dbea4cd5b0315E.exit", !prof !44

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !541
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.i, i64 %i.k) #13, !noalias !541
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h477dbea4cd5b0315E.exit": ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !541, !nonnull !17, !noundef !17 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !541
  store i64 %i.i, ptr %0, align 8, !alias.scope !538, !noalias !543
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !538, !noalias !543
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = shl i64 %i.e, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull readonly align 8 %i.d, i64 %i.p, i1 false), !noalias !538
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !538, !noalias !543
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17heb0eaf4aaa6e1311E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.8.sroa.0 = alloca [16 x i8], align 8     ; 5 uses
  %.sroa.11 = alloca [16 x i8], align 8           ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.k = load i64, ptr %i.h, align 8, !noundef !17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !544
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h1797c9c6ec304cc8E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.k, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48), !noalias !544
  %i.l = load i64, ptr %i.a, align 8, !range !43, !noalias !544, !noundef !17
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !23, !noalias !544, !noundef !17 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.m, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h48f6be3e9b76576cE.exit", !prof !44

bb.b:                                             ; preds = %bb.a
  %i.q = load i64, ptr %i.p, align 8, !noalias !544
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.o, i64 %i.q) #13, !noalias !544
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h48f6be3e9b76576cE.exit": ; preds = %bb.a
  %i.r = load ptr, ptr %i.p, align 8, !noalias !544, !nonnull !17, !noundef !17 ; 2 uses
  %i.s = icmp ule i64 %i.k, %i.o
  call void @llvm.assume(i1 %i.s), !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !544
  store i64 %i.o, ptr %i.g, align 8, !noalias !544
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.r, ptr %i.t, align 8, !noalias !544
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %i.k
  %i.w = icmp eq i64 %i.o, 0
  br i1 %i.w, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17ha82dbbe2c76c7c49E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h48f6be3e9b76576cE.exit"
  %.sroa.8.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.sroa.7.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.8.sroa.7.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %"_ZN67_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..clone..Clone$GT$5clone17h9bf5381cb27e8ed8E.exit"
  %.sroa.8.sroa.7.039 = phi i64 [ undef, %.lr.ph ], [ %.sroa.05.0, %"_ZN67_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..clone..Clone$GT$5clone17h9bf5381cb27e8ed8E.exit" ]
  %.sroa.04.038 = phi ptr [ %i.j, %.lr.ph ], [ %i.z, %"_ZN67_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..clone..Clone$GT$5clone17h9bf5381cb27e8ed8E.exit" ] ; 8 uses
  %.sroa.7.036 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %"_ZN67_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..clone..Clone$GT$5clone17h9bf5381cb27e8ed8E.exit" ] ; 3 uses
  %.sroa.10.035 = phi i64 [ %i.o, %.lr.ph ], [ %i.x, %"_ZN67_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..clone..Clone$GT$5clone17h9bf5381cb27e8ed8E.exit" ]
  %i.x = add i64 %.sroa.10.035, -1                ; 2 uses
  %i.y = icmp eq ptr %.sroa.04.038, %i.v
  br i1 %i.y, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17ha82dbbe2c76c7c49E.exit", label %bb.d

.loopexit:                                        ; preds = %bb.f, %bb.g, %bb.h, %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.038, i64 48
  %i.aa = add nuw nsw i64 %.sroa.7.036, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %i.ab = load i64, ptr %.sroa.04.038, align 8, !range !282, !alias.scope !548, !noalias !551, !noundef !17 ; 3 uses
  %i.ac = icmp ne i64 %i.ab, -9223372036854775806
  call void @llvm.assume(i1 %i.ac), !noalias !553
  %i.ad = xor i64 %i.ab, -9223372036854775808
  %i.ae = icmp slt i64 %i.ab, 0
  %i.af = select i1 %i.ae, i64 %i.ad, i64 2
  switch i64 %i.af, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.m
    i64 4, label %"_ZN67_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..clone..Clone$GT$5clone17h9bf5381cb27e8ed8E.exit"
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.038, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !554
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
          to label %.noexc unwind label %.loopexit, !inline_history !555

.noexc:                                           ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %.sroa.8.sroa.7.0.copyload21 = load i64, ptr %.sroa.8.sroa.7.0..sroa_idx20, align 8, !noalias !556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !554
  br label %"_ZN67_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..clone..Clone$GT$5clone17h9bf5381cb27e8ed8E.exit"

bb.g:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.038, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !554
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h59a9c68dd0603e52E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
          to label %.noexc1 unwind label %.loopexit, !inline_history !555

.noexc1:                                          ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %.sroa.8.sroa.7.0.copyload19 = load i64, ptr %.sroa.8.sroa.7.0..sroa_idx18, align 8, !noalias !556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !554
  br label %"_ZN67_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..clone..Clone$GT$5clone17h9bf5381cb27e8ed8E.exit"

bb.h:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !557), !noalias !553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !560
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.04.038)
          to label %.noexc2 unwind label %.loopexit, !inline_history !555

.noexc2:                                          ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.038, i64 24 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !range !23, !alias.scope !562, !noalias !563, !noundef !17
  %.not.i.i = icmp eq i64 %i.aj, -9223372036854775808
  br i1 %.not.i.i, label %"_ZN61_$LT$ninja_gen..input..Glob$u20$as$u20$core..clone..Clone$GT$5clone17h93fc481102d37dbaE.exit.i", label %bb.i

bb.i:                                             ; preds = %.noexc2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !560
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai)
          to label %bb.k unwind label %bb.j, !noalias !563, !inline_history !555

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.o unwind label %bb.l, !noalias !563, !inline_history !555

bb.k:                                             ; preds = %bb.i
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.b, align 8, !noalias !560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !560
  br label %"_ZN61_$LT$ninja_gen..input..Glob$u20$as$u20$core..clone..Clone$GT$5clone17h93fc481102d37dbaE.exit.i"

bb.l:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14, !noalias !563, !inline_history !555
  unreachable

"_ZN61_$LT$ninja_gen..input..Glob$u20$as$u20$core..clone..Clone$GT$5clone17h93fc481102d37dbaE.exit.i": ; preds = %bb.k, %.noexc2
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %bb.k ], [ -9223372036854775808, %.noexc2 ]
  %.sroa.015.0.copyload = load i64, ptr %i.c, align 8, !noalias !564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.416.0..sroa_idx, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !560
  br label %"_ZN67_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..clone..Clone$GT$5clone17h9bf5381cb27e8ed8E.exit"

bb.m:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.04.038, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !554
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17heb0eaf4aaa6e1311E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am)
          to label %.noexc3 unwind label %.loopexit, !inline_history !555

.noexc3:                                          ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %.sroa.8.sroa.7.0.copyload = load i64, ptr %.sroa.8.sroa.7.0..sroa_idx, align 8, !noalias !556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !554
  br label %"_ZN67_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..clone..Clone$GT$5clone17h9bf5381cb27e8ed8E.exit"

"_ZN67_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..clone..Clone$GT$5clone17h9bf5381cb27e8ed8E.exit": ; preds = %.noexc3, %"_ZN61_$LT$ninja_gen..input..Glob$u20$as$u20$core..clone..Clone$GT$5clone17h93fc481102d37dbaE.exit.i", %.noexc1, %.noexc, %bb.d
  %.sroa.8.sroa.7.0 = phi i64 [ -9223372036854775808, %.noexc ], [ -9223372036854775807, %.noexc1 ], [ %.sroa.015.0.copyload, %"_ZN61_$LT$ninja_gen..input..Glob$u20$as$u20$core..clone..Clone$GT$5clone17h93fc481102d37dbaE.exit.i" ], [ -9223372036854775805, %.noexc3 ], [ -9223372036854775804, %bb.d ]
  %.sroa.05.0 = phi i64 [ %.sroa.8.sroa.7.0.copyload21, %.noexc ], [ %.sroa.8.sroa.7.0.copyload19, %.noexc1 ], [ %.sroa.0.0.i.i, %"_ZN61_$LT$ninja_gen..input..Glob$u20$as$u20$core..clone..Clone$GT$5clone17h93fc481102d37dbaE.exit.i" ], [ %.sroa.8.sroa.7.0.copyload, %.noexc3 ], [ %.sroa.8.sroa.7.039, %bb.d ] ; 2 uses
  %i.an = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %.sroa.7.036 ; 4 uses
  store i64 %.sroa.8.sroa.7.0, ptr %i.an, align 8, !noalias !553
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.0, i64 16, i1 false)
  %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %.sroa.05.0, ptr %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx, align 8, !noalias !553
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  %i.ao = icmp eq i64 %i.x, 0
  br i1 %i.ao, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17ha82dbbe2c76c7c49E.exit", label %bb.c

bb.n:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14, !noalias !553, !inline_history !565
  unreachable

bb.o:                                             ; preds = %.loopexit, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.036, ptr %i.u, align 8, !noalias !553
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$ninja_gen..input..BuildInput$GT$$GT$17hf1b9606c54602cedE"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #15
          to label %bb.p unwind label %bb.n, !noalias !553, !inline_history !565

bb.p:                                             ; preds = %bb.o
  resume { ptr, i32 } %eh.lpad-body

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17ha82dbbe2c76c7c49E.exit": ; preds = %"_ZN67_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..clone..Clone$GT$5clone17h9bf5381cb27e8ed8E.exit", %bb.c, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h48f6be3e9b76576cE.exit"
  store i64 %i.k, ptr %i.u, align 8, !noalias !544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !544
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f10c33add262e61E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !17 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN4core3ptr78drop_in_place$LT$$u5b$regex_automata..util..determinize..state..State$u5d$$GT$17h7d3a0c455c79b248E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17he554cc7e4bdeb9b3E.exit.i"
  %.sroa.0.09.i = phi i64 [ %i.g, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17he554cc7e4bdeb9b3E.exit.i" ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw i64 %.sroa.0.09.i, 1             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !576, !nonnull !17, !noundef !17
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !579
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.b, label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17he554cc7e4bdeb9b3E.exit.i"

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17he554cc7e4bdeb9b3E.exit.i" unwind label %bb.c

"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17he554cc7e4bdeb9b3E.exit.i": ; preds = %bb.b, %.lr.ph.i
  %i.k = icmp eq i64 %i.g, %i.d
  br i1 %i.k, label %"_ZN4core3ptr78drop_in_place$LT$$u5b$regex_automata..util..determinize..state..State$u5d$$GT$17h7d3a0c455c79b248E.exit", label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.g, %i.d
  br i1 %i.m, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17he554cc7e4bdeb9b3E.exit8.i"
  %.sroa.0.110.i = phi i64 [ %i.o, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17he554cc7e4bdeb9b3E.exit8.i" ], [ %i.g, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.o = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !589, !nonnull !17, !noundef !17
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !590
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17he554cc7e4bdeb9b3E.exit8.i"

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17he554cc7e4bdeb9b3E.exit8.i" unwind label %bb.e

"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17he554cc7e4bdeb9b3E.exit8.i": ; preds = %bb.d, %.lr.ph12.i
  %i.s = icmp eq i64 %i.o, %i.d
  br i1 %i.s, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17he554cc7e4bdeb9b3E.exit8.i", %bb.c
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14
  unreachable

"_ZN4core3ptr78drop_in_place$LT$$u5b$regex_automata..util..determinize..state..State$u5d$$GT$17h7d3a0c455c79b248E.exit": ; preds = %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17he554cc7e4bdeb9b3E.exit.i", %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h112a73c15386b39aE"(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h153f074fb7b9bae7E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !17 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN4core3ptr50drop_in_place$LT$$u5b$camino..Utf8PathBuf$u5d$$GT$17h690cbcaf12af32b0E.exit", label %.lr.ph

"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit.i": ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %"_ZN4core3ptr50drop_in_place$LT$$u5b$camino..Utf8PathBuf$u5d$$GT$17h690cbcaf12af32b0E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit.i"
  %.sroa.0.0.i1 = phi i64 [ %i.h, %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit.i" ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit.i" unwind label %bb.b

"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit7.i": ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit7.i._crit_edge", label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit7.i._crit_edge", label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit7.i"
  %.sroa.0.1.i2 = phi i64 [ %i.i, %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit7.i" ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit7.i" unwind label %bb.c

"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit7.i._crit_edge": ; preds = %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit7.i", %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14
  unreachable

"_ZN4core3ptr50drop_in_place$LT$$u5b$camino..Utf8PathBuf$u5d$$GT$17h690cbcaf12af32b0E.exit": ; preds = %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h0d6cf8466d529f57E.exit.i", %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h26c117dc1c700a06E"(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h27a71206a361161dE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !17 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN4core3ptr51drop_in_place$LT$$u5b$globset..glob..Token$u5d$$GT$17h248a7dc96e4ea81eE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN4core3ptr41drop_in_place$LT$globset..glob..Token$GT$17hf90311ad9a9c531cE.exit"
  %.sroa.0.0.i7 = phi i64 [ %i.g, %"_ZN4core3ptr41drop_in_place$LT$globset..glob..Token$GT$17hf90311ad9a9c531cE.exit" ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i7 ; 3 uses
  %i.g = add nuw i64 %.sroa.0.0.i7, 1             ; 4 uses
  %i.h = load i64, ptr %i.f, align 8, !range !274, !alias.scope !591, !noundef !17 ; 3 uses
  %i.i = icmp ne i64 %i.h, -9223372036854775802
  tail call void @llvm.assume(i1 %i.i)
  %i.j = xor i64 %i.h, -9223372036854775808
  %i.k = icmp slt i64 %i.h, 0
  %i.l = select i1 %i.k, i64 %i.j, i64 6
  switch i64 %i.l, label %bb.b [
    i64 0, label %"_ZN4core3ptr41drop_in_place$LT$globset..glob..Token$GT$17hf90311ad9a9c531cE.exit"
    i64 1, label %"_ZN4core3ptr41drop_in_place$LT$globset..glob..Token$GT$17hf90311ad9a9c531cE.exit"
    i64 2, label %"_ZN4core3ptr41drop_in_place$LT$globset..glob..Token$GT$17hf90311ad9a9c531cE.exit"
    i64 3, label %"_ZN4core3ptr41drop_in_place$LT$globset..glob..Token$GT$17hf90311ad9a9c531cE.exit"
    i64 4, label %"_ZN4core3ptr41drop_in_place$LT$globset..glob..Token$GT$17hf90311ad9a9c531cE.exit"
    i64 5, label %"_ZN4core3ptr41drop_in_place$LT$globset..glob..Token$GT$17hf90311ad9a9c531cE.exit"
    i64 6, label %bb.e
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  invoke fastcc void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8a469a7de43f6c1cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$globset..glob..Tokens$GT$$GT$17h19c1a158c2b4c287E.exit.i" unwind label %bb.c, !inline_history !594

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h827afa43d93d6f19E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
end_hunk_0
