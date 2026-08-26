Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/bindgen-65c77e4a6229ce89.bindgen.295e8af88b7da52f-cgu.05?download=true
inline.NumInlined: 487
inline.NumDeleted: 81
begin_hunk_0_@"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc55acada1e2614d3E":bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.d
  ret void

bb.g:                                             ; preds = %bb.b
  call void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he738a4bf8f925854E"(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.c)
  %i.h = load i64, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  call void @"_ZN103_$LT$core..iter..sources..repeat..Repeat$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h3f252fedb34cbb81E"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1)
  %i.m = load i64, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8
  %i.p = call i64 @llvm.uadd.sat.i64(i64 %i.h, i64 %i.m)
  %i.q = trunc nuw i64 %i.j to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = trunc nuw i64 %i.s to i1
  %or.cond = select i1 %i.q, i1 %i.t, i1 false    ; 2 uses
  %i.u = add i64 %i.o, %i.l                       ; 2 uses
  %i.v = icmp uge i64 %i.u, %i.l
  %narrow = select i1 %or.cond, i1 %i.v, i1 false
  %.sroa.05.0 = zext i1 %narrow to i64
  %.sroa.4.0 = select i1 %or.cond, i64 %i.u, i64 undef
  store i64 %i.p, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0, ptr %i.x, align 8
  br label %bb.f

bb.h:                                             ; preds = %bb.b
  tail call void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he738a4bf8f925854E"(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.c)
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hdb5b33bdb1dd0e26E"(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  %i.e = load i64, ptr %1, align 8
  %.not7 = icmp eq i64 %i.e, 2                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not7, label %bb.h, label %bb.g

bb.c:                                             ; preds = %bb.a
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @"_ZN99_$LT$core..iter..sources..once..Once$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4ef06b7a8edd1a43E"(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.g, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.d
  ret void

bb.g:                                             ; preds = %bb.b
  call void @_ZN4core4iter6traits8iterator8Iterator9size_hint17hd70c6631521e1b53E(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.c)
  %i.h = load i64, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  call void @"_ZN99_$LT$core..iter..sources..once..Once$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4ef06b7a8edd1a43E"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1)
  %i.m = load i64, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8
  %i.p = call i64 @llvm.uadd.sat.i64(i64 %i.h, i64 %i.m)
  %i.q = trunc nuw i64 %i.j to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = trunc nuw i64 %i.s to i1
  %or.cond = select i1 %i.q, i1 %i.t, i1 false    ; 2 uses
  %i.u = add i64 %i.o, %i.l                       ; 2 uses
  %i.v = icmp uge i64 %i.u, %i.l
  %narrow = select i1 %or.cond, i1 %i.v, i1 false
  %.sroa.05.0 = zext i1 %narrow to i64
  %.sroa.4.0 = select i1 %or.cond, i64 %i.u, i64 undef
  store i64 %i.p, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0, ptr %i.x, align 8
  br label %bb.f

bb.h:                                             ; preds = %bb.b
  tail call void @_ZN4core4iter6traits8iterator8Iterator9size_hint17hd70c6631521e1b53E(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.c)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define range(i64 0, 4294967296) i64 @"_ZN109_$LT$bindgen..clang..TypeTemplateArgIterator$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hf7000bfb27cb9baeE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.not = icmp ugt i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr nonnull align 1 @0, i64 43, ptr nonnull align 8 @2) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = sub nuw i32 %i.d, %i.b
  %i.f = zext i32 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN121_$LT$bindgen..ir..analysis..has_destructor..HasDestructorAnalysis$u20$as$u20$bindgen..ir..analysis..MonotoneFramework$GT$16initial_worklist17h946fc0825a5af7a3E"(ptr sret([24 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 2 uses
  %i.b = alloca [72 x i8], align 8                ; 2 uses
  %i.c = load ptr, ptr %1, align 8
  %i.d = tail call align 8 ptr @_ZN7bindgen2ir7context14BindgenContext17allowlisted_items17h7e3693d1c62209fbE(ptr align 8 %i.c)
  call void @"_ZN5alloc11collections5btree3set21BTreeSet$LT$T$C$A$GT$4iter17haa5a1bdf9d5fdaf3E"(ptr nonnull sret([72 x i8]) align 8 %i.a, ptr align 8 %i.d)
  call void @_ZN4core4iter6traits8iterator8Iterator6copied17h8696ae58b5f157ceE(ptr nonnull sret([72 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  call void @_ZN4core4iter6traits8iterator8Iterator7collect17he5e542518d787499E(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN121_$LT$bindgen..ir..analysis..has_destructor..HasDestructorAnalysis$u20$as$u20$bindgen..ir..analysis..MonotoneFramework$GT$17each_depending_on17hb33a37e3c71e66d9E"(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [48 x i8], align 8
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.g, align 8
  store ptr %2, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = call align 8 ptr @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$3get17h89541719462a0aa6E"(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.g) ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call { ptr, ptr } @"_ZN94_$LT$$RF$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h37a5f0a1f1c0d8e5E"(ptr nonnull align 8 %i.i) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0
  %i.l = extractvalue { ptr, ptr } %i.j, 1
  store ptr %i.k, ptr %i.e, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.l, ptr %i.m, align 8
  %i.n = call align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h676bf2d22b0ae7a2E"(ptr nonnull align 8 %i.e) ; 2 uses
  %.not56 = icmp eq ptr %i.n, null
  br i1 %.not56, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.o = phi ptr [ %i.r, %.lr.ph ], [ %i.n, %bb.b ]
  store ptr %i.o, ptr %i.d, align 8
  call void @_ZN4core3fmt2rt8Argument9new_debug17h96d820b33b6d3d93E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h02e78eff79030551E"(ptr nonnull sret([48 x i8]) align 8 %i.c, ptr nonnull align 8 @5, ptr nonnull align 8 %i.b)
  %i.p = load ptr, ptr %i.d, align 8
  %i.q = load i64, ptr %i.p, align 8
  call void @"_ZN7bindgen2ir8analysis7analyze28_$u7b$$u7b$closure$u7d$$u7d$17hc0dab7d4d261d23cE"(ptr nonnull align 8 %i.f, i64 %i.q)
  %i.r = call align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h676bf2d22b0ae7a2E"(ptr nonnull align 8 %i.e) ; 2 uses
  %.not5 = icmp eq ptr %i.r, null
  br i1 %.not5, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN121_$LT$bindgen..ir..analysis..has_destructor..HasDestructorAnalysis$u20$as$u20$bindgen..ir..analysis..MonotoneFramework$GT$3new17h553334598706fc1eE"(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  call void @"_ZN92_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..default..Default$GT$7default17h4d2a25384ebfba0eE"(ptr nonnull sret([32 x i8]) align 8 %i.b)
  invoke void @_ZN7bindgen2ir8analysis21generate_dependencies17hc03b4c35586877abE(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr align 8 %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr121drop_in_place$LT$std..collections..hash..set..HashSet$LT$bindgen..ir..context..ItemId$C$rustc_hash..FxBuildHasher$GT$$GT$17h69cf56d63ae318faE"(ptr nonnull align 8 %i.b) #29
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  store ptr %1, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN121_$LT$bindgen..ir..analysis..has_destructor..HasDestructorAnalysis$u20$as$u20$bindgen..ir..analysis..MonotoneFramework$GT$9constrain17hcaa59b062356d46fE"(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 3 uses
  %i.n = alloca [8 x i8], align 8                 ; 2 uses
  %i.o = alloca [16 x i8], align 8                ; 3 uses
  %i.p = alloca [16 x i8], align 8                ; 3 uses
  %i.q = alloca [8 x i8], align 8                 ; 2 uses
  %i.r = alloca [8 x i8], align 8                 ; 7 uses
  store i64 %1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.t = call zeroext i1 @"_ZN3std11collections4hash3set20HashSet$LT$T$C$S$GT$8contains17h8d9a1ff3e339b525E"(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.r)
  br i1 %i.t, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %0, align 8
  %i.v = load i64, ptr %i.r, align 8
  %i.w = call align 8 ptr @_ZN7bindgen2ir7context14BindgenContext12resolve_item17hc1798b22629488e6E(ptr align 8 %i.u, i64 %i.v)
  %i.x = call align 8 ptr @_ZN7bindgen2ir4item4Item7as_type17hac23574d83999981E(ptr align 8 %i.w) ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = call align 8 ptr @_ZN7bindgen2ir2ty4Type4kind17hd75017ab750a27b3E(ptr nonnull align 8 %i.x) ; 7 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = xor i64 %i.z, -9223372036854775808
  %i.ab = icmp slt i64 %i.z, 0
  %i.ac = select i1 %i.ab, i64 %i.aa, i64 2
  switch i64 %i.ac, label %bb.d [
    i64 2, label %bb.e
    i64 7, label %bb.m
    i64 8, label %bb.f
    i64 16, label %bb.g
    i64 18, label %bb.m
  ]

bb.d:                                             ; preds = %bb.m, %bb.n, %bb.l, %bb.h, %bb.c, %bb.b, %bb.a, %_ZN7bindgen2ir8analysis14has_destructor21HasDestructorAnalysis6insert17h6cb63cc35f9abec6E.exit9, %_ZN7bindgen2ir8analysis14has_destructor21HasDestructorAnalysis6insert17h6cb63cc35f9abec6E.exit8, %.critedge, %_ZN7bindgen2ir8analysis14has_destructor21HasDestructorAnalysis6insert17h6cb63cc35f9abec6E.exit
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ false, %_ZN7bindgen2ir8analysis14has_destructor21HasDestructorAnalysis6insert17h6cb63cc35f9abec6E.exit ], [ true, %bb.c ], [ false, %.critedge ], [ true, %bb.h ], [ false, %_ZN7bindgen2ir8analysis14has_destructor21HasDestructorAnalysis6insert17h6cb63cc35f9abec6E.exit9 ], [ true, %bb.n ], [ false, %_ZN7bindgen2ir8analysis14has_destructor21HasDestructorAnalysis6insert17h6cb63cc35f9abec6E.exit8 ], [ true, %bb.l ], [ true, %bb.m ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.ad = call zeroext i1 @_ZN7bindgen2ir4comp8CompInfo18has_own_destructor17h8a644e80f4d0dc31E(ptr nonnull align 8 %i.y)
  br i1 %i.ad, label %bb.i, label %bb.h

bb.f:                                             ; preds = %bb.c
  br label %bb.m

bb.g:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.af = call i64 @_ZN7bindgen2ir8template21TemplateInstantiation19template_definition17h9e384002d1f28c43E(ptr nonnull align 8 %i.ae)
  %i.ag = call i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hfde71323adf5c3c8E"(i64 %i.af, ptr nonnull align 8 @7)
  store i64 %i.ag, ptr %i.n, align 8
  %i.ah = call zeroext i1 @"_ZN3std11collections4hash3set20HashSet$LT$T$C$S$GT$8contains17h8d9a1ff3e339b525E"(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.n)
  br i1 %i.ah, label %.critedge7, label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.ai = call zeroext i1 @_ZN7bindgen2ir4comp8CompInfo4kind17h0d2e335b75ae7bbbE(ptr nonnull align 8 %i.y)
  br i1 %i.ai, label %bb.d, label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.aj = load i64, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ak = call i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h1ebd18bd5257cf74E"(i64 %i.aj, ptr nonnull align 8 @170) ; 2 uses
  store i64 %i.ak, ptr %i.l, align 8
  %i.al = call zeroext i1 @"_ZN3std11collections4hash3set20HashSet$LT$T$C$S$GT$6insert17h0f4a19a05a54fe66E"(ptr nonnull align 8 %i.s, i64 %i.ak)
  br i1 %i.al, label %_ZN7bindgen2ir8analysis14has_destructor21HasDestructorAnalysis6insert17h6cb63cc35f9abec6E.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN4core3fmt2rt8Argument9new_debug17h1aa7f400790f31aaE(ptr nonnull sret([16 x i8]) align 8 %i.i, ptr nonnull align 8 %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h02e78eff79030551E"(ptr nonnull sret([48 x i8]) align 8 %i.k, ptr nonnull align 8 @173, ptr nonnull align 8 %i.j)
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr nonnull align 8 %i.k, ptr nonnull align 8 @174) #31
  unreachable

_ZN7bindgen2ir8analysis14has_destructor21HasDestructorAnalysis6insert17h6cb63cc35f9abec6E.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.d

bb.k:                                             ; preds = %bb.h
  %i.am = call { ptr, i64 } @_ZN7bindgen2ir4comp8CompInfo12base_members17h2b1c1770b26e565bE(ptr nonnull align 8 %i.y) ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0
  %i.ao = extractvalue { ptr, i64 } %i.am, 1
  %i.ap = call { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hf9a23047083e1682E"(ptr align 8 %i.an, i64 %i.ao) ; 2 uses
  %i.aq = extractvalue { ptr, ptr } %i.ap, 0
  %i.ar = extractvalue { ptr, ptr } %i.ap, 1
  store ptr %i.aq, ptr %i.p, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = call zeroext i1 @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17heb33c5e7ae3727d8E"(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.s)
  br i1 %i.at, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = call { ptr, i64 } @_ZN7bindgen2ir4comp8CompInfo6fields17h844117b3516c88a2E(ptr nonnull align 8 %i.y) ; 2 uses
  %i.av = extractvalue { ptr, i64 } %i.au, 0
  %i.aw = extractvalue { ptr, i64 } %i.au, 1
  %i.ax = call { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hd194e3dae6ffdcecE"(ptr align 8 %i.av, i64 %i.aw) ; 2 uses
  %i.ay = extractvalue { ptr, ptr } %i.ax, 0
  %i.az = extractvalue { ptr, ptr } %i.ax, 1
  store ptr %i.ay, ptr %i.o, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.az, ptr %i.ba, align 8
  %i.bb = call zeroext i1 @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17h0f8531340d6a5ca9E"(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.s)
  br i1 %i.bb, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.k, %bb.l
  %i.bc = load i64, ptr %i.r, align 8
  call fastcc void @_ZN7bindgen2ir8analysis14has_destructor21HasDestructorAnalysis6insert17h6cb63cc35f9abec6E(ptr nonnull align 8 %0, i64 %i.bc)
  br label %bb.d

bb.m:                                             ; preds = %bb.c, %bb.c, %bb.f
  %.sink = phi i64 [ 8, %bb.c ], [ 32, %bb.f ], [ 8, %bb.c ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sink
  %.sroa.03.0 = load i64, ptr %i.bd, align 8
  %i.be = call i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hfde71323adf5c3c8E"(i64 %.sroa.03.0, ptr nonnull align 8 @8)
  store i64 %i.be, ptr %i.q, align 8
  %i.bf = call zeroext i1 @"_ZN3std11collections4hash3set20HashSet$LT$T$C$S$GT$8contains17h8d9a1ff3e339b525E"(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.q)
  br i1 %i.bf, label %bb.p, label %bb.d

bb.n:                                             ; preds = %bb.g
  %i.bg = call { ptr, i64 } @_ZN7bindgen2ir8template21TemplateInstantiation18template_arguments17h7eb60f6523448a49E(ptr nonnull align 8 %i.ae) ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.bg, 0
  %i.bi = extractvalue { ptr, i64 } %i.bg, 1
  %i.bj = call { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h5854c23c8a8d74bbE"(ptr align 8 %i.bh, i64 %i.bi) ; 2 uses
  %i.bk = extractvalue { ptr, ptr } %i.bj, 0
  %i.bl = extractvalue { ptr, ptr } %i.bj, 1
  store ptr %i.bk, ptr %i.m, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.bl, ptr %i.bm, align 8
  %i.bn = call zeroext i1 @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17h33c8a869db18a39fE"(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.s)
  br i1 %i.bn, label %.critedge7, label %bb.d

.critedge7:                                       ; preds = %bb.g, %bb.n
  %i.bo = load i64, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bp = call i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h1ebd18bd5257cf74E"(i64 %i.bo, ptr nonnull align 8 @170) ; 2 uses
  store i64 %i.bp, ptr %i.h, align 8
  %i.bq = call zeroext i1 @"_ZN3std11collections4hash3set20HashSet$LT$T$C$S$GT$6insert17h0f4a19a05a54fe66E"(ptr nonnull align 8 %i.s, i64 %i.bp)
  br i1 %i.bq, label %_ZN7bindgen2ir8analysis14has_destructor21HasDestructorAnalysis6insert17h6cb63cc35f9abec6E.exit8, label %bb.o

bb.o:                                             ; preds = %.critedge7
  call void @_ZN4core3fmt2rt8Argument9new_debug17h1aa7f400790f31aaE(ptr nonnull sret([16 x i8]) align 8 %i.e, ptr nonnull align 8 %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h02e78eff79030551E"(ptr nonnull sret([48 x i8]) align 8 %i.g, ptr nonnull align 8 @173, ptr nonnull align 8 %i.f)
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr nonnull align 8 %i.g, ptr nonnull align 8 @174) #31
  unreachable

_ZN7bindgen2ir8analysis14has_destructor21HasDestructorAnalysis6insert17h6cb63cc35f9abec6E.exit8: ; preds = %.critedge7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.d

bb.p:                                             ; preds = %bb.m
  %i.br = load i64, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bs = call i64 @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h1ebd18bd5257cf74E"(i64 %i.br, ptr nonnull align 8 @170) ; 2 uses
  store i64 %i.bs, ptr %i.d, align 8
  %i.bt = call zeroext i1 @"_ZN3std11collections4hash3set20HashSet$LT$T$C$S$GT$6insert17h0f4a19a05a54fe66E"(ptr nonnull align 8 %i.s, i64 %i.bs)
  br i1 %i.bt, label %_ZN7bindgen2ir8analysis14has_destructor21HasDestructorAnalysis6insert17h6cb63cc35f9abec6E.exit9, label %bb.q

bb.q:                                             ; preds = %bb.p
end_hunk_0
begin_hunk_1_@_ZN7bindgen5clang10EvalResult17as_literal_string17hf2ea68a5ef3f5cecE:bb.a
_ZN7bindgen5clang4Type12pointee_type17h41fea1ad148f19c7E.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  store i64 %storemerge.i, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @"_ZN4core6option15Option$LT$T$GT$7or_else17h372aeee87c30bcdfE"(ptr nonnull sret([32 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d, ptr nonnull align 8 %1)
  call void @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h3ddab0460c3b50a4E"(ptr nonnull sret([32 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
  %i.k = load i64, ptr %i.f, align 8
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.l

bb.e:                                             ; preds = %_ZN7bindgen5clang4Type12pointee_type17h41fea1ad148f19c7E.exit
  call void @"_ZN145_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..option..Option$LT$core..convert..Infallible$GT$$GT$$GT$13from_residual17h4fdebb394819f8bdE"(ptr sret([24 x i8]) align 8 %0)
  br label %bb.l

bb.f:                                             ; preds = %_ZN7bindgen5clang4Type12pointee_type17h41fea1ad148f19c7E.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.01.0.copyload = load i32, ptr %i.m, align 8
  switch i32 %.sroa.01.0.copyload, label %bb.g [
    i32 13, label %bb.h
    i32 14, label %bb.h
    i32 4, label %bb.h
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.j
    i32 15, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.l

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.n = load ptr, ptr %1, align 8
  %i.o = call ptr @_ZN9clang_sys25clang_EvalResult_getAsStr17h02a566051b2a50fdE(ptr %i.n)
  %i.p = call { ptr, i64 } @_ZN4core3ffi5c_str4CStr8from_ptr17h9ef98c99a560094bE(ptr %i.o) ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0
  %i.r = extractvalue { ptr, i64 } %i.p, 1
  %i.s = call { ptr, i64 } @_ZN4core3ffi5c_str4CStr8to_bytes17hce4eae3de55ebd3aE(ptr align 1 %i.q, i64 %i.r) ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h9dca3ed74eec66d5E"(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr align 1 %i.t, i64 %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN7bindgen5clang10EvalResult17as_literal_string28_$u7b$$u7b$closure$u7d$$u7d$17he52c62fa2e2ff971E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @_ZN9clang_sys20clang_getElementType17h2a7e363ef744a409E(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i, label %_ZN7bindgen5clang4Type9elem_type17ha252fd39a25067d0E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.copyload.i, ptr %i.d, align 8
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.3.0..sroa_idx2.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.3.0..sroa_idx.i, i64 20, i1 false)
  br label %_ZN7bindgen5clang4Type9elem_type17ha252fd39a25067d0E.exit

_ZN7bindgen5clang4Type9elem_type17ha252fd39a25067d0E.exit: ; preds = %bb.a, %bb.b
  %storemerge.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 %storemerge.i, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_ZN7bindgen5clang10EvalResult6as_int17h06c1f0a979ecac4dE(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = tail call i32 @_ZN9clang_sys24clang_EvalResult_getKind17h3532799c6acc0acdE(ptr %.val)
  %.not = icmp eq i32 %i.a, 1
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = tail call i32 @_ZN9clang_sys30clang_EvalResult_isUnsignedInt17had0a451746ee45b7E(ptr %i.b)
  %i.d = icmp eq i32 %i.c, 0
  %i.e = load ptr, ptr %0, align 8                ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @_ZN9clang_sys30clang_EvalResult_getAsLongLong17heef203301ec7ff5fE(ptr %i.e)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i64 @_ZN9clang_sys30clang_EvalResult_getAsUnsigned17h066519c191556904E(ptr %i.e) ; 2 uses
  %i.h = icmp sgt i64 %i.g, -1
  %.1 = zext i1 %i.h to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.c
  %.sroa.6.0 = phi i64 [ undef, %bb.a ], [ %i.g, %bb.d ], [ %i.f, %bb.c ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %.1, %bb.d ], [ 1, %bb.c ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.6.0, 1
  ret { i64, i64 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, double } @_ZN7bindgen5clang10EvalResult9as_double17h25dac955c1bbce6eE(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = tail call i32 @_ZN9clang_sys24clang_EvalResult_getKind17h3532799c6acc0acdE(ptr %.val)
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = tail call double @_ZN9clang_sys28clang_EvalResult_getAsDouble17h07735c6ba48402f4E(ptr %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi double [ %i.d, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.e = insertvalue { i64, double } poison, i64 %.sroa.0.0, 0
  %i.f = insertvalue { i64, double } %i.e, double %.sroa.3.0, 1
  ret { i64, double } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang10TargetInfo3new17h1d5b3b93d6a9b574E(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = load ptr, ptr %1, align 8
  %i.e = tail call ptr @_ZN9clang_sys34clang_getTranslationUnitTargetInfo17h3a30110f9cca72b7E(ptr %i.d) ; 3 uses
  %i.f = tail call { ptr, i32 } @_ZN9clang_sys26clang_TargetInfo_getTriple17hbbe654d9746cf163E(ptr %i.e) ; 2 uses
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = extractvalue { ptr, i32 } %i.f, 1
  call fastcc void @_ZN7bindgen5clang20cxstring_into_string17hd146c5530023fe16E(ptr noalias nonnull align 8 %i.c, ptr %i.g, i32 %i.h)
  %i.i = invoke i32 @_ZN9clang_sys32clang_TargetInfo_getPointerWidth17heb88c098327f43eaE(ptr %i.e)
          to label %bb.b unwind label %bb.k       ; 3 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN9clang_sys24clang_TargetInfo_dispose17h7ba0763d6a819eefE(ptr %i.e)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr nonnull align 1 @190, i64 35, ptr nonnull align 8 @191) #31
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.g, %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.k = and i32 %i.i, 7                          ; 2 uses
  store i32 %i.k, ptr %i.b, align 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.a, align 8
  invoke void @_ZN4core9panicking13assert_failed17heb5ac5589544dcc0E(i8 0, ptr nonnull align 4 %i.b, ptr nonnull align 4 @192, ptr nonnull align 8 %i.a, ptr nonnull align 8 @193) #31
          to label %bb.e unwind label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %i.q = invoke zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$8contains17hb533ad540e49cce6E"(ptr align 1 %i.n, i64 %i.p, ptr nonnull align 1 @194, i64 4)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %. = zext i1 %i.q to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %2 = zext nneg i32 %i.i to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %., ptr %i.s, align 8
  ret void

bb.j:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.thr_comm

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h685aa45b87bc79d0E"(ptr nonnull align 8 %i.c) #29
          to label %bb.j unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang11UnsavedFile3new17h8e47c46429fc5dceE(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) %0, ptr align 1 %1, i64 %2, ptr align 1 %3, i64 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  call void @_ZN5alloc3ffi5c_str7CString3new17h485b12fc25737e35E(ptr nonnull sret([32 x i8]) align 8 %i.e, ptr align 1 %1, i64 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = load i64, ptr %i.e, align 8
  %.not.i4 = icmp eq i64 %i.g, -9223372036854775808
  br i1 %.not.i4, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr nonnull align 1 @33, i64 43, ptr nonnull align 1 %i.a, ptr nonnull align 8 @32, ptr nonnull align 8 @195) #31
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr48drop_in_place$LT$alloc..ffi..c_str..NulError$GT$17h89f352d120194e6cE"(ptr nonnull align 8 %i.a) #29
          to label %common.resume unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

common.resume:                                    ; preds = %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.c ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

.body:                                            ; preds = %bb.j, %bb.f, %bb.n
  %.pn = phi { ptr, i32 } [ %i.y, %bb.n ], [ %i.j, %bb.f ], [ %i.q, %bb.j ]
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17h473e9d13d25e2f31E"(ptr nonnull align 8 %i.f) #29
          to label %common.resume unwind label %bb.t

bb.f:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %i.f, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store i64 %i.n, ptr %i.o, align 8
  invoke void @_ZN5alloc3ffi5c_str7CString3new17h485b12fc25737e35E(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr align 1 %3, i64 %4)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = load i64, ptr %i.c, align 8
  %.not.i = icmp eq i64 %i.p, -9223372036854775808
  br i1 %.not.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr nonnull align 1 @33, i64 43, ptr nonnull align 1 %i.b, ptr nonnull align 8 @32, ptr nonnull align 8 @196) #31
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr48drop_in_place$LT$alloc..ffi..c_str..NulError$GT$17h89f352d120194e6cE"(ptr nonnull align 8 %i.b) #29
          to label %.body unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

bb.m:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.v = load i64, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.t, ptr %i.d, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 %i.v, ptr %i.w, align 8
  %i.x = invoke { ptr, i64 } @"_ZN70_$LT$alloc..ffi..c_str..CString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4c397d42ae5c6e2cE"(ptr nonnull align 8 %i.f)
          to label %bb.o unwind label %bb.n       ; 2 uses

bb.n:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.m
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17h473e9d13d25e2f31E"(ptr nonnull align 8 %i.d) #29
          to label %.body unwind label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.z = extractvalue { ptr, i64 } %i.x, 0
  %i.aa = extractvalue { ptr, i64 } %i.x, 1
  %i.ab = invoke ptr @_ZN4core3ffi5c_str4CStr6as_ptr17hb8cbb51c2dc3a5d5E(ptr align 1 %i.z, i64 %i.aa)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.ac = invoke { ptr, i64 } @"_ZN70_$LT$alloc..ffi..c_str..CString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4c397d42ae5c6e2cE"(ptr nonnull align 8 %i.d)
          to label %bb.q unwind label %bb.n       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1
  %i.af = invoke ptr @_ZN4core3ffi5c_str4CStr6as_ptr17hb8cbb51c2dc3a5d5E(ptr align 1 %i.ad, i64 %i.ae)
          to label %bb.r unwind label %bb.n

bb.r:                                             ; preds = %bb.q
  %i.ag = invoke { ptr, i64 } @_ZN5alloc3ffi5c_str7CString8as_bytes17h1b4fee76b5e58e51E(ptr nonnull align 8 %i.d)
          to label %bb.s unwind label %bb.n

bb.s:                                             ; preds = %bb.r
  %i.ah = extractvalue { ptr, i64 } %i.ag, 1
  %i.ai = load ptr, ptr %i.f, align 8
  %i.aj = load i64, ptr %i.o, align 8
  %i.ak = load ptr, ptr %i.d, align 8
  %i.al = load i64, ptr %i.w, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ab, ptr %i.am, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.af, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ah, ptr %.sroa.3.0..sroa_idx, align 8
  store ptr %i.ai, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aj, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ak, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.al, ptr %i.ap, align 8
  ret void

bb.t:                                             ; preds = %bb.n, %.body
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang11kind_to_str17h068cc5695645f522E(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i32 } @_ZN9clang_sys27clang_getCursorKindSpelling17h9350cead278cb057E(i32 %1) ; 2 uses
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  %i.c = extractvalue { ptr, i32 } %i.a, 1
  tail call fastcc void @_ZN7bindgen5clang20cxstring_into_string17hd146c5530023fe16E(ptr noalias align 8 %0, ptr %i.b, i32 %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang14SourceLocation8location17hd0697d6cb580f946E(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  %i.d = alloca [4 x i8], align 4                 ; 3 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  store ptr null, ptr %i.e, align 8
  store i32 0, ptr %i.d, align 4
  store i32 0, ptr %i.c, align 4
  store i32 0, ptr %i.b, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_ZN9clang_sys21clang_getFileLocation17hcea5caec50859d64E(ptr nonnull align 8 %i.a, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.b)
  %i.f = load ptr, ptr %i.e, align 8
end_hunk_1
begin_hunk_2_@_ZN7bindgen5clang14visit_children17hebd59add0d7eea72E:bb.a

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  invoke void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h0ed4cc7ed7f6fa7fE"(ptr nonnull sret([48 x i8]) align 8 %i.al, ptr nonnull align 8 @154, ptr nonnull align 8 %i.ak)
          to label %bb.t unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb6321963410ba484E"(ptr nonnull sret([24 x i8]) align 8 %i.ah, ptr nonnull align 8 %i.am)
          to label %bb.u unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.u
  %i.db = invoke { i64, ptr } @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha5ca05b074261450E"(ptr nonnull align 8 %i.ag)
          to label %bb.v unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.v:                                             ; preds = %.backedge.i
  %i.dc = extractvalue { i64, ptr } %i.db, 1      ; 3 uses
  %.not.i = icmp eq ptr %i.dc, null
  br i1 %.not.i, label %_ZN7bindgen2ir4objc13ObjCInterface10add_method17hb36ea2c0b66bf7acE.exit.i.invoke, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.dc, ptr %i.af, align 8
  %i.dd = invoke align 8 ptr @_ZN7bindgen2ir4item4Item7as_type17hac23574d83999981E(ptr nonnull align 8 %i.dc)
          to label %bb.x unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.x:                                             ; preds = %bb.w
  %.not8.i = icmp eq ptr %i.dd, null
  br i1 %.not8.i, label %.backedge.i.backedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.de = invoke align 8 ptr @_ZN7bindgen2ir2ty4Type4kind17hd75017ab750a27b3E(ptr nonnull align 8 %i.dd)
          to label %bb.z unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.z:                                             ; preds = %bb.y
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = icmp eq i64 %i.df, -9223372036854775788
  br i1 %i.dg, label %bb.aa, label %.backedge.i.backedge

bb.aa:                                            ; preds = %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 168
  %i.di = load i8, ptr %i.dh, align 8
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.ab, label %.backedge.i.backedge

bb.ab:                                            ; preds = %bb.aa
  %i.dk = invoke { ptr, i64 } @_ZN7bindgen2ir2ty4Type4name17h9e5d7192c1d14589E(ptr nonnull align 8 %i.dd)
          to label %bb.ac unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dm = extractvalue { ptr, i64 } %i.dk, 0
  %i.dn = extractvalue { ptr, i64 } %i.dk, 1
  store ptr %i.dm, ptr %i.ad, align 8
  store i64 %i.dn, ptr %i.cv, align 8
  invoke void @_ZN4core3fmt2rt8Argument11new_display17h10fe4c82e518c0bcE(ptr nonnull sret([16 x i8]) align 8 %i.ab, ptr nonnull align 8 %i.dl)
          to label %bb.ad unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN4core3fmt2rt8Argument9new_debug17h1b7884d0168d1333E(ptr nonnull sret([16 x i8]) align 8 %i.aa, ptr nonnull align 8 %i.ad)
          to label %bb.ae unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  invoke void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h57df8ca97407c903E"(ptr nonnull sret([48 x i8]) align 8 %i.ae, ptr nonnull align 8 @157, ptr nonnull align 8 %i.ac)
          to label %bb.af unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  %i.do = load ptr, ptr %i.cx, align 8
  %i.dp = load i64, ptr %i.cy, align 8
  store ptr %i.do, ptr %i.z, align 8
  store i64 %i.dp, ptr %i.cz, align 8
  %i.dq = invoke { ptr, i64 } @_ZN7bindgen2ir2ty4Type4name17h9e5d7192c1d14589E(ptr nonnull align 8 %i.dd)
          to label %bb.ag unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.dr = extractvalue { ptr, i64 } %i.dq, 0
  %i.ds = extractvalue { ptr, i64 } %i.dq, 1
  store ptr %i.dr, ptr %i.y, align 8
  store i64 %i.ds, ptr %i.da, align 8
  %i.dt = invoke zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7d56122bd7444d06E"(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.y)
          to label %bb.ah unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.dt, label %bb.ai, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.ah, %bb.aa, %bb.z, %bb.x
  br label %.backedge.i

bb.ai:                                            ; preds = %bb.ah
  %i.du = extractvalue { i64, ptr } %i.db, 0
  invoke void @_ZN4core3fmt2rt8Argument9new_debug17h5d6a80e551d9a2e1E(ptr nonnull sret([16 x i8]) align 8 %i.v, ptr nonnull align 8 %i.af)
          to label %bb.aj unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  invoke void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117hbf7a982ee1b2372bE"(ptr nonnull sret([48 x i8]) align 8 %i.x, ptr nonnull align 8 @159, ptr nonnull align 8 %i.w)
          to label %bb.ak unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  %i.dv = load ptr, ptr %i.cr, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hf36a92fe6ce33768E"(ptr nonnull align 8 %i.dw, i64 %i.du, ptr nonnull align 8 @160)
          to label %_ZN7bindgen2ir4objc13ObjCInterface10add_method17hb36ea2c0b66bf7acE.exit.i.invoke unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %.body.i.invoke
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

.body.i.invoke:                                   ; preds = %bb.ao, %.thread.i.i, %bb.m, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dy = phi ptr [ %i.an, %bb.m ], [ %i.as, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.u, %.thread.i.i ], [ %i.u, %bb.ao ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h685aa45b87bc79d0E"(ptr nonnull align 8 %i.dy) #29
          to label %.body unwind label %bb.al

bb.am:                                            ; preds = %.noexc3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  invoke void @_ZN7bindgen2ir8function11FunctionSig7from_ty17h2e36b5de0d3ac7d7E(ptr nonnull sret([72 x i8]) align 8 %i.s, ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.av, ptr align 8 %i.ea)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  invoke void @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17he81ad94792fcfd04E"(ptr nonnull sret([72 x i8]) align 8 %i.t, ptr nonnull align 8 %i.s, ptr nonnull align 1 @161, i64 20, ptr nonnull align 8 @162)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %.noexc3, %bb.am, %bb.an, %bb.az, %bb.ax
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.invoke

bb.ap:                                            ; preds = %bb.an
  %i.ec = load i32, ptr %i.av, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8            ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.eg = load i64, ptr %i.ef, align 8            ; 2 uses
  %i.eh = icmp eq i32 %i.ec, 17                   ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.t, i64 72, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @"_ZN4core3str21_$LT$impl$u20$str$GT$5split17hfc29518f91565ec0E"(ptr nonnull sret([72 x i8]) align 8 %i.c, ptr align 1 %i.ee, i64 %i.eg, i32 58)
          to label %bb.aq unwind label %.thread9.i.i, !noalias !30

.thread9.i.i:                                     ; preds = %bb.aq, %bb.ap
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.thread.i.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN4core4iter6traits8iterator8Iterator7collect17h039b6e6a5aa01a9dE(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c)
          to label %bb.ar unwind label %.thread9.i.i, !noalias !30

bb.ar:                                            ; preds = %bb.aq
  %i.ei = invoke { ptr, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3bf6e5eebf01c542E"(ptr nonnull align 8 %i.d)
          to label %bb.au unwind label %bb.at, !noalias !30 ; 2 uses

bb.as:                                            ; preds = %bb.aw, %bb.at
  invoke void @"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h23aa6089b0b3fe44E"(ptr nonnull align 8 %i.d) #29
          to label %.thread.i.i unwind label %bb.ay, !noalias !30

bb.at:                                            ; preds = %bb.au, %bb.ar
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %bb.as

bb.au:                                            ; preds = %bb.ar
  %i.ek = extractvalue { ptr, i64 } %i.ei, 0
  %i.el = extractvalue { ptr, i64 } %i.ei, 1
  invoke void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4join17hdf08d6f57763f1aeE"(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %i.ek, i64 %i.el, ptr nonnull align 1 @140, i64 1)
          to label %bb.av unwind label %bb.at, !noalias !30

bb.av:                                            ; preds = %bb.au
  invoke void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hce4eae8a960115d0E"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 1 %i.ee, i64 %i.eg)
          to label %bb.ax unwind label %bb.aw, !noalias !30

bb.aw:                                            ; preds = %bb.av
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h685aa45b87bc79d0E"(ptr nonnull align 8 %i.b) #29
          to label %bb.as unwind label %bb.ay, !noalias !30

bb.ax:                                            ; preds = %bb.av
  %i.en = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.eo, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.eq = zext i1 %i.eh to i8
  store i8 %i.eq, ptr %i.ep, align 8, !alias.scope !30
  invoke void @"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h23aa6089b0b3fe44E"(ptr nonnull align 8 %i.d)
          to label %bb.az unwind label %bb.ao

bb.ay:                                            ; preds = %.thread.i.i, %bb.aw, %bb.as
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30, !noalias !30
  unreachable

.thread.i.i:                                      ; preds = %bb.as, %.thread9.i.i
  invoke void @"_ZN4core3ptr55drop_in_place$LT$bindgen..ir..function..FunctionSig$GT$17h2ec145fb9e412798E"(ptr nonnull align 8 %i.p) #29
          to label %.body.i.invoke unwind label %bb.ay, !noalias !30

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  %..i.i = select i1 %i.eh, i64 112, i64 88
  %.3.i.i = select i1 %i.eh, ptr @148, ptr @147
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %..i.i
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hfcef80679a07790fE"(ptr nonnull align 8 %i.eu, ptr nonnull align 8 %i.q, ptr nonnull align 8 %.3.i.i)
          to label %_ZN7bindgen2ir4objc13ObjCInterface10add_method17hb36ea2c0b66bf7acE.exit.i.invoke unwind label %bb.ao

_ZN7bindgen2ir4objc13ObjCInterface10add_method17hb36ea2c0b66bf7acE.exit.i.invoke: ; preds = %bb.v, %bb.az, %bb.ak
  %i.ev = phi ptr [ %i.as, %bb.ak ], [ %i.u, %bb.az ], [ %i.as, %bb.v ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h685aa45b87bc79d0E"(ptr nonnull align 8 %i.ev)
          to label %bb.ba unwind label %bb.b

bb.ba:                                            ; preds = %_ZN7bindgen2ir4objc13ObjCInterface10add_method17hb36ea2c0b66bf7acE.exit.i.invoke, %bb.l, %.noexc9, %bb.c, %bb.a, %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  ret i32 1
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_ZN7bindgen5clang15TranslationUnit4save17h23982cef1bc8de9bE(ptr nofree readonly align 8 captures(none) %0, ptr align 1 %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @_ZN5alloc3ffi5c_str7CString3new17h6f78ac0dbb6e43d0E(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr align 1 %1, i64 %2)
  %i.c = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8
  store ptr %i.e, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.g, ptr %i.h, align 8
  %i.i = load ptr, ptr %0, align 8
  %i.j = invoke { ptr, i64 } @"_ZN70_$LT$alloc..ffi..c_str..CString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4c397d42ae5c6e2cE"(ptr nonnull align 8 %i.b)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17h473e9d13d25e2f31E"(ptr nonnull align 8 %i.b) #29
          to label %bb.j unwind label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, i64 } %i.j, 0
  %i.m = extractvalue { ptr, i64 } %i.j, 1
  %i.n = invoke ptr @_ZN4core3ffi5c_str4CStr6as_ptr17hb8cbb51c2dc3a5d5E(ptr align 1 %i.l, i64 %i.m)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %0, align 8
  %i.p = invoke i32 @_ZN9clang_sys24clang_defaultSaveOptions17hd45e0a5d025a0fb1E(ptr %i.o)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.q = invoke i32 @_ZN9clang_sys25clang_saveTranslationUnit17hf3fe740caf552275E(ptr %i.i, ptr %i.n, i32 %i.p)
          to label %bb.g unwind label %bb.c       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.r = icmp ne i32 %i.q, 0
  %. = zext i1 %i.r to i32
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17h473e9d13d25e2f31E"(ptr nonnull align 8 %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
  %.sroa.4.1 = phi i32 [ 1, %bb.k ], [ %i.q, %bb.g ]
  %.sroa.0.1 = phi i32 [ 1, %bb.k ], [ %., %bb.g ]
  %i.s = insertvalue { i32, i32 } poison, i32 %.sroa.0.1, 0
  %i.t = insertvalue { i32, i32 } %i.s, i32 %.sroa.4.1, 1
  ret { i32, i32 } %i.t

bb.i:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

bb.j:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.k

bb.k:                                             ; preds = %bb.a
  call void @"_ZN4core3ptr105drop_in_place$LT$core..result..Result$LT$alloc..ffi..c_str..CString$C$alloc..ffi..c_str..NulError$GT$$GT$17h7fea3210d244494aE"(ptr nonnull align 8 %i.a)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang15TranslationUnit5diags17h95a1c1eb6904f860E(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %1, align 8
  %i.d = tail call i32 @_ZN9clang_sys23clang_getNumDiagnostics17h51b8ffc30b327326E(ptr %i.c)
  %i.e = zext i32 %i.d to i64
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h67cca18a3b923a11E"(ptr nonnull sret([24 x i8]) align 8 %i.b)
  %i.f = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hae94f7a87f2c8d0dE"(i64 0, i64 %i.e)
          to label %bb.c unwind label %.loopexit.split-lp ; 2 uses

.loopexit:                                        ; preds = %bb.d, %bb.f, %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$bindgen..clang..Diagnostic$GT$$GT$17h3a44013ef1994c8aE"(ptr nonnull align 8 %i.b) #29
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = extractvalue { i64, i64 } %i.f, 1
  store i64 %i.g, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %i.j = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hd2d3fd791b57b32fE"(ptr nonnull align 8 %i.a)
          to label %bb.e unwind label %.loopexit  ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = extractvalue { i64, i64 } %i.j, 1
  %i.n = load ptr, ptr %1, align 8
  %i.o = trunc i64 %i.m to i32
  %i.p = invoke ptr @_ZN9clang_sys19clang_getDiagnostic17h4d524495d98a9a32E(ptr %i.n, i32 %i.o)
          to label %bb.h unwind label %.loopexit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  ret void

bb.h:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h1a695ad8bbf49fefE"(ptr nonnull align 8 %i.b, ptr %i.p, ptr nonnull align 8 @197)
end_hunk_2
begin_hunk_3_@_ZN7bindgen5clang4Type15fallible_layout17h198224728ae50eb0E:bb.a

bb.l:                                             ; preds = %_ZN7bindgen5clang4Type14clang_align_of17h6486d3090d1776d2E.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.0.0.i.i6, ptr %i.ai, align 8, !alias.scope !39
  br label %_ZN7bindgen5clang4Type14fallible_align17h2f2f56c3d29074e0E.exit

bb.m:                                             ; preds = %_ZN7bindgen5clang4Type14clang_align_of17h6486d3090d1776d2E.exit.i, %_ZN7bindgen5clang4Type14clang_align_of17h6486d3090d1776d2E.exit.thread.i
  %.sroa.0.0.i3.i2 = phi i64 [ -6, %_ZN7bindgen5clang4Type14clang_align_of17h6486d3090d1776d2E.exit.thread.i ], [ %.sroa.0.0.i.i6, %_ZN7bindgen5clang4Type14clang_align_of17h6486d3090d1776d2E.exit.i ] ; 2 uses
  %i.aj = trunc i64 %.sroa.0.0.i3.i2 to i32
  %i.ak = icmp ugt i32 %i.aj, -6
  %i.al = trunc i64 %.sroa.0.0.i3.i2 to i8
  %switch.offset.i.i3 = xor i8 %i.al, -1
  %.sroa.0.0.i1.i4 = select i1 %i.ak, i8 %switch.offset.i.i3, i8 5
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.sroa.0.0.i1.i4, ptr %i.am, align 1, !alias.scope !39
  br label %_ZN7bindgen5clang4Type14fallible_align17h2f2f56c3d29074e0E.exit

_ZN7bindgen5clang4Type14fallible_align17h2f2f56c3d29074e0E.exit: ; preds = %bb.l, %bb.m
  %storemerge.i5 = phi i8 [ 0, %bb.l ], [ 1, %bb.m ]
  store i8 %storemerge.i5, ptr %i.j, align 8, !alias.scope !39
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h5f5363e9f1a10a5cE"(ptr nonnull sret([16 x i8]) align 8 %i.k, ptr nonnull align 8 %i.j)
  %i.an = load i8, ptr %i.k, align 8
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN7bindgen5clang4Type14fallible_align17h2f2f56c3d29074e0E.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.aq = load i8, ptr %i.ap, align 1
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hd625557f70498492E"(ptr sret([24 x i8]) align 8 %0, i8 %i.aq, ptr nonnull align 8 @200)
  br label %bb.p

bb.o:                                             ; preds = %_ZN7bindgen5clang4Type14fallible_align17h2f2f56c3d29074e0E.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  call void @_ZN7bindgen2ir6layout6Layout3new17h9ec6c65d281cc669E(ptr nonnull sret([24 x i8]) align 8 %i.i, i64 %i.ac, i64 %i.as)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang4Type17atomic_value_type17h3e36acdcd3919df2E(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_ZN9clang_sys23clang_Type_getValueType17he62c51ad82f69533E(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_ZN7bindgen5clang4Type18is_associated_type17haa724d5e3dfbbb7fE(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = load i32, ptr %0, align 8
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @_ZN7bindgen5clang4Type8spelling17he51423e474f40571E(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %0)
  %i.g = invoke align 8 ptr @"_ZN3std4sync9once_lock17OnceLock$LT$T$GT$11get_or_init17hc8c0cf567e03f89eE"(ptr nonnull align 8 @_ZN7bindgen5clang4Type18is_associated_type27hacky_parse_associated_type13ASSOC_TYPE_RE17h00449f7eb807e4d9E)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h685aa45b87bc79d0E"(ptr nonnull align 8 %i.d) #29
          to label %common.resume unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = invoke zeroext i1 @_ZN5regex5regex6string5Regex8is_match17ha8d97e0aabae7a2eE(ptr align 8 %i.g, ptr align 1 %i.j, i64 %i.l)
          to label %_ZN7bindgen5clang4Type18is_associated_type27hacky_parse_associated_type17h7efd1c211f487e13E.exit unwind label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.p, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_ZN7bindgen5clang4Type18is_associated_type27hacky_parse_associated_type17h7efd1c211f487e13E.exit: ; preds = %bb.d
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h685aa45b87bc79d0E"(ptr nonnull align 8 %i.d)
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7bindgen5clang4Type18is_associated_type27hacky_parse_associated_type17h7efd1c211f487e13E.exit, %bb.a, %_ZN7bindgen5clang4Type18is_associated_type27hacky_parse_associated_type17h7efd1c211f487e13E.exit1
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.u, %_ZN7bindgen5clang4Type18is_associated_type27hacky_parse_associated_type17h7efd1c211f487e13E.exit1 ], [ true, %_ZN7bindgen5clang4Type18is_associated_type27hacky_parse_associated_type17h7efd1c211f487e13E.exit ]
  ret i1 %.sroa.0.0

bb.g:                                             ; preds = %_ZN7bindgen5clang4Type18is_associated_type27hacky_parse_associated_type17h7efd1c211f487e13E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @_ZN9clang_sys22clang_getCanonicalType17heabc83d6cff42f7dE(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN7bindgen5clang4Type8spelling17he51423e474f40571E(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  %i.o = invoke align 8 ptr @"_ZN3std4sync9once_lock17OnceLock$LT$T$GT$11get_or_init17hc8c0cf567e03f89eE"(ptr nonnull align 8 @_ZN7bindgen5clang4Type18is_associated_type27hacky_parse_associated_type13ASSOC_TYPE_RE17h00449f7eb807e4d9E)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h685aa45b87bc79d0E"(ptr nonnull align 8 %i.c) #29
          to label %common.resume unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = load i64, ptr %i.s, align 8
  %i.u = invoke zeroext i1 @_ZN5regex5regex6string5Regex8is_match17ha8d97e0aabae7a2eE(ptr align 8 %i.o, ptr align 1 %i.r, i64 %i.t)
          to label %_ZN7bindgen5clang4Type18is_associated_type27hacky_parse_associated_type17h7efd1c211f487e13E.exit1 unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

_ZN7bindgen5clang4Type18is_associated_type27hacky_parse_associated_type17h7efd1c211f487e13E.exit1: ; preds = %bb.i
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h685aa45b87bc79d0E"(ptr nonnull align 8 %i.c)
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN7bindgen5clang4Type18is_associated_type27hacky_parse_associated_type28_$u7b$$u7b$closure$u7d$$u7d$17h789b54325d6685eeE"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @_ZN5regex5regex6string5Regex3new17hc8e9cbb866c4a482E(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 1 @202, i64 38)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h595e8158561dae2fE.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr nonnull align 1 @33, i64 43, ptr nonnull align 1 %i.a, ptr nonnull align 8 @34, ptr nonnull align 8 @203) #31
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hfd9eda54467743dfE"(ptr nonnull align 8 %i.a) #29
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h595e8158561dae2fE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_ZN7bindgen5clang4Type20is_valid_and_exposed17h72221743abf7d7e9E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  %.val = load i32, ptr %0, align 8
  %spec.select = icmp ugt i32 %.val, 1
  ret i1 %spec.select
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang4Type21canonical_declaration17h4e8402fd3320b8f5E(ptr nofree writeonly sret([64 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readonly align 8 captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.3.i = alloca [28 x i8], align 4          ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.4.i.i = alloca [28 x i8], align 4        ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.3 = alloca [24 x i8], align 8            ; 2 uses
  %.sroa.417 = alloca [28 x i8], align 4          ; 2 uses
  %.sroa.5 = alloca [28 x i8], align 4            ; 3 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_ZN9clang_sys24clang_getTypeDeclaration17haa5488e797c5bd9eE(ptr nonnull sret([32 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @_ZN9clang_sys25clang_getCursorDefinition17haa6a3311fe8f7035E(ptr nonnull sret([32 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.f, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..sroa_idx.i.i, i64 28, i1 false)
  %i.m = call i32 @_ZN9clang_sys15clang_isInvalid17h31bda8f1e3269809E(i32 %.sroa.0.0.copyload.i.i)
  %i.n = icmp ne i32 %i.m, 0
  %.not.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 71
  %or.cond.i.i = select i1 %i.n, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_ZN7bindgen5clang4Type11declaration17hdde23c16c80bec2cE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..sroa_idx3.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i.i, i64 28, i1 false)
  br label %_ZN7bindgen5clang4Type11declaration17hdde23c16c80bec2cE.exit

_ZN7bindgen5clang4Type11declaration17hdde23c16c80bec2cE.exit: ; preds = %bb.a, %bb.b
  %storemerge.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 %storemerge.i.i, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17hb6b68de976aaa5cfE"(ptr nonnull sret([32 x i8]) align 8 %i.l, ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.p = load i32, ptr %i.l, align 8
  %i.q = call i32 @_ZN9clang_sys15clang_isInvalid17h31bda8f1e3269809E(i32 %i.p)
  %i.r = icmp eq i32 %i.q, 0
  %.not = icmp eq ptr %2, null
  %or.cond = select i1 %i.r, i1 true, i1 %.not
  br i1 %or.cond, label %_ZN7bindgen5clang6Cursor16is_template_like17he2808adabc90fbaaE.exit, label %bb.c

_ZN7bindgen5clang6Cursor16is_template_like17he2808adabc90fbaaE.exit: ; preds = %_ZN7bindgen5clang6Cursor10referenced17h9dbcb9b135f8cc12E.exit, %bb.e, %_ZN7bindgen5clang4Type11declaration17hdde23c16c80bec2cE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  call void @_ZN9clang_sys24clang_getCanonicalCursor17h02cae0528c803845E(ptr nonnull sret([32 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c)
  %.sroa.014.0.copyload16 = load i32, ptr %i.d, align 8 ; 3 uses
  %.sroa.417.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.417, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.417.0..sroa_idx18, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.s = call i32 @_ZN9clang_sys15clang_isInvalid17h31bda8f1e3269809E(i32 %.sroa.014.0.copyload16)
  %i.t = icmp ne i32 %i.s, 0
  %.not2 = icmp eq i32 %.sroa.014.0.copyload16, 71
  %or.cond25 = select i1 %i.t, i1 true, i1 %.not2
  br i1 %or.cond25, label %bb.g, label %bb.f

bb.c:                                             ; preds = %_ZN7bindgen5clang4Type11declaration17hdde23c16c80bec2cE.exit
  %.sroa.0.0.copyload = load i32, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.0..sroa_idx, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  store i32 %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.0..sroa_idx8, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.0..sroa_idx, i64 28, i1 false)
  call void @_ZN9clang_sys25clang_getCursorReferenced17h768490d7c7cdcc96E(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.3.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.3.0..sroa_idx.i, i64 28, i1 false)
  %i.u = call i32 @_ZN9clang_sys15clang_isInvalid17h31bda8f1e3269809E(i32 %.sroa.0.0.copyload.i)
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.d, label %_ZN7bindgen5clang6Cursor10referenced17h9dbcb9b135f8cc12E.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.3.i, i64 28, i1 false)
  br label %_ZN7bindgen5clang6Cursor10referenced17h9dbcb9b135f8cc12E.exit

_ZN7bindgen5clang6Cursor10referenced17h9dbcb9b135f8cc12E.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.copyload.i, %bb.d ], [ %.sroa.0.0.copyload, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  switch i32 %.sroa.0.0, label %_ZN7bindgen5clang6Cursor16is_template_like17he2808adabc90fbaaE.exit [
    i32 31, label %bb.e
    i32 32, label %bb.e
    i32 601, label %bb.e
  ]

bb.e:                                             ; preds = %_ZN7bindgen5clang6Cursor10referenced17h9dbcb9b135f8cc12E.exit, %_ZN7bindgen5clang6Cursor10referenced17h9dbcb9b135f8cc12E.exit, %_ZN7bindgen5clang6Cursor10referenced17h9dbcb9b135f8cc12E.exit
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.213.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5, i64 28, i1 false)
  store i32 %.sroa.0.0, ptr %i.l, align 8
  br label %_ZN7bindgen5clang6Cursor16is_template_like17he2808adabc90fbaaE.exit

bb.f:                                             ; preds = %_ZN7bindgen5clang6Cursor16is_template_like17he2808adabc90fbaaE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.w, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.417, i64 28, i1 false)
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.014.0.copyload16, ptr %.sroa.220.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %_ZN7bindgen5clang6Cursor16is_template_like17he2808adabc90fbaaE.exit, %bb.f
  %storemerge = phi i64 [ 1, %bb.f ], [ 0, %_ZN7bindgen5clang6Cursor16is_template_like17he2808adabc90fbaaE.exit ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_ZN7bindgen5clang4Type30is_fully_instantiated_template17hba46caf8e09e69eeE(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.4.i.i = alloca [28 x i8], align 4        ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 2 uses
  %i.j = alloca [40 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.k = call i32 @_ZN9clang_sys34clang_Type_getNumTemplateArguments17h4a98ae4fd1ecdb4bE(ptr nonnull align 8 %i.h) ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  %..i.i = zext i1 %i.l to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @"_ZN4core6option15Option$LT$T$GT$3map17h02f6656ca8171cdcE"(ptr nonnull sret([40 x i8]) align 8 %i.j, i32 %..i.i, i32 %i.k, ptr nonnull align 8 %0)
  %i.m = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$11is_some_and17h202f601dac93544fE"(ptr nonnull align 8 %i.j)
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @_ZN9clang_sys24clang_getTypeDeclaration17haa5488e797c5bd9eE(ptr nonnull sret([32 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @_ZN9clang_sys25clang_getCursorDefinition17haa6a3311fe8f7035E(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.b, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..sroa_idx.i.i, i64 28, i1 false)
  %i.n = call i32 @_ZN9clang_sys15clang_isInvalid17h31bda8f1e3269809E(i32 %.sroa.0.0.copyload.i.i)
  %i.o = icmp ne i32 %i.n, 0
  %.not.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 71
  %or.cond.i.i = select i1 %i.o, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_ZN7bindgen5clang4Type11declaration17hdde23c16c80bec2cE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..sroa_idx3.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i.i, i64 28, i1 false)
  br label %_ZN7bindgen5clang4Type11declaration17hdde23c16c80bec2cE.exit

_ZN7bindgen5clang4Type11declaration17hdde23c16c80bec2cE.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  store i64 %storemerge.i.i, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17hb6b68de976aaa5cfE"(ptr nonnull sret([32 x i8]) align 8 %i.i, ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.q = load i32, ptr %i.i, align 8
  switch i32 %i.q, label %bb.d [
    i32 32, label %bb.e
    i32 601, label %bb.e
    i32 29, label %bb.e
  ]

bb.d:                                             ; preds = %bb.e, %_ZN7bindgen5clang4Type11declaration17hdde23c16c80bec2cE.exit, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ true, %_ZN7bindgen5clang4Type11declaration17hdde23c16c80bec2cE.exit ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %_ZN7bindgen5clang4Type11declaration17hdde23c16c80bec2cE.exit, %_ZN7bindgen5clang4Type11declaration17hdde23c16c80bec2cE.exit, %_ZN7bindgen5clang4Type11declaration17hdde23c16c80bec2cE.exit
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN7bindgen5clang4Type30is_fully_instantiated_template28_$u7b$$u7b$closure$u7d$$u7d$17hd5d8b65bec70ae93E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp ugt i32 %i.b, %i.d
  br i1 %.not.i, label %bb.b, label %"_ZN109_$LT$bindgen..clang..TypeTemplateArgIterator$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hf7000bfb27cb9baeE.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr nonnull align 1 @0, i64 43, ptr nonnull align 8 @2) #31
  unreachable

"_ZN109_$LT$bindgen..clang..TypeTemplateArgIterator$u20$as$u20$core..iter..traits..exact_size..ExactSizeIterator$GT$3len17hf7000bfb27cb9baeE.exit": ; preds = %bb.a
  %i.e = icmp ne i32 %i.d, %i.b
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang4Type4args17h9f0ec46cc3e424a5E(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = call i32 @_ZN9clang_sys20clang_getNumArgTypes17h3d2f34a28a3dc4ebE(ptr nonnull align 8 %i.a) ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  %..i = zext i1 %i.c to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call { i32, i32 } @"_ZN4core6result19Result$LT$T$C$E$GT$2ok17h21767bbd88cb90daE"(i32 %..i, i32 %i.b) ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0
  %i.f = extractvalue { i32, i32 } %i.d, 1
  call void @"_ZN4core6option15Option$LT$T$GT$3map17hd142772c0c703181E"(ptr sret([24 x i8]) align 8 %0, i32 %i.e, i32 %i.f, ptr nonnull align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN7bindgen5clang4Type4args28_$u7b$$u7b$closure$u7d$$u7d$17h81ffbe3b61b829e1E"(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, i32 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  call void @_ZN4core4iter6traits8iterator8Iterator3map17hec699c9995cde04bE(ptr nonnull sret([16 x i8]) align 8 %i.a, i32 0, i32 %2, ptr align 8 %1)
  call void @_ZN4core4iter6traits8iterator8Iterator7collect17h74ddef2575dd7169E(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN7bindgen5clang4Type4args28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hbfc52af15d2e35b4E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1, i32 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = load ptr, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @_ZN9clang_sys16clang_getArgType17haa207860d6b46863E(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a, i32 %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i32 @_ZN7bindgen5clang4Type4kind17h325369752c3306f1E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -9223372036854775808) i64 @_ZN7bindgen5clang4Type4size17hf19a1c3252fad499E(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load i32, ptr %0, align 8
  switch i32 %i.e, label %bb.b [
    i32 104, label %bb.c
    i32 103, label %bb.c
    i32 118, label %bb.d
  ]

bb.b:                                             ; preds = %bb.d, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.f = call i64 @_ZN9clang_sys20clang_Type_getSizeOf17he9795ae802934dbcE(ptr nonnull align 8 %i.d)
  br label %_ZN7bindgen5clang4Type13clang_size_of17hc14e919bd5272f33E.exit

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.g = tail call i64 @_ZN7bindgen2ir7context14BindgenContext19target_pointer_size17h3a2eec0d9190eb79E(ptr align 8 %1)
  br label %_ZN7bindgen5clang4Type13clang_size_of17hc14e919bd5272f33E.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN9clang_sys22clang_getCanonicalType17heabc83d6cff42f7dE(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.h = call i32 @_ZN9clang_sys16clang_equalTypes17h80757c816a275044E(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
  %.not.i = icmp eq i32 %i.h, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not.i, label %bb.b, label %_ZN7bindgen5clang4Type13clang_size_of17hc14e919bd5272f33E.exit.thread

_ZN7bindgen5clang4Type13clang_size_of17hc14e919bd5272f33E.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

_ZN7bindgen5clang4Type13clang_size_of17hc14e919bd5272f33E.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
end_hunk_3
begin_hunk_4_@_ZN7bindgen5clang6Cursor13cxx_manglings17had97608c74102e28E:bb.a
bb.g:                                             ; preds = %bb.f
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN9clang_sys22clang_disposeStringSet17h866875dc28966b89E(ptr nonnull %i.f)
          to label %bb.i unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  ret void

bb.k:                                             ; preds = %bb.g
  %i.r = extractvalue { i64, i64 } %i.o, 1
  %i.s = load ptr, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.r ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i32, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = invoke zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h5d9d663d29c40f64E"(ptr %i.u)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.k
  br i1 %i.x, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.noexc
  %i.y = invoke ptr @_ZN9clang_sys16clang_getCString17hcb9a1aea2dc4c51fE(ptr %i.u, i32 %i.w)
          to label %.noexc4 unwind label %.loopexit

.noexc4:                                          ; preds = %bb.l
  %i.z = invoke { ptr, i64 } @_ZN4core3ffi5c_str4CStr8from_ptr17h9ef98c99a560094bE(ptr %i.y)
          to label %.noexc5 unwind label %.loopexit ; 2 uses

.noexc5:                                          ; preds = %.noexc4
  %i.aa = extractvalue { ptr, i64 } %i.z, 0
  %i.ab = extractvalue { ptr, i64 } %i.z, 1
  invoke void @"_ZN5alloc3ffi5c_str40_$LT$impl$u20$core..ffi..c_str..CStr$GT$15to_string_lossy17h95cf221679eb3d9fE"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 1 %i.aa, i64 %i.ab)
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %.noexc5
  invoke void @"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17h52a6067bde2aa2b3E"(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %bb.n unwind label %.loopexit

bb.m:                                             ; preds = %.noexc
  store i64 0, ptr %i.b, align 8, !alias.scope !48
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !48
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !48
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17had8dc5af6910c190E"(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.b, ptr nonnull align 8 @207)
          to label %bb.f unwind label %.loopexit

bb.o:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

bb.p:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_ZN7bindgen5clang6Cursor13is_definition17h630663caea27d153E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = call i32 @_ZN9clang_sys24clang_isCursorDefinition17h6d8ea1d7875236d0E(ptr nonnull align 8 %i.a)
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_ZN7bindgen5clang6Cursor13template_kind17h59aea15dfab703fdE(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = call i32 @_ZN9clang_sys27clang_getTemplateCursorKind17he16b26632a2bf194E(ptr nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang6Cursor14lexical_parent17h1bf5294cf5f71cddE(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_ZN9clang_sys28clang_getCursorLexicalParent17hcb79c2831df6f299E(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_ZN7bindgen5clang6Cursor15contains_cursor17hb17999e6cdfe6c34E(ptr nofree readonly align 8 captures(none) %0, i32 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.d, align 4
  store i8 0, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.f = call i32 @_ZN9clang_sys19clang_visitChildren17h2c64791309422fbdE(ptr nonnull align 8 %i.a, ptr nonnull @_ZN7bindgen5clang14visit_children17hdd989284b7a832a7E, ptr nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = load i8, ptr %i.c, align 1
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_ZN7bindgen5clang6Cursor15enum_val_signed17hd80f64703d73ee16E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = load i32, ptr %0, align 8
  %i.c = icmp eq i32 %i.b, 7
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.d = call i64 @_ZN9clang_sys30clang_getEnumConstantDeclValue17h9aa8008d70a70454E(ptr nonnull align 8 %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.d, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.e = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.f = insertvalue { i64, i64 } %i.e, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_ZN7bindgen5clang6Cursor15is_virtual_base17hb348e399737252d7E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = call i32 @_ZN9clang_sys19clang_isVirtualBase17h58031e33492bd401E(ptr nonnull align 8 %i.a)
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_ZN7bindgen5clang6Cursor15method_is_const17h9b85e31675e0946cE(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = call i32 @_ZN9clang_sys23clang_CXXMethod_isConst17h199b7e868858e06aE(ptr nonnull align 8 %i.a)
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang6Cursor15offset_of_field17h940f22655bbccc51E(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 1)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = call i64 @_ZN9clang_sys29clang_Cursor_getOffsetOfField17h19faf2dbe96e9917E(ptr nonnull align 8 %i.a) ; 4 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.b to i32
  %i.f = icmp ugt i32 %i.e, -6
  %i.g = trunc i64 %i.b to i8
  %switch.offset.i = xor i8 %i.g, -1
  %.sroa.0.0.i = select i1 %i.f, i8 %switch.offset.i, i8 5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.0.0.i, ptr %i.h, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i8 [ 0, %bb.b ], [ 1, %bb.c ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang6Cursor15semantic_parent17hc6cc7a5a6e3f30ffE(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [28 x i8], align 4            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_ZN9clang_sys29clang_getCursorSemanticParent17h9d5d51a867c0e179E(ptr nonnull sret([32 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c)
  %.sroa.0.0.copyload.i = load i32, ptr %i.d, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..sroa_idx.i, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.sroa.0.0.copyload.i, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..sroa_idx4.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..sroa_idx.i, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.e = call i32 @_ZN9clang_sys18clang_equalCursors17h99e1ade066909b20E(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.f = icmp eq i32 %i.e, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @_ZN9clang_sys15clang_isInvalid17h31bda8f1e3269809E(i32 %.sroa.0.0.copyload.i)
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hfa95e7de809329c2E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr nonnull align 8 @208) #31
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hfa95e7de809329c2E.exit": ; preds = %bb.b
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  store i32 %.sroa.0.0.copyload.i, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_ZN7bindgen5clang6Cursor16access_specifier17h449016209ce96483E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = call i32 @_ZN9clang_sys27clang_getCXXAccessSpecifier17hdffa388d512ab76bE(ptr nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang6Cursor16collect_children17h40beca55c5e0bcbeE(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h6625c3a15cc3721cE"(ptr nonnull sret([24 x i8]) align 8 %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.d = invoke i32 @_ZN9clang_sys19clang_visitChildren17h2c64791309422fbdE(ptr nonnull align 8 %i.a, ptr nonnull @_ZN7bindgen5clang14visit_children17hceeaadbe26d0d9f5E, ptr nonnull %i.b)
          to label %bb.c unwind label %bb.b       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$bindgen..clang..Cursor$GT$$GT$17hf2bbdf2747f2a678E"(ptr nonnull align 8 %i.c) #29
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden range(i8 0, 3) i8 @_ZN7bindgen5clang6Cursor16enum_val_boolean17hb63b7451f820ae64E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = load i32, ptr %0, align 8
  %i.c = icmp eq i32 %i.b, 7
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.d = call i64 @_ZN9clang_sys30clang_getEnumConstantDeclValue17h9aa8008d70a70454E(ptr nonnull align 8 %i.a)
  %i.e = icmp ne i64 %i.d, 0
  %i.f = zext i1 %i.e to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.f, %bb.b ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN7bindgen5clang6Cursor16is_template_like17he2808adabc90fbaaE(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  switch i32 %i.a, label %bb.c [
    i32 31, label %bb.b
    i32 32, label %bb.b
    i32 601, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ true, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_ZN7bindgen5clang6Cursor16method_is_static17h9beee3d0c375e205E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = call i32 @_ZN9clang_sys24clang_CXXMethod_isStatic17h010ed9ba0d6615d4E(ptr nonnull align 8 %i.a)
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_ZN7bindgen5clang6Cursor17enum_val_unsigned17h78c41d8761b45d87E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = load i32, ptr %0, align 8
  %i.c = icmp eq i32 %i.b, 7
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.d = call i64 @_ZN9clang_sys38clang_getEnumConstantDeclUnsignedValue17hf74081b9ad0879a1E(ptr nonnull align 8 %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.d, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.e = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.f = insertvalue { i64, i64 } %i.e, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_ZN7bindgen5clang6Cursor17method_is_virtual17h8fa4c7b2c92808b8E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = call i32 @_ZN9clang_sys25clang_CXXMethod_isVirtual17h69f4bfb60c9221ceE(ptr nonnull align 8 %i.a)
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i32, i32 } @"_ZN7bindgen5clang6Cursor17num_template_args28_$u7b$$u7b$closure$u7d$$u7d$17h40b83455e45b6071E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_ZN9clang_sys24clang_getCanonicalCursor17h02cae0528c803845E(ptr nonnull sret([32 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.g = call i32 @_ZN9clang_sys18clang_equalCursors17h99e1ade066909b20E(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.c)
  %i.h = icmp eq i32 %i.g, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN9clang_sys19clang_getCursorType17hc123fd02ebcfb42fE(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = call i32 @_ZN9clang_sys34clang_Type_getNumTemplateArguments17h4a98ae4fd1ecdb4bE(ptr nonnull align 8 %i.a) ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  %..i.i = zext i1 %i.j to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = call { i32, i32 } @"_ZN4core6option15Option$LT$T$GT$7or_else17h7abedb7e3166be28E"(i32 %..i.i, i32 %i.i, ptr nonnull align 8 %i.f) ; 2 uses
  %i.l = extractvalue { i32, i32 } %i.k, 0
  %i.m = extractvalue { i32, i32 } %i.k, 1
  %i.n = call { i32, i32 } @"_ZN4core6option15Option$LT$T$GT$7or_else17h3e81c795016e26d7E"(i32 %i.l, i32 %i.m, ptr nonnull align 8 %i.f) ; 2 uses
  %i.o = extractvalue { i32, i32 } %i.n, 0
  %i.p = extractvalue { i32, i32 } %i.n, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %i.p, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ %i.o, %bb.b ], [ 0, %bb.a ]
  %i.q = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.r = insertvalue { i32, i32 } %i.q, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i32, i32 } @"_ZN7bindgen5clang6Cursor17num_template_args28_$u7b$$u7b$closure$u7d$$u7d$17hc03433fd19dc1151E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = call i32 @_ZN9clang_sys36clang_Cursor_getNumTemplateArguments17h1709a21ca59ba513E(ptr nonnull align 8 %i.a) ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  %. = zext i1 %i.c to i32
  %i.d = insertvalue { i32, i32 } poison, i32 %., 0
  %i.e = insertvalue { i32, i32 } %i.d, i32 %i.b, 1
  ret { i32, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_ZN7bindgen5clang6Cursor17public_accessible17ha456c87295b9cb40E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = call i32 @_ZN9clang_sys27clang_getCXXAccessSpecifier17hdffa388d512ab76bE(ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.0.0 = icmp ult i32 %i.b, 2
  ret i1 %.sroa.0.0
}
end_hunk_4
begin_hunk_5_@_ZN7bindgen5clang6Cursor5visit17h67c0febbc5cb6ba5E:bb.a
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.d = call i32 @_ZN9clang_sys19clang_visitChildren17h2c64791309422fbdE(ptr nonnull align 8 %i.a, ptr nonnull @_ZN7bindgen5clang14visit_children17h29a7ac086fbd816cE, ptr nonnull %i.b) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang6Cursor5visit17hab61d56fcec42181E(ptr nofree readonly align 8 captures(none) %0, ptr align 1 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.c = call i32 @_ZN9clang_sys19clang_visitChildren17h2c64791309422fbdE(ptr nonnull align 8 %i.a, ptr nonnull @_ZN7bindgen5clang14visit_children17h7082214c13f0f884E, ptr nonnull %i.b) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang6Cursor5visit17hba69f4fca5e09712E(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.c = call i32 @_ZN9clang_sys19clang_visitChildren17h2c64791309422fbdE(ptr nonnull align 8 %i.a, ptr nonnull @_ZN7bindgen5clang14visit_children17h630079e771681561E, ptr nonnull %i.b) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang6Cursor5visit17hc3b9349421cccf95E(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1, ptr align 1 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.d = call i32 @_ZN9clang_sys19clang_visitChildren17h2c64791309422fbdE(ptr nonnull align 8 %i.a, ptr nonnull @_ZN7bindgen5clang14visit_children17hc8ccf6821fe2a485E, ptr nonnull %i.b) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang6Cursor5visit17hc90c232d268ea50eE(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = call i32 @_ZN9clang_sys19clang_visitChildren17h2c64791309422fbdE(ptr nonnull align 8 %i.a, ptr nonnull @_ZN7bindgen5clang14visit_children17ha3cc06477ecb2c98E, ptr %1) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang6Cursor5visit17hd2055d6c2b25ef8cE(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.d = call i32 @_ZN9clang_sys19clang_visitChildren17h2c64791309422fbdE(ptr nonnull align 8 %i.a, ptr nonnull @_ZN7bindgen5clang14visit_children17h9a66958a67a019bfE, ptr nonnull %i.b) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang6Cursor5visit17hf616a18d8219117eE(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.c = call i32 @_ZN9clang_sys19clang_visitChildren17h2c64791309422fbdE(ptr nonnull align 8 %i.a, ptr nonnull @_ZN7bindgen5clang14visit_children17h656b3013981df9deE, ptr nonnull %i.b) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang6Cursor5visit17hfdaaddfae35ad286E(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = call i32 @_ZN9clang_sys19clang_visitChildren17h2c64791309422fbdE(ptr nonnull align 8 %i.a, ptr nonnull @_ZN7bindgen5clang14visit_children17h67ebf7c584466803E, ptr %1) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang6Cursor6tokens17hb250f39d173ef2d3E(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 28)) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr null, ptr %i.f, align 8, !noalias !54
  store i32 0, ptr %i.e, align 4, !noalias !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !57
  call void @_ZN9clang_sys21clang_getCursorExtent17h379ded8da6b2dd62E(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.a), !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !54
  %i.g = call ptr @_ZN9clang_sys31clang_Cursor_getTranslationUnit17hdd7976d7ea2f511aE(ptr nonnull align 8 %i.c), !noalias !54 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !54
  call void @_ZN9clang_sys14clang_tokenize17hf483febdff41d2beE(ptr %i.g, ptr nonnull align 8 %i.b, ptr nonnull %i.f, ptr nonnull %i.e), !noalias !54
  %i.h = load ptr, ptr %i.f, align 8, !noalias !54
  %i.i = load i32, ptr %i.e, align 4, !noalias !54
  store ptr %1, ptr %0, align 8, !alias.scope !54
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.j, align 8, !alias.scope !54
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.k, align 8, !alias.scope !54
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.i, ptr %i.l, align 8, !alias.scope !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_ZN7bindgen5clang6Cursor7comment17h4a89425b573d04bdE(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = call { ptr, ptr } @_ZN9clang_sys29clang_Cursor_getParsedComment17h30b2f37c6db982d9E(ptr nonnull align 8 %i.a)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_ZN7bindgen5clang6Cursor7linkage17he2661b360c932d98E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = call i32 @_ZN9clang_sys22clang_getCursorLinkage17hfaf9b498b537c83bE(ptr nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang6Cursor8cur_type17h5f427d7c359283ddE(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_ZN9clang_sys19clang_getCursorType17hc123fd02ebcfb42fE(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang6Cursor8evaluate17h62b2ee5495861a35E(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 0, ptr %i.h, align 1, !noalias !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !60
  store ptr %i.h, ptr %i.d, align 8, !noalias !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.j = call i32 @_ZN9clang_sys19clang_visitChildren17h2c64791309422fbdE(ptr nonnull align 8 %i.c, ptr nonnull @_ZN7bindgen5clang14visit_children17hd1ecd5a46d15cbfcE, ptr nonnull %i.d), !noalias !60 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !60
  %i.k = load i8, ptr %i.h, align 1, !noalias !60
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN7bindgen5clang10EvalResult3new17h3f5e2316a3b861eaE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !60
  %i.m = call ptr @_ZN9clang_sys21clang_Cursor_Evaluate17h6d13dbca99a0b25eE(ptr nonnull align 8 %i.g), !noalias !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !60
  call void @_ZN9clang_sys19clang_getCursorType17hc123fd02ebcfb42fE(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.b), !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !60
  call void @_ZN9clang_sys22clang_getCanonicalType17heabc83d6cff42f7dE(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.a), !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !60
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !60
  br label %_ZN7bindgen5clang10EvalResult3new17h3f5e2316a3b861eaE.exit

_ZN7bindgen5clang10EvalResult3new17h3f5e2316a3b861eaE.exit: ; preds = %bb.a, %bb.b
  %storemerge.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_ZN7bindgen5clang6Cursor8is_valid17h87236cb913c78967E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = tail call i32 @_ZN9clang_sys15clang_isInvalid17h31bda8f1e3269809E(i32 %i.a)
  %i.c = icmp eq i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang6Cursor8location17h6a50cffb12d3291cE(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_ZN9clang_sys23clang_getCursorLocation17ha9ff6ca0f1321807E(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang6Cursor8mangling17hf009c2d3a64fe8e7E(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = call { ptr, i32 } @_ZN9clang_sys24clang_Cursor_getMangling17h8a4ed8add18b01eaE(ptr nonnull align 8 %i.a) ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = extractvalue { ptr, i32 } %i.b, 1
  call fastcc void @_ZN7bindgen5clang20cxstring_into_string17hd146c5530023fe16E(ptr noalias align 8 %0, ptr %i.c, i32 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang6Cursor8ret_type17hdd97f535edc44efeE(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_ZN9clang_sys25clang_getCursorResultType17h1044edf6ea65f36dE(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %.sroa.0.0.copyload = load i32, ptr %i.b, align 8 ; 2 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.copyload, ptr %i.c, align 8
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.3.0..sroa_idx2, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.3.0..sroa_idx, i64 20, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang6Cursor8spelling17h3b2c59a8566d5598E(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = call { ptr, i32 } @_ZN9clang_sys23clang_getCursorSpelling17h9bc7dc97608522d5E(ptr nonnull align 8 %i.a) ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = extractvalue { ptr, i32 } %i.b, 1
  call fastcc void @_ZN7bindgen5clang20cxstring_into_string17hd146c5530023fe16E(ptr noalias align 8 %0, ptr %i.c, i32 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_ZN7bindgen5clang6Cursor9bit_width17h815e46f5afcd1d2eE(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 2 uses
  %i.i = alloca [40 x i8], align 8                ; 3 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false), !noalias !63
  %i.k = call i32 @_ZN9clang_sys23clang_Cursor_isBitField17h04b2f7a8dd579256E(ptr nonnull align 8 %i.f), !noalias !63
  %.not.i = icmp eq i32 %i.k, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !63
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.i, align 8, !alias.scope !63
  br label %_ZN7bindgen5clang6Cursor14bit_width_expr17he8baeaea4a49faadE.exit

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.g, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !63
  store ptr %i.g, ptr %i.e, align 8, !noalias !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false), !noalias !63
  %i.l = call i32 @_ZN9clang_sys19clang_visitChildren17h2c64791309422fbdE(ptr nonnull align 8 %i.d, ptr nonnull @_ZN7bindgen5clang14visit_children17h7f26ef2c7065afe6E, ptr nonnull %i.e), !noalias !63 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  br label %_ZN7bindgen5clang6Cursor14bit_width_expr17he8baeaea4a49faadE.exit

_ZN7bindgen5clang6Cursor14bit_width_expr17he8baeaea4a49faadE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h46e59a9b830e7616E"(ptr nonnull sret([40 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i)
  %i.m = load i64, ptr %i.j, align 8
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN7bindgen5clang6Cursor14bit_width_expr17he8baeaea4a49faadE.exit
  %i.o = call { i32, i32 } @"_ZN145_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..option..Option$LT$core..convert..Infallible$GT$$GT$$GT$13from_residual17hf937aaaf26864fd1E"() ; 2 uses
  %i.p = extractvalue { i32, i32 } %i.o, 0
  %i.q = extractvalue { i32, i32 } %i.o, 1
  br label %bb.g

bb.e:                                             ; preds = %_ZN7bindgen5clang6Cursor14bit_width_expr17he8baeaea4a49faadE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.04.0.copyload = load i32, ptr %i.r, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.off.i.i = add i32 %.sroa.04.0.copyload, -27
  %switch.i.i = icmp ult i32 %.off.i.i, 3
  br i1 %switch.i.i, label %_ZN7bindgen5clang6Cursor34is_dependent_on_template_parameter17h3adc4ec60de2b280E.exit.thread, label %_ZN7bindgen5clang6Cursor34is_dependent_on_template_parameter17h3adc4ec60de2b280E.exit

_ZN7bindgen5clang6Cursor34is_dependent_on_template_parameter17h3adc4ec60de2b280E.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

_ZN7bindgen5clang6Cursor34is_dependent_on_template_parameter17h3adc4ec60de2b280E.exit: ; preds = %bb.e
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i8 0, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  store i32 %.sroa.04.0.copyload, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.3.0..sroa_idx3, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.2.0..sroa_idx, i64 28, i1 false)
  %i.s = call i32 @_ZN9clang_sys19clang_visitChildren17h2c64791309422fbdE(ptr nonnull align 8 %i.a, ptr nonnull @_ZN7bindgen5clang14visit_children17h0acae8144fd5fa7aE, ptr nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = load i8, ptr %i.c, align 1
  %i.u = trunc nuw i8 %i.t to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7bindgen5clang6Cursor34is_dependent_on_template_parameter17h3adc4ec60de2b280E.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.v = call i32 @_ZN9clang_sys26clang_getFieldDeclBitWidth17hcc246e2928daead5E(ptr nonnull align 8 %i.h) ; 2 uses
  %i.w = icmp ne i32 %i.v, -1
  %.1 = zext i1 %i.w to i32
  br label %bb.g

bb.g:                                             ; preds = %_ZN7bindgen5clang6Cursor34is_dependent_on_template_parameter17h3adc4ec60de2b280E.exit.thread, %_ZN7bindgen5clang6Cursor34is_dependent_on_template_parameter17h3adc4ec60de2b280E.exit, %bb.f, %bb.d
  %.sroa.5.0 = phi i32 [ %i.q, %bb.d ], [ %i.v, %bb.f ], [ undef, %_ZN7bindgen5clang6Cursor34is_dependent_on_template_parameter17h3adc4ec60de2b280E.exit ], [ undef, %_ZN7bindgen5clang6Cursor34is_dependent_on_template_parameter17h3adc4ec60de2b280E.exit.thread ]
  %.sroa.0.0 = phi i32 [ %i.p, %bb.d ], [ %.1, %bb.f ], [ 0, %_ZN7bindgen5clang6Cursor34is_dependent_on_template_parameter17h3adc4ec60de2b280E.exit ], [ 0, %_ZN7bindgen5clang6Cursor34is_dependent_on_template_parameter17h3adc4ec60de2b280E.exit.thread ]
  %i.x = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.y = insertvalue { i32, i32 } %i.x, i32 %.sroa.5.0, 1
  ret { i32, i32 } %i.y
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang6Cursor9canonical17h8337ff03e04fcef6E(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_ZN9clang_sys24clang_getCanonicalCursor17h02cae0528c803845E(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7bindgen5clang6Cursor9enum_type17hb60736cea15eed43E(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_ZN9clang_sys28clang_getEnumDeclIntegerType17h1375ce17133af758E(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %.sroa.0.0.copyload = load i32, ptr %i.b, align 8 ; 2 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
end_hunk_5
