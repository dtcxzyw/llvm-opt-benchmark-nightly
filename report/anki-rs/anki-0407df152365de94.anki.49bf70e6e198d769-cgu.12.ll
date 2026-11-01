Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.12?download=true
inline.NumInlined: 7127
inline.NumDeleted: 3581
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 18
begin_hunk_0_@"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17hea6e5a3febbb66dfE":bb.a
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !14123
  unreachable

"_ZN4core3ptr111drop_in_place$LT$alloc..vec..Vec$LT$core..mem..maybe_uninit..MaybeUninit$LT$rayon_core..job..JobRef$GT$$GT$$GT$17h426e242240203731E.exit.i": ; preds = %bb.c
  resume { ptr, i32 } %i.n

"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hae7ae7f866ee1076E.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h9b2b1ef413c9fed6E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14123
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17hec1ba640a1631eefE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14137)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14138
  invoke void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h280f24ad0926ac9aE"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.s, !noalias !14137

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.f, align 8, !range !29, !noalias !14138, !noundef !14
  %.not.i = icmp eq i32 %i.h, 2
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14138
  invoke void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hbe1877c04cecfd41E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.e unwind label %bb.s, !noalias !14137

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !alias.scope !14137
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !alias.scope !14137
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8, !alias.scope !14137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14138
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  call fastcc void @"_ZN4core3ptr40drop_in_place$LT$rusqlite..row..Rows$GT$17hfbbfaf05921f0ad1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k), !noalias !14137
  br label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17he69889eb0b855e57E.exit"

bb.e:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.e, align 8, !noalias !14138, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14138
  %i.m = call i64 @llvm.uadd.sat.i64(i64 %i.l, i64 1)
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.m, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14138
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40)
          to label %.noexc.i unwind label %bb.s, !noalias !14137

.noexc.i:                                         ; preds = %bb.e
  %i.n = load i64, ptr %i.c, align 8, !range !15, !noalias !14138, !noundef !14
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !20, !noalias !14138, !noundef !14 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g, !prof !21

bb.f:                                             ; preds = %.noexc.i
  %i.s = load i64, ptr %i.r, align 8, !noalias !14138
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.q, i64 %i.s) #37
          to label %.noexc5.i unwind label %bb.s, !noalias !14137

.noexc5.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %i.t = load ptr, ptr %i.r, align 8, !noalias !14138, !nonnull !14, !noundef !14 ; 2 uses
  %i.u = icmp ule i64 %.sroa.0.0.i.i, %i.q
  call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !14137
  store i64 %i.q, ptr %i.g, align 8, !noalias !14138
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !14138
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !14138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !14137
  call void @llvm.experimental.noalias.scope.decl(metadata !14139)
  call void @llvm.experimental.noalias.scope.decl(metadata !14140)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14141
  br label %bb.h

bb.h:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha55dbfa97e5c4175E.exit.i.i.i", %bb.g
  invoke void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h280f24ad0926ac9aE"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.i unwind label %bb.l, !noalias !14137

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.b, align 8, !range !29, !noalias !14142, !noundef !14
  %.not.i.i.i = icmp eq i32 %i.v, 2
  br i1 %.not.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h69bdc6cc49fe547dE.exit.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !14143, !noalias !14138, !noundef !14 ; 4 uses
  %i.x = icmp ult i64 %i.w, 230584300921369396
  call void @llvm.assume(i1 %i.x)
  %i.y = load i64, ptr %i.g, align 8, !range !22, !alias.scope !14143, !noalias !14138, !noundef !14
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.k, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha55dbfa97e5c4175E.exit.i.i.i"

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14142
  invoke void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hbe1877c04cecfd41E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.m unwind label %bb.l, !noalias !14137

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha55dbfa97e5c4175E.exit.i.i.i": ; preds = %bb.n, %bb.m, %bb.j
  %i.aa = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !14143, !noalias !14138, !nonnull !14, !noundef !14
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !14137
  %i.ac = add nuw nsw i64 %i.w, 1
  store i64 %i.ac, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !14143, !noalias !14138
  br label %bb.h

bb.l:                                             ; preds = %bb.n, %bb.k, %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$rusqlite..row..Rows$GT$17hfbbfaf05921f0ad1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ae)
          to label %.body.i unwind label %bb.o, !noalias !14137

bb.m:                                             ; preds = %bb.k
  %i.af = load i64, ptr %i.a, align 8, !noalias !14142, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14142
  %i.ag = call i64 @llvm.uadd.sat.i64(i64 %i.af, i64 1) ; 2 uses
  %i.ah = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !14144, !noalias !14138, !noundef !14 ; 2 uses
  %i.ai = load i64, ptr %i.g, align 8, !range !22, !alias.scope !14144, !noalias !14138, !noundef !14
  %i.aj = sub i64 %i.ai, %i.ah
  %i.ak = icmp ugt i64 %i.ag, %i.aj
  br i1 %i.ak, label %bb.n, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha55dbfa97e5c4175E.exit.i.i.i", !prof !21

bb.n:                                             ; preds = %bb.m
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hfa7e2c2ea4f912a3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ah, i64 noundef range(i64 1, 0) %i.ag, i64 noundef 8, i64 noundef 40)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha55dbfa97e5c4175E.exit.i.i.i" unwind label %bb.l, !noalias !14137

bb.o:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !14137
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h69bdc6cc49fe547dE.exit.i.i": ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$rusqlite..row..Rows$GT$17hfbbfaf05921f0ad1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %bb.q unwind label %bb.p, !noalias !14137

bb.p:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h69bdc6cc49fe547dE.exit.i.i"
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.p, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.an, %bb.p ], [ %i.ad, %bb.l ]
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9847eb305363906aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %"_ZN4core3ptr223drop_in_place$LT$core..iter..adapters..GenericShunt$LT$rusqlite..row..AndThenRows$LT$anki..storage..notetype..row_to_existing_card$GT$$C$core..result..Result$LT$core..convert..Infallible$C$anki..error..AnkiError$GT$$GT$$GT$17h479f1fe0870429a3E.exit.i" unwind label %bb.r, !noalias !14137

bb.q:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h69bdc6cc49fe547dE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !14145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14138
  br label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17he69889eb0b855e57E.exit"

bb.r:                                             ; preds = %bb.s, %.body.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !14137
  unreachable

"_ZN4core3ptr223drop_in_place$LT$core..iter..adapters..GenericShunt$LT$rusqlite..row..AndThenRows$LT$anki..storage..notetype..row_to_existing_card$GT$$C$core..result..Result$LT$core..convert..Infallible$C$anki..error..AnkiError$GT$$GT$$GT$17h479f1fe0870429a3E.exit.i": ; preds = %bb.s, %.body.i
  %.pn11.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.ap, %bb.s ]
  resume { ptr, i32 } %.pn11.i

bb.s:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$rusqlite..row..Rows$GT$17hfbbfaf05921f0ad1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %"_ZN4core3ptr223drop_in_place$LT$core..iter..adapters..GenericShunt$LT$rusqlite..row..AndThenRows$LT$anki..storage..notetype..row_to_existing_card$GT$$C$core..result..Result$LT$core..convert..Infallible$C$anki..error..AnkiError$GT$$GT$$GT$17h479f1fe0870429a3E.exit.i" unwind label %bb.r, !noalias !14137

"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17he69889eb0b855e57E.exit": ; preds = %bb.d, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17hee2fd16440dbe98fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14161)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14162
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !14163, !noundef !14 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.f, align 8, !alias.scope !14164, !noundef !14 ; 2 uses
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i, i64 %.val.i) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14162
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %spec.select.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40), !noalias !14162
  %i.g = load i64, ptr %i.c, align 8, !range !15, !noalias !14162, !noundef !14
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !20, !noalias !14162, !noundef !14 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17he751efe6484c495aE.exit.i.i", !prof !21

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !noalias !14162
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.j, i64 %i.l) #37, !noalias !14162
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17he751efe6484c495aE.exit.i.i": ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !noalias !14162, !nonnull !14, !noundef !14 ; 2 uses
  %i.n = icmp ule i64 %spec.select.i.i.i, %i.j
  call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14162
  store i64 %i.j, ptr %i.d, align 8, !noalias !14162
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %i.o, align 8, !noalias !14162
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.p, align 8, !noalias !14162
  %.sroa.05.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !14161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14165
  store i64 %.sroa.05.0.copyload.i, ptr %i.b, align 8, !noalias !14166
  %.sroa.4.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val.i, ptr %.sroa.4.0..sroa_idx7.i, align 8, !noalias !14166
  %.sroa.59.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.val3.i, ptr %.sroa.59.0..sroa_idx10.i, align 8, !noalias !14166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14167
  store ptr %i.p, ptr %i.a, align 8, !noalias !14168
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !14168
  %.sroa.57.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !noalias !14168
  invoke void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h379e4cd8bbc238a0E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h18826d46b8332dc6E.exit" unwind label %bb.c, !noalias !14162

bb.c:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17he751efe6484c495aE.exit.i.i"
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr161drop_in_place$LT$alloc..vec..Vec$LT$sharded_slab..page..Shared$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$GT$$GT$17h3b45253165c3e70dE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #35
          to label %bb.e unwind label %bb.d, !noalias !14162

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !14162
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.q

"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h18826d46b8332dc6E.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17he751efe6484c495aE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !14161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14162
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17hee669089974e841eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14177
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 224                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14177
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40), !noalias !14177
  %i.h = load i64, ptr %i.b, align 8, !range !15, !noalias !14177, !noundef !14
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !20, !noalias !14177, !noundef !14 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hd2870bc81ebd5907E.exit.i.i", !prof !21

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !14177
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.k, i64 %i.m) #37, !noalias !14177
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hd2870bc81ebd5907E.exit.i.i": ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !14177, !nonnull !14, !noundef !14 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14177
  store i64 %i.k, ptr %i.c, align 8, !noalias !14177
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !14177
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !noalias !14177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14178
  store ptr %i.q, ptr %i.a, align 8, !noalias !14179
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !14179
  %.sroa.58.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %.sroa.58.0..sroa_idx.i.i.i, align 8, !noalias !14179
  invoke void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he2fa9378f0460e1dE"(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h4a38c82122ec6bb4E.exit" unwind label %bb.c, !noalias !14177

bb.c:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hd2870bc81ebd5907E.exit.i.i"
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..cardgen..SingleCardGenContext$GT$$GT$17h48202ab27ab725d5E"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #35
          to label %bb.e unwind label %bb.d, !noalias !14177

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !14177
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.r

"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h4a38c82122ec6bb4E.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hd2870bc81ebd5907E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14177
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17hee9f5498c81351c3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14191)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14192
  %i.f = invoke { i64, i64 } @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h72d386202b9ad9d1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.r, !noalias !14191 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = extractvalue { i64, i64 } %i.f, 1
  %i.i = trunc nuw i64 %i.g to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14192
  invoke void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h3b33f2ef196e02f0E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.e unwind label %bb.r, !noalias !14191

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !alias.scope !14191
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !alias.scope !14191
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8, !alias.scope !14191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14192
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call fastcc void @"_ZN4core3ptr40drop_in_place$LT$rusqlite..row..Rows$GT$17hfbbfaf05921f0ad1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l), !noalias !14191
  br label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hc56f20ebe06f4ba2E.exit"

bb.e:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.d, align 8, !noalias !14192, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14192
  %i.n = call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 1)
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.n, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14192
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc.i unwind label %bb.r, !noalias !14191

.noexc.i:                                         ; preds = %bb.e
  %i.o = load i64, ptr %i.b, align 8, !range !15, !noalias !14192, !noundef !14
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !20, !noalias !14192, !noundef !14 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.g, !prof !21

bb.f:                                             ; preds = %.noexc.i
  %i.t = load i64, ptr %i.s, align 8, !noalias !14192
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.r, i64 %i.t) #37
          to label %.noexc7.i unwind label %bb.r, !noalias !14191

.noexc7.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %i.u = load ptr, ptr %i.s, align 8, !noalias !14192, !nonnull !14, !noundef !14 ; 2 uses
  %i.v = icmp ule i64 %.sroa.0.0.i.i, %i.r
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14192
  store i64 %i.h, ptr %i.u, align 8, !noalias !14191
  store i64 %i.r, ptr %i.e, align 8, !noalias !14192
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !14192
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !14192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !14191
  call void @llvm.experimental.noalias.scope.decl(metadata !14193)
  call void @llvm.experimental.noalias.scope.decl(metadata !14194)
  br label %bb.h

bb.h:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbd6b0b3dcac1df2dE.exit.i.i.i", %bb.g
  %i.w = invoke { i64, i64 } @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h72d386202b9ad9d1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.i unwind label %bb.l, !noalias !14191 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1
  %i.z = trunc nuw i64 %i.x to i1
  br i1 %i.z, label %bb.j, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hea0ef4d3f3a010b8E.exit.i.i"

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !14195, !noalias !14192, !noundef !14 ; 4 uses
  %i.ab = icmp ult i64 %i.aa, 1152921504606846976
  call void @llvm.assume(i1 %i.ab)
  %i.ac = load i64, ptr %i.e, align 8, !range !22, !alias.scope !14195, !noalias !14192, !noundef !14
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.k, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbd6b0b3dcac1df2dE.exit.i.i.i"

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14196
  invoke void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h3b33f2ef196e02f0E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.m unwind label %bb.l, !noalias !14191

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbd6b0b3dcac1df2dE.exit.i.i.i": ; preds = %bb.n, %bb.m, %bb.j
end_hunk_0
