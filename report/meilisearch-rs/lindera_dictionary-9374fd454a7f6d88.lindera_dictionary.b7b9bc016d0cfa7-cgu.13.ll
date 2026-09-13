Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/lindera_dictionary-9374fd454a7f6d88.lindera_dictionary.b7b9bc016d0cfa7-cgu.13?download=true
inline.NumInlined: 82
inline.NumDeleted: 21
begin_hunk_0_@"_ZN4core3num21_$LT$impl$u20$u16$GT$14from_str_radix17h90a883b897bd5106E":bb.a
bb.k:                                             ; preds = %bb.j
  %i.af = extractvalue { i32, i32 } %i.ac, 1
  %i.ag = mul i16 %.sroa.018.168.i, %i.e
  %i.ah = add nsw i64 %.sroa.12.169.i, -1         ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.02.170.i, i64 1
  %i.aj = trunc i32 %i.af to i16
  %i.ak = add i16 %i.ag, %i.aj                    ; 2 uses
  %.not55.i = icmp eq i64 %i.ah, 0
  br i1 %.not55.i, label %.loopexit.i, label %bb.j

"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17h9e8a9bec8f4c8e4bE.exit": ; preds = %bb.i, %bb.j, %bb.c, %.loopexit62.split.loop.exit65.i, %bb.d, %bb.d, %.loopexit.i
  %.sroa.8.0.insert.insert.i = phi i32 [ 1, %bb.c ], [ %i.o, %.loopexit.i ], [ 257, %bb.d ], [ 257, %bb.j ], [ 257, %bb.d ], [ %.mux.le.i, %.loopexit62.split.loop.exit65.i ], [ 513, %bb.i ]
  ret i32 %.sroa.8.0.insert.insert.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @"_ZN4core3num21_$LT$impl$u20$u32$GT$11to_be_bytes17ha0e6e52ad057f687E"(i32 %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @"_ZN4core3num21_$LT$impl$u20$u32$GT$11to_le_bytes17h2cd2a0ba2b349390E"(i32 returned %0) unnamed_addr #3 {
bb.a:
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @"_ZN4core3num21_$LT$impl$u20$u32$GT$13from_be_bytes17h3e6eb6ba1421bf1fE"(i32 %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @"_ZN4core3num21_$LT$impl$u20$u32$GT$13from_le_bytes17had126383b78da538E"(i32 returned %0) unnamed_addr #3 {
bb.a:
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @"_ZN4core3num21_$LT$impl$u20$u64$GT$11checked_add17hf8bd24b04362abbcE"(i64 %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = add i64 %1, %0                           ; 2 uses
  %i.b = icmp uge i64 %i.a, %0
  %. = zext i1 %i.b to i64
  %i.c = insertvalue { i64, i64 } poison, i64 %., 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %i.a, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i64 @"_ZN4core3num21_$LT$impl$u20$u64$GT$11to_be_bytes17heb22b518d6423435E"(i64 %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @llvm.bswap.i64(i64 %0)
  ret i64 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i64 @"_ZN4core3num21_$LT$impl$u20$u64$GT$11to_le_bytes17hf362b71631e7b258E"(i64 returned %0) unnamed_addr #3 {
bb.a:
  ret i64 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i64 @"_ZN4core3num21_$LT$impl$u20$u64$GT$13from_be_bytes17heb527a5c3582a715E"(i64 %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @llvm.bswap.i64(i64 %0)
  ret i64 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i64 @"_ZN4core3num21_$LT$impl$u20$u64$GT$13from_le_bytes17hab760f434aeab526E"(i64 returned %0) unnamed_addr #3 {
bb.a:
  ret i64 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h729eb42609addc9bE"(i64 %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = add i64 %1, %0                           ; 2 uses
  %i.b = icmp uge i64 %i.a, %0
  %. = zext i1 %i.b to i64
  %i.c = insertvalue { i64, i64 } poison, i64 %., 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %i.a, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h2a204b99544ca458E"(i64 %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  %not. = xor i1 %i.b, true
  %.sroa.0.0 = zext i1 %not. to i64
  %i.d = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_sub17h3c5472d52e5008ceE"(i64 %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = icmp uge i64 %0, %1                      ; 2 uses
  %i.b = sub nuw i64 %0, %1
  %.sroa.3.0 = select i1 %i.a, i64 %i.b, i64 undef
  %.sroa.0.0 = zext i1 %i.a to i64
  %i.c = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define hidden void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17h73f456140cbf7616E"(i64 %0, i64 %1, ptr align 8 %2) unnamed_addr #10 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = xor i64 %0, -1
  %i.d = icmp ugt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  store ptr @125, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 186, ptr %i.e, align 8
  store ptr %i.a, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.i, align 8
  call void @_ZN4core9panicking18panic_nounwind_fmt17h622822847ebd61beE(ptr nonnull align 8 %i.b, i1 zeroext false, ptr align 8 %2) #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i32 0, -65535) i32 @"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i16$GT$8from_str17h537333cfa039aceaE"(ptr nofree readonly align 1 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  switch i64 %1, label %thread-pre-split.i [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h0322fb13dde21277E.exit"
    i64 1, label %bb.b
  ]

.loopexit105.split.loop.exit123.i:                ; preds = %.lr.ph74
  %.mux101.le.i = select i1 %i.au, i32 513, i32 257
  br label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h0322fb13dde21277E.exit"

.loopexit111.split.loop.exit117.i:                ; preds = %.lr.ph.a
  %.mux.le.i = select i1 %i.w, i32 769, i32 257
  br label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h0322fb13dde21277E.exit"

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h0322fb13dde21277E.exit"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h0322fb13dde21277E.exit"
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %0, align 1
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  switch i8 %i.b, label %bb.i [
    i8 43, label %bb.d
    i8 45, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = add i64 %1, -1                           ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.e = icmp ult i64 %1, 5
  br i1 %i.e, label %.preheader.i, label %.preheader103.i

.preheader103.i:                                  ; preds = %bb.i, %bb.d
  %.sroa.2217.0.ph.i = phi i64 [ %i.c, %bb.d ], [ %1, %bb.i ] ; 2 uses
  %.sroa.02.0.ph.i = phi ptr [ %i.d, %bb.d ], [ %0, %bb.i ]
  %.not96.i70 = icmp eq i64 %.sroa.2217.0.ph.i, 0
  br i1 %.not96.i70, label %.loopexit.i, label %.lr.ph74

bb.e:                                             ; preds = %bb.j
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i73, i64 1
  %i.g = add i64 %.sroa.2217.0.i72, -1            ; 2 uses
  %i.h = extractvalue { i16, i1 } %i.ay, 0        ; 2 uses
  %.not96.i = icmp eq i64 %i.g, 0
  br i1 %.not96.i, label %.loopexit.i, label %.lr.ph74

bb.f:                                             ; preds = %bb.c
  %i.i = add i64 %1, -1                           ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.k = icmp ult i64 %1, 5
  %.not95119.i = icmp eq i64 %i.i, 0              ; 2 uses
  br i1 %i.k, label %.preheader106.i, label %.preheader109.i.preheader

.preheader109.i.preheader:                        ; preds = %bb.f
  br i1 %.not95119.i, label %.loopexit.i, label %.lr.ph.a

.preheader106.i:                                  ; preds = %bb.f
  br i1 %.not95119.i, label %.loopexit.i, label %.lr.ph.i

.preheader109.i:                                  ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i69, i64 1
  %i.m = add i64 %.sroa.2217.2.i68, -1            ; 2 uses
  %i.n = extractvalue { i16, i1 } %i.aa, 0        ; 2 uses
  %.not94.i = icmp eq i64 %i.m, 0
  br i1 %.not94.i, label %.loopexit.i, label %.lr.ph.a

.loopexit.i:                                      ; preds = %.preheader109.i, %bb.h, %bb.e, %bb.k, %.preheader109.i.preheader, %.preheader103.i, %.preheader.i, %.preheader106.i
  %.sroa.033.3.i = phi i16 [ %i.am, %bb.h ], [ %i.bk, %bb.k ], [ %i.h, %bb.e ], [ 0, %.preheader.i ], [ 0, %.preheader106.i ], [ 0, %.preheader103.i ], [ 0, %.preheader109.i.preheader ], [ %i.n, %.preheader109.i ]
  %i.o = zext i16 %.sroa.033.3.i to i32
  %i.p = shl nuw i32 %i.o, 16
  br label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h0322fb13dde21277E.exit"

.lr.ph.a:                                         ; preds = %.preheader109.i.preheader, %.preheader109.i
  %.sroa.02.2.i69 = phi ptr [ %i.l, %.preheader109.i ], [ %i.j, %.preheader109.i.preheader ] ; 2 uses
  %.sroa.2217.2.i68 = phi i64 [ %i.m, %.preheader109.i ], [ %i.i, %.preheader109.i.preheader ]
  %.sroa.033.2.i67 = phi i16 [ %i.n, %.preheader109.i ], [ 0, %.preheader109.i.preheader ]
  %i.q = tail call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %.sroa.033.2.i67, i16 10) ; 2 uses
  %i.r = extractvalue { i16, i1 } %i.q, 1
  %i.s = load i8, ptr %.sroa.02.2.i69, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = tail call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h3a1114e37bc59a8dE"(i32 %i.t, i32 10) ; 2 uses
  %i.v = extractvalue { i32, i32 } %i.u, 0
  %i.w = trunc i32 %i.v to i1                     ; 2 uses
  %.not98.i = xor i1 %i.w, true
  %brmerge.i = select i1 %.not98.i, i1 true, i1 %i.r
  br i1 %brmerge.i, label %.loopexit111.split.loop.exit117.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.a
  %i.x = extractvalue { i16, i1 } %i.q, 0
  %i.y = extractvalue { i32, i32 } %i.u, 1
  %i.z = trunc i32 %i.y to i16
  %i.aa = tail call { i16, i1 } @llvm.ssub.with.overflow.i16(i16 %i.x, i16 %i.z) ; 2 uses
  %i.ab = extractvalue { i16, i1 } %i.aa, 1
  br i1 %i.ab, label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h0322fb13dde21277E.exit", label %.preheader109.i

.lr.ph.i:                                         ; preds = %.preheader106.i, %bb.h
  %.sroa.02.3122.i = phi ptr [ %i.ak, %bb.h ], [ %i.j, %.preheader106.i ] ; 2 uses
  %.sroa.2217.3121.i = phi i64 [ %i.aj, %bb.h ], [ %i.i, %.preheader106.i ]
  %.sroa.033.4120.i = phi i16 [ %i.am, %bb.h ], [ 0, %.preheader106.i ]
  %i.ac = load i8, ptr %.sroa.02.3122.i, align 1
  %i.ad = zext i8 %i.ac to i32
  %i.ae = tail call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h3a1114e37bc59a8dE"(i32 %i.ad, i32 10) ; 2 uses
  %i.af = extractvalue { i32, i32 } %i.ae, 0
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %bb.h, label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h0322fb13dde21277E.exit"

bb.h:                                             ; preds = %.lr.ph.i
  %i.ah = extractvalue { i32, i32 } %i.ae, 1
  %i.ai = mul i16 %.sroa.033.4120.i, 10
  %i.aj = add nsw i64 %.sroa.2217.3121.i, -1      ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.3122.i, i64 1
  %i.al = trunc i32 %i.ah to i16
  %i.am = sub i16 %i.ai, %i.al                    ; 2 uses
  %.not95.i = icmp eq i64 %i.aj, 0
  br i1 %.not95.i, label %.loopexit.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.c
  %i.an = icmp ult i64 %1, 4
  br i1 %i.an, label %.lr.ph130.i.preheader, label %.preheader103.i

.lr.ph130.i.preheader:                            ; preds = %.preheader.i, %bb.i
  %.sroa.02.1129.i.ph = phi ptr [ %0, %bb.i ], [ %i.d, %.preheader.i ]
  %.sroa.2217.1128.i.ph = phi i64 [ %1, %bb.i ], [ %i.c, %.preheader.i ]
  br label %.lr.ph130.i

.preheader.i:                                     ; preds = %bb.d
  %.not97126.i = icmp eq i64 %i.c, 0
  br i1 %.not97126.i, label %.loopexit.i, label %.lr.ph130.i.preheader

.lr.ph74:                                         ; preds = %.preheader103.i, %bb.e
  %.sroa.02.0.i73 = phi ptr [ %i.f, %bb.e ], [ %.sroa.02.0.ph.i, %.preheader103.i ] ; 2 uses
  %.sroa.2217.0.i72 = phi i64 [ %i.g, %bb.e ], [ %.sroa.2217.0.ph.i, %.preheader103.i ]
  %.sroa.033.0.i71 = phi i16 [ %i.h, %bb.e ], [ 0, %.preheader103.i ]
  %i.ao = tail call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %.sroa.033.0.i71, i16 10) ; 2 uses
  %i.ap = extractvalue { i16, i1 } %i.ao, 1
  %i.aq = load i8, ptr %.sroa.02.0.i73, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = tail call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h3a1114e37bc59a8dE"(i32 %i.ar, i32 10) ; 2 uses
  %i.at = extractvalue { i32, i32 } %i.as, 0
  %i.au = trunc i32 %i.at to i1                   ; 2 uses
  %.not99.i = xor i1 %i.au, true
  %brmerge100.i = select i1 %.not99.i, i1 true, i1 %i.ap
  br i1 %brmerge100.i, label %.loopexit105.split.loop.exit123.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph74
  %i.av = extractvalue { i16, i1 } %i.ao, 0
  %i.aw = extractvalue { i32, i32 } %i.as, 1
  %i.ax = trunc i32 %i.aw to i16
  %i.ay = tail call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %i.av, i16 %i.ax) ; 2 uses
  %i.az = extractvalue { i16, i1 } %i.ay, 1
  br i1 %i.az, label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h0322fb13dde21277E.exit", label %bb.e

.lr.ph130.i:                                      ; preds = %.lr.ph130.i.preheader, %bb.k
  %.sroa.02.1129.i = phi ptr [ %i.bi, %bb.k ], [ %.sroa.02.1129.i.ph, %.lr.ph130.i.preheader ] ; 2 uses
  %.sroa.2217.1128.i = phi i64 [ %i.bh, %bb.k ], [ %.sroa.2217.1128.i.ph, %.lr.ph130.i.preheader ]
  %.sroa.033.1127.i = phi i16 [ %i.bk, %bb.k ], [ 0, %.lr.ph130.i.preheader ]
  %i.ba = load i8, ptr %.sroa.02.1129.i, align 1
  %i.bb = zext i8 %i.ba to i32
  %i.bc = tail call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h3a1114e37bc59a8dE"(i32 %i.bb, i32 10) ; 2 uses
  %i.bd = extractvalue { i32, i32 } %i.bc, 0
  %i.be = trunc i32 %i.bd to i1
  br i1 %i.be, label %bb.k, label %"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h0322fb13dde21277E.exit"

bb.k:                                             ; preds = %.lr.ph130.i
  %i.bf = extractvalue { i32, i32 } %i.bc, 1
  %i.bg = mul i16 %.sroa.033.1127.i, 10
  %i.bh = add nsw i64 %.sroa.2217.1128.i, -1      ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.02.1129.i, i64 1
  %i.bj = trunc i32 %i.bf to i16
  %i.bk = add i16 %i.bg, %i.bj                    ; 2 uses
  %.not97.i = icmp eq i64 %i.bh, 0
  br i1 %.not97.i, label %.loopexit.i, label %.lr.ph130.i

"_ZN4core3num21_$LT$impl$u20$i16$GT$16from_ascii_radix17h0322fb13dde21277E.exit": ; preds = %bb.g, %.lr.ph.i, %bb.j, %.lr.ph130.i, %bb.a, %.loopexit105.split.loop.exit123.i, %.loopexit111.split.loop.exit117.i, %bb.b, %bb.b, %.loopexit.i
  %.sroa.12.0.insert.insert.i = phi i32 [ 257, %bb.b ], [ %i.p, %.loopexit.i ], [ 257, %bb.b ], [ 257, %.lr.ph130.i ], [ 513, %bb.j ], [ 257, %.lr.ph.i ], [ 1, %bb.a ], [ %.mux101.le.i, %.loopexit105.split.loop.exit123.i ], [ %.mux.le.i, %.loopexit111.split.loop.exit117.i ], [ 769, %bb.g ]
  ret i32 %.sroa.12.0.insert.insert.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i64 0, -4294967295) i64 @"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h5e745728ee62d6fbE"(ptr nofree readonly align 1 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  switch i64 %1, label %thread-pre-split.i [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hf2f98ce95399b217E.exit"
    i64 1, label %bb.b
  ]

.loopexit106.split.loop.exit124.i:                ; preds = %.lr.ph74
  %.mux102.le.i = select i1 %i.as, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hf2f98ce95399b217E.exit"

.loopexit112.split.loop.exit118.i:                ; preds = %.lr.ph.a
  %.mux.le.i = select i1 %i.w, i64 769, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hf2f98ce95399b217E.exit"

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hf2f98ce95399b217E.exit"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hf2f98ce95399b217E.exit"
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %0, align 1
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  switch i8 %i.b, label %bb.i [
    i8 43, label %bb.d
    i8 45, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = add i64 %1, -1                           ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.e = icmp ult i64 %1, 9
  br i1 %i.e, label %.preheader.i, label %.preheader104.i

.preheader104.i:                                  ; preds = %bb.i, %bb.d
  %.sroa.2218.0.ph.i = phi i64 [ %i.c, %bb.d ], [ %1, %bb.i ] ; 2 uses
  %.sroa.03.0.ph.i = phi ptr [ %i.d, %bb.d ], [ %0, %bb.i ]
  %.not97.i70 = icmp eq i64 %.sroa.2218.0.ph.i, 0
  br i1 %.not97.i70, label %.loopexit.i, label %.lr.ph74

bb.e:                                             ; preds = %bb.j
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i73, i64 1
  %i.g = add i64 %.sroa.2218.0.i72, -1            ; 2 uses
  %i.h = extractvalue { i32, i1 } %i.av, 0        ; 2 uses
  %.not97.i = icmp eq i64 %i.g, 0
  br i1 %.not97.i, label %.loopexit.i, label %.lr.ph74

bb.f:                                             ; preds = %bb.c
  %i.i = add i64 %1, -1                           ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.k = icmp ult i64 %1, 9
  %.not96120.i = icmp eq i64 %i.i, 0              ; 2 uses
  br i1 %i.k, label %.preheader107.i, label %.preheader110.i.preheader

.preheader110.i.preheader:                        ; preds = %bb.f
  br i1 %.not96120.i, label %.loopexit.i, label %.lr.ph.a

.preheader107.i:                                  ; preds = %bb.f
  br i1 %.not96120.i, label %.loopexit.i, label %.lr.ph.i

.preheader110.i:                                  ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.03.2.i69, i64 1
  %i.m = add i64 %.sroa.2218.2.i68, -1            ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.z, 0         ; 2 uses
  %.not95.i = icmp eq i64 %i.m, 0
  br i1 %.not95.i, label %.loopexit.i, label %.lr.ph.a

.loopexit.i:                                      ; preds = %.preheader110.i, %bb.h, %bb.e, %bb.k, %.preheader110.i.preheader, %.preheader104.i, %.preheader.i, %.preheader107.i
  %.sroa.034.3.i = phi i32 [ %i.ak, %bb.h ], [ %i.bg, %bb.k ], [ %i.h, %bb.e ], [ 0, %.preheader.i ], [ 0, %.preheader107.i ], [ 0, %.preheader104.i ], [ 0, %.preheader110.i.preheader ], [ %i.n, %.preheader110.i ]
  %i.o = zext i32 %.sroa.034.3.i to i64
  %i.p = shl nuw i64 %i.o, 32
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hf2f98ce95399b217E.exit"

.lr.ph.a:                                         ; preds = %.preheader110.i.preheader, %.preheader110.i
  %.sroa.03.2.i69 = phi ptr [ %i.l, %.preheader110.i ], [ %i.j, %.preheader110.i.preheader ] ; 2 uses
  %.sroa.2218.2.i68 = phi i64 [ %i.m, %.preheader110.i ], [ %i.i, %.preheader110.i.preheader ]
  %.sroa.034.2.i67 = phi i32 [ %i.n, %.preheader110.i ], [ 0, %.preheader110.i.preheader ]
  %i.q = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.034.2.i67, i32 10) ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.q, 1
  %i.s = load i8, ptr %.sroa.03.2.i69, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = tail call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h3a1114e37bc59a8dE"(i32 %i.t, i32 10) ; 2 uses
  %i.v = extractvalue { i32, i32 } %i.u, 0
  %i.w = trunc i32 %i.v to i1                     ; 2 uses
  %.not99.i = xor i1 %i.w, true
  %brmerge.i = select i1 %.not99.i, i1 true, i1 %i.r
  br i1 %brmerge.i, label %.loopexit112.split.loop.exit118.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.a
  %i.x = extractvalue { i32, i32 } %i.u, 1
  %i.y = extractvalue { i32, i1 } %i.q, 0
  %i.z = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.y, i32 %i.x) ; 2 uses
  %i.aa = extractvalue { i32, i1 } %i.z, 1
  br i1 %i.aa, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hf2f98ce95399b217E.exit", label %.preheader110.i

.lr.ph.i:                                         ; preds = %.preheader107.i, %bb.h
  %.sroa.03.3123.i = phi ptr [ %i.aj, %bb.h ], [ %i.j, %.preheader107.i ] ; 2 uses
  %.sroa.2218.3122.i = phi i64 [ %i.ai, %bb.h ], [ %i.i, %.preheader107.i ]
  %.sroa.034.4121.i = phi i32 [ %i.ak, %bb.h ], [ 0, %.preheader107.i ]
  %i.ab = load i8, ptr %.sroa.03.3123.i, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = tail call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h3a1114e37bc59a8dE"(i32 %i.ac, i32 10) ; 2 uses
  %i.ae = extractvalue { i32, i32 } %i.ad, 0
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %bb.h, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hf2f98ce95399b217E.exit"

bb.h:                                             ; preds = %.lr.ph.i
  %i.ag = extractvalue { i32, i32 } %i.ad, 1
  %i.ah = mul i32 %.sroa.034.4121.i, 10
  %i.ai = add nsw i64 %.sroa.2218.3122.i, -1      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.03.3123.i, i64 1
  %i.ak = sub i32 %i.ah, %i.ag                    ; 2 uses
  %.not96.i = icmp eq i64 %i.ai, 0
  br i1 %.not96.i, label %.loopexit.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.c
  %i.al = icmp ult i64 %1, 8
  br i1 %i.al, label %.lr.ph131.i.preheader, label %.preheader104.i

.lr.ph131.i.preheader:                            ; preds = %.preheader.i, %bb.i
  %.sroa.03.1130.i.ph = phi ptr [ %0, %bb.i ], [ %i.d, %.preheader.i ]
  %.sroa.2218.1129.i.ph = phi i64 [ %1, %bb.i ], [ %i.c, %.preheader.i ]
  br label %.lr.ph131.i

.preheader.i:                                     ; preds = %bb.d
  %.not98127.i = icmp eq i64 %i.c, 0
  br i1 %.not98127.i, label %.loopexit.i, label %.lr.ph131.i.preheader

.lr.ph74:                                         ; preds = %.preheader104.i, %bb.e
  %.sroa.03.0.i73 = phi ptr [ %i.f, %bb.e ], [ %.sroa.03.0.ph.i, %.preheader104.i ] ; 2 uses
  %.sroa.2218.0.i72 = phi i64 [ %i.g, %bb.e ], [ %.sroa.2218.0.ph.i, %.preheader104.i ]
  %.sroa.034.0.i71 = phi i32 [ %i.h, %bb.e ], [ 0, %.preheader104.i ]
  %i.am = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.034.0.i71, i32 10) ; 2 uses
  %i.an = extractvalue { i32, i1 } %i.am, 1
  %i.ao = load i8, ptr %.sroa.03.0.i73, align 1
  %i.ap = zext i8 %i.ao to i32
  %i.aq = tail call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h3a1114e37bc59a8dE"(i32 %i.ap, i32 10) ; 2 uses
  %i.ar = extractvalue { i32, i32 } %i.aq, 0
  %i.as = trunc i32 %i.ar to i1                   ; 2 uses
  %.not100.i = xor i1 %i.as, true
  %brmerge101.i = select i1 %.not100.i, i1 true, i1 %i.an
  br i1 %brmerge101.i, label %.loopexit106.split.loop.exit124.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph74
  %i.at = extractvalue { i32, i32 } %i.aq, 1
  %i.au = extractvalue { i32, i1 } %i.am, 0
  %i.av = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.au, i32 %i.at) ; 2 uses
  %i.aw = extractvalue { i32, i1 } %i.av, 1
  br i1 %i.aw, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17hf2f98ce95399b217E.exit", label %bb.e

.lr.ph131.i:                                      ; preds = %.lr.ph131.i.preheader, %bb.k
  %.sroa.03.1130.i = phi ptr [ %i.bf, %bb.k ], [ %.sroa.03.1130.i.ph, %.lr.ph131.i.preheader ] ; 2 uses
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
end_hunk_0
