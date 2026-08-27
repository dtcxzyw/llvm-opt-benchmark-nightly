Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/milli-dcad8bcf446596ae.milli.ae659b5d16487f95-cgu.0?download=true
inline.NumInlined: 106527
inline.NumDeleted: 43100
loop-unroll.NumCompletelyUnrolled: 378
loop-unroll.NumRuntimeUnrolled: 1730
loop-unroll.NumUnrolled: 2138
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h948ebf6beab27f11E":bb.a
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !59

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17hd72f9d97844c90f8E"(ptr noalias noundef align 8 dereferenceable(56) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17h4dc7ab46b91706b1E.exit
    i64 0, label %bb.e
  ], !prof !276877

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.m, i64 noundef %i.n) #106
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @698, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8279) #106
  unreachable

_ZN8smallvec10infallible17h4dc7ab46b91706b1E.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @698, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8280) #106
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hd96f15123bc0fcf9E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !390529, !noalias !390532, !noundef !10 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !390529, !noalias !390532
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !59

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h176af8ccf754c7a1E"(ptr noalias noundef align 8 dereferenceable(88) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17h4dc7ab46b91706b1E.exit
    i64 0, label %bb.e
  ], !prof !276877

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.m, i64 noundef %i.n) #106
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @698, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8279) #106
  unreachable

_ZN8smallvec10infallible17h4dc7ab46b91706b1E.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @698, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8280) #106
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17he52f5836ff382ef9E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #21 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !390534, !noalias !390537, !noundef !10 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !390534, !noalias !390537
  %.sink10.i = select i1 %i.b, i64 %i.d, i64 %i.a ; 3 uses
  %i.e = icmp eq i64 %.sink10.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink10.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !59

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17hca64a418c0fce6c1E"(ptr noalias noundef align 8 dereferenceable(128) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17h4dc7ab46b91706b1E.exit
    i64 0, label %bb.e
  ], !prof !276877

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.l, i64 noundef %i.m) #106
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @698, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8279) #106
  unreachable

_ZN8smallvec10infallible17h4dc7ab46b91706b1E.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @698, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8280) #106
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h0825368f30585f8fE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load i64, ptr %0, align 8, !noundef !10  ; 6 uses
  %i.c = icmp ult i64 %i.b, 6                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !390539, !noalias !390542, !nonnull !10 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 5) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !10 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !59

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8281, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8282) #106
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 6
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.b, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h9893b7b03b096e9fE.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %_ZN8smallvec12layout_array17h9893b7b03b096e9fE.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.i = shl nuw i64 %1, 3                        ; 5 uses
  %i.j = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.j, label %_ZN8smallvec12layout_array17h9893b7b03b096e9fE.exit55.thread, label %bb.g, !prof !59

bb.g:                                             ; preds = %bb.f
  %i.k = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.i, i64 noundef 8), !noalias !390544
  br i1 %i.k, label %_ZN8smallvec12layout_array17h9893b7b03b096e9fE.exit, label %_ZN8smallvec12layout_array17h9893b7b03b096e9fE.exit55.thread

_ZN8smallvec12layout_array17h9893b7b03b096e9fE.exit: ; preds = %bb.g
  br i1 %i.c, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h9893b7b03b096e9fE.exit
  %i.l = shl nuw i64 %.sink.i, 3                  ; 2 uses
  %i.m = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.m, label %_ZN8smallvec12layout_array17h9893b7b03b096e9fE.exit55.thread, label %bb.i, !prof !59

bb.i:                                             ; preds = %bb.h
  %i.n = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.l, i64 noundef 8), !noalias !390547
  br i1 %i.n, label %_ZN8smallvec12layout_array17h9893b7b03b096e9fE.exit55, label %_ZN8smallvec12layout_array17h9893b7b03b096e9fE.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h9893b7b03b096e9fE.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #101
  %i.o = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #101 ; 3 uses
  %.not73 = icmp eq ptr %i.o, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17h9893b7b03b096e9fE.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h9893b7b03b096e9fE.exit55: ; preds = %bb.i
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.i) #101 ; 2 uses
  %.not72 = icmp eq ptr %i.p, null
  br i1 %.not72, label %_ZN8smallvec12layout_array17h9893b7b03b096e9fE.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h9893b7b03b096e9fE.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.o, %bb.l ], [ %i.p, %_ZN8smallvec12layout_array17h9893b7b03b096e9fE.exit55 ]
  store ptr %.sroa.021.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %_ZN8smallvec12layout_array17h9893b7b03b096e9fE.exit55.thread

bb.l:                                             ; preds = %bb.j
  %i.q = shl nuw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.e, i64 %i.q, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.r = shl nuw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.r, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.s = shl nuw i64 %.sink.i, 3                  ; 2 uses
  %i.t = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.t, label %bb.o, label %bb.n, !prof !59

bb.n:                                             ; preds = %bb.m
  %i.u = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.s, i64 noundef 8), !noalias !390550
  br i1 %i.u, label %_ZN8smallvec10deallocate17h3a12b776ab40ba5fE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !390553
  store i64 0, ptr %i.a, align 8, !noalias !390553
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2091, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8278) #106, !noalias !390553
  unreachable

_ZN8smallvec10deallocate17h3a12b776ab40ba5fE.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #101
  br label %_ZN8smallvec12layout_array17h9893b7b03b096e9fE.exit55.thread

_ZN8smallvec12layout_array17h9893b7b03b096e9fE.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h3a12b776ab40ba5fE.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h9893b7b03b096e9fE.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h3a12b776ab40ba5fE.exit ], [ %i.i, %bb.j ], [ undef, %bb.e ], [ %i.i, %_ZN8smallvec12layout_array17h9893b7b03b096e9fE.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h3a12b776ab40ba5fE.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h9893b7b03b096e9fE.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.v = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.w = insertvalue { i64, i64 } %i.v, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.w
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h176af8ccf754c7a1E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 8 uses
  %i.d = icmp ult i64 %i.c, 6                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 5
  %i.f = load ptr, ptr %0, align 8, !alias.scope !390556, !noalias !390559, !nonnull !10 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 5) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !59

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8281, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8282) #106
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 6
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 4                        ; 5 uses
  %i.k = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.k, label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55.thread, label %bb.g, !prof !59

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !390561
  br i1 %i.l, label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit, label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55.thread

_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit
  %i.m = shl nuw i64 %.sink.i, 4                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.n, label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55.thread, label %bb.i, !prof !59

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !390564
  br i1 %i.o, label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55, label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #101
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #101 ; 3 uses
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #101 ; 2 uses
  %.not73 = icmp eq ptr %i.q, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55.thread

bb.l:                                             ; preds = %bb.j
  %i.r = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %0, i64 %i.r, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.s = shl nuw i64 %.val, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.s, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.t = shl nuw i64 %.sink.i, 4                  ; 2 uses
  %i.u = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.u, label %bb.o, label %bb.n, !prof !59

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !390567
  br i1 %i.v, label %_ZN8smallvec10deallocate17h9e5d8035ea942780E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !390570
  store i64 0, ptr %i.a, align 8, !noalias !390570
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2091, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8278) #106, !noalias !390570
  unreachable

_ZN8smallvec10deallocate17h9e5d8035ea942780E.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #101
  br label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55.thread

_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h9e5d8035ea942780E.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h9e5d8035ea942780E.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h9e5d8035ea942780E.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h228a22d0ef20d1a2E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(168) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 8 uses
  %i.d = icmp ult i64 %i.c, 6                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 5
  %i.f = load ptr, ptr %0, align 8, !alias.scope !390573, !noalias !390576, !nonnull !10 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 5) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !59

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8281, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8282) #106
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 6
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h44f5d07191b8c8aaE.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17h44f5d07191b8c8aaE.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 5                        ; 5 uses
  %i.k = icmp ugt i64 %1, 576460752303423487
  br i1 %i.k, label %_ZN8smallvec12layout_array17h44f5d07191b8c8aaE.exit55.thread, label %bb.g, !prof !59

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !390578
  br i1 %i.l, label %_ZN8smallvec12layout_array17h44f5d07191b8c8aaE.exit, label %_ZN8smallvec12layout_array17h44f5d07191b8c8aaE.exit55.thread

_ZN8smallvec12layout_array17h44f5d07191b8c8aaE.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h44f5d07191b8c8aaE.exit
  %i.m = shl nuw i64 %.sink.i, 5                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 576460752303423487
  br i1 %i.n, label %_ZN8smallvec12layout_array17h44f5d07191b8c8aaE.exit55.thread, label %bb.i, !prof !59

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !390581
  br i1 %i.o, label %_ZN8smallvec12layout_array17h44f5d07191b8c8aaE.exit55, label %_ZN8smallvec12layout_array17h44f5d07191b8c8aaE.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h44f5d07191b8c8aaE.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #101
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #101 ; 3 uses
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17h44f5d07191b8c8aaE.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h44f5d07191b8c8aaE.exit55: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #101 ; 2 uses
  %.not73 = icmp eq ptr %i.q, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17h44f5d07191b8c8aaE.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h44f5d07191b8c8aaE.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17h44f5d07191b8c8aaE.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17h44f5d07191b8c8aaE.exit55.thread

bb.l:                                             ; preds = %bb.j
  %i.r = shl nuw nsw i64 %i.c, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %0, i64 %i.r, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.s = shl nuw i64 %.val, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.s, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.t = shl nuw i64 %.sink.i, 5                  ; 2 uses
  %i.u = icmp ugt i64 %i.c, 576460752303423487
  br i1 %i.u, label %bb.o, label %bb.n, !prof !59

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !390584
  br i1 %i.v, label %_ZN8smallvec10deallocate17hcd0c5d54393b1d33E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !390587
  store i64 0, ptr %i.a, align 8, !noalias !390587
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2091, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8278) #106, !noalias !390587
  unreachable

_ZN8smallvec10deallocate17hcd0c5d54393b1d33E.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #101
  br label %_ZN8smallvec12layout_array17h44f5d07191b8c8aaE.exit55.thread

_ZN8smallvec12layout_array17h44f5d07191b8c8aaE.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17hcd0c5d54393b1d33E.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h44f5d07191b8c8aaE.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17hcd0c5d54393b1d33E.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17h44f5d07191b8c8aaE.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17hcd0c5d54393b1d33E.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h44f5d07191b8c8aaE.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h2919a3a2bc77b84fE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 8 uses
  %i.d = icmp ult i64 %i.c, 9                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 8
  %i.f = load ptr, ptr %0, align 8, !alias.scope !390590, !noalias !390593, !nonnull !10 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !59

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8281, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8282) #106
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 9
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h9e1288594da1106eE.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17h9e1288594da1106eE.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 4                        ; 5 uses
  %i.k = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.k, label %_ZN8smallvec12layout_array17h9e1288594da1106eE.exit55.thread, label %bb.g, !prof !59

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !390595
  br i1 %i.l, label %_ZN8smallvec12layout_array17h9e1288594da1106eE.exit, label %_ZN8smallvec12layout_array17h9e1288594da1106eE.exit55.thread

_ZN8smallvec12layout_array17h9e1288594da1106eE.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h9e1288594da1106eE.exit
  %i.m = shl nuw i64 %.sink.i, 4                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.n, label %_ZN8smallvec12layout_array17h9e1288594da1106eE.exit55.thread, label %bb.i, !prof !59

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !390598
  br i1 %i.o, label %_ZN8smallvec12layout_array17h9e1288594da1106eE.exit55, label %_ZN8smallvec12layout_array17h9e1288594da1106eE.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h9e1288594da1106eE.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #101
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #101 ; 3 uses
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17h9e1288594da1106eE.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h9e1288594da1106eE.exit55: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #101 ; 2 uses
  %.not73 = icmp eq ptr %i.q, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17h9e1288594da1106eE.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h9e1288594da1106eE.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17h9e1288594da1106eE.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17h9e1288594da1106eE.exit55.thread

bb.l:                                             ; preds = %bb.j
  %i.r = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %0, i64 %i.r, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.s = shl nuw i64 %.val, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.s, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.t = shl nuw i64 %.sink.i, 4                  ; 2 uses
  %i.u = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.u, label %bb.o, label %bb.n, !prof !59

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !390601
  br i1 %i.v, label %_ZN8smallvec10deallocate17ha725b8e354c191ccE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !390604
  store i64 0, ptr %i.a, align 8, !noalias !390604
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2091, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8278) #106, !noalias !390604
  unreachable

_ZN8smallvec10deallocate17ha725b8e354c191ccE.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #101
  br label %_ZN8smallvec12layout_array17h9e1288594da1106eE.exit55.thread

_ZN8smallvec12layout_array17h9e1288594da1106eE.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17ha725b8e354c191ccE.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h9e1288594da1106eE.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17ha725b8e354c191ccE.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17h9e1288594da1106eE.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17ha725b8e354c191ccE.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h9e1288594da1106eE.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h34a4b91b2b59f5e8E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 8 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 8, !alias.scope !390607, !noalias !390610, !nonnull !10 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !59

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8281, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8282) #106
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 3
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %_ZN8smallvec12layout_array17hcef7541444ab7b83E.exit54.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17hcef7541444ab7b83E.exit54.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 3                        ; 5 uses
  %i.k = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.k, label %_ZN8smallvec12layout_array17hcef7541444ab7b83E.exit54.thread, label %bb.g, !prof !59

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !390612
  br i1 %i.l, label %_ZN8smallvec12layout_array17hcef7541444ab7b83E.exit, label %_ZN8smallvec12layout_array17hcef7541444ab7b83E.exit54.thread

_ZN8smallvec12layout_array17hcef7541444ab7b83E.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17hcef7541444ab7b83E.exit
  %i.m = shl nuw i64 %.sink.i, 3                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.n, label %_ZN8smallvec12layout_array17hcef7541444ab7b83E.exit54.thread, label %bb.i, !prof !59

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !390615
  br i1 %i.o, label %_ZN8smallvec12layout_array17hcef7541444ab7b83E.exit54, label %_ZN8smallvec12layout_array17hcef7541444ab7b83E.exit54.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17hcef7541444ab7b83E.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #101
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #101 ; 3 uses
  %.not73 = icmp eq ptr %i.p, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17hcef7541444ab7b83E.exit54.thread, label %bb.l

_ZN8smallvec12layout_array17hcef7541444ab7b83E.exit54: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #101 ; 2 uses
  %.not72 = icmp eq ptr %i.q, null
  br i1 %.not72, label %_ZN8smallvec12layout_array17hcef7541444ab7b83E.exit54.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17hcef7541444ab7b83E.exit54, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17hcef7541444ab7b83E.exit54 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17hcef7541444ab7b83E.exit54.thread

bb.l:                                             ; preds = %bb.j
  %i.r = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %0, i64 %i.r, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.s = shl nuw i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.s, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.t = shl nuw i64 %.sink.i, 3                  ; 2 uses
  %i.u = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.u, label %bb.o, label %bb.n, !prof !59

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !390618
  br i1 %i.v, label %_ZN8smallvec10deallocate17h8cb80c120dade579E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !390621
  store i64 0, ptr %i.a, align 8, !noalias !390621
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2091, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8278) #106, !noalias !390621
  unreachable

_ZN8smallvec10deallocate17h8cb80c120dade579E.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #101
  br label %_ZN8smallvec12layout_array17hcef7541444ab7b83E.exit54.thread

_ZN8smallvec12layout_array17hcef7541444ab7b83E.exit54.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h8cb80c120dade579E.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17hcef7541444ab7b83E.exit54
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h8cb80c120dade579E.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17hcef7541444ab7b83E.exit54 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h8cb80c120dade579E.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17hcef7541444ab7b83E.exit54 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17hb12d6f927fc42322E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 8 uses
  %i.d = icmp ult i64 %i.c, 4                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 3
  %i.f = load ptr, ptr %0, align 8, !alias.scope !390624, !noalias !390627, !nonnull !10 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 3) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !59

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8281, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8282) #106
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 4
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h80a19dfe50d967bdE.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17h80a19dfe50d967bdE.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 5                        ; 5 uses
  %i.k = icmp ugt i64 %1, 576460752303423487
  br i1 %i.k, label %_ZN8smallvec12layout_array17h80a19dfe50d967bdE.exit55.thread, label %bb.g, !prof !59

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !390629
  br i1 %i.l, label %_ZN8smallvec12layout_array17h80a19dfe50d967bdE.exit, label %_ZN8smallvec12layout_array17h80a19dfe50d967bdE.exit55.thread

_ZN8smallvec12layout_array17h80a19dfe50d967bdE.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h80a19dfe50d967bdE.exit
  %i.m = shl nuw i64 %.sink.i, 5                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 576460752303423487
  br i1 %i.n, label %_ZN8smallvec12layout_array17h80a19dfe50d967bdE.exit55.thread, label %bb.i, !prof !59

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !390632
  br i1 %i.o, label %_ZN8smallvec12layout_array17h80a19dfe50d967bdE.exit55, label %_ZN8smallvec12layout_array17h80a19dfe50d967bdE.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h80a19dfe50d967bdE.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #101
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #101 ; 3 uses
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17h80a19dfe50d967bdE.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h80a19dfe50d967bdE.exit55: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #101 ; 2 uses
  %.not73 = icmp eq ptr %i.q, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17h80a19dfe50d967bdE.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h80a19dfe50d967bdE.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17h80a19dfe50d967bdE.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17h80a19dfe50d967bdE.exit55.thread

bb.l:                                             ; preds = %bb.j
  %i.r = shl nuw nsw i64 %i.c, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %0, i64 %i.r, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.s = shl nuw i64 %.val, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.s, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.t = shl nuw i64 %.sink.i, 5                  ; 2 uses
  %i.u = icmp ugt i64 %i.c, 576460752303423487
  br i1 %i.u, label %bb.o, label %bb.n, !prof !59

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !390635
  br i1 %i.v, label %_ZN8smallvec10deallocate17he8034b1d31ef9782E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !390638
  store i64 0, ptr %i.a, align 8, !noalias !390638
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2091, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8278) #106, !noalias !390638
  unreachable

_ZN8smallvec10deallocate17he8034b1d31ef9782E.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #101
  br label %_ZN8smallvec12layout_array17h80a19dfe50d967bdE.exit55.thread

_ZN8smallvec12layout_array17h80a19dfe50d967bdE.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17he8034b1d31ef9782E.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h80a19dfe50d967bdE.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17he8034b1d31ef9782E.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17h80a19dfe50d967bdE.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17he8034b1d31ef9782E.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h80a19dfe50d967bdE.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17hca64a418c0fce6c1E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !10  ; 4 uses
  %i.c = icmp ult i64 %i.b, 6                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !390641, !noalias !390644, !nonnull !10 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 5) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !10 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !59

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8281, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8282) #106
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 6
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.b, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17hab669e3d9116dc6fE.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %_ZN8smallvec12layout_array17hab669e3d9116dc6fE.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 24) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 0         ; 7 uses
  %i.k = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.k, label %_ZN8smallvec12layout_array17hab669e3d9116dc6fE.exit55.thread, label %bb.g, !prof !59

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !390646
  br i1 %i.l, label %_ZN8smallvec12layout_array17hab669e3d9116dc6fE.exit, label %_ZN8smallvec12layout_array17hab669e3d9116dc6fE.exit55.thread

_ZN8smallvec12layout_array17hab669e3d9116dc6fE.exit: ; preds = %bb.g
  br i1 %i.c, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17hab669e3d9116dc6fE.exit
  %i.m = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink.i, i64 24) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 0         ; 4 uses
  %i.o = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.o, label %_ZN8smallvec12layout_array17hab669e3d9116dc6fE.exit55.thread, label %bb.i, !prof !59

bb.i:                                             ; preds = %bb.h
  %i.p = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.n, i64 noundef 8), !noalias !390649
  br i1 %i.p, label %_ZN8smallvec12layout_array17hab669e3d9116dc6fE.exit55, label %_ZN8smallvec12layout_array17hab669e3d9116dc6fE.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17hab669e3d9116dc6fE.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #101
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #101 ; 3 uses
  %.not70 = icmp eq ptr %i.q, null
  br i1 %.not70, label %_ZN8smallvec12layout_array17hab669e3d9116dc6fE.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17hab669e3d9116dc6fE.exit55: ; preds = %bb.i
  %i.r = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.j) #101 ; 2 uses
  %.not69 = icmp eq ptr %i.r, null
  br i1 %.not69, label %_ZN8smallvec12layout_array17hab669e3d9116dc6fE.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17hab669e3d9116dc6fE.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.q, %bb.l ], [ %i.r, %_ZN8smallvec12layout_array17hab669e3d9116dc6fE.exit55 ]
  store ptr %.sroa.021.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %_ZN8smallvec12layout_array17hab669e3d9116dc6fE.exit55.thread

bb.l:                                             ; preds = %bb.j
  %i.s = mul i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.e, i64 %i.s, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.t = mul nuw i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.t, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.u = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink.i, i64 24) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 0         ; 3 uses
  %i.w = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.w, label %bb.o, label %bb.n, !prof !59

bb.n:                                             ; preds = %bb.m
  %i.x = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.v, i64 noundef 8), !noalias !390652
  br i1 %i.x, label %_ZN8smallvec10deallocate17h6506f299cd68cad8E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !390655
  store i64 0, ptr %i.a, align 8, !noalias !390655
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.v, ptr %i.y, align 8, !noalias !390655
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2091, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8278) #106, !noalias !390655
  unreachable

_ZN8smallvec10deallocate17h6506f299cd68cad8E.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.v, i64 noundef 8) #101
  br label %_ZN8smallvec12layout_array17hab669e3d9116dc6fE.exit55.thread

_ZN8smallvec12layout_array17hab669e3d9116dc6fE.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h6506f299cd68cad8E.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17hab669e3d9116dc6fE.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h6506f299cd68cad8E.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17hab669e3d9116dc6fE.exit55 ], [ %i.j, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ %i.j, %bb.f ], [ %i.n, %bb.h ], [ %i.n, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h6506f299cd68cad8E.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17hab669e3d9116dc6fE.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.z = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.aa = insertvalue { i64, i64 } %i.z, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.aa
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17hd72f9d97844c90f8E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 8 uses
  %i.d = icmp ult i64 %i.c, 4                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 3
  %i.f = load ptr, ptr %0, align 8, !alias.scope !390658, !noalias !390661, !nonnull !10 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 3) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !59

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8281, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8282) #106
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 4
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 4                        ; 5 uses
  %i.k = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.k, label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55.thread, label %bb.g, !prof !59

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !390663
  br i1 %i.l, label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit, label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55.thread

_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit
  %i.m = shl nuw i64 %.sink.i, 4                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.n, label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55.thread, label %bb.i, !prof !59

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !390666
  br i1 %i.o, label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55, label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #101
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #101 ; 3 uses
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #101 ; 2 uses
  %.not73 = icmp eq ptr %i.q, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55.thread

bb.l:                                             ; preds = %bb.j
  %i.r = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %0, i64 %i.r, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.s = shl nuw i64 %.val, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.s, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.t = shl nuw i64 %.sink.i, 4                  ; 2 uses
  %i.u = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.u, label %bb.o, label %bb.n, !prof !59

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !390669
  br i1 %i.v, label %_ZN8smallvec10deallocate17h9e5d8035ea942780E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !390672
  store i64 0, ptr %i.a, align 8, !noalias !390672
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2091, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8278) #106, !noalias !390672
  unreachable

_ZN8smallvec10deallocate17h9e5d8035ea942780E.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #101
  br label %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55.thread

_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h9e5d8035ea942780E.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h9e5d8035ea942780E.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h9e5d8035ea942780E.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h22f81c86ce5db8bbE.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17hf1549728133825faE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 8 uses
  %i.d = icmp ult i64 %i.c, 4                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 3
  %i.f = load ptr, ptr %0, align 8, !alias.scope !390675, !noalias !390678, !nonnull !10 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 3) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !59

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8281, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8282) #106
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 4
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h978b383c6dd60f41E.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17h978b383c6dd60f41E.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 5                        ; 5 uses
  %i.k = icmp ugt i64 %1, 576460752303423487
  br i1 %i.k, label %_ZN8smallvec12layout_array17h978b383c6dd60f41E.exit55.thread, label %bb.g, !prof !59

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !390680
  br i1 %i.l, label %_ZN8smallvec12layout_array17h978b383c6dd60f41E.exit, label %_ZN8smallvec12layout_array17h978b383c6dd60f41E.exit55.thread

_ZN8smallvec12layout_array17h978b383c6dd60f41E.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h978b383c6dd60f41E.exit
  %i.m = shl nuw i64 %.sink.i, 5                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 576460752303423487
  br i1 %i.n, label %_ZN8smallvec12layout_array17h978b383c6dd60f41E.exit55.thread, label %bb.i, !prof !59

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !390683
  br i1 %i.o, label %_ZN8smallvec12layout_array17h978b383c6dd60f41E.exit55, label %_ZN8smallvec12layout_array17h978b383c6dd60f41E.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h978b383c6dd60f41E.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #101
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #101 ; 3 uses
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17h978b383c6dd60f41E.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h978b383c6dd60f41E.exit55: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #101 ; 2 uses
  %.not73 = icmp eq ptr %i.q, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17h978b383c6dd60f41E.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h978b383c6dd60f41E.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17h978b383c6dd60f41E.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17h978b383c6dd60f41E.exit55.thread

bb.l:                                             ; preds = %bb.j
  %i.r = shl nuw nsw i64 %i.c, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %0, i64 %i.r, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.s = shl nuw i64 %.val, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.s, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.t = shl nuw i64 %.sink.i, 5                  ; 2 uses
  %i.u = icmp ugt i64 %i.c, 576460752303423487
  br i1 %i.u, label %bb.o, label %bb.n, !prof !59

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !390686
  br i1 %i.v, label %_ZN8smallvec10deallocate17h975b0935983e5942E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !390689
  store i64 0, ptr %i.a, align 8, !noalias !390689
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2061, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2091, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8278) #106, !noalias !390689
  unreachable

_ZN8smallvec10deallocate17h975b0935983e5942E.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #101
  br label %_ZN8smallvec12layout_array17h978b383c6dd60f41E.exit55.thread

_ZN8smallvec12layout_array17h978b383c6dd60f41E.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h975b0935983e5942E.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h978b383c6dd60f41E.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h975b0935983e5942E.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17h978b383c6dd60f41E.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h975b0935983e5942E.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h978b383c6dd60f41E.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 16, -9223372036854775808) i64 @_ZN8thin_vec10alloc_size17h75962a2d2c78b15cE(i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %.split, label %.split7

.split:                                           ; preds = %bb.a
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #106
  unreachable

.split7:                                          ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %0, 576460752303423487
  br i1 %i.b, label %.split7.thread, label %bb.b, !prof !173140

bb.b:                                             ; preds = %.split7
  %i.c = shl nuw nsw i64 %0, 4
  %i.d = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.c, i64 16) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c, !prof !59

.split7.thread:                                   ; preds = %.split7
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #106
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = extractvalue { i64, i1 } %i.d, 0
  ret i64 %i.f

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #106
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN8thin_vec16ThinVec$LT$T$GT$7reserve17hfb25ffd743595f63E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !10 ; 6 uses
  %i.e = add i64 %i.b, %1                         ; 3 uses
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.c, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %i.e, %i.d
  br i1 %.not, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #106
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %i.d, 0
  %i.h = icmp slt i64 %i.d, 0                     ; 2 uses
  %i.i = shl nuw i64 %i.d, 1
  %spec.select = select i1 %i.h, i64 -1, i64 %i.i, !prof !59
  %.sroa.01.0 = select i1 %i.g, i64 4, i64 %spec.select
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.01.0, i64 %i.e) ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390692)
  %.not.i = icmp eq ptr %i.a, @_ZN8thin_vec12EMPTY_HEADER17h705e9b5c893b15cbE
  br i1 %.not.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.j = icmp slt i64 %.sroa.0.0.i, 0
  br i1 %i.j, label %.split.i.i.i, label %.split7.i.i.i

.split.i.i.i:                                     ; preds = %bb.e
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #106, !noalias !390692
  unreachable

.split7.i.i.i:                                    ; preds = %bb.e
  %i.k = icmp samesign ugt i64 %.sroa.0.0.i, 576460752303423487
  br i1 %i.k, label %.split7.thread.i.i.i, label %bb.f, !prof !173140

bb.f:                                             ; preds = %.split7.i.i.i
  %i.l = shl nuw nsw i64 %.sroa.0.0.i, 4
  %i.m = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.l, i64 16) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %bb.g, label %_ZN8thin_vec10alloc_size17h75962a2d2c78b15cE.exit.i.i, !prof !59

.split7.thread.i.i.i:                             ; preds = %.split7.i.i.i
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #106, !noalias !390692
  unreachable

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #106, !noalias !390692
  unreachable

_ZN8thin_vec10alloc_size17h75962a2d2c78b15cE.exit.i.i: ; preds = %bb.f
  %i.o = extractvalue { i64, i1 } %i.m, 0         ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #101, !noalias !390692
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #101, !noalias !390692 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %_ZN8thin_vec20header_with_capacity17h06f53e12dbc082f2E.exit.i, !prof !59

bb.h:                                             ; preds = %_ZN8thin_vec10alloc_size17h75962a2d2c78b15cE.exit.i.i
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.o) #106, !noalias !390692
  unreachable

_ZN8thin_vec20header_with_capacity17h06f53e12dbc082f2E.exit.i: ; preds = %_ZN8thin_vec10alloc_size17h75962a2d2c78b15cE.exit.i.i
  store i64 0, ptr %i.p, align 8, !noalias !390692
  br label %"_ZN8thin_vec16ThinVec$LT$T$GT$10reallocate17hcf7620061159af7aE.exit"

bb.i:                                             ; preds = %bb.d
  br i1 %i.h, label %.split.i.i, label %.split7.i.i

.split.i.i:                                       ; preds = %bb.i
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #106, !noalias !390692
  unreachable

.split7.i.i:                                      ; preds = %bb.i
  %i.r = icmp samesign ugt i64 %i.d, 576460752303423487
  br i1 %i.r, label %.split7.thread.i.i, label %bb.j, !prof !173140

bb.j:                                             ; preds = %.split7.i.i
  %i.s = shl nuw nsw i64 %i.d, 4
  %i.t = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.s, i64 16) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  br i1 %i.u, label %bb.k, label %_ZN8thin_vec10alloc_size17h75962a2d2c78b15cE.exit.i, !prof !59

.split7.thread.i.i:                               ; preds = %.split7.i.i
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #106, !noalias !390692
  unreachable

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #106, !noalias !390692
  unreachable

_ZN8thin_vec10alloc_size17h75962a2d2c78b15cE.exit.i: ; preds = %bb.j
  %i.v = extractvalue { i64, i1 } %i.t, 0
  %i.w = icmp slt i64 %.sroa.0.0.i, 0
  br i1 %i.w, label %.split.i3.i, label %.split7.i1.i

.split.i3.i:                                      ; preds = %_ZN8thin_vec10alloc_size17h75962a2d2c78b15cE.exit.i
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #106, !noalias !390692
  unreachable

.split7.i1.i:                                     ; preds = %_ZN8thin_vec10alloc_size17h75962a2d2c78b15cE.exit.i
  %i.x = icmp samesign ugt i64 %.sroa.0.0.i, 576460752303423487
  br i1 %i.x, label %.split7.thread.i2.i, label %bb.l, !prof !173140

bb.l:                                             ; preds = %.split7.i1.i
  %i.y = shl nuw nsw i64 %.sroa.0.0.i, 4
  %i.z = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.y, i64 16) ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.aa, label %bb.m, label %_ZN8thin_vec10alloc_size17h75962a2d2c78b15cE.exit4.i, !prof !59

.split7.thread.i2.i:                              ; preds = %.split7.i1.i
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #106, !noalias !390692
  unreachable

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #106, !noalias !390692
  unreachable

_ZN8thin_vec10alloc_size17h75962a2d2c78b15cE.exit4.i: ; preds = %bb.l
  %i.ab = extractvalue { i64, i1 } %i.z, 0
  %i.ac = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.a, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.ab) #101, !noalias !390692 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.n, label %"_ZN8thin_vec16ThinVec$LT$T$GT$10reallocate17hcf7620061159af7aE.exit", !prof !59

bb.n:                                             ; preds = %_ZN8thin_vec10alloc_size17h75962a2d2c78b15cE.exit4.i
  %i.ae = tail call fastcc noundef i64 @_ZN8thin_vec10alloc_size17h75962a2d2c78b15cE(i64 noundef %.sroa.0.0.i), !noalias !390692
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.ae) #106, !noalias !390692
  unreachable

"_ZN8thin_vec16ThinVec$LT$T$GT$10reallocate17hcf7620061159af7aE.exit": ; preds = %_ZN8thin_vec20header_with_capacity17h06f53e12dbc082f2E.exit.i, %_ZN8thin_vec10alloc_size17h75962a2d2c78b15cE.exit4.i
  %.sink9.i = phi ptr [ %i.p, %_ZN8thin_vec20header_with_capacity17h06f53e12dbc082f2E.exit.i ], [ %i.ac, %_ZN8thin_vec10alloc_size17h75962a2d2c78b15cE.exit4.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sink9.i, i64 8
  store i64 %.sroa.0.0.i, ptr %i.af, align 8, !noalias !390692
  store ptr %.sink9.i, ptr %0, align 8, !alias.scope !390692
end_hunk_0
