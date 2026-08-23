Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/lindera_dictionary-9374fd454a7f6d88.lindera_dictionary.b7b9bc016d0cfa7-cgu.13?download=true
inline.NumInlined: 82
inline.NumDeleted: 21
begin_hunk_0_@"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h5e745728ee62d6fbE":bb.a
  %.sroa.2218.1129.i = phi i64 [ %i.be, %bb.k ], [ %.sroa.2218.1129.i.ph, %.lr.ph131.i.preheader ]
  %.sroa.034.1128.i = phi i32 [ %i.bg, %bb.k ], [ 0, %.lr.ph131.i.preheader ]
  %i.ax = load i8, ptr %.sroa.03.1130.i, align 1
  %i.ay = zext i8 %i.ax to i32
  %i.az = tail call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h3a1114e37bc59a8dE"(i32 %i.ay, i32 10) ; 2 uses
  %i.ba = extractvalue { i32, i32 } %i.az, 0
  %i.bb = trunc i32 %i.ba to i1
  br i1 %i.bb, label %bb.k, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hf2f98ce95399b217E.exit"

bb.k:                                             ; preds = %.lr.ph131.i
  %i.bc = extractvalue { i32, i32 } %i.az, 1
  %i.bd = mul i32 %.sroa.034.1128.i, 10
  %i.be = add nsw i64 %.sroa.2218.1129.i, -1      ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.03.1130.i, i64 1
  %i.bg = add i32 %i.bc, %i.bd                    ; 2 uses
  %.not98.i = icmp eq i64 %i.be, 0
  br i1 %.not98.i, label %.loopexit.i, label %.lr.ph131.i

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hf2f98ce95399b217E.exit": ; preds = %bb.g, %.lr.ph.i, %bb.j, %.lr.ph131.i, %bb.a, %.loopexit106.split.loop.exit124.i, %.loopexit112.split.loop.exit118.i, %bb.b, %bb.b, %.loopexit.i
  %.sroa.12.0.insert.insert.i = phi i64 [ 257, %bb.b ], [ %i.p, %.loopexit.i ], [ 257, %bb.b ], [ 257, %.lr.ph131.i ], [ 513, %bb.j ], [ 257, %.lr.ph.i ], [ 1, %bb.a ], [ %.mux102.le.i, %.loopexit106.split.loop.exit124.i ], [ %.mux.le.i, %.loopexit112.split.loop.exit118.i ], [ 769, %bb.g ]
  ret i64 %.sroa.12.0.insert.insert.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i32 0, -65535) i32 @"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$u16$GT$8from_str17h0d9a2aeb4749afa9E"(ptr nofree readonly align 1 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  switch i64 %1, label %bb.d [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17h9e8a9bec8f4c8e4bE.exit"
    i64 1, label %bb.b
  ]

.loopexit62.split.loop.exit65.i:                  ; preds = %.lr.ph
  %.mux.le.i = select i1 %i.p, i32 513, i32 257
  br label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17h9e8a9bec8f4c8e4bE.exit"

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1
  switch i8 %i.a, label %.lr.ph.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17h9e8a9bec8f4c8e4bE.exit"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17h9e8a9bec8f4c8e4bE.exit"
  ]

bb.c:                                             ; preds = %bb.d
  %i.b = icmp ult i64 %1, 5
  br i1 %i.b, label %.lr.ph.i.preheader, label %.preheader60.i

.lr.ph.i.preheader:                               ; preds = %bb.e, %bb.b, %bb.c
  %.sroa.02.170.i.ph = phi ptr [ %i.c, %bb.e ], [ %0, %bb.c ], [ %0, %bb.b ]
  %.sroa.12.169.i.ph = phi i64 [ %i.d, %bb.e ], [ %1, %bb.c ], [ 1, %bb.b ]
  br label %.lr.ph.i

bb.d:                                             ; preds = %bb.a
  %.pr.i = load i8, ptr %0, align 1
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.d = add i64 %1, -1                           ; 2 uses
  %i.e = icmp ult i64 %1, 6
  br i1 %i.e, label %.lr.ph.i.preheader, label %.preheader60.i

.preheader60.i:                                   ; preds = %bb.e, %bb.c
  %.sroa.12.0.ph.i = phi i64 [ %1, %bb.c ], [ %i.d, %bb.e ] ; 2 uses
  %.sroa.02.0.ph.i = phi ptr [ %0, %bb.c ], [ %i.c, %bb.e ]
  %.not53.i33 = icmp eq i64 %.sroa.12.0.ph.i, 0
  br i1 %.not53.i33, label %.loopexit.i, label %.lr.ph

bb.f:                                             ; preds = %bb.g
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i36, i64 1
  %i.g = add i64 %.sroa.12.0.i35, -1              ; 2 uses
  %.not53.i = icmp eq i64 %i.g, 0
  br i1 %.not53.i, label %.loopexit.i, label %.lr.ph

.loopexit.i:                                      ; preds = %bb.f, %bb.h, %.preheader60.i
  %.sroa.018.2.i = phi i16 [ %i.ae, %bb.h ], [ 0, %.preheader60.i ], [ %i.t, %bb.f ]
  %i.h = zext i16 %.sroa.018.2.i to i32
  %i.i = shl nuw i32 %i.h, 16
  br label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17h9e8a9bec8f4c8e4bE.exit"

.lr.ph:                                           ; preds = %.preheader60.i, %bb.f
  %.sroa.02.0.i36 = phi ptr [ %i.f, %bb.f ], [ %.sroa.02.0.ph.i, %.preheader60.i ] ; 2 uses
  %.sroa.12.0.i35 = phi i64 [ %i.g, %bb.f ], [ %.sroa.12.0.ph.i, %.preheader60.i ]
  %.sroa.018.0.i34 = phi i16 [ %i.t, %bb.f ], [ 0, %.preheader60.i ]
  %i.j = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.018.0.i34, i16 10) ; 2 uses
  %i.k = extractvalue { i16, i1 } %i.j, 1
  %i.l = load i8, ptr %.sroa.02.0.i36, align 1
  %i.m = zext i8 %i.l to i32
  %i.n = tail call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h3a1114e37bc59a8dE"(i32 %i.m, i32 10) ; 2 uses
  %i.o = extractvalue { i32, i32 } %i.n, 0
  %i.p = trunc i32 %i.o to i1                     ; 2 uses
  %.not58.i = xor i1 %i.p, true
  %brmerge.i = or i1 %i.k, %.not58.i
  br i1 %brmerge.i, label %.loopexit62.split.loop.exit65.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.q = extractvalue { i16, i1 } %i.j, 0         ; 2 uses
  %i.r = extractvalue { i32, i32 } %i.n, 1
  %i.s = trunc i32 %i.r to i16
  %i.t = add i16 %i.q, %i.s                       ; 3 uses
  %.not54.i = icmp ult i16 %i.t, %i.q
  br i1 %.not54.i, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17h9e8a9bec8f4c8e4bE.exit", label %bb.f

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.h
  %.sroa.02.170.i = phi ptr [ %i.ac, %bb.h ], [ %.sroa.02.170.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.12.169.i = phi i64 [ %i.ab, %bb.h ], [ %.sroa.12.169.i.ph, %.lr.ph.i.preheader ]
  %.sroa.018.168.i = phi i16 [ %i.ae, %bb.h ], [ 0, %.lr.ph.i.preheader ]
  %i.u = load i8, ptr %.sroa.02.170.i, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = tail call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h3a1114e37bc59a8dE"(i32 %i.v, i32 10) ; 2 uses
  %i.x = extractvalue { i32, i32 } %i.w, 0
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %bb.h, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17h9e8a9bec8f4c8e4bE.exit"

bb.h:                                             ; preds = %.lr.ph.i
  %i.z = extractvalue { i32, i32 } %i.w, 1
  %i.aa = mul i16 %.sroa.018.168.i, 10
  %i.ab = add nsw i64 %.sroa.12.169.i, -1         ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.170.i, i64 1
  %i.ad = trunc i32 %i.z to i16
  %i.ae = add i16 %i.aa, %i.ad                    ; 2 uses
  %.not55.i = icmp eq i64 %i.ab, 0
  br i1 %.not55.i, label %.loopexit.i, label %.lr.ph.i

"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17h9e8a9bec8f4c8e4bE.exit": ; preds = %bb.g, %.lr.ph.i, %bb.a, %.loopexit62.split.loop.exit65.i, %bb.b, %bb.b, %.loopexit.i
  %.sroa.8.0.insert.insert.i = phi i32 [ 1, %bb.a ], [ %i.i, %.loopexit.i ], [ 257, %bb.b ], [ 257, %.lr.ph.i ], [ 257, %bb.b ], [ %.mux.le.i, %.loopexit62.split.loop.exit65.i ], [ 513, %bb.g ]
  ret i32 %.sroa.8.0.insert.insert.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i64 0, -4294967295) i64 @"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$u32$GT$8from_str17h8ea05133015588d4E"(ptr nofree readonly align 1 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h5efa05185f941c9eE.exit"
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1
  switch i8 %i.a, label %.lr.ph.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h5efa05185f941c9eE.exit"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h5efa05185f941c9eE.exit"
  ]

.lr.ph.i.preheader:                               ; preds = %bb.d, %bb.f, %bb.b
  %.sroa.03.183.i.ph = phi ptr [ %i.c, %bb.d ], [ %0, %bb.f ], [ %0, %bb.b ]
  %.sroa.12.182.i.ph = phi i64 [ %i.b, %bb.d ], [ %1, %bb.f ], [ 1, %bb.b ]
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.a
  %.pr.i = load i8, ptr %0, align 1
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.b = add i64 %1, -1                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.d = icmp ult i64 %1, 10
  br i1 %i.d, label %.lr.ph.i.preheader, label %.preheader72.i

.preheader72.i:                                   ; preds = %bb.f, %bb.d
  %.sroa.12.0.ph.i = phi i64 [ %i.b, %bb.d ], [ %1, %bb.f ] ; 2 uses
  %.sroa.03.0.ph.i = phi ptr [ %i.c, %bb.d ], [ %0, %bb.f ]
  %.not68.i28 = icmp eq i64 %.sroa.12.0.ph.i, 0
  br i1 %.not68.i28, label %.loopexit.i, label %.lr.ph

bb.e:                                             ; preds = %bb.i
  %.not68.i = icmp eq i64 %i.i, 0
  br i1 %.not68.i, label %.loopexit.i, label %.lr.ph

bb.f:                                             ; preds = %bb.c
  %i.e = icmp ult i64 %1, 9
  br i1 %i.e, label %.lr.ph.i.preheader, label %.preheader72.i

.loopexit.i:                                      ; preds = %bb.e, %bb.j, %.preheader72.i
  %.sroa.019.2.i = phi i32 [ %i.ac, %bb.j ], [ 0, %.preheader72.i ], [ %i.s, %bb.e ]
  %i.f = zext i32 %.sroa.019.2.i to i64
  %i.g = shl nuw i64 %i.f, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h5efa05185f941c9eE.exit"

.lr.ph:                                           ; preds = %.preheader72.i, %bb.e
  %.sroa.03.0.i31 = phi ptr [ %i.h, %bb.e ], [ %.sroa.03.0.ph.i, %.preheader72.i ] ; 2 uses
  %.sroa.12.0.i30 = phi i64 [ %i.i, %bb.e ], [ %.sroa.12.0.ph.i, %.preheader72.i ]
  %.sroa.019.0.i29 = phi i32 [ %i.s, %bb.e ], [ 0, %.preheader72.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i31, i64 1
  %i.i = add i64 %.sroa.12.0.i30, -1              ; 2 uses
  %i.j = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.i29, i32 10) ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 0         ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.j, 1
  %i.m = load i8, ptr %.sroa.03.0.i31, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = tail call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h3a1114e37bc59a8dE"(i32 %i.n, i32 10) ; 2 uses
  %i.p = extractvalue { i32, i32 } %i.o, 0
  %i.q = trunc i32 %i.p to i1                     ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  br i1 %i.q, label %bb.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h5efa05185f941c9eE.exit"

bb.h:                                             ; preds = %.lr.ph
  %spec.select.i = select i1 %i.q, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h5efa05185f941c9eE.exit"

bb.i:                                             ; preds = %bb.g
  %i.r = extractvalue { i32, i32 } %i.o, 1
  %i.s = add i32 %i.r, %i.k                       ; 3 uses
  %.not69.i = icmp ult i32 %i.s, %i.k
  br i1 %.not69.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h5efa05185f941c9eE.exit", label %bb.e

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.j
  %.sroa.03.183.i = phi ptr [ %i.ab, %bb.j ], [ %.sroa.03.183.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.12.182.i = phi i64 [ %i.aa, %bb.j ], [ %.sroa.12.182.i.ph, %.lr.ph.i.preheader ]
  %.sroa.019.181.i = phi i32 [ %i.ac, %bb.j ], [ 0, %.lr.ph.i.preheader ]
  %i.t = load i8, ptr %.sroa.03.183.i, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = tail call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h3a1114e37bc59a8dE"(i32 %i.u, i32 10) ; 2 uses
  %i.w = extractvalue { i32, i32 } %i.v, 0
  %i.x = trunc i32 %i.w to i1
  br i1 %i.x, label %bb.j, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h5efa05185f941c9eE.exit"

bb.j:                                             ; preds = %.lr.ph.i
  %i.y = extractvalue { i32, i32 } %i.v, 1
  %i.z = mul i32 %.sroa.019.181.i, 10
  %i.aa = add nsw i64 %.sroa.12.182.i, -1         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.03.183.i, i64 1
  %i.ac = add i32 %i.y, %i.z                      ; 2 uses
  %.not70.i = icmp eq i64 %i.aa, 0
  br i1 %.not70.i, label %.loopexit.i, label %.lr.ph.i

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h5efa05185f941c9eE.exit": ; preds = %bb.g, %bb.i, %.lr.ph.i, %bb.a, %bb.b, %bb.b, %.loopexit.i, %bb.h
  %.sroa.8.0.insert.insert.i = phi i64 [ 257, %bb.b ], [ %i.g, %.loopexit.i ], [ %spec.select.i, %bb.h ], [ 257, %bb.b ], [ 257, %.lr.ph.i ], [ 1, %bb.a ], [ 257, %bb.g ], [ 513, %bb.i ]
  ret i64 %.sroa.8.0.insert.insert.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i32, i32 } @_ZN4core3ops12control_flow11ControlFlow5Break17h3fa0d249b85e6682E(i32 %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { i32, i32 } { i32 1, i32 poison }, i32 %0, 1
  ret { i32, i32 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4core4iter6traits8iterator8Iterator3map17h1c5c5eec2e38c78eE(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4core4iter6traits8iterator8Iterator3map17h939ae0ee5a384f09E(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core4iter6traits8iterator8Iterator7collect17h227284f114ed75a4E(ptr sret([24 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  call void @"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h56abf94f84bbee1fE"(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @127)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4core4iter6traits8iterator8Iterator7collect17ha79642d540ab7456E(ptr sret([24 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  call void @"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h96c24eb28e454360E"(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @127)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4core4iter8adapters11try_process17h7c87ab3cfe284381E(ptr sret([24 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [72 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  store i8 5, ptr %i.e, align 1
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  store ptr %i.e, ptr %i.c, align 8
  call void @"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h583e3a7c921e018fE"(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 1 %i.a, ptr nonnull align 8 %i.c)
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %.not.not = icmp eq i8 %i.f, 5
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hb7b093d9092b8776E"(ptr sret([24 x i8]) align 8 %0, i8 %i.f, ptr nonnull align 8 @129)
          to label %bb.e unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$11from_output17h8a4d8aec99e20020E"(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.e
  ret void

bb.e:                                             ; preds = %bb.b
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h588fd294baa2683eE"(ptr nonnull align 8 %i.d)
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h588fd294baa2683eE"(ptr nonnull align 8 %i.d) #23
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @"_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h4f7f4e6f509691b5E"(ptr align 1 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @"_ZN97_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1d1164ba14a72fabE"(ptr align 1 %0, i64 2, ptr align 8 %1)
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @"_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h98f88c20076f7ab6E"(ptr align 1 %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2144d2173d4f8ef8E"(i64 %1, ptr align 1 %0, i64 2, ptr align 8 %2)
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @"_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hc229c31d2b93e141E"(ptr align 1 %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2144d2173d4f8ef8E"(i64 %1, ptr align 1 %0, i64 10, ptr align 8 %2)
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$22split_at_mut_unchecked17h949f2c260dded3c1E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr align 8 %1, i64 %2, i64 %3, ptr nofree readnone align 8 captures(none) %4) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %3
  %i.b = sub nuw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17heac9c46b26fc98baE"(ptr align 4 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17hcb1aab53c73537f2E"(ptr align 4 %0, i64 %1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6552266c79be0e57E"(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 1                           ; 4 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %i.c = sub nsw i64 0, %i.a
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c
  tail call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse7revswap17h9ffa0a13976be8ebE"(ptr align 8 %0, i64 %i.a, ptr align 8 %i.d, i64 %i.a, i64 %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i8 @"_ZN53_$LT$u8$u20$as$u20$core..iter..traits..accum..Sum$GT$3sum28_$u7b$$u7b$closure$u7d$$u7d$17h8635c67c312b2a81E"(ptr nofree readnone align 1 captures(none) %0, i8 %1, i8 %2) unnamed_addr #3 {
bb.a:
  %i.a = add i8 %2, %1
  ret i8 %i.a
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h12eee4ad37171077E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [56 x i8], align 8                ; 3 uses
  %i.f = load i64, ptr %0, align 8
  %i.g = icmp eq i64 %i.f, -9223372036854775808
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.i = call align 8 ptr @"_ZN5alloc11collections5btree4node171Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12into_val_mut17h4ce05e4988bfce12E"(ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h6db3fe5725f7f31dE"(ptr nonnull sret([24 x i8]) align 8 %i.d)
          to label %"_ZN5alloc11collections5btree3map5entry30OccupiedEntry$LT$K$C$V$C$A$GT$8into_mut17h9e3506b6adbf5facE.exit" unwind label %bb.f

"_ZN5alloc11collections5btree3map5entry30OccupiedEntry$LT$K$C$V$C$A$GT$8into_mut17h9e3506b6adbf5facE.exit": ; preds = %bb.c
  call void @"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17ha75f12b98ea9a55bE"(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.j = call align 8 ptr @"_ZN5alloc11collections5btree4node171Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12into_val_mut17h4ce05e4988bfce12E"(ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %"_ZN5alloc11collections5btree3map5entry30OccupiedEntry$LT$K$C$V$C$A$GT$8into_mut17h9e3506b6adbf5facE.exit", %bb.b
  %.sroa.0.0 = phi ptr [ %i.i, %bb.b ], [ %i.j, %"_ZN5alloc11collections5btree3map5entry30OccupiedEntry$LT$K$C$V$C$A$GT$8into_mut17h9e3506b6adbf5facE.exit" ]
  ret ptr %.sroa.0.0

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.f:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr164drop_in_place$LT$alloc..collections..btree..map..entry..VacantEntry$LT$alloc..string..String$C$alloc..vec..Vec$LT$lindera_dictionary..viterbi..WordEntry$GT$$GT$$GT$17h57faa80f0c3b7888E"(ptr nonnull align 8 %i.e) #23
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
end_hunk_0
