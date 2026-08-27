Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 151
loop-unroll.NumUnrolled: 260
begin_hunk_0_@"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h3d15ce580e52751fE":bb.a
    i64 0, label %bb.e
  ], !prof !38936

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.l, i64 noundef %i.m) #70
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h4aa1ab50c8db0554E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !60823, !noalias !60826, !noundef !3 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !60823, !noalias !60826
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !543

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !543

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h7fd4fe873fe34e88E"(ptr noalias noundef align 8 dereferenceable(104) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit
    i64 0, label %bb.e
  ], !prof !38936

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.m, i64 noundef %i.n) #70
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h63bbe9bb2dd81bc8E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !60828, !noalias !60831, !noundef !3 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !60828, !noalias !60831
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !543

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !543

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h190160ad49375ea4E"(ptr noalias noundef align 8 dereferenceable(88) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit
    i64 0, label %bb.e
  ], !prof !38936

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.m, i64 noundef %i.n) #70
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h682fdb4d34c47873E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !60833, !noalias !60836, !noundef !3 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 3                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !60833, !noalias !60836, !nonnull !3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !60833, !noalias !60836
  %.sink10.i = select i1 %i.c, i64 %i.g, i64 %i.b ; 3 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.t, label %bb.b, !prof !543

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.t, label %bb.c, !prof !543

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60838)
  %i.n = icmp ult i64 %i.b, 4                     ; 2 uses
  %.sink9.idx.i.i = select i1 %i.c, i64 16, i64 0
  %.sink9.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i.i
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 3) ; 2 uses
  %i.o = load i64, ptr %.sink9.i.i, align 8, !alias.scope !60838, !noundef !3 ; 5 uses
  %.not.i = icmp ult i64 %i.m, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !543

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70, !noalias !60838
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = icmp ult i64 %.sroa.02.0, 3
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not47.i = icmp eq i64 %i.b, %i.m
  br i1 %.not47.i, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit, label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.q = shl nuw i64 %i.m, 3                      ; 4 uses
  %i.r = icmp ugt i64 %.sroa.02.0, 2305843009213693950
  br i1 %i.r, label %bb.s, label %bb.i, !prof !543

bb.i:                                             ; preds = %bb.h
  %i.s = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.q, i64 noundef 8), !noalias !60841
  br i1 %i.s, label %_ZN8smallvec12layout_array17h70cb490de9595decE.exit.i, label %bb.s

_ZN8smallvec12layout_array17h70cb490de9595decE.exit.i: ; preds = %bb.i
  br i1 %i.n, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h70cb490de9595decE.exit.i
  %i.t = shl nuw i64 %.sink.i.i, 3                ; 2 uses
  %i.u = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.u, label %bb.s, label %bb.k, !prof !543

bb.k:                                             ; preds = %bb.j
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !60844
  br i1 %i.v, label %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55.i, label %bb.s

bb.l:                                             ; preds = %_ZN8smallvec12layout_array17h70cb490de9595decE.exit.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !60838
  %i.w = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef 8) #71, !noalias !60838 ; 3 uses
  %.not73.i = icmp eq ptr %i.w, null
  br i1 %.not73.i, label %bb.r, label %bb.n

_ZN8smallvec12layout_array17h70cb490de9595decE.exit55.i: ; preds = %bb.k
  %i.x = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.t, i64 noundef 8, i64 noundef %i.q) #71, !noalias !60838 ; 2 uses
  %.not72.i = icmp eq ptr %i.x, null
  br i1 %.not72.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55.i, %bb.n
  %.sroa.021.0.i = phi ptr [ %i.w, %bb.n ], [ %i.x, %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55.i ]
  store ptr %.sroa.021.0.i, ptr %i.d, align 8, !alias.scope !60838
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !60838
  store i64 %i.m, ptr %0, align 8, !alias.scope !60838
  br label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit

bb.n:                                             ; preds = %bb.l
  %i.y = shl nuw i64 %i.o, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.d, i64 %i.y, i1 false)
  br label %bb.m

bb.o:                                             ; preds = %bb.g
  %i.z = shl nuw i64 %i.o, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.e, i64 %i.z, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !60838
  %i.aa = shl nuw i64 %.sink.i.i, 3               ; 2 uses
  %i.ab = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.ab, label %bb.q, label %bb.p, !prof !543

bb.p:                                             ; preds = %bb.o
  %i.ac = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.aa, i64 noundef 8), !noalias !60847
  br i1 %i.ac, label %_ZN8smallvec10deallocate17h5e551d846ad5bc46E.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !60850
  store i64 0, ptr %i.a, align 8, !noalias !60850
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !60850
  unreachable

_ZN8smallvec10deallocate17h5e551d846ad5bc46E.exit.i: ; preds = %bb.p
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.aa, i64 noundef 8) #71, !noalias !60838
  br label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit

bb.r:                                             ; preds = %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55.i, %bb.l
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) 8, i64 noundef %i.q) #70
  unreachable

bb.s:                                             ; preds = %bb.k, %bb.h, %bb.i, %bb.j
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %_ZN8smallvec10deallocate17h5e551d846ad5bc46E.exit.i, %bb.g, %bb.f, %bb.m
  ret void

bb.t:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h88278aa364161e26E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !60853, !noalias !60856, !noundef !3 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 3
  %i.e = load ptr, ptr %0, align 8, !alias.scope !60853, !noalias !60856, !nonnull !3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !60853, !noalias !60856 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.t, label %bb.b, !prof !543

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.t, label %bb.c, !prof !543

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60858)
  %i.n = icmp ult i64 %i.c, 4                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 3) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !543

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70, !noalias !60858
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 3
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not47.i = icmp eq i64 %i.c, %i.m
  br i1 %.not47.i, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit, label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw i64 %i.m, 4                      ; 4 uses
  %i.q = icmp ugt i64 %.sroa.02.0, 1152921504606846974
  br i1 %i.q, label %bb.s, label %bb.i, !prof !543

bb.i:                                             ; preds = %bb.h
  %i.r = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.p, i64 noundef 8), !noalias !60861
  br i1 %i.r, label %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit.i, label %bb.s

_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit.i: ; preds = %bb.i
  br i1 %i.n, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit.i
  %i.s = shl nuw i64 %.sink.i.i, 4                ; 2 uses
  %i.t = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.t, label %bb.s, label %bb.k, !prof !543

bb.k:                                             ; preds = %bb.j
  %i.u = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.s, i64 noundef 8), !noalias !60864
  br i1 %i.u, label %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55.i, label %bb.s

bb.l:                                             ; preds = %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !60858
  %i.v = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #71, !noalias !60858 ; 3 uses
  %.not74.i = icmp eq ptr %i.v, null
  br i1 %.not74.i, label %bb.r, label %bb.n

_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55.i: ; preds = %bb.k
  %i.w = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #71, !noalias !60858 ; 2 uses
  %.not73.i = icmp eq ptr %i.w, null
  br i1 %.not73.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55.i, %bb.n
  %.sroa.021.0.i = phi ptr [ %i.v, %bb.n ], [ %i.w, %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55.i ]
  store ptr %.sroa.021.0.i, ptr %0, align 8, !alias.scope !60858
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !60858
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !60858
  br label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit

bb.n:                                             ; preds = %bb.l
  %i.x = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 dereferenceable(56) %0, i64 %i.x, i1 false)
  br label %bb.m

bb.o:                                             ; preds = %bb.g
  %i.y = shl nuw i64 %i.g, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(56) %0, ptr nonnull align 8 %i.e, i64 %i.y, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !60858
  %i.z = shl nuw i64 %.sink.i.i, 4                ; 2 uses
  %i.aa = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.aa, label %bb.q, label %bb.p, !prof !543

bb.p:                                             ; preds = %bb.o
  %i.ab = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.z, i64 noundef 8), !noalias !60867
  br i1 %i.ab, label %_ZN8smallvec10deallocate17h56b86286868a3b32E.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !60870
  store i64 0, ptr %i.a, align 8, !noalias !60870
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !60870
  unreachable

_ZN8smallvec10deallocate17h56b86286868a3b32E.exit.i: ; preds = %bb.p
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.z, i64 noundef 8) #71, !noalias !60858
  br label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit

bb.r:                                             ; preds = %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55.i, %bb.l
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) 8, i64 noundef %i.p) #70
  unreachable

bb.s:                                             ; preds = %bb.k, %bb.h, %bb.i, %bb.j
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %_ZN8smallvec10deallocate17h56b86286868a3b32E.exit.i, %bb.g, %bb.f, %bb.m
  ret void

bb.t:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h8b9c761871660c57E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !60873, !noalias !60876, !noundef !3 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !60873, !noalias !60876
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !543

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !543

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h17748f86337f1cc7E"(ptr noalias noundef align 8 dereferenceable(88) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit
    i64 0, label %bb.e
  ], !prof !38936

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.m, i64 noundef %i.n) #70
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h8e3b9de236c168a9E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !60878, !noalias !60881, !noundef !3 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !60878, !noalias !60881
  %.sink10.i = select i1 %i.b, i64 %i.d, i64 %i.a ; 3 uses
  %i.e = icmp eq i64 %.sink10.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !543

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink10.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !543

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17hcb5c7e2114791bcbE"(ptr noalias noundef align 8 dereferenceable(128) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit
    i64 0, label %bb.e
  ], !prof !38936

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.l, i64 noundef %i.m) #70
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h8f89ee794b88c4e7E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !60883, !noalias !60886, !noundef !3 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !60883, !noalias !60886
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !543

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !543

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17ha782776882f0f340E"(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit
    i64 0, label %bb.e
  ], !prof !38936

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.m, i64 noundef %i.n) #70
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hbffb1b3369b2802dE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !60888, !noalias !60891, !noundef !3 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 3
  %i.e = load ptr, ptr %0, align 8, !alias.scope !60888, !noalias !60891, !nonnull !3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !60888, !noalias !60891 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.t, label %bb.b, !prof !543

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.t, label %bb.c, !prof !543

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60893)
  %i.n = icmp ult i64 %i.c, 4                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 3) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !543

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70, !noalias !60893
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 3
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not47.i = icmp eq i64 %i.c, %i.m
  br i1 %.not47.i, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit, label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw i64 %i.m, 6                      ; 4 uses
  %i.q = icmp ugt i64 %.sroa.02.0, 288230376151711742
  br i1 %i.q, label %bb.s, label %bb.i, !prof !543

bb.i:                                             ; preds = %bb.h
  %i.r = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.p, i64 noundef 8), !noalias !60896
  br i1 %i.r, label %_ZN8smallvec12layout_array17h0bdbd3dbf9e4f1b6E.exit.i, label %bb.s

_ZN8smallvec12layout_array17h0bdbd3dbf9e4f1b6E.exit.i: ; preds = %bb.i
  br i1 %i.n, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h0bdbd3dbf9e4f1b6E.exit.i
  %i.s = shl nuw i64 %.sink.i.i, 6                ; 2 uses
  %i.t = icmp ugt i64 %i.c, 288230376151711743
  br i1 %i.t, label %bb.s, label %bb.k, !prof !543

bb.k:                                             ; preds = %bb.j
  %i.u = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.s, i64 noundef 8), !noalias !60899
  br i1 %i.u, label %_ZN8smallvec12layout_array17h0bdbd3dbf9e4f1b6E.exit55.i, label %bb.s

bb.l:                                             ; preds = %_ZN8smallvec12layout_array17h0bdbd3dbf9e4f1b6E.exit.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !60893
  %i.v = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #71, !noalias !60893 ; 3 uses
  %.not74.i = icmp eq ptr %i.v, null
  br i1 %.not74.i, label %bb.r, label %bb.n

_ZN8smallvec12layout_array17h0bdbd3dbf9e4f1b6E.exit55.i: ; preds = %bb.k
  %i.w = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #71, !noalias !60893 ; 2 uses
  %.not73.i = icmp eq ptr %i.w, null
  br i1 %.not73.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %_ZN8smallvec12layout_array17h0bdbd3dbf9e4f1b6E.exit55.i, %bb.n
  %.sroa.021.0.i = phi ptr [ %i.v, %bb.n ], [ %i.w, %_ZN8smallvec12layout_array17h0bdbd3dbf9e4f1b6E.exit55.i ]
  store ptr %.sroa.021.0.i, ptr %0, align 8, !alias.scope !60893
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !60893
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !60893
  br label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit

bb.n:                                             ; preds = %bb.l
  %i.x = shl nuw nsw i64 %i.c, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 dereferenceable(200) %0, i64 %i.x, i1 false)
  br label %bb.m

bb.o:                                             ; preds = %bb.g
  %i.y = shl nuw i64 %i.g, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(200) %0, ptr nonnull align 8 %i.e, i64 %i.y, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !60893
  %i.z = shl nuw i64 %.sink.i.i, 6                ; 2 uses
  %i.aa = icmp ugt i64 %i.c, 288230376151711743
  br i1 %i.aa, label %bb.q, label %bb.p, !prof !543

bb.p:                                             ; preds = %bb.o
  %i.ab = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.z, i64 noundef 8), !noalias !60902
  br i1 %i.ab, label %_ZN8smallvec10deallocate17h2ea8d161515f4487E.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !60905
  store i64 0, ptr %i.a, align 8, !noalias !60905
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !60905
  unreachable

_ZN8smallvec10deallocate17h2ea8d161515f4487E.exit.i: ; preds = %bb.p
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.z, i64 noundef 8) #71, !noalias !60893
  br label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit

bb.r:                                             ; preds = %_ZN8smallvec12layout_array17h0bdbd3dbf9e4f1b6E.exit55.i, %bb.l
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) 8, i64 noundef %i.p) #70
  unreachable

bb.s:                                             ; preds = %bb.k, %bb.h, %bb.i, %bb.j
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %_ZN8smallvec10deallocate17h2ea8d161515f4487E.exit.i, %bb.g, %bb.f, %bb.m
  ret void

bb.t:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hc05ef3f181f2b1f3E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !60908, !noalias !60911, !noundef !3 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !60908, !noalias !60911
  %.sink10.i = select i1 %i.b, i64 %i.d, i64 %i.a ; 3 uses
  %i.e = icmp eq i64 %.sink10.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !543

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink10.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !543

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h6a7ce39196f2cd19E"(ptr noalias noundef align 8 dereferenceable(48) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit
    i64 0, label %bb.e
  ], !prof !38936

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.l, i64 noundef %i.m) #70
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hd2a0c2f0acb3311eE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !60913, !noalias !60916, !noundef !3 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !60913, !noalias !60916
  %.sink10.i = select i1 %i.b, i64 %i.d, i64 %i.a ; 3 uses
  %i.e = icmp eq i64 %.sink10.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !543

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink10.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !543

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17ha54bb9632012b893E"(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit
    i64 0, label %bb.e
  ], !prof !38936

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.l, i64 noundef %i.m) #70
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hdf857f9cf64b6542E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !60918, !noalias !60921, !noundef !3 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !60918, !noalias !60921
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !543

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !543

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17ha945915ad6025e23E"(ptr noalias noundef align 8 dereferenceable(104) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit
    i64 0, label %bb.e
  ], !prof !38936

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.m, i64 noundef %i.n) #70
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17he748b4e6b2327cb3E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !60923, !noalias !60926, !noundef !3 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 3
  %i.e = load ptr, ptr %0, align 8, !alias.scope !60923, !noalias !60926, !nonnull !3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !60923, !noalias !60926 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.t, label %bb.b, !prof !543

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.t, label %bb.c, !prof !543

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60928)
  %i.n = icmp ult i64 %i.c, 4                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 3) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !543

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70, !noalias !60928
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 3
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not47.i = icmp eq i64 %i.c, %i.m
  br i1 %.not47.i, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit, label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw i64 %i.m, 4                      ; 4 uses
  %i.q = icmp ugt i64 %.sroa.02.0, 1152921504606846974
  br i1 %i.q, label %bb.s, label %bb.i, !prof !543

bb.i:                                             ; preds = %bb.h
  %i.r = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.p, i64 noundef 8), !noalias !60931
  br i1 %i.r, label %_ZN8smallvec12layout_array17h3ff5946ceb4f59e9E.exit.i, label %bb.s

_ZN8smallvec12layout_array17h3ff5946ceb4f59e9E.exit.i: ; preds = %bb.i
  br i1 %i.n, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h3ff5946ceb4f59e9E.exit.i
  %i.s = shl nuw i64 %.sink.i.i, 4                ; 2 uses
  %i.t = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.t, label %bb.s, label %bb.k, !prof !543

bb.k:                                             ; preds = %bb.j
  %i.u = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.s, i64 noundef 8), !noalias !60934
  br i1 %i.u, label %_ZN8smallvec12layout_array17h3ff5946ceb4f59e9E.exit55.i, label %bb.s

bb.l:                                             ; preds = %_ZN8smallvec12layout_array17h3ff5946ceb4f59e9E.exit.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !60928
  %i.v = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #71, !noalias !60928 ; 3 uses
  %.not74.i = icmp eq ptr %i.v, null
  br i1 %.not74.i, label %bb.r, label %bb.n

_ZN8smallvec12layout_array17h3ff5946ceb4f59e9E.exit55.i: ; preds = %bb.k
  %i.w = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #71, !noalias !60928 ; 2 uses
  %.not73.i = icmp eq ptr %i.w, null
  br i1 %.not73.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %_ZN8smallvec12layout_array17h3ff5946ceb4f59e9E.exit55.i, %bb.n
  %.sroa.021.0.i = phi ptr [ %i.v, %bb.n ], [ %i.w, %_ZN8smallvec12layout_array17h3ff5946ceb4f59e9E.exit55.i ]
  store ptr %.sroa.021.0.i, ptr %0, align 8, !alias.scope !60928
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !60928
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !60928
  br label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit

bb.n:                                             ; preds = %bb.l
  %i.x = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 dereferenceable(56) %0, i64 %i.x, i1 false)
  br label %bb.m

bb.o:                                             ; preds = %bb.g
  %i.y = shl nuw i64 %i.g, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(56) %0, ptr nonnull align 8 %i.e, i64 %i.y, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !60928
  %i.z = shl nuw i64 %.sink.i.i, 4                ; 2 uses
  %i.aa = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.aa, label %bb.q, label %bb.p, !prof !543

bb.p:                                             ; preds = %bb.o
  %i.ab = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.z, i64 noundef 8), !noalias !60937
  br i1 %i.ab, label %_ZN8smallvec10deallocate17ha90c4e8f94d77cc8E.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !60940
  store i64 0, ptr %i.a, align 8, !noalias !60940
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !60940
  unreachable

_ZN8smallvec10deallocate17ha90c4e8f94d77cc8E.exit.i: ; preds = %bb.p
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.z, i64 noundef 8) #71, !noalias !60928
  br label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit

bb.r:                                             ; preds = %_ZN8smallvec12layout_array17h3ff5946ceb4f59e9E.exit55.i, %bb.l
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) 8, i64 noundef %i.p) #70
  unreachable

bb.s:                                             ; preds = %bb.k, %bb.h, %bb.i, %bb.j
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %_ZN8smallvec10deallocate17ha90c4e8f94d77cc8E.exit.i, %bb.g, %bb.f, %bb.m
  ret void

bb.t:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hf62baccad7dc5550E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !60943, !noalias !60946, !noundef !3 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !60943, !noalias !60946
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !543

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !543

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h2c06d5cb91f00a26E"(ptr noalias noundef align 8 dereferenceable(136) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit
    i64 0, label %bb.e
  ], !prof !38936

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.m, i64 noundef %i.n) #70
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$4push17h48468056d07ca05aE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !60948, !noalias !60951, !noundef !3 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 5                     ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !alias.scope !60948, !noalias !60951, !nonnull !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sink10.i = select i1 %i.c, ptr %i.d, ptr %0
  %.sink9.i = select i1 %i.c, ptr %i.e, ptr %i.a  ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 5)
  %i.f = load i64, ptr %.sink9.i, align 8, !noundef !3 ; 2 uses
  %i.g = icmp eq i64 %i.f, %.sink.i
  br i1 %i.g, label %bb.c, label %bb.d, !prof !543

bb.b:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %1)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit" unwind label %bb.f, !inline_history !1419

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h1ab5bb65b1b551c5E"(ptr noalias noundef align 8 dereferenceable(88) %0)
          to label %bb.e unwind label %bb.b

bb.d:                                             ; preds = %bb.a, %bb.e
  %i.i = phi i64 [ %.pre, %bb.e ], [ %i.f, %bb.a ]
  %.sroa.01.0 = phi ptr [ %i.e, %bb.e ], [ %.sink9.i, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.m, %bb.e ], [ %.sink10.i, %bb.a ]
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.k = load i64, ptr %.sroa.01.0, align 8, !noundef !3
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.01.0, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %.pre = load i64, ptr %i.e, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$4push17h4d33697b487932d3E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !60953, !noalias !60956, !noundef !3 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 5                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !60953, !noalias !60956, !nonnull !3
  %.sink10.i = select i1 %i.b, ptr %i.d, ptr %i.c
  %.sink9.idx.i = select i1 %i.b, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %i.e = load i64, ptr %.sink9.i, align 8, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, %.sink.i
  br i1 %i.f, label %bb.b, label %bb.c, !prof !543

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hc05ef3f181f2b1f3E"(ptr noalias noundef align 8 dereferenceable(48) %0)
  %i.g = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre = load i64, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %.pre, %bb.b ], [ %i.e, %bb.a ]
  %.sroa.01.0 = phi ptr [ %i.h, %bb.b ], [ %.sink9.i, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %.sink10.i, %bb.a ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %i.i
  store ptr %1, ptr %i.j, align 8
  %i.k = load i64, ptr %.sroa.01.0, align 8, !noundef !3
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.01.0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$4push17h6ab1f4df851e8d01E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !60958, !noalias !60961, !noundef !3 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 3                     ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !alias.scope !60958, !noalias !60961, !nonnull !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sink10.i = select i1 %i.c, ptr %i.d, ptr %0
  %.sink9.i = select i1 %i.c, ptr %i.e, ptr %i.a  ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 3)
  %i.f = load i64, ptr %.sink9.i, align 8, !noundef !3 ; 2 uses
  %i.g = icmp eq i64 %i.f, %.sink.i
  br i1 %i.g, label %bb.c, label %bb.d, !prof !543

bb.b:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr76drop_in_place$LT$$LP$rhai..ast..ident..Ident$C$rhai..ast..expr..Expr$RP$$GT$17hc79a89ea2bae1012E"(ptr noalias noundef align 8 dereferenceable(32) %1) #72
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h4aa1ab50c8db0554E"(ptr noalias noundef align 8 dereferenceable(104) %0)
          to label %bb.e unwind label %bb.b

bb.d:                                             ; preds = %bb.a, %bb.e
  %i.i = phi i64 [ %.pre, %bb.e ], [ %i.f, %bb.a ]
  %.sroa.01.0 = phi ptr [ %i.e, %bb.e ], [ %.sink9.i, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.m, %bb.e ], [ %.sink10.i, %bb.a ]
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.k = load i64, ptr %.sroa.01.0, align 8, !noundef !3
  %i.l = add i64 %i.k, 1
end_hunk_0
begin_hunk_1_@"_ZN8smallvec17SmallVec$LT$A$GT$6retain17hb919296c1dd353aaE":bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !61068, !noalias !61066, !noundef !3
  %i.aa = sitofp i64 %i.z to double
  %i.ab = fcmp ult double %i.i, %i.aa
  br i1 %i.ab, label %"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$17h91929727d15fd3d8E.exit.thread", label %"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$17h91929727d15fd3d8E.exit"

.split18:                                         ; preds = %bb.e
  %i.ac = load i64, ptr %i.t, align 8, !alias.scope !61068, !noalias !61066, !noundef !3
  %i.ad = sitofp i64 %i.ac to double
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !61068, !noalias !61066, !noundef !3
  %i.ag = sitofp i64 %i.af to double
  %i.ah = fcmp oge double %i.i, %i.ad
  %i.ai = fcmp olt double %i.i, %i.ag
  %.sroa.06.0.i2.i.i.i = and i1 %i.ah, %i.ai
  br i1 %.sroa.06.0.i2.i.i.i, label %bb.i, label %"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$17h91929727d15fd3d8E.exit.thread"

bb.g:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !61071, !noalias !61076, !noundef !3
  %.not.i2.i.i = icmp sgt i64 %i.ak, %.cast
  br i1 %.not.i2.i.i, label %"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$17h91929727d15fd3d8E.exit.thread", label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.al = icmp eq i8 %i.v, 0
  %i.am = load i64, ptr %.sroa.3.0.i.i.i.i, align 8, !alias.scope !61078, !noalias !61066, !noundef !3 ; 2 uses
  br i1 %i.al, label %.split17, label %.split

.split17:                                         ; preds = %bb.h
  %.not19 = icmp slt i64 %i.am, %.cast
  br i1 %.not19, label %"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$17h91929727d15fd3d8E.exit.thread", label %bb.i

.split:                                           ; preds = %bb.h
  %i.an = icmp sgt i64 %i.am, %.cast
  br i1 %i.an, label %bb.i, label %"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$17h91929727d15fd3d8E.exit.thread"

.split16:                                         ; preds = %bb.d
  %i.ao = load i64, ptr %i.t, align 8, !alias.scope !61079, !noalias !61084, !noundef !3
  %.not.i3.i.i = icmp sle i64 %i.ao, %.cast
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !61086, !noalias !61066
  %i.ar = icmp sgt i64 %i.aq, %.cast
  %.sroa.06.0.i4.i.i = select i1 %.not.i3.i.i, i1 %i.ar, i1 false
  br i1 %.sroa.06.0.i4.i.i, label %bb.i, label %"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$17h91929727d15fd3d8E.exit.thread"

"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$17h91929727d15fd3d8E.exit": ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !61068, !noalias !61066, !noundef !3
  %i.au = sitofp i64 %i.at to double
  %i.av = fcmp ugt double %i.i, %i.au
  br i1 %i.av, label %"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$17h91929727d15fd3d8E.exit.thread", label %bb.i

"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$17h91929727d15fd3d8E.exit.thread": ; preds = %bb.g, %bb.f, %"_ZN83_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h31515d33253697f3E.exit", %.split18, %.split17, %.split16, %.split, %"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$17h91929727d15fd3d8E.exit"
  %i.aw = add i64 %.sroa.0.033, 1
  br label %bb.j

bb.i:                                             ; preds = %.split18, %.split17, %.split16, %.split, %"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$17h91929727d15fd3d8E.exit"
  %.not = icmp eq i64 %.sroa.0.033, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.n, %bb.i, %"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$17h91929727d15fd3d8E.exit.thread"
  %.sroa.0.1 = phi i64 [ %.sroa.0.033, %bb.n ], [ 0, %bb.i ], [ %i.aw, %"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$17h91929727d15fd3d8E.exit.thread" ] ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %.sink10.i
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b

bb.k:                                             ; preds = %bb.i
  %.val = load i64, ptr %i.e, align 8
  %.val71 = load i64, ptr %i.b, align 8
  %i.ax = select i1 %i.p, i64 %.val, i64 %.val71  ; 4 uses
  %i.ay = sub i64 %.sroa.05.032, %.sroa.0.033     ; 3 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = icmp ult i64 %.sroa.05.032, %i.ax
  br i1 %i.ba, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.k
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ay, i64 noundef %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3269) #70
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %.sink10.i.i, i64 %i.ay ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.o:                                             ; preds = %bb.l
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.05.032, i64 noundef %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3269) #70
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$8truncate17hb51e593ce4c6a8cdE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !61087, !noalias !61090, !noundef !3
  %i.c = icmp ugt i64 %i.b, 3                     ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !alias.scope !61087, !noalias !61090, !nonnull !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sink10.i = select i1 %i.c, ptr %i.d, ptr %0
  %.sink9.i = select i1 %i.c, ptr %i.e, ptr %i.a  ; 3 uses
  %i.f = load i64, ptr %.sink9.i, align 8, !noundef !3 ; 2 uses
  %i.g = icmp ult i64 %1, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.h = phi i64 [ %i.k, %.lr.ph ], [ %i.f, %bb.a ]
  %i.i = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.i, ptr %.sink9.i, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i, i64 %i.i
  tail call void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
  %i.k = load i64, ptr %.sink9.i, align 8, !noundef !3 ; 2 uses
  %i.l = icmp ult i64 %1, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h17748f86337f1cc7E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 8 uses
  %i.d = icmp ult i64 %i.c, 6                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 5
  %i.f = load ptr, ptr %0, align 8, !alias.scope !61092, !noalias !61095, !nonnull !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 5) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !543

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 6
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 4                        ; 5 uses
  %i.k = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.k, label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55.thread, label %bb.g, !prof !543

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !61097
  br i1 %i.l, label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit, label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55.thread

_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit
  %i.m = shl nuw i64 %.sink.i, 4                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.n, label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55.thread, label %bb.i, !prof !543

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !61100
  br i1 %i.o, label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55, label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #71 ; 3 uses
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #71 ; 2 uses
  %.not73 = icmp eq ptr %i.q, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55.thread

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
  br i1 %i.u, label %bb.o, label %bb.n, !prof !543

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !61103
  br i1 %i.v, label %_ZN8smallvec10deallocate17h048d79add73fd24bE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61106
  store i64 0, ptr %i.a, align 8, !noalias !61106
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !61106
  unreachable

_ZN8smallvec10deallocate17h048d79add73fd24bE.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #71
  br label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55.thread

_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h048d79add73fd24bE.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h048d79add73fd24bE.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h048d79add73fd24bE.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h190160ad49375ea4E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 8 uses
  %i.d = icmp ult i64 %i.c, 6                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 5
  %i.f = load ptr, ptr %0, align 8, !alias.scope !61109, !noalias !61112, !nonnull !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 5) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !543

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 6
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17hebea445fad3ada04E.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17hebea445fad3ada04E.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 4                        ; 5 uses
  %i.k = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.k, label %_ZN8smallvec12layout_array17hebea445fad3ada04E.exit55.thread, label %bb.g, !prof !543

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !61114
  br i1 %i.l, label %_ZN8smallvec12layout_array17hebea445fad3ada04E.exit, label %_ZN8smallvec12layout_array17hebea445fad3ada04E.exit55.thread

_ZN8smallvec12layout_array17hebea445fad3ada04E.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17hebea445fad3ada04E.exit
  %i.m = shl nuw i64 %.sink.i, 4                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.n, label %_ZN8smallvec12layout_array17hebea445fad3ada04E.exit55.thread, label %bb.i, !prof !543

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !61117
  br i1 %i.o, label %_ZN8smallvec12layout_array17hebea445fad3ada04E.exit55, label %_ZN8smallvec12layout_array17hebea445fad3ada04E.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17hebea445fad3ada04E.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #71 ; 3 uses
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17hebea445fad3ada04E.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17hebea445fad3ada04E.exit55: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #71 ; 2 uses
  %.not73 = icmp eq ptr %i.q, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17hebea445fad3ada04E.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17hebea445fad3ada04E.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17hebea445fad3ada04E.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17hebea445fad3ada04E.exit55.thread

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
  br i1 %i.u, label %bb.o, label %bb.n, !prof !543

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !61120
  br i1 %i.v, label %_ZN8smallvec10deallocate17h42eca7cd5e8e008fE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61123
  store i64 0, ptr %i.a, align 8, !noalias !61123
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !61123
  unreachable

_ZN8smallvec10deallocate17h42eca7cd5e8e008fE.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #71
  br label %_ZN8smallvec12layout_array17hebea445fad3ada04E.exit55.thread

_ZN8smallvec12layout_array17hebea445fad3ada04E.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h42eca7cd5e8e008fE.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17hebea445fad3ada04E.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h42eca7cd5e8e008fE.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17hebea445fad3ada04E.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h42eca7cd5e8e008fE.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17hebea445fad3ada04E.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h2399773c242ef9f5E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load i64, ptr %0, align 8, !noundef !3   ; 6 uses
  %i.c = icmp ult i64 %i.b, 6                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !61126, !noalias !61129, !nonnull !3 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 5) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !3 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !543

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 6
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.b, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.i = shl nuw i64 %1, 3                        ; 5 uses
  %i.j = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.j, label %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55.thread, label %bb.g, !prof !543

bb.g:                                             ; preds = %bb.f
  %i.k = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.i, i64 noundef 8), !noalias !61131
  br i1 %i.k, label %_ZN8smallvec12layout_array17h70cb490de9595decE.exit, label %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55.thread

_ZN8smallvec12layout_array17h70cb490de9595decE.exit: ; preds = %bb.g
  br i1 %i.c, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h70cb490de9595decE.exit
  %i.l = shl nuw i64 %.sink.i, 3                  ; 2 uses
  %i.m = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.m, label %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55.thread, label %bb.i, !prof !543

bb.i:                                             ; preds = %bb.h
  %i.n = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.l, i64 noundef 8), !noalias !61134
  br i1 %i.n, label %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55, label %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h70cb490de9595decE.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.o = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #71 ; 3 uses
  %.not73 = icmp eq ptr %i.o, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h70cb490de9595decE.exit55: ; preds = %bb.i
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.i) #71 ; 2 uses
  %.not72 = icmp eq ptr %i.p, null
  br i1 %.not72, label %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.o, %bb.l ], [ %i.p, %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55 ]
  store ptr %.sroa.021.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55.thread

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
  br i1 %i.t, label %bb.o, label %bb.n, !prof !543

bb.n:                                             ; preds = %bb.m
  %i.u = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.s, i64 noundef 8), !noalias !61137
  br i1 %i.u, label %_ZN8smallvec10deallocate17h5e551d846ad5bc46E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61140
  store i64 0, ptr %i.a, align 8, !noalias !61140
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !61140
  unreachable

_ZN8smallvec10deallocate17h5e551d846ad5bc46E.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #71
  br label %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55.thread

_ZN8smallvec12layout_array17h70cb490de9595decE.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h5e551d846ad5bc46E.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h5e551d846ad5bc46E.exit ], [ %i.i, %bb.j ], [ undef, %bb.e ], [ %i.i, %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h5e551d846ad5bc46E.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.v = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.w = insertvalue { i64, i64 } %i.v, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.w
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h2bbbe43b6f424a07E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 8 uses
  %i.d = icmp ult i64 %i.c, 6                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 5
  %i.f = load ptr, ptr %0, align 8, !alias.scope !61143, !noalias !61146, !nonnull !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 5) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !543

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 6
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h3cce3163c2e313d9E.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17h3cce3163c2e313d9E.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 4                        ; 5 uses
  %i.k = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.k, label %_ZN8smallvec12layout_array17h3cce3163c2e313d9E.exit55.thread, label %bb.g, !prof !543

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !61148
  br i1 %i.l, label %_ZN8smallvec12layout_array17h3cce3163c2e313d9E.exit, label %_ZN8smallvec12layout_array17h3cce3163c2e313d9E.exit55.thread

_ZN8smallvec12layout_array17h3cce3163c2e313d9E.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h3cce3163c2e313d9E.exit
  %i.m = shl nuw i64 %.sink.i, 4                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.n, label %_ZN8smallvec12layout_array17h3cce3163c2e313d9E.exit55.thread, label %bb.i, !prof !543

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !61151
  br i1 %i.o, label %_ZN8smallvec12layout_array17h3cce3163c2e313d9E.exit55, label %_ZN8smallvec12layout_array17h3cce3163c2e313d9E.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h3cce3163c2e313d9E.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #71 ; 3 uses
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17h3cce3163c2e313d9E.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h3cce3163c2e313d9E.exit55: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #71 ; 2 uses
  %.not73 = icmp eq ptr %i.q, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17h3cce3163c2e313d9E.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h3cce3163c2e313d9E.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17h3cce3163c2e313d9E.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17h3cce3163c2e313d9E.exit55.thread

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
  br i1 %i.u, label %bb.o, label %bb.n, !prof !543

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !61154
  br i1 %i.v, label %_ZN8smallvec10deallocate17h70e978d8534e0dfeE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61157
  store i64 0, ptr %i.a, align 8, !noalias !61157
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !61157
  unreachable

_ZN8smallvec10deallocate17h70e978d8534e0dfeE.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #71
  br label %_ZN8smallvec12layout_array17h3cce3163c2e313d9E.exit55.thread

_ZN8smallvec12layout_array17h3cce3163c2e313d9E.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h70e978d8534e0dfeE.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h3cce3163c2e313d9E.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h70e978d8534e0dfeE.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17h3cce3163c2e313d9E.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h70e978d8534e0dfeE.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h3cce3163c2e313d9E.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h2c06d5cb91f00a26E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 8 uses
  %i.d = icmp ult i64 %i.c, 9                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 8
  %i.f = load ptr, ptr %0, align 8, !alias.scope !61160, !noalias !61163, !nonnull !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !543

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 9
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 4                        ; 5 uses
  %i.k = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.k, label %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55.thread, label %bb.g, !prof !543

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !61165
  br i1 %i.l, label %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit, label %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55.thread

_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit
  %i.m = shl nuw i64 %.sink.i, 4                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.n, label %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55.thread, label %bb.i, !prof !543

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !61168
  br i1 %i.o, label %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55, label %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #71 ; 3 uses
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #71 ; 2 uses
  %.not73 = icmp eq ptr %i.q, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55.thread

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
  br i1 %i.u, label %bb.o, label %bb.n, !prof !543

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !61171
  br i1 %i.v, label %_ZN8smallvec10deallocate17h56b86286868a3b32E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61174
  store i64 0, ptr %i.a, align 8, !noalias !61174
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !61174
  unreachable

_ZN8smallvec10deallocate17h56b86286868a3b32E.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #71
  br label %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55.thread

_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h56b86286868a3b32E.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h56b86286868a3b32E.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h56b86286868a3b32E.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h6826cbd2915f87a7E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load i64, ptr %0, align 8, !noundef !3   ; 6 uses
  %i.c = icmp ult i64 %i.b, 4                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !61177, !noalias !61180, !nonnull !3 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 3) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !3 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !543

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 4
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.b, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h47c5a60ae29fbbefE.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %_ZN8smallvec12layout_array17h47c5a60ae29fbbefE.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.i = shl nuw i64 %1, 3                        ; 5 uses
  %i.j = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.j, label %_ZN8smallvec12layout_array17h47c5a60ae29fbbefE.exit55.thread, label %bb.g, !prof !543

bb.g:                                             ; preds = %bb.f
  %i.k = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.i, i64 noundef 8), !noalias !61182
  br i1 %i.k, label %_ZN8smallvec12layout_array17h47c5a60ae29fbbefE.exit, label %_ZN8smallvec12layout_array17h47c5a60ae29fbbefE.exit55.thread

_ZN8smallvec12layout_array17h47c5a60ae29fbbefE.exit: ; preds = %bb.g
  br i1 %i.c, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h47c5a60ae29fbbefE.exit
  %i.l = shl nuw i64 %.sink.i, 3                  ; 2 uses
  %i.m = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.m, label %_ZN8smallvec12layout_array17h47c5a60ae29fbbefE.exit55.thread, label %bb.i, !prof !543

bb.i:                                             ; preds = %bb.h
  %i.n = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.l, i64 noundef 8), !noalias !61185
  br i1 %i.n, label %_ZN8smallvec12layout_array17h47c5a60ae29fbbefE.exit55, label %_ZN8smallvec12layout_array17h47c5a60ae29fbbefE.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h47c5a60ae29fbbefE.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.o = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #71 ; 3 uses
  %.not73 = icmp eq ptr %i.o, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17h47c5a60ae29fbbefE.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h47c5a60ae29fbbefE.exit55: ; preds = %bb.i
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.i) #71 ; 2 uses
  %.not72 = icmp eq ptr %i.p, null
  br i1 %.not72, label %_ZN8smallvec12layout_array17h47c5a60ae29fbbefE.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h47c5a60ae29fbbefE.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.o, %bb.l ], [ %i.p, %_ZN8smallvec12layout_array17h47c5a60ae29fbbefE.exit55 ]
  store ptr %.sroa.021.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %_ZN8smallvec12layout_array17h47c5a60ae29fbbefE.exit55.thread

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
  br i1 %i.t, label %bb.o, label %bb.n, !prof !543

bb.n:                                             ; preds = %bb.m
  %i.u = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.s, i64 noundef 8), !noalias !61188
  br i1 %i.u, label %_ZN8smallvec10deallocate17h088761cd13ec31f4E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61191
  store i64 0, ptr %i.a, align 8, !noalias !61191
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !61191
  unreachable

_ZN8smallvec10deallocate17h088761cd13ec31f4E.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #71
  br label %_ZN8smallvec12layout_array17h47c5a60ae29fbbefE.exit55.thread

_ZN8smallvec12layout_array17h47c5a60ae29fbbefE.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h088761cd13ec31f4E.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h47c5a60ae29fbbefE.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h088761cd13ec31f4E.exit ], [ %i.i, %bb.j ], [ undef, %bb.e ], [ %i.i, %_ZN8smallvec12layout_array17h47c5a60ae29fbbefE.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h088761cd13ec31f4E.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h47c5a60ae29fbbefE.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.v = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.w = insertvalue { i64, i64 } %i.v, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.w
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h6a7ce39196f2cd19E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load i64, ptr %0, align 8, !noundef !3   ; 6 uses
  %i.c = icmp ult i64 %i.b, 6                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !61194, !noalias !61197, !nonnull !3 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 5) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !3 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !543

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 6
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.b, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.i = shl nuw i64 %1, 3                        ; 5 uses
  %i.j = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.j, label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55.thread, label %bb.g, !prof !543

bb.g:                                             ; preds = %bb.f
  %i.k = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.i, i64 noundef 8), !noalias !61199
  br i1 %i.k, label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit, label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55.thread

_ZN8smallvec12layout_array17h9fae30b690112230E.exit: ; preds = %bb.g
  br i1 %i.c, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h9fae30b690112230E.exit
  %i.l = shl nuw i64 %.sink.i, 3                  ; 2 uses
  %i.m = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.m, label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55.thread, label %bb.i, !prof !543

bb.i:                                             ; preds = %bb.h
  %i.n = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.l, i64 noundef 8), !noalias !61202
  br i1 %i.n, label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55, label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h9fae30b690112230E.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.o = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #71 ; 3 uses
  %.not73 = icmp eq ptr %i.o, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h9fae30b690112230E.exit55: ; preds = %bb.i
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.i) #71 ; 2 uses
  %.not72 = icmp eq ptr %i.p, null
  br i1 %.not72, label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.o, %bb.l ], [ %i.p, %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55 ]
  store ptr %.sroa.021.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55.thread

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
  br i1 %i.t, label %bb.o, label %bb.n, !prof !543

bb.n:                                             ; preds = %bb.m
  %i.u = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.s, i64 noundef 8), !noalias !61205
  br i1 %i.u, label %_ZN8smallvec10deallocate17h2e1ac77ce42ffb3dE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61208
  store i64 0, ptr %i.a, align 8, !noalias !61208
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !61208
  unreachable

_ZN8smallvec10deallocate17h2e1ac77ce42ffb3dE.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #71
  br label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55.thread

_ZN8smallvec12layout_array17h9fae30b690112230E.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h2e1ac77ce42ffb3dE.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h2e1ac77ce42ffb3dE.exit ], [ %i.i, %bb.j ], [ undef, %bb.e ], [ %i.i, %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h2e1ac77ce42ffb3dE.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.v = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.w = insertvalue { i64, i64 } %i.v, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.w
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h7fd4fe873fe34e88E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 8 uses
  %i.d = icmp ult i64 %i.c, 4                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 3
  %i.f = load ptr, ptr %0, align 8, !alias.scope !61211, !noalias !61214, !nonnull !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 3) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !543

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 4
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h5986a558cf32b9bbE.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17h5986a558cf32b9bbE.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 5                        ; 5 uses
  %i.k = icmp ugt i64 %1, 576460752303423487
  br i1 %i.k, label %_ZN8smallvec12layout_array17h5986a558cf32b9bbE.exit55.thread, label %bb.g, !prof !543

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !61216
  br i1 %i.l, label %_ZN8smallvec12layout_array17h5986a558cf32b9bbE.exit, label %_ZN8smallvec12layout_array17h5986a558cf32b9bbE.exit55.thread

_ZN8smallvec12layout_array17h5986a558cf32b9bbE.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h5986a558cf32b9bbE.exit
  %i.m = shl nuw i64 %.sink.i, 5                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 576460752303423487
  br i1 %i.n, label %_ZN8smallvec12layout_array17h5986a558cf32b9bbE.exit55.thread, label %bb.i, !prof !543

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !61219
  br i1 %i.o, label %_ZN8smallvec12layout_array17h5986a558cf32b9bbE.exit55, label %_ZN8smallvec12layout_array17h5986a558cf32b9bbE.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h5986a558cf32b9bbE.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #71 ; 3 uses
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17h5986a558cf32b9bbE.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h5986a558cf32b9bbE.exit55: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #71 ; 2 uses
  %.not73 = icmp eq ptr %i.q, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17h5986a558cf32b9bbE.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h5986a558cf32b9bbE.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17h5986a558cf32b9bbE.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17h5986a558cf32b9bbE.exit55.thread

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
  br i1 %i.u, label %bb.o, label %bb.n, !prof !543

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !61222
  br i1 %i.v, label %_ZN8smallvec10deallocate17h335fcf12759c9102E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61225
  store i64 0, ptr %i.a, align 8, !noalias !61225
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !61225
  unreachable

_ZN8smallvec10deallocate17h335fcf12759c9102E.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #71
  br label %_ZN8smallvec12layout_array17h5986a558cf32b9bbE.exit55.thread

_ZN8smallvec12layout_array17h5986a558cf32b9bbE.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h335fcf12759c9102E.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h5986a558cf32b9bbE.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h335fcf12759c9102E.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17h5986a558cf32b9bbE.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h335fcf12759c9102E.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h5986a558cf32b9bbE.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h852b20137a0655bdE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(168) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 8 uses
  %i.d = icmp ult i64 %i.c, 6                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 5
  %i.f = load ptr, ptr %0, align 8, !alias.scope !61228, !noalias !61231, !nonnull !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 5) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !543

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 6
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17hc99ae8c2f4612390E.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17hc99ae8c2f4612390E.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 5                        ; 5 uses
  %i.k = icmp ugt i64 %1, 576460752303423487
  br i1 %i.k, label %_ZN8smallvec12layout_array17hc99ae8c2f4612390E.exit55.thread, label %bb.g, !prof !543

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !61233
  br i1 %i.l, label %_ZN8smallvec12layout_array17hc99ae8c2f4612390E.exit, label %_ZN8smallvec12layout_array17hc99ae8c2f4612390E.exit55.thread

_ZN8smallvec12layout_array17hc99ae8c2f4612390E.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17hc99ae8c2f4612390E.exit
  %i.m = shl nuw i64 %.sink.i, 5                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 576460752303423487
  br i1 %i.n, label %_ZN8smallvec12layout_array17hc99ae8c2f4612390E.exit55.thread, label %bb.i, !prof !543

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !61236
  br i1 %i.o, label %_ZN8smallvec12layout_array17hc99ae8c2f4612390E.exit55, label %_ZN8smallvec12layout_array17hc99ae8c2f4612390E.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17hc99ae8c2f4612390E.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #71 ; 3 uses
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17hc99ae8c2f4612390E.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17hc99ae8c2f4612390E.exit55: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #71 ; 2 uses
  %.not73 = icmp eq ptr %i.q, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17hc99ae8c2f4612390E.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17hc99ae8c2f4612390E.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17hc99ae8c2f4612390E.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17hc99ae8c2f4612390E.exit55.thread

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
  br i1 %i.u, label %bb.o, label %bb.n, !prof !543

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !61239
  br i1 %i.v, label %_ZN8smallvec10deallocate17ha10757294b39162aE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61242
  store i64 0, ptr %i.a, align 8, !noalias !61242
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !61242
  unreachable

_ZN8smallvec10deallocate17ha10757294b39162aE.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #71
  br label %_ZN8smallvec12layout_array17hc99ae8c2f4612390E.exit55.thread

_ZN8smallvec12layout_array17hc99ae8c2f4612390E.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17ha10757294b39162aE.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17hc99ae8c2f4612390E.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17ha10757294b39162aE.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17hc99ae8c2f4612390E.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17ha10757294b39162aE.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17hc99ae8c2f4612390E.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h874d9d0ccac7f0deE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 8 uses
  %i.d = icmp ult i64 %i.c, 6                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 5
  %i.f = load ptr, ptr %0, align 8, !alias.scope !61245, !noalias !61248, !nonnull !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 5) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !543

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 6
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17he994f7984840b6e8E.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17he994f7984840b6e8E.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 4                        ; 5 uses
  %i.k = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.k, label %_ZN8smallvec12layout_array17he994f7984840b6e8E.exit55.thread, label %bb.g, !prof !543

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !61250
  br i1 %i.l, label %_ZN8smallvec12layout_array17he994f7984840b6e8E.exit, label %_ZN8smallvec12layout_array17he994f7984840b6e8E.exit55.thread

_ZN8smallvec12layout_array17he994f7984840b6e8E.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17he994f7984840b6e8E.exit
  %i.m = shl nuw i64 %.sink.i, 4                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.n, label %_ZN8smallvec12layout_array17he994f7984840b6e8E.exit55.thread, label %bb.i, !prof !543

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !61253
  br i1 %i.o, label %_ZN8smallvec12layout_array17he994f7984840b6e8E.exit55, label %_ZN8smallvec12layout_array17he994f7984840b6e8E.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17he994f7984840b6e8E.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #71 ; 3 uses
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17he994f7984840b6e8E.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17he994f7984840b6e8E.exit55: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #71 ; 2 uses
  %.not73 = icmp eq ptr %i.q, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17he994f7984840b6e8E.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17he994f7984840b6e8E.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17he994f7984840b6e8E.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17he994f7984840b6e8E.exit55.thread

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
  br i1 %i.u, label %bb.o, label %bb.n, !prof !543

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !61256
  br i1 %i.v, label %_ZN8smallvec10deallocate17h0e9e405ce735212fE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61259
  store i64 0, ptr %i.a, align 8, !noalias !61259
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !61259
  unreachable

_ZN8smallvec10deallocate17h0e9e405ce735212fE.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #71
  br label %_ZN8smallvec12layout_array17he994f7984840b6e8E.exit55.thread

_ZN8smallvec12layout_array17he994f7984840b6e8E.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h0e9e405ce735212fE.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17he994f7984840b6e8E.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h0e9e405ce735212fE.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17he994f7984840b6e8E.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h0e9e405ce735212fE.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17he994f7984840b6e8E.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17ha54bb9632012b893E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load i64, ptr %0, align 8, !noundef !3   ; 6 uses
  %i.c = icmp ult i64 %i.b, 4                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !61262, !noalias !61265, !nonnull !3 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 3) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !3 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !543

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 4
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.b, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.i = shl nuw i64 %1, 3                        ; 5 uses
  %i.j = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.j, label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55.thread, label %bb.g, !prof !543

bb.g:                                             ; preds = %bb.f
  %i.k = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.i, i64 noundef 8), !noalias !61267
  br i1 %i.k, label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit, label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55.thread

_ZN8smallvec12layout_array17h9fae30b690112230E.exit: ; preds = %bb.g
  br i1 %i.c, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h9fae30b690112230E.exit
  %i.l = shl nuw i64 %.sink.i, 3                  ; 2 uses
  %i.m = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.m, label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55.thread, label %bb.i, !prof !543

bb.i:                                             ; preds = %bb.h
  %i.n = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.l, i64 noundef 8), !noalias !61270
  br i1 %i.n, label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55, label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h9fae30b690112230E.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.o = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #71 ; 3 uses
  %.not73 = icmp eq ptr %i.o, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h9fae30b690112230E.exit55: ; preds = %bb.i
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.i) #71 ; 2 uses
  %.not72 = icmp eq ptr %i.p, null
  br i1 %.not72, label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.o, %bb.l ], [ %i.p, %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55 ]
  store ptr %.sroa.021.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55.thread

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
  br i1 %i.t, label %bb.o, label %bb.n, !prof !543

bb.n:                                             ; preds = %bb.m
  %i.u = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.s, i64 noundef 8), !noalias !61273
  br i1 %i.u, label %_ZN8smallvec10deallocate17h2e1ac77ce42ffb3dE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61276
  store i64 0, ptr %i.a, align 8, !noalias !61276
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !61276
  unreachable

_ZN8smallvec10deallocate17h2e1ac77ce42ffb3dE.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #71
  br label %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55.thread

_ZN8smallvec12layout_array17h9fae30b690112230E.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h2e1ac77ce42ffb3dE.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h2e1ac77ce42ffb3dE.exit ], [ %i.i, %bb.j ], [ undef, %bb.e ], [ %i.i, %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h2e1ac77ce42ffb3dE.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h9fae30b690112230E.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.v = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.w = insertvalue { i64, i64 } %i.v, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.w
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17ha782776882f0f340E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 8 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 8, !alias.scope !61279, !noalias !61282, !nonnull !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !543

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 3
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %_ZN8smallvec12layout_array17hd4d73efa944e2708E.exit54.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17hd4d73efa944e2708E.exit54.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 3                        ; 5 uses
  %i.k = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.k, label %_ZN8smallvec12layout_array17hd4d73efa944e2708E.exit54.thread, label %bb.g, !prof !543

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !61284
  br i1 %i.l, label %_ZN8smallvec12layout_array17hd4d73efa944e2708E.exit, label %_ZN8smallvec12layout_array17hd4d73efa944e2708E.exit54.thread

_ZN8smallvec12layout_array17hd4d73efa944e2708E.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17hd4d73efa944e2708E.exit
  %i.m = shl nuw i64 %.sink.i, 3                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.n, label %_ZN8smallvec12layout_array17hd4d73efa944e2708E.exit54.thread, label %bb.i, !prof !543

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !61287
  br i1 %i.o, label %_ZN8smallvec12layout_array17hd4d73efa944e2708E.exit54, label %_ZN8smallvec12layout_array17hd4d73efa944e2708E.exit54.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17hd4d73efa944e2708E.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #71 ; 3 uses
  %.not73 = icmp eq ptr %i.p, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17hd4d73efa944e2708E.exit54.thread, label %bb.l

_ZN8smallvec12layout_array17hd4d73efa944e2708E.exit54: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #71 ; 2 uses
  %.not72 = icmp eq ptr %i.q, null
  br i1 %.not72, label %_ZN8smallvec12layout_array17hd4d73efa944e2708E.exit54.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17hd4d73efa944e2708E.exit54, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17hd4d73efa944e2708E.exit54 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17hd4d73efa944e2708E.exit54.thread

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
  br i1 %i.u, label %bb.o, label %bb.n, !prof !543

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !61290
  br i1 %i.v, label %_ZN8smallvec10deallocate17h12995084b874ee28E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61293
  store i64 0, ptr %i.a, align 8, !noalias !61293
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !61293
  unreachable

_ZN8smallvec10deallocate17h12995084b874ee28E.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #71
  br label %_ZN8smallvec12layout_array17hd4d73efa944e2708E.exit54.thread

_ZN8smallvec12layout_array17hd4d73efa944e2708E.exit54.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h12995084b874ee28E.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17hd4d73efa944e2708E.exit54
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h12995084b874ee28E.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17hd4d73efa944e2708E.exit54 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h12995084b874ee28E.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17hd4d73efa944e2708E.exit54 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17ha945915ad6025e23E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 8 uses
  %i.d = icmp ult i64 %i.c, 4                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 3
  %i.f = load ptr, ptr %0, align 8, !alias.scope !61296, !noalias !61299, !nonnull !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 3) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !543

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 4
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h7136da1a62083aaeE.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17h7136da1a62083aaeE.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 5                        ; 5 uses
  %i.k = icmp ugt i64 %1, 576460752303423487
  br i1 %i.k, label %_ZN8smallvec12layout_array17h7136da1a62083aaeE.exit55.thread, label %bb.g, !prof !543

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !61301
  br i1 %i.l, label %_ZN8smallvec12layout_array17h7136da1a62083aaeE.exit, label %_ZN8smallvec12layout_array17h7136da1a62083aaeE.exit55.thread

_ZN8smallvec12layout_array17h7136da1a62083aaeE.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h7136da1a62083aaeE.exit
  %i.m = shl nuw i64 %.sink.i, 5                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 576460752303423487
  br i1 %i.n, label %_ZN8smallvec12layout_array17h7136da1a62083aaeE.exit55.thread, label %bb.i, !prof !543

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !61304
  br i1 %i.o, label %_ZN8smallvec12layout_array17h7136da1a62083aaeE.exit55, label %_ZN8smallvec12layout_array17h7136da1a62083aaeE.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h7136da1a62083aaeE.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #71 ; 3 uses
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17h7136da1a62083aaeE.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h7136da1a62083aaeE.exit55: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #71 ; 2 uses
  %.not73 = icmp eq ptr %i.q, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17h7136da1a62083aaeE.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h7136da1a62083aaeE.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17h7136da1a62083aaeE.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17h7136da1a62083aaeE.exit55.thread

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
  br i1 %i.u, label %bb.o, label %bb.n, !prof !543

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !61307
  br i1 %i.v, label %_ZN8smallvec10deallocate17hd06091e3b42a9abaE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61310
  store i64 0, ptr %i.a, align 8, !noalias !61310
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !61310
  unreachable

_ZN8smallvec10deallocate17hd06091e3b42a9abaE.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #71
  br label %_ZN8smallvec12layout_array17h7136da1a62083aaeE.exit55.thread

_ZN8smallvec12layout_array17h7136da1a62083aaeE.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17hd06091e3b42a9abaE.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h7136da1a62083aaeE.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17hd06091e3b42a9abaE.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17h7136da1a62083aaeE.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17hd06091e3b42a9abaE.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h7136da1a62083aaeE.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17habd2df5c6ae809c3E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 8 uses
  %i.d = icmp ult i64 %i.c, 4                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 3
  %i.f = load ptr, ptr %0, align 8, !alias.scope !61313, !noalias !61316, !nonnull !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 3) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !543

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 4
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 4                        ; 5 uses
  %i.k = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.k, label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55.thread, label %bb.g, !prof !543

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !61318
  br i1 %i.l, label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit, label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55.thread

_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit
  %i.m = shl nuw i64 %.sink.i, 4                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.n, label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55.thread, label %bb.i, !prof !543

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !61321
  br i1 %i.o, label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55, label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #71 ; 3 uses
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #71 ; 2 uses
  %.not73 = icmp eq ptr %i.q, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55.thread

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
  br i1 %i.u, label %bb.o, label %bb.n, !prof !543

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !61324
  br i1 %i.v, label %_ZN8smallvec10deallocate17h048d79add73fd24bE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61327
  store i64 0, ptr %i.a, align 8, !noalias !61327
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !61327
  unreachable

_ZN8smallvec10deallocate17h048d79add73fd24bE.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #71
  br label %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55.thread

_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h048d79add73fd24bE.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h048d79add73fd24bE.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h048d79add73fd24bE.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h5a8d5f2618873c96E.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17hcb5c7e2114791bcbE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !3   ; 4 uses
  %i.c = icmp ult i64 %i.b, 6                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !61330, !noalias !61333, !nonnull !3 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 5) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !3 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !543

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 6
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.b, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17hd3fbce422e066ed8E.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %_ZN8smallvec12layout_array17hd3fbce422e066ed8E.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 24) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 0         ; 7 uses
  %i.k = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.k, label %_ZN8smallvec12layout_array17hd3fbce422e066ed8E.exit55.thread, label %bb.g, !prof !543

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !61335
  br i1 %i.l, label %_ZN8smallvec12layout_array17hd3fbce422e066ed8E.exit, label %_ZN8smallvec12layout_array17hd3fbce422e066ed8E.exit55.thread

_ZN8smallvec12layout_array17hd3fbce422e066ed8E.exit: ; preds = %bb.g
  br i1 %i.c, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17hd3fbce422e066ed8E.exit
  %i.m = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink.i, i64 24) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 0         ; 4 uses
  %i.o = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.o, label %_ZN8smallvec12layout_array17hd3fbce422e066ed8E.exit55.thread, label %bb.i, !prof !543

bb.i:                                             ; preds = %bb.h
  %i.p = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.n, i64 noundef 8), !noalias !61338
  br i1 %i.p, label %_ZN8smallvec12layout_array17hd3fbce422e066ed8E.exit55, label %_ZN8smallvec12layout_array17hd3fbce422e066ed8E.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17hd3fbce422e066ed8E.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #71 ; 3 uses
  %.not70 = icmp eq ptr %i.q, null
  br i1 %.not70, label %_ZN8smallvec12layout_array17hd3fbce422e066ed8E.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17hd3fbce422e066ed8E.exit55: ; preds = %bb.i
  %i.r = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.j) #71 ; 2 uses
  %.not69 = icmp eq ptr %i.r, null
  br i1 %.not69, label %_ZN8smallvec12layout_array17hd3fbce422e066ed8E.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17hd3fbce422e066ed8E.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.q, %bb.l ], [ %i.r, %_ZN8smallvec12layout_array17hd3fbce422e066ed8E.exit55 ]
  store ptr %.sroa.021.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %_ZN8smallvec12layout_array17hd3fbce422e066ed8E.exit55.thread

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
  br i1 %i.w, label %bb.o, label %bb.n, !prof !543

bb.n:                                             ; preds = %bb.m
  %i.x = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.v, i64 noundef 8), !noalias !61341
  br i1 %i.x, label %_ZN8smallvec10deallocate17ha7e22af3225dd8c3E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61344
  store i64 0, ptr %i.a, align 8, !noalias !61344
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.v, ptr %i.y, align 8, !noalias !61344
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !61344
  unreachable

_ZN8smallvec10deallocate17ha7e22af3225dd8c3E.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.v, i64 noundef 8) #71
  br label %_ZN8smallvec12layout_array17hd3fbce422e066ed8E.exit55.thread

_ZN8smallvec12layout_array17hd3fbce422e066ed8E.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17ha7e22af3225dd8c3E.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17hd3fbce422e066ed8E.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17ha7e22af3225dd8c3E.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17hd3fbce422e066ed8E.exit55 ], [ %i.j, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ %i.j, %bb.f ], [ %i.n, %bb.h ], [ %i.n, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17ha7e22af3225dd8c3E.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17hd3fbce422e066ed8E.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.z = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.aa = insertvalue { i64, i64 } %i.z, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.aa
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 16, -9223372036854775808) i64 @_ZN8thin_vec10alloc_size17h87cb3e05e9b1a26aE(i64 noundef %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %.split, label %.split7

.split:                                           ; preds = %bb.a
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #70
  unreachable

.split7:                                          ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %0, 576460752303423487
  br i1 %i.b, label %.split7.thread, label %bb.b, !prof !57642

bb.b:                                             ; preds = %.split7
  %i.c = shl nuw nsw i64 %0, 4
  %i.d = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.c, i64 16) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c, !prof !543

.split7.thread:                                   ; preds = %.split7
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #70
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = extractvalue { i64, i1 } %i.d, 0
  ret i64 %i.f

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #70
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 16, -9223372036854775808) i64 @_ZN8thin_vec10alloc_size17ha22bf9d7c440e07cE(i64 noundef %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %.split, label %.split7

.split:                                           ; preds = %bb.a
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #70
  unreachable

.split7:                                          ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %0, 576460752303423487
  br i1 %i.b, label %.split7.thread, label %bb.b, !prof !57642

bb.b:                                             ; preds = %.split7
  %i.c = shl nuw nsw i64 %0, 4
  %i.d = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.c, i64 16) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c, !prof !543

.split7.thread:                                   ; preds = %.split7
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #70
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = extractvalue { i64, i1 } %i.d, 0
  ret i64 %i.f

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #70
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 16, -9223372036854775808) i64 @_ZN8thin_vec10alloc_size17hcd45ad7157630d3eE(i64 noundef %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %.split, label %.split7

.split:                                           ; preds = %bb.a
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #70
  unreachable

.split7:                                          ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %0, 576460752303423487
  br i1 %i.b, label %.split7.thread, label %bb.b, !prof !57642

bb.b:                                             ; preds = %.split7
  %i.c = shl nuw nsw i64 %0, 4
  %i.d = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.c, i64 16) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c, !prof !543

.split7.thread:                                   ; preds = %.split7
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #70
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = extractvalue { i64, i1 } %i.d, 0
  ret i64 %i.f

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #70
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 16, -9223372036854775808) i64 @_ZN8thin_vec10alloc_size17he407e2791c75f381E(i64 noundef %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %.split, label %.split7

.split:                                           ; preds = %bb.a
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #70
  unreachable

.split7:                                          ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %0, 1152921504606846975
  br i1 %i.b, label %.split7.thread, label %bb.b, !prof !57642

bb.b:                                             ; preds = %.split7
  %i.c = shl nuw nsw i64 %0, 3
  %i.d = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.c, i64 16) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c, !prof !543

.split7.thread:                                   ; preds = %.split7
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #70
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = extractvalue { i64, i1 } %i.d, 0
  ret i64 %i.f

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #70
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 16, -9223372036854775808) i64 @_ZN8thin_vec10alloc_size17hf0f75da47f23d105E(i64 noundef %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %.split, label %.split7

.split:                                           ; preds = %bb.a
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #70
  unreachable

.split7:                                          ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %0, 576460752303423487
  br i1 %i.b, label %.split7.thread, label %bb.b, !prof !57642

bb.b:                                             ; preds = %.split7
  %i.c = shl nuw nsw i64 %0, 4
  %i.d = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.c, i64 16) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c, !prof !543

.split7.thread:                                   ; preds = %.split7
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #70
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = extractvalue { i64, i1 } %i.d, 0
  ret i64 %i.f

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #70
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN8thin_vec16ThinVec$LT$T$GT$10reallocate17hcf3ac2019c2dfe2aE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
end_hunk_1
